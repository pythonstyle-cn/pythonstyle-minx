//获取用户登陆后的数据
const getWebInfoData = ( ) => {
    return requests({
        url: '/websetting/web_setting/get_data_info',
        method: 'GET'
    })
}

const editWebInfoData = ( data ) => {
    return requests({
        url: '/websetting/web_setting/update',
        method: 'POST',
        data:data
    })
}


