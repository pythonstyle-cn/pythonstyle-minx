// 获取列表信息
const getDeptList = (params) => {
    return requests({
        url: '/system/dept/get_list',
        method: 'GET',
        params
    })
}

// 获取数据信息
const getDeptInfoData = (params) => {
    return requests({
        url: '/system/dept/public_get_info',
        method: 'GET',
        params
    })
}

// 删除
const deleteDeptData = (params) => {
    return requests({
        url: '/system/dept/delete',
        method: 'GET',
        params
    })
}

// 批量删除用户
const deleteDeptByIds = (params) => {
    return requests({
        url: '/system/dept/mult_delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateDeptData = (params) => {
    return requests({
        url: '/system/dept/update',
        method: 'POST',
        data: params
    })
}

// 修改状态数据
const updateDeptStatusData = (params) => {
    return requests({
        url: '/system/dept/updateStatus',
        method: 'POST',
        data: params
    })
}

// 添加信息
const addDeptData = (params) => {
    return requests({
        url: '/system/dept/add',
        method: 'POST',
        data: params
    })
}


