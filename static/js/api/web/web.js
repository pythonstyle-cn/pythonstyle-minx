// 获取列表信息
const getContentList = (params) => {
    return requests({
        url: '/web/content/get_list',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getContentData = (params) => {
    return requests({
        url: '/web/content/get_data',
        method: 'GET',
        params
    })
}
