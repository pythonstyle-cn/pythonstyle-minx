axios.defaults.headers['Content-Type'] = 'application/json;charset=utf-8'
const requests = axios.create({
    // axios中请求配置有baseURL选项，表示请求URL公共部分
    baseURL: '/',
    // 超时
    timeout: 30000
})

// 添加请求拦截器
requests.interceptors.request.use(function (config) {
    // 是否需要发送token
    const isToken = (config.headers || {}).isToken === false
    const isUpload = (config.headers || {}).isUpload == 'true'
    if (!isToken) {
        config.headers['Authorization'] = 'Bearer ' + getToken() // 让每个请求携带自定义token 请根据实际情况自行修改
    }
    if (isUpload) {
        config.headers['Content-Type'] = 'multipart/form-data'
    }
    return config;
}, function (error) {
    // 对请求错误做些什么
    return Promise.reject(error);
});

// 添加响应拦截器
requests.interceptors.response.use(function (response) {
        // 未设置状态码则默认成功状态
        const code = response.data.code || 200
        const msg = response.data.msg || '未知错误，请联系系统管理员'

        if (response.request.responseType === 'blob' || response.request.responseType === 'arraybuffer') {
            return response.data
        }

        if (code === 401) {
            ElMessageBox.confirm(msg, '系统提示', {
                confirmButtonText: '重新登录',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {
                location.href = '/system/admin/login'
            });
            return Promise.reject('无效的会话，或者会话已过期，请重新登录。')
        } else if (code === 500) {
            ElMessage({message: msg, type: 'error'})
            return Promise.reject(new Error(msg))
        } else if (code !== 200) {
            ElNotification.error({title: msg})
            return Promise.reject('error')
        } else {
            return Promise.resolve(response.data)
        }
    },
    function (error) {
        let {message, response} = error;
        if (message == "Network Error") {
            message = "后端接口连接异常";
        } else if (message.includes("timeout")) {
            message = "系统接口请求超时";
        } else {
            return Promise.resolve(response.data)
        }
        ElMessage({message: message, type: 'error', duration: 5 * 1000})
        return Promise.reject(error)
    });
