/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : heaatweb

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-07-13 10:58:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_building
-- ----------------------------
DROP TABLE IF EXISTS `t_building`;
CREATE TABLE `t_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `community_id` int(11) NOT NULL COMMENT '小区编号',
  `name` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '楼栋名称',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '楼栋编号',
  `person` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  `remark` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `community_name` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '小区名称',
  `unique_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '楼栋唯一标识',
  `pre_flow` float(10,4) DEFAULT NULL,
  `pre_heat` float(10,4) DEFAULT NULL,
  `area` float(10,4) DEFAULT NULL,
  `coordinates` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_uniquecode` (`unique_code`) USING BTREE,
  KEY `FK_Reference_3` (`community_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`community_id`) REFERENCES `t_community` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1819 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='楼栋表';

-- ----------------------------
-- Table structure for t_collect_error
-- ----------------------------
DROP TABLE IF EXISTS `t_collect_error`;
CREATE TABLE `t_collect_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `device_type` int(11) DEFAULT NULL COMMENT '设备类型(1:总表 2:户表 3:楼层接收器 4:温度感应器 5:数据采集器)',
  `device_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '设备编号',
  `occur_time` bigint(20) DEFAULT NULL COMMENT '发生时间',
  `recover_time` bigint(20) DEFAULT NULL COMMENT '结束时间',
  `error_type` int(11) DEFAULT NULL COMMENT '事件类型',
  `error_code` int(11) DEFAULT NULL COMMENT '事件编号',
  `status` int(2) DEFAULT NULL COMMENT '事件状态(0:发生 1:恢复)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7898746 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_community
-- ----------------------------
DROP TABLE IF EXISTS `t_community`;
CREATE TABLE `t_community` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `hotstation_id` int(11) NOT NULL COMMENT '热站id',
  `name` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '小区名称',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '小区编码',
  `person` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  `address` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址',
  `area` float DEFAULT NULL COMMENT '面积',
  `user` int(11) DEFAULT NULL COMMENT '用户',
  `population` int(11) DEFAULT NULL COMMENT '人口',
  `build_num` int(11) DEFAULT NULL COMMENT '栋数',
  `hotstation_num` int(11) DEFAULT NULL COMMENT '热站数',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `FK_Reference_2` (`hotstation_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`hotstation_id`) REFERENCES `t_hotstation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='小区表';

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '分公司名称',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '分公司编码',
  `person` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  `remark` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='分公司表';

-- ----------------------------
-- Table structure for t_concentrator
-- ----------------------------
DROP TABLE IF EXISTS `t_concentrator`;
CREATE TABLE `t_concentrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '数据采集器编码',
  `address` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '数据采集器位置',
  `gprsid` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `dtunum` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'IP地址',
  `login_time` bigint(20) DEFAULT '0' COMMENT '登陆时间',
  `refresh_time` bigint(20) DEFAULT '0' COMMENT '刷新时间',
  `building_id` int(11) DEFAULT NULL COMMENT '楼栋id',
  `factory_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '厂商编号',
  `disused` int(11) NOT NULL DEFAULT '0' COMMENT '是否可用(0可用,1不可用)',
  `session_id` int(11) DEFAULT NULL,
  `unresolved` int(1) NOT NULL DEFAULT '0' COMMENT '是否定义(0已定义,1未定义)',
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据采集器名称',
  `server_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO SERVER',
  `product_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生产编号',
  `sim_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sim卡号码',
  `floor_col_num` int(11) DEFAULT NULL COMMENT '楼层控制器数量',
  `protocol_type` int(11) DEFAULT NULL COMMENT '协议类型',
  `remark` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debug_status` int(4) NOT NULL DEFAULT '0' COMMENT '调试状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `index_cbuildingid` (`building_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1912 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='集中器表';

-- ----------------------------
-- Table structure for t_error_for_view
-- ----------------------------
DROP TABLE IF EXISTS `t_error_for_view`;
CREATE TABLE `t_error_for_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `device_type` int(11) DEFAULT NULL COMMENT '设备类型',
  `device_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '设备编号',
  `occur_time` bigint(20) DEFAULT NULL COMMENT '故障发生时间',
  `recover_time` bigint(20) DEFAULT NULL COMMENT '故障恢复时间',
  `error_type` int(11) DEFAULT NULL COMMENT '事件类型',
  PRIMARY KEY (`id`),
  KEY `index_dc` (`device_code`) USING BTREE,
  KEY `index_ot` (`occur_time`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3342881 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_floor_collector
-- ----------------------------
DROP TABLE IF EXISTS `t_floor_collector`;
CREATE TABLE `t_floor_collector` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '楼层采集器名称',
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '楼层采集器编号',
  `mbus` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mbus地址',
  `floor` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '楼层',
  `uint` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '单元',
  `building_id` int(11) NOT NULL COMMENT '所属楼栋',
  `concentrator_id` int(11) NOT NULL COMMENT 'DTU',
  `disused` int(11) NOT NULL DEFAULT '0' COMMENT '是否弃用',
  `house_num` int(11) DEFAULT NULL COMMENT '户表数量',
  `controller_type` int(11) DEFAULT '1' COMMENT '接收器类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `index_fcbid` (`building_id`) USING BTREE,
  KEY `index_fccid` (`concentrator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_fparameter
-- ----------------------------
DROP TABLE IF EXISTS `t_fparameter`;
CREATE TABLE `t_fparameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valvecontroller_id` int(11) DEFAULT NULL,
  `time0` float(10,2) DEFAULT NULL,
  `time1` float(10,2) DEFAULT NULL,
  `time2` float(10,2) DEFAULT NULL,
  `time3` float(10,2) DEFAULT NULL,
  `time4` float(10,2) DEFAULT NULL,
  `time5` float(10,2) DEFAULT NULL,
  `time6` float(10,2) DEFAULT NULL,
  `time7` float(10,2) DEFAULT NULL,
  `time8` float(10,2) DEFAULT NULL,
  `time9` float(10,2) DEFAULT NULL,
  `time10` float(10,2) DEFAULT NULL,
  `time11` float(10,2) DEFAULT NULL,
  `time12` float(10,2) DEFAULT NULL,
  `time13` float(10,2) DEFAULT NULL,
  `time14` float(10,2) DEFAULT NULL,
  `time15` float(10,2) DEFAULT NULL,
  `time16` float(10,2) DEFAULT NULL,
  `time17` float(10,2) DEFAULT NULL,
  `time18` float(10,2) DEFAULT NULL,
  `time19` float(10,2) DEFAULT NULL,
  `time20` float(10,2) DEFAULT NULL,
  `time21` float(10,2) DEFAULT NULL,
  `time22` float(10,2) DEFAULT NULL,
  `time23` float(10,2) DEFAULT NULL,
  `Mbus` varchar(32) DEFAULT NULL,
  `gendar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_hotstation
-- ----------------------------
DROP TABLE IF EXISTS `t_hotstation`;
CREATE TABLE `t_hotstation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `company_id` int(11) DEFAULT NULL COMMENT '分公司id',
  `name` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '热站名称',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '热站编号',
  `person` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  `remark` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `FK_Reference_1` (`company_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`company_id`) REFERENCES `t_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='热站表';

-- ----------------------------
-- Table structure for t_householder
-- ----------------------------
DROP TABLE IF EXISTS `t_householder`;
CREATE TABLE `t_householder` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `building_id` int(11) NOT NULL DEFAULT '0' COMMENT '楼栋id',
  `house_code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '住户表编号',
  `uint_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '单元编号',
  `code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '房间编号',
  `room_num` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '房间简码',
  `phone` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  `name` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `area` float DEFAULT NULL COMMENT '采暖面积',
  `open` int(11) DEFAULT '0' COMMENT '是否打开',
  `ic_card` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'IC卡号',
  `building_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '楼栋编码',
  `building_name` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '楼栋名称',
  `community_name` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '小区名称',
  `unique_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '标识住户编号',
  `total_id` int(32) DEFAULT NULL COMMENT '总表id',
  `concentrator_id` int(32) DEFAULT NULL COMMENT '集中器id(冗余)',
  `disused` int(11) NOT NULL DEFAULT '0' COMMENT '是否可用(0可用,1不可用)',
  `unresolved` int(1) NOT NULL DEFAULT '0' COMMENT '是否定义(0已定义,1未定义)',
  `mes_status` int(1) NOT NULL DEFAULT '0' COMMENT '欠费状态(0:未欠费 1:欠费)',
  `floorCollector_id` int(11) DEFAULT NULL COMMENT '楼层采集器id',
  `temp_sense_num` int(11) DEFAULT NULL COMMENT '温控器数量',
  `is_temper_point` int(11) DEFAULT '1' COMMENT '是否测温点',
  `controller_type` int(11) DEFAULT '1' COMMENT '控制器类型',
  `mbus` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'mbus地址',
  `open_now` int(2) DEFAULT NULL COMMENT '是否打开(阀门当前状态)',
  `valve_time` bigint(20) DEFAULT NULL COMMENT '阀门查询时间',
  `remark` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `contract_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heat_status` int(2) NOT NULL DEFAULT '0',
  `is_pre` int(2) NOT NULL DEFAULT '0',
  `wxcode` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `houseCode` (`house_code`),
  UNIQUE KEY `index_wxcode` (`wxcode`),
  KEY `index_totalid` (`total_id`) USING BTREE,
  KEY `index_bid` (`building_id`) USING BTREE,
  KEY `index_bbcode` (`building_code`) USING BTREE,
  KEY `index_ucode` (`uint_code`) USING BTREE,
  KEY `index_hcid` (`concentrator_id`) USING BTREE,
  KEY `index_hfcid` (`floorCollector_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61534 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='住户表';

-- ----------------------------
-- Table structure for t_house_data
-- ----------------------------
DROP TABLE IF EXISTS `t_house_data`;
CREATE TABLE `t_house_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `house_id` int(11) NOT NULL COMMENT '住户',
  `collect_time` bigint(20) DEFAULT NULL COMMENT '采集时间',
  `use_heat` double DEFAULT NULL COMMENT '使用热量',
  `collect_heat` double DEFAULT NULL COMMENT '总消耗热量',
  `avg_temper` double DEFAULT NULL COMMENT '平均温度',
  `ratio` double DEFAULT NULL COMMENT '比值',
  `supply_temper` double DEFAULT NULL COMMENT '进水温度',
  `return_temper` double DEFAULT NULL COMMENT '回水温度',
  `open_rate` double DEFAULT NULL COMMENT '开启率',
  `set_temper` double DEFAULT NULL COMMENT '设定温度',
  `total_valve_time` double DEFAULT NULL COMMENT '总开阀时间',
  `valve_time` double DEFAULT NULL,
  `open` int(2) DEFAULT NULL,
  `open_now` int(2) DEFAULT NULL,
  `statc` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_hi` (`house_id`) USING BTREE,
  KEY `index_ct` (`collect_time`) USING BTREE,
  KEY `index_uh` (`use_heat`) USING BTREE,
  KEY `index_ch` (`collect_heat`) USING BTREE,
  KEY `index_at` (`avg_temper`) USING BTREE,
  KEY `index_r` (`ratio`) USING BTREE,
  KEY `index_st` (`set_temper`) USING BTREE,
  KEY `index_tvt` (`total_valve_time`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=82519 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='住户表数据表';

-- ----------------------------
-- Table structure for t_house_hour_data
-- ----------------------------
DROP TABLE IF EXISTS `t_house_hour_data`;
CREATE TABLE `t_house_hour_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `house_id` int(11) NOT NULL COMMENT '住户',
  `collect_time` bigint(20) DEFAULT NULL COMMENT '采集时间',
  `use_heat` double DEFAULT NULL COMMENT '使用热量',
  `collect_heat` double DEFAULT NULL COMMENT '总消耗热量',
  `avg_temper` float DEFAULT NULL COMMENT '平均温度',
  `temp_contro_num` int(11) DEFAULT NULL COMMENT '温控器数量',
  `data_type` int(2) DEFAULT NULL COMMENT '数据类型(1:小时 2当前)',
  `set_temper` double DEFAULT NULL COMMENT '设定温度',
  `supply_temper` double DEFAULT NULL COMMENT '供水温度',
  `return_temper` double DEFAULT NULL COMMENT '回水温度',
  `room_temper` double DEFAULT NULL COMMENT '室温',
  `ratio` double DEFAULT NULL COMMENT '比值',
  `total_valve_time` double DEFAULT NULL,
  `valve_time` double DEFAULT NULL,
  `open` int(2) DEFAULT NULL,
  `open_now` int(2) DEFAULT NULL,
  `statc` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='住户整点数据表';

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` decimal(6,0) NOT NULL COMMENT 'id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `name` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '菜单名称',
  `url` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '#' COMMENT 'URL',
  `CAPTION` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='菜单表';

-- ----------------------------
-- Table structure for t_open_log
-- ----------------------------
DROP TABLE IF EXISTS `t_open_log`;
CREATE TABLE `t_open_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `house_id` int(11) DEFAULT NULL COMMENT '住户',
  `operate_time` bigint(11) DEFAULT NULL COMMENT '操作时间',
  `user_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发送者',
  `record` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作记录',
  `logstatus` int(2) DEFAULT '0' COMMENT '记录类型(0:阀门记录 1:调用数据记录)',
  `total_id` int(11) DEFAULT NULL COMMENT '总表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='开关记录表';

-- ----------------------------
-- Table structure for t_pagerinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_pagerinfo`;
CREATE TABLE `t_pagerinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '公司名称',
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '联系电话',
  `copyright` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'copyright部分',
  `email` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '联系email',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='页面信息表';

-- ----------------------------
-- Table structure for t_parameter
-- ----------------------------
DROP TABLE IF EXISTS `t_parameter`;
CREATE TABLE `t_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `res_ip_address` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备用主站地址',
  `res_port` int(11) DEFAULT NULL COMMENT '备用主站端口',
  `apn_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'APN名称',
  `gprs_username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'GPRS用户名',
  `gprs_password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'GPRS密码',
  `gprs_heart_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'GPRS心跳时间',
  `gprs_reset_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'GPRS断线重连间隔',
  `share_circle` int(11) DEFAULT NULL COMMENT '分摊周期',
  `start_time` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供热季开始时间',
  `end_time` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供热季结束时间',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '软件版本',
  `set_temp_up` float DEFAULT NULL COMMENT '设定温度上限',
  `set_temp_down` float DEFAULT NULL COMMENT '设定温度下限',
  `freezing_temp` float DEFAULT NULL COMMENT '防冻温度',
  `master_ip` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主站IP',
  `master_port` int(11) DEFAULT NULL COMMENT '主站端口',
  `concentrator_id` int(11) DEFAULT NULL COMMENT '数据采集器ID',
  `concentrator_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据采集器编号',
  `valve_time` bigint(20) DEFAULT NULL,
  `set_display` int(2) DEFAULT NULL,
  `total_disk_space` double DEFAULT NULL,
  `user_disk_space` double DEFAULT NULL,
  `heat_unit` int(2) DEFAULT NULL,
  `heat_show` int(2) DEFAULT NULL,
  `set_down_temper` double DEFAULT NULL,
  `debug_mode` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cid` (`concentrator_id`) USING BTREE,
  KEY `index_ccode` (`concentrator_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_preconfig
-- ----------------------------
DROP TABLE IF EXISTS `t_preconfig`;
CREATE TABLE `t_preconfig` (
  `pkey` varchar(20) NOT NULL,
  `pvalue` varchar(50) NOT NULL DEFAULT '',
  `premark` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`pkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_recharge
-- ----------------------------
DROP TABLE IF EXISTS `t_recharge`;
CREATE TABLE `t_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` int(11) NOT NULL,
  `value` int(10) NOT NULL,
  `date` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_systemparameter
-- ----------------------------
DROP TABLE IF EXISTS `t_systemparameter`;
CREATE TABLE `t_systemparameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `value` varchar(128) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='参数表';

-- ----------------------------
-- Table structure for t_system_log
-- ----------------------------
DROP TABLE IF EXISTS `t_system_log`;
CREATE TABLE `t_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employ_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `employ_id` int(11) DEFAULT NULL COMMENT '用户id',
  `create_date` bigint(20) DEFAULT NULL COMMENT '记录日期',
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  `operation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,任务id',
  `id_seq` int(11) NOT NULL DEFAULT '1' COMMENT '序列',
  `device_type` int(1) NOT NULL COMMENT '设备类型',
  `operation_type` int(1) NOT NULL COMMENT '操作类型',
  `contrl_type` int(1) NOT NULL COMMENT '控制类型',
  `device_code` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '设备编号',
  `send_data` blob COMMENT '下发的任务内容',
  `receive_data` blob COMMENT '回复的任务内容',
  `start_timestamp` bigint(20) NOT NULL COMMENT '开始时间戳',
  `last_timestamp` bigint(20) DEFAULT NULL COMMENT '最后修改时间戳',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '任务状态',
  `send_frequency` int(3) NOT NULL DEFAULT '0' COMMENT '发送次数',
  `max_send` int(2) NOT NULL DEFAULT '1' COMMENT '最大可发送次数',
  `session_id` bigint(20) DEFAULT NULL COMMENT '发送时的通道id',
  `receive_data_status` int(2) DEFAULT NULL,
  `concentrator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=387269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='任务表';

-- ----------------------------
-- Table structure for t_temp_sensor
-- ----------------------------
DROP TABLE IF EXISTS `t_temp_sensor`;
CREATE TABLE `t_temp_sensor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '室温感应器名称',
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '通信地址',
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '室温感应器编号',
  `floorCollector_id` int(11) NOT NULL COMMENT '所属楼层控制器',
  `building_id` int(11) NOT NULL COMMENT '所属楼层',
  `householder_id` int(11) NOT NULL COMMENT '房间',
  `uint` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '单元',
  `room_no` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '房号',
  `single_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '序号',
  `person` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人',
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_total
-- ----------------------------
DROP TABLE IF EXISTS `t_total`;
CREATE TABLE `t_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `concentrator_id` int(11) DEFAULT NULL COMMENT '集中器id',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '总表编号',
  `disused` int(11) NOT NULL DEFAULT '0' COMMENT '是否可用(0:可用,1:不可用)',
  `householder_num` int(11) DEFAULT NULL COMMENT '下挂户表数',
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '总表名称',
  `mbus` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `unresolved` int(1) NOT NULL DEFAULT '0' COMMENT '是否定义(0已定义,1未定义)',
  `factory_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '厂家编号',
  `product_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生产编号',
  `building_id` int(11) DEFAULT NULL COMMENT '楼栋ID',
  `protocol_type` int(11) DEFAULT NULL COMMENT '协议类型',
  `remark` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `pipe_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `FK_Reference_6` (`concentrator_id`),
  KEY `index_buildingid` (`building_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3642 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='总表';

-- ----------------------------
-- Table structure for t_total_data
-- ----------------------------
DROP TABLE IF EXISTS `t_total_data`;
CREATE TABLE `t_total_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `total_id` int(11) NOT NULL COMMENT '总表',
  `collect_time` bigint(20) DEFAULT NULL COMMENT '采集时间',
  `total_use_heat` double DEFAULT NULL COMMENT '使用热量',
  `collect_heat` double DEFAULT NULL,
  `supply_temp` double DEFAULT NULL COMMENT '进水温度',
  `return_temp` double DEFAULT NULL COMMENT '回水温度',
  `use_flow` double DEFAULT NULL COMMENT '流量',
  `use_heat` double DEFAULT NULL COMMENT '总消耗热量',
  `total_flow` double DEFAULT NULL,
  `total_read` double DEFAULT NULL,
  `temper_diff` double DEFAULT NULL,
  `statc` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='总表数据表';

-- ----------------------------
-- Table structure for t_total_hour_data
-- ----------------------------
DROP TABLE IF EXISTS `t_total_hour_data`;
CREATE TABLE `t_total_hour_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_id` int(11) DEFAULT NULL COMMENT '总表id',
  `collect_time` bigint(20) DEFAULT NULL COMMENT '采集时间',
  `total_use_heat` double DEFAULT NULL COMMENT '使用热量',
  `supply_temper` double DEFAULT NULL COMMENT '进水温度',
  `return_temper` double DEFAULT NULL COMMENT '回水温度',
  `use_heat` double DEFAULT NULL COMMENT '总消耗热量',
  `use_flow` double DEFAULT NULL COMMENT '使用流量',
  `data_type` int(2) DEFAULT NULL COMMENT '数据类型(1:小时 2当前)',
  `total_flow` double DEFAULT NULL COMMENT '总流量',
  `temper_diff` double DEFAULT NULL,
  `total_read` double DEFAULT NULL,
  `statc` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ti` (`total_id`) USING BTREE,
  KEY `index_ct` (`collect_time`) USING BTREE,
  KEY `index_tuh` (`total_use_heat`) USING BTREE,
  KEY `index_uh` (`use_heat`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=49240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for t_valvecontroller
-- ----------------------------
DROP TABLE IF EXISTS `t_valvecontroller`;
CREATE TABLE `t_valvecontroller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL COMMENT '阀门控制器编号',
  `name` varchar(32) DEFAULT NULL COMMENT '阀门控制器名称',
  `mbus` varchar(32) NOT NULL COMMENT 'Mbus地址',
  `disused` int(2) DEFAULT '0' COMMENT '是否弃用',
  `concentrator_id` int(11) DEFAULT NULL COMMENT 'DTU',
  `open` float(10,2) DEFAULT NULL,
  `search_time` bigint(15) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_webservice
-- ----------------------------
DROP TABLE IF EXISTS `t_webservice`;
CREATE TABLE `t_webservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `system_type` int(11) NOT NULL COMMENT '外部系统类型编码',
  `system_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部系统名称',
  `execute_time` bigint(20) DEFAULT NULL COMMENT '操作时间',
  `execute_type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '调用接口名',
  `result` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '结果反馈',
  `count` int(11) DEFAULT NULL COMMENT '处理数据数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
DROP TRIGGER IF EXISTS `t_afterinsert_on_error`;
DELIMITER ;;
CREATE TRIGGER `t_afterinsert_on_error` AFTER INSERT ON `t_collect_error` FOR EACH ROW BEGIN
	IF new.status = 1 THEN
		/*指定编号的设备故障不存在*/
		IF NOT EXISTS(SELECT * FROM t_error_for_view WHERE t_error_for_view.`device_code`=new.device_code 
				AND t_error_for_view.`device_type`=new.device_type AND t_error_for_view.`error_type`=new.error_type) THEN
			INSERT INTO t_error_for_view(device_type,device_code,occur_time,recover_time,error_type)
						VALUES(new.device_type,new.device_code,new.occur_time,NULL,new.error_type);
		/*指定编号的设备故障存在,未恢复*/				
		ELSEIF EXISTS(SELECT * FROM t_error_for_view WHERE t_error_for_view.`device_code`=new.device_code 
				AND t_error_for_view.`device_type`=new.device_type AND t_error_for_view.`error_type`=new.error_type
				AND t_error_for_view.`occur_time`!=""
				AND t_error_for_view.`recover_time` IS NULL) THEN
			UPDATE t_error_for_view 
			SET occur_time = new.occur_time
			WHERE `device_code`=new.device_code 
				AND `device_type`=new.device_type
				AND error_type = new.error_type
				AND occur_time!=""
				AND recover_time IS NULL;
		
		/*指定编号的设备故障存在,已恢复*/				
		ELSEIF EXISTS(SELECT * FROM t_error_for_view WHERE t_error_for_view.`device_code`=new.device_code 
				AND t_error_for_view.`device_type`=new.device_type AND t_error_for_view.`occur_time`!=""
				AND t_error_for_view.`recover_time` IS NOT NULL AND t_error_for_view.`error_type`=new.error_type) THEN
			INSERT INTO t_error_for_view(device_type,device_code,occur_time,recover_time,error_type)
						VALUES(new.device_type,new.device_code,new.occur_time,NULL,new.error_type);
		END IF;
	ELSEIF new.status = 0 THEN
		UPDATE t_error_for_view 
			SET recover_time = new.occur_time
			WHERE `device_code`=new.device_code 
				AND `device_type`=new.device_type
				#AND error_type = new.error_type
				AND occur_time!=""
				AND recover_time IS NULL;
	END IF;
    END
;;
DELIMITER ;
