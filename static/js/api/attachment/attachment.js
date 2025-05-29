// 获取列表信息
const getAttachmentList = (params) => {
    return requests({
        url: '/attachment/attachment/init',
        method: 'GET',
        params
    })
}

// 删除
const deleteAttachmentData = (params) => {
    return requests({
        url: '/attachment/attachment/delete',
        method: 'GET',
        params
    })
}

// 批量删除数据
const deleteAttachmentByIds = (params) => {
    return requests({
        url: '/attachment/attachment/mult_delete',
        method: 'POST',
        data: params
    })
}

