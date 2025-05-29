// 获取列表信息
const getNoticeTypeList = (params) => {
    return requests({
        url: '/websetting/notice_type/init',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getNoticeTypeData = (params) => {
    return requests({
        url: '/websetting/notice_type/public_get_info',
        method: 'GET',
        params
    })
}


// 删除
const deleteNoticeTypeData = (params) => {
    return requests({
        url: '/websetting/notice_type/delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateNoticeTypeData = (params) => {
    return requests({
        url: '/websetting/notice_type/update',
        method: 'POST',
        data: params
    })
}


// 添加数据
const addNoticeTypeData = (params) => {
    return requests({
        url: '/websetting/notice_type/add',
        method: 'POST',
        data: params
    })
}