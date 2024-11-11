-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-11-11 14:45:13
-- 服务器版本： 5.7.44-log
-- PHP 版本： 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `ybc-zzx`
--

-- --------------------------------------------------------

--
-- 表的结构 `gen_table`
--

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- --------------------------------------------------------

--
-- 表的结构 `gen_table_column`
--

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_BLOB_TRIGGERS`
--

CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blob类型的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_CALENDARS`
--

CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历信息表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_CRON_TRIGGERS`
--

CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cron类型的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_FIRED_TRIGGERS`
--

CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='已触发的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_JOB_DETAILS`
--

CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='任务详细信息表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_LOCKS`
--

CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储的悲观锁信息表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_PAUSED_TRIGGER_GRPS`
--

CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='暂停的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_SCHEDULER_STATE`
--

CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度器状态表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_SIMPLE_TRIGGERS`
--

CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='简单触发器的信息表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_SIMPROP_TRIGGERS`
--

CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步机制的行锁表';

-- --------------------------------------------------------

--
-- 表的结构 `QRTZ_TRIGGERS`
--

CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='触发器详细信息表';

-- --------------------------------------------------------

--
-- 表的结构 `sys_config`
--

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

--
-- 转存表中的数据 `sys_config`
--

INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-11-08 18:13:50', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
(2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-11-08 18:13:50', '', NULL, '初始化密码 123456'),
(3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-11-08 18:13:50', '', NULL, '深色主题theme-dark，浅色主题theme-light'),
(4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2024-11-08 18:13:50', 'admin', '2024-11-10 14:57:32', '是否开启验证码功能（true开启，false关闭）'),
(5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-11-08 18:13:50', '', NULL, '是否开启注册用户功能（true开启，false关闭）'),
(6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-11-08 18:13:50', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- --------------------------------------------------------

--
-- 表的结构 `sys_dept`
--

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

--
-- 转存表中的数据 `sys_dept`
--

INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
(100, 0, '0', '桂林科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-08 18:13:49', 'admin', '2024-11-08 19:28:53'),
(101, 100, '0,100', '桂林总公司', 1, '杨必超', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-08 18:13:49', 'admin', '2024-11-08 19:29:09'),
(102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-11-08 18:13:49', '', NULL),
(103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-08 18:13:49', '', NULL),
(104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-08 18:13:49', '', NULL),
(105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-08 18:13:49', '', NULL),
(106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-08 18:13:49', '', NULL),
(107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-08 18:13:49', '', NULL),
(108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-11-08 18:13:49', '', NULL),
(109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-11-08 18:13:49', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict_data`
--

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

--
-- 转存表中的数据 `sys_dict_data`
--

INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '性别男'),
(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '性别女'),
(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '性别未知'),
(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '显示菜单'),
(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '隐藏菜单'),
(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '正常状态'),
(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '停用状态'),
(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '正常状态'),
(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '停用状态'),
(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '默认分组'),
(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '系统分组'),
(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '系统默认是'),
(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '系统默认否'),
(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '通知'),
(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '公告'),
(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '正常状态'),
(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '关闭状态'),
(18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '其他操作'),
(19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '新增操作'),
(20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '修改操作'),
(21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '删除操作'),
(22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '授权操作'),
(23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '导出操作'),
(24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '导入操作'),
(25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '强退操作'),
(26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '生成操作'),
(27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '清空操作'),
(28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '正常状态'),
(29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '停用状态');

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict_type`
--

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

--
-- 转存表中的数据 `sys_dict_type`
--

INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '用户性别列表'),
(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '菜单状态列表'),
(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '系统开关列表'),
(4, '任务状态', 'sys_job_status', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '任务状态列表'),
(5, '任务分组', 'sys_job_group', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '任务分组列表'),
(6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '系统是否列表'),
(7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '通知类型列表'),
(8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '通知状态列表'),
(9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '操作类型列表'),
(10, '系统状态', 'sys_common_status', '0', 'admin', '2024-11-08 18:13:50', '', NULL, '登录状态列表');

-- --------------------------------------------------------

--
-- 表的结构 `sys_job`
--

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

--
-- 转存表中的数据 `sys_job`
--

INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-11-08 18:13:50', '', NULL, ''),
(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-11-08 18:13:50', '', NULL, ''),
(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-11-08 18:13:50', '', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `sys_job_log`
--

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- --------------------------------------------------------

--
-- 表的结构 `sys_logininfor`
--

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

--
-- 转存表中的数据 `sys_logininfor`
--

INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES
(100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-08 19:16:15'),
(101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-08 19:31:03'),
(102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-08 19:31:17'),
(103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-08 19:31:55'),
(104, 'ybcUser', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-08 19:31:59'),
(105, 'ybcUser', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-08 19:42:16'),
(106, 'ybcAdmin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-08 19:42:29'),
(107, 'ybcUser', '180.138.8.64', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 20:14:56'),
(108, 'ybcUser', '180.138.8.64', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 20:22:52'),
(109, 'ybcUser', '180.138.8.64', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 20:23:00'),
(110, 'ybcUser', '180.138.8.64', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 20:24:55'),
(111, 'ybcUser', '180.138.8.64', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 20:26:39'),
(112, 'ybcUser', '180.138.8.64', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 20:45:34'),
(113, 'ybcUser', '180.138.8.64', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 20:45:40'),
(114, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:04:15'),
(115, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 14:04:18'),
(116, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:04:35'),
(117, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:11:24'),
(118, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 14:13:28'),
(119, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:13:32'),
(120, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:54:55'),
(121, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 14:55:24'),
(122, 'admin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:55:44'),
(123, 'admin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 14:56:06'),
(124, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-10 14:56:23'),
(125, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-10 14:56:29'),
(126, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-10 14:56:33'),
(127, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 14:56:43'),
(128, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:56:49'),
(129, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 14:56:58'),
(130, 'admin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:57:12'),
(131, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 14:57:43'),
(132, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 14:59:28'),
(133, 'admin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 15:00:33'),
(134, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:01:49'),
(135, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:01:54'),
(136, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 15:06:06'),
(137, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:06:17'),
(138, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 15:24:44'),
(139, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:26:16'),
(140, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:35:02'),
(141, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 15:40:29'),
(142, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:40:33'),
(143, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 15:41:26'),
(144, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:41:31'),
(145, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 15:41:43'),
(146, 'ybcAdmin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:41:57'),
(147, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:43:15'),
(148, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:54:35'),
(149, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 15:57:50'),
(150, 'ybcAdmin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 15:58:06'),
(151, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 17:27:57'),
(152, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 17:33:57'),
(153, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 17:34:01'),
(154, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 17:34:06'),
(155, 'ybcAdmin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-10 17:34:15'),
(156, 'ybcAdmin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 17:34:22'),
(157, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 17:36:38'),
(158, 'ybcUser', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-10 17:36:41'),
(159, 'ybcAdmin', '171.106.119.236', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-10 17:36:54'),
(160, 'ybcUser', '171.108.120.219', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 13:43:14'),
(161, 'admin', '171.108.120.219', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 13:47:35'),
(162, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 13:53:31'),
(163, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-11 14:13:36'),
(164, 'ybcAdmin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 14:13:52'),
(165, 'ybcAdmin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-11 14:14:35'),
(166, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 14:14:48'),
(167, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-11 14:16:36'),
(168, 'ybcAmin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-11 14:17:01'),
(169, 'ybcAdmin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 14:17:09'),
(170, 'ybcAdmin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-11 14:37:30'),
(171, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 14:37:40'),
(172, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-11 14:38:35'),
(173, 'ybcUser', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 14:40:41'),
(174, 'ybcUser', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-11 14:40:59'),
(175, 'ybcAdmin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 14:41:12');

-- --------------------------------------------------------

--
-- 表的结构 `sys_menu`
--

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

--
-- 转存表中的数据 `sys_menu`
--

INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `route_name`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-11-08 18:13:49', '', NULL, '系统管理目录'),
(2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-11-08 18:13:49', '', NULL, '系统监控目录'),
(3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-11-08 18:13:49', '', NULL, '系统工具目录'),
(100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-11-08 18:13:49', '', NULL, '用户管理菜单'),
(101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-11-08 18:13:49', '', NULL, '角色管理菜单'),
(102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-11-08 18:13:49', '', NULL, '菜单管理菜单'),
(103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-11-08 18:13:49', '', NULL, '部门管理菜单'),
(104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-11-08 18:13:49', '', NULL, '岗位管理菜单'),
(105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-11-08 18:13:49', '', NULL, '字典管理菜单'),
(106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-11-08 18:13:49', '', NULL, '参数设置菜单'),
(107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-11-08 18:13:49', '', NULL, '通知公告菜单'),
(108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-11-08 18:13:49', '', NULL, '日志管理菜单'),
(109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-11-08 18:13:49', '', NULL, '在线用户菜单'),
(110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-11-08 18:13:49', '', NULL, '定时任务菜单'),
(111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-11-08 18:13:49', '', NULL, '数据监控菜单'),
(112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-11-08 18:13:49', '', NULL, '服务监控菜单'),
(113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-11-08 18:13:49', '', NULL, '缓存监控菜单'),
(114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-11-08 18:13:49', '', NULL, '缓存列表菜单'),
(115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-11-08 18:13:49', '', NULL, '表单构建菜单'),
(116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-11-08 18:13:49', '', NULL, '代码生成菜单'),
(117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-11-08 18:13:49', '', NULL, '系统接口菜单'),
(500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-11-08 18:13:49', '', NULL, '操作日志菜单'),
(501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-11-08 18:13:49', '', NULL, '登录日志菜单'),
(1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(2000, '用户评论', 0, 6, 'comments', 'comment/comments/index', NULL, '', 1, 0, 'C', '0', '0', 'comment:comments:list', '用户评论', 'admin', '2024-11-08 18:14:15', 'admin', '2024-11-11 14:16:18', '用户评论菜单'),
(2001, '用户评论查询', 2000, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'comment:comments:query', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2002, '用户评论新增', 2000, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'comment:comments:add', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2003, '用户评论修改', 2000, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'comment:comments:edit', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2004, '用户评论删除', 2000, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'comment:comments:remove', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2005, '用户评论导出', 2000, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'comment:comments:export', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2006, '物品管理', 0, 3, 'items', 'items/items/index', NULL, '', 1, 0, 'C', '0', '0', 'items:items:list', '物品管理', 'admin', '2024-11-08 18:14:15', 'admin', '2024-11-11 14:15:13', '物品管理菜单'),
(2007, '物品管理查询', 2006, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'items:items:query', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2008, '物品管理新增', 2006, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'items:items:add', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2009, '物品管理修改', 2006, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'items:items:edit', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2010, '物品管理删除', 2006, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'items:items:remove', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2011, '物品管理导出', 2006, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'items:items:export', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2012, '领取地点', 0, 5, 'locations', 'locations/locations/index', NULL, '', 1, 0, 'C', '0', '0', 'locations:locations:list', '领取地点', 'admin', '2024-11-08 18:14:15', 'admin', '2024-11-11 14:16:11', '领取地点菜单'),
(2013, '领取地点查询', 2012, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'locations:locations:query', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2014, '领取地点新增', 2012, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'locations:locations:add', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2015, '领取地点修改', 2012, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'locations:locations:edit', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2016, '领取地点删除', 2012, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'locations:locations:remove', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2017, '领取地点导出', 2012, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'locations:locations:export', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2018, '物品种类', 0, 4, 'categories', 'categories/categories/index', NULL, '', 1, 0, 'C', '0', '0', 'categories:categories:list', 'table', 'admin', '2024-11-08 18:14:15', 'admin', '2024-11-11 14:15:28', '物品种类菜单'),
(2019, '物品种类查询', 2018, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'categories:categories:query', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2020, '物品种类新增', 2018, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'categories:categories:add', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2021, '物品种类修改', 2018, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'categories:categories:edit', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2022, '物品种类删除', 2018, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'categories:categories:remove', '#', 'admin', '2024-11-08 18:14:15', '', NULL, ''),
(2023, '物品种类导出', 2018, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'categories:categories:export', '#', 'admin', '2024-11-08 18:14:15', '', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `sys_notice`
--

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

--
-- 转存表中的数据 `sys_notice`
--

INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xe696b0e78988e69cace58685e5aeb9, '0', 'admin', '2024-11-08 18:13:50', '', NULL, '管理员'),
(2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xe7bbb4e68aa4e58685e5aeb9, '0', 'admin', '2024-11-08 18:13:50', '', NULL, '管理员');

-- --------------------------------------------------------

--
-- 表的结构 `sys_oper_log`
--

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

--
-- 转存表中的数据 `sys_oper_log`
--

INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES
(100, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"items/items/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"物品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"items\",\"perms\":\"items:items:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:17:05', 383),
(101, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"items/items/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"物品管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"物品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"items\",\"perms\":\"items:items:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:17:41', 318),
(102, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"categories/categories/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"物品种类\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"物品种类\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"categories\",\"perms\":\"categories:categories:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:18:08', 246),
(103, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"locations/locations/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"领取地点\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"领取地点\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"locations\",\"perms\":\"locations:locations:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:18:24', 244),
(104, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"locations/locations/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"领取地点\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"领取地点\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"locations\",\"perms\":\"locations:locations:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:18:33', 249),
(105, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"comment/comments/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"用户评论\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"用户评论\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"comments\",\"perms\":\"comment:comments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:18:50', 248),
(106, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"categories/categories/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"物品种类\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"categories\",\"perms\":\"categories:categories:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:19:19', 248),
(107, '角色管理', 2, 'com.zzx.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-11-08 18:13:49\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2006,2018,2012,2000,2007,2008,2019,2013,2001,2002],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:20:41', 988),
(108, '角色管理', 1, 'com.zzx.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2006,2007,2008,2009,2010,2011,109,1046,1047,1048,2018,2019,2020,2021,2022,2023,2012,2013,2014,2015,2016,2017,2000,2001,2002,2003,2004,2005],\"params\":{},\"roleKey\":\"admin\",\"roleName\":\"管理员用户\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"新增角色\'管理员用户\'失败，角色权限已存在\",\"code\":500}', 0, NULL, '2024-11-08 19:21:39', 151),
(109, '角色管理', 1, 'com.zzx.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2006,2007,2008,2009,2010,2011,109,1046,1047,1048,2018,2019,2020,2021,2022,2023,2012,2013,2014,2015,2016,2017,2000,2001,2002,2003,2004,2005],\"params\":{},\"roleId\":100,\"roleKey\":\"ybcadmin\",\"roleName\":\"管理员用户\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:21:50', 712),
(110, '用户管理', 1, 'com.zzx.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"达芬奇\",\"params\":{},\"postIds\":[],\"roleIds\":[2],\"status\":\"0\",\"userId\":100,\"userName\":\"ybcUser\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:22:58', 975),
(111, '用户管理', 1, 'com.zzx.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"爱情买卖\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":101,\"userName\":\"ybcAdmin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:23:46', 876),
(112, '部门管理', 3, 'com.zzx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/103', '127.0.0.1', '内网IP', '103', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2024-11-08 19:27:44', 162),
(113, '部门管理', 3, 'com.zzx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/102', '127.0.0.1', '内网IP', '102', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}', 0, NULL, '2024-11-08 19:27:54', 79),
(114, '部门管理', 3, 'com.zzx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/109', '127.0.0.1', '内网IP', '109', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:28:18', 318),
(115, '部门管理', 3, 'com.zzx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/108', '127.0.0.1', '内网IP', '108', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:28:21', 313),
(116, '部门管理', 3, 'com.zzx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/102', '127.0.0.1', '内网IP', '102', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:28:24', 317),
(117, '部门管理', 2, 'com.zzx.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"桂林科技\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:28:53', 417),
(118, '部门管理', 2, 'com.zzx.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"桂林总公司\",\"email\":\"ry@qq.com\",\"leader\":\"杨必超\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"桂林科技\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:29:09', 797),
(119, '参数管理', 2, 'com.zzx.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2024-11-08 18:13:50\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-08 19:31:48', 476),
(120, '参数管理', 2, 'com.zzx.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '171.106.119.236', 'XX XX', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-11-08 18:13:50\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2024-11-08 19:31:48\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 14:56:02', 64),
(121, '参数管理', 2, 'com.zzx.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '171.106.119.236', 'XX XX', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2024-11-08 18:13:50\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2024-11-10 14:56:02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 14:57:32', 28),
(122, '物品管理', 2, 'com.zzx.items.controller.ItemsController.edit()', 'PUT', 1, 'ybcAdmin', NULL, '/items/items', '171.106.119.236', 'XX XX', '{\"category\":\"电子产品\",\"createdAt\":\"2024-11-08 19:40:19\",\"dateFound\":\"2023-10-01\",\"description\":\"黑色，屏幕有轻微划痕。\",\"id\":1,\"image\":\"/profile/upload/2024/11/10/profile_20241110154228A001.jpg\",\"itemName\":\"iPhone 12\",\"locationFound\":\"北京市朝阳区\",\"params\":{},\"status\":1,\"updatedAt\":\"2024-11-08 19:40:19\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 15:42:31', 37),
(123, '物品管理', 2, 'com.zzx.items.controller.ItemsController.edit()', 'PUT', 1, 'ybcAdmin', NULL, '/items/items', '171.106.119.236', 'XX XX', '{\"category\":\"电子产品\",\"createdAt\":\"2024-11-08 19:40:19\",\"dateFound\":\"2023-10-01\",\"description\":\"黑色，屏幕有轻微划痕。\",\"id\":1,\"image\":\"/profile/upload/2024/11/10/mmexport1718633725377_20241110155859A003.jpg\",\"itemName\":\"iPhone 12\",\"locationFound\":\"北京市朝阳区\",\"params\":{},\"status\":1,\"updatedAt\":\"2024-11-08 19:40:19\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 15:59:02', 11),
(124, '物品管理', 2, 'com.zzx.items.controller.ItemsController.edit()', 'PUT', 1, 'ybcAdmin', NULL, '/items/items', '171.106.119.236', 'XX XX', '{\"category\":\"电子产品\",\"createdAt\":\"2024-11-08 19:40:19\",\"dateFound\":\"2023-10-01\",\"description\":\"黑色，屏幕有轻微划痕。\",\"id\":1,\"image\":\"/profile/upload/2024/11/10/profile_20241110155958A004.jpg\",\"itemName\":\"iPhone 12\",\"locationFound\":\"北京市朝阳区\",\"params\":{},\"status\":1,\"updatedAt\":\"2024-11-08 19:40:19\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 16:00:00', 13),
(125, '物品管理', 2, 'com.zzx.items.controller.ItemsController.edit()', 'PUT', 1, 'ybcAdmin', NULL, '/items/items', '171.106.119.236', 'XX XX', '{\"category\":\"证件\",\"createdAt\":\"2024-11-08 19:40:19\",\"dateFound\":\"2023-10-05\",\"description\":\"身份证正面有照片，背面有编号。\",\"id\":2,\"image\":\"\",\"itemName\":\"身份证\",\"locationFound\":\"上海市浦东新区\",\"params\":{},\"status\":0,\"updatedAt\":\"2024-11-08 19:40:19\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 16:40:51', 17),
(126, '物品管理', 2, 'com.zzx.items.controller.ItemsController.edit()', 'PUT', 1, 'ybcAdmin', NULL, '/items/items', '171.106.119.236', 'XX XX', '{\"category\":\"电子产品\",\"createdAt\":\"2024-11-08 19:40:19\",\"dateFound\":\"2023-10-01\",\"description\":\"黑色，屏幕有轻微划痕。\",\"id\":1,\"image\":\"/profile/upload/2024/11/10/ava_20241110173431A001.jpg\",\"itemName\":\"iPhone 12\",\"locationFound\":\"北京市朝阳区\",\"params\":{},\"status\":1,\"updatedAt\":\"2024-11-08 19:40:19\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 17:34:35', 48),
(127, '物品管理', 2, 'com.zzx.items.controller.ItemsController.edit()', 'PUT', 1, 'ybcAdmin', NULL, '/items/items', '171.106.119.236', 'XX XX', '{\"category\":\"证件\",\"createdAt\":\"2024-11-08 19:40:19\",\"dateFound\":\"2023-10-05\",\"description\":\"身份证正面有照片，背面有编号。\",\"id\":2,\"image\":\"/profile/upload/2024/11/10/ava_20241110173441A002.jpg\",\"itemName\":\"身份证\",\"locationFound\":\"上海市浦东新区\",\"params\":{},\"status\":0,\"updatedAt\":\"2024-11-08 19:40:19\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 17:34:42', 19),
(128, '物品管理', 2, 'com.zzx.items.controller.ItemsController.edit()', 'PUT', 1, 'ybcAdmin', NULL, '/items/items', '171.106.119.236', 'XX XX', '{\"category\":\"钱包\",\"createdAt\":\"2024-11-08 19:40:19\",\"dateFound\":\"2023-10-10\",\"description\":\"黑色皮质钱包，内有现金和银行卡。\",\"id\":3,\"image\":\"/profile/upload/2024/11/10/ava_20241110173705A003.jpg\",\"itemName\":\"钱包\",\"locationFound\":\"广州市天河区\",\"params\":{},\"status\":2,\"updatedAt\":\"2024-11-08 19:40:19\",\"userId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-10 17:37:18', 22),
(129, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"items/items/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"物品管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"物品管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"items\",\"perms\":\"items:items:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-11 14:15:13', 229),
(130, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"categories/categories/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"物品种类\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"categories\",\"perms\":\"categories:categories:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-11 14:15:28', 262),
(131, '菜单管理', 3, 'com.zzx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-11 14:15:53', 318),
(132, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"locations/locations/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"领取地点\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"领取地点\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"locations\",\"perms\":\"locations:locations:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-11 14:16:11', 251),
(133, '菜单管理', 2, 'com.zzx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"comment/comments/index\",\"createTime\":\"2024-11-08 18:14:15\",\"icon\":\"用户评论\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"用户评论\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"comments\",\"perms\":\"comment:comments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-11 14:16:18', 250);

-- --------------------------------------------------------

--
-- 表的结构 `sys_post`
--

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

--
-- 转存表中的数据 `sys_post`
--

INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, 'ceo', '董事长', 1, '0', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(2, 'se', '项目经理', 2, '0', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(3, 'hr', '人力资源', 3, '0', 'admin', '2024-11-08 18:13:49', '', NULL, ''),
(4, 'user', '普通员工', 4, '0', 'admin', '2024-11-08 18:13:49', '', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `sys_role`
--

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

--
-- 转存表中的数据 `sys_role`
--

INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-11-08 18:13:49', '', NULL, '超级管理员'),
(2, '普通角色', 'common', 3, '2', 1, 1, '0', '0', 'admin', '2024-11-08 18:13:49', 'admin', '2024-11-08 19:20:41', '普通角色'),
(100, '管理员用户', 'ybcadmin', 2, '1', 1, 1, '0', '0', 'admin', '2024-11-08 19:21:50', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_role_dept`
--

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

--
-- 转存表中的数据 `sys_role_dept`
--

INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES
(2, 100),
(2, 101),
(2, 105);

-- --------------------------------------------------------

--
-- 表的结构 `sys_role_menu`
--

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

--
-- 转存表中的数据 `sys_role_menu`
--

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
(2, 2000),
(2, 2001),
(2, 2002),
(2, 2006),
(2, 2007),
(2, 2008),
(2, 2012),
(2, 2013),
(2, 2018),
(2, 2019),
(100, 1),
(100, 2),
(100, 100),
(100, 101),
(100, 103),
(100, 107),
(100, 108),
(100, 109),
(100, 500),
(100, 501),
(100, 1000),
(100, 1001),
(100, 1002),
(100, 1003),
(100, 1004),
(100, 1005),
(100, 1006),
(100, 1007),
(100, 1008),
(100, 1009),
(100, 1010),
(100, 1011),
(100, 1016),
(100, 1017),
(100, 1018),
(100, 1019),
(100, 1035),
(100, 1036),
(100, 1037),
(100, 1038),
(100, 1039),
(100, 1040),
(100, 1041),
(100, 1042),
(100, 1043),
(100, 1044),
(100, 1045),
(100, 1046),
(100, 1047),
(100, 1048),
(100, 2000),
(100, 2001),
(100, 2002),
(100, 2003),
(100, 2004),
(100, 2005),
(100, 2006),
(100, 2007),
(100, 2008),
(100, 2009),
(100, 2010),
(100, 2011),
(100, 2012),
(100, 2013),
(100, 2014),
(100, 2015),
(100, 2016),
(100, 2017),
(100, 2018),
(100, 2019),
(100, 2020),
(100, 2021),
(100, 2022),
(100, 2023);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user`
--

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

--
-- 转存表中的数据 `sys_user`
--

INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', 'https://springboot-tlias123.oss-cn-beijing.aliyuncs.com/profile.jpg', '$2a$10$asfSbffN4o1YWHWkQCgcrenACwgT1qO3K9q1JhaufHM6vp7jwS/5e', '0', '0', '127.0.0.1', '2024-11-11 14:37:40', 'admin', '2024-11-08 18:13:49', '', '2024-11-11 14:37:40', '管理员'),
(2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', 'https://springboot-tlias123.oss-cn-beijing.aliyuncs.com/00150720-d798-4fc2-ad23-7b9075844715.png', '$2a$10$asfSbffN4o1YWHWkQCgcrenACwgT1qO3K9q1JhaufHM6vp7jwS/5e', '0', '0', '127.0.0.1', '2024-11-08 18:13:49', 'admin', '2024-11-08 18:13:49', '', NULL, '测试员'),
(100, NULL, 'ybcUser', '达芬奇', '00', '', '', '0', '', '$2a$10$asfSbffN4o1YWHWkQCgcrenACwgT1qO3K9q1JhaufHM6vp7jwS/5e', '0', '0', '127.0.0.1', '2024-11-11 14:40:41', 'admin', '2024-11-08 19:22:57', '', '2024-11-11 14:40:41', NULL),
(101, NULL, 'ybcAdmin', '爱情买卖', '00', '', '', '0', '', '$2a$10$asfSbffN4o1YWHWkQCgcrenACwgT1qO3K9q1JhaufHM6vp7jwS/5e', '0', '0', '127.0.0.1', '2024-11-11 14:41:12', 'admin', '2024-11-08 19:23:45', '', '2024-11-11 14:41:12', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_post`
--

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

--
-- 转存表中的数据 `sys_user_post`
--

INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_role`
--

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

--
-- 转存表中的数据 `sys_user_role`
--

INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(100, 2),
(101, 100);

-- --------------------------------------------------------

--
-- 表的结构 `tb_categories`
--

CREATE TABLE `tb_categories` (
  `id` int(11) NOT NULL COMMENT '类别ID，自动增长',
  `category_name` varchar(255) NOT NULL COMMENT '类别名称，唯一'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `tb_categories`
--

INSERT INTO `tb_categories` (`id`, `category_name`) VALUES
(5, '书籍'),
(1, '电子产品'),
(4, '衣物'),
(2, '证件'),
(3, '钱包');

-- --------------------------------------------------------

--
-- 表的结构 `tb_comments`
--

CREATE TABLE `tb_comments` (
  `id` int(11) NOT NULL COMMENT '评论ID，自动增长',
  `content` text COMMENT '评论内容',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `user_id` int(11) DEFAULT NULL COMMENT '外键关联用户表'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `tb_comments`
--

INSERT INTO `tb_comments` (`id`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '这是一个测试评论。', '2024-11-08 11:39:47', '2024-11-08 11:39:47', 1),
(2, '感谢发布这个信息！', '2024-11-08 11:39:47', '2024-11-08 11:39:47', 2),
(3, '我找到了我的钱包！谢谢！', '2024-11-08 11:39:47', '2024-11-08 11:39:47', 2);

-- --------------------------------------------------------

--
-- 表的结构 `tb_items`
--

CREATE TABLE `tb_items` (
  `id` int(11) NOT NULL COMMENT '物品ID，自动增长',
  `item_name` varchar(255) NOT NULL COMMENT '物品名称',
  `category` varchar(255) NOT NULL COMMENT '物品种类',
  `description` text COMMENT '物品描述',
  `location_found` varchar(255) DEFAULT NULL COMMENT '发现物品的地点',
  `date_found` date DEFAULT NULL COMMENT '发现物品的日期',
  `status` int(11) DEFAULT '0' COMMENT '物品状态：0丢失、1发现、2已被认领',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `user_id` int(11) DEFAULT NULL COMMENT '外键关联用户表',
  `image` varchar(255) DEFAULT NULL COMMENT '物品图片路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `tb_items`
--

INSERT INTO `tb_items` (`id`, `item_name`, `category`, `description`, `location_found`, `date_found`, `status`, `created_at`, `updated_at`, `user_id`, `image`) VALUES
(1, 'iPhone 12', '电子产品', '黑色，屏幕有轻微划痕。', '北京市朝阳区', '2023-10-01', 1, '2024-11-08 11:40:19', '2024-11-08 11:40:19', 1, '/profile/upload/2024/11/10/ava_20241110173431A001.jpg'),
(2, '身份证', '证件', '身份证正面有照片，背面有编号。', '上海市浦东新区', '2023-10-05', 0, '2024-11-08 11:40:19', '2024-11-08 11:40:19', 2, '/profile/upload/2024/11/10/ava_20241110173441A002.jpg'),
(3, '钱包', '钱包', '黑色皮质钱包，内有现金和银行卡。', '广州市天河区', '2023-10-10', 2, '2024-11-08 11:40:19', '2024-11-08 11:40:19', 3, '/profile/upload/2024/11/10/ava_20241110173705A003.jpg'),
(4, '羽绒服', '衣物', '蓝色羽绒服，有品牌标志。', '深圳市南山区', '2023-10-15', 0, '2024-11-08 11:40:19', '2024-11-08 11:40:19', 4, 'images/coat.jpg'),
(5, '编程书', '书籍', '《Python编程入门》，封面有磨损。', '成都市武侯区', '2023-10-20', 1, '2024-11-08 11:40:19', '2024-11-08 11:40:19', 5, 'images/python_book.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tb_locations`
--

CREATE TABLE `tb_locations` (
  `id` int(11) NOT NULL COMMENT '地点ID，自动增长',
  `name` varchar(255) NOT NULL COMMENT '地点名称',
  `address` text COMMENT '详细地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `tb_locations`
--

INSERT INTO `tb_locations` (`id`, `name`, `address`) VALUES
(1, '北京市朝阳区', '北京市朝阳区建国门外大街1号'),
(2, '上海市浦东新区', '上海市浦东新区陆家嘴环路1000号'),
(3, '广州市天河区', '广州市天河区天河路123号'),
(4, '深圳市南山区', '深圳市南山区科技园路1号'),
(5, '成都市武侯区', '成都市武侯区武侯祠大街231号');

--
-- 转储表的索引
--

--
-- 表的索引 `gen_table`
--
ALTER TABLE `gen_table`
  ADD PRIMARY KEY (`table_id`);

--
-- 表的索引 `gen_table_column`
--
ALTER TABLE `gen_table_column`
  ADD PRIMARY KEY (`column_id`);

--
-- 表的索引 `QRTZ_BLOB_TRIGGERS`
--
ALTER TABLE `QRTZ_BLOB_TRIGGERS`
  ADD PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`);

--
-- 表的索引 `QRTZ_CALENDARS`
--
ALTER TABLE `QRTZ_CALENDARS`
  ADD PRIMARY KEY (`sched_name`,`calendar_name`);

--
-- 表的索引 `QRTZ_CRON_TRIGGERS`
--
ALTER TABLE `QRTZ_CRON_TRIGGERS`
  ADD PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`);

--
-- 表的索引 `QRTZ_FIRED_TRIGGERS`
--
ALTER TABLE `QRTZ_FIRED_TRIGGERS`
  ADD PRIMARY KEY (`sched_name`,`entry_id`);

--
-- 表的索引 `QRTZ_JOB_DETAILS`
--
ALTER TABLE `QRTZ_JOB_DETAILS`
  ADD PRIMARY KEY (`sched_name`,`job_name`,`job_group`);

--
-- 表的索引 `QRTZ_LOCKS`
--
ALTER TABLE `QRTZ_LOCKS`
  ADD PRIMARY KEY (`sched_name`,`lock_name`);

--
-- 表的索引 `QRTZ_PAUSED_TRIGGER_GRPS`
--
ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS`
  ADD PRIMARY KEY (`sched_name`,`trigger_group`);

--
-- 表的索引 `QRTZ_SCHEDULER_STATE`
--
ALTER TABLE `QRTZ_SCHEDULER_STATE`
  ADD PRIMARY KEY (`sched_name`,`instance_name`);

--
-- 表的索引 `QRTZ_SIMPLE_TRIGGERS`
--
ALTER TABLE `QRTZ_SIMPLE_TRIGGERS`
  ADD PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`);

--
-- 表的索引 `QRTZ_SIMPROP_TRIGGERS`
--
ALTER TABLE `QRTZ_SIMPROP_TRIGGERS`
  ADD PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`);

--
-- 表的索引 `QRTZ_TRIGGERS`
--
ALTER TABLE `QRTZ_TRIGGERS`
  ADD PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  ADD KEY `sched_name` (`sched_name`,`job_name`,`job_group`);

--
-- 表的索引 `sys_config`
--
ALTER TABLE `sys_config`
  ADD PRIMARY KEY (`config_id`);

--
-- 表的索引 `sys_dept`
--
ALTER TABLE `sys_dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- 表的索引 `sys_dict_data`
--
ALTER TABLE `sys_dict_data`
  ADD PRIMARY KEY (`dict_code`);

--
-- 表的索引 `sys_dict_type`
--
ALTER TABLE `sys_dict_type`
  ADD PRIMARY KEY (`dict_id`),
  ADD UNIQUE KEY `dict_type` (`dict_type`);

--
-- 表的索引 `sys_job`
--
ALTER TABLE `sys_job`
  ADD PRIMARY KEY (`job_id`,`job_name`,`job_group`);

--
-- 表的索引 `sys_job_log`
--
ALTER TABLE `sys_job_log`
  ADD PRIMARY KEY (`job_log_id`);

--
-- 表的索引 `sys_logininfor`
--
ALTER TABLE `sys_logininfor`
  ADD PRIMARY KEY (`info_id`),
  ADD KEY `idx_sys_logininfor_s` (`status`),
  ADD KEY `idx_sys_logininfor_lt` (`login_time`);

--
-- 表的索引 `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- 表的索引 `sys_notice`
--
ALTER TABLE `sys_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- 表的索引 `sys_oper_log`
--
ALTER TABLE `sys_oper_log`
  ADD PRIMARY KEY (`oper_id`),
  ADD KEY `idx_sys_oper_log_bt` (`business_type`),
  ADD KEY `idx_sys_oper_log_s` (`status`),
  ADD KEY `idx_sys_oper_log_ot` (`oper_time`);

--
-- 表的索引 `sys_post`
--
ALTER TABLE `sys_post`
  ADD PRIMARY KEY (`post_id`);

--
-- 表的索引 `sys_role`
--
ALTER TABLE `sys_role`
  ADD PRIMARY KEY (`role_id`);

--
-- 表的索引 `sys_role_dept`
--
ALTER TABLE `sys_role_dept`
  ADD PRIMARY KEY (`role_id`,`dept_id`);

--
-- 表的索引 `sys_role_menu`
--
ALTER TABLE `sys_role_menu`
  ADD PRIMARY KEY (`role_id`,`menu_id`);

--
-- 表的索引 `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`user_id`);

--
-- 表的索引 `sys_user_post`
--
ALTER TABLE `sys_user_post`
  ADD PRIMARY KEY (`user_id`,`post_id`);

--
-- 表的索引 `sys_user_role`
--
ALTER TABLE `sys_user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- 表的索引 `tb_categories`
--
ALTER TABLE `tb_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- 表的索引 `tb_comments`
--
ALTER TABLE `tb_comments`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tb_items`
--
ALTER TABLE `tb_items`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tb_locations`
--
ALTER TABLE `tb_locations`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `gen_table`
--
ALTER TABLE `gen_table`
  MODIFY `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号';

--
-- 使用表AUTO_INCREMENT `gen_table_column`
--
ALTER TABLE `gen_table_column`
  MODIFY `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号';

--
-- 使用表AUTO_INCREMENT `sys_config`
--
ALTER TABLE `sys_config`
  MODIFY `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键', AUTO_INCREMENT=100;

--
-- 使用表AUTO_INCREMENT `sys_dept`
--
ALTER TABLE `sys_dept`
  MODIFY `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id', AUTO_INCREMENT=200;

--
-- 使用表AUTO_INCREMENT `sys_dict_data`
--
ALTER TABLE `sys_dict_data`
  MODIFY `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码', AUTO_INCREMENT=100;

--
-- 使用表AUTO_INCREMENT `sys_dict_type`
--
ALTER TABLE `sys_dict_type`
  MODIFY `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键', AUTO_INCREMENT=100;

--
-- 使用表AUTO_INCREMENT `sys_job`
--
ALTER TABLE `sys_job`
  MODIFY `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID', AUTO_INCREMENT=100;

--
-- 使用表AUTO_INCREMENT `sys_job_log`
--
ALTER TABLE `sys_job_log`
  MODIFY `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID';

--
-- 使用表AUTO_INCREMENT `sys_logininfor`
--
ALTER TABLE `sys_logininfor`
  MODIFY `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID', AUTO_INCREMENT=176;

--
-- 使用表AUTO_INCREMENT `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID', AUTO_INCREMENT=2024;

--
-- 使用表AUTO_INCREMENT `sys_notice`
--
ALTER TABLE `sys_notice`
  MODIFY `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID', AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `sys_oper_log`
--
ALTER TABLE `sys_oper_log`
  MODIFY `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键', AUTO_INCREMENT=134;

--
-- 使用表AUTO_INCREMENT `sys_post`
--
ALTER TABLE `sys_post`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `sys_role`
--
ALTER TABLE `sys_role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID', AUTO_INCREMENT=101;

--
-- 使用表AUTO_INCREMENT `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID', AUTO_INCREMENT=102;

--
-- 使用表AUTO_INCREMENT `tb_categories`
--
ALTER TABLE `tb_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别ID，自动增长', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `tb_comments`
--
ALTER TABLE `tb_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID，自动增长', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `tb_items`
--
ALTER TABLE `tb_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物品ID，自动增长', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `tb_locations`
--
ALTER TABLE `tb_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地点ID，自动增长', AUTO_INCREMENT=6;

--
-- 限制导出的表
--

--
-- 限制表 `QRTZ_BLOB_TRIGGERS`
--
ALTER TABLE `QRTZ_BLOB_TRIGGERS`
  ADD CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `QRTZ_CRON_TRIGGERS`
--
ALTER TABLE `QRTZ_CRON_TRIGGERS`
  ADD CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `QRTZ_SIMPLE_TRIGGERS`
--
ALTER TABLE `QRTZ_SIMPLE_TRIGGERS`
  ADD CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `QRTZ_SIMPROP_TRIGGERS`
--
ALTER TABLE `QRTZ_SIMPROP_TRIGGERS`
  ADD CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `QRTZ_TRIGGERS`
--
ALTER TABLE `QRTZ_TRIGGERS`
  ADD CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`,`job_name`,`job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
