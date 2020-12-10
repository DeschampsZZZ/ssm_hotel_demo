/*
Navicat MySQL Data Transfer

Source Server         : mysql1
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-10-27 20:15:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `orderNum` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '订单编号',
  `orderTime` datetime DEFAULT NULL COMMENT '订单时间',
  `customer` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '入住客户',
  `idCardNum` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `phoneNum` int(12) DEFAULT NULL COMMENT '手机号',
  `comeTime` datetime DEFAULT NULL COMMENT '入住时间',
  `departureTime` datetime DEFAULT NULL COMMENT '退房时间',
  `orderPrice` double(255,2) DEFAULT NULL COMMENT '订单价格',
  `roomId` int(11) DEFAULT NULL COMMENT '房间id',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2020102001', '2020-10-20 00:00:00', '张三', '123456199001011234', '1234567891', '2020-10-20 00:00:00', '2020-10-27 00:00:00', '686.00', '22');
INSERT INTO `orders` VALUES ('2', '2020102002', '2020-10-20 00:00:00', '李四', '456789199001011234', '123456', '2020-10-20 00:00:00', '2020-10-22 00:00:00', '478.00', '15');
INSERT INTO `orders` VALUES ('3', '2020102231357', '2020-10-22 12:04:35', '王小', '137555545354345', '123456', '2020-10-22 14:00:00', '2020-10-24 14:00:00', '198.00', '6');
INSERT INTO `orders` VALUES ('7', '2020102208488', '2020-10-22 12:42:55', '小小', '75786786767', '53533', '2020-10-22 14:00:00', '2020-10-23 14:00:00', '99.00', '5');
INSERT INTO `orders` VALUES ('8', '2020102254782', '2020-10-22 12:51:46', '阿达', '57887387', '34353543', '2020-10-22 14:00:00', '2020-10-23 14:00:00', '159.00', '7');
INSERT INTO `orders` VALUES ('9', '2020102207472', '2020-10-22 13:00:04', '阿达', '57887387', '34353543', '2020-10-22 14:00:00', '2020-10-23 14:00:00', '159.00', '7');
INSERT INTO `orders` VALUES ('10', '2020102661537', '2020-10-26 18:41:48', '王小', '75786786767', '53533', '2020-10-26 14:00:00', '2020-10-27 00:00:00', '99.00', '5');
INSERT INTO `orders` VALUES ('11', '2020102747857', '2020-10-27 09:06:23', '王小', '75786786767', '123456', '2020-10-27 14:00:00', '2020-10-30 00:00:00', '717.00', '17');
INSERT INTO `orders` VALUES ('13', '2020102754156', '2020-10-27 20:09:28', '阿达f', '252545457', '77123', '2020-10-27 14:00:00', '2020-10-29 14:00:00', '198.00', '2');
INSERT INTO `orders` VALUES ('14', '2020102730560', '2020-10-27 20:09:45', '小小gdfgfd', '75786786767', '53533', '2020-10-27 14:00:00', '2020-10-29 00:00:00', '198.00', '4');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '查询订单', '/orders/findAll.do');
INSERT INTO `permission` VALUES ('2', '查看订单详情', '/orders/findById.do');
INSERT INTO `permission` VALUES ('3', '更新订单', '/orders/update.do');
INSERT INTO `permission` VALUES ('4', '添加订单', '/orders/addOrder.do');
INSERT INTO `permission` VALUES ('5', '删除订单', '/orders/deleteById.do');
INSERT INTO `permission` VALUES ('6', '查询房间', '/room/findAll.do');
INSERT INTO `permission` VALUES ('7', '查看房间详情', '/room/findById.do');
INSERT INTO `permission` VALUES ('8', '删除房间', '/room/deleteById.do');
INSERT INTO `permission` VALUES ('9', '批量删除房间', '/room/deleteByIdStr.do');
INSERT INTO `permission` VALUES ('10', '添加房间', '/room/addRoom.do');
INSERT INTO `permission` VALUES ('11', '更新房间', '/room/update.do');
INSERT INTO `permission` VALUES ('12', '入住办理', '/room/findAllRoom.do');
INSERT INTO `permission` VALUES ('13', '离店', '/room/updateRoomState1.do');
INSERT INTO `permission` VALUES ('14', '查询用户', '/user/findAll.do');
INSERT INTO `permission` VALUES ('15', '给用户添加角色', '/user/addRoleToUser.do');
INSERT INTO `permission` VALUES ('16', '添加用户', '/user/save.do');
INSERT INTO `permission` VALUES ('17', '查询角色', '/role/findAll.do');
INSERT INTO `permission` VALUES ('18', '添加角色', '/role/save.do');
INSERT INTO `permission` VALUES ('19', '查询权限', '/permission/findAll.do');

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------
INSERT INTO `persistent_logins` VALUES ('staff', '62e1A44UGRbbn8gUiUDDRA==', '0qv5kFN2a/kpOJ+jhggu2A==', '2020-10-27 16:50:50');
INSERT INTO `persistent_logins` VALUES ('staff', 'TllL0UHzc9VPFfmg2vqtGw==', 'xJJQAoM9LzftuQFjoRVvmA==', '2020-10-27 16:41:27');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) DEFAULT NULL,
  `roleDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ADMIN', '系统管理员');
INSERT INTO `role` VALUES ('2', 'USER', '用户');
INSERT INTO `role` VALUES ('3', 'BOSS', '老板');
INSERT INTO `role` VALUES ('4', 'STAFF', '员工');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `permissionId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`permissionId`,`roleId`) USING BTREE,
  KEY `r_id` (`roleId`) USING BTREE,
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('2', '1');
INSERT INTO `role_permission` VALUES ('3', '1');
INSERT INTO `role_permission` VALUES ('4', '1');
INSERT INTO `role_permission` VALUES ('5', '1');
INSERT INTO `role_permission` VALUES ('6', '1');
INSERT INTO `role_permission` VALUES ('7', '1');
INSERT INTO `role_permission` VALUES ('8', '1');
INSERT INTO `role_permission` VALUES ('9', '1');
INSERT INTO `role_permission` VALUES ('10', '1');
INSERT INTO `role_permission` VALUES ('11', '1');
INSERT INTO `role_permission` VALUES ('12', '1');
INSERT INTO `role_permission` VALUES ('13', '1');
INSERT INTO `role_permission` VALUES ('14', '1');
INSERT INTO `role_permission` VALUES ('15', '1');
INSERT INTO `role_permission` VALUES ('16', '1');
INSERT INTO `role_permission` VALUES ('17', '1');
INSERT INTO `role_permission` VALUES ('18', '1');
INSERT INTO `role_permission` VALUES ('19', '1');
INSERT INTO `role_permission` VALUES ('14', '2');
INSERT INTO `role_permission` VALUES ('15', '2');
INSERT INTO `role_permission` VALUES ('16', '2');
INSERT INTO `role_permission` VALUES ('17', '2');
INSERT INTO `role_permission` VALUES ('18', '2');
INSERT INTO `role_permission` VALUES ('19', '2');
INSERT INTO `role_permission` VALUES ('1', '3');
INSERT INTO `role_permission` VALUES ('2', '3');
INSERT INTO `role_permission` VALUES ('3', '3');
INSERT INTO `role_permission` VALUES ('4', '3');
INSERT INTO `role_permission` VALUES ('5', '3');
INSERT INTO `role_permission` VALUES ('6', '3');
INSERT INTO `role_permission` VALUES ('7', '3');
INSERT INTO `role_permission` VALUES ('8', '3');
INSERT INTO `role_permission` VALUES ('9', '3');
INSERT INTO `role_permission` VALUES ('10', '3');
INSERT INTO `role_permission` VALUES ('11', '3');
INSERT INTO `role_permission` VALUES ('12', '3');
INSERT INTO `role_permission` VALUES ('13', '3');
INSERT INTO `role_permission` VALUES ('14', '3');
INSERT INTO `role_permission` VALUES ('15', '3');
INSERT INTO `role_permission` VALUES ('16', '3');
INSERT INTO `role_permission` VALUES ('1', '4');
INSERT INTO `role_permission` VALUES ('2', '4');
INSERT INTO `role_permission` VALUES ('3', '4');
INSERT INTO `role_permission` VALUES ('4', '4');
INSERT INTO `role_permission` VALUES ('6', '4');
INSERT INTO `role_permission` VALUES ('7', '4');
INSERT INTO `role_permission` VALUES ('11', '4');
INSERT INTO `role_permission` VALUES ('12', '4');
INSERT INTO `role_permission` VALUES ('13', '4');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `roomId` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间id',
  `roomType` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '房间类型',
  `roomNumber` int(11) DEFAULT NULL COMMENT '房间号',
  `roomState` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '房间状态',
  `roomPrice` double(10,2) DEFAULT NULL COMMENT '房间价格',
  PRIMARY KEY (`roomId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1', '单人间', '101', '空房', '99.00');
INSERT INTO `room` VALUES ('2', '单人间', '102', '住人', '99.00');
INSERT INTO `room` VALUES ('3', '单人间', '103', '空房', '99.00');
INSERT INTO `room` VALUES ('4', '单人间', '104', '住人', '99.00');
INSERT INTO `room` VALUES ('5', '单人间', '105', '空房', '99.00');
INSERT INTO `room` VALUES ('6', '单人间', '106', '空房', '99.00');
INSERT INTO `room` VALUES ('7', '单人间', '107', '空房', '99.00');
INSERT INTO `room` VALUES ('8', '单人间', '108', '空房', '99.00');
INSERT INTO `room` VALUES ('9', '标准间', '201', '空房', '199.00');
INSERT INTO `room` VALUES ('10', '标准间', '202', '空房', '199.00');
INSERT INTO `room` VALUES ('11', '标准间', '203', '空房', '199.00');
INSERT INTO `room` VALUES ('12', '标准间', '204', '空房', '199.00');
INSERT INTO `room` VALUES ('13', '标准间', '205', '空房', '199.00');
INSERT INTO `room` VALUES ('14', '标准间', '206', '空房', '199.00');
INSERT INTO `room` VALUES ('15', '大床房', '301', '空房', '239.00');
INSERT INTO `room` VALUES ('16', '大床房', '302', '空房', '239.00');
INSERT INTO `room` VALUES ('17', '大床房', '303', '空房', '239.00');
INSERT INTO `room` VALUES ('18', '大床房', '304', '空房', '239.00');
INSERT INTO `room` VALUES ('19', '大床房', '305', '空房', '239.00');
INSERT INTO `room` VALUES ('20', '大床房', '306', '空房', '239.00');
INSERT INTO `room` VALUES ('21', '套间', '401', '空房', '359.00');
INSERT INTO `room` VALUES ('22', '套间', '402', '空房', '359.00');
INSERT INTO `room` VALUES ('23', '套间', '403', '空房', '359.00');
INSERT INTO `room` VALUES ('24', '套间', '404', '空房', '359.00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '状态0 未开启 1 开启',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$2a$10$ppOuBQy6syQyEnh//xcUne61HPUv73hQUesmzzyZRii4X0K/peh9O', '123456', '123456@qq.com', '1');
INSERT INTO `users` VALUES ('2', 'staff', '$2a$10$5W5rDuwNeonc/.C5RvON8OJ7zhMkbAkXJz1LJtnoCdjuxuDvVW0SS', '123456', 'qwe@q.com', '1');
INSERT INTO `users` VALUES ('3', 'boss', '$2a$10$qp5sPInW3kx5tCttUever.ni6jGo48RofeLqP92rSAMrSBkfJ0KRe', '34353543', '1234567@qq.com', '1');
INSERT INTO `users` VALUES ('4', 'user', '$2a$10$KHcJDOvrSwfW4nw8owfy9OCvW0x2G4wicKi3Fsiu8NlpAImHBYiPa', '123456', '789520@qq.com', '1');

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`) USING BTREE,
  KEY `roleId` (`roleId`) USING BTREE,
  CONSTRAINT `users_role_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_role_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('1', '1');
INSERT INTO `users_role` VALUES ('3', '3');
INSERT INTO `users_role` VALUES ('2', '4');
