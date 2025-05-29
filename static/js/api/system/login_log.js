// 获取列表信息
const getLoginLogList = (params) => {
    return requests({
        url: '/system/login_log/get_list',
        method: 'GET',
        params
    })
}


// 获取数据信息
const getLoginLogInfoData = (params) => {
    return requests({
        url: '/system/login_log/get_info',
        method: 'GET',
        params
    })
}



