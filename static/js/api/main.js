// 获取验证码
const getImgCode = () => {
    return requests({
        url: '/system/captcha/captcha_image',
        headers: {
            'Browser': 'EQVR4n',
            'isToken': false
        },
        method: 'GET',
        timeout: 20000
    })
}

//登录
const login = (username, password, code, uuid) => {
    const data = {
        username,
        password,
        code,
        uuid
    }
    return requests({
        url: '/system/admin/login',
        headers: {
            isToken: false
        },
        method: 'POST',
        data: data
    })
}

//注册
const register = (phone, password, code, message_code, uuid) => {
    const data = {
        phone,
        password,
        code,
        message_code,
        uuid
    }
    return requests({
        url: '/system/admin/register',
        headers: {
            isToken: false
        },
        method: 'POST',
        data: data
    })
}

//获取后台首页初始化 也不需要校验token 校验session即可
const getInitData = () => {
    return requests({
        url: '/system/admin/init',
        headers: {
            isToken: false
        },
        method: 'POST'
    })
}

//退出登录 只需要校验session 不校验token
const loginOut = () => {
    return requests({
        url: '/system/admin/login_out',
        headers: {
            isToken: false
        },
        method: 'POST'
    })
}

//获取用户登陆后的数据
const editPassword = ( data ) => {
    return requests({
        url: '/system/admin/change_password',
        method: 'POST',
        data:data
    })
}

//获取用户登陆后的数据
const editProfile = ( data ) => {
    return requests({
        url: '/system/admin/profile',
        method: 'POST',
        data:data
    })
}
