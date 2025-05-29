// 获取菜单
const getMenuList = () => {
    return requests({
        url: '/system/menu/menu_list',
        method: 'GET'
    })
}

// 获取菜单
const getPublicMenuList = () => {
    return requests({
        url: '/system/menu/public_menu_list',
        method: 'GET'
    })
}
//获取不同角色的菜单
const getRoleRouter = (role_ids) =>{
    const data = {
        role_ids
    }
    return requests({
        url: '/system/menu/public_get_role_menu',
        method: 'POST',
        data: data
      })
}

// 获取数据信息
const getMenuInfoData = (params) => {
    return requests({
        url: '/system/menu/get_info',
        method: 'GET',
        params
    })
}

// 删除
const deleteMenuData = (params) => {
    return requests({
        url: '/system/menu/delete',
        method: 'GET',
        params
    })
}

// 修改用户
const updateMenuData = (params) => {
    return requests({
        url: '/system/menu/update',
        method: 'POST',
        data: params
    })
}

// 修改状态数据
const updateMenuStatusData = (params) => {
    return requests({
        url: '/system/menu/updateStatus',
        method: 'POST',
        data: params
    })
}

// 添加信息
const addMenuData = (params) => {
    return requests({
        url: '/system/menu/menu_add',
        method: 'POST',
        data: params
    })
}