// 获取列表信息
const getOrderList = (params) => {
    return requests({
        url: '/business/order/get_list',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getOrderInfoData = (params) => {
    return requests({
        url: '/business/order/get_info',
        method: 'GET',
        params
    })
}


// 删除用户
const getUserInfoDataByOrderUserId = (params) => {
    return requests({
        url: '/business/order/get_userinfo',
        method: 'GET',
        params
    })
}


