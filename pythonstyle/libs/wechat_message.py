# -*- coding: utf-8 -*-
'''
    描述：模板消息类
    作者: chinacsj@139.com
    日期: 2024-11-21
'''
import json
import requests
from pythonstyle.libs.result import Result

class WechatMessage:

    def __init__(self, wx_message_config):
        """
        初始化微信支付类
        :param wepay_config: 微信支付配置信息，包含appid, mch_id, api_key, serial_no, private_key_path
        """
        print(wx_message_config)
        self.appid = wx_message_config['appid']
        self.appsecret = wx_message_config['app_secret']
        self.access_token = None

    def get_access_token(self):
        """ 获取 access_token """
        url = f"https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid={self.appid}&secret={self.appsecret}"
        response = requests.get(url)
        result = response.json()

        if 'access_token' in result:
            self.access_token = result['access_token']
            return self.access_token
        else:
            return Result.error(code=201,msg='获取失败')

    def send_template_message(self, param):
        """
        发送模板消息

        :param to_user: 接收者的 OpenID
        :param template_id: 模板ID
        :param url: 点击模板消息跳转的 URL
        :param data: 模板消息的内容，字典格式
        """
        if not self.access_token:
            self.get_access_token()

        send_url = f"https://api.weixin.qq.com/cgi-bin/message/template/send?access_token={self.access_token}"
        if param['url'] != None:
            message_data = {
                "touser": param['to_user'],
                "template_id": param['template_id'],
                "url": param['url'],
                "data": param['data']
            }
        else:
            message_data = {
                "touser": param['to_user'],
                "template_id": param['template_id'],
                "data": param['data']
            }
        response = requests.post(send_url, data=json.dumps(message_data, ensure_ascii=False).encode('utf-8'))
        result = response.json()

        if result.get('errcode') == 0:
            return Result.success(msg='发送成功！')
        else:
            return Result.error(code=202, msg='发送失败')
