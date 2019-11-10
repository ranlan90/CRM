from django import template

register = template.Library()

from django.conf import settings
import re
from collections import OrderedDict


# 生成菜单组件
'''
  menu_dic = {
            1: {
                'title': '客户信息管理',
                'icon': 'fa-address-card',
                'weight': 100,
                'children': [{
                    'title': '客户列表',
                    'url': '/crm/customer_list/',
                    'id': 3,
                    'pid': None
                }, {
                    'title': '私户',
                    'url': '/crm/my_customer/',
                    'id': 4,
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
@register.inclusion_tag('rbac/menu.html')
def menu(request):
    menu_dic = request.session.get(settings.MENU_SESSION_KEY)
    order_dict = OrderedDict()
    # for i in sorted(menu_list,key=lambda x:menu_list[x]['weight'], reverse=True):
    #     order_dict[i] = menu_list[i]
    # for item in order_dict.values():
    #     item['class']='hide'
    #     for i in item['children']:
    #         if re.match('^{}$'.format(i['url']), request.path_info):
    #             i['class'] = 'active'
    #             item['class'] = ''
    for key in sorted(menu_dic,key=lambda x:menu_dic[x]['weight'], reverse=True):
        order_dict[key] = menu_dic[key]
        item = order_dict[key]
        # 给菜单添加class为hiden
        item['class'] = 'hide'
        for i in item['children']:
            if i['id'] == request.current_menu_id:
                i['class'] = 'active'
                item['class'] = ''
    return {'menu_list': order_dict}


# 面包屑导航
@register.inclusion_tag('rbac/breadcrumb.html')
def breadcrumb(request):
    return {'breadcrumb_list': request.breadcrumb_list}

# 权限判断过滤
@register.filter
def has_permission(request,permission):
    if permission in request.session.get(settings.PERMISSION_SESSION_KEY):
        return True

# 给当前url加上&rid=1
@register.simple_tag
def gen_role_url(request, rid):
    params = request.GET.copy()
    params._mutable = True
    params['rid'] = rid
    return params.urlencode()
