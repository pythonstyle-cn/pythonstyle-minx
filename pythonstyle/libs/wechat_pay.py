# -*- coding: utf-8 -*-
'''
    描述：微信支付类
    作者: chinacsj@139.com
    日期: 2024-07-25
'''
import time
import json
import hashlib
import requests
from base64 import b64encode
from Crypto.Hash import SHA256
from Crypto.PublicKey import RSA
from Crypto.Signature import pkcs1_15

class WeChatPay:

    base_url = 'https://api.mch.weixin.qq.com'

    def __init__(self, wepay_config):
        """
        初始化微信支付类
        :param wepay_config: 微信支付配置信息，包含appid, mch_id, api_key, serial_no, private_key_path
        """
        self.appid = wepay_config['appid']
        self.mch_id = wepay_config['mch_id']
        self.api_key = wepay_config['api_key']
        # 证书序列号
        self.serial_no = wepay_config['serial_no']
        self.private_key_path = wepay_config['private_key_path']

        # 加载私钥
        with open(self.private_key_path, 'r') as f:
            self.private_key = RSA.import_key(f.read())

    def generate_signature(self, method, url, timestamp, nonce_str, body):
        """
        生成请求签名
        :param method: HTTP方法
        :param url: 请求URL路径
        :param timestamp: 时间戳
        :param nonce_str: 随机字符串
        :param body: 请求体
        :return: 签名字符串
        """
        message = f"{method}\n{url}\n{timestamp}\n{nonce_str}\n{body}\n"
        hash = SHA256.new(message.encode('utf-8'))
        signer = pkcs1_15.new(self.private_key)
        signature = b64encode(signer.sign(hash)).decode('utf-8')
        return signature

    def request(self, method, url, body):
        """
        发起HTTP请求
        :param method: HTTP方法
        :param url: 请求URL路径
        :param body: 请求体
        :return: 请求响应
        """
        full_url = self.base_url + url
        timestamp = str(int(time.time()))
        nonce_str = hashlib.md5(str(time.time()).encode('utf-8')).hexdigest()
        body_str = json.dumps(body)
        signature = self.generate_signature(method, url, timestamp, nonce_str, body_str)

        headers = {
            'Authorization': f'WECHATPAY2-SHA256-RSA2048 mchid="{self.mch_id}",nonce_str="{nonce_str}",timestamp="{timestamp}",serial_no="{self.serial_no}",signature="{signature}"',
            'Content-Type': 'application/json'
        }

        response = requests.request(method, full_url, headers=headers, data=body_str)
        return response.json()

    def unified_order(self, orderinfo, trade_type):
        """
        统一下单
        :param orderinfo: 订单信息
        :param trade_type: 交易类型（JSAPI, APP, H5, NATIVE）
        :return: 下单响应
        """
        url = f'/v3/pay/transactions/{trade_type.lower()}'
        body = {
            'appid': self.appid,
            'mchid': self.mch_id,
            'description': orderinfo['body'],
            'out_trade_no': orderinfo['out_trade_no'],
            'notify_url': orderinfo['notify_url'],
            'amount': {
                'total': orderinfo['total_fee'],
                'currency': 'CNY'
            }
        }
        if trade_type == 'JSAPI':
            body['payer'] = {'openid': orderinfo['openid']}
        elif trade_type == 'APP':
            pass  # APP下单不需要额外参数
        elif trade_type == 'H5':
            body['scene_info'] = {'h5_info': {'type': 'Wap'}}
        elif trade_type == 'NATIVE':
            pass  # Native支付不需要额外参数
        return self.request('POST', url, body)

    def refund_order(self, refundinfo):
        """
        申请退款
        :param refundinfo: 退款信息
        :return: 退款响应
        """
        url = '/v3/refund/domestic/refunds'
        body = {
            'out_trade_no': refundinfo['out_trade_no'],
            'out_refund_no': refundinfo['out_refund_no'],
            'amount': {
                'refund': refundinfo['refund_fee'],
                'total': refundinfo['total_fee'],
                'currency': 'CNY'
            }
        }
        return self.request('POST', url, body)

    def query_refund(self, refund_id):
        """
        查询单笔退款
        :param refund_id: 微信退款单号
        :return: 查询退款响应
        """
        url = f'/v3/refund/domestic/refunds/{refund_id}'
        return self.request('GET', url, {})

# 配置微信支付信息
# wepay_config = {
#     'appid': 'your_appid',
#     'mch_id': 'your_mch_id',
#     'api_key': 'your_api_key',
#     'serial_no': 'your_serial_no',
#     'private_key_path': 'path_to_your_private_key.pem'
# }
#
# # 实例化支付类
# wechat_pay = WeChatPay(wepay_config)
#
# # 示例：JSAPI 下单
# orderinfo_jsapi = {
#     'body': '商品描述',
#     'out_trade_no': '订单号',
#     'total_fee': 1,  # 单位为分
#     'notify_url': 'https://your_notify_url',
#     'openid': '用户的openid'
# }
# response_jsapi = wechat_pay.unified_order(orderinfo_jsapi, 'JSAPI')
# print(response_jsapi)
#
# # 示例：APP 下单
# orderinfo_app = {
#     'body': '商品描述',
#     'out_trade_no': '订单号',
#     'total_fee': 1,  # 单位为分
#     'notify_url': 'https://your_notify_url'
# }
# response_app = wechat_pay.unified_order(orderinfo_app, 'APP')
# print(response_app)
#
# # 示例：H5 下单
# orderinfo_h5 = {
#     'body': '商品描述',
#     'out_trade_no': '订单号',
#     'total_fee': 1,  # 单位为分
#     'notify_url': 'https://your_notify_url'
# }
# response_h5 = wechat_pay.unified_order(orderinfo_h5, 'H5')
# print(response_h5)
#
# # 示例：Native 下单
# orderinfo_native = {
#     'body': '商品描述',
#     'out_trade_no': '订单号',
#     'total_fee': 1,  # 单位为分
#     'notify_url': 'https://your_notify_url'
# }
# response_native = wechat_pay.unified_order(orderinfo_native, 'NATIVE')
# print(response_native)
#
# # 示例：申请退款
# refundinfo = {
#     'out_trade_no': '订单号',
#     'out_refund_no': '退款订单号',
#     'total_fee': 1,  # 原订单金额，单位为分
#     'refund_fee': 1  # 退款金额，单位为分
# }
# response_refund = wechat_pay.refund_order(refundinfo)
# print(response_refund)
#
# # 示例：查询单笔退款
# refund_id = '微信退款单号'
# response_query_refund = wechat_pay.query_refund(refund_id)
# print(response_query_refund)

