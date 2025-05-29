// 获取列表信息
const getNoticeTypeList = () => {
    return requests({
        url: '/member/notice/getNoticeTypeList',
        method: 'GET'
    })
}

// 获取数据信息
const getNoticeData = (params) => {
    return requests({
        url: '/member/notice/getNoticeData',
        method: 'GET',
        params
    })
}