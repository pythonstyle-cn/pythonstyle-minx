// 获取用户列表
const getRoleList = (params) => {
    return requests({
        url: '/system/role/role_list',
        method: 'GET',
        params
    })
}

// 获取用户列表
const getRoleSelectList = () => {
    return requests({
        url: '/system/role/public_role_select_list',
        method: 'GET'
    })
}

// 获取数据信息
const getRoleInfoData = (params) => {
    return requests({
        url: '/system/role/public_get_info',
        method: 'GET',
        params
    })
}

// 删除用户
const deleteRoleData = (params) => {
    return requests({
        url: '/system/role/role_delete',
        method: 'GET',
        params
    })
}

// 批量删除数据
const deleteRoleByIds = (params) => {
    return requests({
        url: '/system/role/role_mult_delete',
        method: 'POST',
        data:params
    })
}

// 修改数据
const updateRoleData = (params) => {
    return requests({
        url: '/system/role/role_update',
        method: 'POST',
        data: params
    })
}

// 添加数据
const addRoleData = (params) => {
    return requests({
        url: '/system/role/role_add',
        method: 'POST',
        data: params
    })
}

// 修改状态数据
const updateRoleStatusData = (params) => {
    return requests({
        url: '/system/role/update_status',
        method: 'POST',
        data: params
    })
}

// 修改排序数据
const updateRoleListorderData = (params) => {
    return requests({
        url: '/system/role/update_listorder',
        method: 'POST',
        data: params
    })
}
