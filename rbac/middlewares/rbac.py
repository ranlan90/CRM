from django.utils.deprecation import MiddlewareMixin
from django.conf import settings
from django.shortcuts import HttpResponse
import re


class PermissionMiddleware(MiddlewareMixin):

    def process_request(self, request):
        # 对权限进行校验
        # 1.当前访问的url
        current_url = request.path_info


        # 白名单判断
        for i in settings.WHITE_URL_LIST:
            if re.match(i, current_url):
                return
        print('current_url',current_url)

        # 2.获取当前用户的所有权限信息
        permission_dic = request.session.get(settings.PERMISSION_SESSION_KEY)
        print(permission_dic)
        request.breadcrumb_list = [
            {'title': '首页', 'url': '#'},
            # {'title': '客户管理', 'url': '#'},
        ]
        # 3.权限的校验
        '''
        permission_dic={
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
        # 3.权限校验
        #

        for item in permission_dic.values():
            url = item['url']
            if re.match('^{}$'.format(url), current_url):
                pid = item['pid']
                id = item['id']
                pname = item['pname']
                if pid:
                    # 表示当前权限是子权限，让父权限展开
                    '''
                    request.breadcrumb_list
                    [{
                        'title': '首页',
                        'url': '#'
                    }, {
                        'title': '私户',
                        'url': '/crm/my_customer/'
                    }, {
                        'title': '跟进记录',
                        'url': '/crm/consult_record_list/(?P<customer_id>\\d+)/'
                    }]
                    '''

                    request.current_menu_id = pid
                    request.breadcrumb_list.extend([
                        {'title': permission_dic[pname]['title'], 'url': permission_dic[pname]['url']},
                        {'title': item['title'], 'url': item['url']}
                    ])
                    print('*'*50)
                    print(request.breadcrumb_list)

                else:
                    # 表示当前权限是父权限，要展开的二级菜单
                    request.current_menu_id = id
                    # 添加面包屑导航
                    request.breadcrumb_list.append({'title': item['title'], 'url': item['url']})

                return
        else:

            return HttpResponse('无访问权限')

