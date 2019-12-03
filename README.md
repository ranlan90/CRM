# 说明

##### CRM项目: **SELL**系统

随着公司的发展以及市场和销售⼈员增加，完成销售流程的规范化以及标准化并在SELL系统对员工进行监管，项目主要⽤于为公司销售人员、运营、财务员等人员提供公共的处理平台，以便实现信息的管理和公司的信息化流程。为销售人员提供客户关系的管理，对于新客户信息的录⼊。定期对客户进⾏回访和跟进，从而增加⽤户粘性，便于之后的转化。

##### 功能介绍 

SELL主要⽤于为销售、渠道人员以及管理者实现一个规范化的平台，为了防止销售之间存在的"恶意"竞争,避免有进⾏抢单导致部⻔不团结的因素,实⾏公户和私户管理,公户主要存放未指定销售的客户信息,公户有两种方式进行分配到私户,第⼀种是销售⾃⼰申请,第二种是主管进行主动分配. 私户主要存放⾃己的客户,在申请客户时基于数据库事务/锁保证数据安全,从而安全将客户申请到⾃己的账户。并且可以批量操作时候公私户转化模糊搜索等操作。 

项⽬中继承了一个独立的权限组件,权限组件主要用于为让各种角色的客户仅能访问⾃己拥有的功能,⽆权越级访问,权限基本使⽤流程涵盖了以下知识点,如:用户认证,将权限和菜单信息放入session, 在中间件中进行权限校验(白名单)/动态菜单,使用inclusion_tag定制菜单的显示。 



## 运行环境

| Project                 | Status | Description              |
| ----------------------- | ------ | ------------------------ |
| python                  | 3.6    | 在这个版本以及以上都可以 |
| django                  | 1.11   | 必须此版本               |
| django-multiselectfield | 0.1.10 | 版本以及以上             |
| djangorestframework     | 3.8.2  | 版本以及以上             |
| pillow                  | 6.2.1  | 版本以及以上             |
| PyMySQL                 | 0.9.3  | 版本以及以上             |

## 安装环境

```
pip3 install django==1.11
pip3 install django-multiselectfield
pip3 install pillow
pip3 install PyMySQL
```

使用Pycharm直接运行即可， 或者使用命令 `python manage.py runserver`

## 视图函数说明

| 路径                         | 功能                                                         |
| ---------------------------- | ------------------------------------------------------------ |
| login/                       | 登录                                                         |
| logout/                      | 登出                                                         |
| reg/                         | 注册                                                         |
| v_code/                      | 生成验证码图片                                               |
| crm/customer_list/           | 获取所有的公户 公私户转换                                    |
| crm/my_customer/             | 获取所有的私户 公私户转换                                    |
| crm/customer/add/            | 添加客户                                                     |
| crm/customer/edit/1          | 编辑id = 1的客户                                             |
| crm/consult_record_list/1    | 查看id = 1的客户的所有跟进记录                               |
| crm/consult_record/add/      | 添加跟进记录                                                 |
| crm/consult_record/edit/1    | 编辑id = 1的跟进记录                                         |
| crm/enrollment_list/1        | 展示客户id=1的报名记录                                       |
| crm/enrollment/edit/1        | 编辑id = 1的报名记录                                         |
| crm/enrollment/add/1         | 添加客户id=1的报名记录                                       |
| crm/payment_record_list/1    | 展示客户id=1的缴费记录                                       |
| crm/payment/add/1            | 添加客户id=1的缴费记录                                       |
| crm/payment/edit/1           | 编辑id=1的缴费记录                                           |
| crm/class_list/              | 展示所有班级                                                 |
| crm/class/add/               | 添加班级                                                     |
| crm/class/edit/1             | 编辑id=1的班级                                               |
| crm/course_list/1            | 查看班级id=1的所有课程  根据当前提交的课程记录id批量初始化学生的学习记录 |
| crm/course/add/1             | 添加班级id=1的课程                                           |
| crm/course/edit/1            | 编辑id=1的课程                                               |
| crm/study_record_list/1      | 展示并且编辑课程id=1的所有学习记录                           |
| rbac/role/list/              | 查看所有的角色                                               |
| rbac/role/add/               | 添加角色                                                     |
| rbac/role/edit/1             | 编辑id=1的角色                                               |
| rbac/role/del/1              | 删除id=1的角色                                               |
| rbac/menu/list/              | 所有的菜单  所有菜单的权限                                   |
| rbac/menu/list/?mid=1        | 所有的菜单  菜单id=1的权限                                   |
| rbac/menu/add/               | 添加菜单                                                     |
| rbac/menu/edit/1             | 编辑id=1的菜单                                               |
| rbac/menu/del/1              | 删除id=1的菜单                                               |
| rbac/permission/add/         | 添加权限                                                     |
| rbac/permission/edit/1       | 编辑id=1的权限                                               |
| rbac/permission/del/1        | 删除id=1的权限                                               |
| rbac/multi/permissions/      | 批量操作权限                                                 |
| rbac/distribute/permissions/ | 分配权限                                                     |



## 运行方式
使用Pycharm直接运行即可，
或者使用命令
`python3 manage.py runserver`



## 表关系

本项目涉及15个表，表关系包含一对一，一对多，多对多！
表关系图如下：

![crm关系表.png](https://i.loli.net/2019/11/20/edkSjy9AxLV78Gw.png)



# 效果图
## 登录页面

项目网址:  [http://crm.yueqi.cf:8880/login/](http://crm.yueqi.cf:8880/login/)

用户名：hanhan@qq.com 密码：123456

用户名：archer@qq.com 密码：123456

用户名：sabar@qq.com 密码：123456

![crm登录页面.png](https://i.loli.net/2019/11/20/6T9ZYONayvqo7nm.png)

## 客户列表页面

![客户列表页面.png](https://i.loli.net/2019/11/20/h9IkRyJuMFPpi3D.png)

## 私户页面

![crm私户页面.png](https://i.loli.net/2019/11/20/K8I2BOJbjGRvh5k.png)

## 添加客户页面

![添加客户页面.png](https://i.loli.net/2019/11/20/8SdFsfoJzI3Em5y.png)

## 报名记录页面

![crm查看报名记录页面.png](https://i.loli.net/2019/11/20/lkLJB82d1ZYWTMm.png)

## 班级列表页面

![查看班级列表页面.png](https://i.loli.net/2019/11/20/faqNlgpyk5MUY6t.png)

## 学习记录页面

![学习记录页面.png](https://i.loli.net/2019/11/20/5VRMsDCEb4XPvLx.png)

## 分配权限页面

![分配权限页面.png](https://i.loli.net/2019/11/20/qJo4WSxDR5ZNV8m.png)

## 权限信息页面

![权限信息页面.png](https://i.loli.net/2019/11/20/KBq624eW7Ha8dIZ.png)

## 批量操作权限页面

![批量操作权限.png](https://i.loli.net/2019/11/20/UeAYNtHcfRlBh1u.png)

Copyright (c) 2019-present,yue qi