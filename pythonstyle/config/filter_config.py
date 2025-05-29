# -*- coding: utf-8 -*-
'''
    描述：默认过滤器配置,默认只允许登录，注册，验证码，可以访问
    作者: chinacsj@139.com
    日期: 2024-02-18
'''
import json
import os
from flask import redirect, session
import itertools
from pythonstyle.libs.param import Param
from pythonstyle.common import utils
from pythonstyle.libs.jwt_manager import JWTManager
from pythonstyle.modules.system.entity.user import UserEntity
from pythonstyle.modules.system.entity.menu import MenuEntity
from pythonstyle.libs.html import Html
from pythonstyle.libs.result import Result
from pythonstyle.libs.session_manager import SessionManager


def FilterConfig(func):
    '''
    描述：定义配置文件装饰器 当配置有['pythonstyle']['profiles']['active'] 这个值时，合并两个配置文件
    :param func:
    :return:
    '''

    def wrapper(*args, **kwargs):
        params = Param()
        # 获取默认的路由模块
        _M = params.get_m()
        # 获取默认的路由控制器名称
        _C = params.get_c()
        # 获取默认的路由控制器d 的方法名称 注意默认名称是 init()
        _A = params.get_a()
        # 配置默认模块过滤器
        m = ['system']
        # 配置默认控制器过滤器
        c = ['admin', 'captcha']
        # 配置默认方法过滤器
        a = ['login', 'register', 'captcha_image', 'captcha_message_code']
        # 默认拦截所有的
        is_passed = False
        # 判断是否已经认证
        is_auth = False


        for item in itertools.product(m, c, a):
            # print(f"{item[0]}-{item[1]}-{item[2]}")
            if _M == item[0] and _C == item[1] and _A == item[2]:
                is_passed = True
                break

        # 预留一个模块作为WEB CMS前端模块不受拦截器限制
        if _M == 'web':
            is_passed = True

        # 不管是哪个模块私有方法依然不允许访问
        if _A.startswith('_'):
            is_passed = False

        if _M.endswith('.txt'):
            # 读取文件内容
            file_path = os.path.join('./', _M)
            with open(file_path, 'r', encoding='utf-8') as file:
                file_content = file.read()
            return Result.text_success(data=file_content)

        # 如果不在白名单里面就进行校验认证
        if is_passed == False:
            user_is_login = check_author()
            if user_is_login == False:
                return Html().redirect()
            is_api_auth = check_api_auth()
            if is_api_auth == False:
                return Result.error(401, '您没有操作权限！')

            permission = f"{_M}:{_C}:{_A}"

            # 如果方法是public_开头，定义为是公共方法可以被外面调用
            # 主要用于一些选择数据接口
            if _A.startswith('public_'):
                is_passed = True
            else:
                user_id = SessionManager.get('user_id')
                is_passed = check_permission(user_id, permission)

        if is_passed:
            # 如果在默认配置中就往下执行
            rst = func(_M, _C, _A)
            return rst
        else:
            # 否则，重定向到提示界面
            return Result.error(401, '您没有操作权限！')

    return wrapper


def check_author():
    '''
    描述：用于检测是否登录
    '''
    # 第一步：
    user_id = SessionManager.get('user_id')
    if user_id != None and int(user_id) > 0:
        return True
    else:
        return False


def check_permission(user_id, permission):
    '''
        描述：用于检测是否需要访问, 需要用header中的Authorization来判断
             第一步：先判断请求头是否有token
             第二步：如果有，解析token，获取userid和uuid
             第三步：判断数据库该用户是否存在
             第四步：判断redis是否缓存有数据 其实就是判断redis是否存在user:id这个key
        '''
    if utils.getHttpHeaders('Authorization') != False:
        user_data = UserEntity.get_user_roleinfo_by_id(user_id)
        if 1 in user_data['role_id']:
            return True
        return MenuEntity.get_role_menu_permission(user_data['role_id'], permission)
    else:
        return True


def check_api_auth():
    user_id = SessionManager.get('user_id')
    if utils.getHttpHeaders('Authorization') != False:
        token = utils.getHttpHeaders('Authorization').replace('Bearer ', '')
        decoded_payload = JWTManager().verify_token(token)
        if decoded_payload != False:

            decoded_payload['user_id']
            if decoded_payload['user_id'] == user_id or user_id == 1:
                return True
            else:
                return False
        else:
            return False
    elif user_id != None and user_id > 0:
        return True
    else:
        return False
