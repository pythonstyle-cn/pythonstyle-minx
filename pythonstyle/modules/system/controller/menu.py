# -*- coding: utf-8 -*-
'''
    描述：
    作者: chinacsj@139.com
    日期: 2024-02-29
'''
from pythonstyle.libs.result import Result
from pythonstyle.libs.html import Html
from pythonstyle.common import utils
from pythonstyle.modules.system.entity.role import RoleEntity
from pythonstyle.modules.system.entity.menu import MenuEntity

class menu(Result):
    def menu_list(self):
        if utils.getHttpHeaders('Authorization'):
            menu_list = MenuEntity.get_menu_all_list()
            menu_list_data = self.build_all_menu_tree(menu_list)
            return Result.success(msg='操作成功', data = menu_list_data)
        else:
            return Html().render('system/menu/list.html')

    def public_menu_list(self):
        menu_list = MenuEntity.get_menu_list()
        menu_list_data = self.build_all_menu_tree(menu_list)
        return Result.success(msg='操作成功', data = menu_list_data)

    def get_info(self):
        id = utils.getRequest('menu_id')
        dataInfo = MenuEntity.get_datainfo_by_id(id)
        return Result.success(msg='操作成功', data=dataInfo)

    def menu_add(self):
        params = utils.postRequestJson()
        params = utils.dictNullToempty(params)
        result = MenuEntity.add_data(params)
        if result:
            return Result.success(msg='操作成功')
        else:
            return Result.error(code=201, msg='操作失败')

        # 将字典里面为Null的转换成空字符串
    def update(self):
        params = utils.postRequestJson()
        params['update_time'] = utils.formatDate()
        params = utils.dictNullToempty(params)
        if params['menu_type'] == 'M':
            params['perms'] = ''
            params['query'] = ''
        if params['menu_type'] == 'F':
            params['path'] = ''
            params['query'] = ''
        result = MenuEntity.edit_data(params)
        if result:
            return Result.success(msg='操作成功')
        else:
            return Result.error(code=201, msg='操作失败')

    def updateStatus(self):
        params = utils.postRequestJson()
        param = {'menu_id':params['menu_id'],'status':params['status']}
        result = MenuEntity.edit_data(param)
        if result:
            return Result.success(msg='操作成功')
        else:
            return Result.error(code=201,msg='操作失败')

    def delete(self):
        id = utils.getRequest('menu_id')
        countChildren = self.is_has_children(id)
        if countChildren:
            return Result.error(code=201, msg='操作失败,有子菜单，不允许删除！')
        rst = MenuEntity.delete_by_id(id)
        if rst:
            return Result.success(msg='操作成功')
        else:
            return Result.error(code=201, msg='操作失败')

    def public_get_role_menu(self,role_ids):
        menu_data = {}
        roleInfos_list = RoleEntity.get_rolelist_by_ids(role_ids)
        if len(roleInfos_list) > 0:
            menu_data['roles_info'] = roleInfos_list

        role_menu_lists = MenuEntity.get_role_menu_by_roleids(role_ids)
        if len(role_menu_lists) > 0:
            menu_tree, menu_permission = self.build_menu_tree(role_menu_lists)
            menu_data['routers'] = menu_tree
            if 1 in role_ids:
                menu_data['permissions'] = ['*:*:*']
            else:
                menu_data['permissions'] = menu_permission

        return menu_data

    def build_all_menu_tree(self,menu_list, parent_id=0):
        menu_tree = []
        for menu in menu_list:
            if menu['parent_id'] == parent_id:
                children = self.build_all_menu_tree(menu_list, menu['menu_id'])
                if children:
                    menu['children'] = children
                menu_tree.append(menu)
        return menu_tree

    def build_menu_tree(self,menu_list, parent_id=0):
        menu_tree = []
        menu_permission = []
        for menu in menu_list:
            if menu['menu_type'] == 'F':
                menu_permission.append(menu['perms'])
                continue
            if menu['parent_id'] == parent_id:
                children_data, menu_permission_data = self.build_menu_tree(menu_list, menu['menu_id'])
                if children_data:
                    menu['children'] = children_data
                menu_tree.append(menu)
        return menu_tree,menu_permission

    def is_has_children(self, id):
        rst = MenuEntity.has_children(id)
        if rst > 0:
            return True
        else:
            return False