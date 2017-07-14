/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.9_MIA_IOT
Source Server Version : 50547
Source Host           : 192.168.10.9:3306
Source Database       : mia_iot

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-07-14 11:34:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_auth_group`;
CREATE TABLE `tbl_auth_group` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `rules` varchar(255) DEFAULT NULL,
  `isselect` tinyint(4) DEFAULT '1' COMMENT '用户注册时是否可以选择 1 : 不能  2：能',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_auth_group
-- ----------------------------
INSERT INTO `tbl_auth_group` VALUES ('1', '管理员', '1', '3,4,5,6,42,43,44,45,7,8,30,31,32,33,9,10,34,35,36,37,11,12,13,20,21,22,23,24,25,26,27,28,29,46,47,48,49,50,51,52,53,14,15,38,39,40,41,54', '1');
INSERT INTO `tbl_auth_group` VALUES ('2', 'cetest', '1', '11,12,13,20,21,22,23,24,25,26,27,28,29', '2');
INSERT INTO `tbl_auth_group` VALUES ('3', '开发者', '1', '7,8,30,31,32,33,9,10,34,35,36,37,11,12,13,20,21,22,23,24,25,26,27,28,29', '2');
INSERT INTO `tbl_auth_group` VALUES ('5', '合作伙伴', '1', '9,10,34,35,36,37,11,12,13,20,21,22,23,24,25,26,27,28,29', '2');
INSERT INTO `tbl_auth_group` VALUES ('7', 'aaa', '1', '1,2,16,17,18,19,6,7,8', '2');
INSERT INTO `tbl_auth_group` VALUES ('8', '普通用户', '1', '11,12,13,20,21,22,23,24,25,26,27,28,29,14,15,38,39,40', '2');
INSERT INTO `tbl_auth_group` VALUES ('13', '123', '1', '3,6,7,8', '2');
INSERT INTO `tbl_auth_group` VALUES ('14', '测试信息1', '1', '', '1');
INSERT INTO `tbl_auth_group` VALUES ('15', 'qte', '1', '11,13,52', '2');
INSERT INTO `tbl_auth_group` VALUES ('16', 'tewr', '1', null, '1');
INSERT INTO `tbl_auth_group` VALUES ('18', '是', '1', null, '1');

-- ----------------------------
-- Table structure for `tbl_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_auth_group_access`;
CREATE TABLE `tbl_auth_group_access` (
  `uid` varchar(64) NOT NULL,
  `group_id` int(11) NOT NULL,
  KEY `user_id` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_auth_group_access
-- ----------------------------
INSERT INTO `tbl_auth_group_access` VALUES ('bc9021ec606eb6bc', '2');
INSERT INTO `tbl_auth_group_access` VALUES ('6a2d62c3749b9381', '1');
INSERT INTO `tbl_auth_group_access` VALUES ('22456ee1b96d68b5', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('fea2eceead3b1b63', '1');
INSERT INTO `tbl_auth_group_access` VALUES ('df875a6e63b1ba8d', '2');
INSERT INTO `tbl_auth_group_access` VALUES ('fd6202bc0ca67e59', '1');
INSERT INTO `tbl_auth_group_access` VALUES ('460743d7edc866b1', '14');
INSERT INTO `tbl_auth_group_access` VALUES ('036557c221eda971', '8');
INSERT INTO `tbl_auth_group_access` VALUES ('2067e32ac37a4d4c', '1');
INSERT INTO `tbl_auth_group_access` VALUES ('a77ebb2ac244ee5a', '8');
INSERT INTO `tbl_auth_group_access` VALUES ('2d0a8922446095ca', '8');
INSERT INTO `tbl_auth_group_access` VALUES ('6f5ba89ab822e299', '2');
INSERT INTO `tbl_auth_group_access` VALUES ('c9301df6c25c3793', '1');
INSERT INTO `tbl_auth_group_access` VALUES ('9f96eac292b2d41d', '2');
INSERT INTO `tbl_auth_group_access` VALUES ('054173e59da79a98', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('8f8c97af5fa6b91a', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('df7066ee4451aa6c', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('33dc2510746711b2', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('b0fd5bf299d6baec', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('93a127b17c6e94e4', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('7fcba44c361b6731', '0');
INSERT INTO `tbl_auth_group_access` VALUES ('5b7b3acf058d2cb5', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('34d628edfc1ca91d', '3');
INSERT INTO `tbl_auth_group_access` VALUES ('1a72586b544115e5', '3');

-- ----------------------------
-- Table structure for `tbl_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_auth_rule`;
CREATE TABLE `tbl_auth_rule` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `type` tinyint(4) DEFAULT '1',
  `status` tinyint(4) DEFAULT NULL,
  `condition` varchar(45) DEFAULT NULL,
  `css` varchar(45) DEFAULT NULL,
  `pid` tinyint(4) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `ishidden` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_auth_rule
-- ----------------------------
INSERT INTO `tbl_auth_rule` VALUES ('1', 'Thing', 'Thing类型管理', '1', '0', null, '', '0', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('2', 'Thing/add', '添加Thing类型', '1', '0', null, '', '1', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('3', 'Auth', '权限管理', '1', '1', null, '', '0', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('4', 'Auth/index', '权限列表', '1', '1', null, '', '3', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('5', 'Auth/role', '角色列表', '1', '1', null, '', '3', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('6', 'Auth/user', '用户列表', '1', '1', null, '', '3', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('7', 'Module', '模块管理', '1', '1', null, '', '0', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('8', 'Module/index', '模块列表', '1', '1', null, '', '7', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('9', 'Product', '产品管理', '1', '1', null, '', '0', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('10', 'Product/index', '产品列表', '1', '1', null, '', '9', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('11', 'Device', '设备管理', '1', '1', null, '', '0', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('12', 'Device/groupIndex', '设备组列表', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('13', 'Device/index', '网关列表', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('14', 'Scene', '场景管理', '1', '1', null, '', '0', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('15', 'Scene/index', '场景列表', '1', '1', null, '', '14', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('16', 'Thing/index', 'Thing列表', '1', '0', null, '', '1', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('17', 'Thing/editThing', '修改Thing', '1', '0', null, '', '1', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('18', 'Thing/detail', 'Thing详细信息', '1', '0', null, '', '1', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('19', 'Thing/delThing', '删除Thing', '1', '0', null, '', '1', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('20', 'Device/groupAdd', '添加设备组', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('21', 'Device/editgroup', '修改设备组', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('22', 'Device/groupDetail', '设备组详细信息', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('23', 'Device/delgroup', '删除设备组', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('24', 'Device/addDevice', '添加网关设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('25', 'Device/editDevice', '修改网关设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('26', 'Device/detail', '网关详细信息', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('27', 'Device/delDevice', '删除网关设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('28', 'Device/reboot', '重启网关设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('29', 'Device/recover', '网关恢复出厂设置', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('30', 'Module/add', '添加模块', '1', '1', null, '', '7', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('31', 'Module/edit_module', '修改模块', '1', '1', null, '', '7', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('32', 'Module/module_info', '模块详细信息', '1', '1', null, '', '7', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('33', 'Module/del_module', '删除模块', '1', '1', null, '', '7', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('34', 'Product/add', '注册产品', '1', '1', null, '', '9', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('35', 'Product/edit', '修改产品', '1', '1', null, '', '9', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('36', 'Product/product_info', '产品详细信息', '1', '1', null, '', '9', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('37', 'Product/del_product', '删除产品', '1', '1', null, '', '9', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('38', 'Scene/addScene', '添加场景', '1', '1', null, '', '14', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('39', 'Scene/editScene', '修改场景', '1', '1', null, '', '14', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('40', 'Scene/rmv', '删除场景', '1', '1', null, '', '14', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('41', 'Scene/acl', '全局acl', '1', '1', null, '', '14', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('42', 'Auth/setRoleAuth', '设置角色权限', '1', '1', null, '', '3', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('43', 'Auth/del', '删除角色', '1', '1', null, '', '3', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('44', 'Auth/roleadd', '添加角色', '1', '1', null, '', '3', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('45', 'Auth/editUserGroup', '修改用户组', '1', '1', null, '', '3', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('46', 'DeviceThing/addDevice', '添加Thing设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('47', 'DeviceThing/editDevice', '修改Thing设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('48', 'DeviceThing/detail', 'Thing详细信息', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('49', 'DeviceThing/delDevice', '删除Thing设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('50', 'DeviceThing/reboot', '重启Thing设备', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('51', 'DeviceThing/recover', 'Thing恢复出厂设置', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('52', 'DeviceThing/index', 'Thing列表', '1', '1', null, null, '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('53', 'DeviceThing/setProperty', 'Thing设备设置', '1', '1', null, '', '11', '0', '0');
INSERT INTO `tbl_auth_rule` VALUES ('54', 'Scene/blackMac', '设备黑名单', '1', '1', null, '', '14', '0', '0');

-- ----------------------------
-- Table structure for `tbl_device_object`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_device_object`;
CREATE TABLE `tbl_device_object` (
  `id` varchar(16) NOT NULL,
  `device_id` varchar(16) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '物体名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_device_object
-- ----------------------------
INSERT INTO `tbl_device_object` VALUES ('00f67f70aef91137', '36207cf66b7d24ea', '123');
INSERT INTO `tbl_device_object` VALUES ('07135156a6f483e3', 'c9867b28ab5f3cab', '123');
INSERT INTO `tbl_device_object` VALUES ('0fb6b1812c7e9eb6', '6f42ddd4c273ef63', '灯');
INSERT INTO `tbl_device_object` VALUES ('1231a53f6d3e748d', '44cc693f74a85150', 'object72');
INSERT INTO `tbl_device_object` VALUES ('1404eaba91d01fda', '1', '3');
INSERT INTO `tbl_device_object` VALUES ('147ef81753035a11', '242ff3c54a73961f', '99obj');
INSERT INTO `tbl_device_object` VALUES ('15df71f275e87533', '8f02f2db912d75f0', 'object75');
INSERT INTO `tbl_device_object` VALUES ('1d951b54cda828e4', '0a5238a5236662cb', '34');
INSERT INTO `tbl_device_object` VALUES ('20f091ee7c47f36c', '066bafd19b14c808', '空调');
INSERT INTO `tbl_device_object` VALUES ('22343454566', '08b7c5f55b15e78f', 'rty');
INSERT INTO `tbl_device_object` VALUES ('29f2723cc709e7a5', '948803c59038e574', '灯');
INSERT INTO `tbl_device_object` VALUES ('2dab4fa8c3237dac', '2e9cb5a880ac2484', 'test');
INSERT INTO `tbl_device_object` VALUES ('35fbfff9ddcdbb96', 'd6711c3b1cbcd19d', '');
INSERT INTO `tbl_device_object` VALUES ('3baf750358aaaad8', '362462686d403ac6', '1234');
INSERT INTO `tbl_device_object` VALUES ('3d83219e7ffd52e7', '974fbd77dc43c0aa', '234234');
INSERT INTO `tbl_device_object` VALUES ('414ce59f917410d2', '1', '02');
INSERT INTO `tbl_device_object` VALUES ('441e546d13ce033c', '0c3ab7f2bc84ac3d', '4');
INSERT INTO `tbl_device_object` VALUES ('52fd514c8818f741', 'c305c33bbc44b7ac', '2e3');
INSERT INTO `tbl_device_object` VALUES ('5355bf7b5e4ee19b', '2b656123127e979d', '冰箱');
INSERT INTO `tbl_device_object` VALUES ('5ce3b61de5f7db65', 'f3c846c8c22a261d', 'test');
INSERT INTO `tbl_device_object` VALUES ('63d4e66e4dbeaa52', '049ea68d3ffb4653', 'oooo');
INSERT INTO `tbl_device_object` VALUES ('7c2da0bab9a312ae', '152349ad0a9e39ed', '3435');
INSERT INTO `tbl_device_object` VALUES ('909d7951f2dbfe02', 'b201e3b6e185fc19', '');
INSERT INTO `tbl_device_object` VALUES ('93a6c1a8896bb3c9', '017e85fee7a5f6ca', '66');
INSERT INTO `tbl_device_object` VALUES ('9a13e3ff6509f435', 'b2fa17234ed9bffb', 'obj123');
INSERT INTO `tbl_device_object` VALUES ('a8b924652534f9f5', '6eda1192d1b83eab', '123');
INSERT INTO `tbl_device_object` VALUES ('a96b758f6ee4ac94', '55ee2cd9b240c1c3', '');
INSERT INTO `tbl_device_object` VALUES ('c0f8b96cbf887aa6', '9783a811088b6001', 'qwe');
INSERT INTO `tbl_device_object` VALUES ('c3a9b967bb450c15', 'e6b804d45ddc6508', 'werwerr');
INSERT INTO `tbl_device_object` VALUES ('d696824078ff305b', '2e91040a40ded76c', 'etert');
INSERT INTO `tbl_device_object` VALUES ('d725c65c6be7648c', '0c0a9c30447d813d', 'ob');
INSERT INTO `tbl_device_object` VALUES ('d85daf5a2ed636a8', '05bf3cdca518ef4e', '电视');
INSERT INTO `tbl_device_object` VALUES ('dcca49e6a6b68e17', 'eab3b8cd9b631757', '999');
INSERT INTO `tbl_device_object` VALUES ('e8e0713441472911', '1', '01');
INSERT INTO `tbl_device_object` VALUES ('ecff8cb42ef1b7e7', 'b3b20d3de658b642', '车');
INSERT INTO `tbl_device_object` VALUES ('f024b7c78c7cd3f7', '524671d2da0902b2', 'ttt');
INSERT INTO `tbl_device_object` VALUES ('f5078de2a77965b5', '1a10ebdcf21b3106', '灯');
INSERT INTO `tbl_device_object` VALUES ('fa12474b56f43af0', 'cc3e488459e5ad85', '');

-- ----------------------------
-- Table structure for `tbl_iot_acl`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_acl`;
CREATE TABLE `tbl_iot_acl` (
  `id` varchar(16) NOT NULL,
  `scene_id` varchar(16) NOT NULL COMMENT '对象场景',
  `device_id` varchar(16) NOT NULL,
  `priority` int(5) NOT NULL COMMENT '优先级',
  `permissin` tinyint(5) NOT NULL COMMENT '权限',
  `action` tinyint(5) NOT NULL COMMENT '动作1:Pub,2:Sub,3:Pub/Sub',
  `resource_scene` varchar(16) NOT NULL COMMENT '资源场景',
  `resource_device` varchar(64) NOT NULL COMMENT '产品ID+设备ID',
  `resource_thing` varchar(16) DEFAULT NULL COMMENT '物体',
  `msg` varchar(256) NOT NULL COMMENT '消息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg_suffix` varchar(255) DEFAULT NULL COMMENT '消息后缀',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_acl
-- ----------------------------
INSERT INTO `tbl_iot_acl` VALUES ('00d8b45c89019fb8', 'b19db2731e25e49d', '2b656123127e979d', '1', '0', '1', 'b19db2731e25e49d', '2b656123127e979d', '+', '1;1;0;0;b19db2731e25e49d/mia/devices/deviceid/2b656123127e979d/things/+/', '2016-12-26 16:37:55', null);
INSERT INTO `tbl_iot_acl` VALUES ('0fdfcfd014a69667', '1da49d477ed37013', '049ea68d3ffb4653', '35', '0', '1', '2342354566', '08b7c5f55b15e78f', '22343454566', '1da49d477ed37013/mia/devices/deviceid/08b7c5f55b15e78f/things/22343454566/12', '2016-12-20 15:28:13', null);
INSERT INTO `tbl_iot_acl` VALUES ('10511a3bc0a74a16', 'ec24d3fea378c674', 'c9867b28ab5f3cab', '7', '1', '3', 'ec24d3fea378c674', 'c9867b28ab5f3cab', '07135156a6f483e3', '7;3;1;0;ec24d3fea378c674/mia/devices/deviceid/c9867b28ab5f3cab/things/07135156a6f483e3/qqq', '2016-12-24 15:56:36', null);
INSERT INTO `tbl_iot_acl` VALUES ('14b28866306556bf', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '10', '0', '1', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '', '10;1;0;0;fce2f3b91e0b8371/mia/devices/deviceid/05bf3cdca518ef4e/', '2016-12-22 19:35:08', null);
INSERT INTO `tbl_iot_acl` VALUES ('185ca416d703798a', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '5', '0', '1', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', 'd85daf5a2ed636a8', '5;1;0;0;fce2f3b91e0b8371/mia/devices/deviceid/05bf3cdca518ef4e/things/d85daf5a2ed636a8/test', '2016-12-22 15:07:37', null);
INSERT INTO `tbl_iot_acl` VALUES ('1a56f5897a17b835', '27938cb010ba30d2', '0f68c9cde669a0c2', '5', '0', '1', '27938cb010ba30d2', '0f68c9cde669a0c2', '+', '5;1;0;0;27938cb010ba30d2/mia/devices/deviceid/0f68c9cde669a0c2/things/+/test', '2016-12-22 14:22:45', null);
INSERT INTO `tbl_iot_acl` VALUES ('1fe65e9b56c23271', '4a699d022af8e087', '56d64ca40bfcf4f4', '10', '0', '1', 'rowNALRW', '6eda1192d1b83eab', 'a8b924652534f9f5', '10;1;0;0;rowNALRW::::/mia/devices/deviceid/6eda1192d1b83eab/things/a8b924652534f9f5/213', '2016-12-27 19:09:41', null);
INSERT INTO `tbl_iot_acl` VALUES ('25dda72a1e1be366', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '5', '0', '1', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '', '5;1;0;0;fce2f3b91e0b8371/mia/devices/deviceid/05bf3cdca518ef4e/', '2016-12-22 19:37:12', null);
INSERT INTO `tbl_iot_acl` VALUES ('2dc8cb99c1c77eb0', 'b19db2731e25e49d', '6f42ddd4c273ef63', '10', '0', '1', 'b19db2731e25e49d', '6f42ddd4c273ef63', '0fb6b1812c7e9eb6', '10;1;0;0;b19db2731e25e49d/mia/devices/deviceid/6f42ddd4c273ef63/things/0fb6b1812c7e9eb6/', '2016-12-22 14:58:29', null);
INSERT INTO `tbl_iot_acl` VALUES ('2f6b7186ab651860', '1da49d477ed37013', '049ea68d3ffb4653', '45', '0', '1', '2342354566', '44cc693f74a85150', '1231a53f6d3e748d', '45;1;0;0;1da49d477ed37013/mia/devices/deviceid/44cc693f74a85150/things/1231a53f6d3e748d/123556', '2016-12-20 17:30:15', null);
INSERT INTO `tbl_iot_acl` VALUES ('31d39b04e80fcb9c', '1da49d477ed37013', '049ea68d3ffb4653', '5', '1', '1', 'f1697d996e63cc3d', '242ff3c54a73961f', '147ef81753035a11', '543545', '2016-12-16 17:45:43', null);
INSERT INTO `tbl_iot_acl` VALUES ('36e9153c840f420d', '1da49d477ed37013', '049ea68d3ffb4653', '30', '0', '1', '2342354566', '8f02f2db912d75f0', '+', '1da49d477ed37013/mia/devices/deviceid/8f02f2db912d75f0/things/+/45', '2016-12-20 15:20:33', null);
INSERT INTO `tbl_iot_acl` VALUES ('3a12cda0ca984c2d', 'b19db2731e25e49d', '6f42ddd4c273ef63', '5', '0', '3', 'b19db2731e25e49d', '6f42ddd4c273ef63', '', '5;3;0;0;b19db2731e25e49d/mia/devices/deviceid/6f42ddd4c273ef63/', '2016-12-22 14:57:22', null);
INSERT INTO `tbl_iot_acl` VALUES ('3b7cb61d99e3b232', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '25', '0', '2', 'fce2f3b91e0b8371', '066bafd19b14c808', '+', '25;2;0;0;fce2f3b91e0b8371/mia/devices/deviceid/066bafd19b14c808/things/+/', '2016-12-22 19:39:04', null);
INSERT INTO `tbl_iot_acl` VALUES ('43c17ce8bc96cea5', '22bbc724da52d2c4', 'f3c846c8c22a261d', '5', '0', '1', '22bbc724da52d2c4', '948803c59038e574', '29f2723cc709e7a5', '5;1;0;0;22bbc724da52d2c4/mia/devices/deviceid/948803c59038e574/things/29f2723cc709e7a5/+', '2016-12-22 17:38:20', null);
INSERT INTO `tbl_iot_acl` VALUES ('460741770021c1dc', 'bdKRR2Qs', '8b9057416ac1f838', '5', '0', '2', 'bdKRR2Qs', 'erds00fN8VRn5aKy8b9057416ac1f838', '', '5;0;2;0;MIA-IoT/devices/erds00fN8VRn5aKy8b9057416ac1f838/', '2017-04-01 16:13:52', 'test');
INSERT INTO `tbl_iot_acl` VALUES ('5043011526767e3e', 'b19db2731e25e49d', '6f42ddd4c273ef63', '20', '1', '3', 'b19db2731e25e49d', '6f42ddd4c273ef63', '+', '20;3;1;0;b19db2731e25e49d/mia/devices/deviceid/6f42ddd4c273ef63/things/+/', '2016-12-22 15:01:00', null);
INSERT INTO `tbl_iot_acl` VALUES ('53a28d2131450f1a', '1da49d477ed37013', '049ea68d3ffb4653', '15', '0', '2', 'f1697d996e63cc3d', '242ff3c54a73961f', '147ef81753035a11', 'deviceid/242ff3c54a73961f/things/thing/147ef81753035a11', '2016-12-18 16:02:32', null);
INSERT INTO `tbl_iot_acl` VALUES ('57c0c3508dd6d6b8', '1da49d477ed37013', '049ea68d3ffb4653', '20', '1', '2', '2342354566', '08b7c5f55b15e78f', 'all', 'deviceid/08b7c5f55b15e78f/things/thing/all', '2016-12-18 16:06:46', null);
INSERT INTO `tbl_iot_acl` VALUES ('662b0fba429b7706', '27938cb010ba30d2', '948803c59038e574', '15', '0', '1', '27938cb010ba30d2', '0f68c9cde669a0c2', '', '15;1;0;0;27938cb010ba30d2/mia/devices/deviceid/0f68c9cde669a0c2/', '2016-12-22 14:41:16', null);
INSERT INTO `tbl_iot_acl` VALUES ('6cc24967a5c8ed83', 'ec24d3fea378c674', '2e91040a40ded76c', '5', '0', '1', '4d36c4a5889a8117', 'e6b804d45ddc6508', 'c3a9b967bb450c15', '5;1;0;0;4d36c4a5889a8117:::/mia/devices/deviceid/e6b804d45ddc6508/things/c3a9b967bb450c15/werewr', '2017-01-10 11:41:50', 'werewr');
INSERT INTO `tbl_iot_acl` VALUES ('6d99eb47c9e54ca0', '22bbc724da52d2c4', '810cfb1ad6479941', '5', '0', '1', '22bbc724da52d2c4', '948803c59038e574', '29f2723cc709e7a5', '5;1;0;0;22bbc724da52d2c4/mia/devices/deviceid/948803c59038e574/things/29f2723cc709e7a5/#', '2016-12-26 14:54:50', null);
INSERT INTO `tbl_iot_acl` VALUES ('703691d6eb82ea59', 'ec24d3fea378c674', '9783a811088b6001', '10', '0', '1', '4d36c4a5889a8117', '152349ad0a9e39ed', '', '10;1;0;0;4d36c4a5889a8117::/mia/devices/deviceid/152349ad0a9e39ed/45', '2016-12-27 18:39:43', null);
INSERT INTO `tbl_iot_acl` VALUES ('843c3a4010462aeb', '69051b0522a7b6e2', 'b138b16ea93b3bc6', '10', '0', '2', '69051b0522a7b6e2', 'b138b16ea93b3bc6', '', '10;0;2;1;MIA-IoT/devices/b138b16ea93b3bc6/234', '2017-01-11 17:55:47', '234');
INSERT INTO `tbl_iot_acl` VALUES ('86c2e13b526474aa', 'ec24d3fea378c674', '9783a811088b6001', '6', '1', '2', 'ec24d3fea378c674', '9783a811088b6001', 'c0f8b96cbf887aa6', '6;2;1;0;ec24d3fea378c674/mia/devices/deviceid/9783a811088b6001/things/c0f8b96cbf887aa6/www', '2016-12-24 16:00:23', null);
INSERT INTO `tbl_iot_acl` VALUES ('8adc63a71d2efaac', 'bdKRR2Qs', '8b9057416ac1f838', '10', '0', '2', 'bdKRR2Qs', 'erds00fN8VRn5aKy8b9057416ac1f838', '', '10;0;2;1;MIA-IoT/devices/erds00fN8VRn5aKy8b9057416ac1f838/', '2017-04-01 16:14:04', '*');
INSERT INTO `tbl_iot_acl` VALUES ('8d665f1b837c221b', 'ERbZe2j3', 'eab3b8cd9b631757', '15', '0', '2', 'ERbZe2j3', '1FhvAp5ZI4RvxMZQeab3b8cd9b631757', 'dcca49e6a6b68e17', '15;0;2;0;MIA-IoT/devices/1FhvAp5ZI4RvxMZQeab3b8cd9b631757/things/dcca49e6a6b68e17/JKL/IOP', '2017-03-09 13:53:36', 'JKL/IOP');
INSERT INTO `tbl_iot_acl` VALUES ('918a5fee8dea480d', 'b19db2731e25e49d', '2b656123127e979d', '5', '0', '3', 'b19db2731e25e49d', '2b656123127e979d', '5355bf7b5e4ee19b', '5;3;0;0;b19db2731e25e49d/mia/devices/deviceid/2b656123127e979d/things/5355bf7b5e4ee19b/', '2016-12-26 16:29:50', null);
INSERT INTO `tbl_iot_acl` VALUES ('926be13016f27338', '27938cb010ba30d2', '948803c59038e574', '20', '0', '1', '27938cb010ba30d2', '948803c59038e574', '', '20;1;0;0;27938cb010ba30d2/mia/devices/deviceid/948803c59038e574/', '2016-12-22 14:41:37', null);
INSERT INTO `tbl_iot_acl` VALUES ('975cb490f48dd9c4', 'b19db2731e25e49d', '6f42ddd4c273ef63', '15', '1', '1', 'b19db2731e25e49d', '6f42ddd4c273ef63', '+', '15;1;1;0;b19db2731e25e49d/mia/devices/deviceid/6f42ddd4c273ef63/things/+/', '2016-12-22 14:59:33', null);
INSERT INTO `tbl_iot_acl` VALUES ('984def9af3dc30f5', '1da49d477ed37013', '049ea68d3ffb4653', '25', '0', '1', '2342354566', '08b7c5f55b15e78f', '22343454566', '1da49d477ed37013/mia/devices/deviceid/08b7c5f55b15e78f/things/22343454566/1234', '2016-12-20 15:17:41', null);
INSERT INTO `tbl_iot_acl` VALUES ('a067878679dd3105', 'ERbZe2j3', 'eab3b8cd9b631757', '10', '0', '2', 'ERbZe2j3', '1FhvAp5ZI4RvxMZQeab3b8cd9b631757', '', '10;0;2;0;MIA-IoT/devices/1FhvAp5ZI4RvxMZQeab3b8cd9b631757/', '2017-03-09 14:17:57', '234/566/45');
INSERT INTO `tbl_iot_acl` VALUES ('b082cab932e7b445', 'b19db2731e25e49d', '6f42ddd4c273ef63', '25', '0', '1', 'b19db2731e25e49d', '2b656123127e979d', '5355bf7b5e4ee19b', '25;1;0;0;b19db2731e25e49d/mia/devices/deviceid/2b656123127e979d/things/5355bf7b5e4ee19b/', '2016-12-22 15:02:59', null);
INSERT INTO `tbl_iot_acl` VALUES ('b4d7feb1528bc4d2', '4a699d022af8e087', '6c54e73e95efa33b', '1', '0', '1', '4a699d022af8e087', '6c54e73e95efa33b', '+', '1;1;0;0;4a699d022af8e087/mia/devices/deviceid/6c54e73e95efa33b/things/+/', '2016-12-27 10:25:25', null);
INSERT INTO `tbl_iot_acl` VALUES ('bae1c9c57f90cfea', '4a699d022af8e087', '77173342b060eee1', '1', '0', '1', '4a699d022af8e087', '77173342b060eee1', '+', '1;1;0;0;4a699d022af8e087/mia/devices/deviceid/77173342b060eee1/things/+/', '2016-12-27 10:46:37', null);
INSERT INTO `tbl_iot_acl` VALUES ('bcbc9d3a81fbc120', '6SeZzw94', '41ea96e6dae3b700', '5', '0', '1', '6SeZzw94', 'b9ylMNfxbjFHRP3X41ea96e6dae3b700', '?', '5;0;1;1;MIA-IoT/devices/b9ylMNfxbjFHRP3X41ea96e6dae3b700/things/?/', '2017-04-12 11:00:56', 'gh');
INSERT INTO `tbl_iot_acl` VALUES ('bcdf251692a8cffc', 'ec24d3fea378c674', '2e91040a40ded76c', '10', '0', '1', '4d36c4a5889a8117', 'e6b804d45ddc6508', '', '10;1;0;0;4d36c4a5889a8117:::/MIA-IoT/devices//e6b804d45ddc6508/32', '2017-01-10 11:42:04', '32');
INSERT INTO `tbl_iot_acl` VALUES ('becb7b6db7eb150a', 'b19db2731e25e49d', '6f42ddd4c273ef63', '1', '0', '1', 'b19db2731e25e49d', '2b656123127e979d', '+', '1;1;0;0;b19db2731e25e49d/mia/devices/deviceid/2b656123127e979d/things/+/', '2016-12-22 15:03:14', null);
INSERT INTO `tbl_iot_acl` VALUES ('c8bf9ef049447a99', '621cb17dbc5105d5', 'b3b20d3de658b642', '5', '0', '1', '621cb17dbc5105d5', 'b3b20d3de658b642', 'ecff8cb42ef1b7e7', '5;1;0;1;621cb17dbc5105d5/mia/devices/deviceid/b3b20d3de658b642/things/ecff8cb42ef1b7e7/*', '2016-12-22 15:08:59', null);
INSERT INTO `tbl_iot_acl` VALUES ('cf0d9e5746d2a259', '69051b0522a7b6e2', 'b138b16ea93b3bc6', '5', '0', '1', 'bdKRR2Qs', '8b9057416ac1f838', '+', '5;0;1;1;bdKRR2Qs/MIA-IoT/devices/8b9057416ac1f838/things/+/123', '2017-01-11 17:04:35', '123');
INSERT INTO `tbl_iot_acl` VALUES ('d07f3966efeb0dcf', '27938cb010ba30d2', '948803c59038e574', '10', '1', '2', '27938cb010ba30d2', '0f68c9cde669a0c2', '', '10;2;1;0;27938cb010ba30d2/mia/devices/deviceid/0f68c9cde669a0c2/', '2016-12-22 14:40:42', null);
INSERT INTO `tbl_iot_acl` VALUES ('d2d345348571b3e4', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '5', '0', '1', 'fce2f3b91e0b8371', '05bf3cdca518ef4e', '', '5;1;0;0;fce2f3b91e0b8371/mia/devices/deviceid/05bf3cdca518ef4e/', '2016-12-22 19:37:37', null);
INSERT INTO `tbl_iot_acl` VALUES ('da522ba894f90145', '1da49d477ed37013', '049ea68d3ffb4653', '40', '0', '1', '2342354566', '44cc693f74a85150', '1231a53f6d3e748d', '1da49d477ed37013/mia/devices/deviceid/44cc693f74a85150/things/1231a53f6d3e748d/456', '2016-12-20 17:23:25', null);
INSERT INTO `tbl_iot_acl` VALUES ('e4db0dac94277faf', '27938cb010ba30d2', '948803c59038e574', '5', '0', '1', '27938cb010ba30d2', '0f68c9cde669a0c2', '', '5;1;0;0;27938cb010ba30d2/mia/devices/deviceid/0f68c9cde669a0c2/', '2016-12-22 14:40:29', null);
INSERT INTO `tbl_iot_acl` VALUES ('e784ccbe615607ab', '4d36c4a5889a8117', 'e6b804d45ddc6508', '5', '1', '2', 'ERbZe2j3', '54561d63e62dbdb1', '', '5;1;2;1;MIA-IoT/devices/54561d63e62dbdb1/*', '2017-03-02 11:36:48', '*');
INSERT INTO `tbl_iot_acl` VALUES ('e87706b970268461', 'ec24d3fea378c674', '2e91040a40ded76c', '15', '0', '2', 'ec24d3fea378c674', '2e91040a40ded76c', 'd696824078ff305b', '15;0;2;1;MIA-IoT/devices/2e91040a40ded76c/things/d696824078ff305b', '2017-01-10 11:30:19', null);
INSERT INTO `tbl_iot_acl` VALUES ('ea5f0612945cc80a', '1da49d477ed37013', '049ea68d3ffb4653', '10', '0', '3', 'f1697d996e63cc3d', '242ff3c54a73961f', '147ef81753035a11', 'deviceid/242ff3c54a73961f/things/thing/147ef81753035a11', '2016-12-18 15:57:39', null);
INSERT INTO `tbl_iot_acl` VALUES ('ebac6921b0b9d907', '4a699d022af8e087', '56d64ca40bfcf4f4', '1', '0', '2', '4a699d022af8e087', '56d64ca40bfcf4f4', '+', '1;2;0;0;4a699d022af8e087/mia/devices/deviceid/56d64ca40bfcf4f4/things/+/', '2016-12-27 15:44:30', null);

-- ----------------------------
-- Table structure for `tbl_iot_board_info`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_board_info`;
CREATE TABLE `tbl_iot_board_info` (
  `id` varchar(16) NOT NULL COMMENT '模块索引',
  `name` varchar(64) DEFAULT NULL COMMENT '•	模块型号：必选项，长度范围：1~64。支持中文、英文、数字、中划线、下划线',
  `cpu_model` tinyint(1) DEFAULT NULL COMMENT 'CPU型号',
  `flash_capacity` int(2) DEFAULT NULL COMMENT 'Flash容量',
  `memory` int(2) DEFAULT NULL COMMENT '内存',
  `vender` varchar(16) DEFAULT NULL COMMENT '所属厂家',
  `create_user` varchar(16) DEFAULT NULL COMMENT '创建用户',
  `modify_user` varchar(16) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_board_info
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_iot_city`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_city`;
CREATE TABLE `tbl_iot_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_city
-- ----------------------------
INSERT INTO `tbl_iot_city` VALUES ('1', '直辖', '110000', '0');
INSERT INTO `tbl_iot_city` VALUES ('2', '河北省', '130000', '0');
INSERT INTO `tbl_iot_city` VALUES ('3', '山西省', '140000', '0');
INSERT INTO `tbl_iot_city` VALUES ('4', '内蒙古', '150000', '0');
INSERT INTO `tbl_iot_city` VALUES ('5', '辽宁省', '210000', '0');
INSERT INTO `tbl_iot_city` VALUES ('6', '吉林省', '220000', '0');
INSERT INTO `tbl_iot_city` VALUES ('7', '黑龙江省', '230000', '0');
INSERT INTO `tbl_iot_city` VALUES ('8', '江苏省', '320000', '0');
INSERT INTO `tbl_iot_city` VALUES ('9', '浙江省', '330000', '0');
INSERT INTO `tbl_iot_city` VALUES ('10', '安徽省', '340000', '0');
INSERT INTO `tbl_iot_city` VALUES ('11', '福建省', '350000', '0');
INSERT INTO `tbl_iot_city` VALUES ('12', '江西省', '360000', '0');
INSERT INTO `tbl_iot_city` VALUES ('13', '山东省', '370000', '0');
INSERT INTO `tbl_iot_city` VALUES ('14', '河南省', '410000', '0');
INSERT INTO `tbl_iot_city` VALUES ('15', '湖北省', '420000', '0');
INSERT INTO `tbl_iot_city` VALUES ('16', '湖南省', '430000', '0');
INSERT INTO `tbl_iot_city` VALUES ('17', '广东省', '440000', '0');
INSERT INTO `tbl_iot_city` VALUES ('18', '广西省', '450000', '0');
INSERT INTO `tbl_iot_city` VALUES ('19', '海南省', '460000', '0');
INSERT INTO `tbl_iot_city` VALUES ('20', '四川省', '510000', '0');
INSERT INTO `tbl_iot_city` VALUES ('21', '贵州省', '520000', '0');
INSERT INTO `tbl_iot_city` VALUES ('22', '云南省', '530000', '0');
INSERT INTO `tbl_iot_city` VALUES ('23', '西藏', '540000', '0');
INSERT INTO `tbl_iot_city` VALUES ('24', '陕西省', '610000', '0');
INSERT INTO `tbl_iot_city` VALUES ('25', '甘肃省', '620000', '0');
INSERT INTO `tbl_iot_city` VALUES ('26', '青海省', '630000', '0');
INSERT INTO `tbl_iot_city` VALUES ('27', '宁夏', '640000', '0');
INSERT INTO `tbl_iot_city` VALUES ('28', '新疆', '650000', '0');
INSERT INTO `tbl_iot_city` VALUES ('29', '北京', '110000', '1');
INSERT INTO `tbl_iot_city` VALUES ('30', '天津', '120000', '1');
INSERT INTO `tbl_iot_city` VALUES ('31', '上海', '310000', '1');
INSERT INTO `tbl_iot_city` VALUES ('32', '重庆', '500000', '1');
INSERT INTO `tbl_iot_city` VALUES ('33', '石家庄', '130100', '2');
INSERT INTO `tbl_iot_city` VALUES ('34', '唐山', '130200', '2');
INSERT INTO `tbl_iot_city` VALUES ('35', '秦皇岛', '130300', '2');
INSERT INTO `tbl_iot_city` VALUES ('36', '邯郸', '130400', '2');
INSERT INTO `tbl_iot_city` VALUES ('37', '邢台', '130500', '2');
INSERT INTO `tbl_iot_city` VALUES ('38', '保定', '130600', '2');
INSERT INTO `tbl_iot_city` VALUES ('39', '张家口', '130700', '2');
INSERT INTO `tbl_iot_city` VALUES ('40', '承德', '130800', '2');
INSERT INTO `tbl_iot_city` VALUES ('41', '沧州', '130900', '2');
INSERT INTO `tbl_iot_city` VALUES ('42', '廊坊', '131000', '2');
INSERT INTO `tbl_iot_city` VALUES ('43', '衡水', '131100', '2');
INSERT INTO `tbl_iot_city` VALUES ('44', '其它', '139000', '2');
INSERT INTO `tbl_iot_city` VALUES ('45', '太原', '140100', '3');
INSERT INTO `tbl_iot_city` VALUES ('46', '大同', '140200', '3');
INSERT INTO `tbl_iot_city` VALUES ('47', '阳泉', '140300', '3');
INSERT INTO `tbl_iot_city` VALUES ('48', '长治', '140400', '3');
INSERT INTO `tbl_iot_city` VALUES ('49', '晋城', '140500', '3');
INSERT INTO `tbl_iot_city` VALUES ('50', '朔州', '140600', '3');
INSERT INTO `tbl_iot_city` VALUES ('51', '晋中', '140700', '3');
INSERT INTO `tbl_iot_city` VALUES ('52', '运城', '140800', '3');
INSERT INTO `tbl_iot_city` VALUES ('53', '忻州', '140900', '3');
INSERT INTO `tbl_iot_city` VALUES ('54', '临汾', '141000', '3');
INSERT INTO `tbl_iot_city` VALUES ('55', '吕梁', '141100', '3');
INSERT INTO `tbl_iot_city` VALUES ('56', '其它', '149000', '3');
INSERT INTO `tbl_iot_city` VALUES ('57', '呼和浩特', '150100', '4');
INSERT INTO `tbl_iot_city` VALUES ('58', '包头', '150200', '4');
INSERT INTO `tbl_iot_city` VALUES ('59', '乌海', '150300', '4');
INSERT INTO `tbl_iot_city` VALUES ('60', '赤峰', '150400', '4');
INSERT INTO `tbl_iot_city` VALUES ('61', '通辽', '150500', '4');
INSERT INTO `tbl_iot_city` VALUES ('62', '鄂尔多斯', '150600', '4');
INSERT INTO `tbl_iot_city` VALUES ('63', '呼伦贝尔', '150700', '4');
INSERT INTO `tbl_iot_city` VALUES ('64', '巴彦淖尔', '150800', '4');
INSERT INTO `tbl_iot_city` VALUES ('65', '乌兰察布', '150900', '4');
INSERT INTO `tbl_iot_city` VALUES ('66', '兴安盟', '152200', '4');
INSERT INTO `tbl_iot_city` VALUES ('67', '锡林郭勒盟', '152500', '4');
INSERT INTO `tbl_iot_city` VALUES ('68', '阿拉善盟', '152900', '4');
INSERT INTO `tbl_iot_city` VALUES ('69', '其它', '159000', '4');
INSERT INTO `tbl_iot_city` VALUES ('70', '沈阳', '210100', '5');
INSERT INTO `tbl_iot_city` VALUES ('71', '大连', '210200', '5');
INSERT INTO `tbl_iot_city` VALUES ('72', '鞍山', '210300', '5');
INSERT INTO `tbl_iot_city` VALUES ('73', '抚顺', '210400', '5');
INSERT INTO `tbl_iot_city` VALUES ('74', '本溪', '210500', '5');
INSERT INTO `tbl_iot_city` VALUES ('75', '丹东', '210600', '5');
INSERT INTO `tbl_iot_city` VALUES ('76', '锦州', '210700', '5');
INSERT INTO `tbl_iot_city` VALUES ('77', '营口', '210800', '5');
INSERT INTO `tbl_iot_city` VALUES ('78', '阜新', '210900', '5');
INSERT INTO `tbl_iot_city` VALUES ('79', '辽阳', '211000', '5');
INSERT INTO `tbl_iot_city` VALUES ('80', '盘锦', '211100', '5');
INSERT INTO `tbl_iot_city` VALUES ('81', '铁岭', '211200', '5');
INSERT INTO `tbl_iot_city` VALUES ('82', '朝阳', '211300', '5');
INSERT INTO `tbl_iot_city` VALUES ('83', '葫芦岛', '211400', '5');
INSERT INTO `tbl_iot_city` VALUES ('84', '其它', '219000', '5');
INSERT INTO `tbl_iot_city` VALUES ('85', '长春', '220100', '6');
INSERT INTO `tbl_iot_city` VALUES ('86', '吉林', '220200', '6');
INSERT INTO `tbl_iot_city` VALUES ('87', '四平', '220300', '6');
INSERT INTO `tbl_iot_city` VALUES ('88', '辽源', '220400', '6');
INSERT INTO `tbl_iot_city` VALUES ('89', '通化', '220500', '6');
INSERT INTO `tbl_iot_city` VALUES ('90', '白山', '220600', '6');
INSERT INTO `tbl_iot_city` VALUES ('91', '松原', '220700', '6');
INSERT INTO `tbl_iot_city` VALUES ('92', '白城', '220800', '6');
INSERT INTO `tbl_iot_city` VALUES ('93', '其它', '229000', '6');
INSERT INTO `tbl_iot_city` VALUES ('94', '哈尔滨', '230100', '7');
INSERT INTO `tbl_iot_city` VALUES ('95', '齐齐哈尔', '230200', '7');
INSERT INTO `tbl_iot_city` VALUES ('96', '鸡西', '230300', '7');
INSERT INTO `tbl_iot_city` VALUES ('97', '鹤岗', '230400', '7');
INSERT INTO `tbl_iot_city` VALUES ('98', '双鸭山', '230500', '7');
INSERT INTO `tbl_iot_city` VALUES ('99', '大庆', '230600', '7');
INSERT INTO `tbl_iot_city` VALUES ('100', '伊春', '230700', '7');
INSERT INTO `tbl_iot_city` VALUES ('101', '佳木斯', '230800', '7');
INSERT INTO `tbl_iot_city` VALUES ('102', '七台河', '230900', '7');
INSERT INTO `tbl_iot_city` VALUES ('103', '牡丹江', '231000', '7');
INSERT INTO `tbl_iot_city` VALUES ('104', '黑河', '231100', '7');
INSERT INTO `tbl_iot_city` VALUES ('105', '绥化', '231200', '7');
INSERT INTO `tbl_iot_city` VALUES ('106', '大兴安岭', '232700', '7');
INSERT INTO `tbl_iot_city` VALUES ('107', '其它', '239000', '7');
INSERT INTO `tbl_iot_city` VALUES ('108', '南京', '320100', '8');
INSERT INTO `tbl_iot_city` VALUES ('109', '无锡', '320200', '8');
INSERT INTO `tbl_iot_city` VALUES ('110', '徐州', '320300', '8');
INSERT INTO `tbl_iot_city` VALUES ('111', '常州', '320400', '8');
INSERT INTO `tbl_iot_city` VALUES ('112', '苏州', '320500', '8');
INSERT INTO `tbl_iot_city` VALUES ('113', '南通', '320600', '8');
INSERT INTO `tbl_iot_city` VALUES ('114', '连云港', '320700', '8');
INSERT INTO `tbl_iot_city` VALUES ('115', '淮安', '320800', '8');
INSERT INTO `tbl_iot_city` VALUES ('116', '盐城', '320900', '8');
INSERT INTO `tbl_iot_city` VALUES ('117', '扬州', '321000', '8');
INSERT INTO `tbl_iot_city` VALUES ('118', '镇江', '321100', '8');
INSERT INTO `tbl_iot_city` VALUES ('119', '泰州', '321200', '8');
INSERT INTO `tbl_iot_city` VALUES ('120', '宿迁', '321300', '8');
INSERT INTO `tbl_iot_city` VALUES ('121', '其它', '329000', '8');
INSERT INTO `tbl_iot_city` VALUES ('122', '杭州', '330100', '9');
INSERT INTO `tbl_iot_city` VALUES ('123', '宁波', '330200', '9');
INSERT INTO `tbl_iot_city` VALUES ('124', '温州', '330300', '9');
INSERT INTO `tbl_iot_city` VALUES ('125', '嘉兴', '330400', '9');
INSERT INTO `tbl_iot_city` VALUES ('126', '湖州', '330500', '9');
INSERT INTO `tbl_iot_city` VALUES ('127', '绍兴', '330600', '9');
INSERT INTO `tbl_iot_city` VALUES ('128', '金华', '330700', '9');
INSERT INTO `tbl_iot_city` VALUES ('129', '衢州', '330800', '9');
INSERT INTO `tbl_iot_city` VALUES ('130', '舟山', '330900', '9');
INSERT INTO `tbl_iot_city` VALUES ('131', '台州', '331000', '9');
INSERT INTO `tbl_iot_city` VALUES ('132', '丽水', '331100', '9');
INSERT INTO `tbl_iot_city` VALUES ('133', '其它', '339000', '9');
INSERT INTO `tbl_iot_city` VALUES ('134', '合肥', '340100', '10');
INSERT INTO `tbl_iot_city` VALUES ('135', '芜湖', '340200', '10');
INSERT INTO `tbl_iot_city` VALUES ('136', '蚌埠', '340300', '10');
INSERT INTO `tbl_iot_city` VALUES ('137', '淮南', '340400', '10');
INSERT INTO `tbl_iot_city` VALUES ('138', '马鞍山', '340500', '10');
INSERT INTO `tbl_iot_city` VALUES ('139', '淮北', '340600', '10');
INSERT INTO `tbl_iot_city` VALUES ('140', '铜陵', '340700', '10');
INSERT INTO `tbl_iot_city` VALUES ('141', '安庆', '340800', '10');
INSERT INTO `tbl_iot_city` VALUES ('142', '黄山', '341000', '10');
INSERT INTO `tbl_iot_city` VALUES ('143', '滁州', '341100', '10');
INSERT INTO `tbl_iot_city` VALUES ('144', '阜阳', '341200', '10');
INSERT INTO `tbl_iot_city` VALUES ('145', '宿州', '341300', '10');
INSERT INTO `tbl_iot_city` VALUES ('146', '六安', '341500', '10');
INSERT INTO `tbl_iot_city` VALUES ('147', '亳州', '341600', '10');
INSERT INTO `tbl_iot_city` VALUES ('148', '池州', '341700', '10');
INSERT INTO `tbl_iot_city` VALUES ('149', '宣城', '341800', '10');
INSERT INTO `tbl_iot_city` VALUES ('150', '其它', '349000', '10');
INSERT INTO `tbl_iot_city` VALUES ('151', '福州', '350100', '11');
INSERT INTO `tbl_iot_city` VALUES ('152', '厦门', '350200', '11');
INSERT INTO `tbl_iot_city` VALUES ('153', '莆田', '350300', '11');
INSERT INTO `tbl_iot_city` VALUES ('154', '三明', '350400', '11');
INSERT INTO `tbl_iot_city` VALUES ('155', '泉州', '350500', '11');
INSERT INTO `tbl_iot_city` VALUES ('156', '漳州', '350600', '11');
INSERT INTO `tbl_iot_city` VALUES ('157', '南平', '350700', '11');
INSERT INTO `tbl_iot_city` VALUES ('158', '龙岩', '350800', '11');
INSERT INTO `tbl_iot_city` VALUES ('159', '宁德', '350900', '11');
INSERT INTO `tbl_iot_city` VALUES ('160', '其它', '359000', '11');
INSERT INTO `tbl_iot_city` VALUES ('161', '南昌', '360100', '12');
INSERT INTO `tbl_iot_city` VALUES ('162', '景德镇', '360200', '12');
INSERT INTO `tbl_iot_city` VALUES ('163', '萍乡', '360300', '12');
INSERT INTO `tbl_iot_city` VALUES ('164', '九江', '360400', '12');
INSERT INTO `tbl_iot_city` VALUES ('165', '新余', '360500', '12');
INSERT INTO `tbl_iot_city` VALUES ('166', '鹰潭', '360600', '12');
INSERT INTO `tbl_iot_city` VALUES ('167', '赣州', '360700', '12');
INSERT INTO `tbl_iot_city` VALUES ('168', '吉安', '360800', '12');
INSERT INTO `tbl_iot_city` VALUES ('169', '宜春', '360900', '12');
INSERT INTO `tbl_iot_city` VALUES ('170', '抚州', '361000', '12');
INSERT INTO `tbl_iot_city` VALUES ('171', '上饶', '361100', '12');
INSERT INTO `tbl_iot_city` VALUES ('172', '其它', '369000', '12');
INSERT INTO `tbl_iot_city` VALUES ('173', '济南', '370100', '13');
INSERT INTO `tbl_iot_city` VALUES ('174', '青岛', '370200', '13');
INSERT INTO `tbl_iot_city` VALUES ('175', '淄博', '370300', '13');
INSERT INTO `tbl_iot_city` VALUES ('176', '枣庄', '370400', '13');
INSERT INTO `tbl_iot_city` VALUES ('177', '东营', '370500', '13');
INSERT INTO `tbl_iot_city` VALUES ('178', '烟台', '370600', '13');
INSERT INTO `tbl_iot_city` VALUES ('179', '潍坊', '370700', '13');
INSERT INTO `tbl_iot_city` VALUES ('180', '济宁', '370800', '13');
INSERT INTO `tbl_iot_city` VALUES ('181', '泰安', '370900', '13');
INSERT INTO `tbl_iot_city` VALUES ('182', '威海', '371000', '13');
INSERT INTO `tbl_iot_city` VALUES ('183', '日照', '371100', '13');
INSERT INTO `tbl_iot_city` VALUES ('184', '莱芜', '371200', '13');
INSERT INTO `tbl_iot_city` VALUES ('185', '临沂', '371300', '13');
INSERT INTO `tbl_iot_city` VALUES ('186', '德州', '371400', '13');
INSERT INTO `tbl_iot_city` VALUES ('187', '聊城', '371500', '13');
INSERT INTO `tbl_iot_city` VALUES ('188', '滨州', '371600', '13');
INSERT INTO `tbl_iot_city` VALUES ('189', '菏泽', '371700', '13');
INSERT INTO `tbl_iot_city` VALUES ('190', '其它', '379000', '13');
INSERT INTO `tbl_iot_city` VALUES ('191', '郑州', '410100', '14');
INSERT INTO `tbl_iot_city` VALUES ('192', '开封', '410200', '14');
INSERT INTO `tbl_iot_city` VALUES ('193', '洛阳', '410300', '14');
INSERT INTO `tbl_iot_city` VALUES ('194', '平顶山', '410400', '14');
INSERT INTO `tbl_iot_city` VALUES ('195', '安阳', '410500', '14');
INSERT INTO `tbl_iot_city` VALUES ('196', '鹤壁', '410600', '14');
INSERT INTO `tbl_iot_city` VALUES ('197', '新乡', '410700', '14');
INSERT INTO `tbl_iot_city` VALUES ('198', '焦作', '410800', '14');
INSERT INTO `tbl_iot_city` VALUES ('199', '濮阳', '410900', '14');
INSERT INTO `tbl_iot_city` VALUES ('200', '许昌', '411000', '14');
INSERT INTO `tbl_iot_city` VALUES ('201', '漯河', '411100', '14');
INSERT INTO `tbl_iot_city` VALUES ('202', '三门峡', '411200', '14');
INSERT INTO `tbl_iot_city` VALUES ('203', '南阳', '411300', '14');
INSERT INTO `tbl_iot_city` VALUES ('204', '商丘', '411400', '14');
INSERT INTO `tbl_iot_city` VALUES ('205', '信阳', '411500', '14');
INSERT INTO `tbl_iot_city` VALUES ('206', '周口', '411600', '14');
INSERT INTO `tbl_iot_city` VALUES ('207', '驻马店', '411700', '14');
INSERT INTO `tbl_iot_city` VALUES ('208', '其它', '419000', '14');
INSERT INTO `tbl_iot_city` VALUES ('209', '武汉', '420100', '15');
INSERT INTO `tbl_iot_city` VALUES ('210', '黄石', '420200', '15');
INSERT INTO `tbl_iot_city` VALUES ('211', '十堰', '420300', '15');
INSERT INTO `tbl_iot_city` VALUES ('212', '宜昌', '420500', '15');
INSERT INTO `tbl_iot_city` VALUES ('213', '襄阳', '420600', '15');
INSERT INTO `tbl_iot_city` VALUES ('214', '鄂州', '420700', '15');
INSERT INTO `tbl_iot_city` VALUES ('215', '荆门', '420800', '15');
INSERT INTO `tbl_iot_city` VALUES ('216', '孝感', '420900', '15');
INSERT INTO `tbl_iot_city` VALUES ('217', '荆州', '421000', '15');
INSERT INTO `tbl_iot_city` VALUES ('218', '黄冈', '421100', '15');
INSERT INTO `tbl_iot_city` VALUES ('219', '咸宁', '421200', '15');
INSERT INTO `tbl_iot_city` VALUES ('220', '随州', '421300', '15');
INSERT INTO `tbl_iot_city` VALUES ('221', '恩施', '422800', '15');
INSERT INTO `tbl_iot_city` VALUES ('222', '其它', '429000', '15');
INSERT INTO `tbl_iot_city` VALUES ('223', '长沙', '430100', '16');
INSERT INTO `tbl_iot_city` VALUES ('224', '株洲', '430200', '16');
INSERT INTO `tbl_iot_city` VALUES ('225', '湘潭', '430300', '16');
INSERT INTO `tbl_iot_city` VALUES ('226', '衡阳', '430400', '16');
INSERT INTO `tbl_iot_city` VALUES ('227', '邵阳', '430500', '16');
INSERT INTO `tbl_iot_city` VALUES ('228', '岳阳', '430600', '16');
INSERT INTO `tbl_iot_city` VALUES ('229', '常德', '430700', '16');
INSERT INTO `tbl_iot_city` VALUES ('230', '张家界', '430800', '16');
INSERT INTO `tbl_iot_city` VALUES ('231', '益阳', '430900', '16');
INSERT INTO `tbl_iot_city` VALUES ('232', '郴州', '431000', '16');
INSERT INTO `tbl_iot_city` VALUES ('233', '永州', '431100', '16');
INSERT INTO `tbl_iot_city` VALUES ('234', '怀化', '431200', '16');
INSERT INTO `tbl_iot_city` VALUES ('235', '娄底', '431300', '16');
INSERT INTO `tbl_iot_city` VALUES ('236', '湘西', '433100', '16');
INSERT INTO `tbl_iot_city` VALUES ('237', '其它', '439000', '16');
INSERT INTO `tbl_iot_city` VALUES ('238', '广州', '440100', '17');
INSERT INTO `tbl_iot_city` VALUES ('239', '韶关', '440200', '17');
INSERT INTO `tbl_iot_city` VALUES ('240', '深圳', '440300', '17');
INSERT INTO `tbl_iot_city` VALUES ('241', '珠海', '440400', '17');
INSERT INTO `tbl_iot_city` VALUES ('242', '汕头', '440500', '17');
INSERT INTO `tbl_iot_city` VALUES ('243', '佛山', '440600', '17');
INSERT INTO `tbl_iot_city` VALUES ('244', '江门', '440700', '17');
INSERT INTO `tbl_iot_city` VALUES ('245', '湛江', '440800', '17');
INSERT INTO `tbl_iot_city` VALUES ('246', '茂名', '440900', '17');
INSERT INTO `tbl_iot_city` VALUES ('247', '肇庆', '441200', '17');
INSERT INTO `tbl_iot_city` VALUES ('248', '惠州', '441300', '17');
INSERT INTO `tbl_iot_city` VALUES ('249', '梅州', '441400', '17');
INSERT INTO `tbl_iot_city` VALUES ('250', '汕尾', '441500', '17');
INSERT INTO `tbl_iot_city` VALUES ('251', '河源', '441600', '17');
INSERT INTO `tbl_iot_city` VALUES ('252', '阳江', '441700', '17');
INSERT INTO `tbl_iot_city` VALUES ('253', '清远', '441800', '17');
INSERT INTO `tbl_iot_city` VALUES ('254', '东莞', '441900', '17');
INSERT INTO `tbl_iot_city` VALUES ('255', '中山', '442000', '17');
INSERT INTO `tbl_iot_city` VALUES ('256', '潮州', '442100', '17');
INSERT INTO `tbl_iot_city` VALUES ('257', '顺德', '442300', '17');
INSERT INTO `tbl_iot_city` VALUES ('258', '番禺', '442400', '17');
INSERT INTO `tbl_iot_city` VALUES ('259', '揭阳', '442500', '17');
INSERT INTO `tbl_iot_city` VALUES ('260', '南海', '442800', '17');
INSERT INTO `tbl_iot_city` VALUES ('261', '云浮', '442900', '17');
INSERT INTO `tbl_iot_city` VALUES ('262', '其他', '449000', '17');
INSERT INTO `tbl_iot_city` VALUES ('263', '南宁', '450100', '18');
INSERT INTO `tbl_iot_city` VALUES ('264', '柳州', '450200', '18');
INSERT INTO `tbl_iot_city` VALUES ('265', '桂林', '450300', '18');
INSERT INTO `tbl_iot_city` VALUES ('266', '梧州', '450400', '18');
INSERT INTO `tbl_iot_city` VALUES ('267', '北海', '450500', '18');
INSERT INTO `tbl_iot_city` VALUES ('268', '防城港', '450600', '18');
INSERT INTO `tbl_iot_city` VALUES ('269', '钦州', '450700', '18');
INSERT INTO `tbl_iot_city` VALUES ('270', '贵港', '450800', '18');
INSERT INTO `tbl_iot_city` VALUES ('271', '玉林', '450900', '18');
INSERT INTO `tbl_iot_city` VALUES ('272', '百色', '451000', '18');
INSERT INTO `tbl_iot_city` VALUES ('273', '贺州', '451100', '18');
INSERT INTO `tbl_iot_city` VALUES ('274', '河池', '451200', '18');
INSERT INTO `tbl_iot_city` VALUES ('275', '来宾', '451300', '18');
INSERT INTO `tbl_iot_city` VALUES ('276', '崇左', '451400', '18');
INSERT INTO `tbl_iot_city` VALUES ('277', '其它', '459000', '18');
INSERT INTO `tbl_iot_city` VALUES ('278', '海口', '460100', '19');
INSERT INTO `tbl_iot_city` VALUES ('279', '三亚', '460200', '19');
INSERT INTO `tbl_iot_city` VALUES ('280', '三沙', '460300', '19');
INSERT INTO `tbl_iot_city` VALUES ('281', '其它', '469000', '19');
INSERT INTO `tbl_iot_city` VALUES ('282', '成都', '510100', '20');
INSERT INTO `tbl_iot_city` VALUES ('283', '自贡', '510300', '20');
INSERT INTO `tbl_iot_city` VALUES ('284', '攀枝花', '510400', '20');
INSERT INTO `tbl_iot_city` VALUES ('285', '泸州', '510500', '20');
INSERT INTO `tbl_iot_city` VALUES ('286', '德阳', '510600', '20');
INSERT INTO `tbl_iot_city` VALUES ('287', '绵阳', '510700', '20');
INSERT INTO `tbl_iot_city` VALUES ('288', '广元', '510800', '20');
INSERT INTO `tbl_iot_city` VALUES ('289', '遂宁', '510900', '20');
INSERT INTO `tbl_iot_city` VALUES ('290', '内江', '511000', '20');
INSERT INTO `tbl_iot_city` VALUES ('291', '乐山', '511100', '20');
INSERT INTO `tbl_iot_city` VALUES ('292', '南充', '511300', '20');
INSERT INTO `tbl_iot_city` VALUES ('293', '眉山', '511400', '20');
INSERT INTO `tbl_iot_city` VALUES ('294', '宜宾', '511500', '20');
INSERT INTO `tbl_iot_city` VALUES ('295', '广安', '511600', '20');
INSERT INTO `tbl_iot_city` VALUES ('296', '达州', '511700', '20');
INSERT INTO `tbl_iot_city` VALUES ('297', '雅安', '511800', '20');
INSERT INTO `tbl_iot_city` VALUES ('298', '巴中', '511900', '20');
INSERT INTO `tbl_iot_city` VALUES ('299', '资阳', '512000', '20');
INSERT INTO `tbl_iot_city` VALUES ('300', '阿坝', '513200', '20');
INSERT INTO `tbl_iot_city` VALUES ('301', '甘孜', '513300', '20');
INSERT INTO `tbl_iot_city` VALUES ('302', '凉山', '513400', '20');
INSERT INTO `tbl_iot_city` VALUES ('303', '其它', '519000', '20');
INSERT INTO `tbl_iot_city` VALUES ('304', '贵阳', '520100', '21');
INSERT INTO `tbl_iot_city` VALUES ('305', '六盘水', '520200', '21');
INSERT INTO `tbl_iot_city` VALUES ('306', '遵义', '520300', '21');
INSERT INTO `tbl_iot_city` VALUES ('307', '安顺', '520400', '21');
INSERT INTO `tbl_iot_city` VALUES ('308', '毕节', '520500', '21');
INSERT INTO `tbl_iot_city` VALUES ('309', '铜仁', '520600', '21');
INSERT INTO `tbl_iot_city` VALUES ('310', '黔西', '522300', '21');
INSERT INTO `tbl_iot_city` VALUES ('311', '黔东', '522600', '21');
INSERT INTO `tbl_iot_city` VALUES ('312', '黔南', '522700', '21');
INSERT INTO `tbl_iot_city` VALUES ('313', '其它', '529000', '21');
INSERT INTO `tbl_iot_city` VALUES ('314', '昆明', '530100', '22');
INSERT INTO `tbl_iot_city` VALUES ('315', '曲靖', '530300', '22');
INSERT INTO `tbl_iot_city` VALUES ('316', '玉溪', '530400', '22');
INSERT INTO `tbl_iot_city` VALUES ('317', '保山', '530500', '22');
INSERT INTO `tbl_iot_city` VALUES ('318', '昭通', '530600', '22');
INSERT INTO `tbl_iot_city` VALUES ('319', '丽江', '530700', '22');
INSERT INTO `tbl_iot_city` VALUES ('320', '普洱', '530800', '22');
INSERT INTO `tbl_iot_city` VALUES ('321', '临沧', '530900', '22');
INSERT INTO `tbl_iot_city` VALUES ('322', '楚雄', '532300', '22');
INSERT INTO `tbl_iot_city` VALUES ('323', '红河', '532500', '22');
INSERT INTO `tbl_iot_city` VALUES ('324', '文山', '532600', '22');
INSERT INTO `tbl_iot_city` VALUES ('325', '西双版纳', '532800', '22');
INSERT INTO `tbl_iot_city` VALUES ('326', '大理', '532900', '22');
INSERT INTO `tbl_iot_city` VALUES ('327', '德宏', '533100', '22');
INSERT INTO `tbl_iot_city` VALUES ('328', '怒江', '533300', '22');
INSERT INTO `tbl_iot_city` VALUES ('329', '迪庆', '533400', '22');
INSERT INTO `tbl_iot_city` VALUES ('330', '其它', '539000', '22');
INSERT INTO `tbl_iot_city` VALUES ('331', '拉萨', '540100', '23');
INSERT INTO `tbl_iot_city` VALUES ('332', '昌都', '542100', '23');
INSERT INTO `tbl_iot_city` VALUES ('333', '山南', '542200', '23');
INSERT INTO `tbl_iot_city` VALUES ('334', '日喀则', '542300', '23');
INSERT INTO `tbl_iot_city` VALUES ('335', '那曲', '542400', '23');
INSERT INTO `tbl_iot_city` VALUES ('336', '阿里', '542500', '23');
INSERT INTO `tbl_iot_city` VALUES ('337', '林芝', '542600', '23');
INSERT INTO `tbl_iot_city` VALUES ('338', '其它', '549000', '23');
INSERT INTO `tbl_iot_city` VALUES ('339', '西安', '610100', '24');
INSERT INTO `tbl_iot_city` VALUES ('340', '铜川', '610200', '24');
INSERT INTO `tbl_iot_city` VALUES ('341', '宝鸡', '610300', '24');
INSERT INTO `tbl_iot_city` VALUES ('342', '咸阳', '610400', '24');
INSERT INTO `tbl_iot_city` VALUES ('343', '渭南', '610500', '24');
INSERT INTO `tbl_iot_city` VALUES ('344', '延安', '610600', '24');
INSERT INTO `tbl_iot_city` VALUES ('345', '汉中', '610700', '24');
INSERT INTO `tbl_iot_city` VALUES ('346', '榆林', '610800', '24');
INSERT INTO `tbl_iot_city` VALUES ('347', '安康', '610900', '24');
INSERT INTO `tbl_iot_city` VALUES ('348', '商洛', '611000', '24');
INSERT INTO `tbl_iot_city` VALUES ('349', '其它', '619000', '24');
INSERT INTO `tbl_iot_city` VALUES ('350', '兰州', '620100', '25');
INSERT INTO `tbl_iot_city` VALUES ('351', '嘉峪关', '620200', '25');
INSERT INTO `tbl_iot_city` VALUES ('352', '金昌', '620300', '25');
INSERT INTO `tbl_iot_city` VALUES ('353', '白银', '620400', '25');
INSERT INTO `tbl_iot_city` VALUES ('354', '天水', '620500', '25');
INSERT INTO `tbl_iot_city` VALUES ('355', '武威', '620600', '25');
INSERT INTO `tbl_iot_city` VALUES ('356', '张掖', '620700', '25');
INSERT INTO `tbl_iot_city` VALUES ('357', '平凉', '620800', '25');
INSERT INTO `tbl_iot_city` VALUES ('358', '酒泉', '620900', '25');
INSERT INTO `tbl_iot_city` VALUES ('359', '庆阳', '621000', '25');
INSERT INTO `tbl_iot_city` VALUES ('360', '定西', '621100', '25');
INSERT INTO `tbl_iot_city` VALUES ('361', '陇南', '621200', '25');
INSERT INTO `tbl_iot_city` VALUES ('362', '临夏', '622900', '25');
INSERT INTO `tbl_iot_city` VALUES ('363', '甘南', '623000', '25');
INSERT INTO `tbl_iot_city` VALUES ('364', '其它', '629000', '25');
INSERT INTO `tbl_iot_city` VALUES ('365', '西宁', '630100', '26');
INSERT INTO `tbl_iot_city` VALUES ('366', '海东', '630200', '26');
INSERT INTO `tbl_iot_city` VALUES ('367', '海北', '632200', '26');
INSERT INTO `tbl_iot_city` VALUES ('368', '黄南', '632300', '26');
INSERT INTO `tbl_iot_city` VALUES ('369', '海南', '632500', '26');
INSERT INTO `tbl_iot_city` VALUES ('370', '果洛', '632600', '26');
INSERT INTO `tbl_iot_city` VALUES ('371', '玉树', '632700', '26');
INSERT INTO `tbl_iot_city` VALUES ('372', '海西', '632800', '26');
INSERT INTO `tbl_iot_city` VALUES ('373', '其它', '639000', '26');
INSERT INTO `tbl_iot_city` VALUES ('374', '银川', '640100', '27');
INSERT INTO `tbl_iot_city` VALUES ('375', '石嘴山', '640200', '27');
INSERT INTO `tbl_iot_city` VALUES ('376', '吴忠', '640300', '27');
INSERT INTO `tbl_iot_city` VALUES ('377', '固原', '640400', '27');
INSERT INTO `tbl_iot_city` VALUES ('378', '中卫', '640500', '27');
INSERT INTO `tbl_iot_city` VALUES ('379', '其它', '649000', '27');
INSERT INTO `tbl_iot_city` VALUES ('380', '乌鲁木齐', '650100', '28');
INSERT INTO `tbl_iot_city` VALUES ('381', '克拉玛依', '650200', '28');
INSERT INTO `tbl_iot_city` VALUES ('382', '吐鲁番', '652100', '28');
INSERT INTO `tbl_iot_city` VALUES ('383', '哈密', '652200', '28');
INSERT INTO `tbl_iot_city` VALUES ('384', '昌吉', '652300', '28');
INSERT INTO `tbl_iot_city` VALUES ('385', '博尔塔拉', '652700', '28');
INSERT INTO `tbl_iot_city` VALUES ('386', '巴音郭楞', '652800', '28');
INSERT INTO `tbl_iot_city` VALUES ('387', '阿克苏', '652900', '28');
INSERT INTO `tbl_iot_city` VALUES ('388', '克孜勒苏柯尔克孜', '653000', '28');
INSERT INTO `tbl_iot_city` VALUES ('389', '喀什', '653100', '28');
INSERT INTO `tbl_iot_city` VALUES ('390', '和田', '653200', '28');
INSERT INTO `tbl_iot_city` VALUES ('391', '伊犁哈萨克', '654000', '28');
INSERT INTO `tbl_iot_city` VALUES ('392', '塔城', '654200', '28');
INSERT INTO `tbl_iot_city` VALUES ('393', '阿勒泰', '654300', '28');

-- ----------------------------
-- Table structure for `tbl_iot_dev_group_rel`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_dev_group_rel`;
CREATE TABLE `tbl_iot_dev_group_rel` (
  `groupid` varchar(255) NOT NULL,
  `deviceid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupid`,`deviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_dev_group_rel
-- ----------------------------
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('', '012ebb90ec4a2791');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('', '752535a51780ab95');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('', 'a7a9dec3a97bfd45');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('', 'bb0c04b8413d21a5');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('14', '9f41e1aa1c201e44');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('19', '33315ae60aa11694');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('36', 'f6f7e394de612113');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('37', '212b806b56dc11f9');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('37', '2b656123127e979d');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('37', '6f42ddd4c273ef63');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('37', '948803c59038e574');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('37', 'f3c846c8c22a261d');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('37', '{{entry.id}}');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('38', '7d3a4ff129ecd993');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('39', 'b138b16ea93b3bc6');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('41', '05bf3cdca518ef4e');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('41', '066bafd19b14c808');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('41', '242ff3c54a73961f');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('41', '39cd75b0398b9f96');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('41', '810cfb1ad6479941');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('41', 'b3b20d3de658b642');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('41', 'b4ca73c6a9a19728');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('42', 'baa6fb847328b984productids[]=uYOO1M8qi3B40Djr');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('44', '7e6f2e82a05da446');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('44', '8a7f92236ca35437');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('45', '0cb61dde4393793e');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('45', '0df4f9aceef1fe2a');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('49', '084a8e79116f7d8f');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('49', '0bc83a63f2acb4f7');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('52', '2052bf1c2514beed');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('52', '3fb1a181ed294d14');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('6', '1');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('6', '2');
INSERT INTO `tbl_iot_dev_group_rel` VALUES ('6', '4');

-- ----------------------------
-- Table structure for `tbl_iot_device`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_device`;
CREATE TABLE `tbl_iot_device` (
  `id` varchar(16) NOT NULL,
  `name` varchar(70) NOT NULL DEFAULT '',
  `basename` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `sceneid` varchar(16) DEFAULT NULL COMMENT '场景ID',
  `productid` varchar(16) NOT NULL COMMENT '所属产品id',
  `protocol` tinyint(4) NOT NULL COMMENT '协议',
  `mac` varchar(20) NOT NULL COMMENT 'mac地址',
  `groupid` varchar(16) DEFAULT NULL COMMENT '所属设备组',
  `province` char(7) NOT NULL,
  `city` char(7) NOT NULL,
  `address` varchar(125) NOT NULL,
  `tlsswitch` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'tsl开关',
  `tlsprotocol` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'TLS协议版本',
  `tlsencrypt` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'TSL加密算法',
  `tlscheck` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'TLS校验算法',
  `description` varchar(256) NOT NULL COMMENT '设备描述',
  `confpath` varchar(64) NOT NULL,
  `iotmodelconf` varchar(565) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL,
  `identification` varchar(64) NOT NULL COMMENT '设备唯一表示',
  `type` tinyint(5) NOT NULL DEFAULT '1' COMMENT '设备类型，1：网关，2：thing物体',
  `thing_id` varchar(64) DEFAULT NULL COMMENT '场景下设备关联的thing',
  `llegal_mac` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否是黑名单mac,默认为0代表不是',
  `longitude` varchar(50) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(50) DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`),
  KEY `index_mac` (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_device
-- ----------------------------
INSERT INTO `tbl_iot_device` VALUES ('00053ca9db567f30', '560', '56', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', '3AGb0vqJB43UH09Z', '2', '55:55:55:55:55:56', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/00053ca9db567f30.conf', '{\"group_id\":\"\",\"product\":{\"product_id\":\"3AGb0vqJB43UH09Z\",\"thingTypes\":[{\"conf\":\"\"},{\"conf\":null}],\"rules\":[{\"rule_id\":\"nFv4AOOj9hFhNxv7\",\"conditions\":[{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"alias\":\"Led_OnOff\",\"key\":\"switch\",\"value\":\"1\"},{\"thing_id\":\"uf4UbV4cpyxwZ6We\",\"alias\":\"Get_Photo\",\"key\":\"Photo\",\"value\":\"5\"},{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"alias\":\"Led_Init\",\"key\":\"switch\",\"value\":\"3\"}],\"target\":{\"device_id\":\"\",\"thing_id\":\"\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"},\"action\":{\"\":{\"\":\"3\"}}}]},\"scene\":[],\"device_id\":\"00053ca9db567f30\"}', '', '2016-12-15 17:16:49', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('00854425647896d3', '22', '22', '', '', '', '0', '22', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 11:30:48', 'f6f8b9623ca1623f', '2', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('012ebb90ec4a2791', 'z98', 'z98', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '3Nj6wNEszDPw74v1', '3', '55:55:55:55:55:98', '', '140000', '140200', '山西省大同', '1', '2', '1', '1', 'ggg', './Uploads/miaiotconf/20170208/012ebb90ec4a2791.conf', '', '', '2017-02-08 16:31:42', 'd8fdd0214ca26e78f572ef12cccfcbbb', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('049ea68d3ffb4653', '123', '123', '', '1da49d47', '', '0', '33:33:33:33:33:37', '', '', '', '', '0', '0', '0', '0', '3545', '', '', '', '2016-12-15 18:47:10', '7b9a9097ef3e5cd2', '1', '13', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('05bf3cdca518ef4e', '1102', '1102', '', 'fce2f3b9', '', '0', '00:00:00:00:11:02', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 15:07:17', '722487a065dcdb36', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('066bafd19b14c808', '1101', '1101', '', 'fce2f3b9', '', '0', '00:00:00:00:11:01', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 15:06:35', '3297c9c141929b4e', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0733cb83afafbbbe', '12345', '12345', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'X5FIRAe1kpqxInhh', '2', '00:08:09:09:09:12', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/0733cb83afafbbbe.conf', '', '', '2017-03-01 16:20:06', '1ed5405a475a187e543a33d47b9783da', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('084a8e79116f7d8f', '20', '20', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '9472a99064f22d77', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:55:20', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170214/084a8e79116f7d8f.conf', '', '', '2017-02-14 11:24:10', 'f488508436331cf55b9920baee519f4a', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('08b7c5f55b15e78f', 'xxx1', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', '23423545', 'hnVwHtezJeiesICC', '0', '00:50:56:C0:00:71', '2', '420000', '420100', '湖北省武汉', '0', '0', '0', '0', 'xxxxyyyyyxxxxx', './Uploads/miaiotconf/08b7c5f55b15e78f.conf', '{\"group_id\":\"2\",\"product_id\":\"hnVwHtezJeiesICC\",\"things\":[{\"thing_id\":\"1zrxpiqddz4YHvp1\",\"interval\":0,\"dynlib_path\":\"\\/lib\\/b.so\",\"index\":0,\"type\":1,\"functions\":[{\"name\":\"ccc\",\"alias\":\"cccc\",\"type\":0,\"output\":[{\"name\":\"xxx\",\"tag\":\"yy\",\"datatype\":1,\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"xxx\",\"tag\":\"aa\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}],\"input\":[{\"name\":\"xxx\",\"tag\":\"yy\",\"datatype\":1,\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"xxx\",\"tag\":\"aa\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}],\"rules\":[{\"rule_id\":\"bMIiUCx', '', '2016-11-24 11:48:35', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0a5238a5236662cb', 'ap92', 'ap92', '', '428637b3', '0woIM5rzh3g64xL8', '2', '99:99:99:99:99:92', '19', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20161219/0a5238a5236662cb.conf', '{\"group_id\":\"19\",\"product\":{\"product_id\":\"0woIM5rzh3g64xL8\",\"thingTypes\":[{\"id\":\"2efde7b788e41bf6\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":2,\"functions\":[{\"name\":\"led_init\",\"alias\":\"led_init\",\"type\":0,\"input\":[{\"name\":\"dd\",\"tag\":\"d\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"led_switch\",\"type\":1,\"input\":[{\"name\":\"gh\",\"tag\":\"h\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}],\"rules\":[{\"rule_id\":\"vuiRQWzQnL3FpjJ4\",\"conditions\":[{\"thingType\":\"SL8NyIejJMjAUHnk\",\"alias\":\"led_init\",\"key\":\"dd\",\"identific', '', '2016-12-19 14:09:25', 'dd94fdab200d6dde', '1', '2efde7b788e41bf6', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0bc83a63f2acb4f7', '52', '52', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '9472a99064f22d77', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:55:52', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170214/0bc83a63f2acb4f7.conf', '', '', '2017-02-14 11:21:20', 'ac885bbfa830dbfde644a58a0e7b4051', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0c0a9c30447d813d', '66', '66', '', '4', '', '0', '66:66:66:66:66', '', '', '', '', '0', '0', '0', '0', '4', '', '', '', '2016-12-16 14:19:29', '24386162b15a988f', '1', '7fc0cd6e14c9dcc1', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0c3ab7f2bc84ac3d', 'ap91', 'ap91', '', '428637b3', '0woIM5rzh3g64xL8', '2', '99:99:99:99:99:91', '19', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20161219/0c3ab7f2bc84ac3d.conf', '{\"group_id\":\"19\",\"product\":{\"product_id\":\"0woIM5rzh3g64xL8\",\"thingTypes\":[{\"id\":\"2efde7b788e41bf6\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":2,\"functions\":[{\"name\":\"led_init\",\"alias\":\"led_init\",\"type\":0,\"input\":[{\"name\":\"dd\",\"tag\":\"d\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"led_switch\",\"type\":1,\"input\":[{\"name\":\"gh\",\"tag\":\"h\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}],\"rules\":[{\"rule_id\":\"vuiRQWzQnL3FpjJ4\",\"conditions\":[{\"thingType\":\"SL8NyIejJMjAUHnk\",\"alias\":\"led_init\",\"key\":\"dd\",\"identific', '', '2016-12-19 14:02:14', 'b47bf1a75e2ee277', '1', '2efde7b788e41bf6', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0ca7f1efe63ec56a', 'yefengOnlythingDevice11', 'yefengOnlythingDevice11', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '3s1xRCzUyTojT4zL', '2', '10:09:09:09:09:1b', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170307/0ca7f1efe63ec56a.conf', '', '', '2017-03-07 14:29:56', 'b264333086bc37cc8a5d012213de8ee4', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0cb61dde4393793e', 'bug41', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/0cb61dde4393793e.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"0cb61dde4393793e\"}', '', '2016-11-29 17:02:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0df4f9aceef1fe2a', 'bug52', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/0df4f9aceef1fe2a.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"0df4f9aceef1fe2a\"}', '', '2016-11-29 17:02:01', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('0ece94dc94fb157b', '1', '1', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'b19db2731e25e49d', 'Togu8BPT9Cqp9OeH', '2', '2C:AD:00:88:00:00', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170306/0ece94dc94fb157b.conf', '', '', '2017-03-06 14:21:22', 'ddfa4f2074801033fad136e47733e5d6', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1021d81216353bbc', 'bug75', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:06:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/1021d81216353bbc.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"1021d81216353bbc\"}', '', '2016-11-29 17:02:06', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('120e332d78547f8d', '434', '434', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'I9JP2CoTtLMHpc3a', '2', '58:91:CF:37:49:11', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170228/120e332d78547f8d.conf', '', '', '2017-02-28 16:28:33', 'd85436594b4b040d4c1707460fb06026', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('126674156d9fc4f7', 'bug74', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:05:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/126674156d9fc4f7.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"126674156d9fc4f7\"}', '', '2016-11-29 17:02:06', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('13bb4015e43c8d91', '5222', '5222', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'DqTeFbjVVl8m7P7X', '2', '50:50:50:50:52:52', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/201703/13bb4015e43c8d91.json', '', '', '2017-03-17 15:52:08', '24bb606529399bc6c26a7c13844624bc', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('152349ad0a9e39ed', '45', '45', '', '4d36c4a5', '', '0', '45:45:45:45:45:45', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-27 18:38:40', '4fd5c274972a3f70', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('16c1005493628665', 'xxyy', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'hnVwHtezJeiesICC', '0', '00:50:56:C0:00:70', '2', '420000', '420100', '湖北省武汉', '0', '0', '0', '0', 'xxxxyyyyy', './Uploads/miaiotconf/16c1005493628665.conf', '{\"group_id\":\"2\",\"product_id\":\"hnVwHtezJeiesICC\",\"things\":[{\"thing_id\":\"1zrxpiqddz4YHvp1\",\"interval\":0,\"dynlib_path\":\"\\/lib\\/b.so\",\"index\":0,\"type\":1,\"functions\":[{\"name\":\"ccc\",\"alias\":\"cccc\",\"type\":0,\"output\":[{\"name\":\"xxx\",\"tag\":\"yy\",\"datatype\":1,\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"xxx\",\"tag\":\"aa\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}],\"input\":[{\"name\":\"xxx\",\"tag\":\"yy\",\"datatype\":1,\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"xxx\",\"tag\":\"aa\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}],\"rules\":[{\"rule_id\":\"bMIiUCx', '', '2016-11-24 11:48:35', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('18d1c1f877f17884', 'bug42', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/18d1c1f877f17884.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"18d1c1f877f17884\"}', '', '2016-11-29 17:02:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1a10ebdcf21b3106', 'thing', 'thing', '', '', '', '0', '111111111111111', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 11:27:02', '0a5df9c404c73a7b', '2', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1a6a9df2ee31c6a1', 'bug22', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:03:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/1a6a9df2ee31c6a1.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"1a6a9df2ee31c6a1\"}', '', '2016-11-29 17:01:56', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1ae1571ba3c01402', '12', '12', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'kOU4IIbWmvhlfRmA', '2', '12:12:12:12:12:12', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201704/1ae1571ba3c01402.json', '', '', '2017-04-13 18:29:41', '4f832430c57e42a9a63ad0603c2deecf', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1b17e956a25d1c97', 'coffe888880', '', '', '', 'E3AppulYVL4dN8ag', '2', '00:08:d1:d1:00:1f', '36', '130000', '130100', '河北省石家庄', '0', '0', '0', '0', '', './Uploads/miaiotconf/1b17e956a25d1c97.conf', '{\"group_id\":\"36\",\"product\":{\"id\":\"E3AppulYVL4dN8ag\",\"thingTypes\":[{\"id\":\"f5fff40f8a124506\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"LED_OPERATION\",\"alias\":\"led_gpio_operation\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"C8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"LED_INIT\",\"alias\":\"led_gpio_init\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"GPIO_STATE\",\"alias\":\"led_gpio_state\",\"type\":1,\"output\":[{\"name\":\"STATE\",\"tag\":\"B8\",\"datatype\":0,\"', '', '2016-12-26 15:30:44', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1bad3b128906a6cc', 'bug58', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/1bad3b128906a6cc.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"1bad3b128906a6cc\"}', '', '2016-11-29 17:02:04', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1c55dad38f61ea19', 'bug18', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:09:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/1c55dad38f61ea19.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"1c55dad38f61ea19\"}', '', '2016-11-29 17:01:55', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1cf593be9efc2995', '12320', '1232', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:51:29', '', '130000', '130000', '河北省所有', '0', '0', '3', '2', '23', './Uploads/miaiotconf/20170228/1cf593be9efc2995.conf', '', '', '2017-02-28 10:32:49', 'c6a245b8e7dab3373ee11f9c242a839f', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1edaf0630fb5066b', 'bug61', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:02:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/1edaf0630fb5066b.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"1edaf0630fb5066b\"}', '', '2016-11-29 17:02:04', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1f4e2887139a2288', 'bug40', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/1f4e2887139a2288.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"1f4e2887139a2288\"}', '', '2016-11-29 17:01:59', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1f5906d6baa3d8ff', 'bug11', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:02:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/1f5906d6baa3d8ff.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"1f5906d6baa3d8ff\"}', '', '2016-11-29 17:01:54', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('1fc67975467c02c7', 'zz0', 'zz', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', '3Nj6wNEszDPw74v1', '2', '55:55:55:55:55:99', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170208/1fc67975467c02c7.conf', '', '', '2017-02-08 14:37:01', '925a8450ab46723ddcc9b76e53b4c561', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2', '设备2', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', '1', '0', 'd4:ae:52:c0:47:33', '2', '', '', '', '0', '0', '0', '0', '', '', '', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('203c8628b7e0017f', 'bug78', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:09:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/203c8628b7e0017f.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"203c8628b7e0017f\"}', '', '2016-11-29 17:02:07', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2052bf1c2514beed', '02', '02', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '9472a99064f22d77', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:55:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170210/2052bf1c2514beed.conf', '', '', '2017-02-10 14:54:27', 'cc14f823002734bcb33c084891ee4ac4', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('211c2918f26bbc2b', 'coffe5550', '', '', '', 'E3AppulYVL4dN8ag', '0', '00:08:d1:d1:00:1a', '36', '130000', '130100', '河北省石家庄', '0', '0', '0', '0', '', './Uploads/miaiotconf/211c2918f26bbc2b.conf', '{\"group_id\":\"36\",\"product\":{\"id\":\"E3AppulYVL4dN8ag\",\"thingTypes\":[{\"id\":\"f5fff40f8a124506\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"LED_OPERATION\",\"alias\":\"led_gpio_operation\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"C8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"LED_INIT\",\"alias\":\"led_gpio_init\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"GPIO_STATE\",\"alias\":\"led_gpio_state\",\"type\":1,\"output\":[{\"name\":\"STATE\",\"tag\":\"B8\",\"datatype\":0,\"', '', '2016-12-26 11:33:36', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('212b806b56dc11f9', 'TEST1', 'TEST1', '', '', '', '0', '00000000000000000111', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 11:12:25', 'ff64a4c6959542ae', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('23d9ac52dbbf2ea5', '1234', '1234', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'X5FIRAe1kpqxInhh', '2', '00:08:09:09:09:00', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170228/23d9ac52dbbf2ea5.conf', '', '', '2017-02-28 17:13:41', 'ce1d919f550e4e2afc60846ed46052dc', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('23fe16c86c6b08e7', 'bug84', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/23fe16c86c6b08e7.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"23fe16c86c6b08e7\"}', '', '2016-11-29 17:02:08', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('242ff3c54a73961f', '99', '99', '', 'f1697d99', '', '0', '99:99:99:99:99:99', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-16 16:20:20', '668809e5e1fff678', '1', '7fc0cd6e14c9dcc1', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('249931b595a0c989', 'fdsafdsafdsf', 'fdsafdsafdsf', '', 'lb58sEq6', '', '0', 'fdsafdasf', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2017-01-05 11:40:25', '86170a9b9b91c307', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2516de6488508900', 'bug62', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:03:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/2516de6488508900.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"2516de6488508900\"}', '', '2016-11-29 17:02:04', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('25501fbd3537d3e3', 'ffffddddd0', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', '3AGb0vqJB43UH09Z', '0', '00:0C:43:76:20:88', '1', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/25501fbd3537d3e3.conf', '{\"group_id\":\"1\",\"product_id\":\"3AGb0vqJB43UH09Z\",\"things\":[{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"interval\":0,\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":null,\"alias\":null,\"type\":null,\"output\":[{\"name\":\"switch\",\"tag\":\"A0\",\"datatype\":\"2\",\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":null,\"alias\":null,\"type\":null,\"input\":[{\"name\":\"switch\",\"tag\":\"A1\",\"datatype\":\"1\",\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"color\",\"tag\":\"A0\",\"datatype\":\"0\",\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"state\",\"tag\":\"80\",\"datatype\":\"0\",\"minValue\"', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('26804a26226d9949', 'bug97', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/26804a26226d9949.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"26804a26226d9949\"}', '', '2016-11-29 17:02:10', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2720c882d836168d', 'bug85', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/2720c882d836168d.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"2720c882d836168d\"}', '', '2016-11-29 17:02:08', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2867acec6496b875', 'bug72', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:03:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/2867acec6496b875.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"2867acec6496b875\"}', '', '2016-11-29 17:02:06', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2b656123127e979d', 'test12', 'test12', '', 'b19db273', '', '0', '00:00:00:00:00:11', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 15:02:38', '1116da21fc725fb2', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2e1d682b77d84421', 'yefeng_device1', 'yefeng_device1', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'kaM2vY1fxNoRUxIJ', '2', '11:09:05:09:09:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170307/2e1d682b77d84421.conf', '', '', '2017-03-07 11:13:51', 'ccd6312856827c3ffbf20dc0f9cc44d0', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2e91040a40ded76c', '234234324', '234234324', '', 'ec24d3fea378c674', '', '0', '34234324', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-27 20:49:26', 'f96db28e16f42fc1', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('2e9cb5a880ac2484', 'test', 'test', '', '', '', '0', '00:11:22:33:44:55', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-21 10:43:19', 'f3f9e13641a94527', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3214053e6c49b38b', '1', '1', '540ee87a-ac89-4eee-8246-562a627c7e1b', '', 'Togu8BPT9Cqp9OeH', '2', '00:00:4C:4F:4F:51', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201704/3214053e6c49b38b.json', '', '', '2017-04-11 15:22:56', '3e7c8044d0acc2109f2140d9c8aec415', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('32f05dce26f9c91d', 'MTK_CXF_001', 'MTK_CXF_001', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', '', 'xRq8tmygs4pyHeH4', '2', '5C:CF:7F:1B:47:5C', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170308/32f05dce26f9c91d.conf', '', '', '2017-03-08 15:11:12', 'd2cbc419fbe1d8f067f4f451d79e51aa', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('33315ae60aa11694', '01010', '0101', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'erds00fN8VRn5aKy', '2', '00:08:09:01:01:01', '19', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170111/33315ae60aa11694.conf', '', '', '2017-01-11 11:23:11', '07daa6d4e52c3ff29be471e2f6f540a5', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('343b8c2a7b0624f8', 'as', 'as', '', '', '', '0', 'asd', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2017-01-05 16:19:03', '2653bc33f17ec4b0', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('390e8b5579fe8139', 'bug35', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/390e8b5579fe8139.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"390e8b5579fe8139\"}', '', '2016-11-29 17:01:59', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('39cd75b0398b9f96', 'Riva_devive0', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'fmcCmlBdyfblQWjN', '3', '00:01:6C:06:3E:37', '', '', '', '', '0', '0', '0', '0', '', './Uploads/miaiotconf/39cd75b0398b9f96.conf', '{\"group_id\":\"\",\"product_id\":\"fmcCmlBdyfblQWjN\",\"things\":[],\"rules\":[],\"device_id\":\"39cd75b0398b9f96\"}', '', '2016-11-28 10:04:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3cc48546116383fa', 'tthash', 'tthash', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'xZKjTQyUjcGCXNGR', '2', '10:09:09:09:09:1c', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170308/3cc48546116383fa.conf', '', '', '2017-03-08 10:16:46', '85807a01ff487d9d5a1c8133cf4fe716', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3d31a63f1be88342', 'ESP8266_DEV', 'ESP8266_DEV', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', '', 'j3FHsGF3eF2HfsgY', '2', '5C:CF:7F:0F:B9:C0', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201704/3d31a63f1be88342.json', '', '', '2017-04-19 13:49:38', 'c2a61b5f8f5ded513939aea283cd6f40', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3db8e85f490bc34f', 'bug71', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:02:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/3db8e85f490bc34f.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"3db8e85f490bc34f\"}', '', '2016-11-29 17:02:06', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3e12ba8cd8573a7e', 'thing', 'thing', '', '', '', '0', '111111111111', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 11:28:23', '8363656697e5d84d', '2', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3e3956a7b4e0446d', 'bug56', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/3e3956a7b4e0446d.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"3e3956a7b4e0446d\"}', '', '2016-11-29 17:02:03', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3f634921d104cc0a', 'bug54', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/3f634921d104cc0a.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"3f634921d104cc0a\"}', '', '2016-11-29 17:02:02', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3fb1a181ed294d14', '1010', '1010', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:52:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/3fb1a181ed294d14.conf', '', '', '2017-03-01 16:14:09', 'd08951e5282a51f42bb02f04a0108d3b', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('3fb969558f0573b7', '网关测试', '网关测试', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', '', '76P3JUwb1ylJbF1e', '2', '2C:AD:13:00:6E:45', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170214/3fb969558f0573b7.conf', '', '', '2017-02-14 15:25:59', '949831aa38c80db3afa8a92824bba10a', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('4', '设备4', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', '1', '0', 'd4:ae:52:c0:47:32', '4', '', '', '', '0', '0', '0', '0', '', '', '', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('40aa9d13031be26d', 'bug23', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:04:00:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/40aa9d13031be26d.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"40aa9d13031be26d\"}', '', '2016-11-29 17:01:56', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('41ea96e6dae3b700', '555', '555', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '6SeZzw94', 'b9ylMNfxbjFHRP3X', '2', '55:55:55:55:55:10', '19', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20161221/41ea96e6dae3b700.conf', '{\"group_id\":\"19\",\"product\":{\"id\":\"b9ylMNfxbjFHRP3X\",\"thingTypes\":[{\"id\":\"61fab8e179566d03\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_gpio_operation\",\"alias\":\"LED_OPERATION\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":1,\"maxValue\":11,\"defValue\":0}]},{\"name\":\"led_gpio_init\",\"alias\":\"LED_INIT\",\"type\":0,\"input\":[{\"name\":\"INIT\",\"tag\":\"a8\",\"datatype\":0,\"minValue\":1,\"maxValue\":11,\"defValue\":0}]}]}],\"rules\":[{\"rule_id\":\"afGIphZrFycjyVza\",\"conditions\":[{\"thingType\":\"JkZDTs6ZZVF151zP\",\"alias\":\"LED_INI', '', '2016-12-21 15:45:07', 'ba7d6d213955a785', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('44cc693f74a85150', 'ap72', 'ap72', '23301403-8d90-4d9e-a35e-20b7d45b9116', '23423545', 'u9g3x4zqGrvzRCkR', '2', '00:50:56:C0:00:72', '25', '430000', '433100', '湖南省湘西', '0', '0', '3', '2', '43434', './Uploads/miaiotconf/44cc693f74a85150.conf', '{\"group_id\":\"25\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"44cc693f74a85150\"}', '', '2016-11-28 17:57:39', '42caf6d8f38fda83', '1', '7fc0cd6e14c9dcc1', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('465ecc423d16a87f', 'bug34', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/465ecc423d16a87f.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"465ecc423d16a87f\"}', '', '2016-11-29 17:01:58', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('47df29b8565f5fca', '03', '03', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '9472a99064f22d77', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:55:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170210/47df29b8565f5fca.conf', '', '', '2017-02-10 15:00:17', 'e11747a82a49cf0929774098529b7a32', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('48218ababb039e6b', 'ddff0123', 'ddff', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'hnVwHtezJeiesICC', '0', '00:0C:43:76:20:67', '', '440000', '441900', '广东省东莞', '1', '0', '2', '2', '', './Uploads/miaiotconf/48218ababb039e6b.conf', '{\"group_id\":\"3\",\"product_id\":\"hnVwHtezJeiesICC\",\"things\":[{\"thing_id\":\"1zrxpiqddz4YHvp1\",\"sequeue\":0,\"interval\":0,\"dynlib_path\":\".\\/Uploads\\/dll\\/2016-11-14\\/b.so\",\"index\":null,\"type\":\"1\"}],\"rules\":[],\"device_id\":\"48218ababb039e6b\"}', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('4a6722236d302361', 'bug76', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:07:00:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/4a6722236d302361.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"4a6722236d302361\"}', '', '2016-11-29 17:02:07', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('4b637b78b3c786ef', '人天天', '人天天', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'CCLcawncdMTvaNG0', '3', '0e:0e:Ee:Ee:05:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/201704/4b637b78b3c786ef.json', '', '', '2017-04-07 10:51:36', '8ad9d638281ab7bd0e0e8b44f7119845', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('4e88bf1b783e6126', '11111', '11111', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', '', 'xZKjTQyUjcGCXNGR', '2', '00:08:d2:00:00:11', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170313/4e88bf1b783e6126.conf', '', '', '2017-03-13 16:15:11', '8ef3d505ac4a0a59f56de753e3b650d8', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('508d9d3141c8d0f4', 'bug88', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/508d9d3141c8d0f4.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"508d9d3141c8d0f4\"}', '', '2016-11-29 17:02:09', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('52170c0c2d48161e', 'bug66', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:07:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/52170c0c2d48161e.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"52170c0c2d48161e\"}', '', '2016-11-29 17:02:05', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('535b3a796b480716', 'bug27', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:08:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/535b3a796b480716.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"535b3a796b480716\"}', '', '2016-11-29 17:01:57', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('54561d63e62dbdb1', '003', '003', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'qxBmW9UiVfbtPq33', '2', '11:11:11:11:01:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170112/54561d63e62dbdb1.conf', '', '', '2017-01-12 15:53:50', 'b31ab9910d0d6806fef49d688cd3a858', '2', '2f12481eeec84e29', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5587ab2d9a6b727f', 'bug83', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/5587ab2d9a6b727f.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"5587ab2d9a6b727f\"}', '', '2016-11-29 17:02:08', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('55c881f5cfde02b3', 'bug33', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/55c881f5cfde02b3.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"55c881f5cfde02b3\"}', '', '2016-11-29 17:01:58', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5a1c3a2f89cbf647', 'bug59', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/5a1c3a2f89cbf647.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"5a1c3a2f89cbf647\"}', '', '2016-11-29 17:02:04', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5a52f82213c6d1a9', 'bug25', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:06:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/5a52f82213c6d1a9.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"5a52f82213c6d1a9\"}', '', '2016-11-29 17:01:57', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5ae364d0b045bb46', 'bug9', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/5ae364d0b045bb46.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"5ae364d0b045bb46\"}', '', '2016-11-29 17:01:53', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5e15544f1eeddbcd', 'bug55', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/5e15544f1eeddbcd.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"5e15544f1eeddbcd\"}', '', '2016-11-29 17:02:02', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5f02dd8babacf3e3', 'bug60', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:01:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/5f02dd8babacf3e3.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"5f02dd8babacf3e3\"}', '', '2016-11-29 17:02:04', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5f3c65da46f42dec', '50', '50', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'BM1lhkq8AyZhPHME', '2', '50:50:50:50:50:50', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170303/5f3c65da46f42dec.conf', '', '', '2017-03-03 10:40:27', '15c847216b5102b02855c8abb85b10cd', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('5f3f9bb4acf7fc03', '23232', '23232', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', '', '3s1xRCzUyTojT4zL', '2', '00:08:d2:00:1a:11', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170313/5f3f9bb4acf7fc03.conf', '', '', '2017-03-13 16:15:53', '4ae3bb7999c88c69d54ca28f3f7f02a9', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('645724a433f656f2', '0104', '0104', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'ERbZe2j3', 'erds00fN8VRn5aKy', '2', '11:11:11:11:01:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170112/645724a433f656f2.conf', '', '', '2017-01-12 16:07:11', 'cd6d07d4556e0076e12c16034e86a3a4', '2', '2f12481eeec84e29', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('664fbf6366829c17', 'bug37', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/664fbf6366829c17.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"664fbf6366829c17\"}', '', '2016-11-29 17:01:59', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('6807f84a746d14a2', '380', '38', '', '', '3AGb0vqJB43UH09Z', '2', '33:33:33:33:33:38', '', '100000', '100000', '所有', '0', '0', '3', '2', '343434', './Uploads/miaiotconf/6807f84a746d14a2.conf', '{\"group_id\":\"\",\"product\":{\"product_id\":\"3AGb0vqJB43UH09Z\",\"thingTypes\":[\"\",null],\"rules\":[{\"rule_id\":\"nFv4AOOj9hFhNxv7\",\"conditions\":[{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"alias\":\"Led_OnOff\",\"key\":\"switch\",\"value\":\"1\"},{\"thing_id\":\"uf4UbV4cpyxwZ6We\",\"alias\":\"Get_Photo\",\"key\":\"Photo\",\"value\":\"5\"},{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"alias\":\"Led_Init\",\"key\":\"switch\",\"value\":\"3\"}],\"target\":{\"device_id\":\"\",\"thing_id\":\"\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"},\"action\":{\"\":{\"\":\"3\"}}}]},\"scene\":[],\"device_id\":\"6807f84a746d14a2\"}', '', '2016-12-16 09:52:38', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('68e52fbcd6913cfd', 'bug30', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/68e52fbcd6913cfd.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"68e52fbcd6913cfd\"}', '', '2016-11-29 17:01:58', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('6919986e98c476d9', 'testtt', 'testtt', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'CCLcawncdMTvaNG0', '3', '0e:0e:Ee:Ee:05:01', '', '110000', '120000', '天津', '1', '0', '0', '0', '', './Uploads/miaiotconf/201704/6919986e98c476d9.json', '', '', '2017-04-07 10:47:32', '6ec3a708b75e3d41dfa7fc09fd31ca5d', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('6c477a867540da58', 'bug38', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/6c477a867540da58.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"6c477a867540da58\"}', '', '2016-11-29 17:01:59', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('6d05c8ec6cf71ffd', '123qw0', '123qw', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:52:29', '', '130000', '130000', '河北省所有', '0', '0', '3', '2', '2', './Uploads/miaiotconf/20170228/6d05c8ec6cf71ffd.conf', '', '', '2017-02-28 10:34:21', '882661eb87b81e7df86dbb2cc0ac9b5f', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('6e0d31dba6533a67', '24', '24', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'I9JP2CoTtLMHpc3a', '2', '58:91:CF:37:49:12', '', '100000', '100000', '深圳市南山区临海大道与桂湾三路交汇处', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170228/6e0d31dba6533a67.conf', '', '', '2017-02-28 16:30:21', '2d4f54180e18991b5659d06a0f86e73e', '2', null, '0', '113.89281461568773', '22.507892452814585');
INSERT INTO `tbl_iot_device` VALUES ('6eda1192d1b83eab', '65', '65', '', 'rowNALRW', '', '0', '78:A3:51:76:20:78', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-27 19:07:51', '75d8e6fdb7bc2028', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('6f2fa5b32e15cb01', '110', '110', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'I9JP2CoTtLMHpc3a', '2', '55:55:55:55:55:11', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170210/6f2fa5b32e15cb01.conf', '', '', '2017-02-10 15:09:46', '935eb8d34e76846e25b1c356973f38cd', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('6f42ddd4c273ef63', '11', '11', '', 'b19db273', '', '0', '00:00:00:00:00:10', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 14:51:31', '47ffecba37707494', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7006abc3a03236b4', 'yefengNoneOnlythingDevice1', 'yefengNoneOnlythingDevice1', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'JttNJt5Bo8szjpN7', '2', '10:09:09:09:09:1a', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170307/7006abc3a03236b4.conf', '', '', '2017-03-07 14:13:55', '4d1eda8b90340b9844da0ffc88c10827', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('752535a51780ab95', 'qwe', 'qwe', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'ERbZe2j3', 'erds00fN8VRn5aKy', '2', '11:11:11:11:01:01', '', '100000', '100000', '所有', '1', '0', '3', '2', '', './Uploads/miaiotconf/20170112/752535a51780ab95.conf', '', '', '2017-01-12 15:42:09', 'eaf615e5c96325ca808d9dd9d624c8f3', '2', '2f12481eeec84e29', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('769961b0b2014ad8', 'bug44', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/769961b0b2014ad8.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"769961b0b2014ad8\"}', '', '2016-11-29 17:02:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('76c43f9ce848bda6', 'bug90', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/76c43f9ce848bda6.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"76c43f9ce848bda6\"}', '', '2016-11-29 17:02:09', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('77942831fdf7a1b5', 'bug31', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/77942831fdf7a1b5.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"77942831fdf7a1b5\"}', '', '2016-11-29 17:01:58', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7918b800ed97db9f', 'bug69', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:10:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/7918b800ed97db9f.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"7918b800ed97db9f\"}', '', '2016-11-29 17:02:05', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7a8063eaf9e5ef9b', '04', '04', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '9472a99064f22d77', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:55:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170210/7a8063eaf9e5ef9b.conf', '', '', '2017-02-10 15:03:51', '0b7df19b38acad97f3417711724337a8', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7ab2ecf280c6f32f', 'bug92', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/7ab2ecf280c6f32f.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"7ab2ecf280c6f32f\"}', '', '2016-11-29 17:02:10', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7b0d672114ede08a', 'bug79', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/7b0d672114ede08a.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"7b0d672114ede08a\"}', '', '2016-11-29 17:02:07', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7c134134c3d84b74', 'bug8', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/7c134134c3d84b74.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"7c134134c3d84b74\"}', '', '2016-11-29 17:01:53', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7d3a4ff129ecd993', 'cece0', 'cece', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'xZKjTQyUjcGCXNGR', '2', '00:08:d2:10:00:0d', '38', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20161227/7d3a4ff129ecd993.conf', '{\"group_id\":\"39\",\"product\":{\"id\":\"xZKjTQyUjcGCXNGR\",\"thingTypes\":[{\"id\":\"8e3299e193d3a422\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"functions\":[{\"name\":\"LED_INIT\",\"alias\":\"led_init\",\"type\":\"0\",\"input\":[{\"name\":\"init\",\"tag\":\"B1\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"Led_OnOff\",\"alias\":\"led_switch\",\"type\":\"1\",\"input\":[{\"name\":\"switch\",\"tag\":\"A1\",\"datatype\":0,\"minValue\":0,\"maxValue\":10,\"defValue\":4}]}]}],\"rules\":[{\"rule_id\":\"tbZ0AE6Uusf20d6D\",\"conditions\":[{\"thing_id\":\"S5YaV74xPMxYBiTy\",\"alias\":\"LED_INIT\",\"key\":\"init\",\"symbols\":1,\"value\":\"3\"}', '', '2016-12-27 18:35:15', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('7e6f2e82a05da446', 'xsws', 'xsws', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'I9JP2CoTtLMHpc3a', '2', '58:91:CF:37:49:76', '44', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170216/7e6f2e82a05da446.conf', '', '', '2017-02-16 20:04:51', '75842ba25219f92fe0ba13f785ba567b', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('806a9a2a42849f00', 'bug15', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:06:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/806a9a2a42849f00.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"806a9a2a42849f00\"}', '', '2016-11-29 17:01:55', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('80c3fd1927d9faae', 'bug0', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/80c3fd1927d9faae.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"80c3fd1927d9faae\"}', '', '2016-11-29 17:01:52', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('810cfb1ad6479941', '11', '11', '', '22bbc724', '', '0', '中国', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 16:35:25', '94d8431218e4dde0', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('84d207f1463ba74f', '123qw1', '123qw', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:52:27', '', '130000', '130000', '河北省所有', '0', '0', '3', '2', '2', './Uploads/miaiotconf/20170228/84d207f1463ba74f.conf', '', '', '2017-02-28 10:34:21', '7e8453a99a9c6297513dfe53b9dafbee', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('87fa294580de9366', 'wuge390', 'wuge39', '', '', 'yKyYj08ZPPiECQVy', '2', '33:33:33:33:33:39', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/87fa294580de9366.conf', '{\"group_id\":\"\",\"product\":{\"product_id\":\"yKyYj08ZPPiECQVy\",\"thingTypes\":[\"{\\\"id\\\":\\\"2f12481eeec84e29\\\",\\\"dynlib_path\\\":\\\"\\\\\\/lib\\\\\\/11.so\\\",\\\"index\\\":0,\\\"type\\\":0,\\\"functions\\\":[{\\\"name\\\":\\\"wuge\\\",\\\"alias\\\":\\\"fun\\\",\\\"type\\\":\\\"1\\\",\\\"input\\\":[{\\\"name\\\":\\\"123\\\",\\\"tag\\\":\\\"2\\\",\\\"datatype\\\":0,\\\"minValue\\\":1,\\\"maxValue\\\":3,\\\"defValue\\\":2}],\\\"output\\\":[{\\\"name\\\":\\\"234\\\",\\\"tag\\\":\\\"3\\\",\\\"datatype\\\":0,\\\"minValue\\\":2,\\\"maxValue\\\":4,\\\"defValue\\\":0}]}]}\",\"{\\\"id\\\":\\\"eedc9d6267325e79\\\",\\\"dynlib_path\\\":\\\"\\\\\\/lib\\\\\\/iot_dyn.so\\\",\\\"index\\\":0,\\\"type\\\":5,\\\"functions\\\":[{\\\"name\\\":\\', '', '2016-12-16 10:19:51', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('8a14093b362d55f5', 'cjsb', 'cjsb', '23301403-8d90-4d9e-a35e-20b7d45b9116', '3', '', '0', '1234567890', '', '', '', '', '0', '0', '0', '0', 'xxrrttyyyy', '', '', '', '2016-12-02 16:30:42', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('8a7f92236ca35437', '001', '001', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'I9JP2CoTtLMHpc3a', '2', '55:55:55:55:55:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170210/8a7f92236ca35437.conf', '', '', '2017-02-10 14:34:30', '1445a6c4cdd9b8755fcf85c57eeec885', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('8b9057416ac1f838', '01', '01', '', 'bdKRR2Qs', 'erds00fN8VRn5aKy', '2', '00:08:09:09:01:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170109/8b9057416ac1f838.conf', '', '', '2017-01-09 11:26:05', '033e85750566a2d3b064fec01c9ac42a', '2', 'a55e7593ff91dbaa', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('8c1cfb68f113f25c', 'bug81', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/8c1cfb68f113f25c.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"8c1cfb68f113f25c\"}', '', '2016-11-29 17:02:07', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('8cf5fa85433b4f61', 'bug6', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/8cf5fa85433b4f61.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"8cf5fa85433b4f61\"}', '', '2016-11-29 17:01:53', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('8f02f2db912d75f0', 'ap75', 'ap75', '', '23423545', '', '0', '00:50:56:C0:75:75', '', '', '', '', '0', '0', '0', '0', '345', '', '', '', '2016-12-18 14:15:41', '979fc1820eff017a', '1', '13', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('921c6c0b810bfefe', 'bug77', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:08:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/921c6c0b810bfefe.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"921c6c0b810bfefe\"}', '', '2016-11-29 17:02:07', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('9435c179b98b2092', '222222', '222222', '', '1da49d47', 'xZKjTQyUjcGCXNGR', '2', '33:33:33:33:33:33', '19', '100000', '100000', '所有', '0', '0', '3', '2', '23', './Uploads/miaiotconf/9435c179b98b2092.conf', '{\"group_id\":\"19\",\"product\":{\"product_id\":\"xZKjTQyUjcGCXNGR\",\"thingTypes\":[{\"conf\":\"{\\\"thing_id\\\":\\\"8e3299e193d3a422\\\",\\\"dynlib_path\\\":\\\"\\\\\\/lib\\\\\\/iot_dyn.so\\\",\\\"functions\\\":[{\\\"name\\\":\\\"LED_INIT\\\",\\\"alias\\\":\\\"led_init\\\",\\\"type\\\":\\\"0\\\",\\\"input\\\":[{\\\"name\\\":\\\"init\\\",\\\"tag\\\":\\\"B1\\\",\\\"datatype\\\":0,\\\"minValue\\\":0,\\\"maxValue\\\":0,\\\"defValue\\\":0}]},{\\\"name\\\":\\\"Led_OnOff\\\",\\\"alias\\\":\\\"led_switch\\\",\\\"type\\\":\\\"1\\\",\\\"input\\\":[{\\\"name\\\":\\\"switch\\\",\\\"tag\\\":\\\"A1\\\",\\\"datatype\\\":0,\\\"minValue\\\":0,\\\"maxValue\\\":10,\\\"defValue\\\":4}]}]}\"}],\"rules\":[{\"rule_id\":\"tbZ0AE6Uusf20d6D\",\"c', '', '2016-12-15 16:57:17', '79c03bc045237d0b', '1', '7fc0cd6e14c9dcc1', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('946a196157ae3b9d', '09090', '0909', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'erds00fN8VRn5aKy', '3', '00:08:09:09:09:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170105/946a196157ae3b9d.conf', '', '', '2017-01-05 14:20:31', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('948803c59038e574', '00', '00', '', '22bbc724', '', '0', '00:00:00:00:00:00', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 14:39:32', '73c902f78c51f91d', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('9564b441cafbab53', 'bug3', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/9564b441cafbab53.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"9564b441cafbab53\"}', '', '2016-11-29 17:01:52', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('968147914b76d681', 'bug47', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/968147914b76d681.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"968147914b76d681\"}', '', '2016-11-29 17:02:01', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('974fbd77dc43c0aa', 'werewr', 'werewr', '', 'Xyn7Ecsh', '', '0', '23423432424', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-27 20:49:04', 'fd4cc1bed4d31e8f', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('9783a811088b6001', '123', '123', '', 'ec24d3fe', '', '0', '11:12:11:12:11:12:12', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-24 15:57:52', '40bb22f59f82f296', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('9889a1e84cb6cdb4', 'fghjkl0', 'fghjkl', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '78:A3:51:76:20:77', '', '100000', '100000', '所有', '0', '0', '3', '2', '爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abc', './Uploads/miaiotconf/9889a1e84cb6cdb4.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"9889a1e84cb6cdb4\"}', '', '2016-11-30 14:42:30', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('98c31ab58d6ae6c3', 'sss', 'sss', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', '', 'o8CL05Q6HssIaL8A', '2', '00:0C:43:76:20:11', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170210/98c31ab58d6ae6c3.conf', '', '', '2017-02-10 10:46:01', 'ad6628c221190a07bbeb7d281c230c14', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('9957012b8cdfc25b', 'bug65', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:06:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/9957012b8cdfc25b.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"9957012b8cdfc25b\"}', '', '2016-11-29 17:02:05', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('99b1bf29e6e0e1a5', 'qq123', 'qq123', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '6OWrQByfNne0o5vi', '2', '00:08:09:09:09:99', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/99b1bf29e6e0e1a5.conf', '', '', '2017-03-01 15:21:01', 'ac33d54c2f5cee76900fcd0280b8c9e6', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('9c6d8f428195b5eb', 'bug67', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:08:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/9c6d8f428195b5eb.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"9c6d8f428195b5eb\"}', '', '2016-11-29 17:02:05', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('9ed8ce78929d619c', '设备1', '设备1', '', '', '', '0', '21443243545', '', '', '', '', '0', '0', '0', '0', '4234324', '', '', '', '2016-12-13 14:35:45', '71f86634e864f5cc', '1', '7fc0cd6e14c9dcc1', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a01e4358cbc69a08', 'bug4', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/a01e4358cbc69a08.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"a01e4358cbc69a08\"}', '', '2016-11-29 17:01:52', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a11935d9508c767b', 'bug80', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/a11935d9508c767b.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"a11935d9508c767b\"}', '', '2016-11-29 17:02:07', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a2e5edf6bf695b8c', '爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'MJWSZYy3aEVJCkw3', '2', '78:A3:51:76:20:66', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/a2e5edf6bf695b8c.conf', '{\"group_id\":\"\",\"product_id\":\"MJWSZYy3aEVJCkw3\",\"things\":[],\"rules\":[],\"device_id\":\"a2e5edf6bf695b8c\"}', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a4a98c736d82b201', 'bug16', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:07:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/a4a98c736d82b201.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"a4a98c736d82b201\"}', '', '2016-11-29 17:01:55', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a67e5324862be84c', 'qazwsx', 'qazwsx', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'erds00fN8VRn5aKy', '2', '00:08:09:09:09:cc', '45', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170217/a67e5324862be84c.conf', '', '', '2017-02-17 15:08:45', '46bee6236a742efa0b9fa186cb5a1439', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a6d32acbd0edc444', 'bug17', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:08:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/a6d32acbd0edc444.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"a6d32acbd0edc444\"}', '', '2016-11-29 17:01:55', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a71b71aeaa569ff5', 'bug64', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:05:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/a71b71aeaa569ff5.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"a71b71aeaa569ff5\"}', '', '2016-11-29 17:02:05', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a7a9dec3a97bfd45', 'devdf', 'devdf', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'X5FIRAe1kpqxInhh', '3', '64:27:37:60:74:C7', '', '220000', '220200', '吉林省吉林', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170216/a7a9dec3a97bfd45.conf', '', '', '2017-02-16 10:42:13', '0f6c9bb865696694dcbe6218c3d40d1c', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('a9b793a5ac1b2d30', 'bug28', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:09:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/a9b793a5ac1b2d30.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"a9b793a5ac1b2d30\"}', '', '2016-11-29 17:01:57', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ab4615b9f1b7e65d', 'bug96', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/ab4615b9f1b7e65d.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"ab4615b9f1b7e65d\"}', '', '2016-11-29 17:02:10', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('abc190e2fea2645b', 'bug12', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:03:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/abc190e2fea2645b.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"abc190e2fea2645b\"}', '', '2016-11-29 17:01:54', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('af0fff7709691860', 'ap400', 'ap40', '', '', 'yKyYj08ZPPiECQVy', '2', '33:33:33:33:33:40', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/af0fff7709691860.conf', '{\"group_id\":\"\",\"product\":{\"product_id\":\"yKyYj08ZPPiECQVy\",\"thingTypes\":[\"{\\\"id\\\":\\\"2f12481eeec84e29\\\",\\\"dynlib_path\\\":\\\"\\\\\\/lib\\\\\\/11.so\\\",\\\"index\\\":0,\\\"type\\\":0,\\\"functions\\\":[{\\\"name\\\":\\\"wuge\\\",\\\"alias\\\":\\\"fun\\\",\\\"type\\\":\\\"1\\\",\\\"input\\\":[{\\\"name\\\":\\\"123\\\",\\\"tag\\\":\\\"2\\\",\\\"datatype\\\":0,\\\"minValue\\\":1,\\\"maxValue\\\":3,\\\"defValue\\\":2}],\\\"output\\\":[{\\\"name\\\":\\\"234\\\",\\\"tag\\\":\\\"3\\\",\\\"datatype\\\":0,\\\"minValue\\\":2,\\\"maxValue\\\":4,\\\"defValue\\\":0}]}]}\",\"{\\\"id\\\":\\\"eedc9d6267325e79\\\",\\\"dynlib_path\\\":\\\"\\\\\\/lib\\\\\\/iot_dyn.so\\\",\\\"index\\\":0,\\\"type\\\":5,\\\"functions\\\":[{\\\"name\\\":\\', '', '2016-12-16 10:28:06', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b138b16ea93b3bc6', '0245', '02', '23301403-8d90-4d9e-a35e-20b7d45b9116', '69051b0522a7b6e2', 'erds00fN8VRn5aKy', '0', '00:08:09:01:01:02', '39', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170111/b138b16ea93b3bc6.conf', '', '', '2017-01-11 11:24:18', 'b132ec4878002bd3bd092cdc86cc36ec', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b149b3f4bccc4493', 'shebei', '', '', '0', '1', '0', '16:bd:0a:e0:b5:61', '4', '', '', '', '1', '0', '2', '2', 'dsfdsfdsfdsffsd', '', '', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b201e3b6e185fc19', 'ap90', 'ap90', '', '526b66e6', '0woIM5rzh3g64xL8', '2', '99:99:99:99:99:90', '19', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20161219/b201e3b6e185fc19.conf', '{\"group_id\":\"19\",\"product\":{\"product_id\":\"0woIM5rzh3g64xL8\",\"thingTypes\":[{\"id\":\"2efde7b788e41bf6\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":2,\"functions\":[{\"name\":\"led_init\",\"alias\":\"led_init\",\"type\":0,\"input\":[{\"name\":\"dd\",\"tag\":\"d\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"led_switch\",\"type\":1,\"input\":[{\"name\":\"gh\",\"tag\":\"h\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}],\"rules\":[{\"rule_id\":\"vuiRQWzQnL3FpjJ4\",\"conditions\":[{\"thingType\":\"SL8NyIejJMjAUHnk\",\"alias\":\"led_init\",\"key\":\"dd\",\"identific', '', '2016-12-19 13:58:37', '4ae604bd07eb4d2f', '1', '2efde7b788e41bf6', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b207b36f8fc28d5c', 'bug14', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:05:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/b207b36f8fc28d5c.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"b207b36f8fc28d5c\"}', '', '2016-11-29 17:01:54', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b2aee8e8b57595ec', '522', '522', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'DqTeFbjVVl8m7P7X', '2', '50:50:50:50:50:52', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170303/b2aee8e8b57595ec.conf', '', '', '2017-03-03 11:12:16', '01a584580f1c3f058d714b3f55acd4cb', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b2fa17234ed9bffb', '1p123', '1p123', '', 'ce0c1551', '', '0', '123123123', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-20 17:36:50', '1f98b5df5dece666', '1', '13', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b34cb1f309ad579d', 'MTK_THING', 'MTK_THING', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', '', 'xRq8tmygs4pyHeH4', '2', '00:0C:43:76:20:66', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201704/b34cb1f309ad579d.json', '', '', '2017-04-18 19:21:02', '1827bb0dc3acf0434710143e9b825def', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b3749f2daef0db06', 'bug94', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/b3749f2daef0db06.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"b3749f2daef0db06\"}', '', '2016-11-29 17:02:10', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b3b20d3de658b642', '2201', '2201', '', '', '', '0', '00:00:00:00:22:01', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 15:08:39', '4ac1684bc1d4f691', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b4ca73c6a9a19728', '11', '11', '', '', '', '0', '11:11:11:11:11:11', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 14:42:44', 'f7684ac2e033e8f4', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b50c3242ff794096', 'bug98', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/b50c3242ff794096.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"b50c3242ff794096\"}', '', '2016-11-29 17:02:11', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b6368c7898e516ed', 'ap015', 'ap015', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'oO8sFLJCet4EFAbZ', '2', '12:12:12:12:12:15', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201704/b6368c7898e516ed.json', '', '', '2017-04-14 09:49:21', 'c38a5235c82d1cdfe3f4eaf13faee84d', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b648a11bdf6f9812', 'bug20', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:01:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/b648a11bdf6f9812.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"b648a11bdf6f9812\"}', '', '2016-11-29 17:01:56', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b6f8f578597cce47', 'MRJ', 'MRJ', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', '', 'NonmqHckHiOKl0nV', '2', '78:A3:51:76:20:59', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/201703/b6f8f578597cce47.json', '', '', '2017-03-31 18:41:46', 'bfb48bd5465abef76968a6bd975efcee', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b78b1405f69ff065', 'bug89', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/b78b1405f69ff065.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"b78b1405f69ff065\"}', '', '2016-11-29 17:02:09', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('b862470577926ee5', 'bug10', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:01:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/b862470577926ee5.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"b862470577926ee5\"}', '', '2016-11-29 17:01:54', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('baa6fb847328b984', 'Riva_devive20', '', '', '0', 'fmcCmlBdyfblQWjN', '3', '00:01:6C:5f:3E:37', '', '430000', '430000', '湖南省所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/baa6fb847328b984.conf', '{\"group_id\":\"\",\"product_id\":\"fmcCmlBdyfblQWjN\",\"things\":[],\"rules\":[],\"device_id\":\"baa6fb847328b984\"}', '', '2016-11-28 10:08:53', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('bb0c04b8413d21a5', '536', '536', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'ERbZe2j3', 'DqTeFbjVVl8m7P7X', '2', '50:50:50:50:52:53', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/201703/bb0c04b8413d21a5.json', '', '', '2017-03-17 15:53:24', '2482f117a3628ba07eaebea6006eb382', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('bf0532448ad5f233', 'bug5', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/bf0532448ad5f233.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"bf0532448ad5f233\"}', '', '2016-11-29 17:01:53', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c2a553aec3e770c0', '090', '090', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:52:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/c2a553aec3e770c0.conf', '', '', '2017-03-01 16:15:32', '62a37dc0c51d6971e6c0de5b74e2f9a5', '1', '', '1', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c305c33bbc44b7ac', 'ap93', 'ap93', '', '428637b3', '0woIM5rzh3g64xL8', '3', '99:99:99:99:99:93', '19', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20161219/c305c33bbc44b7ac.conf', '{\"group_id\":\"19\",\"product\":{\"product_id\":\"0woIM5rzh3g64xL8\",\"thingTypes\":[{\"id\":\"2efde7b788e41bf6\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":2,\"functions\":[{\"name\":\"led_init\",\"alias\":\"led_init\",\"type\":0,\"input\":[{\"name\":\"dd\",\"tag\":\"d\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"led_switch\",\"type\":1,\"input\":[{\"name\":\"gh\",\"tag\":\"h\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}],\"rules\":[{\"rule_id\":\"vuiRQWzQnL3FpjJ4\",\"conditions\":[{\"thingType\":\"SL8NyIejJMjAUHnk\",\"alias\":\"led_init\",\"key\":\"dd\",\"identific', '', '2016-12-19 14:27:11', '02a46f5a0ca0c67f', '1', '2efde7b788e41bf6', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c32169531902b0c0', 'bug21', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:02:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/c32169531902b0c0.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"c32169531902b0c0\"}', '', '2016-11-29 17:01:56', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c4ddf67aad1f7ba0', 'bug36', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/c4ddf67aad1f7ba0.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"c4ddf67aad1f7ba0\"}', '', '2016-11-29 17:01:59', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c6be38ad15e90423', 'bug91', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/c6be38ad15e90423.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"c6be38ad15e90423\"}', '', '2016-11-29 17:02:09', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c78082afc5e32047', 'bug57', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/c78082afc5e32047.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"c78082afc5e32047\"}', '', '2016-11-29 17:02:04', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c8b6f98f172921f0', 'bug39', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/c8b6f98f172921f0.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"c8b6f98f172921f0\"}', '', '2016-11-29 17:01:59', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('c9867b28ab5f3cab', 'zl', 'zl', '', 'ec24d3fe', '', '0', '11:12:11:12:11:12:11', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-24 14:22:03', 'dd674eb6c9a03ac5', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ca9077fd3a12a6ee', '000', '000', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'I9JP2CoTtLMHpc3a', '2', '55:55:55:55:55:00', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170210/ca9077fd3a12a6ee.conf', '', '', '2017-02-10 14:32:14', '55aa8a4808db375a02f62850e4fad3eb', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('cac1ae9fa6e5dcef', 'bug1', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/cac1ae9fa6e5dcef.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"cac1ae9fa6e5dcef\"}', '', '2016-11-29 17:01:52', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ce9f143def568331', 'Gateway', 'Gateway', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '8doAUre14CNhASL7', '2', '2C:AD:13:00:10:55', '19', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20161222/ce9f143def568331.conf', '{\"group_id\":\"19\",\"product\":{\"id\":\"8doAUre14CNhASL7\",\"thingTypes\":[{\"id\":\"9ee7b2d8791e07b7\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"zl_contect_equipment_operation\",\"alias\":\"OPERATION\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"b8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":0}],\"output\":[{\"name\":\"operation\",\"tag\":\"b8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":0}]},{\"name\":\"zl_contect_equipment_init\",\"alias\":\"INIT\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValu', '', '2016-12-22 19:27:25', '0aca1542180e14cc', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('d3a49302ce0b7cc9', 'ccccxxxx', 'ccccxxxx', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'I9JP2CoTtLMHpc3a', '2', '58:91:CF:37:49:75', '44', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170216/d3a49302ce0b7cc9.conf', '', '', '2017-02-16 19:56:11', '62b2faee009d5e6214e3f03b85bd8074', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('d3f55e9d2e7e82f2', 'bug2', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/d3f55e9d2e7e82f2.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"d3f55e9d2e7e82f2\"}', '', '2016-11-29 17:01:52', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('d61f67648bdb51e9', '533', '533', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'exxQlPzFgPOLiImE', '2', '55:55:55:55:53:53', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/d61f67648bdb51e9.conf', '', '', '2017-03-01 15:31:03', 'ee62b96f4dfc65e6c01c3ebae0bd96b8', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('d6ac83544e956153', 'bug51', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:02', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/d6ac83544e956153.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"d6ac83544e956153\"}', '', '2016-11-29 17:02:01', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('d8ba4a96d4ad1d1b', 'bug7', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/d8ba4a96d4ad1d1b.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"d8ba4a96d4ad1d1b\"}', '', '2016-11-29 17:01:53', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('d9d20f8f6fc7bec8', 'bug48', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/d9d20f8f6fc7bec8.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"d9d20f8f6fc7bec8\"}', '', '2016-11-29 17:02:01', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('dd3457673433182d', 'dengfei_device', 'dengfei_device', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '1FhvAp5ZI4RvxMZQ', '2', '00:09:09:09:09:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/dd3457673433182d.conf', '', '', '2017-03-01 16:55:58', '1a4b503ca1d0d5ab6ac6bb752b62a541', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('df963c6054f0c3ff', 'bug53', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/df963c6054f0c3ff.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"df963c6054f0c3ff\"}', '', '2016-11-29 17:02:02', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e008ce98848b1a14', 'wangzhe0', '', '', '0', '3AGb0vqJB43UH09Z', '0', '78:A3:51:01:27:D3', '2', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/e008ce98848b1a14.conf', '{\"group_id\":\"2\",\"product_id\":\"3AGb0vqJB43UH09Z\",\"things\":[{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"interval\":0,\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_init\",\"alias\":\"Led_Init\",\"type\":0,\"output\":[{\"name\":\"switch\",\"tag\":\"A0\",\"datatype\":0,\"minValue\":0,\"maxValue\":1,\"defValue\":0}],\"input\":[{\"name\":\"switch\",\"tag\":\"A0\",\"datatype\":0,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"Led_OnOff\",\"type\":1,\"input\":[{\"name\":\"switch\",\"tag\":\"A0\",\"datatype\":0,\"minValue\":0,\"maxValue\":1,\"defValue\":0},{\"name\":\"color\",\"tag\":\"A1\"', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e062658a962a8f8f', 'bug95', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:10:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/e062658a962a8f8f.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"e062658a962a8f8f\"}', '', '2016-11-29 17:02:10', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e06fbf8dabcc9046', 'bug70', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:01:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/e06fbf8dabcc9046.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"e06fbf8dabcc9046\"}', '', '2016-11-29 17:02:06', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e25c0962e2159959', 'dengfeitest2', 'dengfeitest2', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '6OWrQByfNne0o5vi', '2', '00:08:09:09:11:ff', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/e25c0962e2159959.conf', '', '', '2017-03-01 16:26:28', 'b59043d369afebf7e6db9cfe8fd6d59d', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e34ab951a8d23eef', '设备2', '设备2', '', '', '', '0', '21443243545', '', '', '', '', '0', '0', '0', '0', '2323', '', '', '', '2016-12-13 14:37:36', 'f3ec824671bcd014', '1', '7fc0cd6e14c9dcc1', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e4e5d8efe4f5ffc2', 'dengfeitest', 'dengfeitest', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '6OWrQByfNne0o5vi', '2', '00:08:09:09:aa:ff', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/e4e5d8efe4f5ffc2.conf', '', '', '2017-03-01 16:23:21', 'c5fc3d06b669c4a087f7052befecd690', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e615f519d5d70bc6', 'bug68', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:09:09', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/e615f519d5d70bc6.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"e615f519d5d70bc6\"}', '', '2016-11-29 17:02:05', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e65e170a14fe734b', 'conftest', 'conftest', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'X5FIRAe1kpqxInhh', '2', '00:08:09:09:09:ff', '', '420000', '421000', '湖北省荆州', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170228/e65e170a14fe734b.conf', '', '', '2017-02-28 16:55:26', '4ba9288eaf01245479a505bec20c24c5', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e6b804d45ddc6508', 'rrwer', 'rrwer', '', '4d36c4a5889a8117', '', '0', 'erwertetrtrt', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-27 20:50:18', '939360bc42246069', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e7606f5d466478cf', '2', '2', '540ee87a-ac89-4eee-8246-562a627c7e1b', '', 'Togu8BPT9Cqp9OeH', '2', '00:00:4C:4F:4F:52', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201704/e7606f5d466478cf.json', '', '', '2017-04-12 11:06:52', '9261bd5292319b92cc3ecf60ee6900cf', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e8cbd3b3fa18df39', 'bug24', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:05:00:05', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/e8cbd3b3fa18df39.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"e8cbd3b3fa18df39\"}', '', '2016-11-29 17:01:56', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e91a877dc1bf9531', 'bug46', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:07', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/e91a877dc1bf9531.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"e91a877dc1bf9531\"}', '', '2016-11-29 17:02:01', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e951ae00e13ee383', 'bug43', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/e951ae00e13ee383.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"e951ae00e13ee383\"}', '', '2016-11-29 17:02:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('e99c28cb73af28df', 'bug73', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:04:00:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/e99c28cb73af28df.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"e99c28cb73af28df\"}', '', '2016-11-29 17:02:06', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('eab3b8cd9b631757', '99', '99', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'ERbZe2j3', '1FhvAp5ZI4RvxMZQ', '2', '58:91:CF:37:49:99', '', '100000', '100000', '深圳市南山区赛百诺大厦', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170309/eab3b8cd9b631757.conf', '', '', '2017-03-09 10:12:58', '34fe0dd6130fd43f21e8e356c31e4230', '1', '', '0', '113.94241369113318', '22.554401630861667');
INSERT INTO `tbl_iot_device` VALUES ('ec59f7e7a4376599', 'bug13', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:04:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/ec59f7e7a4376599.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"ec59f7e7a4376599\"}', '', '2016-11-29 17:01:54', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ef78849d3a8d1a85', 'bug32', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d1:00:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/ef78849d3a8d1a85.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"ef78849d3a8d1a85\"}', '', '2016-11-29 17:01:58', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('efcc820b718387c4', 'bug50', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:00:01', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/efcc820b718387c4.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"efcc820b718387c4\"}', '', '2016-11-29 17:02:01', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f15a2f5df82b6d7b', 'bug82', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:03', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/f15a2f5df82b6d7b.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"f15a2f5df82b6d7b\"}', '', '2016-11-29 17:02:08', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f1a9d5b85cdf28f5', 'bug45', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:06', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/f1a9d5b85cdf28f5.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"f1a9d5b85cdf28f5\"}', '', '2016-11-29 17:02:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f1fbe499af23528e', '111', '111', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '', 'Uke4DqW0WkLcKhkV', '2', '88:91:CF:37:11:11', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/20170301/f1fbe499af23528e.conf', '', '', '2017-03-01 16:12:37', 'c62de31646a9daca4191bd25a7384cc7', '2', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f3a36f28079d7224', '爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd', '爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:10:00:0f', '17', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/f3a36f28079d7224.conf', '{\"group_id\":\"17\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"f3a36f28079d7224\"}', '', '2016-11-29 17:58:14', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f3c846c8c22a261d', 'thing', 'thing', '', '22bbc724', '', '0', '0000001', '', '', '', '', '0', '0', '0', '0', '', '', '', '', '2016-12-22 17:14:43', '722c6ecd6a6ab674', '2', '5f2fed0e099dcf1d', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f6f7e394de612113', '08080', '0808', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', 'jmFss92dQalO5Ynb', '2', '00:08:09:09:09:08', '36', '100000', '100000', '所有', '0', '0', '3', '2', 'qwe', './Uploads/miaiotconf/20170105/f6f7e394de612113.conf', '', '', '2017-01-05 15:49:11', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f9e0599fb8968893', 'bug87', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d1:00:00:08', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/f9e0599fb8968893.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"f9e0599fb8968893\"}', '', '2016-11-29 17:02:09', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('f9e97db36b226c48', 'Riva4', '', '042593dc-84bb-4ac7-ab42-39329214b62b', '0', 'uYOO1M8qi3B40Djr', '2', '00:01:6C:06:A6:21', '14', '110000', '310000', '上海', '1', '1', '1', '1', '', './Uploads/miaiotconf/f9e97db36b226c48.conf', '{\"group_id\":\"14\",\"product_id\":\"uYOO1M8qi3B40Djr\",\"things\":[],\"rules\":[{\"rule_id\":\"xVMm72CZ8S7oc9Xm\",\"conditions\":[{\"thing_id\":null,\"alias\":null,\"key\":null,\"value\":\"\"}],\"target\":{\"device_id\":\"\",\"thing_id\":null,\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"},\"action\":{\"\":{\"\":\"\"}}}],\"device_id\":\"f9e97db36b226c48\"}', '', '0000-00-00 00:00:00', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('fc18e0515b61170e', 'bug63', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:18:d2:00:04:04', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/fc18e0515b61170e.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"fc18e0515b61170e\"}', '', '2016-11-29 17:02:04', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('fc672d63d47140ea', 'bug19', 'bug', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0', 'u9g3x4zqGrvzRCkR', '2', '00:08:d2:00:10:10', '', '100000', '100000', '所有', '0', '0', '3', '2', '', './Uploads/miaiotconf/fc672d63d47140ea.conf', '{\"group_id\":\"\",\"product_id\":\"u9g3x4zqGrvzRCkR\",\"things\":[],\"rules\":[],\"device_id\":\"fc672d63d47140ea\"}', '', '2016-11-29 17:01:55', '', '1', null, '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g034323c617796d8', 'ppp1', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:12', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g034323c617796d8.json', '', '', '2017-05-08 14:02:25', '49cf36eec57855e9ca3223c02159d22a', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g05789e34b6839a5', '04548', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:49', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g05789e34b6839a5.json', '', '', '2017-05-08 14:12:13', 'bd751d0d221e94ba1f7b28aac9763dcb', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g09288032347beb9', '04540', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:41', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g09288032347beb9.json', '', '', '2017-05-08 14:12:12', '8880d7b6940d396f2b74edf340f14e11', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g0f762c38b4b7a24', '04542', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:43', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g0f762c38b4b7a24.json', '', '', '2017-05-08 14:12:13', 'f6dcdea1de621b4a60993e579743b944', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g1b11d88f02eecc9', 'a022', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:23', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g1b11d88f02eecc9.json', '', '', '2017-05-08 14:06:59', '041677d47b510906f053173fdaf7b484', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g1d22a8cb29bef0d', '1000', '1000', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:10', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g1d22a8cb29bef0d.json', '', '', '2017-05-08 13:56:11', 'b6bd6b71661a0a5293345f2af6d46ead', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g211fb86fbca9004', 'a025', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:26', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g211fb86fbca9004.json', '', '', '2017-05-08 14:06:59', '931efeadceb0db1b42079c263fd38b4e', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g2b24e2e215e3716', '0011', '0011', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2tcbzho5fowzm5lT', '2', '12:12:12:12:01:01', '', '100000', '100000', '深圳市南山区科兴科学园', '1', '0', '0', '0', '', './Uploads/miaiotconf/201705/g2b24e2e215e3716.json', '', '', '2017-05-05 16:44:47', '2d69bc7c26a2cf6ab80f855c2dc1aff8', '1', '', '0', '113.94875632270978', '22.554438286558344');
INSERT INTO `tbl_iot_device` VALUES ('g2c1cad5058589c9', 'ppp7', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:18', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g2c1cad5058589c9.json', '', '', '2017-05-08 14:02:26', '80a55e24936a46f8d9bf66a1c88307fe', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g2f5e58891e523f8', '03032', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:33', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g2f5e58891e523f8.json', '', '', '2017-05-08 14:08:05', '886fdff5b3618a77a492fa5a28d66c4c', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g32e259f4a03e242', '04547', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:48', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g32e259f4a03e242.json', '', '', '2017-05-08 14:12:13', 'f99f1fddb5a35eec8f3389b830dd6674', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g332d726e70faf7b', 'ppp0', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:11', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g332d726e70faf7b.json', '', '', '2017-05-08 14:02:25', 'c393baf41788e17d9e2538ac2c4f4a20', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g36dce8ba58349c9', '0551', '0551', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:51', '', '100000', '100000', '所有', '0', '0', '0', '0', 'qwe', '../Uploads/miaiotconf/201705/g36dce8ba58349c9.json', '', '', '2017-05-08 14:34:17', '5d9c95a05bdd94f8bcde84c444362897', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g3912631ba9c913d', 'a028', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:29', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g3912631ba9c913d.json', '', '', '2017-05-08 14:06:59', '32dcc68e03301da4dbd108ea96d3cee2', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g3e091b713d6627a', 'a020', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:21', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g3e091b713d6627a.json', '', '', '2017-05-08 14:06:59', '978bfaaa98408978e3ee1c55203bdcf2', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g3f6e23f7541ed1e', '0009', '0009', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:09', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g3f6e23f7541ed1e.json', '', '', '2017-05-08 13:55:01', 'b3c8b24b1f3659668b5937a25ab8d7c9', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g433f8ab734d4245', 'ppp9', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:20', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g433f8ab734d4245.json', '', '', '2017-05-08 14:02:26', '45b4800b013817d6f675d9c8a1d5f563', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g63a39096e5a2d34', '03033', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:34', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g63a39096e5a2d34.json', '', '', '2017-05-08 14:08:05', '75bf3c49121d00b4eda4f9a1a51a72aa', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g691073a44e52b3d', 'ppp3', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:14', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g691073a44e52b3d.json', '', '', '2017-05-08 14:02:26', '7a5abc9132d7986bca3941b41ab36970', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g695ae52eb67e0e3', 'ppp6', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:17', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g695ae52eb67e0e3.json', '', '', '2017-05-08 14:02:26', '71ab90556af85b3f6628ff79d5909ad2', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g69dcaa6ff523c72', '04543', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:44', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g69dcaa6ff523c72.json', '', '', '2017-05-08 14:12:13', '5bbd1a3b90a52563580a432cb3f877d1', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g6a081de2dd9ce27', '5002', '5002', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:50', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g6a081de2dd9ce27.json', '', '', '2017-05-08 14:31:46', 'f313c5e0f33cdd09dc4b3b0e9347b824', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g6d4f01a9ebfbcf2', '03034', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:35', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g6d4f01a9ebfbcf2.json', '', '', '2017-05-08 14:08:05', '9a904f4005af778deeee1cf10d95e3f5', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g6e1dc8a918462b5', 'a027', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:28', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g6e1dc8a918462b5.json', '', '', '2017-05-08 14:06:59', '80195f563388ed44c85a6b01757d9a54', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g70fc9eecb205281', '03037', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:38', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g70fc9eecb205281.json', '', '', '2017-05-08 14:08:05', 'b932a04734c19f526972f75df3d42102', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g7cda5190e186bff', '0002', '0002', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2tcbzho5fowzm5lT', '2', '12:12:12:12:01:02', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201705/g7cda5190e186bff.json', '', '', '2017-05-05 16:49:35', '2311381026f625f575c0d4b938a763f0', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g801c26c4bede7e5', '006', '006', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:06', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g801c26c4bede7e5.json', '', '', '2017-05-08 11:05:00', '330990ece23adaa055e1462d932beb46', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g891bab20f19a12d', '0003', '0003', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2tcbzho5fowzm5lT', '2', '12:12:12:12:01:03', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201705/g891bab20f19a12d.json', '', '', '2017-05-05 18:22:15', 'c05c8caf63eccc9537c3e17833a9b2a5', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g96511ac782a3aa7', 'ppp4', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:15', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/g96511ac782a3aa7.json', '', '', '2017-05-08 14:02:26', '4fadfb6919ee59efd9b1b1e389b99753', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('g96c08a1c605357a', '0004', '0004', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:04', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201705/g96c08a1c605357a.json', '', '', '2017-05-08 09:51:34', '9fd600595e3ca9de470e5334ec3416fc', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ga6a9d19d3c522c7', '03030', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:31', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/ga6a9d19d3c522c7.json', '', '', '2017-05-08 14:08:05', '79348a69687771ad710a3727196635f3', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gab7e1d71ee4d73f', '03036', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:37', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gab7e1d71ee4d73f.json', '', '', '2017-05-08 14:08:05', 'd4fd691f893d44cef5ed55223cc62653', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gac2fee9569b669c', '04546', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:47', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gac2fee9569b669c.json', '', '', '2017-05-08 14:12:13', '727252c32f76bb52748988f0a234a109', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gaceaf58776813f9', '04544', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:45', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gaceaf58776813f9.json', '', '', '2017-05-08 14:12:13', '0342b098baadba814c0729c497b3ab9e', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gb1b406aa7b637e4', '00008', '00008', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:08', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gb1b406aa7b637e4.json', '', '', '2017-05-08 11:10:58', 'd0388198ba22544075628761431549df', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gb2caa7e0953048c', '03031', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:32', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gb2caa7e0953048c.json', '', '', '2017-05-08 14:08:05', '97c8ebeafd03f1161b55193f2e21e80b', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gc8fbe87dbfeef26', 'ppp8', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:19', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gc8fbe87dbfeef26.json', '', '', '2017-05-08 14:02:26', '5a71959469ad262396024885d69604cb', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gd053b66e5088128', 'ppp5', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:16', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gd053b66e5088128.json', '', '', '2017-05-08 14:02:26', '829bcff2aefe2c83b67b67bc2c801349', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gd2de7305e6972b1', 'e5', 'e5', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:05', '', '100000', '100000', '所有', '0', '0', '0', '0', '', './Uploads/miaiotconf/201705/gd2de7305e6972b1.json', '', '', '2017-05-08 09:55:51', '383878ba233e98dfb752cda36eda7750', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gd3e9f8c6846fa23', '03038', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:39', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gd3e9f8c6846fa23.json', '', '', '2017-05-08 14:08:05', '464cf436c1b51046f939ed1ee31813ad', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gd4cbe96bc82f785', 'a023', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:24', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gd4cbe96bc82f785.json', '', '', '2017-05-08 14:06:59', 'e2ef4bd167e8f6f75b15d9ae457d33fd', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gd5edfe9dc3890e4', 'a026', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:27', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gd5edfe9dc3890e4.json', '', '', '2017-05-08 14:06:59', '9e30382c4f98c39721e4d9845bcde278', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gdb3baed6cf381d7', '0007', '0007', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:07', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gdb3baed6cf381d7.json', '', '', '2017-05-08 11:06:26', '2e724616c1052bfd46098ff787c5acb1', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ge6ab9e6401a273a', 'a021', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:22', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/ge6ab9e6401a273a.json', '', '', '2017-05-08 14:06:59', '13af681dc83e12fa55df90b183789c66', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ge8cca8b76f8d0a4', 'a024', 'a02', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:25', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/ge8cca8b76f8d0a4.json', '', '', '2017-05-08 14:06:59', '9def072519f9c0efca78848803b7ee29', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('ge931f4c51f77105', '04545', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:46', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/ge931f4c51f77105.json', '', '', '2017-05-08 14:12:13', '2ce3f188d4ec55eb459560c993118d49', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gf45badd16ade7aa', '03035', '0303', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:36', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gf45badd16ade7aa.json', '', '', '2017-05-08 14:08:05', '670fd7f6214d6c2d197b7c6508c16697', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gf5d7e92a04745fc', 'ppp2', 'ppp', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:13', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gf5d7e92a04745fc.json', '', '', '2017-05-08 14:02:26', 'abfe6398b0d5b3c0ed909e395021e7f4', '1', '', '0', null, null);
INSERT INTO `tbl_iot_device` VALUES ('gf8f4bc620061278', '04541', '0454', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '1FhvAp5ZI4RvxMZQ', '2', '12:12:12:12:01:42', '', '100000', '100000', '所有', '0', '0', '0', '0', '', '../Uploads/miaiotconf/201705/gf8f4bc620061278.json', '', '', '2017-05-08 14:12:13', '30bcbd92f94924811e0dbd6f264f6a22', '1', '', '0', null, null);

-- ----------------------------
-- Table structure for `tbl_iot_device_basic`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_device_basic`;
CREATE TABLE `tbl_iot_device_basic` (
  `deviceid` varchar(16) NOT NULL,
  `userid` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `wanmac` varchar(20) NOT NULL,
  `secret` varchar(36) DEFAULT 'ffffffffffffffffffffffffffffffff',
  `secret_bak` varchar(36) NOT NULL DEFAULT 'ffffffffffffffffffffffffffffffff' COMMENT '保存上次更新的secret',
  `code` varchar(16) DEFAULT NULL,
  `citycode` varchar(16) DEFAULT NULL,
  `region` varchar(256) DEFAULT NULL,
  `fwversion` varchar(32) DEFAULT NULL,
  `apversion` varchar(32) DEFAULT NULL,
  `hardware` varchar(32) DEFAULT NULL,
  `versionid` varchar(16) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '1：网关 2：Thing',
  `devstate` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '2' COMMENT '0-离线，1-在线, 2-未激活',
  `routerswitch` tinyint(4) DEFAULT '0' COMMENT '路由开关，默认关闭',
  `createuser` int(10) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `upgradeno` int(5) DEFAULT '0',
  `description` varchar(256) DEFAULT NULL,
  `offlinetime` datetime DEFAULT NULL,
  PRIMARY KEY (`deviceid`),
  KEY `idx_devuserid` (`userid`) USING BTREE,
  KEY `citycode` (`code`),
  KEY `mac` (`wanmac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_device_basic
-- ----------------------------
INSERT INTO `tbl_iot_device_basic` VALUES ('', null, '', 'C8:60:00:C5:55:52', 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('00053ca9db567f30', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '560', '55:55:55:55:55:56', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-15 17:16:49', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('00854425647896d3', '540ee87a-ac89-4eee-8246-562a627c7e1b', '22', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '2', '0', '2', '0', null, '2016-12-22 11:30:48', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('012ebb90ec4a2791', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'z980', '55:55:55:55:55:98', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-08 16:31:42', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('049ea68d3ffb4653', '', '123', '33:33:33:33:33:37', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-15 18:47:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('05bf3cdca518ef4e', '540ee87a-ac89-4eee-8246-562a627c7e1b', '1102', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 15:07:17', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('066bafd19b14c808', '540ee87a-ac89-4eee-8246-562a627c7e1b', '1101', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 15:06:35', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0733cb83afafbbbe', '23301403-8d90-4d9e-a35e-20b7d45b9116', '12345', '00:08:09:09:09:12', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 16:20:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('079362a7808ccf16', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug93', '00:18:d2:10:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('084a8e79116f7d8f', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '20', '55:55:55:55:55:20', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-14 11:24:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('08b7c5f55b15e78f', '', 'xxx1', '00:50:56:C0:00:71', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-24 11:48:35', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0a5238a5236662cb', '', 'ap920', '99:99:99:99:99:92', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-19 14:09:25', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0bc83a63f2acb4f7', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '52', '55:55:55:55:55:52', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-14 11:21:20', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0c0a9c30447d813d', '', '66', '66:66:66:66:66', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-16 14:19:29', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0c3ab7f2bc84ac3d', '', 'ap910', '99:99:99:99:99:91', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-19 14:02:14', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0ca7f1efe63ec56a', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'yefengOnlythingDevice11', '10:09:09:09:09:1b', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-03-07 14:29:56', '0000-00-00 00:00:00', '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0cb61dde4393793e', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug41', '00:08:d2:10:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:00', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0df4f9aceef1fe2a', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug52', '00:18:d2:00:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('0ece94dc94fb157b', '540ee87a-ac89-4eee-8246-562a627c7e1b', '12314', '2C:AD:00:88:00:00', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-06 14:21:22', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1021d81216353bbc', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug75', '00:18:d2:06:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1111', null, '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('120e332d78547f8d', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '434', '58:91:CF:37:49:11', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-28 16:28:33', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('126674156d9fc4f7', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug74', '00:18:d2:05:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('13bb4015e43c8d91', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '5222', '50:50:50:50:52:52', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-17 15:52:08', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('152349ad0a9e39ed', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '45', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-27 18:38:40', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('16c1005493628665', '', 'xxx0', '00:50:56:C0:00:70', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-24 11:48:35', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('18d1c1f877f17884', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug42', '00:08:d2:10:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:00', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1a10ebdcf21b3106', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'thing', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '2', '0', '2', '0', null, '2016-12-22 11:27:02', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1a6a9df2ee31c6a1', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug22', '00:08:d2:03:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:56', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1ae1571ba3c01402', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '12', '12:12:12:12:12:12', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-04-13 18:29:41', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1b17e956a25d1c97', '', 'coffe888880', '00:08:d1:d1:00:1f', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-26 15:30:44', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1bad3b128906a6cc', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug58', '00:18:d2:00:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1c55dad38f61ea19', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug18', '00:08:d2:00:09:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:55', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1cf593be9efc2995', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '12320', '55:55:55:55:51:29', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-28 10:32:49', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1edaf0630fb5066b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug61', '00:18:d2:00:02:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1f06a7e062455822', '23301403-8d90-4d9e-a35e-20b7d45b9116', '11', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-21 10:04:24', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1f4e2887139a2288', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug40', '00:08:d2:10:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1f5906d6baa3d8ff', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug11', '00:08:d2:00:02:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:54', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1f5b1c20d09900ab', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '00:0C:43:76:20:67', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('1fc67975467c02c7', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'zz0', '55:55:55:55:55:99', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-08 14:37:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('203c8628b7e0017f', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug78', '00:18:d2:09:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:07', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2052bf1c2514beed', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '022', '55:55:55:55:55:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-10 14:54:27', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('211c2918f26bbc2b', '', 'coffe5550', '00:08:d1:d1:00:1a', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-26 11:33:36', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('212b806b56dc11f9', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'TEST1', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 11:12:25', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('23d9ac52dbbf2ea5', '23301403-8d90-4d9e-a35e-20b7d45b9116', '1234', '00:08:09:09:09:00', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-28 17:13:41', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('23fe16c86c6b08e7', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug84', '00:18:d1:00:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:08', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('242ff3c54a73961f', '', '99', '99:99:99:99:99:99', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-16 16:20:20', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('249931b595a0c989', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'fdsafdsafdsf', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-05 11:40:25', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2516de6488508900', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug62', '00:18:d2:00:03:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('25501fbd3537d3e3', '', '', '00:0C:43:76:20:88', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2667ae4ee6e048bd', '', '设备3', '21443243545', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-13 14:44:19', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('26804a26226d9949', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug97', '00:18:d2:10:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2720c882d836168d', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug85', '00:18:d1:00:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:08', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2867acec6496b875', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug72', '00:18:d2:03:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2a5943b324954e9b', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2b5d29054845f73e', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2b656123127e979d', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'test12', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 15:02:38', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2d2f75d1f620dffc', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2e1d682b77d84421', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'yefeng_device1', '11:09:05:09:09:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-07 11:13:51', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2e91040a40ded76c', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '234234324', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-27 20:49:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('2e9cb5a880ac2484', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'test', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-21 10:43:19', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3214053e6c49b38b', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'scene', '00:00:4C:4F:4F:51', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-04-11 15:22:56', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('32f05dce26f9c91d', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', 'MTK_CXF_001', '5C:CF:7F:1B:47:5C', '1d0971a5467891ef5ff0e56fde8c4ec0', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-03-13 15:06:12', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('33315ae60aa11694', '23301403-8d90-4d9e-a35e-20b7d45b9116', '01010', '00:08:09:01:01:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-11 11:23:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('343b8c2a7b0624f8', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'as', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-05 16:19:03', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('34ee997e22342440', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('390e8b5579fe8139', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug35', '00:08:d1:00:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('39cd75b0398b9f96', '', 'Riva_devive0', '00:01:6C:06:3E:37', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-28 10:04:00', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3cc48546116383fa', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'tthash', '10:09:09:09:09:1c', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-08 10:16:46', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3d31a63f1be88342', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', 'ESP8266_DEV', '5C:CF:7F:0F:B9:C0', '9a5781d59ba2526b12f352e7ce1efee1', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-04-24 15:27:19', '0000-00-00 00:00:00', '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3db8e85f490bc34f', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug71', '00:18:d2:02:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3e12ba8cd8573a7e', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'thing', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '2', '0', '2', '0', null, '2016-12-22 11:28:23', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3e3956a7b4e0446d', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug56', '00:18:d2:00:00:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:03', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3f634921d104cc0a', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug54', '00:18:d2:00:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:02', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3fb1a181ed294d14', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1010', '55:55:55:55:52:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 16:14:09', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('3fb969558f0573b7', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', '网关测试', '2C:AD:13:00:6E:45', '505099294433798590d408ee2f77e6df', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-03-10 09:49:23', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('40aa9d13031be26d', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug23', '00:08:d2:04:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:56', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('41ea96e6dae3b700', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'ap100', '55:55:55:55:55:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-21 15:45:07', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('44cc693f74a85150', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'rf0', '00:50:56:C0:00:72', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-28 17:57:39', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('465ecc423d16a87f', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug34', '00:08:d1:00:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('47df29b8565f5fca', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '03', '55:55:55:55:55:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-10 15:00:17', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('48218ababb039e6b', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '00:0C:43:76:20:67', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('4a6722236d302361', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug76', '00:18:d2:07:00:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:07', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('4b637b78b3c786ef', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '人天天', '0e:0e:Ee:Ee:05:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-04-07 10:51:36', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('4e88bf1b783e6126', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', '11111', '00:08:d2:00:00:11', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-13 16:15:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('508d9d3141c8d0f4', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug88', '00:18:d1:00:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:09', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('52170c0c2d48161e', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug66', '00:18:d2:00:07:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('53467b4b808a83bf', '23301403-8d90-4d9e-a35e-20b7d45b9116', '109', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-21 10:01:15', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('535b3a796b480716', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug27', '00:08:d2:08:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:57', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('54561d63e62dbdb1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '010530', '11:11:11:11:01:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-12 15:53:50', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('55397ff1bc25568e', '', '', '16:bd:0a:e0:b5:69', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5587ab2d9a6b727f', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug83', '00:18:d1:00:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:08', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('55c881f5cfde02b3', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug33', '00:08:d1:00:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5a1c3a2f89cbf647', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug59', '00:18:d2:00:00:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5a52f82213c6d1a9', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug25', '00:08:d2:06:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:57', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5ae364d0b045bb46', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug9', '00:08:d2:00:00:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:53', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5e15544f1eeddbcd', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug55', '00:18:d2:00:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:02', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5eed22b9dffb69a8', '', '', '00:0C:43:76:20:88', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5f02dd8babacf3e3', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug60', '00:18:d2:00:01:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5f3c65da46f42dec', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '50', '50:50:50:50:50:50', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-03 10:40:27', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('5f3f9bb4acf7fc03', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', '23232', '00:08:d2:00:1a:11', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-13 16:15:53', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('62ed2cc839442eb3', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('645724a433f656f2', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '01040', '11:11:11:11:01:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-12 16:07:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('664fbf6366829c17', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug37', '00:08:d1:00:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('66a24b2c66a46c38', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6807f84a746d14a2', '', '380', '33:33:33:33:33:38', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-16 09:52:38', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('680f889699aa4f28', '', '', '78:A3:51:76:20:60', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('68e52fbcd6913cfd', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug30', '00:08:d1:00:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6919986e98c476d9', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'testtt', '0e:0e:Ee:Ee:05:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-04-07 10:47:32', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6c477a867540da58', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug38', '00:08:d1:00:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6d05c8ec6cf71ffd', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '123qw0', '55:55:55:55:52:29', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-28 10:34:21', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6e0d31dba6533a67', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '24', '58:91:CF:37:49:12', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-02-28 16:30:21', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6e855d9c094132de', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6eda1192d1b83eab', '23301403-8d90-4d9e-a35e-20b7d45b9116', '65', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-27 19:07:51', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6f2fa5b32e15cb01', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '110', '55:55:55:55:55:11', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-10 15:09:46', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('6f42ddd4c273ef63', '540ee87a-ac89-4eee-8246-562a627c7e1b', '11', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 14:51:31', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7006abc3a03236b4', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'yefengNoneOnlythingDevice1', '10:09:09:09:09:1a', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-07 14:13:55', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('74c0308c2bd2071a', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ffffff', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-21 12:04:14', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('752535a51780ab95', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '10010', '11:11:11:11:01:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-01-12 15:42:09', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('769961b0b2014ad8', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug44', '00:08:d2:10:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:00', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('76c43f9ce848bda6', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug90', '00:18:d2:10:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:09', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('77942831fdf7a1b5', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug31', '00:08:d1:00:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7918b800ed97db9f', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug69', '00:18:d2:00:10:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7a8063eaf9e5ef9b', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '04', '55:55:55:55:55:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-10 15:03:51', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7ab2ecf280c6f32f', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug92', '00:18:d2:10:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7b0d672114ede08a', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug79', '00:18:d2:10:00:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:07', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7c134134c3d84b74', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug8', '00:08:d2:00:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:53', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7d3a4ff129ecd993', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'cece0', '00:08:d2:10:00:0d', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-27 18:35:15', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('7e6f2e82a05da446', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'xsws', '58:91:CF:37:49:76', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-16 20:04:51', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('806a9a2a42849f00', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug15', '00:08:d2:00:06:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:55', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('80c3fd1927d9faae', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug0', '00:08:d2:00:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:52', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('810cfb1ad6479941', '540ee87a-ac89-4eee-8246-562a627c7e1b', '11', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 16:35:25', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('813419824228cc21', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '00:0C:43:76:20:67', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('84d207f1463ba74f', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '123qw1', '55:55:55:55:52:27', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-28 10:34:21', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('87fa294580de9366', '', 'wuge390', '33:33:33:33:33:39', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-16 10:19:51', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('8a14093b362d55f5', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'cjsb', '1234567890', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '2', '0', '2', '0', null, '2016-12-02 16:30:42', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('8a7f92236ca35437', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '001', '55:55:55:55:55:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-10 14:34:30', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('8b9057416ac1f838', '', 'ttt0', '00:08:09:09:01:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-09 11:26:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('8c1cfb68f113f25c', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug81', '00:18:d1:00:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:07', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('8cf5fa85433b4f61', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug6', '00:08:d2:00:00:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:53', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('8f02f2db912d75f0', '', 'ap75', '00:50:56:C0:75:75', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-18 14:15:41', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('902d4df9f5976104', '', '', '00:0C:43:76:20:88', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('921c6c0b810bfefe', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug77', '00:18:d2:08:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:07', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9386e5977b59fc6f', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9435c179b98b2092', '', '1111110', '33:33:33:33:33:33', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-15 16:57:17', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('946a196157ae3b9d', '23301403-8d90-4d9e-a35e-20b7d45b9116', '09090', '00:08:09:09:09:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-05 14:20:31', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('948803c59038e574', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'test', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 14:39:32', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9564b441cafbab53', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug3', '00:08:d2:00:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:52', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('968147914b76d681', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug47', '00:08:d2:10:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('974fbd77dc43c0aa', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'werewr', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-27 20:49:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9783a811088b6001', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '123', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-24 15:57:52', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9889a1e84cb6cdb4', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'fghjkl0', '78:A3:51:76:20:77', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-30 14:42:30', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('98c31ab58d6ae6c3', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', 'sss', '00:0C:43:76:20:11', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-10 10:46:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9957012b8cdfc25b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug65', '00:18:d2:00:06:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('99b1bf29e6e0e1a5', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'qq123', '00:08:09:09:09:99', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 15:21:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9c6d8f428195b5eb', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug67', '00:18:d2:00:08:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9cf713cc10819d73', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('9ed8ce78929d619c', '', '设备1', '21443243545', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-13 14:35:45', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a01e4358cbc69a08', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug4', '00:08:d2:00:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:52', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a11935d9508c767b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug80', '00:18:d1:00:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:07', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a4a98c736d82b201', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug16', '00:08:d2:00:07:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:55', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a67e5324862be84c', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'qazwsx', '00:08:09:09:09:cc', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-17 15:08:45', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a6d32acbd0edc444', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug17', '00:08:d2:00:08:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:55', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a71b71aeaa569ff5', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug64', '00:18:d2:00:05:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a7a9dec3a97bfd45', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'devdf', '64:27:37:60:74:C7', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-16 10:42:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('a9b793a5ac1b2d30', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug28', '00:08:d2:09:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:57', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ab4615b9f1b7e65d', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug96', '00:18:d2:10:00:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('abc190e2fea2645b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug12', '00:08:d2:00:03:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:54', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('adc2e8ccf40765d8', '', '', '00:0C:43:76:20:88', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('af0fff7709691860', '', 'ap400', '33:33:33:33:33:40', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-16 10:28:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b138b16ea93b3bc6', '23301403-8d90-4d9e-a35e-20b7d45b9116', '020', '00:08:09:01:01:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-11 11:24:18', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b201e3b6e185fc19', '', 'ap900', '99:99:99:99:99:90', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-19 13:58:37', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b207b36f8fc28d5c', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug14', '00:08:d2:00:05:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:54', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b2aee8e8b57595ec', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '522', '50:50:50:50:50:52', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-03 11:12:16', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b2fa17234ed9bffb', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1p123', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-20 17:36:50', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b34cb1f309ad579d', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', 'MTK_THING', '00:0C:43:76:20:66', '97806bf1b6ba3c9ff62c08ee29a89955', 'dd32a123800ed3a56bc2659186c8359a', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-05-05 15:05:57', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b3749f2daef0db06', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug94', '00:18:d2:10:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b395e41dd0a4aee1', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b3b20d3de658b642', '540ee87a-ac89-4eee-8246-562a627c7e1b', '2201', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 15:08:39', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b4ca73c6a9a19728', '540ee87a-ac89-4eee-8246-562a627c7e1b', '11', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 14:42:44', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b50c3242ff794096', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug98', '00:18:d2:10:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b6368c7898e516ed', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'ap015', '12:12:12:12:12:15', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-04-14 09:49:21', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b648a11bdf6f9812', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug20', '00:08:d2:01:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:56', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b6c7fc67ce65fb5e', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b6f8f578597cce47', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', 'MRJ', '78:A3:51:76:20:59', '61d51ea0ebe0916aac1e59188b14f69b', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-03-31 18:54:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b78b1405f69ff065', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug89', '00:18:d1:00:00:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:09', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('b862470577926ee5', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug10', '00:08:d2:00:01:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:54', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('baa6fb847328b984', '', 'Riva_devive20', '00:01:6C:5f:3E:37', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-28 10:08:53', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('bb0c04b8413d21a5', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '53', '50:50:50:50:52:53', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-17 15:53:24', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('bf0532448ad5f233', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug5', '00:08:d2:00:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:53', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c2a553aec3e770c0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '090', '55:55:55:55:52:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 16:15:32', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c305c33bbc44b7ac', '', 'ap930', '99:99:99:99:99:93', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-19 14:27:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c32169531902b0c0', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug21', '00:08:d2:02:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:56', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c3fbf8a0d136bea6', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '00:0C:43:76:20:67', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c4ddf67aad1f7ba0', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug36', '00:08:d1:00:00:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c6be38ad15e90423', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug91', '00:18:d2:10:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:09', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c78082afc5e32047', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug57', '00:18:d2:00:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c8b6f98f172921f0', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug39', '00:08:d1:00:00:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('c9867b28ab5f3cab', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'zl', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-24 14:22:03', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ca9077fd3a12a6ee', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '000', '55:55:55:55:55:00', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-10 14:32:14', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('cac1ae9fa6e5dcef', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug1', '00:08:d2:00:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:52', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ce9f143def568331', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0090', '2C:AD:13:00:10:55', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-22 19:27:25', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('d3a49302ce0b7cc9', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ccccxxxx', '58:91:CF:37:49:75', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-16 19:56:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('d3f55e9d2e7e82f2', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug2', '00:08:d2:00:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:52', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('d61f67648bdb51e9', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '533', '55:55:55:55:53:53', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 15:31:03', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('d6ac83544e956153', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug51', '00:18:d2:00:00:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('d8ba4a96d4ad1d1b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug7', '00:08:d2:00:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:53', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('d9d20f8f6fc7bec8', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug48', '00:08:d2:10:00:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('dd3457673433182d', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'dengfei_device', '00:09:09:09:09:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 16:55:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('df963c6054f0c3ff', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug53', '00:18:d2:00:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:02', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e008ce98848b1a14', '', '', '78:A3:51:01:27:D3', 'cb9bf7e5d0d98b8145d229fe134f4dbf', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e062658a962a8f8f', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug95', '00:18:d2:10:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:10', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e06fbf8dabcc9046', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug70', '00:18:d2:01:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e107ec87f2a975db', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', 'zwEspLed_0210', '5c:cf:7f:1b:47:5c', '1d0971a5467891ef5ff0e56fde8c4ec0', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '1', '0', null, '2017-03-13 15:06:12', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e25c0962e2159959', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'dengfeitest2', '00:08:09:09:11:ff', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 16:26:28', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e34ab951a8d23eef', '', '设备2', '21443243545', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-13 14:37:36', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e4e5d8efe4f5ffc2', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'dengfeitest', '00:08:09:09:aa:ff', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 16:23:21', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e615f519d5d70bc6', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug68', '00:18:d2:00:09:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e65e170a14fe734b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'conftest', '00:08:09:09:09:ff', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-02-28 16:55:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e6b804d45ddc6508', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'rrwer', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2016-12-27 20:50:18', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e7606f5d466478cf', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'scene1', '00:00:4C:4F:4F:52', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-04-12 11:06:52', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e8cbd3b3fa18df39', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug24', '00:08:d2:05:00:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:56', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e91a877dc1bf9531', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug46', '00:08:d2:10:00:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e951ae00e13ee383', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug43', '00:08:d2:10:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:00', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('e99c28cb73af28df', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug73', '00:18:d2:04:00:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:06', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('eab3b8cd9b631757', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '12', '58:91:CF:37:49:99', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '0', '0', null, '2017-03-09 10:12:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ec59f7e7a4376599', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug13', '00:08:d2:00:04:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:54', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ef78849d3a8d1a85', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug32', '00:08:d1:00:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('efcc820b718387c4', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug50', '00:18:d2:00:00:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f15a2f5df82b6d7b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug82', '00:18:d1:00:00:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:08', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f1a9d5b85cdf28f5', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug45', '00:08:d2:10:00:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:00', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f1fbe499af23528e', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '111', '88:91:CF:37:11:11', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-03-01 16:12:37', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f3a36f28079d7224', '23301403-8d90-4d9e-a35e-20b7d45b9116', '爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd', '00:08:d2:10:00:0f', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:58:14', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f3c846c8c22a261d', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'thing', '', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '2', '0', '2', '0', null, '2016-12-22 17:14:43', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f6f7e394de612113', '23301403-8d90-4d9e-a35e-20b7d45b9116', '08080', '00:08:09:09:09:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-01-05 15:49:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f9e0599fb8968893', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug87', '00:18:d1:00:00:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:09', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('f9e97db36b226c48', '042593dc-84bb-4ac7-ab42-39329214b62b', 'Riva30', '00:01:6C:06:A6:21', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, null, null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('fc18e0515b61170e', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug63', '00:18:d2:00:04:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:02:04', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('fc672d63d47140ea', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'bug19', '00:08:d2:00:10:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '0', '0', '2', '0', null, '2016-11-29 17:01:55', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g034323c617796d8', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp1', '12:12:12:12:01:12', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:25', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g05789e34b6839a5', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04548', '12:12:12:12:01:49', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g09288032347beb9', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04540', '12:12:12:12:01:41', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:12', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g0f762c38b4b7a24', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04542', '12:12:12:12:01:43', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g1b11d88f02eecc9', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a022', '12:12:12:12:01:23', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g1d22a8cb29bef0d', '23301403-8d90-4d9e-a35e-20b7d45b9116', '1000', '12:12:12:12:01:10', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 13:56:11', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g211fb86fbca9004', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a025', '12:12:12:12:01:26', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g2b24e2e215e3716', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '0011', '12:12:12:12:01:01', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '0', '0', null, '2017-05-05 16:44:47', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g2c1cad5058589c9', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp7', '12:12:12:12:01:18', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g2f5e58891e523f8', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03032', '12:12:12:12:01:33', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g32e259f4a03e242', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04547', '12:12:12:12:01:48', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g332d726e70faf7b', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp0', '12:12:12:12:01:11', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:25', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g36dce8ba58349c9', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0551', '12:12:12:12:01:51', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:34:17', '2017-06-20 17:43:18', '0', null, '2017-06-21 17:43:25');
INSERT INTO `tbl_iot_device_basic` VALUES ('g3912631ba9c913d', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a028', '12:12:12:12:01:29', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g3e091b713d6627a', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a020', '12:12:12:12:01:21', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g3f6e23f7541ed1e', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0009', '12:12:12:12:01:09', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 13:55:01', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g433f8ab734d4245', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp9', '12:12:12:12:01:20', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g63a39096e5a2d34', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03033', '12:12:12:12:01:34', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g691073a44e52b3d', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp3', '12:12:12:12:01:14', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g695ae52eb67e0e3', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp6', '12:12:12:12:01:17', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g69dcaa6ff523c72', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04543', '12:12:12:12:01:44', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g6a081de2dd9ce27', '23301403-8d90-4d9e-a35e-20b7d45b9116', '5002', '12:12:12:12:01:50', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:31:46', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g6d4f01a9ebfbcf2', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03034', '12:12:12:12:01:35', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g6e1dc8a918462b5', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a027', '12:12:12:12:01:28', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g70fc9eecb205281', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03037', '12:12:12:12:01:38', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g7cda5190e186bff', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '0002', '12:12:12:12:01:02', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-05 16:49:35', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g801c26c4bede7e5', '23301403-8d90-4d9e-a35e-20b7d45b9116', '006', '12:12:12:12:01:06', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 11:05:00', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g891bab20f19a12d', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '0003', '12:12:12:12:01:03', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-05 18:22:15', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g96511ac782a3aa7', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp4', '12:12:12:12:01:15', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('g96c08a1c605357a', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0004', '12:12:12:12:01:04', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 09:51:34', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ga6a9d19d3c522c7', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03030', '12:12:12:12:01:31', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gab7e1d71ee4d73f', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03036', '12:12:12:12:01:37', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gac2fee9569b669c', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04546', '12:12:12:12:01:47', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gaceaf58776813f9', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04544', '12:12:12:12:01:45', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gb1b406aa7b637e4', '23301403-8d90-4d9e-a35e-20b7d45b9116', '00008', '12:12:12:12:01:08', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 11:10:58', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gb2caa7e0953048c', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03031', '12:12:12:12:01:32', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gc8fbe87dbfeef26', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp8', '12:12:12:12:01:19', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gd053b66e5088128', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp5', '12:12:12:12:01:16', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gd2de7305e6972b1', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'e5', '12:12:12:12:01:05', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 09:55:51', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gd3e9f8c6846fa23', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03038', '12:12:12:12:01:39', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gd4cbe96bc82f785', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a023', '12:12:12:12:01:24', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gd5edfe9dc3890e4', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a026', '12:12:12:12:01:27', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gdb3baed6cf381d7', '23301403-8d90-4d9e-a35e-20b7d45b9116', '0007', '12:12:12:12:01:07', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 11:06:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ge6ab9e6401a273a', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a021', '12:12:12:12:01:22', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ge8cca8b76f8d0a4', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'a024', '12:12:12:12:01:25', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:06:59', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('ge931f4c51f77105', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04545', '12:12:12:12:01:46', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gf45badd16ade7aa', '23301403-8d90-4d9e-a35e-20b7d45b9116', '03035', '12:12:12:12:01:36', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:08:05', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gf5d7e92a04745fc', '23301403-8d90-4d9e-a35e-20b7d45b9116', 'ppp2', '12:12:12:12:01:13', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:02:26', null, '0', null, null);
INSERT INTO `tbl_iot_device_basic` VALUES ('gf8f4bc620061278', '23301403-8d90-4d9e-a35e-20b7d45b9116', '04541', '12:12:12:12:01:42', 'ffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffff', null, null, null, null, null, null, null, '1', '0', '2', '0', null, '2017-05-08 14:12:13', null, '0', null, null);

-- ----------------------------
-- Table structure for `tbl_iot_device_dyn`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_device_dyn`;
CREATE TABLE `tbl_iot_device_dyn` (
  `deviceid` varchar(16) NOT NULL,
  `wanaddr` varchar(130) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mask` varchar(20) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `dhcpswitch` tinyint(1) DEFAULT NULL,
  `startip` varchar(20) DEFAULT NULL,
  `endip` varchar(20) DEFAULT NULL,
  `leasetime` int(10) NOT NULL DEFAULT '3600',
  `dnsserver1` varchar(20) DEFAULT NULL,
  `dnsserver2` varchar(20) DEFAULT NULL,
  `betaflag` tinyint(1) DEFAULT '0',
  `balancetime` tinyint(11) DEFAULT NULL,
  `addtime` tinyint(11) DEFAULT NULL,
  `onlinenum` int(10) DEFAULT NULL,
  `maxonline` int(10) DEFAULT NULL,
  `rebootnum` int(10) DEFAULT NULL,
  `upflux` bigint(10) DEFAULT '0',
  `downflux` bigint(10) DEFAULT '0',
  `totalflux` bigint(10) DEFAULT '0',
  `payload` float(10,2) DEFAULT NULL,
  `totalmem` int(10) DEFAULT NULL,
  `freemem` int(10) DEFAULT NULL,
  `hotspot` varchar(16) DEFAULT NULL,
  `onlinetime` int(10) DEFAULT NULL,
  `portalid` varchar(16) DEFAULT NULL,
  `ssid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`deviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_device_dyn
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_iot_device_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_device_group`;
CREATE TABLE `tbl_iot_device_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '组名',
  `pid` int(11) NOT NULL DEFAULT '0',
  `productid` varchar(16) NOT NULL COMMENT '所属产品id',
  `grouppath` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL COMMENT '描述',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime NOT NULL COMMENT '修改时间',
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '设备组所处的层级',
  `userid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_device_group
-- ----------------------------
INSERT INTO `tbl_iot_device_group` VALUES ('2', '科技园', '1', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('3', 'K2', '2', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('4', 'F5', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('5', '空调组', '4', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('6', '1234', '4', '1', '深圳/科技园/K2/F5', 'ertyu456789', '2016-11-09 16:51:08', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('8', '12', '4', '0', '深圳/科技园/K2/F5', '', '2016-11-15 11:10:47', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('9', 'test', '6', '0', '深圳/科技园/K2/F5/1234', 'test', '2016-11-17 16:37:25', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('10', 'zhou', '1', '19', '深圳', '', '2016-11-17 16:47:06', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('11', '测试3', '1', '5', '深圳', '', '2016-11-17 16:56:08', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('12', '11111', '8', '0', '深圳/科技园/K2/F5/12', '', '2016-11-17 17:09:00', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('13', 'yefeng_device_group', '1', '0', '深圳', '', '2016-11-17 19:34:22', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('14', 'D_Riva', '1', '0', '深圳', 'D_Riva', '2016-11-18 13:56:16', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('15', '北京', '2', '0', '深圳/科技园', '', '2016-11-18 14:27:34', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('16', 'Riva', '3', '0', '深圳/科技园/K2', '的说法的说法的说法的说法的说法&gt;的说法的说法的说法的说法的说法123!##$54565$%^#$%#$#', '2016-11-18 14:29:58', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('17', '上海', '0', '0', '请选择', '', '2016-11-18 15:52:21', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('18', '上海1', '1', '0', '深圳', '', '2016-11-18 15:53:34', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('19', '上海1_2', '17', '0', '上海', '', '2016-11-18 15:54:10', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('20', 'r1', '0', '0', '请选择', '', '2016-11-18 17:23:48', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('22', 'lihua', '0', '19xBN61iNp84sVGy', '', '', '2016-11-24 11:27:51', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('23', 'lihua1', '0', '19xBN61iNp84sVGy', '', '', '2016-11-24 11:28:19', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('24', 'lihua1145878979879879856464654ad', '0', '19xBN61iNp84sVGy', '', '', '2016-11-24 11:30:10', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('26', 'lihua4', '10', '19xBN61iNp84sVGy', '', '', '2016-11-24 11:34:40', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('27', 'lihua6', '10', '19xBN61iNp84sVGy', '', 'a', '2016-11-24 11:39:44', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('28', 'lihua7', '2', 'u9g3x4zqGrvzRCkR', '', '', '2016-11-24 11:58:29', '2016-11-24 14:28:25', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('29', 'lihua8', '10', '19xBN61iNp84sVGy', '', 'a1231>sdf', '2016-11-24 11:59:52', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('31', '0', '31', 'u9g3x4zqGrvzRCkR', '上海/上海1_2/0', '', '2016-12-09 17:24:07', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('34', 'k5', '0', 'u9g3x4zqGrvzRCkR', 'k5', '', '2016-11-28 15:30:27', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('36', 'yyooyy', '0', 'u9g3x4zqGrvzRCkR', 'yyooyy', 'xxxxxxyyyyy', '2016-12-05 16:13:00', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('37', 'ccccccccccccccc', '0', '0woIM5rzh3g64xL8', '上海/上海1_2', '1234青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd1234青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd1234青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼abcd1234青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼爱国路知青楼B22栋3楼爱国路知青楼B栋3楼爱国路知青楼B栋3楼ab', '2016-12-26 11:00:33', '2016-12-26 14:51:26', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('38', 'ffffff', '0', 'b9ylMNfxbjFHRP3X', '上海/上海1_2', '', '2016-12-26 10:44:13', '0000-00-00 00:00:00', '0', '');
INSERT INTO `tbl_iot_device_group` VALUES ('39', 'textdf', '19', 'E3AppulYVL4dN8ag', '上海/上海1_2', 'cccsssssslevl', '2016-12-26 17:36:08', '0000-00-00 00:00:00', '3', '');
INSERT INTO `tbl_iot_device_group` VALUES ('40', 'leveltest', '39', 'xZKjTQyUjcGCXNGR', '上海/上海1_2/textdf', '', '2016-12-26 17:39:07', '0000-00-00 00:00:00', '4', '');
INSERT INTO `tbl_iot_device_group` VALUES ('41', 'level5', '40', 'xZKjTQyUjcGCXNGR', '上海/上海1_2/textdf/leveltest', '', '2016-12-26 17:39:18', '0000-00-00 00:00:00', '5', '');
INSERT INTO `tbl_iot_device_group` VALUES ('42', '铁塔项目组', '0', '9RMUrQoLCEd79nF1', '铁塔项目组', '', '2017-01-21 10:02:42', '0000-00-00 00:00:00', '1', '');
INSERT INTO `tbl_iot_device_group` VALUES ('44', 'wolaices', '0', '', 'wolaices', '', '2017-02-16 19:50:05', '0000-00-00 00:00:00', '1', '');
INSERT INTO `tbl_iot_device_group` VALUES ('45', 'aaccc', '0', '', 'aaccc', '', '2017-02-17 15:07:33', '0000-00-00 00:00:00', '1', '');
INSERT INTO `tbl_iot_device_group` VALUES ('46', 'wer', '0', '', 'wer', '', '2017-03-07 10:03:38', '0000-00-00 00:00:00', '1', '23301403-8d90-4d9e-a35e-20b7d45b9116');
INSERT INTO `tbl_iot_device_group` VALUES ('47', '111', '0', '', '111', '', '2017-03-13 16:11:37', '0000-00-00 00:00:00', '1', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044');
INSERT INTO `tbl_iot_device_group` VALUES ('48', 'abc', '17', '', '上海', '', '2017-03-15 11:37:50', '0000-00-00 00:00:00', '2', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a');
INSERT INTO `tbl_iot_device_group` VALUES ('49', 'zlh', '39', '', '上海/上海1_2/textdf', 'sdf', '2017-03-16 17:03:45', '0000-00-00 00:00:00', '4', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a');
INSERT INTO `tbl_iot_device_group` VALUES ('50', 'wuge', '0', '', 'wuge', '', '2017-03-21 13:52:22', '0000-00-00 00:00:00', '1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a');
INSERT INTO `tbl_iot_device_group` VALUES ('51', 'wuge_1', '50', '', 'wuge', '334', '2017-03-21 13:52:32', '0000-00-00 00:00:00', '2', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a');
INSERT INTO `tbl_iot_device_group` VALUES ('52', 'wuge_2', '51', '', 'wuge/wuge_1', '23434', '2017-03-21 13:58:04', '0000-00-00 00:00:00', '3', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a');
INSERT INTO `tbl_iot_device_group` VALUES ('53', 'hjk', '46', '', 'wer', '', '2017-04-26 15:39:17', '0000-00-00 00:00:00', '2', '23301403-8d90-4d9e-a35e-20b7d45b9116');
INSERT INTO `tbl_iot_device_group` VALUES ('54', 'sf', '0', '', 'sf', '', '2017-06-21 17:18:18', '0000-00-00 00:00:00', '1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a');
INSERT INTO `tbl_iot_device_group` VALUES ('55', 'test2', '0', '', 'test2', '', '2017-06-21 17:18:34', '0000-00-00 00:00:00', '1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a');

-- ----------------------------
-- Table structure for `tbl_iot_gacl`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_gacl`;
CREATE TABLE `tbl_iot_gacl` (
  `id` varchar(16) NOT NULL,
  `priority` int(5) NOT NULL COMMENT '优先级',
  `permissin` tinyint(5) NOT NULL COMMENT '权限',
  `action` tinyint(5) NOT NULL COMMENT '动作1:Pub,2:Sub,3:Pub/Sub',
  `msg` varchar(256) NOT NULL COMMENT '消息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_gacl
-- ----------------------------
INSERT INTO `tbl_iot_gacl` VALUES ('1', '5', '1', '2', '5;1;2;1;MIA-IoT/ggg', '2017-01-06 11:53:18');
INSERT INTO `tbl_iot_gacl` VALUES ('11e28e433dc1c816', '50', '0', '2', '50;0;2;1;MIA-IoT/fg/?/', '2017-04-13 10:57:41');
INSERT INTO `tbl_iot_gacl` VALUES ('51ede9d1062ad776', '0', '0', '2', '0;0;2;1;MIA-IoT/', '2017-01-17 10:29:23');
INSERT INTO `tbl_iot_gacl` VALUES ('5993aaf7d589d82a', '5', '0', '2', '5;0;2;1;MIA-IoT/*', '2017-01-17 10:21:34');
INSERT INTO `tbl_iot_gacl` VALUES ('6a31bc51acadae7b', '55', '0', '2', '55;0;2;1;MIA-IoT/jk/gh/%c/', '2017-04-13 10:58:28');
INSERT INTO `tbl_iot_gacl` VALUES ('71d08424663532ad', '40', '0', '2', '40;0;2;1;MIA-IoT/sdf`', '2017-03-30 16:24:16');
INSERT INTO `tbl_iot_gacl` VALUES ('8ed74ca4ec4dee4a', '45', '0', '2', '45;0;2;1;MIA-IoT/ttteee', '2017-04-01 16:12:55');
INSERT INTO `tbl_iot_gacl` VALUES ('c0359f5ce4df2e4f', '88', '0', '1', '88;0;1;1;MIA-IoT/%u', '2017-03-24 10:46:09');
INSERT INTO `tbl_iot_gacl` VALUES ('d99dc0f4265325f4', '30', '0', '3', '30;0;3;1;MIA-IoT/', '2017-01-17 10:39:28');
INSERT INTO `tbl_iot_gacl` VALUES ('de4f9773f1c3eea9', '5', '0', '2', '5;0;2;1;MIA-IoT/test', '2017-01-17 10:21:15');
INSERT INTO `tbl_iot_gacl` VALUES ('e254a27854cea2cb', '15', '0', '2', '15;0;2;1;MIA-IoT/test', '2017-01-17 10:20:49');

-- ----------------------------
-- Table structure for `tbl_iot_globalacl`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_globalacl`;
CREATE TABLE `tbl_iot_globalacl` (
  `id` varchar(16) NOT NULL,
  `scene_id` varchar(16) NOT NULL COMMENT '对象场景',
  `priority` int(5) NOT NULL COMMENT '优先级',
  `permissin` tinyint(5) NOT NULL COMMENT '权限',
  `action` tinyint(5) NOT NULL COMMENT '动作1:Pub,2:Sub,3:Pub/Sub',
  `msg` varchar(256) NOT NULL COMMENT '消息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_globalacl
-- ----------------------------
INSERT INTO `tbl_iot_globalacl` VALUES ('0c92f359dd56dcef', '69051b0522a7b6e2', '10', '1', '2', '10;1;2;1;MIA-IoT/asdf', '2017-01-04 17:54:06');
INSERT INTO `tbl_iot_globalacl` VALUES ('123', '69051b0522a7b6e2', '5', '1', '2', '5;1;2;1;MIA-IoT/ggg', '2017-01-04 18:10:02');
INSERT INTO `tbl_iot_globalacl` VALUES ('2a94013c887e688c', 'cc5d70a899886ae1', '5', '0', '2', '5;0;2;1;MIA-IoT/er/ty', '2017-03-18 15:32:07');
INSERT INTO `tbl_iot_globalacl` VALUES ('32c29057d72bb8a0', 'CrMPr1Tj', '5', '1', '2', '5;1;2;1;MIA-IoT/%u', '2017-03-24 10:37:47');
INSERT INTO `tbl_iot_globalacl` VALUES ('4090c44e96110d07', 'cc5d70a899886ae1', '35', '0', '2', '35;0;2;0;MIA-IoT/fg/?/ghg', '2017-04-13 10:59:28');
INSERT INTO `tbl_iot_globalacl` VALUES ('470c5fd5f763e7e8', '69051b0522a7b6e2', '5', '0', '1', '5;0;1;1;MIA-IoT/fff', '2017-01-04 18:22:58');
INSERT INTO `tbl_iot_globalacl` VALUES ('5f5297344513b68c', '69051b0522a7b6e2', '15', '1', '3', '15;1;3;1;MIA-IoT/kkk', '2017-01-04 18:12:55');
INSERT INTO `tbl_iot_globalacl` VALUES ('9437e682e28d84a5', 'CrMPr1Tj', '2', '0', '3', '2;0;3;1;MIA-IoT/%u', '2017-03-24 10:38:22');
INSERT INTO `tbl_iot_globalacl` VALUES ('a49ae276608ff502', 'cc5d70a899886ae1', '25', '0', '2', '25;0;2;1;MIA-IoT/efer', '2017-03-21 14:14:12');
INSERT INTO `tbl_iot_globalacl` VALUES ('c9ece7b3b98453b8', '22bbc724da52d2c4', '5', '1', '3', '5;1;3;1;MIA-IoT/?', '2017-04-13 09:47:43');
INSERT INTO `tbl_iot_globalacl` VALUES ('e0d2c08285e15dbc', 'cc5d70a899886ae1', '5', '0', '2', '5;0;2;1;MIA-IoT/34/45/45/45', '2017-03-18 15:17:51');
INSERT INTO `tbl_iot_globalacl` VALUES ('e120290441eb8cb2', '69051b0522a7b6e2', '5', '0', '1', '5;0;1;1;MIA-IoT/hhh', '2017-01-04 18:23:08');
INSERT INTO `tbl_iot_globalacl` VALUES ('e9735bf7d8a63eef', 'cc5d70a899886ae1', '10', '0', '2', '10;0;2;1;MIA-IoT/sdd', '2017-03-21 10:37:21');
INSERT INTO `tbl_iot_globalacl` VALUES ('ee4a58b65c05d573', 'cc5d70a899886ae1', '5', '0', '2', '5;0;2;1;MIA-IoT/23', '2017-03-21 10:08:28');
INSERT INTO `tbl_iot_globalacl` VALUES ('f9ac5e2b31e6610f', '2WP2ZSh0', '5', '0', '2', '5;0;2;1;MIA-IoT/t4', '2017-04-12 13:58:40');

-- ----------------------------
-- Table structure for `tbl_iot_interface_info`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_interface_info`;
CREATE TABLE `tbl_iot_interface_info` (
  `id` varchar(16) NOT NULL COMMENT '索引',
  `board_id` varchar(16) NOT NULL COMMENT '模块ID',
  `name` varchar(64) DEFAULT NULL COMMENT '接口名称',
  `index` varchar(10) DEFAULT NULL COMMENT '接口编号，只针对GPIO',
  `type` tinyint(5) DEFAULT NULL COMMENT '接口类型',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `description` varchar(256) DEFAULT NULL COMMENT '•	接口描述',
  `conf` text COMMENT '配置',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_iot_interface_info_tbl_iot_board_info1_idx` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模块接口描述表';

-- ----------------------------
-- Records of tbl_iot_interface_info
-- ----------------------------
INSERT INTO `tbl_iot_interface_info` VALUES ('0oFLYsr1BgBZfbe0', 'k9d9R7NBSORDLa2c', 's2', null, '0', '2017-06-21 17:01:26', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('0zNopY7BrGXB3MOt', 'VDDWsiqX3SpzQOUW', 'wuge', '0', '1', '2016-11-10 19:36:04', null, '3', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('123ewe', 'CTnD2XFabzmJb2Vs', '234', '0', '1', '2016-11-10 17:09:23', null, null, '{\"id\":\"7d50de4a9d40ce9c\",\"dynlib_path\":\"\\/lib\\/11.so\",\"functions\":[{\"name\":\"biaoshi\",\"alias\":\"gongneng\",\"type\":\"1\",\"input\":[{\"name\":\"qq\",\"tag\":\"q\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":1}],\"output\":[{\"name\":\"qq\",\"tag\":\"q\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":1},{\"name\":\"ww\",\"tag\":\"w\",\"datatype\":0,\"minValue\":2,\"maxValue\":8,\"defValue\":2}]},{\"name\":\"123213\",\"alias\":\"12323\",\"type\":\"1\",\"input\":[{\"name\":\"1ee\",\"tag\":\"1\",\"datatype\":0,\"minValue\":1,\"maxValue\":56,\"defValue\":4}],\"output\":[{\"name\":\"1ee\",\"tag\":\"1\",\"datatype\":0,\"minValue\":1,\"maxValue\":56,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('1jhdRphPu7GjkRS8', 'oXCjm3YkhMBCKKLF', 'eth', 'ETH0', '1', '2017-03-06 10:01:29', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('1OL1JlTFFkb3T3tm', 'c0lADLt0ykOYuAF3', 'wifi', null, '0', '2016-12-22 14:12:46', null, '', '{\"id\":\"5f2fed0e099dcf1d\",\"dynlib_path\":\"\\/lib\\/camera.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"camera_open\",\"alias\":\"open\",\"type\":1,\"input\":[{\"name\":\"open\",\"tag\":\"1\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"name\":\"close\",\"tag\":\"0\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}],\"output\":[{\"name\":\"open\",\"tag\":\"1\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"name\":\"close\",\"tag\":\"0\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":\"camera_init\",\"alias\":\"init\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"11\",\"datatype\":0,\"minValue\":11,\"maxValue\":22,\"defValue\":12}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('23cJLPE29ljMEPnp', 'agmnsVWiwfWmLHm9', '21323', 'GPIO1', '6', '2016-12-29 10:04:30', null, '123123', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('23coLfQZWYuwX5N2', 'E9Q8kVtv80ZFRCEx', 'operation', null, '0', '2016-12-21 10:23:10', null, '', '{\"id\":\"f5fff40f8a124506\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"LED_OPERATION\",\"alias\":\"led_gpio_operation\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"C8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"LED_INIT\",\"alias\":\"led_gpio_init\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"GPIO_STATE\",\"alias\":\"led_gpio_state\",\"type\":1,\"output\":[{\"name\":\"STATE\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('25ZG9sCQK25WI5Jo', '5HPeXbA0S3soc18k', '都别用', '0', '1', '2016-12-16 14:30:54', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('2pSAeEX1UwbvWioq', 'fPExd0LWcVnVl7FW', 't3', null, '3', '2017-03-30 14:22:48', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('3dFIpeJiK34w5WlD', 'fPExd0LWcVnVl7FW', 'r', null, '0', '2017-03-30 14:21:48', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('3odArQ31xxoBWQ6I', 'mpfmvG5V6NruwhhZ', 'wifi1', null, '0', '2017-02-10 10:52:40', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('3oExCEp2Aznamh5D', 'SobLNGHpsiXNFK68', 'rest2', null, '2', '2017-04-05 11:31:37', null, 'rest2rest2rest2rest2rest2rest2rest2rest2rest2rest2rest2rest2', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('4Fm6ivkSRiWioSQz', 'ualpcoRjT0PJ52ta', 'wifi', null, '0', '2017-02-10 14:53:18', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('56Q13r733lCn56TW', 'k9d9R7NBSORDLa2c', 'w3', null, '0', '2017-06-21 17:01:29', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('5blkCmE8xTJXqAqe', 'agmnsVWiwfWmLHm9', 'rerer', 'ETH1', '1', '2016-12-28 09:54:41', null, '343', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('7bKqKTFL8sDjagng', 'JyQGi9FDVouP3b6l', 'test2016', null, '0', '2016-12-22 19:25:33', null, '', '{\"id\":\"9ee7b2d8791e07b7\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"zl_contect_equipment_operation\",\"alias\":\"OPERATION\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"b8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":0}],\"output\":[{\"name\":\"operation\",\"tag\":\"b8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":0}]},{\"name\":\"zl_contect_equipment_init\",\"alias\":\"INIT\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('8iLauncoPDigT0u9', 'QWa646lXX4vUUaKp', 'cccccc', null, '2', '2016-12-16 16:42:10', null, '', '{\"id\":\"2efde7b788e41bf6\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":2,\"functions\":[{\"name\":\"led_init\",\"alias\":\"led_init\",\"type\":0,\"input\":[{\"name\":\"dd\",\"tag\":\"d\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"led_switch\",\"type\":1,\"input\":[{\"name\":\"gh\",\"tag\":\"h\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('8TJKrx59I7gKKcpw', 'hujFSnjndG4YkIX2', '11', '0', '2', '2016-11-17 15:04:58', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('9qXGOLmcl8BFAnoR', 'oxj7bXnPkMZAQ2hM', 'sdafef', null, '0', '2017-02-24 10:48:08', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('9sXKOqqa8KhSJss3', 'oXCjm3YkhMBCKKLF', 'wifi', null, '0', '2017-03-06 10:01:19', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('A6OHWqbwEWSLpnBe', 'osQkLJguRPD6hGVB', '串口', null, '4', '2017-02-10 14:51:41', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('Ac2r9aCtlvOH4pW3', 'OSoICXUycjjRBttG', '22222222222222222222222222222', '0', '3', '2016-11-17 13:45:59', null, 'erewrferfe', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('AFDw2mCtLV8xllJe', 'vSRkskQ92y8pRTDl', 'UART1', null, '0', '2017-02-07 17:54:21', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('AKB3cFurGzgOCLMl', '86m1jSj8fPo9PfUt', '64', null, '0', '2017-04-10 11:03:52', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('Al2NJ4ro0j99PHp8', 'SobLNGHpsiXNFK68', 'rest3', null, '3', '2017-04-05 11:31:58', null, 'rest2rest2rest2rest2rest2rest2rest2rest2rest2', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('bByiNoL5xSxXb5qN', 'c0lADLt0ykOYuAF3', 'eth', '0', '1', '2016-12-22 14:12:56', null, '', '{\"id\":\"5f2fed0e099dcf1d\",\"dynlib_path\":\"\\/lib\\/camera.so\",\"index\":0,\"type\":1,\"interval\":0,\"functions\":[{\"name\":\"camera_open\",\"alias\":\"open\",\"type\":1,\"input\":[{\"name\":\"open\",\"tag\":\"1\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"name\":\"close\",\"tag\":\"0\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}],\"output\":[{\"name\":\"open\",\"tag\":\"1\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"name\":\"close\",\"tag\":\"0\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":\"camera_init\",\"alias\":\"init\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"11\",\"datatype\":0,\"minValue\":11,\"maxValue\":22,\"defValue\":12}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('BkAp4n2bSqV0Oofy', 'scVktgWFRGlhMvRw', 'testA', '0', '0', '2016-11-17 14:03:18', null, 'testA', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('bnB268JCmNgRNO3D', 'Cvz4GoyLSCliw5np', '8', null, '0', '2016-12-05 16:46:21', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('bv09DALYw3OHtgaQ', 'HHMlHlbblf5zZstY', '66', '0', '5', '2016-11-17 15:11:23', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('c9md7iNNlNZwic8n', 'HEo0ad905gYpQCmb', 'jk', '0', '0', '2016-11-11 14:56:08', null, 'yyy', '{\"id\":\"7d50de4a9d40ce9c\",\"dynlib_path\":\"\\/lib\\/11.so\",\"functions\":[{\"name\":\"biaoshi\",\"alias\":\"gongneng\",\"type\":\"1\",\"input\":[{\"name\":\"qq\",\"tag\":\"q\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":1}],\"output\":[{\"name\":\"qq\",\"tag\":\"q\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":1},{\"name\":\"ww\",\"tag\":\"w\",\"datatype\":0,\"minValue\":2,\"maxValue\":8,\"defValue\":2}]},{\"name\":\"123213\",\"alias\":\"12323\",\"type\":\"1\",\"input\":[{\"name\":\"1ee\",\"tag\":\"1\",\"datatype\":0,\"minValue\":1,\"maxValue\":56,\"defValue\":4}],\"output\":[{\"name\":\"1ee\",\"tag\":\"1\",\"datatype\":0,\"minValue\":1,\"maxValue\":56,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('Ck0nXIlxtFJGoME3', 'ecq4ti4YhLOJHPBB', 'test', 'ETH0', '1', '2017-04-07 10:28:11', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('creh4VdzLGkREutL', 'H9POIDeuVxkJNuMk', 'CAMERA', '0', '1', '2016-11-17 11:43:59', null, '', '{\"id\":\"a55e7593ff91dbaa\",\"dynlib_path\":\"\\/lib\\/1482990947_11.so\",\"index\":0,\"type\":1,\"interval\":0,\"functions\":[{\"name\":\"wuge_ceshi\",\"alias\":\"wuge_ceshi\",\"type\":1,\"input\":[{\"name\":\"g\",\"tag\":\"g\",\"datatype\":3,\"defValue\":\"45\",\"maxLength\":256},{\"name\":\"f\",\"tag\":\"f\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"name\":\"s\",\"tag\":\"s\",\"datatype\":1,\"minValue\":3.5,\"maxValue\":9.6,\"defValue\":8.6},{\"name\":\"w\",\"tag\":\"w\",\"datatype\":0,\"minValue\":-9,\"maxValue\":10,\"defValue\":-7}]},{\"name\":\"wer\",\"alias\":\"er\",\"type\":0,\"input\":[{\"name\":\"t\",\"tag\":\"t\",\"datatype\":1,\"minValue\":5.5,\"maxValue\":10.6,\"defValue\":7},{\"name\":\"r\",\"tag\":\"r\",\"datatype\":0,\"minValue\":8,\"maxValue\":100,\"defValue\":15}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('CUYEa8IBZhJmWoUb', '2fctbevUX2GueviL', 'afd', null, '0', '2017-04-07 09:45:37', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('DkqLu4nQ8ReT0gJl', '29YcJd08tiPm52SQ', 'gpio', 'GPIO0', '6', '2017-01-03 10:36:18', null, '', '{\"id\":\"a735bf3cbfa6e321\",\"dynlib_path\":\"\\/lib\\/1483410632_iot_dynLib.so\",\"index\":0,\"type\":6,\"functions\":[{\"name\":\"zl_contect_equipment_operation\",\"alias\":\"equipment_operation\",\"type\":1,\"input\":[{\"name\":\"_operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":12,\"defValue\":5}]},{\"name\":\"zl_contect_equipment_init\",\"alias\":\"equipment_init\",\"type\":0,\"input\":[{\"name\":\"_init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('ds91ayFeCd1AJte2', 'k9d9R7NBSORDLa2c', 'test32', null, '4', '2017-06-21 17:02:34', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('e6F0Wm5ZIOq1QaiH', '4B97fiHKiOXVT8kk', 'LED', null, '0', '2016-12-07 17:29:52', null, '', '{\"id\":\"8e3299e193d3a422\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"functions\":[{\"name\":\"Led_OnOff\",\"alias\":\"led_switch\",\"type\":\"1\",\"input\":[{\"name\":\"switch\",\"tag\":\"A1\",\"datatype\":0,\"minValue\":0,\"maxValue\":10,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('EDHgyHZEfXIRn7wK', 'Cvz4GoyLSCliw5np', '9', null, '5', '2016-12-05 16:46:27', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('eM3KwVhUJVAW2e8p', 'bWAhSZ0NWaCL7mhG', 'wifi', null, '0', '2017-02-09 14:12:01', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('eQAKZmx6cyuAkUnI', 'QWa646lXX4vUUaKp', 'ccccccccccccccccc', null, '0', '2016-12-16 16:42:04', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('eUI0821fJkzSWkvF', 'agmnsVWiwfWmLHm9', 'erewt', 'ETH2', '1', '2016-12-29 10:05:13', null, 'ertrt', '{\"id\":\"4f7d7c08df742fc5\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":1,\"interval\":0,\"functions\":[{\"name\":\"zl_contect_equipment_init\",\"alias\":\"INIT\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":12,\"defValue\":2}]},{\"name\":\"11\",\"alias\":\"11\",\"type\":0},{\"name\":\"zl_contect_equipment_operation\",\"alias\":\"OPERATION\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":12,\"defValue\":2}]},{\"name\":\"123\",\"alias\":\"123\",\"type\":0,\"input\":[{\"name\":\"123\",\"tag\":\"12\",\"datatype\":3,\"defValue\":\"4\",\"maxLength\":256}]},{\"name\":\"dfff23\",\"alias\":\"xxx\",\"type\":0,\"input\":[{\"name\":\"cc\",\"tag\":\"tt\",\"datatype\":0,\"minValue\":-2147483648,\"maxValue\":2147483647,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('fnwV5E6OSt9b2TVg', 'dZ0Zuq8IgAYRi6nu', 'INIT', null, '0', '2016-12-07 17:45:27', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('FOx5RMTsNyUnlwQf', '2CEBQgtpPqcBFif3', '中文名字最长的中文名字最长的中文名字最长的中文名字最长的中文名字最长的中文名字最长的中文名字最长的中文名字最长的中文名字最长的中', '0', '2', '2016-11-17 15:28:28', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('Ft9Ie6Ier21gsG7y', 'jdVyeTCtVPxw3NwN', 'wifi', null, '0', '2017-02-10 14:43:26', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('fURcGL7nJF6pnsDM', 'H9POIDeuVxkJNuMk', 'GPIO', '0', '0', '2016-11-17 11:43:26', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('FWj362GjqC1Z0EWK', 'AneT7CTR2rpTpOWf', 'bbbbbbbbbbbb', null, '0', '2016-12-21 18:53:23', null, '', '{\"id\":\"2b62a6ac47b782ee\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_gpio_init\",\"alias\":\"LED_INIT\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":0}]},{\"name\":\"led_gpio_operation\",\"alias\":\"LED_OPERATION\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('gCdy5QVdEi8oRCgE', '4cF6bZwyvvcnwnFJ', 'yefenginterface', '0', '2', '2016-11-17 19:32:49', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('gF1Top4An8jziOjL', '2CEBQgtpPqcBFif3', 'red', '0', '3', '2016-11-17 15:27:08', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('Gk2OvItNo337XKjS', 'uwUDNZfDiTiy0jrt', 'eth', 'ETH0', '1', '2017-03-06 09:53:43', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('GlVHembLHuzyixx7', 'bR82Z0U3yluKqyEr', 'LED', null, '0', '2016-12-15 15:44:05', null, '', '{\"id\":\"a55e7593ff91dbaa\",\"dynlib_path\":\"\\/lib\\/1482990947_11.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"wuge_ceshi\",\"alias\":\"wuge_ceshi\",\"type\":1,\"input\":[{\"name\":\"g\",\"tag\":\"g\",\"datatype\":3,\"defValue\":\"45\",\"maxLength\":256},{\"name\":\"f\",\"tag\":\"f\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"name\":\"s\",\"tag\":\"s\",\"datatype\":1,\"minValue\":3.5,\"maxValue\":9.6,\"defValue\":4.2},{\"name\":\"w\",\"tag\":\"w\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":2}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('gQtrFgFyz4LFUKN6', 'gA6heCmgwcSQCaMA', 'gpioled', null, '0', '2016-12-21 09:45:56', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('hFmGEQASruCqLLwN', '9iGT3YbCDwT4kzgQ', 'yefengOnlythingInterface1', null, '0', '2017-03-07 13:53:49', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('hG1nQNclrR3iRApw', 'l4QJuHW4heWQJ4ka', 'ETH', '1', '1', '2016-12-05 15:45:01', null, '', '{\"id\":\"1bd2b4a9ec7af769\",\"dynlib_path\":\"\\/lib\\/libjson.so\",\"functions\":[{\"name\":\"LedOnOff\",\"alias\":\"LedOnOff\",\"type\":\"0\",\"input\":[{\"name\":\"switch\",\"tag\":\"a0\",\"datatype\":0,\"minValue\":0,\"maxValue\":1,\"defValue\":0},{\"name\":\"stat\",\"tag\":\"b0\",\"datatype\":0,\"minValue\":10,\"maxValue\":999,\"defValue\":50}],\"output\":[{\"name\":\"switch\",\"tag\":\"a0\",\"datatype\":0,\"minValue\":0,\"maxValue\":1,\"defValue\":0},{\"name\":\"stat\",\"tag\":\"b0\",\"datatype\":0,\"minValue\":10,\"maxValue\":999,\"defValue\":50}]},{\"name\":\"xxxxx\",\"alias\":\"xxxx\",\"type\":\"0\",\"input\":[{\"name\":\"aa\",\"tag\":\"aa\",\"datatype\":0,\"minValue\":4,\"maxValue\":0,\"defValue\":0},{\"name\":\"bb\",\"tag\":\"bb\",\"datatype\":1,\"minValue\":8,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"cccc\",\"alias\":\"ccc\",\"type\":\"0\",\"input\":[{\"name\":\"ccc\",\"tag\":\"cc\",\"datatype\":0,\"minValue\":4,\"maxValue\":2147483647,\"defValue\":0},{\"name\":\"vv\",\"tag\":\"vv\",\"datatype\":0,\"minValue\":3,\"maxValue\":14,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('iGWFmYIOMMgbfBsk', 'NE2XXgBC1nE2Y2VR', 'erss', '0', '2', '2016-11-17 13:59:25', null, 'dfdfdfd', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('iPyO1zU0bZEqWwEj', '86m1jSj8fPo9PfUt', '64', null, '0', '2017-04-10 11:03:51', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('IRdbJLFdwH02djpD', 'k9d9R7NBSORDLa2c', 'test23423', null, '3', '2017-06-21 17:02:27', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('IWJ0GibKT6r8CInI', 'e6PLFSZHhif0483G', 'testA', '0', '0', '2016-11-17 15:47:16', null, 'testA', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('JBMAPEse637Az2G6', 'gL9Ps7O7Yw0m1FTi', 'Riva', 'ETH1', '1', '2017-03-24 09:34:47', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('jdJS0tSYnJ4c2nN1', '0QV2I1LyGyWcuiP6', 'rer', null, '0', '2016-11-25 11:39:16', null, 'erwer', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('JeJNlq5i4X6HVPoW', 'uECtlqxHKTKsVW9a', 'testA', '0', '0', '2016-11-17 13:46:06', null, 'testA', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('JL5DCoi2YqOMQXCl', 'NOtk1wTivDx2v4v0', 'test', '0', '0', '2016-11-17 19:30:29', null, '11111', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('jR1wcbriJcPtlYEI', 'E9Q8kVtv80ZFRCEx', 'gpioled', null, '0', '2016-12-21 10:23:02', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('jUXinDXB8xUyu3aq', 'hujFSnjndG4YkIX2', '22', '0', '1', '2016-11-17 15:05:04', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('jXoVEcOuZHuhd4QA', 'n2clSne4Es5yCir9', 'wifi1', null, '0', '2017-01-10 17:36:26', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('K2vAs7PmNTZXeX5l', 'GnHHapaoKjlBorV7', 'wifi', null, '0', '2017-03-01 15:28:55', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('k8TknHGwx8d60ltQ', 'P2nIEPuYQ93pIf7h', 'wifi', '0', '0', '2016-11-17 15:29:04', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('kbRlthIiVX1wTsvi', 'VUnoZeqFnCnuCC2H', 't', null, '2', '2017-02-10 14:31:16', null, 't', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('kj1isUhsDbcKq8lj', 'kHKtTusYyXpWmATq', 'FFFFFFFF', null, '0', '2016-12-21 12:00:50', null, '', '{\"id\":\"61fab8e179566d03\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_gpio_operation\",\"alias\":\"LED_OPERATION\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":1,\"maxValue\":11,\"defValue\":0}]},{\"name\":\"led_gpio_init\",\"alias\":\"LED_INIT\",\"type\":0,\"input\":[{\"name\":\"INIT\",\"tag\":\"a8\",\"datatype\":0,\"minValue\":1,\"maxValue\":11,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('kSn5JSOeflmBAaYs', 'uECtlqxHKTKsVW9a', 'testA', '0', '0', '2016-11-17 13:46:16', null, 'testA', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('kyCjDeDBI0qP1MVk', 'zT3WNwdqTpeYnvqq', 'GPIO', 'GPIO0', '6', '2017-02-27 19:10:20', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('LDbTpNvbs0aST4g6', 'HHMlHlbblf5zZstY', '22', '0', '1', '2016-11-17 15:10:59', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('leKvUQyRjqTodR32', 'bR82Z0U3yluKqyEr', '摄像头', null, '5', '2016-12-15 15:49:22', null, '', '{\"id\":\"a55e7593ff91dbaa\",\"dynlib_path\":\"\\/lib\\/1482990947_11.so\",\"index\":0,\"type\":5,\"functions\":[{\"name\":\"wuge_ceshi\",\"alias\":\"wuge_ceshi\",\"type\":1,\"input\":[{\"name\":\"g\",\"tag\":\"g\",\"datatype\":3,\"defValue\":\"45\",\"maxLength\":256},{\"name\":\"f\",\"tag\":\"f\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"name\":\"s\",\"tag\":\"s\",\"datatype\":1,\"minValue\":3.5,\"maxValue\":9.6,\"defValue\":4.2},{\"name\":\"w\",\"tag\":\"w\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":2}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('lEp9waK49G9iQkzA', 'bWAhSZ0NWaCL7mhG', 'eth', 'ETH0', '1', '2017-02-09 14:12:13', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('lJaCM9WLtLuMguYE', 'WTHZ23KRdAeYChZ0', 'scan', 'GPIO0', '6', '2017-03-08 14:53:00', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('LK5NcFjhgnGoYVIz', 'HEo0ad905gYpQCmb', 'interface111', '0', '1', '2016-11-11 10:15:51', null, '1232323', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('LRz2pN4H1lLdWeQm', 'k9d9R7NBSORDLa2c', 'wer', null, '2', '2017-06-21 17:02:18', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('LzGBHP4us9r5JNVK', 'gA6heCmgwcSQCaMA', 'gpiooperation', null, '0', '2016-12-21 09:46:14', null, '', '{\"id\":\"d02c3d1893b1611e\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"LED_GPIO_OPERATION\",\"alias\":\"led_gpio_operation\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"LED_GPIO_INIT\",\"alias\":\"led_gpio_init\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('LZMQrUwkAUQCh0XH', 'osQkLJguRPD6hGVB', 'wifi', null, '0', '2017-02-10 14:51:01', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('M5NRQ44hXU5t22Ur', '55wsEwUxOwk01Cue', 'p1', null, '0', '2017-03-31 12:25:17', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('MdjBlUvHeB8RviDG', 'HHMlHlbblf5zZstY', '33', '0', '2', '2016-11-17 15:11:05', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('mDrWNuS3jMhUwCFe', 'NOtk1wTivDx2v4v0', 'test2', '0', '1', '2016-11-17 19:30:37', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('NFlwYRsmj7OYFPJn', 'P2nIEPuYQ93pIf7h', 'eth', '0', '1', '2016-11-17 15:29:12', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('NR2DEO0pDMY0MOu5', 'TgFxeLGHaQiUjgtB', '啊啊', '0', '0', '2016-11-17 11:47:25', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('Ns4FovHqhnIRygJg', 'Wke4aLQxIKjkJcnz', 'r', null, '0', '2017-03-30 10:12:55', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('O3HeLRyp1C0Hd1Tl', 'k9d9R7NBSORDLa2c', 'terst44', null, '5', '2017-06-21 17:02:43', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('oEOsHFtez6opFEHm', 'CcHAEDrA7tcJq9PS', 'yefengNoneOnlythingInterface1', null, '0', '2017-03-07 13:54:20', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('oQST6nvQjtIdJp1z', 'Cvz4GoyLSCliw5np', '7', null, '3', '2016-12-05 16:46:16', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('p0vRKzs4eaNqQcnO', 'Cvz4GoyLSCliw5np', '5', '1', '6', '2016-12-05 16:45:42', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('PaJbmpv2CPWwg33c', 'hujFSnjndG4YkIX2', '33', '0', '0', '2016-11-17 15:05:09', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('pAvFS7BjDRiNxf5T', 'Cvz4GoyLSCliw5np', '4', null, '0', '2016-12-05 16:45:32', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('PI9M6EZyJtzzitkH', 'tj8gy43kHv97DUa4', 'RRRRRRRR', null, '0', '2016-12-21 11:14:04', null, '', '{\"id\":\"d2c9d2294c58cdf3\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_gpio_init\",\"alias\":\"LED_INIT\",\"type\":0,\"input\":[{\"name\":\"INIT\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_gpio_state\",\"alias\":\"GPIO_STATE\",\"type\":1,\"input\":[{\"name\":\"state\",\"tag\":\"C8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_gpio_operation\",\"alias\":\"LED_OPERATION\",\"type\":1,\"input\":[{\"name\":\"OPERATION\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('pXFIvGszXbMUQieF', 'Cvz4GoyLSCliw5np', '10', null, '4', '2016-12-05 16:46:32', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('PyTSgEGhRxerocyi', 'OSoICXUycjjRBttG', '无线interface11111111111111111111111111111111111111111111111111111', '0', '0', '2016-11-17 13:44:58', null, 'qqqqqqqqqqqqqqqqqq1111111111111111111111ffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('PZufQtLKCdlHJnko', '29YcJd08tiPm52SQ', 'equipment', null, '0', '2017-01-03 10:36:09', null, '', '{\"id\":\"a735bf3cbfa6e321\",\"dynlib_path\":\"\\/lib\\/1483410632_iot_dynLib.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"zl_contect_equipment_operation\",\"alias\":\"equipment_operation\",\"type\":1,\"input\":[{\"name\":\"_operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":12,\"defValue\":5}]},{\"name\":\"zl_contect_equipment_init\",\"alias\":\"equipment_init\",\"type\":0,\"input\":[{\"name\":\"_init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":11,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('qbIBxuNrCJs8xCMe', 'CTnD2XFabzmJb2Vs', '123', '0', '0', '2016-11-10 14:49:26', null, '23', '{\"id\":\"a1efb0a6c27b4e30\",\"dynlib_path\":\"\\/lib\\/test.so\",\"functions\":[{\"name\":\"test1\",\"alias\":\"test1\",\"type\":\"2\",\"input\":[{\"name\":\"11\",\"tag\":\"11\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"22\",\"tag\":\"22\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}],\"output\":[{\"name\":\"11\",\"tag\":\"11\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"name\":\"22\",\"tag\":\"22\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('QjjwUIcf5Jp5OL0P', '2CEBQgtpPqcBFif3', 'wifi', '0', '0', '2016-11-17 15:26:48', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('qsB8CxpdxE4dsEPd', '2CEBQgtpPqcBFif3', 'eth', '0', '1', '2016-11-17 15:26:59', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('Qtrx6DmJloLRHopk', 'k9d9R7NBSORDLa2c', 'test354', 'GPIO0', '6', '2017-06-21 17:02:49', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('RdhDJGEM6yA0Tx9l', 'fPExd0LWcVnVl7FW', 't2', null, '0', '2017-03-30 14:22:42', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('rOv4G8CgHojiFjJe', 'SobLNGHpsiXNFK68', 'r', null, '0', '2017-04-05 11:31:22', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('rtMReuEFtvAjx670', 'k9d9R7NBSORDLa2c', 'te', null, '2', '2017-06-21 17:01:18', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('sDFScvAiF7xEc0Zf', 'Cvz4GoyLSCliw5np', '3', '1', '1', '2016-12-05 16:45:11', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('ShydNiUzaHASLrIX', 'HHMlHlbblf5zZstY', '44', '0', '3', '2016-11-17 15:11:10', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('sRO2rQVcLajg0FJ9', 'OSoICXUycjjRBttG', 'erwrfewrwerwrewr', '0', '0', '2016-11-17 13:46:09', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('stnvR7CHAsal8llI', 'CcHAEDrA7tcJq9PS', 'yefengNoneOnlythingInterface2', null, '0', '2017-03-07 13:54:26', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('SWOYhdMochCC6Sd7', 'k9d9R7NBSORDLa2c', 'sdfsdf', 'ETH0', '1', '2017-06-21 17:01:50', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('TeYn2WORZLH4C4ej', '5HPeXbA0S3soc18k', '啊啊啊啊啊啊', null, '0', '2016-12-16 14:31:04', null, '', '{\"id\":\"87f75321ad57c262\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"LED_INIT\",\"alias\":\"led_init\",\"type\":\"0\",\"input\":[{\"name\":\"int\",\"tag\":\"a2\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"led_switch\",\"type\":\"1\",\"input\":[{\"name\":\"open\",\"tag\":\"h2\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('tFYHRpIuchhzJolu', 'dZ0Zuq8IgAYRi6nu', 'OPEN', null, '0', '2016-12-07 17:45:33', null, '', '{\"id\":\"8e3299e193d3a422\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"functions\":[{\"name\":\"LED_INIT\",\"alias\":\"led_init\",\"type\":\"0\",\"input\":[{\"name\":\"init\",\"tag\":\"B1\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"Led_OnOff\",\"alias\":\"led_switch\",\"type\":\"1\",\"input\":[{\"name\":\"switch\",\"tag\":\"A1\",\"datatype\":0,\"minValue\":0,\"maxValue\":10,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('TIQLf4jE1KqsPKba', 'gL9Ps7O7Yw0m1FTi', 'Riva3', null, '0', '2017-03-24 09:36:22', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('TpTte6nmVQm5jRzE', '3m8LN4lHUjKJEFlG', 'tetst', '0', '1', '2016-11-18 14:06:32', null, 'testA', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('TXTBs5dQp2GXYkqI', '4B97fiHKiOXVT8kk', 'camera', null, '0', '2016-12-07 17:30:06', null, '', '{\"id\":\"8e3299e193d3a422\",\"dynlib_path\":\"\\/lib\\/iot_dyn.so\",\"functions\":[{\"name\":\"Led_OnOff\",\"alias\":\"led_switch\",\"type\":\"1\",\"input\":[{\"name\":\"switch\",\"tag\":\"A1\",\"datatype\":0,\"minValue\":0,\"maxValue\":10,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('u0kFMZFbYNMi3nex', 'sVKrfrbCqIgurqT0', 'j2', '0', '2', '2016-11-17 11:01:13', null, '22', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('uAKUit0dtxZfx0px', '0QV2I1LyGyWcuiP6', '3434', null, '0', '2016-11-29 15:29:41', null, '', '{\"id\":\"7d50de4a9d40ce9c\",\"dynlib_path\":\"\\/lib\\/11.so\",\"functions\":[{\"name\":\"biaoshi\",\"alias\":\"gongneng\",\"type\":\"1\",\"input\":[{\"name\":\"qq\",\"tag\":\"q\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":1}],\"output\":[{\"name\":\"qq\",\"tag\":\"q\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":1},{\"name\":\"ww\",\"tag\":\"w\",\"datatype\":0,\"minValue\":2,\"maxValue\":8,\"defValue\":2}]},{\"name\":\"123213\",\"alias\":\"12323\",\"type\":\"1\",\"input\":[{\"name\":\"1ee\",\"tag\":\"1\",\"datatype\":0,\"minValue\":1,\"maxValue\":56,\"defValue\":4}],\"output\":[{\"name\":\"1ee\",\"tag\":\"1\",\"datatype\":0,\"minValue\":1,\"maxValue\":56,\"defValue\":4}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('UDYL3OmTfeh9w7nh', 'sn6K6W4Uzlo2Fkjq', 'jiekou1', null, '0', '2016-12-15 17:02:41', null, '23', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('Uu9NRagdC2o6TH8A', 'gL9Ps7O7Yw0m1FTi', 'Riva2', null, '5', '2017-03-24 09:35:09', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('V2jAyrfqUG6MNELI', 'ualpcoRjT0PJ52ta', 'eth', 'ETH0', '1', '2017-02-10 14:53:26', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('vDVarEoaTGOxiKwd', 'agmnsVWiwfWmLHm9', '1226GPIO', null, '6', '2016-12-26 10:08:44', null, '', '{\"id\":\"4f7d7c08df742fc5\",\"dynlib_path\":\"\\/lib\\/iot_dynLib.so\",\"index\":0,\"type\":6,\"functions\":[{\"name\":\"zl_contect_equipment_init\",\"alias\":\"INIT\",\"type\":0,\"input\":[{\"name\":\"init\",\"tag\":\"A8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"zl_contect_equipment_operation\",\"alias\":\"OPERATION\",\"type\":1,\"input\":[{\"name\":\"operation\",\"tag\":\"B8\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('vkhlxcWpDwIW1otj', 'HHMlHlbblf5zZstY', '55', '0', '4', '2016-11-17 15:11:17', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('vQ8cM7HEyEpqoNL9', 'uwUDNZfDiTiy0jrt', 'wifi', null, '0', '2017-03-06 09:53:35', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('vSDUgxZwZ6PVyRl7', 'xFtYBMflEZCesAMh', '串口', null, '4', '2017-02-07 16:54:21', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('WGV3vXjG1ZSelZMM', 'xFtYBMflEZCesAMh', 'wifi', null, '0', '2017-02-07 16:53:57', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('wig7EWz02Fuj7Wgn', 'P2nIEPuYQ93pIf7h', 'red', '0', '3', '2016-11-17 15:29:20', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('WJ4JPmTzvzkFT0wc', 'sVKrfrbCqIgurqT0', 'j2', '0', '3', '2016-11-17 11:05:08', null, '23', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('WJly4P5bkwysuPhn', 'Cvz4GoyLSCliw5np', '1', '0', '6', '2016-12-05 16:44:53', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('WuyL8ItjcYfHk1LM', 'fPExd0LWcVnVl7FW', 't4', null, '0', '2017-03-30 14:23:00', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('WYJ2MHe5K0NHwAxo', 'Cvz4GoyLSCliw5np', '6', '1', '6', '2016-12-05 16:45:56', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('x0M6XyAootK01hxU', 'sn6K6W4Uzlo2Fkjq', 'jiekou2', '1', '6', '2016-12-15 17:02:54', null, '34', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('X51lisQAZXItvDTq', 'HHMlHlbblf5zZstY', '11', '0', '0', '2016-11-17 15:10:53', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('xcwVrY5WtcE15fYd', '0QV2I1LyGyWcuiP6', 'werwer', '1', '0', '2016-11-25 11:39:08', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('xigHMixM9S7XLTtn', 'WTHZ23KRdAeYChZ0', 'buletooh', null, '4', '2017-03-08 14:52:46', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('xzAmqi7h6NDe4A7M', 'Cvz4GoyLSCliw5np', '2', null, '0', '2016-12-05 16:44:57', null, '', null);
INSERT INTO `tbl_iot_interface_info` VALUES ('yHgM3cV46G41WIxR', 'l4QJuHW4heWQJ4ka', 'wifi', null, '0', '2016-12-05 15:44:50', null, '', '{\"id\":\"3d88c63bc4d3c358\",\"dynlib_path\":\"\\/lib\\/camera.so\",\"functions\":[{\"name\":\"camera_open\",\"alias\":\"camera_open\",\"type\":\"0\",\"input\":[{\"name\":\"er\",\"tag\":\"2\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]},{\"name\":\"camera_init\",\"alias\":\"camera_init\",\"type\":\"0\",\"input\":[{\"name\":\"2\",\"tag\":\"34\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_interface_info` VALUES ('Z5eE0iKTdKDagbAM', 'k9d9R7NBSORDLa2c', 'sss3w', null, '0', '2017-06-21 17:02:13', null, '', null);

-- ----------------------------
-- Table structure for `tbl_iot_log`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_log`;
CREATE TABLE `tbl_iot_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) NOT NULL,
  `content` varchar(256) NOT NULL COMMENT '日志内容',
  `update_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of tbl_iot_log
-- ----------------------------
INSERT INTO `tbl_iot_log` VALUES ('2', '18676710461', '对设备12:12:12:12:01:51进行了重启操作', '2017-07-03 18:07:14');
INSERT INTO `tbl_iot_log` VALUES ('3', '18676710461', '对设备12:12:12:12:01:51进行了恢复出厂设置操作', '2017-07-03 18:07:25');
INSERT INTO `tbl_iot_log` VALUES ('11', '18676710461', '对设备12:12:12:12:01:50进行了删除操作', '2017-07-03 18:50:46');
INSERT INTO `tbl_iot_log` VALUES ('12', '18676710461', '对设备12:12:12:12:01:50进行了删除操作', '2017-07-03 18:51:40');
INSERT INTO `tbl_iot_log` VALUES ('13', '18676710461', '对设备12:12:12:12:01:51进行了设置属性操作', '2017-07-04 11:26:21');
INSERT INTO `tbl_iot_log` VALUES ('14', '18676710461', '对设备12:12:12:12:01:42进行了删除操作', '2017-07-04 11:34:48');
INSERT INTO `tbl_iot_log` VALUES ('15', '18676710461', '对设备12:12:12:12:01:44进行了删除操作', '2017-07-04 18:24:19');
INSERT INTO `tbl_iot_log` VALUES ('16', '18676710461', '对设备12:12:12:12:01:48进行了删除操作', '2017-07-04 18:25:10');
INSERT INTO `tbl_iot_log` VALUES ('17', '18676710461', '对设备12:12:12:12:01:44进行了删除操作', '2017-07-04 18:28:10');
INSERT INTO `tbl_iot_log` VALUES ('18', '18676710461', '对设备12:12:12:12:01:46进行了删除操作', '2017-07-04 18:28:55');
INSERT INTO `tbl_iot_log` VALUES ('19', '18676710461', '对设备12:12:12:12:01:44进行了删除操作', '2017-07-04 18:29:43');
INSERT INTO `tbl_iot_log` VALUES ('20', '18676710461', '对设备12:12:12:12:01:46进行了删除操作', '2017-07-04 18:30:37');
INSERT INTO `tbl_iot_log` VALUES ('21', '18676710461', '对设备12:12:12:12:01:45进行了删除操作', '2017-07-04 18:32:31');
INSERT INTO `tbl_iot_log` VALUES ('22', '18676710461', '对设备12:12:12:12:01:43进行了删除操作', '2017-07-04 18:33:04');
INSERT INTO `tbl_iot_log` VALUES ('23', '18676710461', '对设备12:12:12:12:01:46进行了删除操作', '2017-07-04 18:35:52');
INSERT INTO `tbl_iot_log` VALUES ('24', '18676710461', '对设备12:12:12:12:01:45进行了删除操作', '2017-07-04 18:37:51');
INSERT INTO `tbl_iot_log` VALUES ('25', '18676710461', '对设备12:12:12:12:01:45进行了删除操作', '2017-07-04 18:41:41');
INSERT INTO `tbl_iot_log` VALUES ('26', '18676710461', '对设备12:12:12:12:01:44进行了删除操作', '2017-07-04 18:42:21');
INSERT INTO `tbl_iot_log` VALUES ('27', '18676710461', '对设备12:12:12:12:01:43进行了删除操作', '2017-07-04 18:44:18');
INSERT INTO `tbl_iot_log` VALUES ('28', '18676710461', '对设备12:12:12:12:01:44进行了删除操作', '2017-07-04 18:45:13');
INSERT INTO `tbl_iot_log` VALUES ('29', '18676710461', '对设备12:12:12:12:01:45进行了删除操作', '2017-07-04 18:47:48');
INSERT INTO `tbl_iot_log` VALUES ('30', '18676710461', '对设备12:12:12:12:01:45进行了删除操作', '2017-07-04 18:49:26');

-- ----------------------------
-- Table structure for `tbl_iot_module`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_module`;
CREATE TABLE `tbl_iot_module` (
  `id` varchar(16) NOT NULL COMMENT 'id',
  `name` varchar(125) DEFAULT NULL COMMENT '模块型号',
  `flash` int(5) DEFAULT NULL COMMENT 'flash容量',
  `mem` int(5) DEFAULT NULL COMMENT '总内存',
  `vender` varchar(16) NOT NULL COMMENT '所属厂家',
  `create_time` datetime DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `cpu_model` tinyint(1) DEFAULT '0' COMMENT '0：MTK 7620，1：MTK 7621，2：ATHEROS 9341，3：ATHEROS 9344',
  `sys` varchar(255) DEFAULT NULL COMMENT '运行系统',
  `isonlythng` tinyint(1) DEFAULT '0' COMMENT '0：不是onlything,1:是onlything',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_module
-- ----------------------------
INSERT INTO `tbl_iot_module` VALUES ('0iZjjbW2XRqtGrCc', 'r9', '8', '32', '123456', '2017-03-30 10:08:48', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('0QV2I1LyGyWcuiP6', 'testA', '32', '32', '123456', null, '544545', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('17MoMuBoA8396PcG', 'asdf1', '8', '32', '123456', '2017-04-11 17:23:33', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('1OmYnreI7MNkZ7aE', 'xxx', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('29YcJd08tiPm52SQ', '2017188test', '16', '128', '123456', '2017-01-03 10:35:48', '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('29yk3lM7RXk0Wynj', 'ri7', '8', '32', '123456', '2017-03-30 13:48:37', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('2CEBQgtpPqcBFif3', 'testmtk', '16', '64', '56789', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('2fctbevUX2GueviL', 'ttestSDFSDFSDFsdfsf', '8', '32', '123456', '2017-04-06 11:08:28', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('2pOuNYBefwslJ57P', 'rr', '8', '32', '123456', '2017-04-05 10:26:16', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('3m8LN4lHUjKJEFlG', 'af', '8', '32', '123456', null, '', '1', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('4cF6bZwyvvcnwnFJ', 'yefeng', '8', '32', '123456', null, 'fasfaefaef', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('4wThaRfjudchSOkp', 'r', '8', '32', '123456', '2017-03-29 17:48:54', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('55wsEwUxOwk01Cue', 'riva', '8', '32', '123456', '2017-03-31 12:25:07', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('5kt62avVpxh6OTBL', '2', '8', '32', '123456', '2017-03-30 09:28:59', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('6jWmQlxY1rfabBiX', '模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号模块型号', '8', '32', '123456', '2017-04-05 14:50:37', '', '1', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('6UXQJsmulSXWNiLK', 'r7', '8', '32', '123456', '2017-03-30 09:51:33', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('786ATi7bGSC2RpL8', 'test2', '8', '32', '123456', '2017-03-30 16:27:22', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('7PAzoLPQrGPIPUB8', 'testA', '8', '32', '123456', null, 'testA', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('83PHe1Pa7rlCfQRi', 'testtest', '8', '32', '123456', '2017-04-01 14:12:02', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('86m1jSj8fPo9PfUt', 'esfd', '8', '32', '123456', '2017-04-07 12:22:27', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('8siVSkDES5nWrXA8', 'rivaa', '8', '32', '123456', '2017-03-30 09:50:48', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('9iGT3YbCDwT4kzgQ', 'yefeng_onlything', '8', '32', '123456', '2017-03-07 13:52:23', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('agmnsVWiwfWmLHm9', '1226GPIO', '32', '128', '123456', '2016-12-26 10:08:03', '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('AneT7CTR2rpTpOWf', 'bbbbbbbbbbbbb', '32', '128', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('BfNenVouHvzAs4zo', 'qqq', '8', '32', '123456', null, '2', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('bR82Z0U3yluKqyEr', '智能家居', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('bWAhSZ0NWaCL7mhG', 'test0209', '8', '32', '56789', '2017-02-09 14:11:26', '', '2', 'hp', '0');
INSERT INTO `tbl_iot_module` VALUES ('c0lADLt0ykOYuAF3', 'zyk_model', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('CcHAEDrA7tcJq9PS', 'yefeng_none_onlything', '8', '32', '123456', '2017-03-07 13:51:28', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('cfmSvvVOPDTFOaa0', 'r1', '8', '32', '123456', '2017-03-29 17:50:21', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('CTnD2XFabzmJb2Vs', 'module4', '16', '64', '56789', null, 'testA', '1', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('cuRZSxrmpjcwaJJb', 'qqw', '8', '32', '123456', null, '2', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('Cvz4GoyLSCliw5np', '10gejiekou', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('dqORjer6VVnx1vSd', 'r3', '8', '32', '123456', '2017-03-30 09:50:07', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('DSUXAryHKAa1qmzT', 'test123', '8', '32', '123456', '2017-03-30 17:37:17', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('dZ0Zuq8IgAYRi6nu', '109test', '32', '128', '56789', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('e6PLFSZHhif0483G', 'testA', '8', '32', '123456', null, 'testA', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('E9Q8kVtv80ZFRCEx', 'GPIO_C', '32', '128', '56789', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('ecq4ti4YhLOJHPBB', 'afsdf', '8', '32', '123456', '2017-04-07 10:28:03', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('EHk4uTtjLFlJSj8a', 'test', '8', '32', '123456', '2017-03-30 15:45:24', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('fPExd0LWcVnVl7FW', 'ri2r', '8', '32', '123456', '2017-03-30 14:09:42', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('g4RcFHUMujHxGIgz', 'r2', '8', '32', '123456', '2017-03-30 09:29:32', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('ggqiMiTHlEzEvbwr', '67878', '8', '32', '123456', null, 'df', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('gL9Ps7O7Yw0m1FTi', 'test-zlh', '16', '128', '123456', '2017-03-24 09:34:10', '测试信息', '1', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('GnHHapaoKjlBorV7', 'ot', '8', '32', '123456', '2017-03-01 15:28:49', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('H9POIDeuVxkJNuMk', '智能LED灯', '16', '128', '56789', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('HEo0ad905gYpQCmb', 'mode3', '32', '64', '56789', null, '43434', '3', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('HHMlHlbblf5zZstY', '测试3', '64', '256', 'ItYRwjWpzc6NyoEI', null, '', '1', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('IUrHCyBzLGaW3E11', 'rets', '8', '32', '123456', '2017-04-05 11:37:56', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('iXjFS8Ue5PIYqfpt', 'dgf', '8', '32', '123456', null, 'df', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('jdVyeTCtVPxw3NwN', 'zwEsp8266_2_10', '8', '32', '123456', '2017-02-10 14:43:19', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('JV2orPaM6XiPfhUN', 'testA', '8', '32', '123456', null, 'testA', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('JyQGi9FDVouP3b6l', 'test2016', '32', '128', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('k9d9R7NBSORDLa2c', 'dsf', '8', '32', '123456', '2017-06-21 16:59:24', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('kHKtTusYyXpWmATq', 'FFFFFFFFFFFFF', '32', '128', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('L95tM4edu241Cjb3', '发vdfvdfgv', '8', '32', '123456', '2017-04-18 09:39:36', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('lYIpIfcDkFjMPdiY', '模块型号test234234234234234234', '8', '32', '123456', '2017-04-05 11:39:39', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('m0xO1wCBij7m6Lpo', 'asfsdddddddddddddddddddddd', '8', '32', '123456', '2017-04-05 14:50:10', 'asfsdddddddddddddddddddd', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('MImZrF6cK6gFIdw0', 'hhj', '8', '32', '123456', '2016-12-23 10:17:18', 'wer', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('mpfmvG5V6NruwhhZ', '45646', '8', '32', '123456', '2017-02-10 10:51:17', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('n2clSne4Es5yCir9', 'zhangwei-ESP8266', '8', '32', '123456', '2017-01-10 17:36:03', '', '0', 'linux', '0');
INSERT INTO `tbl_iot_module` VALUES ('NOtk1wTivDx2v4v0', 'm1', '8', '32', '123456', null, '11111', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('NWH703uMTSCNLnZu', 'ww', '16', '128', '56789', '2017-02-07 15:36:58', 'eee', '2', 'hp', '1');
INSERT INTO `tbl_iot_module` VALUES ('NXF3b3f0O7Asl41I', 'ri3', '8', '32', '123456', '2017-03-30 10:48:58', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('OD6kUsJNsFBK9bkm', 'qwe', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('osQkLJguRPD6hGVB', 'Gateway_configtest', '64', '128', '123456', '2017-02-10 14:50:48', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('oXCjm3YkhMBCKKLF', 'zyk_noneonlything', '8', '32', '123456', '2017-03-06 10:01:08', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('oxj7bXnPkMZAQ2hM', 'afaef', '8', '32', '123456', '2017-02-24 10:48:00', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('OYKSFat4bJ5bcJbg', 'ttt2', '8', '32', '123456', '2017-03-30 16:19:48', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('P2nIEPuYQ93pIf7h', 'testmtk', '16', '64', '56789', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('PGcpStm1D6LNIyNW', 'ri4', '8', '32', '123456', '2017-03-30 11:31:48', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('Q4Nu8aWt6xptgejC', 'adsfsdf', '8', '32', '123456', '2017-03-30 15:33:07', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('QWa646lXX4vUUaKp', 'cccccccccccccccccccccccc', '32', '128', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('R4MI2WNeZ6UuTCNK', 'asdf', '64', '32', '123456', '2017-03-29 17:36:58', '', '2', 'hp', '0');
INSERT INTO `tbl_iot_module` VALUES ('RKcreqDeqGu7X5SD', 'wwr', '8', '32', '123456', null, 'e', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('sn6K6W4Uzlo2Fkjq', 'wuge_model', '8', '32', 'ItYRwjWpzc6NyoEI', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('SobLNGHpsiXNFK68', 're', '8', '32', '123456', '2017-04-05 11:31:11', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('SUu7P7ZKHfuRJjVH', 'adsf', '8', '32', '123456', '2017-04-05 14:49:41', 'adsfadsfadsfadsfadsfadsfadsfadsfadsfadsfadsfadsfadsfadsfadsfadsf', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('TgFxeLGHaQiUjgtB', 'xxx', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('ualpcoRjT0PJ52ta', 'wuge_ceshi', '8', '32', '123456', '2017-02-10 14:53:11', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('uOcQwGsxqICodVTI', 'riva', '8', '32', '123456', '2017-03-31 12:25:08', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('uwUDNZfDiTiy0jrt', 'zyk', '64', '256', 'ItYRwjWpzc6NyoEI', '2017-03-06 09:53:22', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('v2B2KOgw1FsKh1yD', '7777777777777777777', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('VDDWsiqX3SpzQOUW', 'wuge', '32', '32', '56789', null, '123', '3', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('VkmCeOlfYSJVSsVv', 'wqer', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('VnD5ZWBlVfjFVrxx', '特', '8', '32', '123456', '2017-04-01 14:09:11', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('vSRkskQ92y8pRTDl', 'zhangw-ESP8266-Test', '8', '32', '123456', '2017-02-07 16:02:26', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('VUnoZeqFnCnuCC2H', 'onlything', '8', '32', '56789', '2017-02-10 14:31:07', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('Wke4aLQxIKjkJcnz', 'ri1', '8', '32', '123456', '2017-03-30 10:11:28', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('WTHZ23KRdAeYChZ0', 'MTK_ONLY_THING', '8', '32', '123456', '2017-03-08 14:52:17', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('xBLJu1H6r9cG90OA', 't', '8', '32', '123456', '2017-04-11 17:24:08', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('xFtYBMflEZCesAMh', 'OnlyThing_Test', '8', '32', '123456', '2017-02-07 16:53:38', '', '0', 'mtk', '1');
INSERT INTO `tbl_iot_module` VALUES ('zbbFt9kCVz7OOm8b', 'tttt', '8', '32', '123456', null, '', '0', null, '0');
INSERT INTO `tbl_iot_module` VALUES ('ZGFG9M5fCHxAzF4k', 'ssad', '8', '32', '123456', '2017-04-10 17:32:16', '', '0', 'mtk', '0');
INSERT INTO `tbl_iot_module` VALUES ('zT3WNwdqTpeYnvqq', 'ESP8266', '64', '64', '56789', '2017-02-27 19:10:02', '', '0', 'mtk', '1');

-- ----------------------------
-- Table structure for `tbl_iot_policy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_policy`;
CREATE TABLE `tbl_iot_policy` (
  `id` varchar(16) NOT NULL COMMENT '表索引',
  `param_id` varchar(16) NOT NULL COMMENT '控制点ID',
  `condition` text COMMENT '策略条件',
  `action` varchar(256) DEFAULT NULL COMMENT '策略执行动作JSON格式，如"thing":"空调ID", "action":{"Air_OnOff":{"switch":1}}',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `name` varchar(255) NOT NULL COMMENT '策略名称',
  `date_time` datetime DEFAULT NULL COMMENT '创建时间',
  `target` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_iot_policy_tbl_iot_property_data1_idx` (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='策略表';

-- ----------------------------
-- Records of tbl_iot_policy
-- ----------------------------
INSERT INTO `tbl_iot_policy` VALUES ('123', '123', '[{\"thing_id\":\"1234\",\"alias\":\"Led_OnOff\",\"key\":\"switch\",\"value\":\"1\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"34545\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"23434\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"23434\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"1\"},{\"thing_id\":\"ZupWpfdjfyRfaffE\",\"alias\":\"06ed36005285c5c2\",\"key\":\"68\",\"value\":\"123\"},{\"thing_id\":\"ZupWpfdjfyRfaffE\",\"alias\":\"06ed36005285c5c2\",\"key\":\"68\",\"value\":\"123\"},{\"thing_id\":\"ZupWpfdjfyRfaffE\",\"alias\":\"080f9169a566181f\",\"key\":\"23\",\"value\":\"123\"},{\"thing_id\":null,\"alias\":null,\"key\":null,\"value\":\"\"},{\"thing_id\":\"WcMbtbC5u9UuLGjo\",\"alias\":\"Riva7\",\"key\":\"R1\",\"value\":\"123\"}]', '{\"r1\":{\"s1\":\"123\"}}', null, 'wuge', null, '{\"device_id\":\"\",\"thing_id\":\"ZupWpfdjfyRfaffE\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/ZupWpfdjfyRfaffE\"}');
INSERT INTO `tbl_iot_policy` VALUES ('25voLfdz8Q3p5wK9', '', '[{\"thingType\":\"hymnXaXNE36S7LUm\",\"alias\":\"equipment_init\",\"key\":\"_init\",\"identifications\":0,\"value\":\"0\"}]', '{\"equipment_operation\":{\"_operation\":\"1\"}}', null, '2017', '2017-01-03 10:40:26', '{\"device_id\":\"\",\"thingType\":\"J9bSMBrGjHtP9L5N\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/J9bSMBrGjHtP9L5N\"}');
INSERT INTO `tbl_iot_policy` VALUES ('34', '354', '[{\"thing_id\":\"1234\",\"alias\":\"Led_OnOff\",\"key\":\"switch\",\"value\":\"1\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"34545\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"23434\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"23434\"},{\"thing_id\":\"7\",\"alias\":\"3\",\"key\":\"8\",\"value\":\"23434\"}]', '{\"device_id\":0,\"thing_id\":\"4\",\"topic\":\"$MIA-IOT\\\\\\/devices\\\\\\/0\\/things\\\\\\/4\"}', null, 'wuge2', null, null);
INSERT INTO `tbl_iot_policy` VALUES ('58JVFVMj8JbQCX8l', '', '[{\"thingType\":\"d1oZIlC1BFBNFH90\",\"alias\":\"LED_INIT\",\"key\":\"init\",\"identifications\":0,\"value\":\"0\"}]', '{\"LED_OPERATION\":{\"operation\":\"1\"}}', null, 'cc', '2016-12-21 10:24:07', '{\"device_id\":\"\",\"thingType\":\"d1oZIlC1BFBNFH90\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/d1oZIlC1BFBNFH90\"}');
INSERT INTO `tbl_iot_policy` VALUES ('5t0WyPxRVLPDWLh1', '', '[{\"thingType\":\"EyYXL6eVazpBt28p\",\"alias\":\"INIT\",\"key\":\"init\",\"identifications\":0,\"value\":\"0\"}]', '{\"OPERATION\":{\"operation\":\"1\"}}', null, '1226gpio', '2016-12-26 10:10:05', '{\"device_id\":\"\",\"thingType\":\"EyYXL6eVazpBt28p\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/EyYXL6eVazpBt28p\"}');
INSERT INTO `tbl_iot_policy` VALUES ('6tVy2IMJqgpSud4m', '', '[{\"thingType\":\"123123\",\"alias\":\"f2\",\"key\":\"fg\",\"identifications\":0,\"value\":\"5.6\"},{\"thingType\":\"123123\",\"alias\":\"f3\",\"key\":\"e\",\"identifications\":1,\"value\":\"0\"}]', '{\"fun\":{\"f\":\"2\"}}', null, 'gz', '2017-01-21 15:00:03', '{\"device_id\":\"\",\"thingType\":\"123123\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/123123\"}');
INSERT INTO `tbl_iot_policy` VALUES ('8ZssW3TVP3wUvamr', '', '[{\"thingType\":\"I9JP2CoTtLMHpc3a\",\"alias\":\"n\",\"key\":\"n\",\"identifications\":0,\"value\":\"1\"}]', '{\"Init\":{\"path\":\"213\"}}', null, '123', '2017-02-14 18:04:33', '{\"device_id\":\"\",\"thingType\":\"vBQBscOe4zrkVN8f\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/vBQBscOe4zrkVN8f\"}');
INSERT INTO `tbl_iot_policy` VALUES ('afGIphZrFycjyVza', '', '[{\"thingType\":\"JkZDTs6ZZVF151zP\",\"alias\":\"LED_INIT\",\"key\":\"INIT\",\"identifications\":0,\"value\":\"0\"}]', '{\"LED_OPERATION\":{\"operation\":\"1\"}}', null, 'FFFF', '2016-12-21 12:01:41', '{\"device_id\":\"\",\"thingType\":\"JkZDTs6ZZVF151zP\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/JkZDTs6ZZVF151zP\"}');
INSERT INTO `tbl_iot_policy` VALUES ('BDX5msF0JL24vibk', '', '[{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"34\",\"identifications\":0,\"value\":\"2\"}]', '{\"gw\":{\"34\":\"3\"}}', null, 'ff', '2017-03-14 17:29:56', '{\"device_id\":\"\",\"thingType\":\"BM1lhkq8AyZhPHME\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/BM1lhkq8AyZhPHME\"}');
INSERT INTO `tbl_iot_policy` VALUES ('bMIiUCxTZ6vLmwCO', '', '[{\"thing_id\":\"1zrxpiqddz4YHvp1\",\"alias\":\"cccc\",\"key\":\"xxx\",\"value\":\"\"}]', '{\"\":{\"\":\"\"}}', null, '', '2016-11-18 13:58:24', '{\"device_id\":\"\",\"thing_id\":\"\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"}');
INSERT INTO `tbl_iot_policy` VALUES ('Byu3uNMqRJSMeNdJ', '', '[{\"thing_id\":null,\"alias\":null,\"key\":null,\"value\":\"\"}]', '{\"\":{\"\":\"\"}}', null, '', '2016-11-17 19:33:34', '{\"device_id\":\"\",\"thing_id\":null,\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"}');
INSERT INTO `tbl_iot_policy` VALUES ('cSraGVhtrHDdBz0X', '', '[]', '{\"gw\":{\"34\":\"2\"}}', null, 'gz', '2017-03-14 17:11:26', '{\"device_id\":\"\",\"thingType\":\"BM1lhkq8AyZhPHME\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/BM1lhkq8AyZhPHME\"}');
INSERT INTO `tbl_iot_policy` VALUES ('EDZFZ72q7jNLGAPJ', '', '[{\"thingType\":\"I9JP2CoTtLMHpc3a\",\"alias\":\"n\",\"key\":\"n\",\"identifications\":0,\"value\":\"3\"}]', '{\"Init\":{\"path\":\"3\"}}', null, '0', '2017-02-24 15:04:41', '{\"device_id\":\"\",\"thingType\":\"vBQBscOe4zrkVN8f\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/vBQBscOe4zrkVN8f\"}');
INSERT INTO `tbl_iot_policy` VALUES ('ELnVl3znwnUQvtQO', '', '[{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"double\",\"identifications\":0,\"value\":\"1.0\"}]', '{\"\":{\"temperature\":\"1\"}}', null, 'kRivakRivakRivakRivakRivakRivakRivakRivakRivakRivakRivakRiva', '2017-03-24 09:53:07', '{\"device_id\":\"\",\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_iot_policy` VALUES ('FVUzP2Oi1yWYOnPv', '', '[{\"thingType\":\"36rdyfZYfVhC2OgI\",\"alias\":\"LED_GPIO_INIT\",\"key\":\"init\",\"identifications\":1,\"value\":\"0\"}]', '{\"LED_GPIO_OPERATION\":{\"operation\":\"1\"}}', null, 'led_switch', '2016-12-21 09:48:16', '{\"device_id\":\"\",\"thingType\":\"36rdyfZYfVhC2OgI\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/36rdyfZYfVhC2OgI\"}');
INSERT INTO `tbl_iot_policy` VALUES ('fZOnty7c9Boh4VD4', '', '[{\"thingType\":\"vBQBscOe4zrkVN8f\",\"alias\":\"Init\",\"key\":\"path\",\"identifications\":0,\"value\":\"1\"},{\"thingType\":\"vBQBscOe4zrkVN8f\",\"alias\":\"OpenCamera\",\"key\":\"photo\",\"identifications\":0,\"value\":\"1\"},{\"thingType\":\"vBQBscOe4zrkVN8f\",\"alias\":\"OpenCamera\",\"key\":\"photo\",\"identifications\":2,\"value\":\"2\"}]', '{\"n\":{\"n\":\"1\"}}', null, 'hh', '2017-02-20 10:36:56', '{\"device_id\":\"\",\"thingType\":\"I9JP2CoTtLMHpc3a\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/I9JP2CoTtLMHpc3a\"}');
INSERT INTO `tbl_iot_policy` VALUES ('gXjAC33luuY5Os6W', '', '[{\"thingType\":\"kOU4IIbWmvhlfRmA\",\"property\":\"jl\",\"identifications\":0,\"value\":\"1\"}]', '[{\"jjk\":[{\"name\":\"jl\",\"value\":\"2\"}]}]', null, 'gz', '2017-04-14 09:48:41', '{\"device_id\":\"\",\"thingType\":\"kOU4IIbWmvhlfRmA\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/kOU4IIbWmvhlfRmA\"}');
INSERT INTO `tbl_iot_policy` VALUES ('hHKpkIXiovZxcFfF', '', '[{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"34\",\"identifications\":1,\"value\":\"3\"}]', '{\"gw\":{\"34\":\"2\"}}', null, 'hh', '2017-03-14 18:19:23', '{\"device_id\":\"\",\"thingType\":\"BM1lhkq8AyZhPHME\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/BM1lhkq8AyZhPHME\"}');
INSERT INTO `tbl_iot_policy` VALUES ('IpdxAXiBLaXiHVQZ', '', '[{\"thingType\":\"Sz5zZ9alUpjtv7AC\",\"alias\":\"temperature_alias\",\"key\":\"temperature\",\"identifications\":0,\"value\":\"20.6\"},{\"thingType\":\"Sz5zZ9alUpjtv7AC\",\"alias\":\"count_alias\",\"key\":\"count\",\"identifications\":0,\"value\":\"100\"},{\"thingType\":\"Sz5zZ9alUpjtv7AC\",\"alias\":\"switch_alias\",\"key\":\"switch\",\"identifications\":0,\"value\":\"1\"},{\"thingType\":\"Sz5zZ9alUpjtv7AC\",\"alias\":\"display_alias\",\"key\":\"display\",\"identifications\":0,\"value\":\"111\"}]', '{\"temperature_alias\":{\"temperature\":\"30.2\"}}', null, 'dengfei_rule', '2017-03-01 16:55:22', '{\"device_id\":\"\",\"thingType\":\"Sz5zZ9alUpjtv7AC\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/Sz5zZ9alUpjtv7AC\"}');
INSERT INTO `tbl_iot_policy` VALUES ('Jb7BAAZn7mphjfIb', '', '[{\"thingType\":\"Kwq1sFlaTABtpn6n\",\"alias\":\"LedOnOff\",\"key\":\"switch\",\"identifications\":0,\"value\":\"1\"}]', '{\"OpenCamera\":{\"photo\":\"12\"}}', null, '开灯通知抓拍', '2017-02-14 15:16:45', '{\"device_id\":\"\",\"thingType\":\"vBQBscOe4zrkVN8f\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/vBQBscOe4zrkVN8f\"}');
INSERT INTO `tbl_iot_policy` VALUES ('JbCuu8WWY2MnpZo4', '', '[{\"thing_id\":\"1uRTyvAmCiLmoHsA\",\"alias\":null,\"key\":null,\"value\":\"\"},{\"thing_id\":\"MOZws9i3rr5xuS9n\",\"alias\":\"Get_Photo\",\"key\":\"Photo\",\"value\":\"\"}]', '{\"Init_Camera\":{\"state\":\"\"}}', null, '测试3', '2016-11-17 15:22:37', '{\"device_id\":\"\",\"thing_id\":\"MOZws9i3rr5xuS9n\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/MOZws9i3rr5xuS9n\"}');
INSERT INTO `tbl_iot_policy` VALUES ('jgtKFGcEm6z7yiyy', '', '[{\"thingType\":\"owvSTnSegyuof64d\",\"property\":\"Switch\",\"identifications\":0,\"value\":\"1\"}]', '{\"LedDisplay\":{\"display\":\"open led switch\"}}', null, '开灯打印', '2017-03-24 15:40:23', '{\"device_id\":\"\",\"thingType\":\"scuJBe0nfaR554JU\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/scuJBe0nfaR554JU\"}');
INSERT INTO `tbl_iot_policy` VALUES ('k51iS4RShcQyBzeb', '', '[{\"thingType\":\"5bb85e1b353cb77b\",\"alias\":\"fun\",\"key\":\"fun\",\"identifications\":0,\"value\":\"1\"}]', '{\"f2\":{\"f2\":\"0\"}}', null, 'rule', '2017-02-09 11:14:18', '{\"device_id\":\"\",\"thingType\":\"5bb85e1b353cb77b\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/5bb85e1b353cb77b\"}');
INSERT INTO `tbl_iot_policy` VALUES ('llIdQmuFOB2dmTlG', '', '[{\"thing_id\":\"5MXn47ZeGUqVU77y\",\"alias\":\"Led_OnOff\",\"key\":\"switch\",\"symbols\":\"0\",\"value\":\"6\"}]', '{\"Led_OnOff\":{\"switch\":\"4\"}}', null, '109', '2016-12-07 17:31:36', '{\"device_id\":\"\",\"thing_id\":\"O4L1kB8GrtBntdNY\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/O4L1kB8GrtBntdNY\"}');
INSERT INTO `tbl_iot_policy` VALUES ('N9tWy9cYrF49xfSx', '', '[{\"thingType\":\"YjO1gQ4XGTxWtoa5\",\"alias\":\"LED_INIT\",\"key\":\"init\",\"identifications\":0,\"value\":\"0\"}]', '{\"LED_OPERATION\":{\"operation\":\"1\"}}', null, 'bbbb', '2016-12-21 18:53:57', '{\"device_id\":\"\",\"thingType\":\"YjO1gQ4XGTxWtoa5\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/YjO1gQ4XGTxWtoa5\"}');
INSERT INTO `tbl_iot_policy` VALUES ('nFv4AOOj9hFhNxv7', '', '[{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"alias\":\"Led_OnOff\",\"key\":\"switch\",\"value\":\"1\"},{\"thing_id\":\"uf4UbV4cpyxwZ6We\",\"alias\":\"Get_Photo\",\"key\":\"Photo\",\"value\":\"5\"},{\"thing_id\":\"bMKM0MGFcYPA1Ygc\",\"alias\":\"Led_Init\",\"key\":\"switch\",\"value\":\"3\"}]', '{\"\":{\"\":\"3\"}}', null, 'test', '2016-11-17 16:23:23', '{\"device_id\":\"\",\"thing_id\":\"\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"}');
INSERT INTO `tbl_iot_policy` VALUES ('NGe1JACqgvL2El8h', '', '[{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"jl\",\"identifications\":2,\"value\":\"1\"},{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature\",\"identifications\":1,\"value\":\"2\"}]', '{\"\":{\"jl\":\"2\"}}', null, 'kl', '2017-03-15 14:08:31', '{\"device_id\":\"\",\"thingType\":\"BM1lhkq8AyZhPHME\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/BM1lhkq8AyZhPHME\"}');
INSERT INTO `tbl_iot_policy` VALUES ('NPLtdMuRIpLTldu0', '', '[{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"double\",\"identifications\":1,\"value\":\"2.0\"}]', '{\"temperature_func_alias\":{\"temperature\":\"2\"}}', null, 'mm', '2017-03-24 10:04:09', '{\"device_id\":\"\",\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_iot_policy` VALUES ('Ns1NgYBBewuuKw1a', '', '[{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature\",\"identifications\":0,\"value\":\"1\"}]', '{\"\":{\"123tthyh\":\"1\"}}', null, 'riva', '2017-03-24 10:00:41', '{\"device_id\":\"\",\"thingType\":\"BM1lhkq8AyZhPHME\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/BM1lhkq8AyZhPHME\"}');
INSERT INTO `tbl_iot_policy` VALUES ('O4TgQ8fW2xpcDtxN', '', '[{\"thingType\":\"JLb6r275OynVJQ5w\",\"alias\":\"equipment_operation\",\"key\":\"_operation\",\"identifications\":0,\"value\":\"1\"}]', '{\"equipment_init\":{\"_init\":\"2\"}}', null, 'wuge_cenue', '2017-01-05 15:47:31', '{\"device_id\":\"\",\"thingType\":\"z5RM6I0XGYWxcvAV\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/z5RM6I0XGYWxcvAV\"}');
INSERT INTO `tbl_iot_policy` VALUES ('pPNi3m244vHaYSyr', '', '[{\"thingType\":\"Kwq1sFlaTABtpn6n\",\"alias\":\"LedOnOff\",\"key\":\"switch\",\"identifications\":0,\"value\":\"0\"}]', '{\"InitLed\":{\"status\":\"0\"}}', null, 'gz', '2017-03-01 15:20:29', '{\"device_id\":\"\",\"thingType\":\"Kwq1sFlaTABtpn6n\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/Kwq1sFlaTABtpn6n\"}');
INSERT INTO `tbl_iot_policy` VALUES ('ptC9jlBTpdaPRFQk', '', '[{\"thingType\":\"Uke4DqW0WkLcKhkV\",\"property\":\"ff\",\"identifications\":0,\"value\":\"35\"},{\"thingType\":\"Uke4DqW0WkLcKhkV\",\"property\":\"ff\",\"identifications\":0,\"value\":\"34\"}]', '{\"ff\":{\"dp\":\"35\"}}', null, 'kk', '2017-03-02 18:48:08', '{\"device_id\":\"\",\"thingType\":\"Uke4DqW0WkLcKhkV\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/Uke4DqW0WkLcKhkV\"}');
INSERT INTO `tbl_iot_policy` VALUES ('PwbsJK3qMhU1aFFp', '', '[{\"thingType\":\"KwEJ18t833G7ogBK\",\"alias\":\"LED_INIT\",\"key\":\"INIT\",\"identifications\":0,\"value\":\"0\"}]', '{\"LED_OPERATION\":{\"OPERATION\":\"1\"}}', null, 'RRRRRR', '2016-12-21 11:15:13', '{\"device_id\":\"\",\"thingType\":\"KwEJ18t833G7ogBK\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/KwEJ18t833G7ogBK\"}');
INSERT INTO `tbl_iot_policy` VALUES ('qoxHYhvz5r0wlrkX', '', '[{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"f3\",\"identifications\":0,\"value\":\"5\"},{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"f2\",\"identifications\":0,\"value\":\"0\"},{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"f1\",\"identifications\":0,\"value\":\"7i\"},{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"f4\",\"identifications\":0,\"value\":\"3.5\"}]', '{\"f3\":{\"qw\":\"4\"}}', null, 'policy', '2017-03-03 11:08:30', '{\"device_id\":\"\",\"thingType\":\"BM1lhkq8AyZhPHME\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/BM1lhkq8AyZhPHME\"}');
INSERT INTO `tbl_iot_policy` VALUES ('RPy4DJAB2xZD3PRY', '', '[{\"thingType\":\"BPnsKhcEFspI1hCe\",\"alias\":\"open\",\"key\":\"open\",\"identifications\":0,\"value\":\"11\"}]', '{\"open\":{\"open\":\"1\"}}', null, 'test', '2016-12-22 14:14:03', '{\"device_id\":\"\",\"thingType\":\"UqGuJOumxKrDIVOa\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/UqGuJOumxKrDIVOa\"}');
INSERT INTO `tbl_iot_policy` VALUES ('S7pESBZcbNqj47zT', '', '[{\"thingType\":\"vBQBscOe4zrkVN8f\",\"alias\":\"Init\",\"key\":\"path\",\"identifications\":1,\"value\":\"1\"}]', '{\"OpenCamera\":{\"photo\":\"1234567890\"}}', null, 'hh', '2017-02-14 17:23:33', '{\"device_id\":\"\",\"thingType\":\"vBQBscOe4zrkVN8f\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/vBQBscOe4zrkVN8f\"}');
INSERT INTO `tbl_iot_policy` VALUES ('stFa7k52zIhAFJUP', '', '[{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature\",\"identifications\":2,\"value\":\"1\"}]', '{\"temperature_func_alias\":{\"temperature\":\"2\"}}', null, 'jkl', '2017-03-24 10:05:57', '{\"device_id\":\"\",\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_iot_policy` VALUES ('tbZ0AE6Uusf20d6D', '', '[{\"thing_id\":\"S5YaV74xPMxYBiTy\",\"alias\":\"LED_INIT\",\"key\":\"init\",\"symbols\":1,\"value\":\"3\"}]', '{\"Led_OnOff\":{\"switch\":\"1\"}}', null, '109', '2016-12-07 17:47:16', '{\"device_id\":\"\",\"thing_id\":\"S5YaV74xPMxYBiTy\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/S5YaV74xPMxYBiTy\"}');
INSERT INTO `tbl_iot_policy` VALUES ('thosj2jDaTfiiMgY', '', '[{\"thing_id\":\"jE8ZQR3hLCtfa5up\",\"alias\":\"camera_init\",\"key\":\"2\",\"value\":\"2\"}]', '{\"camera_open\":{\"er\":\"2\"}}', null, '109test', '2016-12-05 16:02:54', '{\"device_id\":\"\",\"thing_id\":\"PdkI35Y0IMOOl6b3\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/PdkI35Y0IMOOl6b3\"}');
INSERT INTO `tbl_iot_policy` VALUES ('TUdKg92GpI9Gj4YH', '', '[{\"thing_id\":null,\"alias\":null,\"key\":null,\"value\":\"\"}]', '{\"\":{\"\":\"\"}}', null, '测试2', '2016-11-17 15:05:36', '{\"device_id\":\"\",\"thing_id\":null,\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"}');
INSERT INTO `tbl_iot_policy` VALUES ('tWYDf3POWTxxzld8', '', '[{\"thingType\":\"rQgNVDZFFC6sbuCk\",\"alias\":\"INIT\",\"key\":\"init\",\"identifications\":0,\"value\":\"0\"}]', '{\"OPERATION\":{\"operation\":\"1\"}}', null, '1222', '2016-12-22 19:26:26', '{\"device_id\":\"\",\"thingType\":\"rQgNVDZFFC6sbuCk\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/rQgNVDZFFC6sbuCk\"}');
INSERT INTO `tbl_iot_policy` VALUES ('TYaWDx0JGuPSxCGr', '', '[{\"thing_id\":\"1uRTyvAmCiLmoHsA\",\"alias\":null,\"key\":null,\"value\":\"\"}]', '{\"\":{\"\":\"\"}}', null, '测试4', '2016-11-17 15:22:53', '{\"device_id\":\"\",\"thing_id\":\"1uRTyvAmCiLmoHsA\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/1uRTyvAmCiLmoHsA\"}');
INSERT INTO `tbl_iot_policy` VALUES ('v70nBYv1fTmiaKvB', '', '[{\"thing_id\":null,\"alias\":null,\"key\":null,\"value\":\"\"}]', '{\"\":{\"\":\"\"}}', null, '测试1', '2016-11-17 15:02:18', '{\"device_id\":\"\",\"thing_id\":null,\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"}');
INSERT INTO `tbl_iot_policy` VALUES ('vuiRQWzQnL3FpjJ4', '', '[{\"thingType\":\"SL8NyIejJMjAUHnk\",\"alias\":\"led_init\",\"key\":\"dd\",\"identifications\":0,\"value\":\"3\"}]', '{\"led_switch\":{\"gh\":\"c\"}}', null, 'ccccccc', '2016-12-16 16:42:44', '{\"device_id\":\"\",\"thingType\":\"SL8NyIejJMjAUHnk\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/SL8NyIejJMjAUHnk\"}');
INSERT INTO `tbl_iot_policy` VALUES ('w7Agy8FNonSqEepR', '', '[{\"thingType\":\"444BqyVqkKSqvCgs\",\"alias\":\"wuge\",\"key\":\"123\",\"identifications\":0,\"value\":\"2\"},{\"thingType\":\"444BqyVqkKSqvCgs\",\"alias\":\"wuge\",\"key\":\"234\",\"identifications\":0,\"value\":\"34\"},{\"thing_id\":\"NXtBmbiBbS0uem8c\",\"alias\":\"led_init\",\"key\":\"switch\",\"identifications\":0,\"value\":\"1\"}]', '{\"wuge\":{\"234\":\"1\"}}', null, 'wuge', '2016-12-15 17:04:12', '{\"device_id\":\"\",\"thing_id\":\"444BqyVqkKSqvCgs\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/444BqyVqkKSqvCgs\"}');
INSERT INTO `tbl_iot_policy` VALUES ('WayznSvX5CoVwbYJ', '', '[{\"thingType\":\"owvSTnSegyuof64d\",\"property\":\"Switch\",\"identifications\":0,\"value\":\"1\"}]', '[{\"LedDisplay\":[{\"name\":\"display\",\"value\":\"display current\"}]}]', null, '测试', '2017-03-31 18:21:43', '{\"device_id\":\"\",\"thingType\":\"scuJBe0nfaR554JU\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/scuJBe0nfaR554JU\"}');
INSERT INTO `tbl_iot_policy` VALUES ('XNPNb1sgoZJ2mZYE', '', '[{\"thing_id\":\"AshrPxO7v1J0qRn1\",\"alias\":\"LedInit\",\"key\":\"switch\",\"value\":\"\"}]', '{\"LedInit\":{\"\":\"\"}}', null, '', '2016-11-17 15:49:33', '{\"device_id\":\"\",\"thing_id\":\"AshrPxO7v1J0qRn1\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/AshrPxO7v1J0qRn1\"}');
INSERT INTO `tbl_iot_policy` VALUES ('xVMm72CZ8S7oc9Xm', '', '[{\"thing_id\":null,\"alias\":null,\"key\":null,\"value\":\"\"}]', '{\"\":{\"\":\"\"}}', null, '', '2016-11-18 14:09:38', '{\"device_id\":\"\",\"thing_id\":null,\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"}');
INSERT INTO `tbl_iot_policy` VALUES ('XxhalVBarwTDaB16', '', '[{\"thingType\":\"123123\",\"alias\":\"f2\",\"key\":\"fg\",\"identifications\":0,\"value\":\"5.6\"},{\"thingType\":\"123123\",\"alias\":\"f3\",\"key\":\"e\",\"identifications\":1,\"value\":\"0\"},{\"thingType\":\"123123\",\"alias\":\"f2\",\"key\":\"fw\",\"identifications\":2,\"value\":\"4\"}]', '{\"f2\":{\"fw\":\"1\"}}', null, 'gz', '2017-01-22 14:13:08', '{\"device_id\":\"\",\"thingType\":\"123123\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/123123\"}');
INSERT INTO `tbl_iot_policy` VALUES ('yHd8kLglfXEdKMC3', '', '[{\"thing_id\":\"\",\"alias\":null,\"key\":null,\"value\":\"\"}]', '{\"\":{\"\":\"\"}}', null, '', '2016-11-18 11:26:14', '{\"device_id\":\"\",\"thing_id\":\"\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/\"}');
INSERT INTO `tbl_iot_policy` VALUES ('YnHgUJnVCXGaJsid', '', '[{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature_func_alias\",\"identifications\":2,\"value\":\"50.50\"}]', '{\"switch1_func_alias\":{\"switch1\":\"1\"}}', null, 'yefeng_rule1', '2017-03-07 14:11:20', '{\"device_id\":\"\",\"thingType\":\"3s1xRCzUyTojT4zL\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/3s1xRCzUyTojT4zL\"}');
INSERT INTO `tbl_iot_policy` VALUES ('yQK7cy6KZVSUUcAX', '', '[{\"thingType\":\"BM1lhkq8AyZhPHME\",\"property\":\"jl\",\"identifications\":3,\"value\":\"3\"}]', '{\"\":{\"34\":\"2\"}}', null, 'pp', '2017-03-14 18:37:14', '{\"device_id\":\"\",\"thingType\":\"BM1lhkq8AyZhPHME\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/BM1lhkq8AyZhPHME\"}');
INSERT INTO `tbl_iot_policy` VALUES ('z2j9Ump4OUqXqALK', '', '[{\"thingType\":\"UNNli9BOyi2UK4Cd\",\"alias\":\"LED_INIT\",\"key\":\"int\",\"identifications\":0,\"value\":\"3\"}]', '{\"led_switch\":{\"open\":\"2\"}}', null, '都别用', '2016-12-16 14:31:54', '{\"device_id\":\"\",\"thingType\":\"UNNli9BOyi2UK4Cd\",\"topic\":\"$MIA-IOT\\/devices\\/\\/things\\/UNNli9BOyi2UK4Cd\"}');

-- ----------------------------
-- Table structure for `tbl_iot_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_product_category`;
CREATE TABLE `tbl_iot_product_category` (
  `id` varchar(16) NOT NULL,
  `pid` varchar(16) NOT NULL,
  `title` varchar(64) NOT NULL COMMENT '分类名称',
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '层级',
  `order_field` tinyint(5) NOT NULL COMMENT '排序字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品分类表';

-- ----------------------------
-- Records of tbl_iot_product_category
-- ----------------------------
INSERT INTO `tbl_iot_product_category` VALUES ('bgsb', 'bgsb', '办公设备', '1', '11');
INSERT INTO `tbl_iot_product_category` VALUES ('bx', 'zljj', '冰箱', '2', '3');
INSERT INTO `tbl_iot_product_category` VALUES ('hjjk', 'hjjk', '环境监控', '1', '10');
INSERT INTO `tbl_iot_product_category` VALUES ('jkyl', 'jkyl', '健康医疗', '1', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('jnwj', 'jnwj', '智能玩具', '1', '6');
INSERT INTO `tbl_iot_product_category` VALUES ('jtyy', 'zljj', '家庭影院', '2', '5');
INSERT INTO `tbl_iot_product_category` VALUES ('kcdsb', 'kcdsb', '可穿戴设备', '1', '5');
INSERT INTO `tbl_iot_product_category` VALUES ('kd', 'zljj', '空调', '2', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('lyjt', 'lyjt', '能源交通', '1', '3');
INSERT INTO `tbl_iot_product_category` VALUES ('other', 'other', '其它', '1', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('other', 'jkyl', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('ppdn', 'zljj', '平板电视', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('rsq', 'zljj', '热水器', '2', '8');
INSERT INTO `tbl_iot_product_category` VALUES ('xny', 'xny', '新能源', '1', '7');
INSERT INTO `tbl_iot_product_category` VALUES ('xyj', 'zljj', '洗衣机', '2', '4');
INSERT INTO `tbl_iot_product_category` VALUES ('ydjk', 'ydjk', '运动监控', '1', '8');
INSERT INTO `tbl_iot_product_category` VALUES ('zcsb', 'zcsb', '车载设备', '1', '4');
INSERT INTO `tbl_iot_product_category` VALUES ('zljj', 'zljj', '智能家居', '1', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('znjy', 'znjy', '智能教育', '1', '9');
INSERT INTO `tbl_iot_product_category` VALUES ('bus', 'lyjt', '公汽', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('other', 'lyjt', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('navigati', 'zcsb', '导航仪', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('xcjly', 'zcsb', '行车记录仪', '2', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('other_zcsb', 'zcsb', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('watches', 'kcdsb', '手表', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('children\'s_watch', 'kcdsb', '儿童手表', '2', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('other_kcdsb', 'kcdsb', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('robot', 'jnwj', '机器人', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('doll', 'jnwj', '智能娃娃', '2', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('other_xny', 'xny', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('bike', 'ydjk', '自行车', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('riding_equipment', 'ydjk', '骑行装备', '2', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('outdoor', 'ydjk', '户外用品', '2', '3');
INSERT INTO `tbl_iot_product_category` VALUES ('other_ydjk', 'ydjk', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('other_znjy', 'znjy', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('humiture', 'hjjk', '温湿度', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('haze', 'hjjk', '雾霾', '2', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('other_hjjk', 'hjjk', '其它', '2', '100');
INSERT INTO `tbl_iot_product_category` VALUES ('mfp', 'bgsb', '多功能一体机', '2', '1');
INSERT INTO `tbl_iot_product_category` VALUES ('monitoring', 'bgsb', '安防监控', '2', '2');
INSERT INTO `tbl_iot_product_category` VALUES ('office', 'bgsb', '办公家具', '2', '3');
INSERT INTO `tbl_iot_product_category` VALUES ('route', 'bgsb', '路由器', '2', '4');
INSERT INTO `tbl_iot_product_category` VALUES ('network_card', 'bgsb', '网卡', '2', '5');
INSERT INTO `tbl_iot_product_category` VALUES ('interchanger', 'bgsb', '交换机', '2', '6');
INSERT INTO `tbl_iot_product_category` VALUES ('gateway', 'bgsb', '网关', '2', '7');
INSERT INTO `tbl_iot_product_category` VALUES ('other_bgsb', 'bgsb', '其它', '2', '100');

-- ----------------------------
-- Table structure for `tbl_iot_product_info`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_product_info`;
CREATE TABLE `tbl_iot_product_info` (
  `id` varchar(16) NOT NULL COMMENT '索引',
  `name` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `type` varchar(255) DEFAULT NULL COMMENT '产品类型',
  `board_id` varchar(16) DEFAULT NULL COMMENT '模块类型',
  `diagram` varchar(256) DEFAULT NULL COMMENT '示意图',
  `create_user` varchar(64) DEFAULT NULL COMMENT '创建用户',
  `modify_user` varchar(64) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `category` varchar(255) DEFAULT NULL COMMENT '产品类别',
  `encoding` tinyint(1) DEFAULT '0' COMMENT '编码方式 0：json,1:tlv',
  `productconf` varchar(565) DEFAULT NULL COMMENT '产品配置',
  `publish` tinyint(1) DEFAULT '0' COMMENT '是否发布0：否,1:是（审核中）,2:审核通过',
  `crt` varchar(256) DEFAULT NULL COMMENT '产品crt证书路径',
  `key` varchar(256) DEFAULT NULL COMMENT '产品key证书路径',
  `sdk` varchar(256) DEFAULT NULL COMMENT 'sdk文件路径',
  `link_interval` int(5) DEFAULT '120' COMMENT '链路心跳间隔',
  `data_eporting_interval` int(5) DEFAULT '120' COMMENT '数据上报间隔时间',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品信息表';

-- ----------------------------
-- Records of tbl_iot_product_info
-- ----------------------------
INSERT INTO `tbl_iot_product_info` VALUES ('0woIM5rzh3g64xL8', 'cccccccccccccccccccc', 'cccccccccccccccccccc', 'QWa646lXX4vUUaKp', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('1', '智能产品', 'jkyl', null, null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('19xBN61iNp84sVGy', '234234', 'zljj', 'CTnD2XFabzmJb2Vs', null, null, null, null, null, '1223', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('1FhvAp5ZI4RvxMZQ', 'dengfei_gateway', 'zljj', 'ualpcoRjT0PJ52ta', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-03-01 16:53:36', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('1irZ3e0HqE5cRLbA', 'zhangwei-ESP-LED', 'znjy', 'n2clSne4Es5yCir9', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-01-10 17:39:52', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('2', 'prudct1', 'zljj', 'HEo0ad905gYpQCmb', null, null, null, null, null, '3r44r', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('2tcbzho5fowzm5lT', '测试信息', 'zljj', '786ATi7bGSC2RpL8', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-30 16:27:44', null, '', null, '0', null, '1', './Uploads/certificate/201703/2tcbzho5fowzm5lT.crt', './Uploads/certificate/201703/2tcbzho5fowzm5lT.key', null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('3AGb0vqJB43UH09Z', '智能联动测试', '家居', 'H9POIDeuVxkJNuMk', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('3Nj6wNEszDPw74v1', 'zz', 'jkyl', 'n2clSne4Es5yCir9', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-07 14:34:20', null, 'qwe', null, '0', './Uploads/productconf/201704/3Nj6wNEszDPw74v1.conf', '0', null, null, null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('3s1xRCzUyTojT4zL', 'yefengOnlythingProduct1', 'zljj', '9iGT3YbCDwT4kzgQ', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-03-07 14:01:22', null, '', null, '0', null, '0', null, null, null, '125', '150');
INSERT INTO `tbl_iot_product_info` VALUES ('4mOY44vZsJeTVMJE', 'xzzzzzzzzzzzzzzzz', 'zzzzzzzzzzzzzzzzzzz', 'H9POIDeuVxkJNuMk', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('56m5B2ANoJBiA92G', '智能家居', '智能家居', 'bR82Z0U3yluKqyEr', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('5NCD3CjIW3EAFXSk', '产品1', '类别1', 'CTnD2XFabzmJb2Vs', null, null, null, null, null, '323434', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('5rk4n6DKzwC5xwKJ', 'test0209', 'ydjk', 'bWAhSZ0NWaCL7mhG', null, '540ee87a-ac89-4eee-8246-562a627c7e1b', null, '2017-02-09 14:14:05', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('5rXj9hjKoj3AbcY7', '测试3', '测试3', 'HHMlHlbblf5zZstY', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('6OWrQByfNne0o5vi', 'gpio', 'jkyl', 'E9Q8kVtv80ZFRCEx', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-01-20 10:08:34', null, 'gpio', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('76P3JUwb1ylJbF1e', '网关测试', 'zljj', 'osQkLJguRPD6hGVB', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-14 15:06:45', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('8doAUre14CNhASL7', 'test2016', 'zljj', 'JyQGi9FDVouP3b6l', null, null, null, '2016-12-22 19:25:45', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('9RMUrQoLCEd79nF1', '环境监控', 'lyjt', 'agmnsVWiwfWmLHm9', null, '540ee87a-ac89-4eee-8246-562a627c7e1b', null, '2017-01-21 10:02:06', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('b9ylMNfxbjFHRP3X', 'FFFFFFFFFFF', 'FFFFFFFFFFF', 'kHKtTusYyXpWmATq', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('BM1lhkq8AyZhPHME', 'last_product_onlything', 'zljj', 'GnHHapaoKjlBorV7', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-03 10:34:49', null, '', null, '0', null, '2', null, null, './Uploads/sdk/201704/1492070144_34.bin', '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('CCLcawncdMTvaNG0', 'ttesfdsfsdf', 'A01', 'uOcQwGsxqICodVTI', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-03-31 16:36:29', null, '', null, '0', null, '1', './Uploads/certificate/201703/CCLcawncdMTvaNG0.crt', './Uploads/certificate/201703/CCLcawncdMTvaNG0.key', null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('CWpvXgRhy52vNlhY', '8266PRODUCT', 'jkyl', 'n2clSne4Es5yCir9', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-01-18 16:20:51', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('datkDCqbvFvlm0WK', '智能网关', 'zljj', 'osQkLJguRPD6hGVB', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-24 15:38:19', null, '', null, '0', './Uploads/productconf/201703/datkDCqbvFvlm0WK.conf', '1', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('DqTeFbjVVl8m7P7X', 'last_product_gateway', 'lyjt', 'ualpcoRjT0PJ52ta', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-03 10:55:22', null, '56777', null, '0', './Uploads/productconf/201703/DqTeFbjVVl8m7P7X.conf', '0', null, null, null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('DVU3BYLUGJlqBexl', 'zyk_noneonlything', 'zljj', 'oXCjm3YkhMBCKKLF', null, '540ee87a-ac89-4eee-8246-562a627c7e1b', null, '2017-03-06 10:01:44', null, '', null, '0', './Uploads/productconf/201703/DVU3BYLUGJlqBexl.conf', '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('E3AppulYVL4dN8ag', 'gpio', 'gpio', 'E9Q8kVtv80ZFRCEx', null, null, null, null, null, 'cccc', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('ehQSPkvWEWLkCc0n', 'zhi', 'gy', 'HHMlHlbblf5zZstY', null, null, null, '2016-12-22 19:07:44', null, '34', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('epSMw5Bdh99muNyn', '234234', 'zljj', '0QV2I1LyGyWcuiP6', null, null, null, '2016-12-22 19:50:27', null, '234234ewtrt', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('erds00fN8VRn5aKy', '2017188test', 'zljj', '29YcJd08tiPm52SQ', null, null, null, '2017-01-03 10:36:36', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('exxQlPzFgPOLiImE', 'wuge_ceshi', 'lyjt', 'ualpcoRjT0PJ52ta', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-10 14:53:38', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('F71T2kmMx36t6b7N', 'yefengproduct', '111', '4cF6bZwyvvcnwnFJ', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('fmcCmlBdyfblQWjN', 'pro_Riva', '空调', '1OmYnreI7MNkZ7aE', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('g1cBKWBDrKEVtbNo', 'asfasf', 'zljj', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-27 15:39:21', null, '', null, '0', null, '0', './Uploads/certificate/201704/g1cBKWBDrKEVtbNo.crt', './Uploads/certificate/201704/g1cBKWBDrKEVtbNo.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('g2NOxQGzWHpWVQc2', 'list8', 'jkyl', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:07:30', null, '', null, '0', null, '0', './Uploads/certificate/201704/g2NOxQGzWHpWVQc2.crt', './Uploads/certificate/201704/g2NOxQGzWHpWVQc2.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('G2QhckQjTzzEyAVY', 'wuge', 'jkyl', 'n2clSne4Es5yCir9', null, '7b3844a2-949c-4d31-927e-d18be1c814d5', null, '2017-02-09 16:30:27', null, 'wuge的产品', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('g52WJRZryP2AGwkf', 'io', 'zljj', 'L95tM4edu241Cjb3', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-05-10 10:35:30', null, '', null, '0', null, '0', './Uploads/certificate/201705/g52WJRZryP2AGwkf.crt', './Uploads/certificate/201705/g52WJRZryP2AGwkf.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('g6o3zyqvwbGAbN8T', 'sdf', 'lyjt', 'L95tM4edu241Cjb3', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-06-21 16:34:45', null, '', null, '0', null, '0', './Uploads/certificate/201706/g6o3zyqvwbGAbN8T.crt', './Uploads/certificate/201706/g6o3zyqvwbGAbN8T.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('g7nNWrVmOtRUCqhS', 'safsaf', 'jkyl', 'L95tM4edu241Cjb3', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-04-27 15:31:27', null, '', null, '0', null, '0', './Uploads/certificate/201704/g7nNWrVmOtRUCqhS.crt', './Uploads/certificate/201704/g7nNWrVmOtRUCqhS.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('g9SZ7QDwqi7mZK9Q', 'test2', 'zljj', 'L95tM4edu241Cjb3', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-04-27 15:56:20', null, '', null, '0', null, '0', './Uploads/certificate/201704/g9SZ7QDwqi7mZK9Q.crt', './Uploads/certificate/201704/g9SZ7QDwqi7mZK9Q.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('GbhfMArOrxxyqN8C', 'ww', 'zljj', '29YcJd08tiPm52SQ', null, null, null, '2017-01-05 14:22:38', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('gCagKpeUQ7TAUw9d', 'asf', 'zljj', 'L95tM4edu241Cjb3', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-04-27 15:31:17', null, '', null, '0', null, '0', './Uploads/certificate/201704/gCagKpeUQ7TAUw9d.crt', './Uploads/certificate/201704/gCagKpeUQ7TAUw9d.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gDhjJtUYXd6Wokpr', 'isi2', 'zljj', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:06:37', null, '', null, '0', null, '0', './Uploads/certificate/201704/gDhjJtUYXd6Wokpr.crt', './Uploads/certificate/201704/gDhjJtUYXd6Wokpr.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('geduoJJcUwLFZBYR', 'asfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfa', 'kcdsb', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:13:42', null, '', null, '0', null, '0', './Uploads/certificate/201704/geduoJJcUwLFZBYR.crt', './Uploads/certificate/201704/geduoJJcUwLFZBYR.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gELJDz1L6xL4dQNy', 'sdfasd', 'zcsb', 'k9d9R7NBSORDLa2c', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-06-29 11:24:51', null, '', null, '0', null, '0', './Uploads/certificate/201706/gELJDz1L6xL4dQNy.crt', './Uploads/certificate/201706/gELJDz1L6xL4dQNy.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('GfvL55SPfywMeV4B', 'cp', 'lyjt', 'agmnsVWiwfWmLHm9', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-01-18 09:44:31', null, '3434', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('ghIkSW8kvYPLjZ9i', 'test2', 'zljj', 'L95tM4edu241Cjb3', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-04-27 15:56:19', null, '', null, '0', null, '0', './Uploads/certificate/201704/ghIkSW8kvYPLjZ9i.crt', './Uploads/certificate/201704/ghIkSW8kvYPLjZ9i.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gIOwqSyIpbVhzdun', 'asdfsd', 'zljj', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-05-03 09:27:17', null, '', null, '0', null, '0', './Uploads/certificate/201705/gIOwqSyIpbVhzdun.crt', './Uploads/certificate/201705/gIOwqSyIpbVhzdun.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gizVw1wjsAxJFEbL', 'sdfasd', 'zcsb', 'k9d9R7NBSORDLa2c', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-06-29 11:24:49', null, '', null, '0', null, '0', './Uploads/certificate/201706/gizVw1wjsAxJFEbL.crt', './Uploads/certificate/201706/gizVw1wjsAxJFEbL.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gJTUO1QzS6FuF6zk', 'list7', 'ydjk', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:07:18', null, '', null, '0', null, '0', './Uploads/certificate/201704/gJTUO1QzS6FuF6zk.crt', './Uploads/certificate/201704/gJTUO1QzS6FuF6zk.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gNopGJO4mkqa5g1F', 'list4', 'lyjt', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:06:54', null, '', null, '0', null, '0', './Uploads/certificate/201704/gNopGJO4mkqa5g1F.crt', './Uploads/certificate/201704/gNopGJO4mkqa5g1F.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gO8hdkakoB48Q8iF', 'sdfasd', 'zcsb', 'k9d9R7NBSORDLa2c', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-06-29 11:24:52', null, '', null, '0', null, '0', './Uploads/certificate/201706/gO8hdkakoB48Q8iF.crt', './Uploads/certificate/201706/gO8hdkakoB48Q8iF.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gPoJmT0fngYzujdL', 'asdfsd', 'zljj', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-05-03 09:27:15', null, 'klou', null, '0', null, '0', './Uploads/certificate/201705/gPoJmT0fngYzujdL.crt', './Uploads/certificate/201705/gPoJmT0fngYzujdL.key', null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('gqVBDh4eIe2bbnxW', 'sfsdf', 'zljj', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-27 15:39:00', null, '', null, '0', null, '0', './Uploads/certificate/201704/gqVBDh4eIe2bbnxW.crt', './Uploads/certificate/201704/gqVBDh4eIe2bbnxW.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gTJqczrV9ucf5kZh', 'sdfasd', 'zcsb', 'k9d9R7NBSORDLa2c', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-06-29 11:24:48', null, '', null, '0', null, '0', './Uploads/certificate/201706/gTJqczrV9ucf5kZh.crt', './Uploads/certificate/201706/gTJqczrV9ucf5kZh.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gTrrrv01etqtO9vN', 'ii', 'zljj', 'L95tM4edu241Cjb3', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-05-10 10:33:25', null, '', null, '0', null, '0', './Uploads/certificate/201705/gTrrrv01etqtO9vN.crt', './Uploads/certificate/201705/gTrrrv01etqtO9vN.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gV33X4CrCGBpzN1P', 'list6', 'xny', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:07:06', null, '', null, '0', null, '0', './Uploads/certificate/201704/gV33X4CrCGBpzN1P.crt', './Uploads/certificate/201704/gV33X4CrCGBpzN1P.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gvmfWCee8k9eQ8ZH', 'list10', 'zljj', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:07:40', null, '', null, '0', null, '0', './Uploads/certificate/201704/gvmfWCee8k9eQ8ZH.crt', './Uploads/certificate/201704/gvmfWCee8k9eQ8ZH.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gXRwariLsJ5r3dfW', 'asf', 'zljj', 'L95tM4edu241Cjb3', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-04-27 15:31:15', null, '', null, '0', null, '0', './Uploads/certificate/201704/gXRwariLsJ5r3dfW.crt', './Uploads/certificate/201704/gXRwariLsJ5r3dfW.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gxU4UTXnRdXFPTJ3', 'asdf', 'other', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:12:03', null, '', null, '0', null, '0', './Uploads/certificate/201704/gxU4UTXnRdXFPTJ3.crt', './Uploads/certificate/201704/gxU4UTXnRdXFPTJ3.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gY7HaXjECuI1Ab5F', 'liste3', 'zljj', 'L95tM4edu241Cjb3', null, 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-04-25 10:06:45', null, '', null, '0', null, '0', './Uploads/certificate/201704/gY7HaXjECuI1Ab5F.crt', './Uploads/certificate/201704/gY7HaXjECuI1Ab5F.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('gyL13nTxjyQSIfgJ', 'test3', 'zljj', 'k9d9R7NBSORDLa2c', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-06-27 13:47:03', null, '', null, '0', null, '0', './Uploads/certificate/201706/gyL13nTxjyQSIfgJ.crt', './Uploads/certificate/201706/gyL13nTxjyQSIfgJ.key', null, null, null);
INSERT INTO `tbl_iot_product_info` VALUES ('gZNJWJMKXVw1snMm', 'tip', 'zljj', 'L95tM4edu241Cjb3', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-05-10 10:32:33', null, '', null, '0', null, '0', './Uploads/certificate/201705/gZNJWJMKXVw1snMm.crt', './Uploads/certificate/201705/gZNJWJMKXVw1snMm.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('HcQ3hQ0UNZnif4JS', 'test', 'zljj', '86m1jSj8fPo9PfUt', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-04-07 16:06:23', null, '', null, '0', null, '1', './Uploads/certificate/201704/HcQ3hQ0UNZnif4JS.crt', './Uploads/certificate/201704/HcQ3hQ0UNZnif4JS.key', './Uploads/sdk/201704/1492066363_34.bin', '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('hnVwHtezJeiesICC', 'wuge_ceshi', 'wuge_ceshi', 'VDDWsiqX3SpzQOUW', null, null, null, null, null, '434', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('I9JP2CoTtLMHpc3a', 'onlything', 'zljj', 'VUnoZeqFnCnuCC2H', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-10 14:31:40', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('iewzR2cWIoXuk94s', 'testC', 'testC', 'CTnD2XFabzmJb2Vs', null, null, null, null, null, 'testC', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('j3FHsGF3eF2HfsgY', 'zwEspLed_0210', 'jkyl', 'jdVyeTCtVPxw3NwN', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-10 14:43:55', null, '', null, '0', './Uploads/productconf/201704/j3FHsGF3eF2HfsgY.conf', '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('jmFss92dQalO5Ynb', 'wuge_1', 'zljj', '29YcJd08tiPm52SQ', null, null, null, '2017-01-05 15:44:42', null, '55', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('jt3vI8XiUHuYXhNW', '234234', 'zljj', 'bR82Z0U3yluKqyEr', null, null, null, '2016-12-29 10:38:59', null, '23434', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('JttNJt5Bo8szjpN7', 'yefengNoneOnlythingProduct1', 'zljj', 'CcHAEDrA7tcJq9PS', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-03-07 13:55:31', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('kaM2vY1fxNoRUxIJ', 'yefeng_product1', 'zljj', 'GnHHapaoKjlBorV7', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-03-06 09:48:33', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('kOU4IIbWmvhlfRmA', 'interval', 'zljj', 'xFtYBMflEZCesAMh', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-04-13 18:24:43', null, '', null, '0', './Uploads/productconf/201704/kOU4IIbWmvhlfRmA.conf', '0', './Uploads/certificate/201704/kOU4IIbWmvhlfRmA.crt', './Uploads/certificate/201704/kOU4IIbWmvhlfRmA.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('m7F1nsf8xMb1dYKI', '突然', '二', '0QV2I1LyGyWcuiP6', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('Mt2rLca0fOLu99zg', '2wqe4', 'jkyl', '0QV2I1LyGyWcuiP6', null, null, null, null, null, 'wewe', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('NonmqHckHiOKl0nV', '转测试验证', 'zljj', 'osQkLJguRPD6hGVB', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-31 18:20:28', null, '', null, '0', './Uploads/productconf/201703/NonmqHckHiOKl0nV.conf', '1', './Uploads/certificate/201703/NonmqHckHiOKl0nV.crt', './Uploads/certificate/201703/NonmqHckHiOKl0nV.key', null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('o8CL05Q6HssIaL8A', 'zhangweiESPLED', 'jkyl', 'vSRkskQ92y8pRTDl', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-10 10:36:35', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('oO8sFLJCet4EFAbZ', 'interval_gateway', 'zljj', 'ualpcoRjT0PJ52ta', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-04-14 09:48:04', null, '', null, '0', './Uploads/productconf/201704/oO8sFLJCet4EFAbZ.conf', '0', './Uploads/certificate/201704/oO8sFLJCet4EFAbZ.crt', './Uploads/certificate/201704/oO8sFLJCet4EFAbZ.key', null, '125', '125');
INSERT INTO `tbl_iot_product_info` VALUES ('or0xC9CCN17sPlwq', '1226GPIO', '1226GPIO', 'agmnsVWiwfWmLHm9', null, null, null, '2016-12-26 10:09:33', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('owvSTnSegyuof64d', '智能LED灯', 'zljj', 'xFtYBMflEZCesAMh', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-24 15:30:32', null, '', null, '0', './Uploads/productconf/201703/owvSTnSegyuof64d.conf', '1', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('pbnXNTAk8CTquAG3', '产品新戏可如今', 'zljj', 'uOcQwGsxqICodVTI', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-31 14:37:50', null, '', null, '0', null, '2', './Uploads/certificate/201703/pbnXNTAk8CTquAG3.crt', './Uploads/certificate/201703/pbnXNTAk8CTquAG3.key', './Uploads/sdk/201704/1491466303_34.sdk', '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('Pl01ZBckySTlRSvm', 'sdfsdfsdfsfsdfd', 'dfsdfdsfgdsgsd', 'CTnD2XFabzmJb2Vs', null, null, null, null, null, 'esfsfdsf', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('Q0j9uBrceIbfHPRs', 'test02091', 'jkyl', 'bWAhSZ0NWaCL7mhG', null, '540ee87a-ac89-4eee-8246-562a627c7e1b', null, '2017-02-09 14:14:37', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('QS75PxHfkKVOtKIz', 'bbbbbbbbbbbbb', 'bbbbbbbbbbbbbb', 'AneT7CTR2rpTpOWf', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('qxBmW9UiVfbtPq33', 'yefengOnlythingProduct2', 'zljj', '9iGT3YbCDwT4kzgQ', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-03-07 14:07:43', null, '', null, '0', null, '2', null, null, './Uploads/sdk/201704/1492070295_34.bin', '150', '153');
INSERT INTO `tbl_iot_product_info` VALUES ('RIr68R3eebIDCziO', '23434', '34324', 'CTnD2XFabzmJb2Vs', null, null, null, null, null, '2343434', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('SAl7uwSPkyWKixDx', 'aaa', 'bbb', '1OmYnreI7MNkZ7aE', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('scuJBe0nfaR554JU', '显示屏', 'ydjk', 'xFtYBMflEZCesAMh', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-24 15:30:58', null, '', null, '0', './Uploads/productconf/201703/scuJBe0nfaR554JU.conf', '1', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('Sz5zZ9alUpjtv7AC', 'dengfei_product', 'zljj', 'GnHHapaoKjlBorV7', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-03-01 16:45:32', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('t0YuiEU1fiZOIPfv', 'test', 'lyjt', 'xBLJu1H6r9cG90OA', null, '2b4b2c51-e417-45a3-9782-442868417aad', null, '2017-04-12 14:24:58', null, 'fd', null, '0', null, '0', './Uploads/certificate/201704/t0YuiEU1fiZOIPfv.crt', './Uploads/certificate/201704/t0YuiEU1fiZOIPfv.key', null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('T9BFfdbLy3enceYL', '下划线只支持中文下划线只支持中文下划线只支持中文下划线只支持中文下划线只支持中文下划线只支持中文下划线只支持中文下划线只支持中文', 'zljj', 'gL9Ps7O7Yw0m1FTi', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-27 14:30:40', null, '343', null, '0', null, '1', './Uploads/certificate/201703/T9BFfdbLy3enceYL.crt', './Uploads/certificate/201703/T9BFfdbLy3enceYL.key', null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('TfvVbn013bJlFAmv', '测试', '测试', 'v2B2KOgw1FsKh1yD', null, null, null, null, null, '测试', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('Togu8BPT9Cqp9OeH', 'zyk_onlything', 'zljj', 'uwUDNZfDiTiy0jrt', null, '540ee87a-ac89-4eee-8246-562a627c7e1b', null, '2017-03-06 09:54:08', null, '', null, '0', './Uploads/productconf/201703/Togu8BPT9Cqp9OeH.conf', '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('trqdgZV90aJA0a53', 'gha', 'zljj', 'xFtYBMflEZCesAMh', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-04-14 14:12:05', null, '', null, '0', null, '0', './Uploads/certificate/201704/trqdgZV90aJA0a53.crt', './Uploads/certificate/201704/trqdgZV90aJA0a53.key', null, '120', '120');
INSERT INTO `tbl_iot_product_info` VALUES ('u9g3x4zqGrvzRCkR', '13', '123213', 'CTnD2XFabzmJb2Vs', null, null, null, null, null, '12323', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('Uke4DqW0WkLcKhkV', 'ot', 'zljj', 'GnHHapaoKjlBorV7', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-01 15:29:14', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('uYOO1M8qi3B40Djr', 'pro2_riva', '123', 'VDDWsiqX3SpzQOUW', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('vbOynIYlsdKndPQP', 'zyk', '智能电视', 'c0lADLt0ykOYuAF3', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('vjjKgZ88X3u923G8', 'test', 'zljj', 'ualpcoRjT0PJ52ta', null, 'dedde00a-f165-47f4-95b8-97e0f8d893cf', null, '2017-02-13 18:14:35', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('vwoxfX27HhP9FQlF', '测试2', '测试2', 'hujFSnjndG4YkIX2', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('wfNk93OLzADQhRbk', '3434', 'lyjt', '测试3', null, null, null, '2016-12-22 19:56:42', null, '23424', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('WIayux0QDCOgijBZ', 'test', 'test', '2CEBQgtpPqcBFif3', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('WTqym5YADZtouVwJ', '智能手表和手环享受世界美好', 'zljj', 'PGcpStm1D6LNIyNW', null, '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-30 12:42:34', null, 'sdf', null, '0', null, '1', './Uploads/certificate/201703/WTqym5YADZtouVwJ.crt', './Uploads/certificate/201703/WTqym5YADZtouVwJ.key', null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('Wv8XhMniVW6kEC3I', 'prc', 'jkyl', 'n2clSne4Es5yCir9', null, null, null, '2017-01-17 18:17:16', null, '23', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('x1F5aX5clvhsMjfy', '测试-1', '测试1', 'NE2XXgBC1nE2Y2VR', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('X5FIRAe1kpqxInhh', 'dfces', 'zcsb', 'VUnoZeqFnCnuCC2H', null, '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-02-16 10:11:40', null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('xEhqsX10zvROHaeM', 'testA', 'testA', '1OmYnreI7MNkZ7aE', null, null, null, null, null, 'testA', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('xRq8tmygs4pyHeH4', 'MTK_CXF', 'other', 'WTHZ23KRdAeYChZ0', null, '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-08 14:53:42', null, '', null, '0', './Uploads/productconf/201704/xRq8tmygs4pyHeH4.conf', '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('xZKjTQyUjcGCXNGR', '109', '109', 'dZ0Zuq8IgAYRi6nu', null, null, null, null, null, '', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `tbl_iot_product_info` VALUES ('yKyYj08ZPPiECQVy', 'wuge_product', 'product', 'bR82Z0U3yluKqyEr', null, null, null, null, null, '123', null, '0', null, '0', null, null, null, '0', '0');

-- ----------------------------
-- Table structure for `tbl_iot_product_policy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_product_policy`;
CREATE TABLE `tbl_iot_product_policy` (
  `product_id` varchar(16) NOT NULL,
  `policy_id` varchar(16) NOT NULL,
  PRIMARY KEY (`product_id`,`policy_id`),
  KEY `fk_tbl_iot_product_policy_itbl_iot_product_info1_idx` (`product_id`),
  KEY `fk_tbl_iot_product_policy_tbl_iot_policy1_idx` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_product_policy
-- ----------------------------
INSERT INTO `tbl_iot_product_policy` VALUES ('0woIM5rzh3g64xL8', 'vuiRQWzQnL3FpjJ4');
INSERT INTO `tbl_iot_product_policy` VALUES ('19xBN61iNp84sVGy', '123');
INSERT INTO `tbl_iot_product_policy` VALUES ('19xBN61iNp84sVGy', 'fLO4BvsFqgLhR3rA');
INSERT INTO `tbl_iot_product_policy` VALUES ('1FhvAp5ZI4RvxMZQ', 'IpdxAXiBLaXiHVQZ');
INSERT INTO `tbl_iot_product_policy` VALUES ('1irZ3e0HqE5cRLbA', '6tVy2IMJqgpSud4m');
INSERT INTO `tbl_iot_product_policy` VALUES ('1irZ3e0HqE5cRLbA', '7g1RcE6BcyMsq91H');
INSERT INTO `tbl_iot_product_policy` VALUES ('1irZ3e0HqE5cRLbA', 'qjNIOEe6epml2UXT');
INSERT INTO `tbl_iot_product_policy` VALUES ('1irZ3e0HqE5cRLbA', 'XxhalVBarwTDaB16');
INSERT INTO `tbl_iot_product_policy` VALUES ('2', 'TRrQF9fQ8HGkBehg');
INSERT INTO `tbl_iot_product_policy` VALUES ('3AGb0vqJB43UH09Z', 'caIvlS621qFqYXMB');
INSERT INTO `tbl_iot_product_policy` VALUES ('3AGb0vqJB43UH09Z', 'DeK11O8JLOmWI5Hj');
INSERT INTO `tbl_iot_product_policy` VALUES ('3AGb0vqJB43UH09Z', 'IXPXJC9qLkxahePg');
INSERT INTO `tbl_iot_product_policy` VALUES ('3AGb0vqJB43UH09Z', 'nFv4AOOj9hFhNxv7');
INSERT INTO `tbl_iot_product_policy` VALUES ('3AGb0vqJB43UH09Z', 'NoB1V5kgmsmAiErp');
INSERT INTO `tbl_iot_product_policy` VALUES ('3AGb0vqJB43UH09Z', 'u53cJ4ttzVyHj2Zp');
INSERT INTO `tbl_iot_product_policy` VALUES ('3Nj6wNEszDPw74v1', 'k51iS4RShcQyBzeb');
INSERT INTO `tbl_iot_product_policy` VALUES ('56m5B2ANoJBiA92G', 'YtRpOloAfyqdChkx');
INSERT INTO `tbl_iot_product_policy` VALUES ('5rXj9hjKoj3AbcY7', 'JbCuu8WWY2MnpZo4');
INSERT INTO `tbl_iot_product_policy` VALUES ('5rXj9hjKoj3AbcY7', 'TYaWDx0JGuPSxCGr');
INSERT INTO `tbl_iot_product_policy` VALUES ('6OWrQByfNne0o5vi', 'pPNi3m244vHaYSyr');
INSERT INTO `tbl_iot_product_policy` VALUES ('76P3JUwb1ylJbF1e', 'Jb7BAAZn7mphjfIb');
INSERT INTO `tbl_iot_product_policy` VALUES ('8doAUre14CNhASL7', 'tWYDf3POWTxxzld8');
INSERT INTO `tbl_iot_product_policy` VALUES ('b9ylMNfxbjFHRP3X', 'afGIphZrFycjyVza');
INSERT INTO `tbl_iot_product_policy` VALUES ('BRlhqQ8VRWIbtqjZ', 'z2j9Ump4OUqXqALK');
INSERT INTO `tbl_iot_product_policy` VALUES ('datkDCqbvFvlm0WK', 'jgtKFGcEm6z7yiyy');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'BDX5msF0JL24vibk');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'cSraGVhtrHDdBz0X');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'ELnVl3znwnUQvtQO');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'hHKpkIXiovZxcFfF');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'NGe1JACqgvL2El8h');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'NPLtdMuRIpLTldu0');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'Ns1NgYBBewuuKw1a');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'qoxHYhvz5r0wlrkX');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'stFa7k52zIhAFJUP');
INSERT INTO `tbl_iot_product_policy` VALUES ('DqTeFbjVVl8m7P7X', 'yQK7cy6KZVSUUcAX');
INSERT INTO `tbl_iot_product_policy` VALUES ('E3AppulYVL4dN8ag', '58JVFVMj8JbQCX8l');
INSERT INTO `tbl_iot_product_policy` VALUES ('erds00fN8VRn5aKy', '25voLfdz8Q3p5wK9');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', '8ZssW3TVP3wUvamr');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', '9nMTn7apPANW5SJB');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', 'cTvSkJV48OBzkOhg');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', 'EDZFZ72q7jNLGAPJ');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', 'fZOnty7c9Boh4VD4');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', 'ptC9jlBTpdaPRFQk');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', 'S7pESBZcbNqj47zT');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', 'Te5SYejZpC2cKyt2');
INSERT INTO `tbl_iot_product_policy` VALUES ('exxQlPzFgPOLiImE', 'TRDW5IQRyDhkYofP');
INSERT INTO `tbl_iot_product_policy` VALUES ('F71T2kmMx36t6b7N', 'Byu3uNMqRJSMeNdJ');
INSERT INTO `tbl_iot_product_policy` VALUES ('fkRaDorilqnfVHRw', 'NWx3e1Kp3E4EaZuk');
INSERT INTO `tbl_iot_product_policy` VALUES ('fkRaDorilqnfVHRw', 'thosj2jDaTfiiMgY');
INSERT INTO `tbl_iot_product_policy` VALUES ('hnVwHtezJeiesICC', 'bMIiUCxTZ6vLmwCO');
INSERT INTO `tbl_iot_product_policy` VALUES ('iewzR2cWIoXuk94s', '4snNWKbNgTpPQnO1');
INSERT INTO `tbl_iot_product_policy` VALUES ('jmFss92dQalO5Ynb', 'O4TgQ8fW2xpcDtxN');
INSERT INTO `tbl_iot_product_policy` VALUES ('jt3vI8XiUHuYXhNW', 'Sjx1SVJc3EBqmPNT');
INSERT INTO `tbl_iot_product_policy` VALUES ('JttNJt5Bo8szjpN7', 'YnHgUJnVCXGaJsid');
INSERT INTO `tbl_iot_product_policy` VALUES ('NonmqHckHiOKl0nV', 'WayznSvX5CoVwbYJ');
INSERT INTO `tbl_iot_product_policy` VALUES ('oO8sFLJCet4EFAbZ', 'gXjAC33luuY5Os6W');
INSERT INTO `tbl_iot_product_policy` VALUES ('or0xC9CCN17sPlwq', '5t0WyPxRVLPDWLh1');
INSERT INTO `tbl_iot_product_policy` VALUES ('QS75PxHfkKVOtKIz', 'N9tWy9cYrF49xfSx');
INSERT INTO `tbl_iot_product_policy` VALUES ('SNI9wF6cmpcZne0g', 'yHd8kLglfXEdKMC3');
INSERT INTO `tbl_iot_product_policy` VALUES ('uG8l6kIIKWH4Aq7M', 'FVUzP2Oi1yWYOnPv');
INSERT INTO `tbl_iot_product_policy` VALUES ('UlIzUNL1Bcm8nX2H', 'llIdQmuFOB2dmTlG');
INSERT INTO `tbl_iot_product_policy` VALUES ('uYOO1M8qi3B40Djr', 'xVMm72CZ8S7oc9Xm');
INSERT INTO `tbl_iot_product_policy` VALUES ('vbOynIYlsdKndPQP', 'RPy4DJAB2xZD3PRY');
INSERT INTO `tbl_iot_product_policy` VALUES ('vwoxfX27HhP9FQlF', 'TUdKg92GpI9Gj4YH');
INSERT INTO `tbl_iot_product_policy` VALUES ('Wf59lcJMjyFE50YY', 'PwbsJK3qMhU1aFFp');
INSERT INTO `tbl_iot_product_policy` VALUES ('WIayux0QDCOgijBZ', 'mKYOCTuH86k6STOQ');
INSERT INTO `tbl_iot_product_policy` VALUES ('WIayux0QDCOgijBZ', 'ukm6NPBcTOyoT8kJ');
INSERT INTO `tbl_iot_product_policy` VALUES ('WIayux0QDCOgijBZ', 'XNPNb1sgoZJ2mZYE');
INSERT INTO `tbl_iot_product_policy` VALUES ('x1F5aX5clvhsMjfy', 'v70nBYv1fTmiaKvB');
INSERT INTO `tbl_iot_product_policy` VALUES ('xZKjTQyUjcGCXNGR', 'tbZ0AE6Uusf20d6D');
INSERT INTO `tbl_iot_product_policy` VALUES ('yKyYj08ZPPiECQVy', 'w7Agy8FNonSqEepR');

-- ----------------------------
-- Table structure for `tbl_iot_product_thing_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_product_thing_relation`;
CREATE TABLE `tbl_iot_product_thing_relation` (
  `id` varchar(16) NOT NULL COMMENT '索引',
  `product_id` varchar(16) NOT NULL,
  `interface_id` varchar(16) DEFAULT NULL,
  `thing_id` varchar(16) NOT NULL,
  `conf` text COMMENT '产品接口配置',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_iot_product_thing_relation_itbl_iot_product_info1_idx` (`product_id`),
  KEY `fk_tbl_iot_product_thing_relation_tbl_iot_interface_info1_idx` (`interface_id`),
  KEY `fk_tbl_iot_product_thing_relation_tbl_iot_thing_info1_idx` (`thing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_product_thing_relation
-- ----------------------------
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('0FINnPAyEPCMEaOP', '3Nj6wNEszDPw74v1', 'jXoVEcOuZHuhd4QA', 'Uke4DqW0WkLcKhkV', '{\"id\":\"Uke4DqW0WkLcKhkV\",\"dynlib_path\":\"\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"ot\",\"alias\":\"ot\",\"type\":1,\"input\":[{\"name\":\"ott\",\"tag\":\"\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('0Qh4bmPqsxn9ooEJ', 'WIayux0QDCOgijBZ', 'QjjwUIcf5Jp5OL0P', '13', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('1i1AwBTSSVLOJ6Qm', 'D34hCl7AM9t8vMhK', 'LZMQrUwkAUQCh0XH', 'vBQBscOe4zrkVN8f', '{\"id\":\"vBQBscOe4zrkVN8f\",\"dynlib_path\":\"\\/lib\\/1487055596_camera.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"camera_open\",\"alias\":\"LedDisplay\",\"type\":1,\"input\":[{\"property\":\"display\"}]}],\"properties\":[{\"display\":\"\\u663e\\u793a\\u540d\\u79f0\",\"name\":\"display\",\"tag\":\"\",\"datatype\":3,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('1uRTyvAmCiLmoHsA', '5rXj9hjKoj3AbcY7', 'X51lisQAZXItvDTq', '2c682559e60edbbc', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('1zrxpiqddz4YHvp1', 'hnVwHtezJeiesICC', '0zNopY7BrGXB3MOt', '13', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('2lGN7Cd2ah4WDZ25', 'o8CL05Q6HssIaL8A', 'AFDw2mCtLV8xllJe', '4090712781807138', '{\"id\":\"4090712781807138\",\"dynlib_path\":\"\\/lib\\/1486694240_libpaho-mqtt3c.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"on_off_Switch\",\"alias\":\"ledOnOff\",\"type\":0,\"input\":[{\"name\":\"switchvalue\",\"tag\":\"\",\"datatype\":0,\"minValue\":1,\"maxValue\":3,\"defValue\":0}]},{\"name\":\"colour_control\",\"alias\":\"colourSet\",\"type\":0,\"input\":[{\"name\":\"colourStrValue\",\"tag\":\"\",\"datatype\":3,\"defValue\":\"\",\"maxLength\":256}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('2wniNllv5KkLZMSw', '76P3JUwb1ylJbF1e', 'LZMQrUwkAUQCh0XH', 'Kwq1sFlaTABtpn6n', '{\"id\":\"Kwq1sFlaTABtpn6n\",\"dynlib_path\":\"\\/lib\\/1487055866_Led.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_init\",\"alias\":\"InitLed\",\"type\":0,\"input\":[{\"name\":\"status\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"LedOnOff\",\"type\":1,\"input\":[{\"name\":\"switch\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('2Yh381ThPh6jKixo', 'yKyYj08ZPPiECQVy', 'leKvUQyRjqTodR32', 'eedc9d6267325e79', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('36rdyfZYfVhC2OgI', 'uG8l6kIIKWH4Aq7M', 'LzGBHP4us9r5JNVK', 'd02c3d1893b1611e', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('3BVVTDXOjU7K1Agb', '0zNopY7BrGXB3MOt', '0zNopY7BrGXB3MOt', '7', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('3oJAb8CU09yr2CmO', 'datkDCqbvFvlm0WK', 'A6OHWqbwEWSLpnBe', 'scuJBe0nfaR554JU', '{\"id\":\"scuJBe0nfaR554JU\",\"dynlib_path\":\"\\/lib\\/1490340958_camera.so\",\"index\":0,\"type\":4,\"functions\":[{\"name\":\"camera_open\",\"alias\":\"LedDisplay\",\"type\":1,\"input\":[{\"property\":\"display\"}]}],\"properties\":[{\"display\":\"\\u663e\\u793a\\u5185\\u5bb9\",\"name\":\"display\",\"tag\":\"\",\"datatype\":3,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('444BqyVqkKSqvCgs', 'yKyYj08ZPPiECQVy', 'GlVHembLHuzyixx7', '2f12481eeec84e29', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('5ci1x49qRr4F2Ndo', 'IG47Z7QxJRpUXFNV', 'stnvR7CHAsal8llI', 'wnWYbj38VZPyvmZW', '{\"id\":\"wnWYbj38VZPyvmZW\",\"dynlib_path\":\"\",\"index\":0,\"type\":0,\"properties\":[{\"display\":\"111\",\"name\":\"111\",\"tag\":\"\",\"datatype\":0,\"minValue\":11,\"maxValue\":0,\"defValue\":11}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('5MXn47ZeGUqVU77y', 'UlIzUNL1Bcm8nX2H', 'e6F0Wm5ZIOq1QaiH', '8e3299e193d3a422', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('735AheByU0X5ydsA', '19xBN61iNp84sVGy', '123ewe', '7d50de4a9d40ce9c', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('7p0wYn4VCCJuSZPC', 'jt3vI8XiUHuYXhNW', 'GlVHembLHuzyixx7', 'a55e7593ff91dbaa', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('blZrzCdqUH9bIZ7x', 'pQMTuT6RfxzFu5Ub', 'hG1nQNclrR3iRApw', '3d88c63bc4d3c358', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('bMKM0MGFcYPA1Ygc', '3AGb0vqJB43UH09Z', 'fURcGL7nJF6pnsDM', '7fc0cd6e14c9dcc1', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('BPnsKhcEFspI1hCe', 'vbOynIYlsdKndPQP', '1OL1JlTFFkb3T3tm', '5f2fed0e099dcf1d', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('bv5517TzZTjO6RIx', 'JttNJt5Bo8szjpN7', 'oEOsHFtez6opFEHm', 'qxBmW9UiVfbtPq33', '{\"id\":\"qxBmW9UiVfbtPq33\",\"dynlib_path\":\"\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"temperature_func_name\",\"alias\":\"temperature_func_alias\",\"type\":0,\"input\":[{\"property\":\"temperature\"}]}],\"properties\":[{\"display\":\"\\u6e29\\u5ea6\\u4f20\\u611f\\u5668\",\"name\":\"temperature\",\"tag\":\"\",\"datatype\":1,\"minValue\":0,\"maxValue\":100,\"defValue\":25}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('bxrDcWbhqCbahOoI', '1FhvAp5ZI4RvxMZQ', 'V2jAyrfqUG6MNELI', 'Sz5zZ9alUpjtv7AC', '{\"id\":\"Sz5zZ9alUpjtv7AC\",\"dynlib_path\":\"\",\"index\":0,\"type\":1,\"functions\":[{\"name\":\"temperature_function\",\"alias\":\"temperature_alias\",\"type\":0,\"input\":[{\"name\":\"temperature\",\"tag\":\"\",\"datatype\":1,\"minValue\":-10.8,\"maxValue\":30.8,\"defValue\":15}]},{\"name\":\"count_function\",\"alias\":\"count_alias\",\"type\":0,\"input\":[{\"name\":\"count\",\"tag\":\"\",\"datatype\":0,\"minValue\":0,\"maxValue\":1000,\"defValue\":8}]},{\"name\":\"switch_fuction\",\"alias\":\"switch_alias\",\"type\":0,\"input\":[{\"name\":\"switch1\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":\"display_function\",\"alias\":\"display_alias\",\"type\":0,\"input\":[{\"name\":\"display\",\"tag\":\"\",\"datatype\":3,\"defValue\":\"\",\"maxLength\":256}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('bYg9yXrRWta8mOrF', 'WIayux0QDCOgijBZ', 'qsB8CxpdxE4dsEPd', '4', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('d1oZIlC1BFBNFH90', 'E3AppulYVL4dN8ag', '23coLfQZWYuwX5N2', 'f5fff40f8a124506', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('DwSiNKlC28NFi6KM', '5NCD3CjIW3EAFXSk', '123ewe', '7d50de4a9d40ce9c', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('eXofYee5X93P8Pjr', 'NonmqHckHiOKl0nV', 'A6OHWqbwEWSLpnBe', 'scuJBe0nfaR554JU', '{\"id\":\"scuJBe0nfaR554JU\",\"dynlib_path\":\"\\/lib\\/1490340958_camera.so\",\"index\":0,\"type\":4,\"functions\":[{\"name\":\"camera_open\",\"alias\":\"LedDisplay\",\"type\":1,\"input\":[{\"property\":\"display\"}]}],\"properties\":[{\"display\":\"\\u663e\\u793a\\u5185\\u5bb9\",\"name\":\"display\",\"tag\":\"\",\"datatype\":3,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('EyYXL6eVazpBt28p', 'or0xC9CCN17sPlwq', 'vDVarEoaTGOxiKwd', '4f7d7c08df742fc5', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('FsWPQZ9piGK6PyE2', '19xBN61iNp84sVGy', 'qbIBxuNrCJs8xCMe', 'a1efb0a6c27b4e30', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('g8XPad9Kg0APeeXO', 'DVU3BYLUGJlqBexl', '1jhdRphPu7GjkRS8', 'Togu8BPT9Cqp9OeH', '{\"id\":\"Togu8BPT9Cqp9OeH\",\"dynlib_path\":\"\",\"index\":0,\"type\":1,\"properties\":[{\"display\":\"\",\"name\":\"test\",\"tag\":\"\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('hQKPBMRJLYpa7poP', '2', 'c9md7iNNlNZwic8n', '7d50de4a9d40ce9c', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('HuoZiQgfQ7qZpaq1', '56m5B2ANoJBiA92G', 'GlVHembLHuzyixx7', 'eedc9d6267325e79', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('hymnXaXNE36S7LUm', 'erds00fN8VRn5aKy', 'PZufQtLKCdlHJnko', 'a735bf3cbfa6e321', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('IbQKjOkROYa8FCMJ', 'oO8sFLJCet4EFAbZ', 'V2jAyrfqUG6MNELI', 'kOU4IIbWmvhlfRmA', '{\"id\":\"kOU4IIbWmvhlfRmA\",\"dynlib_path\":\"\\/lib\\/1492079292_34.so\",\"index\":0,\"type\":1,\"interval\":120,\"functions\":[{\"name\":\"kll\",\"alias\":\"jjk\",\"type\":0,\"input\":[{\"property\":\"jl\"}]}],\"properties\":[{\"display\":\"jj\",\"name\":\"jl\",\"tag\":\"\",\"datatype\":0,\"minValue\":1,\"maxValue\":20,\"defValue\":5}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('iM3EgLjD1t8M48cP', 'pQMTuT6RfxzFu5Ub', 'yHgM3cV46G41WIxR', '3d88c63bc4d3c358', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('ivDJApsVfHXbh28p', 'HTE4Jf1NCjZs706M', 'LZMQrUwkAUQCh0XH', 'e82e52ea157f2fd0', '{\"id\":\"e82e52ea157f2fd0\",\"dynlib_path\":\"\\/lib\\/1486457492_libzlapcomm.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"Ledswitch\",\"alias\":\"ledOnOff\",\"type\":1,\"input\":[{\"name\":\"switch\",\"tag\":\"a0\",\"datatype\":0,\"minValue\":0,\"maxValue\":2,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('J9bSMBrGjHtP9L5N', 'erds00fN8VRn5aKy', 'DkqLu4nQ8ReT0gJl', 'a735bf3cbfa6e321', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('Jd3UPMDChwJ19OdS', 'm7F1nsf8xMb1dYKI', 'uAKUit0dtxZfx0px', '7d50de4a9d40ce9c', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('jE8ZQR3hLCtfa5up', 'fkRaDorilqnfVHRw', 'yHgM3cV46G41WIxR', '3d88c63bc4d3c358', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('JkZDTs6ZZVF151zP', 'b9ylMNfxbjFHRP3X', 'kj1isUhsDbcKq8lj', '61fab8e179566d03', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('JLb6r275OynVJQ5w', 'jmFss92dQalO5Ynb', 'DkqLu4nQ8ReT0gJl', 'a735bf3cbfa6e321', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('KwEJ18t833G7ogBK', 'Wf59lcJMjyFE50YY', 'PI9M6EZyJtzzitkH', 'd2c9d2294c58cdf3', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('m6myUdeKsAgLxSnM', 'NonmqHckHiOKl0nV', 'LZMQrUwkAUQCh0XH', 'owvSTnSegyuof64d', '{\"id\":\"owvSTnSegyuof64d\",\"dynlib_path\":\"\\/lib\\/1490340686_iot_dyn.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_switch\",\"alias\":\"LedOnOff\",\"type\":1,\"input\":[{\"property\":\"Switch\"}]}],\"properties\":[{\"display\":\"\\u5f00\\u5173\",\"name\":\"Switch\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('M8KCBQGhryZXPJVj', 'jt3vI8XiUHuYXhNW', 'leKvUQyRjqTodR32', 'a55e7593ff91dbaa', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('m9ZTKP8K3vfmFhnJ', 'HTE4Jf1NCjZs706M', 'A6OHWqbwEWSLpnBe', '453de3e0d549196f', '{\"id\":\"453de3e0d549196f\",\"dynlib_path\":\"\\/lib\\/1486461339_libzl_share_api.so\",\"index\":0,\"type\":4,\"functions\":[{\"name\":\"LedSwitch\",\"alias\":\"ledOnOff\",\"type\":0,\"input\":[{\"name\":\"switch\",\"tag\":\"a0\",\"datatype\":0,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":\"allcontrol\",\"alias\":\"ledAllControl\",\"type\":1,\"input\":[{\"name\":\"controlvalue\",\"tag\":\"\",\"datatype\":0,\"minValue\":1,\"maxValue\":5,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('MCCuuSuUgDObG72i', '5rXj9hjKoj3AbcY7', 'vkhlxcWpDwIW1otj', '3fbd83b9dfbb25d2', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('MOZws9i3rr5xuS9n', '5rXj9hjKoj3AbcY7', 'ShydNiUzaHASLrIX', '275fb2e4c2906ee2', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('n3v4SY7a1f48E40u', 'exxQlPzFgPOLiImE', '4Fm6ivkSRiWioSQz', 'Uke4DqW0WkLcKhkV', '{\"id\":\"Uke4DqW0WkLcKhkV\",\"dynlib_path\":\"\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"ot\",\"alias\":\"ot\",\"type\":1,\"input\":[{\"name\":\"ott\",\"tag\":\"\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('O4L1kB8GrtBntdNY', 'UlIzUNL1Bcm8nX2H', 'TXTBs5dQp2GXYkqI', '8e3299e193d3a422', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('o7VOPbV2fWiTGjzK', 'DqTeFbjVVl8m7P7X', 'V2jAyrfqUG6MNELI', 'j9nWt3aDC0CvSPJQ', '{\"id\":\"j9nWt3aDC0CvSPJQ\",\"dynlib_path\":\"\",\"index\":0,\"type\":1}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('PdkI35Y0IMOOl6b3', 'fkRaDorilqnfVHRw', 'hG1nQNclrR3iRApw', '3d88c63bc4d3c358', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('PMlSGxdfuY1DDUcv', 't8sSzTsOJYvWSfvT', 'AFDw2mCtLV8xllJe', '453de3e0d549196f', '{\"id\":\"453de3e0d549196f\",\"dynlib_path\":\"\\/lib\\/1486461339_libzl_share_api.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"LedSwitch\",\"alias\":\"ledOnOff\",\"type\":0,\"input\":[{\"name\":\"switch\",\"tag\":\"a0\",\"datatype\":0,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('Ppf78Ev9hQnBGzh1', '76P3JUwb1ylJbF1e', 'A6OHWqbwEWSLpnBe', 'vBQBscOe4zrkVN8f', '{\"id\":\"vBQBscOe4zrkVN8f\",\"dynlib_path\":\"\\/lib\\/1487055596_camera.so\",\"index\":0,\"type\":4,\"functions\":[{\"name\":\"camera_init\",\"alias\":\"Init\",\"type\":0,\"input\":[{\"name\":\"path\",\"tag\":\"\",\"datatype\":3,\"defValue\":\"path\",\"maxLength\":256}]},{\"name\":\"camera_open\",\"alias\":\"OpenCamera\",\"type\":1,\"input\":[{\"name\":\"photo\",\"tag\":\"\",\"datatype\":3,\"defValue\":\"test\",\"maxLength\":256}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('pUs8vAewevAmqyiu', 'SNI9wF6cmpcZne0g', 'IWJ0GibKT6r8CInI', '', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('rQgNVDZFFC6sbuCk', '8doAUre14CNhASL7', '7bKqKTFL8sDjagng', '9ee7b2d8791e07b7', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('s4E1ekreA6TYkqJJ', 'DVU3BYLUGJlqBexl', '9sXKOqqa8KhSJss3', 'Togu8BPT9Cqp9OeH', '{\"id\":\"Togu8BPT9Cqp9OeH\",\"dynlib_path\":\"\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"test_int3\",\"alias\":\"test_int2\",\"type\":1,\"input\":[{\"property\":\"int\"}]},{\"name\":\"test_double3\",\"alias\":\"test_double2\",\"type\":1,\"input\":[{\"property\":\"double\"}]},{\"name\":\"test_bool3\",\"alias\":\"test_bool2\",\"type\":1,\"input\":[{\"property\":\"bool\"}]},{\"name\":\"test_string3\",\"alias\":\"test_string2\",\"type\":1,\"input\":[{\"property\":\"string\"}]}],\"properties\":[{\"display\":\"\",\"name\":\"test\",\"tag\":\"\",\"datatype\":0,\"minValue\":0,\"maxValue\":0,\"defValue\":0},{\"display\":\"\",\"name\":\"int\",\"tag\":\"\",\"datatype\":0,\"minValue\":1,\"maxValue\":100,\"defValue\":50},{\"display\":\"\",\"name\":\"double\",\"tag\":\"\",\"datatype\":1,\"minValue\":0,\"maxValue\":40,\"defValue\":20},{\"display\":\"\",\"name\":\"bool\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1},{\"display\":\"\",\"name\":\"string\",\"tag\":\"\",\"datatype\":3,\"minValue\":0,\"maxValue\":0,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('S5YaV74xPMxYBiTy', 'xZKjTQyUjcGCXNGR', 'tFYHRpIuchhzJolu', '8e3299e193d3a422', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('SL8NyIejJMjAUHnk', '0woIM5rzh3g64xL8', '8iLauncoPDigT0u9', '2efde7b788e41bf6', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('t10B6Tg5q4Uv82ii', 'JttNJt5Bo8szjpN7', 'stnvR7CHAsal8llI', '3s1xRCzUyTojT4zL', '{\"id\":\"3s1xRCzUyTojT4zL\",\"dynlib_path\":\"\",\"index\":0,\"type\":0}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('taTHPScv05QyKfwR', 'JfycKXDT9S7UoIo7', 'hG1nQNclrR3iRApw', '1bd2b4a9ec7af769', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('tJU3rEdgnHhYjGvF', '5rXj9hjKoj3AbcY7', 'bv09DALYw3OHtgaQ', '13', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('TwRlNgV8xm30qtWb', '56m5B2ANoJBiA92G', 'leKvUQyRjqTodR32', 'c1251e45606c068b', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('UcvtB1iCv4LGz4lW', 'WIayux0QDCOgijBZ', 'FOx5RMTsNyUnlwQf', '7', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('uf4UbV4cpyxwZ6We', '3AGb0vqJB43UH09Z', 'creh4VdzLGkREutL', 'a55e7593ff91dbaa', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('UiecAmBxhZEaWkPy', '6OWrQByfNne0o5vi', '23coLfQZWYuwX5N2', 'Kwq1sFlaTABtpn6n', '{\"id\":\"Kwq1sFlaTABtpn6n\",\"dynlib_path\":\"\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_init\",\"alias\":\"InitLed\",\"type\":0,\"input\":[{\"name\":\"status\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]},{\"name\":\"led_switch\",\"alias\":\"LedOnOff\",\"type\":1,\"input\":[{\"name\":\"switch\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('UNNli9BOyi2UK4Cd', 'BRlhqQ8VRWIbtqjZ', 'TeYn2WORZLH4C4ej', '87f75321ad57c262', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('UoITVTjgbDBOEYye', 'DqTeFbjVVl8m7P7X', '4Fm6ivkSRiWioSQz', 'qxBmW9UiVfbtPq33', '{\"id\":\"qxBmW9UiVfbtPq33\",\"dynlib_path\":\"\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"temperature_func_name\",\"alias\":\"temperature_func_alias\",\"type\":0,\"input\":[{\"property\":\"temperature\"}]}],\"properties\":[{\"display\":\"\\u6e29\\u5ea6\\u4f20\\u611f\\u5668\",\"name\":\"temperature\",\"tag\":\"\",\"datatype\":1,\"minValue\":0,\"maxValue\":100,\"defValue\":25}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('UqGuJOumxKrDIVOa', 'vbOynIYlsdKndPQP', 'bByiNoL5xSxXb5qN', '5f2fed0e099dcf1d', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('VSxNrfhj7Ng25QQx', '5rXj9hjKoj3AbcY7', 'MdjBlUvHeB8RviDG', '4', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('WcMbtbC5u9UuLGjo', '19xBN61iNp84sVGy', '0zNopY7BrGXB3MOt', '4', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('wQHE0nC3b6zHkVzB', '1irZ3e0HqE5cRLbA', 'jXoVEcOuZHuhd4QA', '123123', '{\"id\":\"123123\",\"dynlib_path\":\"\\/lib\\/1484882806_11.so\",\"index\":0,\"type\":0,\"interval\":0,\"functions\":[{\"name\":\"f3\",\"alias\":\"f3\",\"type\":2,\"input\":[{\"name\":\"e1\",\"tag\":\"e1\",\"datatype\":0,\"minValue\":1,\"maxValue\":5,\"defValue\":4},{\"name\":\"e\",\"tag\":\"e\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1}]},{\"name\":\"func\",\"alias\":\"fun\",\"type\":0,\"input\":[{\"name\":\"f\",\"tag\":\"f\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":5}]},{\"name\":\"f2\",\"alias\":\"f2\",\"type\":0,\"output\":[{\"name\":\"h\",\"tag\":\"h\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":1}],\"input\":[{\"name\":\"fg\",\"tag\":\"g\",\"datatype\":1,\"minValue\":5,\"maxValue\":10.6,\"defValue\":7.5},{\"name\":\"fw\",\"tag\":\"f\",\"datatype\":0,\"minValue\":1,\"maxValue\":10,\"defValue\":8}]}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('xWIQRYkRmBJ3pvNe', 'D34hCl7AM9t8vMhK', 'A6OHWqbwEWSLpnBe', 'Kwq1sFlaTABtpn6n', '{\"id\":\"Kwq1sFlaTABtpn6n\",\"dynlib_path\":\"\\/lib\\/1487055866_Led.so\",\"index\":0,\"type\":4,\"functions\":[{\"name\":\"led_switch\",\"alias\":\"LedOnOff\",\"type\":1,\"input\":[{\"property\":\"Switch\"}]}],\"properties\":[{\"display\":\"\\u5f00\\u5173\",\"name\":\"Switch\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('Y981cZC74xTRYg1P', 'datkDCqbvFvlm0WK', 'LZMQrUwkAUQCh0XH', 'owvSTnSegyuof64d', '{\"id\":\"owvSTnSegyuof64d\",\"dynlib_path\":\"\\/lib\\/1490340686_iot_dyn.so\",\"index\":0,\"type\":0,\"functions\":[{\"name\":\"led_switch\",\"alias\":\"LedOnOff\",\"type\":1,\"input\":[{\"property\":\"Switch\"}]}],\"properties\":[{\"display\":\"\\u5f00\\u5173\",\"name\":\"Switch\",\"tag\":\"\",\"datatype\":2,\"minValue\":0,\"maxValue\":1,\"defValue\":0}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('YCyOd8oQwOUiNP19', 'exxQlPzFgPOLiImE', 'V2jAyrfqUG6MNELI', 'Uke4DqW0WkLcKhkV', '{\"id\":\"Uke4DqW0WkLcKhkV\",\"dynlib_path\":\"\",\"index\":0,\"type\":1,\"functions\":[{\"name\":\"ff\",\"alias\":\"ff\",\"type\":0,\"input\":[{\"property\":\"dp\"}]}],\"properties\":[{\"display\":\"\",\"name\":\"gg\",\"tag\":\"\",\"datatype\":\"1\",\"minValue\":6,\"maxValue\":7,\"defValue\":8},{\"display\":\"\",\"name\":\"dp\",\"tag\":\"\",\"datatype\":\"1\",\"minValue\":34,\"maxValue\":45,\"defValue\":67},{\"display\":\"\",\"name\":\"a1\",\"tag\":\"\",\"datatype\":\"0\",\"minValue\":1,\"maxValue\":20,\"defValue\":10},{\"display\":\"\",\"name\":\"JJ\",\"tag\":\"\",\"datatype\":\"0\",\"minValue\":1,\"maxValue\":4,\"defValue\":2}]}');
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('YjO1gQ4XGTxWtoa5', 'QS75PxHfkKVOtKIz', 'FWj362GjqC1Z0EWK', '2b62a6ac47b782ee', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('z5RM6I0XGYWxcvAV', 'jmFss92dQalO5Ynb', 'PZufQtLKCdlHJnko', 'a735bf3cbfa6e321', null);
INSERT INTO `tbl_iot_product_thing_relation` VALUES ('zpbEY9X7xO7nsQQU', 'or0xC9CCN17sPlwq', 'eUI0821fJkzSWkvF', '4f7d7c08df742fc5', null);

-- ----------------------------
-- Table structure for `tbl_iot_property_data`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_property_data`;
CREATE TABLE `tbl_iot_property_data` (
  `id` varchar(16) NOT NULL COMMENT '数据点索引',
  `product_id` varchar(16) NOT NULL COMMENT '产品ID',
  `name` varchar(16) DEFAULT NULL COMMENT '数据点名称',
  `tag` varchar(2) DEFAULT NULL COMMENT '数据点TAG值',
  `type` tinyint(1) DEFAULT NULL COMMENT '数据点类型\n默认为int类型。取值范围：[0：int，1：double，2：bool，3：string]',
  `min_value` varchar(11) DEFAULT NULL COMMENT '数据点最小值',
  `max_value` varchar(11) DEFAULT NULL COMMENT '最大值',
  `max_length` int(11) DEFAULT '0',
  `def_value` varchar(256) NOT NULL COMMENT '默认值',
  `mode` tinyint(1) DEFAULT NULL COMMENT '读写方式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `alias` varchar(64) DEFAULT NULL COMMENT '冗余字段',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_iot_property_data_tbl_iot_thing_property1_idx` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_property_data
-- ----------------------------
INSERT INTO `tbl_iot_property_data` VALUES ('13d1cbac0b27dd08', 'j3FHsGF3eF2HfsgY', 'colourStrValue', null, '3', '', '', '64', '123', '1', '2017-04-19 13:46:45', '2017-04-19 13:48:35', 'LED颜色值', 'colourSet');
INSERT INTO `tbl_iot_property_data` VALUES ('1802e649a13d1a21', 'Kwq1sFlaTABtpn6n', 'Switch', null, '2', '0', '1', '0', '0', '1', '2017-03-23 15:23:18', '2017-03-23 15:30:00', '开关', 'LedOnOff');
INSERT INTO `tbl_iot_property_data` VALUES ('197fd382e2b0cb64', 'BM1lhkq8AyZhPHME', 'double', null, '1', '0', '100.00', '0', '90.00', '1', '2017-03-20 14:28:37', null, 'double', null);
INSERT INTO `tbl_iot_property_data` VALUES ('25a9e94ce310a0ae', 'xRq8tmygs4pyHeH4', 'smartscale_switc', null, '0', '0', '4', '0', '1', '1', '2017-03-08 15:04:27', '2017-03-08 15:06:54', '扫描枪', 'smartscale_ctrl_func');
INSERT INTO `tbl_iot_property_data` VALUES ('459c4b8ac8ce85e0', 'BM1lhkq8AyZhPHME', '34', null, '0', '1', '9', '0', '3', '1', '2017-03-14 14:22:24', '2017-03-14 16:47:00', '34', 'gw');
INSERT INTO `tbl_iot_property_data` VALUES ('50af7bf180d48871', 'BM1lhkq8AyZhPHME', '123tthyh', null, '0', '1', '3', '0', '2', '1', '2017-03-22 11:15:10', null, '4545', null);
INSERT INTO `tbl_iot_property_data` VALUES ('5f851d1de9fc5738', 'Togu8BPT9Cqp9OeH', 'ddd', null, '2', '0', '1', '0', '0', '0', '2017-05-23 11:21:52', null, 'ddd', null);
INSERT INTO `tbl_iot_property_data` VALUES ('6d4084eaadfdbd88', 'owvSTnSegyuof64d', 'Switch', null, '2', '0', '1', '0', '0', '1', '2017-03-24 15:34:25', '2017-03-24 15:34:54', '开关', 'LedOnOff');
INSERT INTO `tbl_iot_property_data` VALUES ('6f9ce57dfd10fef3', 'BM1lhkq8AyZhPHME', 'jl', null, '3', '', '', '50', '10', '1', '2017-03-14 17:33:36', null, 'jk', null);
INSERT INTO `tbl_iot_property_data` VALUES ('71ed9e48d0624b00', 'Togu8BPT9Cqp9OeH', 'ccc', null, '1', '-991.0', '100000.0', '0', '50.0', '0', '2017-05-23 11:21:35', null, 'ccc', null);
INSERT INTO `tbl_iot_property_data` VALUES ('733428c083515b82', 'I9JP2CoTtLMHpc3a', '45', null, '0', '1', '4', '0', '4', '1', '2017-03-16 15:19:56', '2017-03-21 14:25:05', '4', 'jk');
INSERT INTO `tbl_iot_property_data` VALUES ('87b7a8f37dd62630', 'BM1lhkq8AyZhPHME', 'uiio', null, '1', '10000.256', '10000000000', '0', '10000000000', '1', '2017-03-22 11:15:41', null, '5', null);
INSERT INTO `tbl_iot_property_data` VALUES ('9131', 'kaM2vY1fxNoRUxIJ', 'temperature', null, '1', '-88.88', '99.99', '0', '', '1', '2017-03-06 15:34:50', '2017-03-06 15:35:12', '温度', 'temperature_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('9132', 'kaM2vY1fxNoRUxIJ', 'count1', null, '0', '-100', '10000', '0', '88', '1', '2017-03-06 15:39:07', '2017-03-06 15:41:10', '计数', 'count_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('9133', 'kaM2vY1fxNoRUxIJ', 'switch1', null, '2', '0', '1', '0', '0', '1', '2017-03-06 15:39:41', '2017-03-06 15:41:40', '开关', 'switch_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('9134', 'kaM2vY1fxNoRUxIJ', 'screen', null, '3', '', '', '16', 'hello world', '1', '2017-03-06 15:40:48', '2017-03-06 15:42:04', '屏幕显示', 'screen_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('9135', 'Togu8BPT9Cqp9OeH', 'aaa', null, '0', '-1000', '1000', '0', '9', '1', '2017-03-06 15:51:20', '2017-03-06 16:59:51', 'aaa', 'test');
INSERT INTO `tbl_iot_property_data` VALUES ('9137', 'kaM2vY1fxNoRUxIJ', 'switch2', null, '2', '0', '1', '0', '1', '1', '2017-03-07 11:01:34', '2017-03-07 11:02:39', '开关2', 'switch2_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('9138', 'kaM2vY1fxNoRUxIJ', 'screen2', null, '3', '', '', '32', '', '1', '2017-03-07 11:10:57', '2017-03-07 11:11:28', '屏幕2', 'screen2_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('9139', '3s1xRCzUyTojT4zL', 'switch1', null, '2', '0', '1', '0', '', '1', '2017-03-07 14:03:28', '2017-03-07 14:04:33', '开关', 'switch1_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('9140', 'qxBmW9UiVfbtPq33', 'temperature', null, '1', '0', '100', '0', '25', '1', '2017-03-07 14:09:08', '2017-03-07 14:10:01', '温度传感器', 'temperature_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('a32a471eedaf10a0', 'xRq8tmygs4pyHeH4', 'bluetooth_ctrl', null, '2', '0', '1', '0', '1', '1', '2017-03-08 15:05:24', '2017-03-08 15:07:19', '蓝牙', 'bluetooth_ctrl_func');
INSERT INTO `tbl_iot_property_data` VALUES ('a3c1599c4026eb67', 'BM1lhkq8AyZhPHME', 'tyy', null, '0', '2', '4', '0', '', '1', '2017-03-18 11:35:13', null, 'yty', null);
INSERT INTO `tbl_iot_property_data` VALUES ('a4861929feb12acb', 'j3FHsGF3eF2HfsgY', 'LedSwitchValue', null, '0', '0', '6', '0', '0', '1', '2017-04-19 13:46:11', '2017-04-19 13:48:07', 'LED开关值', 'ledOnOff');
INSERT INTO `tbl_iot_property_data` VALUES ('af932383ba5b0ed8', 'kOU4IIbWmvhlfRmA', 'jl', null, '0', '1', '20', '0', '5', '2', '2017-04-13 18:28:37', '2017-04-13 18:28:59', 'jj', 'jjk');
INSERT INTO `tbl_iot_property_data` VALUES ('c0f33a0d1bd58d62', 'wnWYbj38VZPyvmZW', '111', null, '0', '11', '', '0', '11', '1', '2017-03-13 16:06:46', null, '111', null);
INSERT INTO `tbl_iot_property_data` VALUES ('cd54b7a3a858b3ee', 'vBQBscOe4zrkVN8f', 'display', null, '3', '', '', '20', 'welcome', '0', '2017-03-23 15:31:58', '2017-03-24 10:30:48', '显示名称', 'camera_open');
INSERT INTO `tbl_iot_property_data` VALUES ('ceeae333213ea2e3', 'scuJBe0nfaR554JU', 'display', null, '3', '', '', '16', 'welcome', '1', '2017-03-24 15:36:33', '2017-03-24 15:37:24', '显示内容', 'LedDisplay');
INSERT INTO `tbl_iot_property_data` VALUES ('d58c956423f746d0', 'BM1lhkq8AyZhPHME', 'hj', null, '0', '', '', '0', '', '1', '2017-03-20 16:55:43', null, 'hj', null);
INSERT INTO `tbl_iot_property_data` VALUES ('d5f43b5968ba0d4c', 'j3FHsGF3eF2HfsgY', 'count1', null, '0', '0', '5', '0', '0', '1', '2017-04-19 13:47:33', '2017-04-19 13:49:10', 'count_num', 'count_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('da04286f9c517a7e', 'BM1lhkq8AyZhPHME', 'tytry', null, '1', '-10000', '100000', '0', '452', '1', '2017-04-21 11:28:58', null, 'ty', null);
INSERT INTO `tbl_iot_property_data` VALUES ('ed5e5149c72d4e1d', 'j3FHsGF3eF2HfsgY', 'screen', null, '3', '', '', '64', '123', '1', '2017-04-19 13:47:13', '2017-04-19 13:48:54', 'screen_data', 'screen_func_alias');
INSERT INTO `tbl_iot_property_data` VALUES ('ed8cefbcc69dd6d7', 'BM1lhkq8AyZhPHME', 'dsj', null, '0', '2', '8', '0', '5', '1', '2017-03-08 18:12:53', null, '电视机', null);
INSERT INTO `tbl_iot_property_data` VALUES ('ef49917bafbed183', 'Togu8BPT9Cqp9OeH', 'bbb', null, '3', '', '', '10', 'test', '0', '2017-05-23 11:20:46', null, 'bbb', null);

-- ----------------------------
-- Table structure for `tbl_iot_redis`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_redis`;
CREATE TABLE `tbl_iot_redis` (
  `redis_ipaddr` varchar(128) DEFAULT NULL COMMENT 'IP地址',
  `redis_port` int(11) DEFAULT NULL COMMENT '端口'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_redis
-- ----------------------------
INSERT INTO `tbl_iot_redis` VALUES ('192.168.10.9', '6379');

-- ----------------------------
-- Table structure for `tbl_iot_scene`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_scene`;
CREATE TABLE `tbl_iot_scene` (
  `id` varchar(16) NOT NULL,
  `pid` varchar(16) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '场景名称',
  `scenepath` varchar(128) NOT NULL COMMENT '场景路径',
  `description` varchar(256) NOT NULL COMMENT '场景描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` tinyint(5) DEFAULT '0' COMMENT '场景类型：0：家庭，1：智慧城市，2：智能交通，3：智慧工业',
  `user_id` varchar(64) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '场景所处的层级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_scene
-- ----------------------------
INSERT INTO `tbl_iot_scene` VALUES ('', '3', 'ss', 'ss', '', '2016-12-21 15:48:47', '0', null, '1');
INSERT INTO `tbl_iot_scene` VALUES ('0e9cc6895ecb4768', '', '高新', '高新', '', '2016-12-26 09:53:15', '0', null, '1');
INSERT INTO `tbl_iot_scene` VALUES ('1', '', '场景1', '场景1', '', '2016-12-26 09:53:16', '0', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('1da49d477ed37013', '', '场景2', '场景1/场景2/场景3', '', '2016-12-27 10:02:45', '1', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('2', '1', '场景2', '', '', '2016-12-02 13:52:21', '0', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('2342354566', '1da49d477ed37013', '场景4-2', '场景4-2', '', '2016-12-16 17:02:10', '0', null, '1');
INSERT INTO `tbl_iot_scene` VALUES ('2WP2ZSh0', '', '12313', '', 'sdaf', '2017-04-07 16:33:04', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('3', '', '场景3', '场景1/场景2', '', '2016-12-27 17:35:10', '0', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('4', '', 'test', '场景1', '', '2016-12-27 17:35:52', '0', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('4a699d022af8e087', '', '1226', '1226', '', '2016-12-27 18:56:22', '1', '23301403-8d90-4d9e-a35e-20b7d45b9116', '1');
INSERT INTO `tbl_iot_scene` VALUES ('4d36c4a5889a8117', 'ec24d3fea378c674', '324', '324', '', '2016-12-27 18:01:28', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '3');
INSERT INTO `tbl_iot_scene` VALUES ('526b66e61049b512', '', '场景3', '场景1/场景2/场景3', '', '2016-12-27 17:34:43', '2', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('53c1e449a767f63f', '', '子场景', '场景1/场景2/场景3', '', '2016-12-28 10:01:09', '1', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('5XcmdRb3', 'OWymL3gc', 'qwe', '场景w/场景w_2/324/level', '', '2017-04-12 18:23:24', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '5');
INSERT INTO `tbl_iot_scene` VALUES ('6571ac5ba0f02ad6', '', '109', '109', '', '2017-01-10 15:43:30', '1', null, '1');
INSERT INTO `tbl_iot_scene` VALUES ('69051b0522a7b6e2', '', 'wuge', 'wuge', '', '2016-12-27 20:44:56', '1', '23301403-8d90-4d9e-a35e-20b7d45b9116', '1');
INSERT INTO `tbl_iot_scene` VALUES ('6c718ec531a0f1ce', '', '4324324', '4324324', '', '2016-12-26 09:53:21', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('6SeZzw94', 'cc5d70a899886ae1', 'wuge_3', '场景w', '', '2017-01-10 17:44:46', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '2');
INSERT INTO `tbl_iot_scene` VALUES ('7d074cd5573f8c09', '', '场景1', '场景1/场景2', '', '2016-12-29 11:12:41', '1', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('7rZVhzj2', '', '111', '', '', '2017-03-13 16:10:48', '0', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', '1');
INSERT INTO `tbl_iot_scene` VALUES ('8f984df0bd58d3a3', '3', '109', '109', '', '2016-12-19 16:30:05', '1', null, '1');
INSERT INTO `tbl_iot_scene` VALUES ('91c8d34782d1477a', 'fce2f3b91e0b8371', '科技园', '', '', '2016-12-22 17:57:07', '3', '540ee87a-ac89-4eee-8246-562a627c7e1b', '1');
INSERT INTO `tbl_iot_scene` VALUES ('9472a99064f22d77', '69051b0522a7b6e2', 'wuge_1', 'wuge_1', '', '2017-01-11 16:18:25', '0', '23301403-8d90-4d9e-a35e-20b7d45b9116', '2');
INSERT INTO `tbl_iot_scene` VALUES ('94b3cfe37944ee42', '', 'bbbbbbbb', 'bbbbbbbb', '', '2016-12-26 09:53:24', '1', '23301403-8d90-4d9e-a35e-20b7d45b9116', '1');
INSERT INTO `tbl_iot_scene` VALUES ('9bfbda1daccb4b7c', '', '场景9', '场景1/场景2/场景3', '', '2016-12-27 17:12:31', '0', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('b19db2731e25e49d', '', '深圳', '深圳', '', '2016-12-26 09:35:02', '0', '540ee87a-ac89-4eee-8246-562a627c7e1b', '1');
INSERT INTO `tbl_iot_scene` VALUES ('b807498ba7b0a93e', '', 'test', '', '', '2016-12-27 20:45:45', '3', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('bdKRR2Qs', 'YZkHbmvV', 'wuge_4', 'wuge/wuge_1/wuge_1_1/wuge_3', '', '2017-01-05 18:56:34', '0', '23301403-8d90-4d9e-a35e-20b7d45b9116', '5');
INSERT INTO `tbl_iot_scene` VALUES ('BKRnS1aD', '69051b0522a7b6e2', 'wuge2', 'wuge', '', '2017-01-05 11:40:07', '0', '23301403-8d90-4d9e-a35e-20b7d45b9116', '2');
INSERT INTO `tbl_iot_scene` VALUES ('c81ad4c2d379dad6', '', '场景2', '场景1/场景2/场景3', '', '2016-12-27 17:12:19', '1', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('cc3b1e9b40f4dd8f', 'ec24d3fea378c674', 'cj3', 'cj3', '', '2016-12-27 18:01:41', '1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '3');
INSERT INTO `tbl_iot_scene` VALUES ('cc5d70a899886ae1', '', '场景w', '场景w', '', '2016-12-26 09:53:26', '1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('cc67d61c1229d1f9', '', 'GPIO_C', 'GPIO_C', '', '2016-12-27 17:35:20', '1', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('ce0c1551616cd6ec', '1da49d477ed37013', '场景5', '场景5', '123', '2016-12-20 17:36:15', '1', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('cE32GBJi', '', 'fg', '', '', '2017-02-13 18:17:12', '0', 'dedde00a-f165-47f4-95b8-97e0f8d893cf', '1');
INSERT INTO `tbl_iot_scene` VALUES ('CrMPr1Tj', '', 'Riva2', '', '', '2017-03-24 10:37:04', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('ec24d3fea378c674', 'cc5d70a899886ae1', '场景w_2', '场景w_2', '', '2016-12-27 18:01:11', '1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '2');
INSERT INTO `tbl_iot_scene` VALUES ('ecad49facd77d30c', '9472a99064f22d77', 'wuge_1_1', '', '', '2016-12-26 10:11:10', '0', '23301403-8d90-4d9e-a35e-20b7d45b9116', '1');
INSERT INTO `tbl_iot_scene` VALUES ('ERbZe2j3', 'OWymL3gc', 'ceshi_dev', '场景w/场景w_2/324/level', '', '2017-03-24 10:23:53', '2', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '5');
INSERT INTO `tbl_iot_scene` VALUES ('f1697d996e63cc3d', '', '11212', '11212', '', '2017-01-09 14:52:38', '0', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('f6174b9fee559f7d', '1da49d477ed37013', 'city', '', '', '2016-12-21 10:56:00', '1', '', '1');
INSERT INTO `tbl_iot_scene` VALUES ('fce2f3b91e0b8371', 'b19db2731e25e49d', '南山', '南山', '', '2016-12-22 15:05:58', '1', '540ee87a-ac89-4eee-8246-562a627c7e1b', '1');
INSERT INTO `tbl_iot_scene` VALUES ('hYMSWRxZ', '', 'ds', '', '', '2017-06-21 17:20:41', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('IIhOIaRQ', '', '上海', '', '', '2017-05-09 11:04:44', '1', '540ee87a-ac89-4eee-8246-562a627c7e1b', '1');
INSERT INTO `tbl_iot_scene` VALUES ('lb58sEq6', '', '2017test', '', '', '2017-01-03 10:43:29', '0', '23301403-8d90-4d9e-a35e-20b7d45b9116', '1');
INSERT INTO `tbl_iot_scene` VALUES ('lim1zqup', '', 'sd', '', '', '2017-06-21 16:11:41', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('nmHfEPKS', 'OWymL3gc', 'qqqqwewewe', '场景w/场景w_2/324/level', '', '2016-12-30 10:18:20', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '5');
INSERT INTO `tbl_iot_scene` VALUES ('OWymL3gc', '4d36c4a5889a8117', 'level', '', '', '2017-01-09 18:52:17', '2', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '3');
INSERT INTO `tbl_iot_scene` VALUES ('qWftitxe', '', 'cj', '', '', '2017-06-21 15:28:37', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('R8iZx4q7', 'OWymL3gc', 'www', '场景w/场景w_2/324/level/www', '', '2017-01-12 11:47:02', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '5');
INSERT INTO `tbl_iot_scene` VALUES ('R9KQHd7b', '', '33333', '', '', '2017-01-21 10:27:09', '0', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', '1');
INSERT INTO `tbl_iot_scene` VALUES ('rowNALRW', '4a699d022af8e087', '127', '127', '', '2016-12-27 19:07:23', '0', '23301403-8d90-4d9e-a35e-20b7d45b9116', '2');
INSERT INTO `tbl_iot_scene` VALUES ('u0pa7ed2', '', 'te', '', '', '2017-04-07 11:29:05', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('wnL9V56z', '', '456566', '', '', '2017-04-19 17:15:28', '0', 'dedde00a-f165-47f4-95b8-97e0f8d893cf', '1');
INSERT INTO `tbl_iot_scene` VALUES ('xQigf7jI', '', 'test', '', '', '2017-02-13 16:30:26', '3', 'dedde00a-f165-47f4-95b8-97e0f8d893cf', '1');
INSERT INTO `tbl_iot_scene` VALUES ('Xyn7Ecsh', 'ec24d3fea378c674', 'wer', '', '', '2017-01-10 09:48:15', '0', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '3');
INSERT INTO `tbl_iot_scene` VALUES ('YjjzZChL', '', 'Riva', '', '', '2017-03-24 10:31:37', '1', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', '1');
INSERT INTO `tbl_iot_scene` VALUES ('YZkHbmvV', 'ecad49facd77d30c', 'wuge_3', 'wuge/wuge_1/wuge_1_1', '', '2017-01-05 18:54:24', '0', '23301403-8d90-4d9e-a35e-20b7d45b9116', '4');

-- ----------------------------
-- Table structure for `tbl_iot_scene_device`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_scene_device`;
CREATE TABLE `tbl_iot_scene_device` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(16) NOT NULL COMMENT '设备id',
  `sceneId` varchar(16) NOT NULL COMMENT '所属场景id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_scene_device
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_iot_sys_defined`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_sys_defined`;
CREATE TABLE `tbl_iot_sys_defined` (
  `userid` varchar(64) NOT NULL COMMENT '用户ID',
  `title` varchar(255) DEFAULT NULL COMMENT '系统title',
  `foo` varchar(255) DEFAULT NULL COMMENT '系统foo',
  `logo` varchar(255) DEFAULT NULL COMMENT '系统logo',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_sys_defined
-- ----------------------------
INSERT INTO `tbl_iot_sys_defined` VALUES ('58bd9ef9-d5fa-41cb-a89c-ea03d338933a', 'zhilu', 'copyright', '/Uploads/images/201706/1498556350_logo.png.png');

-- ----------------------------
-- Table structure for `tbl_iot_thing_info`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_thing_info`;
CREATE TABLE `tbl_iot_thing_info` (
  `id` varchar(16) NOT NULL COMMENT '索引',
  `name` varchar(64) DEFAULT NULL COMMENT 'Thing类型名',
  `driver_path` varchar(256) DEFAULT NULL COMMENT '驱动存储路径',
  `dll_path` varchar(256) DEFAULT NULL COMMENT '动态库存储路径',
  `create_user` varchar(64) DEFAULT NULL COMMENT '创建用户',
  `modify_user` varchar(16) DEFAULT NULL COMMENT '修改用户',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `type` tinyint(5) DEFAULT '0' COMMENT 'Thing类型 [0：智能灯，1：空调，2：电视，3：冰箱，4：机床]',
  `system` varchar(64) DEFAULT NULL COMMENT '运行系统',
  `product_id` varchar(16) DEFAULT NULL COMMENT '产品id',
  `only_thing_id` varchar(16) NOT NULL COMMENT '同一个onlything,可以配置不同的系统',
  PRIMARY KEY (`id`),
  KEY `createtime` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_thing_info
-- ----------------------------
INSERT INTO `tbl_iot_thing_info` VALUES ('0b3fccba3d844069', 'ii', './Uploads/driver/201704/1492079272_34.ko', './Uploads/dll/201704/1492079292_34.so', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-04-13 18:28:14', null, '', '0', 'mtk', 'kOU4IIbWmvhlfRmA', '955aec8607357ce1');
INSERT INTO `tbl_iot_thing_info` VALUES ('0b892dbdd4bb9067', 'kkl', './Uploads/driver/2016-12-23/11.ko', './Uploads/dll/2016-12-23/11.so', '', null, '2016-12-23 10:54:59', '2016-12-23 11:06:59', 'wrer67', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('0c267e0d407acf25', 'tt', '', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-10 14:59:32', null, '', '0', 'mtk', 'exxQlPzFgPOLiImE', '520ca10f172feed7');
INSERT INTO `tbl_iot_thing_info` VALUES ('0c50ef84be7cb4a2', 'hht', './Uploads/driver/2016-12-23/11.ko', './Uploads/dll/2016-12-23/11.so', '', null, '2016-12-23 11:07:48', '2016-12-23 11:14:38', 'wer67rtt', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('0e2f2f28a3e299ad', 'MTK', '', './Uploads/dll/20170324/1490340958_camera.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-24 15:36:00', null, '', '0', 'mtk', 'scuJBe0nfaR554JU', '787eddc5b33cf9db');
INSERT INTO `tbl_iot_thing_info` VALUES ('13', 'Riva', './Uploads/driver/2016-11-14/qudong.ko', './Uploads/dll/2016-11-14/b.so', null, null, '2016-11-14 11:12:56', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('23237a581ebf357a', 'ESP_LED_LOGIC', './Uploads/driver/20170210/1486694235_zlauth-mtk.ko', './Uploads/dll/20170210/1486694240_libpaho-mqtt3c.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-10 10:37:21', null, '', '0', 'mtk', 'o8CL05Q6HssIaL8A', '4090712781807138');
INSERT INTO `tbl_iot_thing_info` VALUES ('255decc7570ec998', 'hh', '', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-07 16:39:03', null, '545', '0', 'hp', '3Nj6wNEszDPw74v1', '5bb85e1b353cb77b');
INSERT INTO `tbl_iot_thing_info` VALUES ('275fb2e4c2906ee2', 'SmartCamera', './Uploads/driver/2016-11-17/led.ko', './Uploads/dll/2016-11-17/camera.so', null, null, '2016-11-17 13:52:05', '2016-11-17 13:57:29', '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('2b0aff9387048cc2', '摄像头', '', './Uploads/dll/20170214/1487055596_camera.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-14 15:00:01', null, '', '0', 'mtk', 'vBQBscOe4zrkVN8f', '0baa44de803c3c98');
INSERT INTO `tbl_iot_thing_info` VALUES ('2b62a6ac47b782ee', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', './Uploads/driver/2016-12-21/led.ko', './Uploads/dll/2016-12-22/iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-21 18:51:35', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('2c682559e60edbbc', 'xxddff', './Uploads/driver/2016-11-17/ccc.ko', './Uploads/dll/2016-11-17/ccc.so', null, null, '2016-11-17 10:59:50', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('2d4cb777bc764e76', 'Riva2', './Uploads/driver/2016-11-30/text2.ko', './Uploads/dll/2016-11-30/text2.so', '042593dc-84bb-4ac7-ab42-39329214b62b', null, '2016-11-30 14:30:56', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('2efde7b788e41bf6', 'cccccccccccccccccccccccc', './Uploads/driver/2016-12-16/led.ko', './Uploads/dll/2016-12-16/iot_dyn.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-16 16:40:53', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('2f12481eeec84e29', 'wuge123', './Uploads/driver/2016-12-15/11.ko', './Uploads/dll/2016-12-15/11.so', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2016-12-15 17:01:12', null, '23', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('3af92d24205d7f54', 'hh', '', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-09 14:14:25', '2017-02-09 14:32:36', 'rryyr', '0', 'mtk', '3Nj6wNEszDPw74v1', '5bb85e1b353cb77b');
INSERT INTO `tbl_iot_thing_info` VALUES ('3b203a4c7df2ed59', '1111', '', '', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', null, '2017-03-13 16:05:52', null, '', '0', 'mtk', 'wnWYbj38VZPyvmZW', 'f5292d18568ba18f');
INSERT INTO `tbl_iot_thing_info` VALUES ('3d88c63bc4d3c358', '109test', './Uploads/driver/2016-12-05/led.ko', './Uploads/dll/2016-12-05/camera.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-05 15:56:34', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('3fbd83b9dfbb25d2', 'Riva1', './Uploads/driver/2016-11-17/test.ko', './Uploads/dll/2016-11-17/test.so', null, null, '2016-11-17 14:53:42', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('4', 'xxxx', './Uploads/driver/2016-11-07/ccc.ko', './Uploads/dll/2016-11-07/ccc.so', null, null, '2016-11-07 11:41:16', null, 'xxxxxxcccccc', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('497d4d3f1ded9c94', 'zhangwei123', '', '', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-07 16:40:02', null, '899', '0', 'hp', 'HSw1BZ80mGiXryW2', 'e82e52ea157f2fd0');
INSERT INTO `tbl_iot_thing_info` VALUES ('4bedc4541e383dea', 'dd', '', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-10 14:33:40', null, '', '0', 'mtk', 'I9JP2CoTtLMHpc3a', '66fc90b7ab78c43c');
INSERT INTO `tbl_iot_thing_info` VALUES ('4f7d7c08df742fc5', '1226GPIO', './Uploads/driver/2016-12-26/led.ko', './Uploads/dll/2016-12-27/iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-26 10:05:29', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('5', 'zlh', './Uploads/driver/2016-11-07/ccc.ko', './Uploads/dll/2016-11-07/ccc.so', null, null, '2016-11-07 11:41:41', null, 'cvbnmngf', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('5406c70b963d8afe', 'zhangwei123', './Uploads/driver/20170207/1486457478_zlauth.ko', './Uploads/dll/20170207/1486457492_libzlapcomm.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-07 16:51:34', null, '', '0', 'mtk', 'HSw1BZ80mGiXryW2', 'e82e52ea157f2fd0');
INSERT INTO `tbl_iot_thing_info` VALUES ('55f117a4e8b1c653', 'zhangwei123', '', '', null, null, '2017-02-07 16:34:32', null, '', '0', 'mtk', 'HSw1BZ80mGiXryW2', 'e82e52ea157f2fd0');
INSERT INTO `tbl_iot_thing_info` VALUES ('59ef628b1d798f9b', 'dfdfetert', '', './Uploads/dll/20161228/1482890532_zk.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-28 10:02:14', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('5f2fed0e099dcf1d', 'zyk', './Uploads/driver/2016-12-22/test.ko', './Uploads/dll/2016-12-22/camera.so', '540ee87a-ac89-4eee-8246-562a627c7e1b', null, '2016-12-22 14:09:54', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('61fab8e179566d03', 'fffffffffffffffffffffff', './Uploads/driver/2016-12-21/led.ko', './Uploads/dll/2016-12-21/iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-21 11:58:43', null, 'rrrrr', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('7', 'cccvvvbb', './Uploads/driver/2016-11-07/ccc.ko', './Uploads/dll/2016-11-07/ccc.so', null, null, '2016-11-07 11:43:58', null, 'bnhjyuio', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('7449fc64c4eddd0f', 'thing2', './Uploads/driver/20170120/1484882823_11.ko', './Uploads/dll/20170120/1484882806_11.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-01-20 11:20:34', null, '345', '0', 'linux', '1irZ3e0HqE5cRLbA', '123123');
INSERT INTO `tbl_iot_thing_info` VALUES ('7d50de4a9d40ce9c', 'www', './Uploads/driver/2016-11-30/11.ko', './Uploads/dll/2016-11-30/11.so', '', null, '2016-11-30 09:56:12', null, 'qwe', '2', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('7fc0cd6e14c9dcc1', 'LED测试_请不要动', './Uploads/driver/2016-11-17/led.ko', './Uploads/dll/2016-11-17/iot_dyn.so', null, null, '2016-11-17 16:19:44', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('837f3e6d56122a32', 'Riva', '', '', 'eb867001-f0f0-4366-9a74-7a7844b1faa8', null, '2017-03-24 09:54:44', null, '', '0', 'hp', 'j9nWt3aDC0CvSPJQ', '2ec3629bc4d950fd');
INSERT INTO `tbl_iot_thing_info` VALUES ('87f75321ad57c262', '都别用', './Uploads/driver/2016-12-16/led.ko', './Uploads/dll/2016-12-16/iot_dyn.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-16 14:28:19', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('8892b64c86c1fcd1', 'hjk', './Uploads/driver/201705/1494828650_wuge123.ko', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-05-15 14:10:51', null, '', '0', 'mtk', 'BM1lhkq8AyZhPHME', '26a449dc5fdfaad8');
INSERT INTO `tbl_iot_thing_info` VALUES ('8e3299e193d3a422', 'new109test', './Uploads/driver/2016-12-07/led.ko', './Uploads/dll/2016-12-07/iot_dyn.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-07 17:26:51', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('91a3067c32d9b1d8', 'thing2', '', '', null, null, '2017-02-07 16:23:58', null, '5656', '0', 'hp', '1irZ3e0HqE5cRLbA', '123123');
INSERT INTO `tbl_iot_thing_info` VALUES ('966157a807fe7834', 'yefeng', './Uploads/driver/2016-11-17/zlauth1.ko', './Uploads/dll/2016-11-17/zlauth1.so', null, null, '2016-11-17 19:24:24', null, 'test', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('9a977585e526f682', 'dd', '', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-27 11:37:51', null, '', '0', 'linux', 'I9JP2CoTtLMHpc3a', '66fc90b7ab78c43c');
INSERT INTO `tbl_iot_thing_info` VALUES ('9ee7b2d8791e07b7', 'test2016', './Uploads/driver/2016-12-22/led.ko', './Uploads/dll/2016-12-23/iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-22 19:23:12', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('9f5ce88cd08d8f89', '4545', './Uploads/driver/20161229/1482980967_11.ko', './Uploads/dll/20161229/1482980983_11.so', '', null, '2016-12-29 11:09:50', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('a1efb0a6c27b4e30', 'test', './Uploads/driver/2016-11-17/test.ko', './Uploads/dll/2016-11-17/test.so', null, null, '2016-11-17 14:22:03', null, 'test', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('a55e7593ff91dbaa', 'wuge_ceshi', './Uploads/driver/20161229/1482990969_11.ko', './Uploads/dll/20161229/1482990947_11.so', '', null, '2016-12-29 13:56:24', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('a735bf3cbfa6e321', '2017188test', './Uploads/driver/20170103/1483410624_led.ko', './Uploads/dll/20170103/1483410632_iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-01-03 10:30:34', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('aba46302c64eaa4f', 'hj', '', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-27 15:04:36', null, '3r', '0', 'hp', 'I9JP2CoTtLMHpc3a', '4f456ddce2a25bd5');
INSERT INTO `tbl_iot_thing_info` VALUES ('abac7b1ab857c2c5', 'test', '', '', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-04-20 15:07:16', null, 'aaaaaaaa', '0', 'mtk', '3s1xRCzUyTojT4zL', '5a845d9cbf3dfad3');
INSERT INTO `tbl_iot_thing_info` VALUES ('afd33511138e2c42', 'wuge', './Uploads/driver/2016-11-30/11.ko', './Uploads/dll/2016-11-30/11.so', null, null, '2016-11-30 09:52:10', null, '43434', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('b8ee2b754db1ef9f', 'LED_WZ', './Uploads/driver/2016-11-17/led.ko', './Uploads/dll/2016-11-17/iot_dyn.so', null, null, '2016-11-17 11:31:33', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('b8f4d38d5299c07d', 'TestA', './Uploads/driver/2016-11-16/A.ko', './Uploads/dll/2016-11-16/A.so', null, null, '2016-11-16 17:59:02', null, 'test', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('b954bc857f9a7ffd', 'RivaRivaRivaRivaRivaRivaRivaRivaRivaRivaRivaRivaRivaRivaRivaRiva', './Uploads/driver/2016-11-18/text2.ko', './Uploads/dll/2016-11-18/text2.so', '042593dc-84bb-4ac7-ab42-39329214b62b', null, '2016-11-18 13:51:00', '2016-11-18 16:24:29', '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('ba43607b61b40c9e', 'zhangweEspLogic', './Uploads/driver/20170207/1486461330_zlauth-mtk.ko', './Uploads/dll/20170207/1486461339_libzl_share_api.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-07 17:55:41', null, '', '0', 'mtk', 't8sSzTsOJYvWSfvT', '453de3e0d549196f');
INSERT INTO `tbl_iot_thing_info` VALUES ('bf78a47c16ce74b3', 'bbb', './Uploads/driver/2016-12-23/11.ko', './Uploads/dll/2016-12-23/11.so', '', null, '2016-12-23 10:47:13', null, '434', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('c1251e45606c068b', '摄像头', '', './Uploads/dll/2016-12-15/iot_camera.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-15 15:46:54', null, '', '2', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('c231a12ca3c18bd1', 'hh', '', '', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-02-09 14:12:38', '2017-02-09 14:33:27', '45445', '0', 'linux', '3Nj6wNEszDPw74v1', '5bb85e1b353cb77b');
INSERT INTO `tbl_iot_thing_info` VALUES ('c7d1d0798123b375', 'Riva3', './Uploads/driver/2016-11-18/test.ko', './Uploads/dll/2016-11-18/text2.so', '042593dc-84bb-4ac7-ab42-39329214b62b', null, '2016-11-18 10:57:47', null, 'test', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('c869f9fe4bc8d9d7', 'MTK', '', './Uploads/dll/20170324/1490340686_iot_dyn.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-24 15:31:45', null, '', '0', 'mtk', 'owvSTnSegyuof64d', 'ac47af6515809194');
INSERT INTO `tbl_iot_thing_info` VALUES ('c88f78040d3ea7e2', 'hh', '', '', null, null, '2017-02-07 16:26:36', null, 'hh', '0', 'mtk', '3Nj6wNEszDPw74v1', '5bb85e1b353cb77b');
INSERT INTO `tbl_iot_thing_info` VALUES ('c8eb4acb5198fd37', 'linux', './Uploads/driver/20170320/1489990491_22.ko', './Uploads/dll/20170320/1489990476_22.so', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-20 14:14:53', null, '', '0', 'linux', 'BM1lhkq8AyZhPHME', 'ac8e18c8d2ccb238');
INSERT INTO `tbl_iot_thing_info` VALUES ('c9a344356b062bc1', 'gt ', './Uploads/driver/20170320/1489990416_22.ko', './Uploads/dll/20170320/1489990452_22.so', '58bd9ef9-d5fa-41cb-a89c-ea03d338933a', null, '2017-03-20 14:14:23', null, '24', '0', 'hp', 'BM1lhkq8AyZhPHME', '2d1b569d50070f3e');
INSERT INTO `tbl_iot_thing_info` VALUES ('cb64fefb6137b5d2', 'Riva1', './Uploads/driver/2016-11-18/text2.ko', './Uploads/dll/2016-11-18/test.so', '042593dc-84bb-4ac7-ab42-39329214b62b', null, '2016-11-18 09:55:13', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('d02c3d1893b1611e', 'gpio_c', './Uploads/driver/2016-12-21/led.ko', './Uploads/dll/2016-12-21/iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-21 09:41:45', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('d2c9d2294c58cdf3', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', './Uploads/driver/2016-12-21/led.ko', './Uploads/dll/2016-12-21/iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-21 11:10:43', null, 'rrrrrrrrrrr', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('d9d6213d2832d1a9', 'zhangwEspLogic', './Uploads/driver/20170210/1486709081_zlauth-atheros.ko', './Uploads/dll/20170210/1486709094_libzlapcomm.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-10 14:44:57', null, '', '0', 'mtk', 'j3FHsGF3eF2HfsgY', 'bf58c9453c1579ca');
INSERT INTO `tbl_iot_thing_info` VALUES ('de143c682a8f2528', 'gaidan', './Uploads/driver/20170330/1490838881_zk.ko', './Uploads/dll/20170330/1490838884_zk.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2017-03-30 09:54:51', null, 'xxccccc', '0', 'mtk', 'X5FIRAe1kpqxInhh', 'bd24e01cd424d9b6');
INSERT INTO `tbl_iot_thing_info` VALUES ('e2e48a15af6e11e3', 'led', '', './Uploads/dll/20170214/1487055866_Led.so', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-02-14 15:04:29', null, '', '0', 'mtk', 'Kwq1sFlaTABtpn6n', 'be03615d9272f753');
INSERT INTO `tbl_iot_thing_info` VALUES ('e53f0128fdfa9d5f', 'test', '', './Uploads/dll/20170213/1486980920_camera.so', 'dedde00a-f165-47f4-95b8-97e0f8d893cf', null, '2017-02-13 18:15:21', null, '', '0', 'mtk', 'vjjKgZ88X3u923G8', '6ae50edce6516a01');
INSERT INTO `tbl_iot_thing_info` VALUES ('e6070095e9bca004', '测试', './Uploads/driver/2016-11-18/zlauth.ko', './Uploads/dll/2016-11-18/libjson.so', null, null, '2016-11-18 09:26:01', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('eedc9d6267325e79', '智能家居', '', './Uploads/dll/2016-12-15/iot_dyn.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-15 15:40:25', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('f5fff40f8a124506', 'rrrr', './Uploads/driver/2016-12-21/led.ko', './Uploads/dll/2016-12-21/iot_dynLib.so', '23301403-8d90-4d9e-a35e-20b7d45b9116', null, '2016-12-21 10:19:39', null, '', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('f9df69c4a0d01e34', 'rivatest3', './Uploads/driver/2016-11-18/test.ko', './Uploads/dll/2016-11-18/test.so', '042593dc-84bb-4ac7-ab42-39329214b62b', null, '2016-11-18 12:00:40', null, 's', '0', null, null, '');
INSERT INTO `tbl_iot_thing_info` VALUES ('fb5281d90816f81b', 'hh', '', '', null, null, '2017-02-07 16:27:04', null, 'rtrt', '0', 'linux', '3Nj6wNEszDPw74v1', '5bb85e1b353cb77b');
INSERT INTO `tbl_iot_thing_info` VALUES ('fe7e28d1d1b87e2c', 'MTK_ONLY_LOGIC', '', '', '59c57e82-66d0-4a5d-98e9-a8a9606b5611', null, '2017-03-08 14:56:23', null, '', '0', 'mtk', 'xRq8tmygs4pyHeH4', 'b3cc48fce55caf7a');

-- ----------------------------
-- Table structure for `tbl_iot_thing_property`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_thing_property`;
CREATE TABLE `tbl_iot_thing_property` (
  `id` varchar(16) NOT NULL COMMENT 'Thing属性表索引',
  `name` varchar(64) DEFAULT NULL COMMENT '属性说明',
  `identity` varchar(32) DEFAULT NULL COMMENT '属性标识',
  `function` varchar(32) DEFAULT NULL COMMENT '功能定义',
  `type` tinyint(4) DEFAULT '0' COMMENT '功能类型',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `description` varchar(256) DEFAULT NULL COMMENT '功能描述',
  `product_id` varchar(16) DEFAULT NULL COMMENT '产品ID',
  `property_data_id` varchar(16) DEFAULT NULL COMMENT '数据点ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_thing_property
-- ----------------------------
INSERT INTO `tbl_iot_thing_property` VALUES ('0947422cd17bed50', 'LED开关控制', 'ledOnOff', 'ledOnOff', '0', '2017-04-19 13:48:07', null, null, 'j3FHsGF3eF2HfsgY', 'a4861929feb12acb');
INSERT INTO `tbl_iot_thing_property` VALUES ('152330636c1ccdb4', '屏幕功能2', 'screen2_func_alias', 'screen2_func_name', '0', '2017-03-07 11:11:28', null, null, 'kaM2vY1fxNoRUxIJ', '9138');
INSERT INTO `tbl_iot_thing_property` VALUES ('47d7bb08e0bac0e7', '扫描枪控制', 'smartscale_ctrl_func', 'smartscale', '0', '2017-03-08 15:06:54', null, null, 'xRq8tmygs4pyHeH4', '25a9e94ce310a0ae');
INSERT INTO `tbl_iot_thing_property` VALUES ('4b5246bb5fd28b3c', '开关操作', 'LedOnOff', 'led_switch', '1', '2017-03-24 15:34:54', null, null, 'owvSTnSegyuof64d', '6d4084eaadfdbd88');
INSERT INTO `tbl_iot_thing_property` VALUES ('4d3581d6197fc507', 'scree控制', 'screen_func_alias', 'screen_func_alias', '0', '2017-04-19 13:48:54', null, null, 'j3FHsGF3eF2HfsgY', 'ed5e5149c72d4e1d');
INSERT INTO `tbl_iot_thing_property` VALUES ('52acaca685bb9cc0', '屏显示', 'LedDisplay', 'camera_open', '1', '2017-03-23 15:33:50', '2017-03-24 10:30:48', null, 'vBQBscOe4zrkVN8f', 'cd54b7a3a858b3ee');
INSERT INTO `tbl_iot_thing_property` VALUES ('6038ff30fbabfa73', '开关功能', 'switch1_func_alias', 'switch1_func_name', '0', '2017-03-07 14:04:33', null, null, '3s1xRCzUyTojT4zL', '9139');
INSERT INTO `tbl_iot_thing_property` VALUES ('616f98bb5c3a6be8', 'Led颜色控制', 'colourSet', 'colourSet', '0', '2017-04-19 13:48:35', null, null, 'j3FHsGF3eF2HfsgY', '13d1cbac0b27dd08');
INSERT INTO `tbl_iot_thing_property` VALUES ('6766f2f1b35cdea9', '开关操作', 'LedOnOff', 'led_switch', '1', '2017-03-23 15:30:00', null, null, 'Kwq1sFlaTABtpn6n', '1802e649a13d1a21');
INSERT INTO `tbl_iot_thing_property` VALUES ('7c3f9ac7868f8027', '计数功能', 'count_func_alias', 'count_func_name', '0', '2017-03-06 15:41:10', null, null, 'kaM2vY1fxNoRUxIJ', '9132');
INSERT INTO `tbl_iot_thing_property` VALUES ('802a5c35997b1592', 'jkl', 'jjk', 'kll', '0', '2017-04-13 18:28:59', null, null, 'kOU4IIbWmvhlfRmA', 'af932383ba5b0ed8');
INSERT INTO `tbl_iot_thing_property` VALUES ('83589d6fc12c8649', '蓝牙控制', 'bluetooth_ctrl_func', 'bluetooth_ctrl', '0', '2017-03-08 15:07:19', null, null, 'xRq8tmygs4pyHeH4', 'a32a471eedaf10a0');
INSERT INTO `tbl_iot_thing_property` VALUES ('8c77e3cf9c27faa9', 'test', 'test', 'test', '1', '2017-03-06 16:59:40', '2017-03-06 16:59:51', null, 'Togu8BPT9Cqp9OeH', '9135');
INSERT INTO `tbl_iot_thing_property` VALUES ('8f52bad9893df7e8', 'hh', 'jk', 'jk', '0', '2017-03-21 14:25:05', null, null, 'I9JP2CoTtLMHpc3a', '733428c083515b82');
INSERT INTO `tbl_iot_thing_property` VALUES ('9cd94139bbf19cc9', '温度功能', 'temperature_func_alias', 'temperature_func_name', '0', '2017-03-06 15:35:12', null, null, 'kaM2vY1fxNoRUxIJ', '9131');
INSERT INTO `tbl_iot_thing_property` VALUES ('9eb194448e9a44bc', '屏幕控制', 'screen_control_func', 'screen', '0', '2017-03-08 15:06:18', null, null, 'xRq8tmygs4pyHeH4', '');
INSERT INTO `tbl_iot_thing_property` VALUES ('a34372a47efc8834', '开关功能2', 'switch2_func_alias', 'switch2_func_name', '0', '2017-03-07 11:02:39', null, null, 'kaM2vY1fxNoRUxIJ', '9137');
INSERT INTO `tbl_iot_thing_property` VALUES ('acad66b23a68d6ab', '温度传感器功能', 'temperature_func_alias', 'temperature_func_name', '0', '2017-03-07 14:10:01', null, null, 'qxBmW9UiVfbtPq33', '9140');
INSERT INTO `tbl_iot_thing_property` VALUES ('b3a27ce2d12fd447', '开关功能', 'switch_func_alias', 'switch_func_name', '0', '2017-03-06 15:41:40', null, null, 'kaM2vY1fxNoRUxIJ', '9133');
INSERT INTO `tbl_iot_thing_property` VALUES ('b73645ca8b11f946', 'gh', 'gw', 'gq', '0', '2017-03-14 16:47:00', null, null, 'BM1lhkq8AyZhPHME', '459c4b8ac8ce85e0');
INSERT INTO `tbl_iot_thing_property` VALUES ('c918e297bca29a29', '屏幕显示功能', 'screen_func_alias', 'screen_func_name', '0', '2017-03-06 15:42:04', null, null, 'kaM2vY1fxNoRUxIJ', '9134');
INSERT INTO `tbl_iot_thing_property` VALUES ('d080f287bfb0632b', 'count状态', 'count_func_alias', 'count_func_alias', '0', '2017-04-19 13:49:10', null, null, 'j3FHsGF3eF2HfsgY', 'd5f43b5968ba0d4c');
INSERT INTO `tbl_iot_thing_property` VALUES ('d289e57045b6aeb2', '显示', 'LedDisplay', 'camera_open', '1', '2017-03-24 15:37:24', null, null, 'scuJBe0nfaR554JU', 'ceeae333213ea2e3');
INSERT INTO `tbl_iot_thing_property` VALUES ('e75e3f178570d50f', 'wdj', 'wsj', 'wdj', '0', '2017-03-08 14:02:36', null, null, 'BM1lhkq8AyZhPHME', '9141');

-- ----------------------------
-- Table structure for `tbl_iot_third_platform`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_third_platform`;
CREATE TABLE `tbl_iot_third_platform` (
  `id` varchar(16) NOT NULL,
  `url` varchar(225) NOT NULL COMMENT '认证url',
  `token` varchar(64) NOT NULL COMMENT 'token',
  `crypt_type` tinyint(5) NOT NULL DEFAULT '0' COMMENT '数据加密模式0：明文，1：密文',
  `encodeAESKey` varchar(255) NOT NULL COMMENT 'encodeAESKey',
  `push_time` int(5) NOT NULL DEFAULT '0' COMMENT '推送时间限制（秒）',
  `push_data` int(5) NOT NULL DEFAULT '0' COMMENT '推送数据限制(个)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(64) DEFAULT NULL,
  `corpId` varchar(64) NOT NULL COMMENT 'corpId',
  `productId` varchar(16) NOT NULL COMMENT '产品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_third_platform
-- ----------------------------
INSERT INTO `tbl_iot_third_platform` VALUES ('bo1vOo9c', 'http://www.baodu.com', '4324324', '1', 'QJH8W8jAV18WrLPKj5EeTzipO4HytwRRNZZVpVEULJp', '343', '24', '2017-03-01 19:00:04', '23301403-8d90-4d9e-a35e-20b7d45b9116', '', '');
INSERT INTO `tbl_iot_third_platform` VALUES ('BpzrUUnt', 'http://www.sohu.com', '123', '1', 'Ge6a82ta1JGipF3CJFfT4s6KMKhWmjOQdzzLUEBGJUX', '61', '0', '2017-03-08 11:29:58', '540ee87a-ac89-4eee-8246-562a627c7e1b', 'zlm5bIH7dcyKvyaPiplz', '');
INSERT INTO `tbl_iot_third_platform` VALUES ('HLhPFvE8', 'https://loraflow.io/gateway/detail/b827ebfffe8a8ba3', '123456789', '0', 'meAGKNBaFDO34dWhKapkaxTTp6EtJrQh7DUypPkpCDm', '1', '1', '2017-03-06 15:36:25', 'b7ba8ccc-01fd-4fae-a97b-cda0e4bc4044', 'zlYcv9WOgZ9BsaZEv6Ng', '');

-- ----------------------------
-- Table structure for `tbl_iot_transn`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_transn`;
CREATE TABLE `tbl_iot_transn` (
  `police_id` varchar(16) NOT NULL COMMENT '策略ID',
  `condition_things` varchar(16) NOT NULL COMMENT '条件thingtype',
  `condition_device` varchar(16) NOT NULL COMMENT '条件设备',
  `action_things` varchar(16) DEFAULT NULL COMMENT '动作thingtype',
  `action_device` varchar(16) DEFAULT NULL COMMENT '动作设备',
  `request_msg` tinyint(5) DEFAULT '1' COMMENT '接受信息方式',
  `rulename` varchar(16) DEFAULT NULL COMMENT '规则号',
  PRIMARY KEY (`police_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_transn
-- ----------------------------
INSERT INTO `tbl_iot_transn` VALUES ('04733148989d682b', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '0', 'IHu8bpFc');
INSERT INTO `tbl_iot_transn` VALUES ('05d7f7da20e86310', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'hkItBxpC');
INSERT INTO `tbl_iot_transn` VALUES ('148730002dacc320', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', '7HxbIHsQ');
INSERT INTO `tbl_iot_transn` VALUES ('157bebb65583c9f6', '', '', 'qxBmW9UiVfbtPq33', 'all', '0', 'oREhTF9S');
INSERT INTO `tbl_iot_transn` VALUES ('1971b040b7623eaf', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '1', 'ngzbrZA6');
INSERT INTO `tbl_iot_transn` VALUES ('1b75c388974196ff', '', '', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', 'VDCO1SUF');
INSERT INTO `tbl_iot_transn` VALUES ('1c512f89d8763d01', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'YGh47LOY');
INSERT INTO `tbl_iot_transn` VALUES ('1cb03cec3a720048', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', null);
INSERT INTO `tbl_iot_transn` VALUES ('230c5f91f56e2a95', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '0', 'iaBWhO7T');
INSERT INTO `tbl_iot_transn` VALUES ('26394b1ab72c3bb0', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'VZBWewcx');
INSERT INTO `tbl_iot_transn` VALUES ('2afb9fe893789141', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'XADlRzBl');
INSERT INTO `tbl_iot_transn` VALUES ('2f39628f4e811317', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', '2fswRgPl');
INSERT INTO `tbl_iot_transn` VALUES ('2f910c2e10de022f', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', '4vsSDwnM');
INSERT INTO `tbl_iot_transn` VALUES ('34ab4b004d0ce669', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', '1DjWPj3M');
INSERT INTO `tbl_iot_transn` VALUES ('36f2ffab59c0e185', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '1', 'ax635u8N');
INSERT INTO `tbl_iot_transn` VALUES ('3d866cf1e8be221b', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '0', 'nbVx9GMG');
INSERT INTO `tbl_iot_transn` VALUES ('4bba209553eab2a0', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'Gbw4UG71');
INSERT INTO `tbl_iot_transn` VALUES ('4f6b98ab11f389be', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', '0tE7SeGm');
INSERT INTO `tbl_iot_transn` VALUES ('53f993cf31e69db3', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', 'all', '1', 'BNVKIK5N');
INSERT INTO `tbl_iot_transn` VALUES ('5410e3ded9ae7cfc', 'Togu8BPT9Cqp9OeH', '', 'Togu8BPT9Cqp9OeH', '', '0', '31yjlTkn');
INSERT INTO `tbl_iot_transn` VALUES ('560ac751a7e547a0', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'yi3iNoxz');
INSERT INTO `tbl_iot_transn` VALUES ('5abe38f1466f1d2a', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', 'QVrcVZqG');
INSERT INTO `tbl_iot_transn` VALUES ('6d2f9a509dc61d59', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', '56vQmYHe');
INSERT INTO `tbl_iot_transn` VALUES ('700129c5173fc1b4', 'Togu8BPT9Cqp9OeH', 'all', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'JXTAl88i');
INSERT INTO `tbl_iot_transn` VALUES ('71ae1352ffa19887', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', '1i7mqraA');
INSERT INTO `tbl_iot_transn` VALUES ('75704c30f17c6363', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'n1ZdkIr7');
INSERT INTO `tbl_iot_transn` VALUES ('83291745eeb27135', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'Bj6YAsSv');
INSERT INTO `tbl_iot_transn` VALUES ('84689f9c7487bcfb', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'KJsTka1Q');
INSERT INTO `tbl_iot_transn` VALUES ('85436d84e7c9465d', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'JsGucaj7');
INSERT INTO `tbl_iot_transn` VALUES ('86c4d7af94e39991', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'hJ71CSmq');
INSERT INTO `tbl_iot_transn` VALUES ('8ab265dcfc7bff6f', 'Togu8BPT9Cqp9OeH', 'all', 'Togu8BPT9Cqp9OeH', 'all', '0', 'aXZuVeXM');
INSERT INTO `tbl_iot_transn` VALUES ('8c0c2623d473edfa', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '1', 'fjlEIbDV');
INSERT INTO `tbl_iot_transn` VALUES ('9b1a585124083214', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', null);
INSERT INTO `tbl_iot_transn` VALUES ('9e7288b8ca259690', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'q1hUJQtV');
INSERT INTO `tbl_iot_transn` VALUES ('9ef40c439ffa0432', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'nqx9ScBf');
INSERT INTO `tbl_iot_transn` VALUES ('a0eea64ee7143105', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'S4XPqqh2');
INSERT INTO `tbl_iot_transn` VALUES ('a20030e690cc28b9', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '0', null);
INSERT INTO `tbl_iot_transn` VALUES ('a53985b72cd9ba7d', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', null);
INSERT INTO `tbl_iot_transn` VALUES ('a66c32579ffca35f', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'oswew1NG');
INSERT INTO `tbl_iot_transn` VALUES ('a7c5d6ad17e42a93', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', '2qskPUZe');
INSERT INTO `tbl_iot_transn` VALUES ('ab9b6bff4a0638c2', '', '', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', 'XkLaIAI7');
INSERT INTO `tbl_iot_transn` VALUES ('b0a251d4e69a5a7f', '', '', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', '7ENsnhtm');
INSERT INTO `tbl_iot_transn` VALUES ('b98b1c6829323e57', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'HliJNZJZ');
INSERT INTO `tbl_iot_transn` VALUES ('baae068fcb4df563', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'iZ6qs7aY');
INSERT INTO `tbl_iot_transn` VALUES ('bccf227707d008d4', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '0', 'oNIlD7rl');
INSERT INTO `tbl_iot_transn` VALUES ('c6f8cc13b653c18c', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'iOP0SGFq');
INSERT INTO `tbl_iot_transn` VALUES ('c8a0ec044fd9ae6d', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'v0Vj3kYu');
INSERT INTO `tbl_iot_transn` VALUES ('c97842a0b865d1b6', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'XQd3nT6q');
INSERT INTO `tbl_iot_transn` VALUES ('cb087c7fee72928f', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'WEZaF8iS');
INSERT INTO `tbl_iot_transn` VALUES ('ce2c61dfdca980b9', 'qxBmW9UiVfbtPq33', 'all', 'qxBmW9UiVfbtPq33', 'all', '1', 'wlf5Ek4M');
INSERT INTO `tbl_iot_transn` VALUES ('da702cae08d6ef35', 'Togu8BPT9Cqp9OeH', 'all', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', '537INi0H');
INSERT INTO `tbl_iot_transn` VALUES ('dc17efba4e48ef80', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'dLI1vJnk');
INSERT INTO `tbl_iot_transn` VALUES ('dcc774f5b129baf2', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'W9fAePeP');
INSERT INTO `tbl_iot_transn` VALUES ('dd661f8e930a1042', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'JVrJCJ9j');
INSERT INTO `tbl_iot_transn` VALUES ('e0ec4fc14c545d7c', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', '6NmSJtDC');
INSERT INTO `tbl_iot_transn` VALUES ('ea2dfacfb8c6a9e7', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'iHeEvnTp');
INSERT INTO `tbl_iot_transn` VALUES ('ea443a2c5605107d', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'hFvwkVkk');
INSERT INTO `tbl_iot_transn` VALUES ('ebe32e322b7b068c', '', '', 'qxBmW9UiVfbtPq33', 'all', '0', 'g6gi26aM');
INSERT INTO `tbl_iot_transn` VALUES ('ed0498f74ae1f93e', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', 'qxBmW9UiVfbtPq33', '54561d63e62dbdb1', '0', null);
INSERT INTO `tbl_iot_transn` VALUES ('f5e7c7f2c32d1941', '', '', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'DcFhuXOz');
INSERT INTO `tbl_iot_transn` VALUES ('fc7dbc8ebc13e351', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '0', 'uBtO7LlX');
INSERT INTO `tbl_iot_transn` VALUES ('ff6a2a64dfca3874', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', 'Togu8BPT9Cqp9OeH', '0ece94dc94fb157b', '1', 'lv1qBfrV');

-- ----------------------------
-- Table structure for `tbl_iot_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_user`;
CREATE TABLE `tbl_iot_user` (
  `id` varchar(16) NOT NULL,
  `account` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `userid` varchar(64) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_user
-- ----------------------------
INSERT INTO `tbl_iot_user` VALUES ('036557c221eda971', '895344033@qq.com', '', '2017-01-21 10:13:12', '');
INSERT INTO `tbl_iot_user` VALUES ('054173e59da79a98', '18033448900', '', '2017-04-10 18:30:21', '');
INSERT INTO `tbl_iot_user` VALUES ('1a72586b544115e5', '15000000000', '5b835c4578aa7a59d37e4ccc43835d22', '2017-07-11 15:51:55', '');
INSERT INTO `tbl_iot_user` VALUES ('2067e32ac37a4d4c', '15112500186', 'e10adc3949ba59abbe56e057f20f883e', '2017-02-07 15:06:30', '');
INSERT INTO `tbl_iot_user` VALUES ('22456ee1b96d68b5', '18680370570', '', '2017-01-09 18:46:52', '');
INSERT INTO `tbl_iot_user` VALUES ('2d0a8922446095ca', '13407162948', 'e10adc3949ba59abbe56e057f20f883e', '2017-02-23 17:20:47', '');
INSERT INTO `tbl_iot_user` VALUES ('33dc2510746711b2', '18588409655', '4297f44b13955235245b2497399d7a93', '2017-04-12 17:45:49', '');
INSERT INTO `tbl_iot_user` VALUES ('34d628edfc1ca91d', '18676710666', '5b835c4578aa7a59d37e4ccc43835d22', '2017-07-11 15:28:59', '');
INSERT INTO `tbl_iot_user` VALUES ('460743d7edc866b1', '15899879109', '', '2017-01-21 10:00:13', '');
INSERT INTO `tbl_iot_user` VALUES ('5b7b3acf058d2cb5', '18588409600', '5b835c4578aa7a59d37e4ccc43835d22', '2017-07-11 14:40:14', '');
INSERT INTO `tbl_iot_user` VALUES ('6a2d62c3749b9381', '18986681621', 'e10adc3949ba59abbe56e057f20f883e', '2017-01-06 10:42:19', '');
INSERT INTO `tbl_iot_user` VALUES ('6f5ba89ab822e299', '401278936@qq.com', '', '2017-02-27 17:25:25', '');
INSERT INTO `tbl_iot_user` VALUES ('7fcba44c361b6731', '', '', '2017-06-23 16:32:53', '');
INSERT INTO `tbl_iot_user` VALUES ('8f8c97af5fa6b91a', '18588409657', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-12 17:06:17', '');
INSERT INTO `tbl_iot_user` VALUES ('9f96eac292b2d41d', '18888888888', 'e10adc3949ba59abbe56e057f20f883e', '2017-03-22 17:05:47', '');
INSERT INTO `tbl_iot_user` VALUES ('b0fd5bf299d6baec', '18588409650', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-12 17:47:09', '');
INSERT INTO `tbl_iot_user` VALUES ('bc9021ec606eb6bc', '18986681633', 'e10adc3949ba59abbe56e057f20f883e', '2017-01-05 19:52:50', '');
INSERT INTO `tbl_iot_user` VALUES ('c9301df6c25c3793', '13714535176', '', '2017-03-06 11:19:39', '');
INSERT INTO `tbl_iot_user` VALUES ('df7066ee4451aa6c', '18588409656', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-12 17:39:24', '');
INSERT INTO `tbl_iot_user` VALUES ('df875a6e63b1ba8d', '15989475466', '', '2017-01-11 11:02:28', '');
INSERT INTO `tbl_iot_user` VALUES ('fd6202bc0ca67e59', '18899856781', '', '2017-01-12 09:45:46', '');
INSERT INTO `tbl_iot_user` VALUES ('fea2eceead3b1b63', '18676710461', '', '2017-01-09 18:51:56', '');

-- ----------------------------
-- Table structure for `tbl_iot_vender`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iot_vender`;
CREATE TABLE `tbl_iot_vender` (
  `id` varchar(16) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `mark` int(10) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_iot_vender
-- ----------------------------
INSERT INTO `tbl_iot_vender` VALUES ('123456', '厂家2', null, null, null);
INSERT INTO `tbl_iot_vender` VALUES ('56789', '厂家1', null, null, null);
INSERT INTO `tbl_iot_vender` VALUES ('ItYRwjWpzc6NyoEI', 'module1', null, '123123', null);

-- ----------------------------
-- Table structure for `tbl_mobile_code`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mobile_code`;
CREATE TABLE `tbl_mobile_code` (
  `mobile` varchar(20) NOT NULL,
  `code` varchar(6) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机验证码表';

-- ----------------------------
-- Records of tbl_mobile_code
-- ----------------------------
INSERT INTO `tbl_mobile_code` VALUES ('15112500186', '3354', '1486451174');
INSERT INTO `tbl_mobile_code` VALUES ('18588409658', '7895', '1486628914');
INSERT INTO `tbl_mobile_code` VALUES ('18680370570', '2736', '1483695086');
INSERT INTO `tbl_mobile_code` VALUES ('18986681621', '2890', '1483688742');

-- ----------------------------
-- Table structure for `tbl_scene_policy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_scene_policy`;
CREATE TABLE `tbl_scene_policy` (
  `id` varchar(16) NOT NULL COMMENT '表索引',
  `name` varchar(255) NOT NULL COMMENT '策略名称',
  `type` tinyint(5) NOT NULL DEFAULT '1' COMMENT '策略类型：1=定时策略，2=触发器策略',
  `timer` datetime DEFAULT NULL COMMENT '定时策略时间',
  `endtimer` datetime DEFAULT NULL COMMENT '定时策略结束时间',
  `condition` text COMMENT '策略条件',
  `action` varchar(256) DEFAULT NULL COMMENT '策略执行动作JSON格式',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `scene_id` varchar(16) NOT NULL COMMENT '所属场景',
  `date_time` datetime DEFAULT NULL COMMENT '创建时间',
  `target` text COMMENT '策略目标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场景策略表';

-- ----------------------------
-- Records of tbl_scene_policy
-- ----------------------------
INSERT INTO `tbl_scene_policy` VALUES ('041ca1c87bc4d646', '10', '1', '0000-00-00 00:00:00', null, '{\"thing\": \"87f75321ad57c262\",\"alias\": \"LED_INIT\",\"key\": \"int\",\"identifications\":\"0\",\"opcode\":0,\"value\":\"3\"}', '{\"led_switch\": {\"open\":\"4\"}}', null, 'f216d21b2ce6d5a3', '2016-12-16 15:19:55', '{\"thingType\": \"87f75321ad57c262\",\"topic\":\"$mia/devices//things/87f75321ad57c262\"}');
INSERT INTO `tbl_scene_policy` VALUES ('060e4f1ab128220b', 'ccccc', '1', null, null, '[{\"thing\":\"2efde7b788e41bf6\",\"alias\":\"led_init\",\"key\":\"dd\",\"identifications\":0,\"opcode\":0,\"value\":\"98\",\"property\":\"a5bf891d57291545\",\"propertyData\":\"284\"}]', '{\"led_switch\":{\"gh\":\"6\"}}', null, 'undefined', '2016-12-19 15:42:51', '{\"thingType\":\"2efde7b788e41bf6\",\"topic\":\"$mia\\/devices\\/\\/things\\/2efde7b788e41bf6\",\"propertyAction\":\"da796c1fdeafd4eb\",\"propertyDataAction\":\"285\"}');
INSERT INTO `tbl_scene_policy` VALUES ('0e710add95d77804', 'test', '0', '2016-12-22 00:00:00', null, '{\"time\":\"2016-12-22 00:00:00\"}', '{\"Led_Init\":{\"switch\":\"1\"}}', null, '0e9cc6895ecb4768', '2016-12-21 10:54:30', '{\"thingType\":\"7fc0cd6e14c9dcc1\",\"topic\":\"$mia\\/devices\\/\\/things\\/7fc0cd6e14c9dcc1\",\"propertyAction\":\"3dd254ab6344b967\",\"propertyDataAction\":\"233\"}');
INSERT INTO `tbl_scene_policy` VALUES ('1256b1bff7ad99bd', 'wuge2', '1', null, null, '[{\"thing\":\"13\",\"alias\":\"cccc\",\"key\":\"xxx\",\"identifications\":0,\"opcode\":0,\"value\":\"2\",\"property\":\"3b66fe88ca7ee1fc\",\"propertyData\":\"243\"}]', '{\"Led_Init\":{\"switch\":\"4\"}}', null, '1da49d477ed37013', '2016-12-21 09:40:30', '{\"thingType\":\"7fc0cd6e14c9dcc1\",\"topic\":\"$mia\\/devices\\/\\/things\\/7fc0cd6e14c9dcc1\",\"propertyAction\":\"3dd254ab6344b967\",\"propertyDataAction\":\"233\"}');
INSERT INTO `tbl_scene_policy` VALUES ('1971b040b7623eaf', '3', '1', null, null, '[{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature\",\"identifications\":0,\"value\":\"3\",\"datatype\":\"1\"}]', '[{\"temperature_func_alias\":[{\"name\":\"temperature\",\"value\":\"1\"}]}]', null, 'ERbZe2j3', '2017-06-06 10:29:41', '{\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$mia\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_scene_policy` VALUES ('2a0a827de3ef2624', 'wuge', '1', null, null, '[{\"thing\":null,\"alias\":\"wuge\",\"key\":\"123\",\"identifications\":0,\"opcode\":0,\"value\":\"1\",\"property\":\"1dc03ff5b3eb1a91\",\"propertyData\":\"280\"}]', '{\"wuge\":{\"234\":\"3\"}}', null, 'cc5d70a899886ae1', '2016-12-21 15:46:49', '{\"thingType\":null,\"topic\":\"$mia\\/devices\\/\\/things\\/\",\"propertyAction\":\"1dc03ff5b3eb1a91\",\"propertyDataAction\":\"281\"}');
INSERT INTO `tbl_scene_policy` VALUES ('2f39628f4e811317', '1', '1', null, null, '[{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"property\":\"aaa\",\"identifications\":2,\"value\":\"30\",\"datatype\":\"0\"}]', '[{\"\":[{\"name\":\"bbb\",\"value\":\"ttt\"}]}]', null, 'b19db2731e25e49d', '2017-05-24 17:29:13', '{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"topic\":\"$mia\\/devices\\/\\/things\\/Togu8BPT9Cqp9OeH\"}');
INSERT INTO `tbl_scene_policy` VALUES ('316ab83e026a30b2', 'ff', '1', '0000-00-00 00:00:00', null, '[{\"thing\":\"I9JP2CoTtLMHpc3a\",\"alias\":\"n\",\"key\":\"n\",\"identifications\":0,\"opcode\":0,\"value\":\"1\"}]', '{\"Init\":{\"path\":\"1\"}}', null, '9472a99064f22d77', '2017-02-16 16:59:22', '{\"thingType\":\"vBQBscOe4zrkVN8f\",\"topic\":\"$mia\\/devices\\/\\/things\\/vBQBscOe4zrkVN8f\"}');
INSERT INTO `tbl_scene_policy` VALUES ('329937a7d3477640', 'wuge3', '1', '0000-00-00 00:00:00', null, '[{\"thing\":\"7fc0cd6e14c9dcc1\",\"alias\":\"Led_Init\",\"key\":\"switch\",\"identifications\":0,\"opcode\":0,\"value\":\"1\",\"property\":\"3dd254ab6344b967\",\"propertyData\":\"233\"}]', '{\"Led_OnOff\":{\"state\":\"3\"}}', null, '1da49d477ed37013', '2016-12-19 17:53:12', '{\"thingType\":\"7fc0cd6e14c9dcc1\",\"topic\":\"$mia\\/devices\\/\\/things\\/7fc0cd6e14c9dcc1\",\"propertyAction\":\"6976199dd4c75c46\",\"propertyDataAction\":\"236\"}');
INSERT INTO `tbl_scene_policy` VALUES ('36f2ffab59c0e185', '1', '1', null, null, '[{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature\",\"identifications\":0,\"value\":\"1\",\"datatype\":\"1\"}]', '[{\"temperature_func_alias\":[{\"name\":\"temperature\",\"value\":\"2\"}]}]', null, 'ERbZe2j3', '2017-06-05 16:26:52', '{\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$mia\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_scene_policy` VALUES ('3d866cf1e8be221b', '2', '0', '2017-06-06 10:19:55', null, '{\"startTime\":\"2017-06-06 10:19:55\",\"endTime\":null}', '[{\"temperature_func_alias\":[{\"name\":\"temperature\",\"value\":\"1\"}]}]', null, 'ERbZe2j3', '2017-06-06 10:17:08', '{\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$mia\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_scene_policy` VALUES ('4f6b98ab11f389be', 'gh', '1', null, null, '[{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature\",\"identifications\":0,\"value\":\"6\",\"datatype\":\"1\"}]', '[{\"temperature_func_alias\":[{\"name\":\"temperature\",\"value\":\"7\"}]}]', null, 'ERbZe2j3', '2017-05-05 14:10:06', '{\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$mia\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_scene_policy` VALUES ('7c9ff59e7f4ec844', 'zv', '1', '0000-00-00 00:00:00', null, '[{\"thing\":\"I9JP2CoTtLMHpc3a\",\"alias\":\"n\",\"key\":\"n\",\"identifications\":0,\"opcode\":0,\"value\":\"2\"},{\"thing\":\"vBQBscOe4zrkVN8f\",\"alias\":\"OpenCamera\",\"key\":\"photo\",\"identifications\":0,\"opcode\":0,\"value\":\"12\"},{\"thing\":\"I9JP2CoTtLMHpc3a\",\"alias\":\"k\",\"key\":\"k\",\"identifications\":1,\"opcode\":1,\"value\":\"2\"}]', '{\"n\":{\"n\":\"2\"}}', null, '9472a99064f22d77', '2017-02-16 16:42:21', '{\"thingType\":\"I9JP2CoTtLMHpc3a\",\"topic\":\"$mia\\/devices\\/\\/things\\/I9JP2CoTtLMHpc3a\"}');
INSERT INTO `tbl_scene_policy` VALUES ('7d53c38c327acb0d', '11', '1', null, null, '[{\"thing\":\"61fab8e179566d03\",\"alias\":\"LED_INIT\",\"key\":\"INIT\",\"identifications\":0,\"opcode\":0,\"value\":\"0\",\"property\":\"777f082dca5e3522\",\"propertyData\":\"294\"}]', '{\"LED_OPERATION\":{\"operation\":\"1\"}}', null, 'cc67d61c1229d1f9', '2016-12-21 13:56:57', '{\"thingType\":\"61fab8e179566d03\",\"topic\":\"$mia\\/devices\\/\\/things\\/61fab8e179566d03\",\"propertyAction\":\"57a40b0722d07b65\",\"propertyDataAction\":\"295\"}');
INSERT INTO `tbl_scene_policy` VALUES ('845ce24386fe0235', 'celve', '1', '0000-00-00 00:00:00', null, '{\"thing\": \"2efde7b788e41bf6\",\"alias\": \"led_init\",\"key\": \"dd\",\"identifications\":\"0\",\"opcode\":0,\"value\":\"1\"}', '{\"led_switch\": {\"gh\":\"3\"}}', null, '526b66e61049b512', '2016-12-19 13:59:24', '{\"thingType\": \"2efde7b788e41bf6\",\"topic\":\"$mia/devices//things/2efde7b788e41bf6\"}');
INSERT INTO `tbl_scene_policy` VALUES ('84689f9c7487bcfb', '4', '1', null, null, '[{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"property\":\"bbb\",\"identifications\":0,\"value\":\"aaa1\",\"datatype\":\"3\"}]', '[{\"\":[{\"name\":\"ddd\",\"value\":\"1\"}]}]', null, 'b19db2731e25e49d', '2017-05-26 16:28:00', '{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"topic\":\"$mia\\/devices\\/\\/things\\/Togu8BPT9Cqp9OeH\"}');
INSERT INTO `tbl_scene_policy` VALUES ('86ab6631f9114cdc', 'test', '1', '0000-00-00 00:00:00', null, '[{\"thing\":\"7fc0cd6e14c9dcc1\",\"alias\":\"Led_Init\",\"key\":\"switch\",\"identifications\":0,\"opcode\":0,\"value\":\"1\",\"property\":\"3dd254ab6344b967\",\"propertyData\":\"233\"}]', '{\"Led_OnOff\":{\"switch\":\"12\"}}', null, '0e9cc6895ecb4768', '2016-12-21 10:55:03', '{\"thingType\":\"7fc0cd6e14c9dcc1\",\"topic\":\"$mia\\/devices\\/\\/things\\/7fc0cd6e14c9dcc1\",\"propertyAction\":\"6976199dd4c75c46\",\"propertyDataAction\":\"234\"}');
INSERT INTO `tbl_scene_policy` VALUES ('8a050e3ddaff928e', '678', '1', null, null, '[{\"thing\":\"2efde7b788e41bf6\",\"alias\":\"led_init\",\"key\":\"dd\",\"identifications\":0,\"opcode\":0,\"value\":\"6\",\"property\":\"a5bf891d57291545\",\"propertyData\":\"284\"}]', '{\"led_switch\":{\"gh\":\"9\"}}', null, '6571ac5ba0f02ad6', '2016-12-19 16:32:27', '{\"thingType\":\"2efde7b788e41bf6\",\"topic\":\"$mia\\/devices\\/\\/things\\/2efde7b788e41bf6\",\"propertyAction\":\"da796c1fdeafd4eb\",\"propertyDataAction\":\"285\"}');
INSERT INTO `tbl_scene_policy` VALUES ('8c4a186ae124882b', 'n', '0', '2017-02-16 17:05:13', null, '{\"time\":null}', '{\"n\":{\"n\":\"2\"}}', null, '9472a99064f22d77', '2017-02-16 16:59:01', '{\"thingType\":\"I9JP2CoTtLMHpc3a\",\"topic\":\"$mia\\/devices\\/\\/things\\/I9JP2CoTtLMHpc3a\"}');
INSERT INTO `tbl_scene_policy` VALUES ('a0eea64ee7143105', '3', '1', null, null, '[{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"property\":\"bbb\",\"identifications\":0,\"value\":\"aaa1\",\"datatype\":\"3\"}]', '[{\"\":[{\"name\":\"ddd\",\"value\":\"1\"}]}]', null, 'b19db2731e25e49d', '2017-05-26 16:24:20', '{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"topic\":\"$mia\\/devices\\/\\/things\\/Togu8BPT9Cqp9OeH\"}');
INSERT INTO `tbl_scene_policy` VALUES ('ab9b6bff4a0638c2', 'fgt', '0', '2017-05-18 18:15:01', null, '{\"startTime\":\"2017-05-18 18:15:01\",\"endTime\":null}', '[{\"temperature_func_alias\":[{\"name\":\"temperature\",\"value\":\"4\"}]}]', null, 'ERbZe2j3', '2017-05-03 18:05:39', '{\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$mia\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_scene_policy` VALUES ('b0a251d4e69a5a7f', 'dss', '0', '2017-05-26 14:10:25', null, '{\"startTime\":\"2017-05-26 14:10:25\",\"endTime\":null}', '[{\"temperature_func_alias\":[{\"name\":\"temperature\",\"value\":\"3\"}]}]', null, 'ERbZe2j3', '2017-05-05 14:00:48', '{\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$mia\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_scene_policy` VALUES ('bccf227707d008d4', 'opop', '1', null, null, '[{\"thingType\":\"qxBmW9UiVfbtPq33\",\"property\":\"temperature\",\"identifications\":0,\"value\":\"1\",\"datatype\":\"1\"}]', '[{\"temperature_func_alias\":[{\"name\":\"temperature\",\"value\":\"1\"}]}]', null, 'ERbZe2j3', '2017-05-10 09:57:08', '{\"thingType\":\"qxBmW9UiVfbtPq33\",\"topic\":\"$mia\\/devices\\/\\/things\\/qxBmW9UiVfbtPq33\"}');
INSERT INTO `tbl_scene_policy` VALUES ('bcff9fa14e337a20', '2017', '1', '0000-00-00 00:00:00', null, '[{\"thing\":\"a735bf3cbfa6e321\",\"alias\":\"equipment_init\",\"key\":\"_init\",\"identifications\":0,\"opcode\":0,\"value\":\"0\",\"property\":\"bdbbc98fc6afa2ef\",\"propertyData\":\"321\"}]', '{\"equipment_operation\":{\"_operation\":\"1\"}}', null, 'lb58sEq6', '2017-01-03 10:44:37', '{\"thingType\":\"a735bf3cbfa6e321\",\"topic\":\"$mia\\/devices\\/\\/things\\/a735bf3cbfa6e321\",\"propertyAction\":\"6a604a8082ee6aba\",\"propertyDataAction\":\"322\"}');
INSERT INTO `tbl_scene_policy` VALUES ('cc435ec902935452', '12', '1', null, null, '[{\"thing\":\"4f7d7c08df742fc5\",\"alias\":\"INIT\",\"key\":\"init\",\"identifications\":0,\"opcode\":0,\"value\":\"0\",\"property\":\"1307184089260170\",\"propertyData\":\"304\"}]', '{\"OPERATION\":{\"operation\":\"1\"}}', null, '4a699d022af8e087', '2016-12-26 10:12:33', '{\"thingType\":\"4f7d7c08df742fc5\",\"topic\":\"$mia\\/devices\\/\\/things\\/4f7d7c08df742fc5\",\"propertyAction\":\"47d000345b60893b\",\"propertyDataAction\":\"305\"}');
INSERT INTO `tbl_scene_policy` VALUES ('f0173c263559dafd', '88', '1', '0000-00-00 00:00:00', null, '[{\"thing\":\"2b62a6ac47b782ee\",\"alias\":\"LED_INIT\",\"key\":\"init\",\"identifications\":0,\"opcode\":0,\"value\":\"0\",\"property\":\"2e101a4fcc27fbfe\",\"propertyData\":\"296\"}]', '{\"LED_OPERATION\":{\"operation\":\"1\"}}', null, '94b3cfe37944ee42', '2016-12-21 18:56:12', '{\"thingType\":\"2b62a6ac47b782ee\",\"topic\":\"$mia\\/devices\\/\\/things\\/2b62a6ac47b782ee\",\"propertyAction\":\"8534f38692372180\",\"propertyDataAction\":\"297\"}');
INSERT INTO `tbl_scene_policy` VALUES ('f460cfc54566a027', '二', '1', null, null, '{\"thing\":\"2efde7b788e41bf6\",\"alias\":\"led_init\",\"key\":\"dd\",\"identifications\":0,\"opcode\":0,\"value\":\"4\"}', '{\"led_switch\":{\"gh\":\"45\"}}', null, '428637b32c14459f', '2016-12-16 15:05:36', '{\"thingType\":\"2efde7b788e41bf6\",\"topic\":\"$mia\\/devices\\/\\/things\\/2efde7b788e41bf6\"}');
INSERT INTO `tbl_scene_policy` VALUES ('fc7dbc8ebc13e351', '2', '1', null, null, '[{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"property\":\"bbb\",\"identifications\":0,\"value\":\"aaa\",\"datatype\":\"3\"}]', '[{\"test\":[{\"name\":\"aaa\",\"value\":\"33\"}]}]', null, 'b19db2731e25e49d', '2017-05-25 17:19:17', '{\"thingType\":\"Togu8BPT9Cqp9OeH\",\"topic\":\"$mia\\/devices\\/\\/things\\/Togu8BPT9Cqp9OeH\"}');
