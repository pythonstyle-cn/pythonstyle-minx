// 获取列表信息
const getNoticeList = (params) => {
    return requests({
        url: '/websetting/notice/init',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getNoticeData = (params) => {
    return requests({
        url: '/websetting/notice/public_get_info',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getNoticeTypeList = (params) => {
    return requests({
        url: '/websetting/notice_type/public_get_list',
        method: 'GET',
        params
    })
}

// 删除
const deleteNoticeData = (params) => {
    return requests({
        url: '/websetting/notice/delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateNoticeData = (params) => {
    return requests({
        url: '/websetting/notice/update',
        method: 'POST',
        data: params
    })
}


// 添加数据
const addNoticeData = (params) => {
    return requests({
        url: '/websetting/notice/add',
        method: 'POST',
        data: params
    })
}

// 上传文件
const uploadfile = (params) => {
    return requests({
        url: '/attachment/attachment/uploadfile',
        headers: {
            'Accept':'*/*',
            'isUpload': 'true'
        },
        method: 'POST',
        data: params
    })
}