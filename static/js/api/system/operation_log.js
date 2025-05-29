// 获取列表信息
const getOperationLogList = (params) => {
    return requests({
        url: '/system/operation_log/get_list',
        method: 'GET',
        params
    })
}


// 获取数据信息
const getOperationLogInfoData = (params) => {
    return requests({
        url: '/system/operation_log/get_info',
        method: 'GET',
        params
    })
}



