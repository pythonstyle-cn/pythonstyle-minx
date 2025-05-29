# -*- coding: utf-8 -*-
'''
    描述：后台扩展表
    作者: chinacsj@139.com
    日期: 2024-08-28
'''

from pony.orm import *
from pythonstyle.common.utils import formatDate
from pythonstyle.modules.system.entity.user import UserEntity
from pythonstyle.config.db_config import create_db

db = create_db('mysql')

class AdminUserEntity(db.Entity):
    # 设置表名
    _table_ = 'sys_admin_user'
    id = PrimaryKey(int)
    user_id = Required(UserEntity,column='user_id')

    @db_session
    @staticmethod
    def add_data(param):
        try:
            last_id = db.insert(AdminUserEntity, **param, returning='id')
            commit()
            return last_id
        except Exception as e:
            # 出现异常时回滚事务
            rollback()
            raise e
            return False


