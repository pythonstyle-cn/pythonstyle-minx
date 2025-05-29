// 获取列表信息
const getPostList = (params) => {
    return requests({
        url: '/system/post/get_list',
        method: 'GET',
        params
    })
}

// 获取选择列表信息
const getPostSelectList = () => {
    return requests({
        url: '/system/post/public_get_select_list',
        method: 'GET'
    })
}

// 获取数据信息
const getPostInfoData = (params) => {
    return requests({
        url: '/system/post/get_info',
        method: 'GET',
        params
    })
}

// 删除
const deletePostData = (params) => {
    return requests({
        url: '/system/post/delete',
        method: 'GET',
        params
    })
}

// 批量删除数据
const deletePostByIds = (params) => {
    return requests({
        url: '/system/post/mult_delete',
        method: 'POST',
        data: params
    })
}

// 修改数据
const updatePostData = (params) => {
    return requests({
        url: '/system/post/update',
        method: 'POST',
        data: params
    })
}
// 修改状态数据
const updatePostStatusData = (params) => {
    return requests({
        url: '/system/post/updateStatus',
        method: 'POST',
        data: params
    })
}

// 添加数据
const addPostData = (params) => {
    return requests({
        url: '/system/post/add',
        method: 'POST',
        data: params
    })
}
