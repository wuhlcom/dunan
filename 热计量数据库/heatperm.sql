/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : heatperm

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-07-13 10:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbperm_account
-- ----------------------------
DROP TABLE IF EXISTS `tbperm_account`;
CREATE TABLE `tbperm_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `lv` int(11) NOT NULL DEFAULT '0' COMMENT '账号等级(0-700)',
  `app_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属应用',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属角色',
  `description` varchar(255) DEFAULT NULL COMMENT '说明',
  `disused` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='账号表';

-- ----------------------------
-- Table structure for tbperm_application
-- ----------------------------
DROP TABLE IF EXISTS `tbperm_application`;
CREATE TABLE `tbperm_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '应用名称',
  `code` varchar(255) NOT NULL COMMENT '应用编号',
  `description` varchar(2000) DEFAULT NULL COMMENT '说明',
  `lv` int(11) NOT NULL DEFAULT '0' COMMENT '资源等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='应用系统表';

-- ----------------------------
-- Table structure for tbperm_permission
-- ----------------------------
DROP TABLE IF EXISTS `tbperm_permission`;
CREATE TABLE `tbperm_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `company_id` varchar(128) DEFAULT NULL,
  `hotstation_id` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbperm_resource
-- ----------------------------
DROP TABLE IF EXISTS `tbperm_resource`;
CREATE TABLE `tbperm_resource` (
  `ID` int(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(255) NOT NULL COMMENT '名称',
  `CODE` varchar(255) NOT NULL COMMENT '编号',
  `INSTANCE` varchar(255) DEFAULT NULL COMMENT 'perm属性',
  `URL` varchar(255) DEFAULT NULL COMMENT 'url属性',
  `APP_ID` int(11) NOT NULL COMMENT '应用系统id',
  `IS_MENU` int(11) NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `INCLUDE_URL` int(11) NOT NULL DEFAULT '0' COMMENT '是否包含url属性',
  `INCLUDE_PERM` int(11) NOT NULL DEFAULT '0' COMMENT '是否包含perm属性',
  `IS_IMAGINARY` int(11) NOT NULL DEFAULT '0' COMMENT '是否为虚值(无实际意义的值,仅作标识用)',
  `IS_ACTION` int(11) NOT NULL DEFAULT '0' COMMENT '是否为操作行为',
  `IS_ROOT` int(11) NOT NULL DEFAULT '0' COMMENT '是否为根',
  `LV` int(11) NOT NULL DEFAULT '0' COMMENT '资源等级,0-7',
  `LIM_ACT_LV` int(11) NOT NULL DEFAULT '0' COMMENT '特定资源所需最小账号等级',
  `PARENT_ID` int(11) NOT NULL DEFAULT '0' COMMENT '父资源id',
  `SEQU` int(11) NOT NULL DEFAULT '0' COMMENT '排序序列',
  `ANT` varchar(255) DEFAULT NULL COMMENT 'ant规则',
  `DISUSED` int(11) NOT NULL DEFAULT '0' COMMENT '是否废弃',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Table structure for tbperm_role
-- ----------------------------
DROP TABLE IF EXISTS `tbperm_role`;
CREATE TABLE `tbperm_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '角色名',
  `code` varchar(255) NOT NULL COMMENT '角色编号',
  `app_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属应用',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '分配给账号的默认等级(0,100..700)',
  `disused` int(11) NOT NULL DEFAULT '0' COMMENT '是否废弃',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Table structure for tbperm_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tbperm_role_permission`;
CREATE TABLE `tbperm_role_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `perm_id` int(11) NOT NULL COMMENT '权限值id',
  `disused` int(1) NOT NULL DEFAULT '0' COMMENT '是否可用(0可用1不可用)',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=581 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Table structure for tbperm_user
-- ----------------------------
DROP TABLE IF EXISTS `tbperm_user`;
CREATE TABLE `tbperm_user` (
  `ID` int(6) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(255) NOT NULL COMMENT '姓名',
  `SEX` varchar(255) DEFAULT NULL COMMENT '性别',
  `AGE` varchar(255) DEFAULT NULL COMMENT '年龄',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'email',
  `TELEPHONE` varchar(255) DEFAULT NULL COMMENT '电话',
  `MOBILE` varchar(255) DEFAULT NULL COMMENT '手机',
  `COMPANY` varchar(255) DEFAULT NULL COMMENT '公司',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '住址',
  `OFFICE` varchar(255) DEFAULT NULL COMMENT '职位',
  `CARDID` varchar(255) DEFAULT NULL COMMENT '身份识别号',
  `FAX` varchar(255) DEFAULT NULL COMMENT '传真',
  `DISUSED` int(11) NOT NULL DEFAULT '0' COMMENT '是否废弃',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PK_TBPERM_USER` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='用户表';
