CREATE TABLE `tbl_auth_group` (
`id` int(64) NOT NULL AUTO_INCREMENT,
`title` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`status` tinyint(4) NULL DEFAULT 1,
`rules` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`isselect` tinyint(4) NULL DEFAULT 1 COMMENT '用户注册时是否可以选择 1 : 不能  2：能',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=19;

CREATE TABLE `tbl_auth_group_access` (
`uid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`group_id` int(11) NOT NULL,
INDEX `user_id` (`uid`),
INDEX `group_id` (`group_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_auth_rule` (
`id` smallint(6) NOT NULL AUTO_INCREMENT,
`name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`title` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`type` tinyint(4) NULL DEFAULT 1,
`status` tinyint(4) NULL DEFAULT NULL,
`condition` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`css` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`pid` tinyint(4) NULL DEFAULT NULL,
`sort` tinyint(4) NULL DEFAULT NULL,
`ishidden` tinyint(4) NULL DEFAULT NULL,
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=55;

CREATE TABLE `tbl_device_object` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`device_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物体名称',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_acl` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`scene_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对象场景',
`device_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`priority` int(5) NOT NULL COMMENT '优先级',
`permissin` tinyint(5) NOT NULL COMMENT '权限',
`action` tinyint(5) NOT NULL COMMENT '动作1:Pub,2:Sub,3:Pub/Sub',
`resource_scene` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源场景',
`resource_device` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品ID+设备ID',
`resource_thing` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物体',
`msg` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`msg_suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息后缀',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_board_info` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块索引',
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '•	模块型号：必选项，长度范围：1~64。支持中文、英文、数字、中划线、下划线',
`cpu_model` tinyint(1) NULL DEFAULT NULL COMMENT 'CPU型号',
`flash_capacity` int(2) NULL DEFAULT NULL COMMENT 'Flash容量',
`memory` int(2) NULL DEFAULT NULL COMMENT '内存',
`vender` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属厂家',
`create_user` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
`modify_user` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改用户',
`create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
`modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_city` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`code` int(11) NULL DEFAULT NULL,
`pid` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=394;

CREATE TABLE `tbl_iot_dev_group_rel` (
`groupid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`deviceid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
PRIMARY KEY (`groupid`, `deviceid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_device` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`name` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
`basename` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`sceneid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '场景ID',
`productid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属产品id',
`protocol` tinyint(4) NOT NULL COMMENT '协议',
`mac` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mac地址',
`groupid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属设备组',
`province` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`city` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`address` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`tlsswitch` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'tsl开关',
`tlsprotocol` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'TLS协议版本',
`tlsencrypt` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'TSL加密算法',
`tlscheck` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'TLS校验算法',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备描述',
`confpath` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`iotmodelconf` varchar(565) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
`createtime` datetime NOT NULL,
`identification` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备唯一表示',
`type` tinyint(5) NOT NULL DEFAULT 1 COMMENT '设备类型，1：网关，2：thing物体',
`thing_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '场景下设备关联的thing',
`llegal_mac` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否是黑名单mac,默认为0代表不是',
`longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
`latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
PRIMARY KEY (`id`) ,
INDEX `index_name` (`name`),
INDEX `index_mac` (`mac`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_device_basic` (
`deviceid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`wanmac` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`secret` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ffffffffffffffffffffffffffffffff,
`secret_bak` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ffffffffffffffffffffffffffffffff COMMENT '保存上次更新的secret',
`code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`citycode` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`region` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`fwversion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`apversion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`hardware` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`versionid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`type` tinyint(1) NULL DEFAULT 1 COMMENT '1：网关 2：Thing',
`devstate` tinyint(1) NULL DEFAULT 0,
`status` tinyint(1) NULL DEFAULT 2 COMMENT '0-离线，1-在线, 2-未激活',
`routerswitch` tinyint(4) NULL DEFAULT 0 COMMENT '路由开关，默认关闭',
`createuser` int(10) NULL DEFAULT NULL,
`createtime` datetime NULL DEFAULT NULL,
`logintime` datetime NULL DEFAULT NULL,
`upgradeno` int(5) NULL DEFAULT 0,
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`offlinetime` datetime NULL DEFAULT NULL,
PRIMARY KEY (`deviceid`) ,
INDEX `idx_devuserid` (`userid`),
INDEX `citycode` (`code`),
INDEX `mac` (`wanmac`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_device_dyn` (
`deviceid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`wanaddr` varchar(130) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`mask` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`gateway` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`dhcpswitch` tinyint(1) NULL DEFAULT NULL,
`startip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`endip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`leasetime` int(10) NOT NULL DEFAULT 3600,
`dnsserver1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`dnsserver2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`betaflag` tinyint(1) NULL DEFAULT 0,
`balancetime` tinyint(11) NULL DEFAULT NULL,
`addtime` tinyint(11) NULL DEFAULT NULL,
`onlinenum` int(10) NULL DEFAULT NULL,
`maxonline` int(10) NULL DEFAULT NULL,
`rebootnum` int(10) NULL DEFAULT NULL,
`upflux` bigint(10) NULL DEFAULT 0,
`downflux` bigint(10) NULL DEFAULT 0,
`totalflux` bigint(10) NULL DEFAULT 0,
`payload` float(10,2) NULL DEFAULT NULL,
`totalmem` int(10) NULL DEFAULT NULL,
`freemem` int(10) NULL DEFAULT NULL,
`hotspot` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`onlinetime` int(10) NULL DEFAULT NULL,
`portalid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`ssid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`deviceid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_device_group` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '组名',
`pid` int(11) NOT NULL DEFAULT 0,
`productid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属产品id',
`grouppath` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
`create_time` datetime NOT NULL COMMENT '创建时间',
`modify_time` datetime NOT NULL COMMENT '修改时间',
`level` tinyint(4) NOT NULL DEFAULT 1 COMMENT '设备组所处的层级',
`userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
PRIMARY KEY (`id`) ,
INDEX `index_name` (`name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=56;

CREATE TABLE `tbl_iot_gacl` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`priority` int(5) NOT NULL COMMENT '优先级',
`permissin` tinyint(5) NOT NULL COMMENT '权限',
`action` tinyint(5) NOT NULL COMMENT '动作1:Pub,2:Sub,3:Pub/Sub',
`msg` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_globalacl` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`scene_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对象场景',
`priority` int(5) NOT NULL COMMENT '优先级',
`permissin` tinyint(5) NOT NULL COMMENT '权限',
`action` tinyint(5) NOT NULL COMMENT '动作1:Pub,2:Sub,3:Pub/Sub',
`msg` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_interface_info` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '索引',
`board_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块ID',
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口名称',
`index` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口编号，只针对GPIO',
`type` tinyint(5) NULL DEFAULT NULL COMMENT '接口类型',
`create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
`modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '•	接口描述',
`conf` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '配置',
PRIMARY KEY (`id`) ,
INDEX `fk_tbl_iot_interface_info_tbl_iot_board_info1_idx` (`board_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='模块接口描述表';

CREATE TABLE `tbl_iot_log` (
`id` int(10) NOT NULL AUTO_INCREMENT,
`userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`content` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志内容',
`update_time` datetime NOT NULL COMMENT '操作时间',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=31
COMMENT='日志表';

CREATE TABLE `tbl_iot_module` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
`name` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块型号',
`flash` int(5) NULL DEFAULT NULL COMMENT 'flash容量',
`mem` int(5) NULL DEFAULT NULL COMMENT '总内存',
`vender` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属厂家',
`create_time` datetime NULL DEFAULT NULL,
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`cpu_model` tinyint(1) NULL DEFAULT 0 COMMENT '0：MTK 7620，1：MTK 7621，2：ATHEROS 9341，3：ATHEROS 9344',
`sys` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运行系统',
`isonlythng` tinyint(1) NULL DEFAULT 0 COMMENT '0：不是onlything,1:是onlything',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_policy` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表索引',
`param_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '控制点ID',
`condition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '策略条件',
`action` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '策略执行动作JSON格式，如\"thing\":\"空调ID\", \"action\":{\"Air_OnOff\":{\"switch\":1}}',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '策略名称',
`date_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
`target` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`id`) ,
INDEX `fk_tbl_iot_policy_tbl_iot_property_data1_idx` (`param_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='策略表';

CREATE TABLE `tbl_iot_product_category` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`pid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
`level` tinyint(4) NOT NULL DEFAULT 1 COMMENT '层级',
`order_field` tinyint(5) NOT NULL COMMENT '排序字段'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='产品分类表';

CREATE TABLE `tbl_iot_product_info` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '索引',
`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
`type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品类型',
`board_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块类型',
`diagram` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '示意图',
`create_user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
`modify_user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改用户',
`create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
`modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品类别',
`encoding` tinyint(1) NULL DEFAULT 0 COMMENT '编码方式 0：json,1:tlv',
`productconf` varchar(565) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品配置',
`publish` tinyint(1) NULL DEFAULT 0 COMMENT '是否发布0：否,1:是（审核中）,2:审核通过',
`crt` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品crt证书路径',
`key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品key证书路径',
`sdk` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sdk文件路径',
`link_interval` int(5) NULL DEFAULT 120 COMMENT '链路心跳间隔',
`data_eporting_interval` int(5) NULL DEFAULT 120 COMMENT '数据上报间隔时间',
PRIMARY KEY (`id`) ,
INDEX `index_name` (`name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='产品信息表';

CREATE TABLE `tbl_iot_product_policy` (
`product_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`policy_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
PRIMARY KEY (`product_id`, `policy_id`) ,
INDEX `fk_tbl_iot_product_policy_itbl_iot_product_info1_idx` (`product_id`),
INDEX `fk_tbl_iot_product_policy_tbl_iot_policy1_idx` (`policy_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_product_thing_relation` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '索引',
`product_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`interface_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`thing_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`conf` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品接口配置',
PRIMARY KEY (`id`) ,
INDEX `fk_tbl_iot_product_thing_relation_itbl_iot_product_info1_idx` (`product_id`),
INDEX `fk_tbl_iot_product_thing_relation_tbl_iot_interface_info1_idx` (`interface_id`),
INDEX `fk_tbl_iot_product_thing_relation_tbl_iot_thing_info1_idx` (`thing_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_property_data` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据点索引',
`product_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品ID',
`name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据点名称',
`tag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据点TAG值',
`type` tinyint(1) NULL DEFAULT NULL COMMENT '数据点类型\n默认为int类型。取值范围：[0：int，1：double，2：bool，3：string]',
`min_value` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据点最小值',
`max_value` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大值',
`max_length` int(11) NULL DEFAULT 0,
`def_value` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '默认值',
`mode` tinyint(1) NULL DEFAULT NULL COMMENT '读写方式',
`create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
`modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`alias` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余字段',
PRIMARY KEY (`id`) ,
INDEX `fk_tbl_iot_property_data_tbl_iot_thing_property1_idx` (`product_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_redis` (
`redis_ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
`redis_port` int(11) NULL DEFAULT NULL COMMENT '端口'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_scene` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`pid` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '场景名称',
`scenepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '场景路径',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '场景描述',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`type` tinyint(5) NULL DEFAULT 0 COMMENT '场景类型：0：家庭，1：智慧城市，2：智能交通，3：智慧工业',
`user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`level` tinyint(4) NOT NULL DEFAULT 1 COMMENT '场景所处的层级',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_scene_device` (
`id` int(10) NOT NULL AUTO_INCREMENT,
`deviceId` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备id',
`sceneId` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属场景id',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `tbl_iot_sys_defined` (
`userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
`title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统title',
`foo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统foo',
`logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统logo',
PRIMARY KEY (`userid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_thing_info` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '索引',
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Thing类型名',
`driver_path` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驱动存储路径',
`dll_path` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态库存储路径',
`create_user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
`modify_user` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改用户',
`create_time` datetime NULL DEFAULT NULL,
`modify_time` datetime NULL DEFAULT NULL,
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`type` tinyint(5) NULL DEFAULT 0 COMMENT 'Thing类型 [0：智能灯，1：空调，2：电视，3：冰箱，4：机床]',
`system` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运行系统',
`product_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品id',
`only_thing_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '同一个onlything,可以配置不同的系统',
PRIMARY KEY (`id`) ,
INDEX `createtime` (`create_time`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_thing_property` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Thing属性表索引',
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性说明',
`identity` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性标识',
`function` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能定义',
`type` tinyint(4) NULL DEFAULT 0 COMMENT '功能类型',
`create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
`modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能描述',
`product_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品ID',
`property_data_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据点ID',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_third_platform` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`url` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证url',
`token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
`crypt_type` tinyint(5) NOT NULL DEFAULT 0 COMMENT '数据加密模式0：明文，1：密文',
`encodeAESKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'encodeAESKey',
`push_time` int(5) NOT NULL DEFAULT 0 COMMENT '推送时间限制（秒）',
`push_data` int(5) NOT NULL DEFAULT 0 COMMENT '推送数据限制(个)',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`corpId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'corpId',
`productId` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_transn` (
`police_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '策略ID',
`condition_things` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条件thingtype',
`condition_device` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条件设备',
`action_things` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动作thingtype',
`action_device` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动作设备',
`request_msg` tinyint(5) NULL DEFAULT 1 COMMENT '接受信息方式',
`rulename` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则号',
PRIMARY KEY (`police_id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_user` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`createtime` datetime NULL DEFAULT NULL,
`userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_iot_vender` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`mark` int(10) NULL DEFAULT NULL,
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`create_time` datetime NULL DEFAULT NULL,
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `tbl_mobile_code` (
`mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`create_time` int(11) NOT NULL,
PRIMARY KEY (`mobile`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='手机验证码表';

CREATE TABLE `tbl_scene_policy` (
`id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表索引',
`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '策略名称',
`type` tinyint(5) NOT NULL DEFAULT 1 COMMENT '策略类型：1=定时策略，2=触发器策略',
`timer` datetime NULL DEFAULT NULL COMMENT '定时策略时间',
`endtimer` datetime NULL DEFAULT NULL COMMENT '定时策略结束时间',
`condition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '策略条件',
`action` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '策略执行动作JSON格式',
`description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`scene_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属场景',
`date_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
`target` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '策略目标',
PRIMARY KEY (`id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='场景策略表';

