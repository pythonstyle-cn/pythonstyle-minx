# -*- coding: utf-8 -*-
'''
    描述：发起Http请求
    作者: chinacsj@139.com
    日期: 2024-07-25
'''
import requests

class HttpRequestHandler:

    def get(self, url, params=None, headers=None):
        """
        发送 GET 请求

        :param url: API 端点
        :param params: 查询参数
        :param headers: 请求头
        :return: 响应对象
        """
        response = requests.get(url, params=params, headers=headers)
        return response

    def post(self, url, data=None, json=None, headers=None):
        """
        发送 POST 请求

        :param url: API 端点
        :param data: 表单数据
        :param json: JSON 数据
        :param headers: 请求头
        :return: 响应对象
        """
        response = requests.post(url, data=data, json=json, headers=headers)
        return response

    def put(self, url, data=None, json=None, headers=None):
        """
        发送 PUT 请求
        :param endpoint: API 端点
        :param data: 表单数据
        :param json: JSON 数据
        :param headers: 请求头
        :return: 响应对象
        """
        response = requests.put(url, data=data, json=json, headers=headers)
        return response

    def delete(self, endpoint, headers=None):
        """
        发送 DELETE 请求

        :param url: API 端点
        :param headers: 请求头
        :return: 响应对象
        """
        response = requests.delete(url, headers=headers)
        return response


