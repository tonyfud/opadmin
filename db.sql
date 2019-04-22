use ops;
insert into rbac_role values(1,"管理员");
insert into rbac_role values(2,"普通用户");
insert into wxconfig values (1,'','','','','');
insert into userprofile_roles values (1,1);
update userprofile_roles set role_id=1 where userprofile_id=1;
insert into rbac_menu values (1,'权限管理','fa-hourglass-3');
insert into rbac_menu values (2,'用户管理','fa-users');

/*导入rbac的基本权限*/;
INSERT INTO `rbac_permission` VALUES (1,'用户列表','/user/user/list/','user:user_list',2,NULL),(2,'角色列表','/user/role/list/','user:role_list',1,NULL),(3,'菜单列表','/user/menu/list/','user:menu_list',1,NULL),(4,'权限分配','/user/distribute/permissions/','user:distribute_permissions',1,NULL),(5,'添加用户','/user/user/register/','user:register',NULL,1),(6,'更新用户','/user/user/update/(?P<pk>[0-9]+)/','user:user_update',NULL,1),(7,'删除用户','/user/user/delete/(?P<pk>[0-9]+)/','user:user_delete',NULL,1),(8,'添加角色','/user/role/add/','user:role_add',NULL,2),(9,'更新角色','/user/role/update/(?P<pk>[0-9]+)/','user:role_update',NULL,2),(10,'删除角色','/user/role/delete/(?P<pk>[0-9]+)/','user:role_delete',NULL,2),(11,'添加一级菜单','/user/menu/add/','user:menu_add',NULL,3),(12,'更新一级菜单','/user/menu/update/(?P<pk>[0-9]+)/','user:menu_update',NULL,3),(13,'删除一级菜单','/user/menu/delete/(?P<pk>[0-9]+)/','user:menu_delete',NULL,3),(14,'添加二级菜单','/user/second/menu/add/(?P<menu_id>\\d+)','user:second_menu_add',NULL,3),(15,'更新二级菜单','/user/second/menu/update/(?P<pk>\\d+)/','user:second_menu_update',NULL,3),(16,'删除二级菜单','/user/second/menu/delete/(?P<pk>\\d+)/','user:second_menu_delete',NULL,3),(17,'添加权限','/user/permission/add/(?P<second_menu_id>\\d+)/','user:permission_add',NULL,3),(18,'修改权限','/user/permission/update/(?P<pk>[0-9]+)/','user:permission_update',NULL,3),(19,'删除权限','/user/permission/delete/(?P<pk>[0-9]+)/','user:permission_delete',NULL,3),(20,'批量操作权限','/user/multi/permissions/','user:multi_permissions',NULL,3),(21,'批量删除权限','/user/multi/permissions/delete/(?P<pk>\\d+)/','user:multi_permissions_delete',NULL,3);

/*导入rbac的权限与用户的对应关系*/;
INSERT INTO `rbac_role_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21);