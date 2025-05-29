// 获取列表信息
const getCouponList = (params) => {
    return requests({
        url: '/custom/coupon/init',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getCouponData = (params) => {
    return requests({
        url: '/custom/coupon/public_get_info',
        method: 'GET',
        params
    })
}


// 删除
const deleteCouponData = (params) => {
    return requests({
        url: '/custom/coupon/delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateCouponData = (params) => {
    return requests({
        url: '/custom/coupon/update',
        method: 'POST',
        data: params
    })
}


// 添加数据
const addCouponData = (params) => {
    return requests({
        url: '/custom/coupon/add',
        method: 'POST',
        data: params
    })
}

// 获取类别数据信息
const getCouponTypeListData = () => {
    return requests({
        url: '/custom/coupon_type/public_get_list',
        method: 'GET'
    })
}