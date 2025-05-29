# -*- coding: utf-8 -*-
'''
    描述：Html类用于渲染html模板
    作者: chinacsj@139.com
    日期: 2024-02-04
'''
from flask import render_template, redirect, make_response

class Html:

    def render(self, name, *args, **kwargs):
        return render_template(name, *args, **kwargs)

    def redirect(self, url):
        goto = make_response(redirect(url))
        goto.headers = headers
        return goto


    def redirect(self, url='/system/admin/login', msg='请先登录后访问!', headers = {}, template="exception/redirect.html"):
        data = {
            'content':msg,
            'goto':url
        }
        return self.render(template, data=data)


