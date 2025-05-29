// 获取用户列表
const getUserList = (params) => {
    return requests({
        url: '/system/user/get_list',
        method: 'GET',
        params
    })
}
// 获取用户列表
const getCustomList = (params) => {
    return requests({
        url: '/custom/member/get_list',
        method: 'GET',
        params
    })
}
// 获取数据信息
const getUserInfoData = (params) => {
    return requests({
        url: '/system/user/public_get_info',
        method: 'GET',
        params
    })
}

// 删除用户
const deleteUserData = (params) => {
    return requests({
        url: '/system/user/user_delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateUserData = (params) => {
    return requests({
        url: '/system/user/update',
        method: 'POST',
        data: params
    })
}

// 修改状态数据
const updateUserStatusData = (params) => {
    return requests({
        url: '/system/user/updateStatus',
        method: 'POST',
        data: params
    })
}

// 添加数据
const addUserData = (params) => {
    return requests({
        url: '/system/user/add',
        method: 'POST',
        data: params
    })
}

// 获取用户角色数据
const getUserRolesData = (params) => {
    return requests({
        url: '/system/user/public_get_user_roleids',
        method: 'POST',
        data: params
    })
}
// 获取用户岗位数据
const getUserPostsData = (params) => {
    return requests({
        url: '/system/user/public_get_user_postids',
        method: 'POST',
        data: params
    })
}


