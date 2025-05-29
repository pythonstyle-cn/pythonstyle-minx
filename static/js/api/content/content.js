// 获取列表信息
const getContentList = (params) => {
    return requests({
        url: '/content/content/get_list',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getContentData = (params) => {
    return requests({
        url: '/content/content/get_data',
        method: 'GET',
        params
    })
}

// 获取栏目数据信息
const getContentCatgoryList = (params) => {
    return requests({
        url: '/websetting/category/get_list',
        method: 'GET',
        params
    })
}

// 删除
const deleteContentData = (params) => {
    return requests({
        url: '/content/content/delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateContentData = (params) => {
    return requests({
        url: '/content/content/update',
        method: 'POST',
        data: params
    })
}


// 添加数据
const addContentData = (params) => {
    return requests({
        url: '/content/content/add',
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

// 修改排序数据
const updateRoleListorderData = (params) => {
    return requests({
        url: '/content/content/update_listorder',
        method: 'POST',
        data: params
    })
}