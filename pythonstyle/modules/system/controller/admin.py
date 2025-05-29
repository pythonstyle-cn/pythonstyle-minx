from pythonstyle.libs.result import Result
from pythonstyle.libs.html import Html
from pythonstyle.common import utils
from pythonstyle.config.log_config import Log
from pythonstyle.modules.system.entity.user import UserEntity
from pythonstyle.modules.system.entity.role import RoleEntity
from pythonstyle.libs.redis import Redis
from pythonstyle.libs.jwt_manager import JWTManager
from pythonstyle.libs.session_manager import SessionManager
from pythonstyle.modules.system.controller.menu import menu
from pythonstyle.libs.upload import FileUpload

from pythonstyle.app import create_app

app = create_app()

class admin(Result):

    #后台首页
    def init(self):
        if utils.isPost():
            logininfo = Redis().hdetall('login_data')

            user_id = SessionManager.get('user_id')
            userinfo = self.get_userinfo()

            menu_obj = menu()
            user_menu_list = menu_obj.public_get_role_menu(userinfo['role_id'])
            data = {
                'menu_list':user_menu_list,
                'userinfo':userinfo,
                'roleinfo':user_menu_list['roles_info']
            }
            #menu_html = self.create_menu(user_menu_list['routers'], True)
            return Result.success(msg='操作成功！', data=data)
        else:
            return Html().render('admin/index.html')

    #后台主界面
    def index(self):

        user_id = SessionManager.get('user_id')
        userinfo = self.get_userinfo()
        return Html().render('admin/main.html')

    @Log
    def login(self):
        if utils.isPost():
            data = utils.postRequestJson()
            code_uuid = utils.filter_xss(data['uuid'])
            username = utils.filter_xss(data['username'])
            password = utils.filter_xss(data['password']) + 'zxcvbnm1234567890poiuytrewqasdfghjkl'
            md5_password = utils.md5_encrypt(password)

            captchaEnabled = app.config['captchaEnabled']
            client_redis = Redis()
            if captchaEnabled == True:
                code = data['code']
                try:
                    captcha_result = client_redis.get('captcha_code:' + code_uuid).decode()
                except Exception as error:
                    return Result.error(code=1001, msg='登陆失败，请重试！！')

                if code != int(captcha_result):
                    return Result.error(code=1002, msg='登陆失败，请重试！！')

            try:
                userinfo = UserEntity.get_login_info(username, md5_password)
                user_role_info = UserEntity.get_user_roleinfo_by_id(userinfo['user_id'])

            except Exception as error:
                return Result.error(code=1003, msg='登陆失败，请重试！！')
            if userinfo == None:
                return Result.error(code=1004, msg='登陆失败，请重试！！')
            # 如果验证成功则保存登录信息到redis
            # 生成token
            client_redis.hset('login_data', userinfo['user_id'], code_uuid)
            payload = {'user_id': userinfo['user_id']}
            jwt_manager = JWTManager()
            token = jwt_manager.generate_token(payload)
            # print(userinfo.user_id)

            SessionManager.set('user_id', userinfo['user_id'])
            #用户类型 10 是注册用户
            type = 1
            if 10 in user_role_info['role_id']:
                type = 2
            data = {
                "token": token,
                "type":type
            }
            return Result.success(msg='登录成功！', data=data)
        else:
            return Html().render("admin/login.html")


    def login_out(self):
        user_id = SessionManager.get('user_id')
        Redis().hdel('login_data', user_id)
        SessionManager.delete('user_id')
        return Result.success( msg='退出登录成功！' )

    def get_userinfo(self):
        # 先获取token
        user_id = SessionManager.get('user_id')

        # 获取用户信息
        userdata = UserEntity.get_user_roleinfo_by_id(user_id)
        return userdata

    def get_all_userinfo(self):
        # 先获取token
        user_id = SessionManager.get('user_id')
        # 获取用户信息
        userdata = UserEntity.get_userinfo_by_id(user_id)
        return userdata

    #修改密码
    def change_password(self):
        if utils.isPost():
            data = utils.postRequestJson()

            user_id = SessionManager.get('user_id')
            if user_id == 1:
                return Result.error(code=1007, msg='演示系统不允许修改admin密码！')
            old_psd = utils.filter_xss(data['old_password'])  + 'zxcvbnm1234567890poiuytrewqasdfghjkl'
            old_password = utils.md5_encrypt(old_psd)
            userinfo = self.get_all_userinfo()
            psd = utils.filter_xss(data['password'])

            if old_password != userinfo['password']:
                return Result.error(code=1005, msg='原密码不对，请重新输入')

            password = utils.filter_xss(data['password']) + 'zxcvbnm1234567890poiuytrewqasdfghjkl'
            new_password = utils.md5_encrypt(password)
            param = {
                'user_id':user_id,
                'password':new_password
            }

            result = UserEntity.edit_data(param)
            if result:
                return Result.success(msg='操作成功！')
            else:
                return Result.error(code=1006, msg='修改密码失败！')
        else:
            return Html().render('admin/edit_passwd.html')

    #修改密码
    def profile(self):
        if utils.isPost():
            data = utils.postRequestJson()
            user_id = SessionManager.get('user_id')
            nick_name = utils.filter_xss(data['nick_name'])
            remark = utils.filter_xss(data['remark'])
            email = utils.filter_xss(data['email'])
            param = {
                'user_id':user_id,
                'nick_name':nick_name,
                'email':email,
                'remark':remark,
            }
            result = UserEntity.edit_data(param)
            if result:
                return Result.success(msg='操作成功！')
            else:
                return Result.error(code=1006, msg='修改密码失败！')
        else:
            return Html().render('admin/profile.html')

    #上传头像
    def upload_avtor(self):
        file = utils.getFiles('file')
        uploader = FileUpload(app.root_path)
        filepath = uploader.handle_upload(file)
        try:
            user_id = SessionManager.get('user_id')
        except Exception as e:
            return Result.error(code=401, msg='您还没有登录，请先登录！')
        if filepath == None:
            return Result.error(code=400, msg='文件格式不合法！')
        param = {
            'user_id': user_id,
            'avatar': filepath
        }
        data = {
            'filepath':filepath
        }
        result = UserEntity.edit_data(param)
        if result:
            return Result.success(msg='操作成功！',data=data)
        else:
            return Result.error(code=1006, msg='修改密码失败！')

