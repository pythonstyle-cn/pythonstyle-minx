// 获取列表信息
const getProductList = (params) => {
    return requests({
        url: '/product/product/get_list',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getProductInfoData = (params) => {
    return requests({
        url: '/product/product/get_info',
        method: 'GET',
        params
    })
}


// 删除用户
const deleteProductData = (params) => {
    return requests({
        url: '/product/product/delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateProductData = (params) => {
    return requests({
        url: '/product/product/update',
        method: 'POST',
        data: params
    })
}

// 修改状态数据
const updateProductStatusData = (params) => {
    return requests({
        url: '/product/product/update_status',
        method: 'POST',
        data: params
    })
}

// 添加数据
const addProductData = (params) => {
    return requests({
        url: '/product/product/add',
        method: 'POST',
        data: params
    })
}