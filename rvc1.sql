/*
Navicat MySQL Data Transfer

Source Server         : 118.31.102.18
Source Server Version : 50719
Source Host           : 118.31.102.18:3306
Source Database       : rvc

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-07-20 15:17:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_permission
-- ----------------------------
DROP TABLE IF EXISTS `data_permission`;
CREATE TABLE `data_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '账号ID',
  `company_code` varchar(32) NOT NULL COMMENT '热力公司code',
  `hotstation_code` varchar(32) NOT NULL COMMENT '热站code',
  `community_code` varchar(32) NOT NULL COMMENT '小区code',
  PRIMARY KEY (`id`,`user_id`,`company_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据权限表';

-- ----------------------------
-- Records of data_permission
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '名称',
  `code` varchar(20) NOT NULL COMMENT '编号',
  `url` varchar(45) NOT NULL COMMENT 'url地址',
  `is_menu` tinyint(4) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `include_url` tinyint(4) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `code` varchar(20) NOT NULL COMMENT '角色编号',
  `disuserd` tinyint(4) NOT NULL COMMENT '是否废弃',
  `remark` varchar(45) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reso_id` int(11) NOT NULL COMMENT '菜单ID',
  `disused` int(11) NOT NULL COMMENT '是否废弃',
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_permission_role1_idx` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限分配表';

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_building
-- ----------------------------
DROP TABLE IF EXISTS `t_building`;
CREATE TABLE `t_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL COMMENT '小区id',
  `code` varchar(32) NOT NULL COMMENT '楼栋编号',
  `unique_code` varchar(32) NOT NULL COMMENT '楼栋唯一编号',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `person` varchar(50) NOT NULL COMMENT '联系人',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `pre_flow_float` float(10,2) DEFAULT NULL COMMENT '设计流量',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_building_t_community1_idx` (`community_id`),
  KEY `unique_code` (`unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼栋';

-- ----------------------------
-- Records of t_building
-- ----------------------------

-- ----------------------------
-- Table structure for t_building_calorimeter
-- ----------------------------
DROP TABLE IF EXISTS `t_building_calorimeter`;
CREATE TABLE `t_building_calorimeter` (
  `id` int(11) NOT NULL,
  `building_unique_code` varchar(32) NOT NULL COMMENT '楼栋唯一编号',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '设备类型(0：lora，1：有线)',
  `period` int(11) DEFAULT NULL COMMENT '上报周期',
  `comm_address` varchar(32) NOT NULL COMMENT '通信地址',
  `unresolved` tinyint(4) DEFAULT NULL COMMENT '是否定义',
  `pro_type` varchar(32) NOT NULL COMMENT '类型(厂家品牌)决定通信协议',
  `pipe_size` int(11) DEFAULT NULL COMMENT '管径',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_building_calorimeter_t_building1_idx` (`building_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼栋热表';

-- ----------------------------
-- Records of t_building_calorimeter
-- ----------------------------

-- ----------------------------
-- Table structure for t_building_calorimeter_data
-- ----------------------------
DROP TABLE IF EXISTS `t_building_calorimeter_data`;
CREATE TABLE `t_building_calorimeter_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_unique_code` varchar(32) NOT NULL COMMENT '楼栋唯一编号',
  `collect_time` bigint(20) DEFAULT NULL COMMENT '采集时间',
  `collect_heat` double DEFAULT NULL COMMENT '本供热季使用热量',
  `use_heat` double DEFAULT NULL COMMENT '使用热量',
  `supply_temp` double DEFAULT NULL COMMENT '进水温度',
  `return_temp` double DEFAULT NULL COMMENT '回水温度',
  `temper_diff` double DEFAULT NULL COMMENT '温差',
  `use_flow` double DEFAULT NULL COMMENT '瞬时流量',
  `total_flow` double DEFAULT NULL COMMENT '总流量',
  `static` tinyint(4) DEFAULT NULL COMMENT '通信状态',
  `data_type` tinyint(4) DEFAULT NULL COMMENT '数据类型（1：小时，2：当前）',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_building_calorimeter_data_t_building1_idx` (`building_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼栋热表数据';

-- ----------------------------
-- Records of t_building_calorimeter_data
-- ----------------------------

-- ----------------------------
-- Table structure for t_building_valve
-- ----------------------------
DROP TABLE IF EXISTS `t_building_valve`;
CREATE TABLE `t_building_valve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_unique_code` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '设备类型（1：有线，0：lora）',
  `period` int(11) DEFAULT NULL COMMENT '上报周期',
  `comm_address` varchar(32) NOT NULL COMMENT '通信地址',
  `unresolved` int(11) DEFAULT NULL COMMENT '是否定义',
  `open` float(4,2) DEFAULT NULL COMMENT '阀门开度',
  `search_time` bigint(20) DEFAULT NULL COMMENT '开度查询时间',
  `pipe_size` int(11) DEFAULT NULL COMMENT '管径',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `strategy` int(11) DEFAULT NULL COMMENT '控制策略 pid支持部分',
  `kp` double DEFAULT NULL COMMENT '比例单元',
  `ki` double DEFAULT NULL COMMENT '积分单元',
  `target` float DEFAULT NULL COMMENT '目标值',
  `max_target` float DEFAULT NULL COMMENT '最大目标值',
  `min_target` float DEFAULT NULL COMMENT '最小目标值',
  `createdAt` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_building_valve_t_building1_idx` (`building_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼栋调节阀';

-- ----------------------------
-- Records of t_building_valve
-- ----------------------------

-- ----------------------------
-- Table structure for t_building_valve_data
-- ----------------------------
DROP TABLE IF EXISTS `t_building_valve_data`;
CREATE TABLE `t_building_valve_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_unique_code` varchar(32) NOT NULL,
  `opening` float DEFAULT NULL COMMENT '开度',
  `collect_time` bigint(20) DEFAULT NULL,
  `static` int(11) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_building_valve_data_t_building1_idx` (`building_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼栋调节阀数据';

-- ----------------------------
-- Records of t_building_valve_data
-- ----------------------------

-- ----------------------------
-- Table structure for t_building_valve_log
-- ----------------------------
DROP TABLE IF EXISTS `t_building_valve_log`;
CREATE TABLE `t_building_valve_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_unique_code` varchar(32) NOT NULL COMMENT '楼栋唯一编号',
  `record_time` bigint(20) DEFAULT NULL COMMENT '时间',
  `logstatus` int(11) DEFAULT NULL COMMENT '记录类型',
  `record` varchar(50) NOT NULL COMMENT '操作记录',
  `kp` double DEFAULT NULL COMMENT '比例单元',
  `ki` double DEFAULT NULL COMMENT '积分单元',
  `kd` double DEFAULT NULL COMMENT '微分单元',
  `target` float DEFAULT NULL COMMENT '目标值',
  `max_target` float DEFAULT NULL COMMENT '最大目标',
  `min_target` float DEFAULT NULL COMMENT '最小目标',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_building_valve_log_t_building1_idx` (`building_unique_code`),
  KEY `fk_t_building_valve_log_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼栋调节阀设置日志';

-- ----------------------------
-- Records of t_building_valve_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_collect_error
-- ----------------------------
DROP TABLE IF EXISTS `t_collect_error`;
CREATE TABLE `t_collect_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_type` int(11) DEFAULT NULL COMMENT '设备类型',
  `device_code` varchar(45) DEFAULT NULL COMMENT '设备编号',
  `occur_time` bigint(20) DEFAULT NULL COMMENT '发生时间',
  `recover_time` bigint(20) DEFAULT NULL COMMENT '结束时间',
  `error_type` int(11) DEFAULT NULL COMMENT '事件类型',
  `error_code` int(11) DEFAULT NULL COMMENT '事件编号',
  `status` int(11) DEFAULT NULL COMMENT '事件状态',
  `created_at` bigint(20) DEFAULT NULL,
  `isdel` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='时间收集';

-- ----------------------------
-- Records of t_collect_error
-- ----------------------------

-- ----------------------------
-- Table structure for t_community
-- ----------------------------
DROP TABLE IF EXISTS `t_community`;
CREATE TABLE `t_community` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotstation_id` int(11) NOT NULL COMMENT '热站id',
  `code` varchar(32) NOT NULL COMMENT '小区编号',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `coordinates` varchar(128) NOT NULL COMMENT '坐标(经纬度)',
  `address` varchar(128) NOT NULL COMMENT '地址',
  `person` varchar(50) NOT NULL COMMENT '联系人',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_community_t_hotstation1_idx` (`hotstation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小区';

-- ----------------------------
-- Records of t_community
-- ----------------------------

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(45) DEFAULT NULL,
  `code` varchar(32) NOT NULL COMMENT '编号(三位数字)',
  `name` varchar(128) NOT NULL COMMENT '公司名称',
  `person` varchar(50) NOT NULL COMMENT '联系人',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isdel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除(0: 未删除，1：已删除)',
  `created_at` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='热力公司';

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', null, '001', '热力公司', 'lisi ', '123456789', '', '0', '0');
INSERT INTO `t_company` VALUES ('2', null, '002', '热力公司', 'zhangsan', '123456789', '', '1', '0');
INSERT INTO `t_company` VALUES ('3', null, '003', '热力公司', 'zhangsan', '123456789', '', '1', '0');

-- ----------------------------
-- Table structure for t_concentrator
-- ----------------------------
DROP TABLE IF EXISTS `t_concentrator`;
CREATE TABLE `t_concentrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_unique_code` varchar(32) NOT NULL COMMENT '楼栋唯一编号',
  `code` varchar(32) NOT NULL COMMENT '采集器编号',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `address` varchar(128) NOT NULL COMMENT '位置',
  `gprsid` varchar(32) NOT NULL COMMENT 'GPRS ID\n',
  `ip` varchar(32) NOT NULL COMMENT 'ip地址',
  `login_time` bigint(20) NOT NULL COMMENT '登录时间',
  `refresh_time` bigint(20) NOT NULL COMMENT '刷新时间',
  `unresolved` int(11) DEFAULT NULL COMMENT '是否定义',
  `sim_code` varchar(32) NOT NULL COMMENT 'sim卡号',
  `protocol_type` int(11) DEFAULT NULL COMMENT '协议类型',
  `debug_status` tinyint(4) DEFAULT NULL COMMENT '调试状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_concentrator_t_building1_idx` (`building_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采集器';

-- ----------------------------
-- Records of t_concentrator
-- ----------------------------

-- ----------------------------
-- Table structure for t_gateway
-- ----------------------------
DROP TABLE IF EXISTS `t_gateway`;
CREATE TABLE `t_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL COMMENT '热力公司id',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `mac` varchar(32) NOT NULL COMMENT 'mac地址',
  `sim_code` varchar(32) NOT NULL COMMENT 'sim卡号',
  `gprsid` varchar(32) NOT NULL COMMENT 'sim卡串号',
  `version` varchar(16) NOT NULL COMMENT '网关SDK版本',
  `city` varchar(32) NOT NULL COMMENT '城市',
  `area` varchar(32) NOT NULL COMMENT '网关所在区域',
  `address` varchar(128) NOT NULL COMMENT '网关详细地址',
  `lat` varchar(32) NOT NULL COMMENT '网关所在纬度',
  `lng` varchar(32) NOT NULL COMMENT '网关所在经度',
  `txpower` int(11) DEFAULT NULL COMMENT '网关发射功率',
  `latency` int(11) DEFAULT NULL COMMENT '网关链路时延(ms)',
  `ip` varchar(32) NOT NULL COMMENT '网关ip地址',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '网关连接状态(0：未连接，1：已连接)',
  `lastOn` bigint(20) DEFAULT NULL COMMENT '网关最近连接时间',
  `lastOff` bigint(20) DEFAULT NULL COMMENT '网关最近断开时间',
  `created_at` bigint(20) NOT NULL,
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `isdel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除(0: 未删除，1：已删除)',
  PRIMARY KEY (`id`),
  KEY `fk_t_gateway_t_company_idx` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基站';

-- ----------------------------
-- Records of t_gateway
-- ----------------------------

-- ----------------------------
-- Table structure for t_hotstation
-- ----------------------------
DROP TABLE IF EXISTS `t_hotstation`;
CREATE TABLE `t_hotstation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL COMMENT '热力公司id',
  `code` varchar(32) NOT NULL COMMENT '编号(三位数)',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `person` varchar(50) NOT NULL COMMENT '联系人',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) NOT NULL COMMENT '创建时间',
  `isdel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除(0: 未删除，1：已删除)',
  PRIMARY KEY (`id`),
  KEY `fk_t_hotstation_t_company1_idx` (`company_id`),
  CONSTRAINT `fk_t_hotstation_t_company1` FOREIGN KEY (`company_id`) REFERENCES `t_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热站';

-- ----------------------------
-- Records of t_hotstation
-- ----------------------------

-- ----------------------------
-- Table structure for t_house_calorimeter
-- ----------------------------
DROP TABLE IF EXISTS `t_house_calorimeter`;
CREATE TABLE `t_house_calorimeter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_code` varchar(32) NOT NULL COMMENT '住户编号',
  `type` tinyint(4) DEFAULT NULL COMMENT '设备类型（1：有限，0：lora）',
  `period` int(11) DEFAULT NULL COMMENT '上报周期',
  `comm_address` varchar(32) NOT NULL COMMENT '通信地址',
  `unresolved` int(11) DEFAULT NULL COMMENT '是否定义',
  `pro_type` varchar(32) NOT NULL COMMENT '类型（厂家品牌 决定通信协议）',
  `pipe_size` int(11) DEFAULT NULL COMMENT '管径',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) DEFAULT NULL,
  `isdel` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_house_calorimeter_t_householder1_idx` (`house_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='户用热表';

-- ----------------------------
-- Records of t_house_calorimeter
-- ----------------------------

-- ----------------------------
-- Table structure for t_house_calorimeter_data
-- ----------------------------
DROP TABLE IF EXISTS `t_house_calorimeter_data`;
CREATE TABLE `t_house_calorimeter_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_address` varchar(32) NOT NULL COMMENT '通信地址',
  `house_code` varchar(32) NOT NULL,
  `collect_time_bigint` bigint(20) DEFAULT NULL COMMENT '采集时间',
  `value` double DEFAULT NULL COMMENT '读数',
  `use_flow` double DEFAULT NULL COMMENT '瞬时流量',
  `total_flow` double DEFAULT NULL COMMENT '总流量',
  `supply_temp` double DEFAULT NULL COMMENT '进水温度',
  `return_temp` double DEFAULT NULL COMMENT '回水温度',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`isdel`),
  KEY `fk_t_house_calorimeter_data_t_householder1_idx` (`house_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_calorimeter_data
-- ----------------------------

-- ----------------------------
-- Table structure for t_house_valve
-- ----------------------------
DROP TABLE IF EXISTS `t_house_valve`;
CREATE TABLE `t_house_valve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_code` varchar(32) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT '设备类型（1：有线， 0：lora）',
  `period` int(11) DEFAULT NULL COMMENT '上报周期',
  `comm_address` varchar(32) NOT NULL COMMENT '通信地址',
  `unresolved` int(11) DEFAULT NULL COMMENT '是否定义',
  `open` int(11) DEFAULT NULL COMMENT '设置状态',
  `opening` int(11) DEFAULT NULL COMMENT '阀门状态',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_house_valve_t_householder1_idx` (`house_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_valve
-- ----------------------------
INSERT INTO `t_house_valve` VALUES ('1', '0010010101010101', '1', '10', '1234567890', '1', '1', '0', 'test', '1500529648', '0');

-- ----------------------------
-- Table structure for t_house_valve_data
-- ----------------------------
DROP TABLE IF EXISTS `t_house_valve_data`;
CREATE TABLE `t_house_valve_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_code` varchar(32) NOT NULL COMMENT '住户编号',
  `collect_time` bigint(20) DEFAULT NULL COMMENT '采集时间',
  `supply_temp` double DEFAULT NULL COMMENT '进水温度',
  `return_temp` double DEFAULT NULL COMMENT '回水温度',
  `valve_state` int(11) DEFAULT NULL COMMENT '阀状态',
  `set_temper` double DEFAULT NULL COMMENT '设定室温',
  `room_temper` double DEFAULT NULL COMMENT '当前室温',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_house_valve_data_t_householder1_idx` (`house_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='户通断阀数据';

-- ----------------------------
-- Records of t_house_valve_data
-- ----------------------------

-- ----------------------------
-- Table structure for t_householder
-- ----------------------------
DROP TABLE IF EXISTS `t_householder`;
CREATE TABLE `t_householder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL COMMENT '住户编号',
  `id_card` varchar(32) NOT NULL COMMENT '缴费号',
  `unit_code` varchar(32) NOT NULL COMMENT '单元号',
  `area` float DEFAULT NULL COMMENT '采暖面积',
  `phone` varchar(32) NOT NULL COMMENT '电话',
  `name` varchar(32) DEFAULT NULL COMMENT '户主',
  `mes_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '缴费状态（1：未缴费，0：缴费）',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_householder
-- ----------------------------

-- ----------------------------
-- Table structure for t_open_log
-- ----------------------------
DROP TABLE IF EXISTS `t_open_log`;
CREATE TABLE `t_open_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_code` varchar(32) NOT NULL COMMENT '住户编号',
  `record_time` bigint(20) DEFAULT NULL COMMENT '时间',
  `user_id` int(11) NOT NULL,
  `record` varchar(50) NOT NULL COMMENT '操作记录',
  `logstatus` int(11) DEFAULT NULL COMMENT '记录类型',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_open_log_t_householder1_idx` (`house_code`),
  KEY `fk_t_open_log_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开关阀记录';

-- ----------------------------
-- Records of t_open_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_system_log
-- ----------------------------
DROP TABLE IF EXISTS `t_system_log`;
CREATE TABLE `t_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employ_name` varchar(20) NOT NULL COMMENT '用户',
  `employ_id` int(11) NOT NULL,
  `record_time` bigint(20) DEFAULT NULL COMMENT '记录时间',
  `content` varchar(500) NOT NULL COMMENT '内容',
  `operation` varchar(20) NOT NULL COMMENT '操作',
  `t_system_logcol` varchar(45) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_t_system_log_user1_idx` (`employ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of t_system_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_system_parameter
-- ----------------------------
DROP TABLE IF EXISTS `t_system_parameter`;
CREATE TABLE `t_system_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '参数名称',
  `value` varchar(128) NOT NULL COMMENT '参数值',
  `remark` varchar(128) DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数';

-- ----------------------------
-- Records of t_system_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `sex` tinyint(4) NOT NULL COMMENT '性别',
  `age` tinyint(4) NOT NULL COMMENT '年龄',
  `email` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL COMMENT '公司',
  `address` varchar(20) NOT NULL COMMENT '地址',
  `telephone` varchar(20) NOT NULL COMMENT '电话',
  `created_at` bigint(20) NOT NULL,
  `isdel` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `lv` tinyint(4) DEFAULT NULL COMMENT '账号等级',
  `disused` tinyint(4) NOT NULL COMMENT '是否废弃',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role1_idx` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'dengfei', '1', '20', '57879600@qq.com', 'zhilu', 'xxx', 'yyy', '123456', '0', '123456', null, '0', '11', '1');
