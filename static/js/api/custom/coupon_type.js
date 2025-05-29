// 获取列表信息
const getCouponTypeList = (params) => {
    return requests({
        url: '/custom/coupon_type/init',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getCouponTypeData = (params) => {
    return requests({
        url: '/custom/coupon_type/public_get_info',
        method: 'GET',
        params
    })
}


// 删除
const deleteCouponTypeData = (params) => {
    return requests({
        url: '/custom/coupon_type/delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateCouponTypeData = (params) => {
    return requests({
        url: '/custom/coupon_type/update',
        method: 'POST',
        data: params
    })
}


// 添加数据
const addCouponTypeData = (params) => {
    return requests({
        url: '/custom/coupon_type/add',
        method: 'POST',
        data: params
    })
}