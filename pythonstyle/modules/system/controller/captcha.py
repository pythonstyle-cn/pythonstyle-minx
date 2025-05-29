# -*- coding: utf-8 -*-
'''
    描述：验证码控制器
    作者: chinacsj@139.com
    日期: 2024-02-18
'''
from pythonstyle.common import utils
from pythonstyle.libs.result import Result
from pythonstyle.libs.redis import Redis
from pythonstyle.libs.captcha_generator import CaptchaGenerator
from pythonstyle.modules.system.entity.user import UserEntity
from pythonstyle.app import create_app

app = create_app()


class captcha(Result):
    def captcha_image(self):
        check_code_header = utils.getHttpHeaders('Browser')
        if check_code_header != 'EQVR4n':
            return Result.error(500, msg='获取失败')
        captchaEnabled = app.config['captchaEnabled']
        if captchaEnabled != True:
            return Result.success(200, msg='操作成功', data={'captchaEnabled': captchaEnabled})
        generator = CaptchaGenerator()
        # 生成验证码图片并计算结果
        result, image = generator.generate_captcha()
        # 保存图片
        captcha_path = app.root_path + '/static/images/captcha.png'
        image.save(captcha_path)
        # 生成uuid
        code_uuid = str(utils.get_uuid())
        verifyKey = 'captcha_code:' + code_uuid
        # 将图片转换成base64
        img = utils.image_to_base64(captcha_path)

        data = {
            'img': img,
            'uuid': code_uuid,
            'captchaEnabled': captchaEnabled
        }

        # 将验证码缓存到redis 缓存时间2分钟
        client_redis = Redis()
        client_redis.set(verifyKey, result, 120)
        return Result.success(200, msg='操作成功', data=data)

    def captcha_message_code(self):
        '''
        描述：获取短信验证码
        参数：图片验证码和手机号
        '''
        if utils.isPost():
            data = utils.postRequestJson()
            code_uuid = utils.filter_xss(data['uuid'])
            phone = utils.filter_xss(data['phone'])
            is_registered = self.check_phone_register(phone)
            if is_registered:
                return Result.error(code=1000, msg='手机号已经被注册，请重试！！')
            captchaEnabled = app.config['captchaEnabled']
            if captchaEnabled == True:
                code = int(data['code'])
                try:
                    captcha_result = Redis().get('captcha_code:' + code_uuid).decode()
                except Exception as error:
                    return Result.error(code=1001, msg='验证码获取失败，请重试！！')

                if code != int(captcha_result):
                    return Result.error(code=1002, msg='验证码获取失败，请重试！！')
            #这里真正的发起短信验证码

            data = {
                'message_code': 123456
            }
            return Result.success(200, msg='操作成功', data=data)

        return Result.error(201, msg='不允许直接访问')

    def check_phone_register(self, phone):
        return UserEntity.check_datainfo_by_phone(phone)