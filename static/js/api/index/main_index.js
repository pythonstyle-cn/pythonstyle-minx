// 获取收入和
const getIncomeOrderData = (params) => {
    return requests({
        url: '/business/business/get_income_and_order',
        method: 'GET',
        params
    })
}

// 获取列表信息
const getProductListData = () => {
    return requests({
        url: '/member/product/get_product_list',
        method: 'GET'
    })
}

// 获取版本列表信息
const getAllProductListData = (params) => {
    return requests({
        url: '/member/product/get_product_list_pages',
        method: 'GET',
        params
    })
}

// 获取公告列表信息
const getNoticeListData = (params) => {
    return requests({
        url: '/member/notice/get_notice_list_pages',
        method: 'GET',
        params
    })
}

// 下载文件
const downloadFiles = (params,fileName) => {
    return requests({
        url: '/product/product/download_file',
        method: 'GET',
        params: params,
        timeout: 60000,
        responseType: 'blob'  // 设置响应类型为 blob
    })
}
