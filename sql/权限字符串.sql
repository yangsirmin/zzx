-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('用户评论', '3', '1', 'comments', 'comment/comments/index', 1, 0, 'C', '0', '0', 'comment:comments:list', '#', 'admin', sysdate(), '', null, '用户评论菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('用户评论查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'comment:comments:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('用户评论新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'comment:comments:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('用户评论修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'comment:comments:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('用户评论删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'comment:comments:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('用户评论导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'comment:comments:export',       '#', 'admin', sysdate(), '', null, '');

-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品管理', '3', '1', 'items', 'items/items/index', 1, 0, 'C', '0', '0', 'items:items:list', '#', 'admin', sysdate(), '', null, '物品管理菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品管理查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'items:items:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品管理新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'items:items:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品管理修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'items:items:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品管理删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'items:items:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品管理导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'items:items:export',       '#', 'admin', sysdate(), '', null, '');


-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('领取地点', '3', '1', 'locations', 'locations/locations/index', 1, 0, 'C', '0', '0', 'locations:locations:list', '#', 'admin', sysdate(), '', null, '领取地点菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('领取地点查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'locations:locations:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('领取地点新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'locations:locations:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('领取地点修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'locations:locations:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('领取地点删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'locations:locations:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('领取地点导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'locations:locations:export',       '#', 'admin', sysdate(), '', null, '');


-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品种类', '3', '1', 'categories', 'categories/categories/index', 1, 0, 'C', '0', '0', 'categories:categories:list', '#', 'admin', sysdate(), '', null, '物品种类菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品种类查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'categories:categories:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品种类新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'categories:categories:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品种类修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'categories:categories:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品种类删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'categories:categories:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('物品种类导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'categories:categories:export',       '#', 'admin', sysdate(), '', null, '');