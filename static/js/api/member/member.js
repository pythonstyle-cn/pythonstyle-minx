// 获取列表信息
const getProductListData = () => {
    return requests({
        url: '/member/product/get_product_list',
        method: 'GET'
    })
}

// 获取优惠券数据
const getCouponListData = (params) => {
    return requests({
        url: '/member/product/get_coupon_list',
        method: 'POST',
        data: params
    })
}


// 提交订单
const addProductOrderData = (params) => {
    return requests({
        url: '/business/order/add_order',
        method: 'POST',
        data: params
    })
}

// 检查订单数据
const checkPayOrderResultData = (params) => {
    return requests({
        url: '/business/order/get_order_pay_result',
        method: 'POST',
        data: params
    })
}