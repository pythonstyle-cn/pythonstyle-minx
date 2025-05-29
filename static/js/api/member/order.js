// 获取列表信息
const getMemberOrderList = (params) => {
    return requests({
        url: '/member/order/init',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getMemberOrderInfoData = (params) => {
    return requests({
        url: '/member/order/get_info',
        method: 'GET',
        params
    })
}

// 用户
const getUserInfoDataByOrderUserId = (params) => {
    return requests({
        url: '/member/order/get_userinfo',
        method: 'GET',
        params
    })
}