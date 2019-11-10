from django.conf import settings
from django.shortcuts import HttpResponse


def init_permission(request, user):
    # 登陆成功将权限信息写入session中
    # 1.查当前用户拥有的权
    try:
        permission_query = user.user.roles.filter(permissions__url__isnull=False).values(
            'permissions__url',
            'permissions__title',
            'permissions__id',
            'permissions__name',
            'permissions__parent_id',
            'permissions__parent__name',
            'permissions__menu_id',
            'permissions__menu__title',
            'permissions__menu__icon',
            'permissions__menu__weight',

        ).distinct()
    except Exception as e:
        return HttpResponse('请联系管理员：电话 xxxxxxxx')
    # 存放权限信息
    permission_dict = {}
    '''
        期望生成permission_dict数据结构如下
        {
            'customer': {
                'url': '/crm/customer_list/',
                'id': 3,
                'pid': None,
                'pname': None,
                'title': '客户列表'
            },
            'my_customer': {
                'url': '/crm/my_customer/',
                'id': 4,
                'pid': None,
                'pname': None,
                'title': '私户'
            }
            'rbac:permission_del': {
                'url': '/rbac/permission/del/(\d+)',
                'id': 33,
                'pid': 27,
                'pname': 'rbac:menu_list',
                'title': '删除权限'
            }
        }
        '''
    # 存放菜单信息

    menu_dict = {}
    for item in permission_query:
        permission_dict[item['permissions__name']] = {'url': item['permissions__url'],
                                                      'id': item['permissions__id'],
                                                      'pid': item['permissions__parent_id'],
                                                      'pname': item['permissions__parent__name'],
                                                      'title': item['permissions__title']
                                                      }
        # 获取权限菜单id
        menu_id = item.get('permissions__menu_id')
        # 如果该权限没有菜单id 退出当前循环
        if not menu_id:
            continue
        # 如果该权限有菜单id 判断之前这个菜单id如果没有添加过就生成如下格式
        '''
        {
            1: {
                'title': '客户信息管理',
                'icon': 'fa-address-card',
                'weight': 100,
                'children': [{
                    'title': '客户列表',
                    'url': '/crm/customer_list/',
                    'id': 3,
                    'pid': None
                }]
            },
            2: {
                'title': '班级管理',
                'icon': 'fa-home',
                'weight': 1,
                'children': [{
                    'title': '班级列表',
                    'url': '/crm/class_list/',
                    'id': 16,
                    'pid': None
                }]
            },
            3: {
                'title': '权限管理',
                'icon': 'fa-hand-scissors-o',
                'weight': 1,
                'children': [{
                    'title': '角色列表',
                    'url': '/rbac/role/list/',
                    'id': 23,
                    'pid': None
                }, {
                    'title': '权限信息',
                    'url': '/rbac/menu/list/',
                    'id': 27,
                    'pid': None
                }, {
                    'title': '分配权限',
                    'url': '/rbac/distribute/permissions/',
                    'id': 35,
                    'pid': None
                }]
            }
        }

        '''
        if menu_id not in menu_dict:
            menu_dict[menu_id] = {
                'title': item['permissions__menu__title'],
                'icon': item['permissions__menu__icon'],
                'weight': item['permissions__menu__weight'],
                'children': [
                    {'title': item['permissions__title'],
                     'url': item['permissions__url'],
                     'id': item['permissions__id'],
                     'pid': item['permissions__parent_id']}
                ]
            }
        # 如果该权限有菜单id 可以判断之前这个权限在 对应菜单id添加过 将该权限添加到children中
        else:
            menu_dict[menu_id]['children'].append(
                {'title': item['permissions__title'],
                 'url': item['permissions__url'],
                 'id': item['permissions__id'],
                 'pid': item['permissions__parent_id']
                 })
    #
    #
    # 2.将权限信息写入session中
    request.session[settings.PERMISSION_SESSION_KEY] = permission_dict

    # 将菜单信息写入session
    request.session[settings.MENU_SESSION_KEY] = menu_dict
