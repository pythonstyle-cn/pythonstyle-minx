// 获取列表信息
const getCategoryList = (params) => {
    return requests({
        url: '/websetting/category/get_list',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getCategoryInfoData = (params) => {
    return requests({
        url: '/websetting/category/public_get_info',
        method: 'GET',
        params
    })
}

// 删除
const deleteCategoryData = (params) => {
    return requests({
        url: '/websetting/category/delete',
        method: 'GET',
        params
    })
}

// 批量删除用户
const deleteCategoryByIds = (params) => {
    return requests({
        url: '/websetting/category/mult_delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateCategoryData = (params) => {
    return requests({
        url: '/websetting/category/update',
        method: 'POST',
        data: params
    })
}

// 添加信息
const addCategoryData = (params) => {
    return requests({
        url: '/websetting/category/add',
        method: 'POST',
        data: params
    })
}