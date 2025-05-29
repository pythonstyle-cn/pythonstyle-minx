/*
Navicat MySQL Data Transfer

Source Server         : 47.97.222.35-python
Source Server Version : 80040
Source Host           : 47.97.222.35:3306
Source Database       : db_pythonstyle_mixins_demo

Target Server Type    : MYSQL
Target Server Version : 80040
File Encoding         : 65001

Date: 2024-12-11 17:02:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_user`;
CREATE TABLE `sys_admin_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `idx_sys_admin_user__user_id` (`user_id`) USING BTREE,
  CONSTRAINT `fk_sys_admin_user__user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `sys_admin_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_admin_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='后台用户扩展表';

-- ----------------------------
-- Records of sys_admin_user
-- ----------------------------
INSERT INTO `sys_admin_user` VALUES ('1', '1');
INSERT INTO `sys_admin_user` VALUES ('2', '2');
INSERT INTO `sys_admin_user` VALUES ('5', '3');
INSERT INTO `sys_admin_user` VALUES ('6', '4');
INSERT INTO `sys_admin_user` VALUES ('7', '7');
INSERT INTO `sys_admin_user` VALUES ('8', '10');

-- ----------------------------
-- Table structure for sys_attachment
-- ----------------------------
DROP TABLE IF EXISTS `sys_attachment`;
CREATE TABLE `sys_attachment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  `filename` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件名称',
  `filepath` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件路径',
  `filesize` int NOT NULL DEFAULT '0' COMMENT '文件大小',
  `fileext` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件后缀',
  `downloads` int NOT NULL DEFAULT '0' COMMENT '下载次数',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上传IP',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态 -0 正常 1-已删除',
  `authcode` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '校验码',
  PRIMARY KEY (`id`,`authcode`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_attachment
-- ----------------------------
INSERT INTO `sys_attachment` VALUES ('17', '1', '科技感登录页.png', '/static/uploadfiles\\2a9f04ba4dcff255183c2431471eabf7f6cea98c5b6067aa31918ca744df34ff.png', '642296', 'png', '0', '2024-11-03 01:51:54', '127.0.0.1', '0', '02fe296de3c6f31fe8cac57156fdf255');
INSERT INTO `sys_attachment` VALUES ('18', '1', '科技感登录页.png', '/static/uploadfiles\\0d71f48e05bd13d4e432eb6ed6c6a0f535a6e6ee6d12bee3e70a72e05f6f6b25.png', '642296', 'png', '0', '2024-11-03 01:51:54', '127.0.0.1', '0', '02fe296de3c6f31fe8cac57156fdf255');
INSERT INTO `sys_attachment` VALUES ('19', '1', '20241016145220B33517.png', '/static/uploadfiles\\bf15c46c4a7134b853e1ca2502fedb34db6519bb4883b7a5e32a0f40321a3c39.png', '201294', 'png', '0', '2024-11-03 01:51:54', '127.0.0.1', '0', '02fe296de3c6f31fe8cac57156fdf255');
INSERT INTO `sys_attachment` VALUES ('20', '1', '123.png', '/static/uploadfiles\\a483a06318e8ac440fe1b56b552a1acd72cb446582096a41371027e231102640.png', '421225', 'png', '0', '2024-11-03 01:51:54', '127.0.0.1', '0', '02fe296de3c6f31fe8cac57156fdf255');
INSERT INTO `sys_attachment` VALUES ('21', '1', 'bus.jpg', '/static/uploadfiles\\86d0c52b9854549ba12de27136a76707e30a46ef1eefdab0abec3bed0e44a2b4.jpg', '361556', 'jpg', '0', '2024-11-03 11:54:28', '127.0.0.1', '0', '3f1ad76984f17702a4b6184575d98c7f');
INSERT INTO `sys_attachment` VALUES ('22', '1', 'bus.jpg', '/static/uploadfiles\\05ffb8bad2c2e4a2ea494ce581b26af261ff8e111c11efa47ae7f25182bf7317.jpg', '361556', 'jpg', '0', '2024-11-04 03:33:01', '127.0.0.1', '0', 'cd5725e556a50496239e1be5bd25f8b7');
INSERT INTO `sys_attachment` VALUES ('23', '1', '20241016145220B33517.png', '/static/uploadfiles\\76651ebd5756f91fd85fbedc6d89268c6c11941d4332440a9d0cf4fa07b98625.png', '201294', 'png', '0', '2024-11-04 03:36:36', '127.0.0.1', '0', '14f92f36d834a018cb8434d192c6f88c');
INSERT INTO `sys_attachment` VALUES ('24', '1', '未标题-2.png', '/static/uploadfiles\\a129fc9791dad4827c6786b051c443426f396d073a3c2c60253313c00c4a11f5.png', '239030', 'png', '0', '2024-11-04 03:40:37', '127.0.0.1', '0', '50edf6ebb6c8c5a7dae99eaf73b71faf');
INSERT INTO `sys_attachment` VALUES ('25', '1', '未标题-3.png', '/static/uploadfiles\\9f6c28b8d4d162412e795aca30628ee0b1a05bb9124046c742315328513f0254.png', '231798', 'png', '0', '2024-11-04 04:10:50', '127.0.0.1', '0', '47fdc9a6cb5a10a457a9c15a6148b2f1');
INSERT INTO `sys_attachment` VALUES ('26', '1', '未标题-4.png', '/static/uploadfiles\\200f5ea5fa8a52ae79cca87280055405512eb50d2f6751147d9f2f6c0270ed67.png', '215271', 'png', '0', '2024-11-04 06:30:59', '127.0.0.1', '0', '16a2b0e5decadf155bf3de825582aa1f');
INSERT INTO `sys_attachment` VALUES ('27', '1', '微信图片_20230630110928.png', '/static/uploadfiles\\c01a0364d4e593fd24131f5528a9f999882ca369478f32ccd5508563353387fe.png', '711893', 'png', '0', '2024-11-05 03:17:45', '127.0.0.1', '0', 'b8f50ec0a13a8ce4fe71dc86dc026732');
INSERT INTO `sys_attachment` VALUES ('28', '1', '科技感登录页.png', '/static/uploadfiles\\775b222fbd5573301f1983770d943c385e2dc0638d8cf204812032ab28a29972.png', '642296', 'png', '0', '2024-11-05 06:11:52', '127.0.0.1', '0', '5b13e06ddaa75e6dfd511f0c0c983af8');
INSERT INTO `sys_attachment` VALUES ('29', '1', '未标题-4.png', '/static/uploadfiles\\dcec574773e76bf6bb5e464de84da2a8da4c94b377854a12053b4021740b953a.png', '215271', 'png', '0', '2024-11-05 06:11:52', '127.0.0.1', '0', '5b13e06ddaa75e6dfd511f0c0c983af8');
INSERT INTO `sys_attachment` VALUES ('30', '1', '微信图片_20241018182157.jpg', '/static/uploadfiles\\5a47cba05b09c3ff8d4b84dc123d3d8597172cddac29a9fe4edd1d9ddf92e2d7.jpg', '1120592', 'jpg', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('31', '1', 'bus.jpg', '/static/uploadfiles\\6fca734e8ae9ced21075af44359786c143da5847f0b2a498d5ebe0086f5df16e.jpg', '361556', 'jpg', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('32', '1', '未标题-2.png', '/static/uploadfiles\\f6894a00779871ee9a66a0d9509e58d28f2c17b54fd72a8e8d616f43d2d4688a.png', '239030', 'png', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('33', '1', '未标题-4.png', '/static/uploadfiles\\adaebc2dc6e57c2fdf24c5b70cc26e1e43cd1722165f0e99ba99a93018a92079.png', '215271', 'png', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('34', '1', '未标题-1.png', '/static/uploadfiles\\f6c6acf3fa1256a1233aa143ceb722cde8b37a6c32ec7a7c19b7a50f2c2d4b13.png', '159196', 'png', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('35', '1', '未标题-3.png', '/static/uploadfiles\\f7e172502a5c320a1b1d07a617510039efada650ee18c8738344cb0840497b6b.png', '231798', 'png', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('36', '1', '未标题-3.png', '/static/uploadfiles\\e7d9a41f1041cd1a09dc8ebf85340d0f947bc6989565804878fc331ffb32a122.png', '231798', 'png', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('37', '1', '未标题-4.png', '/static/uploadfiles\\9894f468a0dc996f31ade84b012041ea1fe00c77a33f317ec0d6696bf9fbb7b1.png', '215271', 'png', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('38', '1', 'bus.jpg', '/static/uploadfiles\\4974f9aaa798de8119f99519b115ce5ee270e4a5dfb9e0ec2128281da8fd1b9b.jpg', '361556', 'jpg', '0', '2024-11-05 15:28:49', '127.0.0.1', '0', '2041a4be7d82810b3ad92a8e15d5796a');
INSERT INTO `sys_attachment` VALUES ('39', '1', '未标题-3.png', '/static/uploadfiles\\93167719622ce6e4d48d753dcb4defeeb50025abd094a44dc9493ce942e6f623.png', '231798', 'png', '0', '2024-11-08 19:03:31', '127.0.0.1', '0', '3b518b77200821e89a94bec440f21bb3');
INSERT INTO `sys_attachment` VALUES ('40', '1', 'bus.jpg', '/static/uploadfiles\\e8c5b00c9d97f7de66333d4ca16b0263182e2e0dc403c16446ad5316e2734393.jpg', '361556', 'jpg', '0', '2024-11-08 20:33:26', '127.0.0.1', '0', 'e9b274e74b0d8e3750fcbe6437cb46a1');
INSERT INTO `sys_attachment` VALUES ('41', '1', '03 项目模板.rar', '/static/uploadfiles\\04c2db3ad9a1d10bc51540e53ebf330827415a273e691398233d3363d22ef802.rar', '75520', 'rar', '0', '2024-11-13 19:55:29', '127.0.0.1', '0', '8e6acd5d5f92bf92ff58490b32a7f1db');
INSERT INTO `sys_attachment` VALUES ('42', '1', '123.png', '/static/uploadfiles\\b4efb9b5a69f3248df6fa9041e90b92f90f9e9fbe8330a9b4e65ab796dc89c5c.png', '421225', 'png', '0', '2024-11-13 19:55:29', '127.0.0.1', '0', '8e6acd5d5f92bf92ff58490b32a7f1db');
INSERT INTO `sys_attachment` VALUES ('43', '1', 'create_and_upload_files.zip', '/static/uploadfiles\\1af00195ddd5ba6f5629c7e4cd45e28d0e0d6961d5cc1e86e89146788baff822.zip', '1996', 'zip', '0', '2024-11-13 19:55:29', '127.0.0.1', '0', '8e6acd5d5f92bf92ff58490b32a7f1db');
INSERT INTO `sys_attachment` VALUES ('44', '1', 'create_and_upload_files.zip', '/static/uploadfiles\\301f9de87893c4a5db555eae654e26d119c45e452fa8706178065dd57586b957.zip', '1996', 'zip', '0', '2024-11-13 19:55:29', '127.0.0.1', '0', '8e6acd5d5f92bf92ff58490b32a7f1db');
INSERT INTO `sys_attachment` VALUES ('45', '1', '线上演示.png', '/static/uploadfiles\\d9cb5c82178aff4c2b0dcd74f24a39594b385df98e28a39786fab7a9f1695ab4.png', '4965', 'png', '0', '2024-11-29 09:58:56', '127.0.0.1', '0', '65c1cb9d4a1c36b794509515cb5acc8d');
INSERT INTO `sys_attachment` VALUES ('46', '1', '登录.png', '/static/uploadfiles\\a89dec731347b886671751e2831f554964594e2cbf6b857b9b4d35247b4d273f.png', '213294', 'png', '0', '2024-11-29 09:58:56', '127.0.0.1', '0', '65c1cb9d4a1c36b794509515cb5acc8d');
INSERT INTO `sys_attachment` VALUES ('47', '1', '线上演示.png', '/static/uploadfiles\\2f890ba59764793499c0453a1a2d3e32c00e340f0957e1871aeafb981cc2e84e.png', '4965', 'png', '0', '2024-11-29 09:58:56', '127.0.0.1', '0', '65c1cb9d4a1c36b794509515cb5acc8d');

-- ----------------------------
-- Table structure for sys_custom_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_custom_user`;
CREATE TABLE `sys_custom_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `custom_user_id` (`user_id`) USING BTREE,
  KEY `idx_sys_custom_user__user_id` (`user_id`) USING BTREE,
  CONSTRAINT `sys_custom_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='会员扩展表';

-- ----------------------------
-- Records of sys_custom_user
-- ----------------------------
INSERT INTO `sys_custom_user` VALUES ('2', '6');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `path` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '部门名称',
  `listorder` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_user` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb3 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', 'PythonStyle科技', '0', 'PythonStyle', '15888888888', '924965282@139.com', '0', '0', 'admin', '2023-08-06 19:26:25', '', '2024-12-02 14:06:48');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳分公司', '1', 'thinkstyle', '15888888888', 'thinkstyle@139.com', '0', '0', 'admin', '2023-08-06 19:26:25', '', '2024-04-28 11:44:50');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', 'thinkpython', '15888888888', 'ry@qq.com', '0', '1', 'admin', '2023-08-06 19:26:25', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', 'thinkpython', '15888888888', 'thinkstyle@139.com', '0', '0', 'admin', '2023-08-06 19:26:25', '', '2024-04-28 11:44:50');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', 'thinkpython', '15888888888', 'thinkstyle@139.com', '1', '0', 'admin', '2023-08-06 19:26:25', '', '2024-04-28 11:44:50');
INSERT INTO `sys_dept` VALUES ('111', '0', '0', '感定将积组', '72', 'ali', '18161151172', 'k.whwzhz@qq.com', '0', '1', '', '2024-04-11 14:02:42', '', null);
INSERT INTO `sys_dept` VALUES ('112', '0', '0', '几信么物在', '96', 'ad', '13294629581', 'b.ppkvegb@qq.com', '1', '1', '', '2024-04-11 14:02:42', '', null);
INSERT INTO `sys_dept` VALUES ('113', '104', '0,100,101,104', '测试部门', '96', 'ad', '13294629581', 'thinkstyle@139.com', '0', '0', '', '2024-04-11 14:09:11', '', '2024-04-28 11:44:50');
INSERT INTO `sys_dept` VALUES ('114', '111', '0,111', '几信么物在', '96', 'ad', '13294629581', 'b.ppkvegb@qq.com', '0', '1', '', '2024-04-11 14:09:11', '', null);
INSERT INTO `sys_dept` VALUES ('115', '114', '0,111,114', '几信么物在', '96', 'ad', '13294629581', 'b.ppkvegb@qq.com', '0', '0', '', '2024-04-11 14:09:11', '', null);
INSERT INTO `sys_dept` VALUES ('116', '0', '0', 'test', '1', 'tset', '15190909090', '1@qq.com', '0', '1', '', '2024-04-19 00:33:43', '', null);
INSERT INTO `sys_dept` VALUES ('117', '0', '0', 'test', '1', 'tset', '15190909090', '1@qq.com', '0', '1', '', '2024-04-19 00:33:43', '', null);
INSERT INTO `sys_dept` VALUES ('118', '0', '0', 'test', '1', 'tset', '15190909090', '1@qq.com', '0', '1', '', '2024-04-19 00:33:43', '', null);
INSERT INTO `sys_dept` VALUES ('119', '0', '0', 'test', '1', 'test', '15180809092', '1@qq.com', '0', '1', '', '2024-04-19 00:33:43', '', null);
INSERT INTO `sys_dept` VALUES ('120', '115', '0,111,114,115', 'tst', '1', 'test', '16189890909', null, '0', '1', '', '2024-04-19 00:33:43', '', null);
INSERT INTO `sys_dept` VALUES ('121', '103', '0,100,101,103', '灌灌灌灌灌', '1', '方法', null, null, '0', '1', '', '2024-04-21 06:02:00', '', null);
INSERT INTO `sys_dept` VALUES ('122', '101', '0,100,101,103', '通天塔', '1', '', '', '', '0', '1', '', '2024-04-21 06:02:00', '', '2024-04-21 06:02:00');
INSERT INTO `sys_dept` VALUES ('123', '0', '0', 'trstttt', '1', 'testst', null, null, '0', '1', '', '2024-04-30 11:40:18', '', null);
INSERT INTO `sys_dept` VALUES ('124', '113', '0,100,101,104,113', 'test', '1', 'terst', 'test', 'test', '0', '0', '', '2024-05-07 10:20:55', '', null);
INSERT INTO `sys_dept` VALUES ('125', '0', '0', 'test', '1', 'test', 'test', 'set', '0', '1', '', '2024-06-25 18:23:02', '', null);
INSERT INTO `sys_dept` VALUES ('126', '100', '0,100', 'test方法', '1', null, null, null, '0', '1', '', '2024-06-25 18:23:02', '', null);
INSERT INTO `sys_dept` VALUES ('127', '126', '0,100,126', '呃呃呃呃', '1', '', '', '', '0', '1', '', '2024-06-25 18:23:02', '', '2024-06-25 18:23:02');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `ip_address` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录地址',
  `browser` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备浏览器',
  `os` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `return_code` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '返回状态码',
  `create_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('1', 'admin', '127.0.0.1', '', '\"Microsoft Edge\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:08:59');
INSERT INTO `sys_login_log` VALUES ('2', 'admin', '127.0.0.1', '', '\"Microsoft Edge\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:08:59');
INSERT INTO `sys_login_log` VALUES ('3', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:20:10');
INSERT INTO `sys_login_log` VALUES ('4', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '1', '1004', '2024-04-17 11:31:32');
INSERT INTO `sys_login_log` VALUES ('5', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '1', '1004', '2024-04-17 11:31:32');
INSERT INTO `sys_login_log` VALUES ('6', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '1', '1004', '2024-04-17 11:31:32');
INSERT INTO `sys_login_log` VALUES ('7', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '1', '1004', '2024-04-17 11:34:35');
INSERT INTO `sys_login_log` VALUES ('8', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:34:35');
INSERT INTO `sys_login_log` VALUES ('9', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:36:26');
INSERT INTO `sys_login_log` VALUES ('10', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '1', '1001', '2024-04-17 11:43:56');
INSERT INTO `sys_login_log` VALUES ('11', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '1', '1003', '2024-04-17 11:43:56');
INSERT INTO `sys_login_log` VALUES ('12', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:45:16');
INSERT INTO `sys_login_log` VALUES ('13', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:47:09');
INSERT INTO `sys_login_log` VALUES ('14', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:50:02');
INSERT INTO `sys_login_log` VALUES ('15', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:50:59');
INSERT INTO `sys_login_log` VALUES ('16', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:50:59');
INSERT INTO `sys_login_log` VALUES ('17', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:50:59');
INSERT INTO `sys_login_log` VALUES ('18', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 11:56:48');
INSERT INTO `sys_login_log` VALUES ('19', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '1', '1001', '2024-04-17 12:06:44');
INSERT INTO `sys_login_log` VALUES ('20', 'test', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 12:10:53');
INSERT INTO `sys_login_log` VALUES ('21', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-17 12:11:48');
INSERT INTO `sys_login_log` VALUES ('22', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-18 04:17:01');
INSERT INTO `sys_login_log` VALUES ('23', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"123\", \"Not:A-Brand\";v=\"8\", \"Chromium\";v=\"123\"', '\"Windows\"', '0', '200', '2024-04-18 10:01:51');
INSERT INTO `sys_login_log` VALUES ('24', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-19 00:33:43');
INSERT INTO `sys_login_log` VALUES ('25', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-21 06:02:00');
INSERT INTO `sys_login_log` VALUES ('26', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-22 01:45:49');
INSERT INTO `sys_login_log` VALUES ('27', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-24 23:48:20');
INSERT INTO `sys_login_log` VALUES ('28', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-25 15:45:20');
INSERT INTO `sys_login_log` VALUES ('29', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '1', '1001', '2024-04-25 23:36:32');
INSERT INTO `sys_login_log` VALUES ('30', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-25 23:36:32');
INSERT INTO `sys_login_log` VALUES ('31', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 03:17:24');
INSERT INTO `sys_login_log` VALUES ('32', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 06:21:02');
INSERT INTO `sys_login_log` VALUES ('33', 'chinacsj', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 06:47:11');
INSERT INTO `sys_login_log` VALUES ('34', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 11:20:11');
INSERT INTO `sys_login_log` VALUES ('35', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 11:44:50');
INSERT INTO `sys_login_log` VALUES ('36', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 11:44:50');
INSERT INTO `sys_login_log` VALUES ('37', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 16:04:12');
INSERT INTO `sys_login_log` VALUES ('38', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-28 17:21:26');
INSERT INTO `sys_login_log` VALUES ('39', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-04-30 11:05:04');
INSERT INTO `sys_login_log` VALUES ('40', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 10:33:50');
INSERT INTO `sys_login_log` VALUES ('41', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 10:41:22');
INSERT INTO `sys_login_log` VALUES ('42', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 16:44:08');
INSERT INTO `sys_login_log` VALUES ('43', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 16:44:08');
INSERT INTO `sys_login_log` VALUES ('44', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 16:44:08');
INSERT INTO `sys_login_log` VALUES ('45', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 16:44:08');
INSERT INTO `sys_login_log` VALUES ('46', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 16:49:33');
INSERT INTO `sys_login_log` VALUES ('47', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 16:51:16');
INSERT INTO `sys_login_log` VALUES ('48', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 17:01:23');
INSERT INTO `sys_login_log` VALUES ('49', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 17:10:14');
INSERT INTO `sys_login_log` VALUES ('50', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 17:10:14');
INSERT INTO `sys_login_log` VALUES ('51', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 18:12:35');
INSERT INTO `sys_login_log` VALUES ('52', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 18:12:35');
INSERT INTO `sys_login_log` VALUES ('53', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 18:12:35');
INSERT INTO `sys_login_log` VALUES ('54', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 18:23:43');
INSERT INTO `sys_login_log` VALUES ('55', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 19:21:26');
INSERT INTO `sys_login_log` VALUES ('56', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 19:22:59');
INSERT INTO `sys_login_log` VALUES ('57', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 19:22:59');
INSERT INTO `sys_login_log` VALUES ('58', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 19:22:59');
INSERT INTO `sys_login_log` VALUES ('59', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-06 19:22:59');
INSERT INTO `sys_login_log` VALUES ('60', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('61', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('62', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('63', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('64', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('65', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('66', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('67', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('68', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('69', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('70', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('71', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Microsoft Edge\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('72', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Microsoft Edge\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('73', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-07 10:20:55');
INSERT INTO `sys_login_log` VALUES ('74', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-08 14:34:23');
INSERT INTO `sys_login_log` VALUES ('75', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-08 14:34:23');
INSERT INTO `sys_login_log` VALUES ('76', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Microsoft Edge\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-08 14:34:23');
INSERT INTO `sys_login_log` VALUES ('77', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Microsoft Edge\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-08 15:21:38');
INSERT INTO `sys_login_log` VALUES ('78', 'test', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-08 15:24:37');
INSERT INTO `sys_login_log` VALUES ('79', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"124\", \"Google Chrome\";v=\"124\", \"Not-A.Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-05-13 05:26:00');
INSERT INTO `sys_login_log` VALUES ('80', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"125\", \"Chromium\";v=\"125\", \"Not.A/Brand\";v=\"24\"', '\"Windows\"', '1', '1001', '2024-05-28 11:40:35');
INSERT INTO `sys_login_log` VALUES ('81', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"125\", \"Chromium\";v=\"125\", \"Not.A/Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-05-28 11:40:35');
INSERT INTO `sys_login_log` VALUES ('82', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 13:40:29');
INSERT INTO `sys_login_log` VALUES ('83', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 13:41:30');
INSERT INTO `sys_login_log` VALUES ('84', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 13:44:47');
INSERT INTO `sys_login_log` VALUES ('85', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 13:46:51');
INSERT INTO `sys_login_log` VALUES ('86', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:00:58');
INSERT INTO `sys_login_log` VALUES ('87', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:00:58');
INSERT INTO `sys_login_log` VALUES ('88', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:05:35');
INSERT INTO `sys_login_log` VALUES ('89', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:06:27');
INSERT INTO `sys_login_log` VALUES ('90', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:16:50');
INSERT INTO `sys_login_log` VALUES ('91', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:22:35');
INSERT INTO `sys_login_log` VALUES ('92', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:30:00');
INSERT INTO `sys_login_log` VALUES ('93', 'admin', '127.0.0.1', null, null, null, '0', null, '2024-07-08 14:30:45');
INSERT INTO `sys_login_log` VALUES ('94', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-08 16:42:21');
INSERT INTO `sys_login_log` VALUES ('95', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-08 16:43:57');
INSERT INTO `sys_login_log` VALUES ('96', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-08 16:57:48');
INSERT INTO `sys_login_log` VALUES ('97', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-08 17:00:40');
INSERT INTO `sys_login_log` VALUES ('98', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-08 17:02:38');
INSERT INTO `sys_login_log` VALUES ('99', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-09 09:28:24');
INSERT INTO `sys_login_log` VALUES ('100', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-16 10:56:34');
INSERT INTO `sys_login_log` VALUES ('101', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1001', '2024-07-16 10:56:34');
INSERT INTO `sys_login_log` VALUES ('102', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-16 10:56:34');
INSERT INTO `sys_login_log` VALUES ('103', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1004', '2024-07-17 15:27:16');
INSERT INTO `sys_login_log` VALUES ('104', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1004', '2024-07-17 15:27:16');
INSERT INTO `sys_login_log` VALUES ('105', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-17 15:27:16');
INSERT INTO `sys_login_log` VALUES ('106', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1004', '2024-07-18 01:16:43');
INSERT INTO `sys_login_log` VALUES ('107', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-18 01:16:43');
INSERT INTO `sys_login_log` VALUES ('108', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-18 01:16:43');
INSERT INTO `sys_login_log` VALUES ('109', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-21 02:25:50');
INSERT INTO `sys_login_log` VALUES ('110', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-22 10:17:24');
INSERT INTO `sys_login_log` VALUES ('111', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1002', '2024-07-23 09:46:37');
INSERT INTO `sys_login_log` VALUES ('112', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-23 09:46:37');
INSERT INTO `sys_login_log` VALUES ('113', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-23 14:45:49');
INSERT INTO `sys_login_log` VALUES ('114', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1004', '2024-07-24 10:01:18');
INSERT INTO `sys_login_log` VALUES ('115', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1002', '2024-07-24 10:01:18');
INSERT INTO `sys_login_log` VALUES ('116', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-24 10:01:18');
INSERT INTO `sys_login_log` VALUES ('117', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-25 10:40:16');
INSERT INTO `sys_login_log` VALUES ('118', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '1', '1004', '2024-07-25 10:40:16');
INSERT INTO `sys_login_log` VALUES ('119', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-25 10:40:16');
INSERT INTO `sys_login_log` VALUES ('120', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-26 16:59:51');
INSERT INTO `sys_login_log` VALUES ('121', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-27 21:26:53');
INSERT INTO `sys_login_log` VALUES ('122', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-29 04:25:42');
INSERT INTO `sys_login_log` VALUES ('123', 'admin', '127.0.0.1', '', '\"Not/A)Brand\";v=\"8\", \"Chromium\";v=\"126\", \"Google Chrome\";v=\"126\"', '\"Windows\"', '0', '200', '2024-07-30 11:00:39');
INSERT INTO `sys_login_log` VALUES ('124', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-01 05:13:12');
INSERT INTO `sys_login_log` VALUES ('125', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-01 05:13:12');
INSERT INTO `sys_login_log` VALUES ('126', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-05 14:24:49');
INSERT INTO `sys_login_log` VALUES ('127', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-06 10:00:02');
INSERT INTO `sys_login_log` VALUES ('128', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-07 09:47:44');
INSERT INTO `sys_login_log` VALUES ('129', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-08 10:24:02');
INSERT INTO `sys_login_log` VALUES ('130', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-09 10:18:52');
INSERT INTO `sys_login_log` VALUES ('131', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-09 10:18:52');
INSERT INTO `sys_login_log` VALUES ('132', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-09 10:18:52');
INSERT INTO `sys_login_log` VALUES ('133', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-09 10:18:52');
INSERT INTO `sys_login_log` VALUES ('134', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-09 10:18:52');
INSERT INTO `sys_login_log` VALUES ('135', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-09 10:18:52');
INSERT INTO `sys_login_log` VALUES ('136', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-09 10:18:52');
INSERT INTO `sys_login_log` VALUES ('137', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1001', '2024-08-12 09:55:37');
INSERT INTO `sys_login_log` VALUES ('138', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-12 09:55:37');
INSERT INTO `sys_login_log` VALUES ('139', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-12 23:01:23');
INSERT INTO `sys_login_log` VALUES ('140', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-16 15:22:43');
INSERT INTO `sys_login_log` VALUES ('141', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1001', '2024-08-19 16:14:40');
INSERT INTO `sys_login_log` VALUES ('142', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-19 16:14:40');
INSERT INTO `sys_login_log` VALUES ('143', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-20 05:33:01');
INSERT INTO `sys_login_log` VALUES ('144', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-20 09:28:58');
INSERT INTO `sys_login_log` VALUES ('145', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1004', '2024-08-21 09:09:48');
INSERT INTO `sys_login_log` VALUES ('146', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-21 09:09:48');
INSERT INTO `sys_login_log` VALUES ('147', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-21 09:09:48');
INSERT INTO `sys_login_log` VALUES ('148', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-22 05:44:18');
INSERT INTO `sys_login_log` VALUES ('149', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-22 09:51:34');
INSERT INTO `sys_login_log` VALUES ('150', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-23 10:03:37');
INSERT INTO `sys_login_log` VALUES ('151', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-24 06:52:06');
INSERT INTO `sys_login_log` VALUES ('152', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-24 06:52:06');
INSERT INTO `sys_login_log` VALUES ('153', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-25 01:33:33');
INSERT INTO `sys_login_log` VALUES ('154', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-25 01:33:33');
INSERT INTO `sys_login_log` VALUES ('155', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-27 09:53:21');
INSERT INTO `sys_login_log` VALUES ('156', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '1', '1001', '2024-08-28 14:25:59');
INSERT INTO `sys_login_log` VALUES ('157', 'admin', '127.0.0.1', '', '\"Not)A;Brand\";v=\"99\", \"Google Chrome\";v=\"127\", \"Chromium\";v=\"127\"', '\"Windows\"', '0', '200', '2024-08-28 14:25:59');
INSERT INTO `sys_login_log` VALUES ('158', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-08-29 10:20:52');
INSERT INTO `sys_login_log` VALUES ('159', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-08-29 14:45:35');
INSERT INTO `sys_login_log` VALUES ('160', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1001', '2024-08-29 15:49:27');
INSERT INTO `sys_login_log` VALUES ('161', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-08-29 15:49:27');
INSERT INTO `sys_login_log` VALUES ('162', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-08-29 15:49:27');
INSERT INTO `sys_login_log` VALUES ('163', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-08-30 11:39:25');
INSERT INTO `sys_login_log` VALUES ('164', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1004', '2024-08-30 15:54:59');
INSERT INTO `sys_login_log` VALUES ('165', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-08-30 16:10:01');
INSERT INTO `sys_login_log` VALUES ('166', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 11:46:44');
INSERT INTO `sys_login_log` VALUES ('167', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:20:31');
INSERT INTO `sys_login_log` VALUES ('168', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:21:35');
INSERT INTO `sys_login_log` VALUES ('169', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:21:35');
INSERT INTO `sys_login_log` VALUES ('170', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:21:35');
INSERT INTO `sys_login_log` VALUES ('171', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1001', '2024-09-02 16:23:56');
INSERT INTO `sys_login_log` VALUES ('172', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:23:56');
INSERT INTO `sys_login_log` VALUES ('173', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:24:42');
INSERT INTO `sys_login_log` VALUES ('174', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:26:04');
INSERT INTO `sys_login_log` VALUES ('175', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:27:38');
INSERT INTO `sys_login_log` VALUES ('176', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:38:27');
INSERT INTO `sys_login_log` VALUES ('177', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:46:35');
INSERT INTO `sys_login_log` VALUES ('178', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:47:54');
INSERT INTO `sys_login_log` VALUES ('179', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('180', '15180809092', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('181', '15180809092', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1002', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('182', '15180809093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('183', '15180809093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('184', '15180809093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('185', '15180808093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('186', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-02 16:49:46');
INSERT INTO `sys_login_log` VALUES ('187', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('188', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('189', '15180809092', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('190', '15180809092', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('191', '15180809092', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('192', '15180809093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1001', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('193', '15180809093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('194', '15180808093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('195', '15180808093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('196', '15180808093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-09 14:14:09');
INSERT INTO `sys_login_log` VALUES ('197', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-10 14:08:13');
INSERT INTO `sys_login_log` VALUES ('198', '15180808093', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-10 14:08:13');
INSERT INTO `sys_login_log` VALUES ('199', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-14 09:32:30');
INSERT INTO `sys_login_log` VALUES ('200', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-18 10:19:31');
INSERT INTO `sys_login_log` VALUES ('201', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-19 09:15:20');
INSERT INTO `sys_login_log` VALUES ('202', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-23 10:17:44');
INSERT INTO `sys_login_log` VALUES ('203', '15180809099', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1003', '2024-09-24 05:07:02');
INSERT INTO `sys_login_log` VALUES ('204', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '1', '1002', '2024-09-24 05:07:02');
INSERT INTO `sys_login_log` VALUES ('205', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-24 05:07:02');
INSERT INTO `sys_login_log` VALUES ('206', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-24 10:06:40');
INSERT INTO `sys_login_log` VALUES ('207', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"128\", \"Not;A=Brand\";v=\"24\", \"Google Chrome\";v=\"128\"', '\"Windows\"', '0', '200', '2024-09-24 10:06:40');
INSERT INTO `sys_login_log` VALUES ('208', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-09-29 21:10:09');
INSERT INTO `sys_login_log` VALUES ('209', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '1', '1001', '2024-10-03 10:25:31');
INSERT INTO `sys_login_log` VALUES ('210', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-03 10:25:31');
INSERT INTO `sys_login_log` VALUES ('211', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-03 10:25:31');
INSERT INTO `sys_login_log` VALUES ('212', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-04 03:32:30');
INSERT INTO `sys_login_log` VALUES ('213', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-04 04:59:22');
INSERT INTO `sys_login_log` VALUES ('214', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-16 11:00:03');
INSERT INTO `sys_login_log` VALUES ('215', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-20 12:51:24');
INSERT INTO `sys_login_log` VALUES ('216', '15180808092', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '1', '1003', '2024-10-20 12:51:24');
INSERT INTO `sys_login_log` VALUES ('217', '15180808090', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '1', '1003', '2024-10-20 12:51:24');
INSERT INTO `sys_login_log` VALUES ('218', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-20 12:51:24');
INSERT INTO `sys_login_log` VALUES ('219', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-20 12:51:24');
INSERT INTO `sys_login_log` VALUES ('220', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"129\", \"Not=A?Brand\";v=\"8\", \"Chromium\";v=\"129\"', '\"Windows\"', '0', '200', '2024-10-21 09:41:44');
INSERT INTO `sys_login_log` VALUES ('221', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-10-26 06:03:02');
INSERT INTO `sys_login_log` VALUES ('222', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-10-28 05:59:18');
INSERT INTO `sys_login_log` VALUES ('223', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-10-29 03:17:22');
INSERT INTO `sys_login_log` VALUES ('224', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-10-29 03:17:22');
INSERT INTO `sys_login_log` VALUES ('225', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '1', '1001', '2024-10-30 15:57:32');
INSERT INTO `sys_login_log` VALUES ('226', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-10-30 15:57:32');
INSERT INTO `sys_login_log` VALUES ('227', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-10-31 05:44:37');
INSERT INTO `sys_login_log` VALUES ('228', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-10-31 10:12:08');
INSERT INTO `sys_login_log` VALUES ('229', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-01 16:01:38');
INSERT INTO `sys_login_log` VALUES ('230', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-01 16:01:38');
INSERT INTO `sys_login_log` VALUES ('231', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-03 11:54:28');
INSERT INTO `sys_login_log` VALUES ('232', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-04 11:12:38');
INSERT INTO `sys_login_log` VALUES ('233', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-04 18:14:13');
INSERT INTO `sys_login_log` VALUES ('234', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-05 03:17:45');
INSERT INTO `sys_login_log` VALUES ('235', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-05 10:10:52');
INSERT INTO `sys_login_log` VALUES ('236', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-05 17:29:17');
INSERT INTO `sys_login_log` VALUES ('237', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-06 10:43:10');
INSERT INTO `sys_login_log` VALUES ('238', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-06 20:14:39');
INSERT INTO `sys_login_log` VALUES ('239', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-07 16:57:59');
INSERT INTO `sys_login_log` VALUES ('240', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-08 19:03:31');
INSERT INTO `sys_login_log` VALUES ('241', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-11 09:22:58');
INSERT INTO `sys_login_log` VALUES ('242', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-12 09:49:45');
INSERT INTO `sys_login_log` VALUES ('243', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '1', '1001', '2024-11-12 10:08:12');
INSERT INTO `sys_login_log` VALUES ('244', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-12 10:08:12');
INSERT INTO `sys_login_log` VALUES ('245', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-12 10:08:12');
INSERT INTO `sys_login_log` VALUES ('246', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-12 21:53:07');
INSERT INTO `sys_login_log` VALUES ('247', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-13 15:37:21');
INSERT INTO `sys_login_log` VALUES ('248', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-13 15:37:21');
INSERT INTO `sys_login_log` VALUES ('249', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-13 16:04:38');
INSERT INTO `sys_login_log` VALUES ('250', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-13 16:38:27');
INSERT INTO `sys_login_log` VALUES ('251', '15180808099', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-13 17:26:33');
INSERT INTO `sys_login_log` VALUES ('252', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-13 17:42:40');
INSERT INTO `sys_login_log` VALUES ('253', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-14 19:43:15');
INSERT INTO `sys_login_log` VALUES ('254', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-15 14:50:37');
INSERT INTO `sys_login_log` VALUES ('255', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-18 05:46:47');
INSERT INTO `sys_login_log` VALUES ('256', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-18 09:38:06');
INSERT INTO `sys_login_log` VALUES ('257', 'admin', '127.0.0.1', '', '\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"', '\"Windows\"', '0', '200', '2024-11-19 05:33:15');
INSERT INTO `sys_login_log` VALUES ('258', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '1', '1002', '2024-11-20 05:12:36');
INSERT INTO `sys_login_log` VALUES ('259', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '1', '1002', '2024-11-20 05:12:36');
INSERT INTO `sys_login_log` VALUES ('260', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-20 05:12:36');
INSERT INTO `sys_login_log` VALUES ('261', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-20 10:53:23');
INSERT INTO `sys_login_log` VALUES ('262', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-21 11:27:44');
INSERT INTO `sys_login_log` VALUES ('263', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-25 11:37:01');
INSERT INTO `sys_login_log` VALUES ('264', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 10:54:31');
INSERT INTO `sys_login_log` VALUES ('265', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 10:54:31');
INSERT INTO `sys_login_log` VALUES ('266', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 10:54:31');
INSERT INTO `sys_login_log` VALUES ('267', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 10:54:31');
INSERT INTO `sys_login_log` VALUES ('268', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 10:54:31');
INSERT INTO `sys_login_log` VALUES ('269', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 17:10:23');
INSERT INTO `sys_login_log` VALUES ('270', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 18:38:46');
INSERT INTO `sys_login_log` VALUES ('271', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 18:38:46');
INSERT INTO `sys_login_log` VALUES ('272', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 19:46:24');
INSERT INTO `sys_login_log` VALUES ('273', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 19:46:24');
INSERT INTO `sys_login_log` VALUES ('274', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 19:46:24');
INSERT INTO `sys_login_log` VALUES ('275', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 19:46:24');
INSERT INTO `sys_login_log` VALUES ('276', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 21:46:59');
INSERT INTO `sys_login_log` VALUES ('277', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-27 21:46:59');
INSERT INTO `sys_login_log` VALUES ('278', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-28 11:06:57');
INSERT INTO `sys_login_log` VALUES ('279', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-28 14:11:34');
INSERT INTO `sys_login_log` VALUES ('280', '15180808099', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-29 09:58:56');
INSERT INTO `sys_login_log` VALUES ('281', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-11-29 09:58:56');
INSERT INTO `sys_login_log` VALUES ('282', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-12-02 11:58:57');
INSERT INTO `sys_login_log` VALUES ('283', 'admin', '127.0.0.1', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-12-02 11:58:57');
INSERT INTO `sys_login_log` VALUES ('284', 'admin', '117.189.24.205', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-12-02 14:35:20');
INSERT INTO `sys_login_log` VALUES ('285', 'admin', '117.189.24.205', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-12-02 14:35:20');
INSERT INTO `sys_login_log` VALUES ('286', 'admin', '111.121.75.3', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '1', '1001', '2024-12-02 16:16:31');
INSERT INTO `sys_login_log` VALUES ('287', 'admin', '111.121.75.3', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '1', '1002', '2024-12-02 16:16:31');
INSERT INTO `sys_login_log` VALUES ('288', 'admin', '111.121.75.3', '', '\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"', '\"Windows\"', '0', '200', '2024-12-02 16:16:31');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `listorder` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
  `is_link` int DEFAULT '0' COMMENT '是否为外链（1是 0否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（1缓存 0不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'location', '', '', '0', '0', 'M', '0', '0', '', 'mdi-webhook', 'admin', '2023-01-05 15:51:47', '', '2024-08-06 10:00:02', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user/get_list', 'system/user/index', '', '0', '0', 'C', '0', '0', 'system:user:get_list', 'user', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role/role_list', 'system/role/index', '', '0', '0', 'C', '0', '0', 'system:role:role_list', 'peoples', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu/menu_list', 'system/menu/index', '', '0', '0', 'C', '0', '0', 'system:menu:menu_list', 'tree-table', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept/index', 'system/dept/index', '', '0', '0', 'C', '0', '0', 'system:dept:get_list', 'tree', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post/index', 'system/post/index', '', '0', '0', 'C', '0', '0', 'system:post:get_list', 'post', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '0', '0', 'M', '0', '0', '', 'log', 'admin', '2023-01-05 15:51:47', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/system/operation_log/get_list', 'monitor/operationlog/index', '', '0', '0', 'C', '0', '0', 'system:operation_log:get_list', 'form', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfo/index', '', '0', '0', 'C', '0', '0', 'system:login_log:get_list', 'logininfor', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户详情', '100', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:admin:get_userinfo', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '0', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '0', '0', 'F', '0', '0', 'system:user:update', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 17:10:14', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '0', '0', 'F', '0', '0', 'system:user:user_delete', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 17:10:14', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '0', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '状态更改', '100', '6', '', '', '', '0', '0', 'F', '0', '0', 'system:user:updateStatus', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '0', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色列表', '101', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:role:role_list', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '0', '0', 'F', '0', '0', 'system:role:role_add', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '0', '0', 'F', '0', '0', 'system:role:role_update', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '0', '0', 'F', '0', '0', 'system:role:role_delete', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '0', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单列表', '102', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:menu:menu_list', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '0', '0', 'F', '0', '0', 'system:menu:menu_add', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '0', '0', 'F', '0', '0', 'system:menu:update', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '0', '0', 'F', '0', '0', 'system:menu:delete', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门列表', '103', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:dept:get_list', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '0', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '0', '0', 'F', '0', '0', 'system:dept:update', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '0', '0', 'F', '0', '0', 'system:dept:delete', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位列表', '104', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:post:get_list', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '0', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '0', '0', 'F', '0', '0', 'system:post:update', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '0', '0', 'F', '0', '0', 'system:post:delete', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-06 18:23:43', '');
INSERT INTO `sys_menu` VALUES ('1024', '己公老商气', '18', '47', '#', 'in adipisicing', 'ullamco ipsum', '4', '55', 'F', '', '', 'nostrud velit labore', 'http://dummyimage.com/100x100', 'admin', '2023-01-05 15:51:47', 'ex eu sint', '2024-04-12 15:59:05', 'anim esse deserunt voluptate');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '0', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '0', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '0', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '0', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '0', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-01-05 15:51:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:operation_log:get_list', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '', '', '', '0', '0', 'F', '0', '0', 'system:operation_log:remove', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '', '', '', '0', '0', 'F', '0', '0', 'system:operation_log:export', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:login_log:get_list', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-28 11:40:35', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '', '', '', '0', '0', 'F', '0', '0', 'system:login_log:delete', '#', 'admin', '2023-01-05 15:51:47', '', '2024-05-07 10:20:55', '');
INSERT INTO `sys_menu` VALUES ('1047', '用户列表', '100', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:user:get_list', '#', '', '2024-05-06 18:23:43', '', '2024-05-08 15:40:18', '');
INSERT INTO `sys_menu` VALUES ('1048', '用户信息', '100', '1', '', '', '', '0', '0', 'F', '0', '0', 'system:user:public_get_info', '#', '', '2024-05-06 18:23:43', '', '2024-05-08 15:40:18', '');
INSERT INTO `sys_menu` VALUES ('1053', '角色状态', '101', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:role:update_status', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '角色排序', '101', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:role:update_listorder', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '批量删除', '101', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:role:role_mult_delete', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '菜单详情', '102', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:menu:get_info', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '菜单状态', '102', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:menu:updateStatus', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '部门状态', '103', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:dept:updateStatus', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '批量删除', '103', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:dept:mult_delete', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1062', '岗位详情', '104', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:post:get_info', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1063', '岗位状态', '104', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:post:updateStatus', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1064', '批量删除', '104', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:post:mult_delete', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1065', '日志详情', '500', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:operation_log:get_info', '#', '', '2024-05-06 18:23:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1066', '日志详情', '501', '1', '', null, null, '0', '0', 'F', '0', '0', 'system:login_log:get_list', '#', '', '2024-05-06 18:23:43', '', null, '');

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除 4查看）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `op_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `op_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `op_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `op_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `op_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `op_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------
INSERT INTO `sys_operation_log` VALUES ('6', 'system', '0', 'login', 'POST', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login', '127.0.0.1', '', '{\'username\': \'admin\', \'password\': \'admin123\', \'code\': 11, \'uuid\': \'2b629d58-091e-4314-a02b-eee519391f93\'}', '{\"code\": 200, \"msg\": \"登录成功！\", \"data\": {\"token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE3MTMzNDY2ODV9.4WB4cGKhADlDkDFoQy4Lts3H7J1EK4tP6rQxn6koJME\"}}', '0', '', '2024-04-16 17:31:16');
INSERT INTO `sys_operation_log` VALUES ('7', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-16 17:53:20');
INSERT INTO `sys_operation_log` VALUES ('8', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-16 17:56:21');
INSERT INTO `sys_operation_log` VALUES ('9', 'system', '0', 'login', 'POST', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login', '127.0.0.1', '', '{\'username\': \'admin\', \'password\': \'admin123\', \'code\': 3, \'uuid\': \'e9bca81c-52d0-4f9a-bb72-e0b86ac0f94f\'}', '{\'code\': 200, \'msg\': \'登录成功！\', \'data\': {\'token\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE3MTMzNDc3OTZ9.oc540cmRMgiijT9cmbCLyIlSLmrOwBxwGpgL9_aYmtE\'}}', '0', '', '2024-04-16 17:56:21');
INSERT INTO `sys_operation_log` VALUES ('10', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-16 17:56:21');
INSERT INTO `sys_operation_log` VALUES ('11', 'system', '0', 'login', 'POST', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login', '127.0.0.1', '', '{\'username\': \'admin\', \'password\': \'admin123555\', \'code\': 10, \'uuid\': \'863a452d-413c-4679-ba95-8f2a9e046608\'}', '{\'code\': 1004, \'msg\': \'登陆失败，请重试！！\', \'data\': []}', '0', '登陆失败，请重试！！', '2024-04-16 17:56:21');
INSERT INTO `sys_operation_log` VALUES ('12', 'system', '0', 'login', 'POST', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login', '127.0.0.1', '', '{\'username\': \'admin\', \'password\': \'admin123\', \'code\': 54, \'uuid\': \'e95fc8b3-f109-4a94-a6f5-86abc88a2b6e\'}', '{\'code\': 200, \'msg\': \'登录成功！\', \'data\': {\'token\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE3MTMzNDc4NjZ9.8647Ycn7p8lX1tc_4fhvUO-S1SyXNCV9j4zEilhm2Vw\'}}', '0', '', '2024-04-16 17:56:21');
INSERT INTO `sys_operation_log` VALUES ('13', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-16 17:58:09');
INSERT INTO `sys_operation_log` VALUES ('14', 'system', '0', 'login', 'POST', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login', '127.0.0.1', '', '{\'username\': \'admin\', \'password\': \'admin123\', \'code\': 12, \'uuid\': \'3835519a-0b31-4963-b34f-8166d3127ff1\'}', '{\'code\': 200, \'msg\': \'登录成功！\', \'data\': {\'token\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE3MTMzNDg1ODV9.qmueClGtRfPs-BzfLPCsq2SUEK1MEraY-1X5VtW2w14\'}}', '0', '', '2024-04-16 17:58:09');
INSERT INTO `sys_operation_log` VALUES ('15', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-16 18:22:03');
INSERT INTO `sys_operation_log` VALUES ('16', 'system', '0', 'login', 'POST', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login', '127.0.0.1', '', '{\'username\': \'admin\', \'password\': \'admin123\', \'code\': 5, \'uuid\': \'33a008bd-b504-4213-b234-ad363b178b7b\'}', '{\'code\': 200, \'msg\': \'登录成功！\', \'data\': {\'token\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE3MTMzNDkzNzl9.F6Apnu1GP9HVgQsdut7SYL9IQOVjbEiSATXRh-0PgsA\'}}', '0', '', '2024-04-16 18:22:03');
INSERT INTO `sys_operation_log` VALUES ('17', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 10:47:21');
INSERT INTO `sys_operation_log` VALUES ('18', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 10:56:44');
INSERT INTO `sys_operation_log` VALUES ('19', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 11:03:24');
INSERT INTO `sys_operation_log` VALUES ('20', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 11:04:35');
INSERT INTO `sys_operation_log` VALUES ('21', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 11:06:01');
INSERT INTO `sys_operation_log` VALUES ('22', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 11:08:59');
INSERT INTO `sys_operation_log` VALUES ('23', 'system', '0', 'login_out', 'GET', '0', 'system', 'system', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 11:08:59');
INSERT INTO `sys_operation_log` VALUES ('24', 'system', '0', 'role_list', 'GET', '0', 'test', '贵阳科技', 'http://127.0.0.1:8082/system/role/role_list?pageNum=1&pageSize=20&role_name=&status=0', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'20\', \'role_name\': \'\', \'status\': \'0\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'role_id\': 3, \'role_name\': \'发布角色\', \'role_key\': \'public\', \'listorder\': 1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'\'}, {\'role_id\': 5, \'role_name\': \'test\', \'role_key\': \'Miller\', \'listorder\': 1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-15 17:31:10\', \'remark\': None}, {\'role_id\': 4, \'role_name\': \'test\', \'role_key\': \'Hernandez\', \'listorder\': 0, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'\'}, {\'role_id\': 1, \'role_name\': \'超级管理员\', \'role_key\': \'admin\', \'listorder\': -1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'超级管理员\'}, {\'role_id\': 2, \'role_name\': \'普通角色\', \'role_key\': \'common\', \'listorder\': -1, \'data_scope\': \'2\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'普通角色\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 20, \'totalPage\': 1}}', '0', '', '2024-04-17 12:02:11');
INSERT INTO `sys_operation_log` VALUES ('25', 'system', '0', 'role_list', 'GET', '0', 'test', '贵阳科技', 'http://127.0.0.1:8082/system/role/role_list?pageNum=1&pageSize=20&role_name=&status=0', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'20\', \'role_name\': \'\', \'status\': \'0\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'role_id\': 3, \'role_name\': \'发布角色\', \'role_key\': \'public\', \'listorder\': 1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'\'}, {\'role_id\': 5, \'role_name\': \'test\', \'role_key\': \'Miller\', \'listorder\': 1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-15 17:31:10\', \'remark\': None}, {\'role_id\': 4, \'role_name\': \'test\', \'role_key\': \'Hernandez\', \'listorder\': 0, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'\'}, {\'role_id\': 1, \'role_name\': \'超级管理员\', \'role_key\': \'admin\', \'listorder\': -1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'超级管理员\'}, {\'role_id\': 2, \'role_name\': \'普通角色\', \'role_key\': \'common\', \'listorder\': -1, \'data_scope\': \'2\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'普通角色\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 20, \'totalPage\': 1}}', '0', '', '2024-04-17 12:05:27');
INSERT INTO `sys_operation_log` VALUES ('26', 'system', '0', 'role_list', 'GET', '0', 'test', '贵阳科技', 'http://127.0.0.1:8082/system/role/role_list?pageNum=1&pageSize=20&role_name=&status=0', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'20\', \'role_name\': \'\', \'status\': \'0\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'role_id\': 3, \'role_name\': \'发布角色\', \'role_key\': \'public\', \'listorder\': 1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'\'}, {\'role_id\': 5, \'role_name\': \'test\', \'role_key\': \'Miller\', \'listorder\': 1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-15 17:31:10\', \'remark\': None}, {\'role_id\': 4, \'role_name\': \'test\', \'role_key\': \'Hernandez\', \'listorder\': 0, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'\'}, {\'role_id\': 1, \'role_name\': \'超级管理员\', \'role_key\': \'admin\', \'listorder\': -1, \'data_scope\': \'1\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'超级管理员\'}, {\'role_id\': 2, \'role_name\': \'普通角色\', \'role_key\': \'common\', \'listorder\': -1, \'data_scope\': \'2\', \'menu_check_strictly\': 1, \'dept_check_strictly\': 1, \'status\': \'0\', \'del_flag\': \'0\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-04-04 08:53:19\', \'remark\': \'普通角色\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 20, \'totalPage\': 1}}', '0', '', '2024-04-17 12:06:44');
INSERT INTO `sys_operation_log` VALUES ('27', 'system', '0', 'login_out', 'GET', '0', 'test', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 12:06:44');
INSERT INTO `sys_operation_log` VALUES ('28', 'system', '0', 'login_out', 'GET', '0', 'test', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-17 12:11:48');
INSERT INTO `sys_operation_log` VALUES ('29', 'system', '0', 'login_out', 'GET', '0', 'admin', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-22 01:45:49');
INSERT INTO `sys_operation_log` VALUES ('30', 'system', '0', 'login_out', 'GET', '0', 'admin', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-25 16:17:35');
INSERT INTO `sys_operation_log` VALUES ('31', 'system', '0', 'login_out', 'GET', '0', 'admin', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-28 06:21:02');
INSERT INTO `sys_operation_log` VALUES ('32', 'system', '0', 'login_out', 'GET', '0', 'admin', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-28 06:47:11');
INSERT INTO `sys_operation_log` VALUES ('33', 'system', '0', 'login_out', 'GET', '0', 'chinacsj', '长沙分公司', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-28 06:47:11');
INSERT INTO `sys_operation_log` VALUES ('34', 'system', '0', 'login_out', 'GET', '0', 'admin', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-28 11:44:50');
INSERT INTO `sys_operation_log` VALUES ('35', 'system', '0', 'login_out', 'GET', '0', 'test', '贵阳科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-28 11:44:50');
INSERT INTO `sys_operation_log` VALUES ('36', 'system', '0', 'login_out', 'GET', '0', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-04-28 16:04:12');
INSERT INTO `sys_operation_log` VALUES ('37', 'system', '0', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/add', '127.0.0.1', '', '{\'post_code\': \'2qwrw\', \'post_name\': \'她她她\', \'listorder\': 1, \'status\': \'0\', \'remark\': \'ASDFASDF\', \'create_time\': \'2024-04-30 11:05:04\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:05:04');
INSERT INTO `sys_operation_log` VALUES ('38', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=20', '127.0.0.1', '', '{\'post_id\': \'20\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('39', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/update', '127.0.0.1', '', '{\'post_id\': 21, \'post_code\': \'qqqqq\', \'post_name\': \'123\', \'listorder\': 1, \'status\': \'0\', \'create_user\': \'\', \'create_time\': \'2024-04-19 00:33:43\', \'update_user\': \'\', \'update_time\': \'2024-04-30 11:40:18\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('40', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/update', '127.0.0.1', '', '{\'post_id\': 21, \'post_code\': \'qqqqq\', \'post_name\': \'qqq123\', \'listorder\': 1, \'status\': \'0\', \'create_user\': \'\', \'create_time\': \'2024-04-19 00:33:43\', \'update_user\': \'\', \'update_time\': \'2024-04-30 11:40:18\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('41', 'system', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/add', '127.0.0.1', '', '{\'post_code\': \'gggg\', \'post_name\': \'ggggg\', \'listorder\': 1, \'status\': \'0\', \'remark\': \'gasdg\', \'create_time\': \'2024-04-30 11:40:18\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('42', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=19', '127.0.0.1', '', '{\'post_id\': \'19\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('43', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=14', '127.0.0.1', '', '{\'post_id\': \'14\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('44', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=16', '127.0.0.1', '', '{\'post_id\': \'16\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('45', 'system', '2', 'updateStatus', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/updateStatus', '127.0.0.1', '', '{\'post_id\': 17, \'post_code\': \'ereeee\', \'post_name\': \'erereree\', \'listorder\': 1, \'status\': \'1\', \'create_user\': \'\', \'create_time\': \'2024-04-19 00:33:43\', \'update_user\': \'\', \'update_time\': None, \'remark\': \'ertereee\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('46', 'system', '2', 'updateStatus', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/updateStatus', '127.0.0.1', '', '{\'post_id\': 17, \'post_code\': \'ereeee\', \'post_name\': \'erereree\', \'listorder\': 1, \'status\': \'0\', \'create_user\': \'\', \'create_time\': \'2024-04-19 00:33:43\', \'update_user\': \'\', \'update_time\': None, \'remark\': \'ertereee\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('47', 'system', '2', 'updateStatus', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/updateStatus', '127.0.0.1', '', '{\'post_id\': 17, \'post_code\': \'ereeee\', \'post_name\': \'erereree\', \'listorder\': 1, \'status\': \'1\', \'create_user\': \'\', \'create_time\': \'2024-04-19 00:33:43\', \'update_user\': \'\', \'update_time\': None, \'remark\': \'ertereee\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('48', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=17', '127.0.0.1', '', '{\'post_id\': \'17\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('49', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=22', '127.0.0.1', '', '{\'post_id\': \'22\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('50', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=23', '127.0.0.1', '', '{\'post_id\': \'23\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('51', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=21', '127.0.0.1', '', '{\'post_id\': \'21\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('52', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/delete?post_id=15', '127.0.0.1', '', '{\'post_id\': \'15\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-04-30 11:40:18');
INSERT INTO `sys_operation_log` VALUES ('53', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 10:41:22');
INSERT INTO `sys_operation_log` VALUES ('54', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 16:44:08');
INSERT INTO `sys_operation_log` VALUES ('55', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 16:44:08');
INSERT INTO `sys_operation_log` VALUES ('56', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 17:10:14');
INSERT INTO `sys_operation_log` VALUES ('57', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 17:10:14');
INSERT INTO `sys_operation_log` VALUES ('58', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 18:23:43');
INSERT INTO `sys_operation_log` VALUES ('59', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 19:21:26');
INSERT INTO `sys_operation_log` VALUES ('60', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 19:22:59');
INSERT INTO `sys_operation_log` VALUES ('61', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 19:22:59');
INSERT INTO `sys_operation_log` VALUES ('62', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-06 19:22:59');
INSERT INTO `sys_operation_log` VALUES ('63', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/update', '127.0.0.1', '', '{\'post_id\': 1, \'post_code\': \'ceo\', \'post_name\': \'董事长\', \'listorder\': \'6\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('64', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/update', '127.0.0.1', '', '{\'post_id\': 4, \'post_code\': \'user\', \'post_name\': \'普通员工\', \'listorder\': \'5\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('65', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/post/update', '127.0.0.1', '', '{\'post_id\': 1, \'post_code\': \'ceo\', \'post_name\': \'董事长\', \'listorder\': \'7\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('66', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('67', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('68', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('69', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('70', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('71', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('72', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('73', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('74', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-07 10:20:55');
INSERT INTO `sys_operation_log` VALUES ('75', 'system', '0', 'login_out', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-08 14:34:23');
INSERT INTO `sys_operation_log` VALUES ('76', 'system', '0', 'login_out', 'GET', '1', 'test', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/admin/login_out', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'退出登录成功！\', \'data\': []}', '0', '', '2024-05-08 14:34:23');
INSERT INTO `sys_operation_log` VALUES ('77', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/update', '127.0.0.1', '', '{\'post_id\': 4, \'post_code\': \'user\', \'post_name\': \'普通员工\', \'listorder\': \'6\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-06-25 19:04:02\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('78', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/update', '127.0.0.1', '', '{\'post_id\': 4, \'post_code\': \'user\', \'post_name\': \'普通员工\', \'listorder\': \'7\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-06-25 19:04:02\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('79', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/update', '127.0.0.1', '', '{\'post_id\': 4, \'post_code\': \'user\', \'post_name\': \'普通员工\', \'listorder\': \'8\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-06-25 19:04:02\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('80', 'system', '3', 'mult_delete', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/mult_delete', '127.0.0.1', '', '{\'post_ids\': [4]}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('81', 'system', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/delete?post_id=15', '127.0.0.1', '', '{\'post_id\': \'15\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('82', 'system', '3', 'mult_delete', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/mult_delete', '127.0.0.1', '', '{\'post_ids\': [14, 16]}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('83', 'system', '3', 'mult_delete', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/mult_delete', '127.0.0.1', '', '{\'post_ids\': [17]}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('84', 'system', '3', 'mult_delete', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/mult_delete', '127.0.0.1', '', '{\'post_ids\': [18]}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:04:02');
INSERT INTO `sys_operation_log` VALUES ('85', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/update', '127.0.0.1', '', '{\'post_id\': 3, \'post_code\': \'hr\', \'post_name\': \'人力资源\', \'listorder\': \'4\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-06-25 19:54:01\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:54:01');
INSERT INTO `sys_operation_log` VALUES ('86', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/update', '127.0.0.1', '', '{\'post_id\': 3, \'post_code\': \'hr\', \'post_name\': \'人力资源\', \'listorder\': \'3\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-06-25 19:54:01\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:54:01');
INSERT INTO `sys_operation_log` VALUES ('87', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/update', '127.0.0.1', '', '{\'post_id\': 3, \'post_code\': \'hr\', \'post_name\': \'人力资源\', \'listorder\': \'2\', \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-06-25 19:54:01\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:54:01');
INSERT INTO `sys_operation_log` VALUES ('88', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/post/update', '127.0.0.1', '', '{\'post_id\': 3, \'post_code\': \'hr\', \'post_name\': \'人力资源\', \'listorder\': 2, \'status\': \'0\', \'create_user\': \'admin\', \'create_time\': \'2023-08-06 19:26:25\', \'update_user\': \'\', \'update_time\': \'2024-06-25 19:54:01\', \'remark\': \'嘎嘎嘎\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-06-25 19:54:01');
INSERT INTO `sys_operation_log` VALUES ('89', 'system', '0', 'get_list', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/get_list?pageNum=1&pageSize=10&dept_id=&username=&phone=&status=', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'10\', \'dept_id\': \'\', \'username\': \'\', \'phone\': \'\', \'status\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'user_id\': 20, \'dept_id\': 113, \'username\': \'chinacsj\', \'nick_name\': \'chinacsj\', \'user_type\': \'0\', \'email\': \'1@q.com\', \'phone\': \'15180809090\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-04-28 06:47:11\', \'update_user\': \'\', \'update_time\': \'2024-05-06 18:23:43\', \'remark\': \'普通角色\'}, {\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-06-28 11:32:17\', \'remark\': \'发布人员\'}, {\'user_id\': 2, \'dept_id\': 100, \'username\': \'test\', \'nick_name\': \'test\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121281748142.jpg\', \'status\': \'1\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'普通管理员\'}, {\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'user_type\': \'0\', \'email\': \'thinkpython@163.com\', \'phone\': \'15888888888\', \'sex\': \'1\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121483185903.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': None, \'remark\': \'超级管理员\'}], \'total\': 4, \'pageNum\': 1, \'pageSize\': 10, \'totalPage\': 1}}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('90', 'system', '0', 'get_list', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/get_list?pageNum=1&pageSize=10&dept_id=&username=&phone=&status=', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'10\', \'dept_id\': \'\', \'username\': \'\', \'phone\': \'\', \'status\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'user_id\': 20, \'dept_id\': 113, \'username\': \'chinacsj\', \'nick_name\': \'chinacsj\', \'user_type\': \'0\', \'email\': \'1@q.com\', \'phone\': \'15180809090\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-04-28 06:47:11\', \'update_user\': \'\', \'update_time\': \'2024-05-06 18:23:43\', \'remark\': \'普通角色\'}, {\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-06-28 11:32:17\', \'remark\': \'发布人员\'}, {\'user_id\': 2, \'dept_id\': 100, \'username\': \'test\', \'nick_name\': \'test\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121281748142.jpg\', \'status\': \'1\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'普通管理员\'}, {\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'user_type\': \'0\', \'email\': \'thinkpython@163.com\', \'phone\': \'15888888888\', \'sex\': \'1\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121483185903.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': None, \'remark\': \'超级管理员\'}], \'total\': 4, \'pageNum\': 1, \'pageSize\': 10, \'totalPage\': 1}}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('91', 'system', '1', 'add', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/add', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('92', 'system', '0', 'get_list', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/get_list?pageNum=1&pageSize=10&dept_id=&username=&phone=&status=', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'10\', \'dept_id\': \'\', \'username\': \'\', \'phone\': \'\', \'status\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'user_id\': 23, \'dept_id\': 101, \'username\': \'士大夫\', \'nick_name\': \'萨芬\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-07-08 17:21:34\', \'update_user\': \'\', \'update_time\': None, \'remark\': \'发布角色\'}, {\'user_id\': 20, \'dept_id\': 113, \'username\': \'chinacsj\', \'nick_name\': \'chinacsj\', \'user_type\': \'0\', \'email\': \'1@q.com\', \'phone\': \'15180809090\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-04-28 06:47:11\', \'update_user\': \'\', \'update_time\': \'2024-05-06 18:23:43\', \'remark\': \'普通角色\'}, {\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-06-28 11:32:17\', \'remark\': \'发布人员\'}, {\'user_id\': 2, \'dept_id\': 100, \'username\': \'test\', \'nick_name\': \'test\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121281748142.jpg\', \'status\': \'1\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'普通管理员\'}, {\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'user_type\': \'0\', \'email\': \'thinkpython@163.com\', \'phone\': \'15888888888\', \'sex\': \'1\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121483185903.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': None, \'remark\': \'超级管理员\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 10, \'totalPage\': 1}}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('93', 'system', '0', 'get_list', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/get_list?pageNum=1&pageSize=10&dept_id=&username=&phone=&status=', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'10\', \'dept_id\': \'\', \'username\': \'\', \'phone\': \'\', \'status\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'user_id\': 23, \'dept_id\': 101, \'username\': \'士大夫\', \'nick_name\': \'萨芬\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-07-08 17:21:34\', \'update_user\': \'\', \'update_time\': None, \'remark\': \'发布角色\'}, {\'user_id\': 20, \'dept_id\': 113, \'username\': \'chinacsj\', \'nick_name\': \'chinacsj\', \'user_type\': \'0\', \'email\': \'1@q.com\', \'phone\': \'15180809090\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-04-28 06:47:11\', \'update_user\': \'\', \'update_time\': \'2024-05-06 18:23:43\', \'remark\': \'普通角色\'}, {\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-06-28 11:32:17\', \'remark\': \'发布人员\'}, {\'user_id\': 2, \'dept_id\': 100, \'username\': \'test\', \'nick_name\': \'test\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121281748142.jpg\', \'status\': \'1\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'普通管理员\'}, {\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'user_type\': \'0\', \'email\': \'thinkpython@163.com\', \'phone\': \'15888888888\', \'sex\': \'1\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121483185903.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': None, \'remark\': \'超级管理员\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 10, \'totalPage\': 1}}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('94', 'system', '0', 'get_list', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/get_list?pageNum=1&pageSize=10&dept_id=&username=&phone=&status=', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'10\', \'dept_id\': \'\', \'username\': \'\', \'phone\': \'\', \'status\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'user_id\': 23, \'dept_id\': 101, \'username\': \'士大夫\', \'nick_name\': \'萨芬\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-07-08 17:21:34\', \'update_user\': \'\', \'update_time\': None, \'remark\': \'发布角色\'}, {\'user_id\': 20, \'dept_id\': 113, \'username\': \'chinacsj\', \'nick_name\': \'chinacsj\', \'user_type\': \'0\', \'email\': \'1@q.com\', \'phone\': \'15180809090\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-04-28 06:47:11\', \'update_user\': \'\', \'update_time\': \'2024-05-06 18:23:43\', \'remark\': \'普通角色\'}, {\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-06-28 11:32:17\', \'remark\': \'发布人员\'}, {\'user_id\': 2, \'dept_id\': 100, \'username\': \'test\', \'nick_name\': \'test\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121281748142.jpg\', \'status\': \'1\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'普通管理员\'}, {\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'user_type\': \'0\', \'email\': \'thinkpython@163.com\', \'phone\': \'15888888888\', \'sex\': \'1\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121483185903.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': None, \'remark\': \'超级管理员\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 10, \'totalPage\': 1}}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('95', 'system', '0', 'get_list', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/get_list?pageNum=1&pageSize=10&dept_id=&username=&phone=&status=', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'10\', \'dept_id\': \'\', \'username\': \'\', \'phone\': \'\', \'status\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'user_id\': 23, \'dept_id\': 101, \'username\': \'士大夫\', \'nick_name\': \'萨芬\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-07-08 17:21:34\', \'update_user\': \'\', \'update_time\': None, \'remark\': \'发布角色\'}, {\'user_id\': 20, \'dept_id\': 113, \'username\': \'chinacsj\', \'nick_name\': \'chinacsj\', \'user_type\': \'0\', \'email\': \'1@q.com\', \'phone\': \'15180809090\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-04-28 06:47:11\', \'update_user\': \'\', \'update_time\': \'2024-05-06 18:23:43\', \'remark\': \'普通角色\'}, {\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-06-28 11:32:17\', \'remark\': \'发布人员\'}, {\'user_id\': 2, \'dept_id\': 100, \'username\': \'test\', \'nick_name\': \'test\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121281748142.jpg\', \'status\': \'1\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'普通管理员\'}, {\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'user_type\': \'0\', \'email\': \'thinkpython@163.com\', \'phone\': \'15888888888\', \'sex\': \'1\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121483185903.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': None, \'remark\': \'超级管理员\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 10, \'totalPage\': 1}}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('96', 'system', '2', 'update', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/update', '127.0.0.1', '', '{}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('97', 'system', '0', 'get_list', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/get_list?pageNum=1&pageSize=10&dept_id=&username=&phone=&status=', '127.0.0.1', '', '{\'pageNum\': \'1\', \'pageSize\': \'10\', \'dept_id\': \'\', \'username\': \'\', \'phone\': \'\', \'status\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': {\'list\': [{\'user_id\': 23, \'dept_id\': 101, \'username\': \'士大夫\', \'nick_name\': \'萨芬\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-07-08 17:21:34\', \'update_user\': \'\', \'update_time\': \'2024-07-08 17:21:34\', \'remark\': \'发布角色公共\'}, {\'user_id\': 20, \'dept_id\': 113, \'username\': \'chinacsj\', \'nick_name\': \'chinacsj\', \'user_type\': \'0\', \'email\': \'1@q.com\', \'phone\': \'15180809090\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'create_time\': \'2024-04-28 06:47:11\', \'update_user\': \'\', \'update_time\': \'2024-05-06 18:23:43\', \'remark\': \'普通角色\'}, {\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-06-28 11:32:17\', \'remark\': \'发布人员\'}, {\'user_id\': 2, \'dept_id\': 100, \'username\': \'test\', \'nick_name\': \'test\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121281748142.jpg\', \'status\': \'1\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': \'2024-05-07 10:20:55\', \'remark\': \'普通管理员\'}, {\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'user_type\': \'0\', \'email\': \'thinkpython@163.com\', \'phone\': \'15888888888\', \'sex\': \'1\', \'avatar\': \'https://p.qqan.com/up/2023-12/2023121483185903.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'create_time\': None, \'update_user\': \'\', \'update_time\': None, \'remark\': \'超级管理员\'}], \'total\': 5, \'pageNum\': 1, \'pageSize\': 10, \'totalPage\': 1}}', '0', '', '2024-07-08 17:21:34');
INSERT INTO `sys_operation_log` VALUES ('98', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/update', '127.0.0.1', '', '{\'user_id\': 23, \'dept_id\': 101, \'username\': \'士大夫\', \'nick_name\': \'萨芬\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'update_user\': \'\', \'update_time\': \'2024-07-08 17:31:16\', \'remark\': \'发布角色公共567\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-08 17:31:16');
INSERT INTO `sys_operation_log` VALUES ('99', 'system', '3', 'user_delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/user_delete?user_id=23', '127.0.0.1', '', '{\'user_id\': \'23\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-08 17:31:16');
INSERT INTO `sys_operation_log` VALUES ('100', 'system', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/add', '127.0.0.1', '', '{\'username\': \'手动阀手动阀\', \'nick_name\': \'士大夫\', \'sex\': \'0\', \'password\': \'1d8d160afc5dd720d3a6334dfdc8d6ad\', \'status\': \'0\', \'remark\': \'sdf \', \'create_time\': \'2024-07-08 17:38:50\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-08 17:38:50');
INSERT INTO `sys_operation_log` VALUES ('101', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/update', '127.0.0.1', '', '{\'user_id\': 24, \'dept_id\': 101, \'username\': \'手动阀手动阀\', \'nick_name\': \'士大夫\', \'user_type\': \'0\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'update_user\': \'\', \'update_time\': \'2024-07-08 17:38:50\', \'remark\': \'sdf sadfsd\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-08 17:38:50');
INSERT INTO `sys_operation_log` VALUES ('102', 'system', '3', 'user_delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8084/system/user/user_delete?user_id=24', '127.0.0.1', '', '{\'user_id\': \'24\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-08 17:38:50');
INSERT INTO `sys_operation_log` VALUES ('103', 'product', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/product/product/add', '127.0.0.1', '', '{\'name\': \'rse\', \'type\': \'1\', \'version\': \'erte\', \'feature\': \'erte\', \'release_notes\': \'ert\', \'status\': \'0\', \'remark\': \'ert\', \'create_time\': \'2024-07-23 18:08:49\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-23 18:08:49');
INSERT INTO `sys_operation_log` VALUES ('104', 'product', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/product/product/add', '127.0.0.1', '', '{\'name\': \'HTML模板混合版\', \'type\': \'2\', \'version\': \'v1.2\', \'feature\': \'HTML模板混合版采用vue3HTML作为模板集成在框架里面，不用分开部署，减少维护成本\', \'status\': \'2\', \'remark\': \'开发难度可能偏大\', \'create_time\': \'2024-07-29 10:00:10\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-29 10:00:10');
INSERT INTO `sys_operation_log` VALUES ('105', 'product', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/product/product/add', '127.0.0.1', '', '{\'name\': \'前后端VUE分离版\', \'version\': \'v1.2\', \'feature\': \'前后端VUE分离版，适合团队协作开发，前后端分开部署\', \'status\': \'2\', \'remark\': \'\', \'create_time\': \'2024-07-29 10:00:10\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-07-29 10:00:10');
INSERT INTO `sys_operation_log` VALUES ('106', 'vip', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon_type/add', '127.0.0.1', '', '{\'type_name\': \'新用户券\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 16:15:28');
INSERT INTO `sys_operation_log` VALUES ('107', 'vip', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon_type/delete?id=2', '127.0.0.1', '', '{\'id\': \'2\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 16:18:00');
INSERT INTO `sys_operation_log` VALUES ('108', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon_type/update', '127.0.0.1', '', '{\'id\': 1, \'type_name\': \'新用户券2\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 16:26:17');
INSERT INTO `sys_operation_log` VALUES ('109', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon_type/update', '127.0.0.1', '', '{\'id\': 1, \'type_name\': \'新用户券\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 16:26:17');
INSERT INTO `sys_operation_log` VALUES ('110', 'vip', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/add', '127.0.0.1', '', '{\'name\': \'新用户专享\', \'type_id\': 1, \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:29:24');
INSERT INTO `sys_operation_log` VALUES ('111', 'vip', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/delete?id=2', '127.0.0.1', '', '{\'id\': \'2\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:31:27');
INSERT INTO `sys_operation_log` VALUES ('112', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 1, \'type_id\': 1, \'name\': \'新用户专享2\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('113', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 1, \'type_id\': 1, \'name\': \'新用户专享\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('114', 'vip', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon_type/add', '127.0.0.1', '', '{\'type_name\': \'节日活动\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('115', 'vip', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/add', '127.0.0.1', '', '{\'name\': \'“十一”国庆节活动\', \'type_id\': 3, \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 30}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('116', 'vip', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/add', '127.0.0.1', '', '{\'name\': \'“五一”劳动节活动\', \'type_id\': 3, \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('117', 'vip', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/add', '127.0.0.1', '', '{\'name\': \'“双十一”优惠活动\', \'type_id\': 3, \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 30}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('118', 'vip', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/add', '127.0.0.1', '', '{\'name\': \'“6·18”优惠活动\', \'type_id\': 3, \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('119', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 5, \'type_id\': 3, \'name\': \'“双十一”优惠活动\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('120', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 3, \'type_id\': 3, \'name\': \'“十一”国庆节活动\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-06 17:39:03');
INSERT INTO `sys_operation_log` VALUES ('121', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 6, \'type_id\': 3, \'name\': \'“6·18”优惠活动\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-06-01 00:00:00\', \'end_time\': \'2024-06-28 00:00:00\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 10:42:33');
INSERT INTO `sys_operation_log` VALUES ('122', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 6, \'type_id\': 3, \'name\': \'“6·18”优惠活动\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-06-01 00:00:00\', \'end_time\': \'2024-06-18 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 11:14:33');
INSERT INTO `sys_operation_log` VALUES ('123', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 5, \'type_id\': 3, \'name\': \'“双十一”优惠活动\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-11-01 00:00:00\', \'end_time\': \'2024-11-11 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 11:14:33');
INSERT INTO `sys_operation_log` VALUES ('124', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 4, \'type_id\': 3, \'name\': \'“五一”劳动节活动\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-04-01 00:00:00\', \'end_time\': \'2024-05-01 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 11:14:33');
INSERT INTO `sys_operation_log` VALUES ('125', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 3, \'type_id\': 3, \'name\': \'“十一”国庆节活动\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-09-01 00:00:00\', \'end_time\': \'2024-10-07 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 11:14:33');
INSERT INTO `sys_operation_log` VALUES ('126', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/add', '127.0.0.1', '', '{\'type_name\': \'意见征集\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('127', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/add', '127.0.0.1', '', '{\'type_name\': \'其它公告\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('128', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/add', '127.0.0.1', '', '{\'type_name\': \'调整公告\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('129', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/add', '127.0.0.1', '', '{\'type_name\': \'开发预告\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('130', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/add', '127.0.0.1', '', '{\'type_name\': \'闲言闲语\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('131', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/add', '127.0.0.1', '', '{\'type_name\': \'护公告\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('132', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/add', '127.0.0.1', '', '{\'type_name\': \'活动公告\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('133', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 6, \'type_name\': \'维护公告\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 14:36:51');
INSERT INTO `sys_operation_log` VALUES ('134', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 7, \'type_name\': \'活动公告\', \'url\': \'/member/notice/type/id/7\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 15:24:09');
INSERT INTO `sys_operation_log` VALUES ('135', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 6, \'type_name\': \'维护公告\', \'url\': \'/member/notice/type/id/6\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 15:24:09');
INSERT INTO `sys_operation_log` VALUES ('136', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 5, \'type_name\': \'闲言闲语\', \'url\': \'/member/notice/type/id/5\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 15:24:09');
INSERT INTO `sys_operation_log` VALUES ('137', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 4, \'type_name\': \'开发预告\', \'url\': \'/member/notice/type/id/4\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 15:24:09');
INSERT INTO `sys_operation_log` VALUES ('138', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 3, \'type_name\': \'调整公告\', \'url\': \'/member/notice/type/id/3\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 15:24:09');
INSERT INTO `sys_operation_log` VALUES ('139', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 2, \'type_name\': \'其它公告\', \'url\': \'/member/notice/type/id/2\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 15:24:09');
INSERT INTO `sys_operation_log` VALUES ('140', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice_type/update', '127.0.0.1', '', '{\'id\': 1, \'type_name\': \'意见征集\', \'url\': \'/member/notice/type/id/1\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-08 15:24:09');
INSERT INTO `sys_operation_log` VALUES ('141', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/add', '127.0.0.1', '', '{\'title\': \'啊实打实的\', \'type_id\': 5, \'status\': \'0\', \'content\': \'<p>啊实打实的</p>\', \'url\': \'/member/notice/show/\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:15:22');
INSERT INTO `sys_operation_log` VALUES ('142', 'websetting', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/delete?id=1', '127.0.0.1', '', '{\'id\': \'1\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:15:22');
INSERT INTO `sys_operation_log` VALUES ('143', 'websetting', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/delete?id=2', '127.0.0.1', '', '{\'id\': \'2\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:15:22');
INSERT INTO `sys_operation_log` VALUES ('144', 'websetting', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/delete?id=3', '127.0.0.1', '', '{\'id\': \'3\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:15:22');
INSERT INTO `sys_operation_log` VALUES ('145', 'websetting', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/delete?id=4', '127.0.0.1', '', '{\'id\': \'4\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:26:10');
INSERT INTO `sys_operation_log` VALUES ('146', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/add', '127.0.0.1', '', '{\'title\': \'啊水水水水\', \'type_id\': 2, \'status\': \'0\', \'content\': \'<p>啊啊啊啊</p><p><img src=\"/static/uploadfiles\\\\e8d884d9763ef6374a61a2f0223f7c929f54f056379f412f74e574ab2aeb672d.png\" alt=\"人.png\" data-href=\"/static/uploadfiles\\\\e8d884d9763ef6374a61a2f0223f7c929f54f056379f412f74e574ab2aeb672d.png\" style=\"\"/></p>\', \'url\': \'/member/notice/show/\', \'create_time\': \'2024-08-20 17:26:10\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:26:10');
INSERT INTO `sys_operation_log` VALUES ('147', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/update', '127.0.0.1', '', '{\'id\': 5, \'type_id\': 2, \'title\': \'啊水水水水\', \'url\': \'/member/notice/show/id/5\', \'status\': \'0\', \'content\': \'<p>啊啊啊啊的风格和的风格和的风格和</p><p><img src=\"/static/uploadfiles\\\\e8d884d9763ef6374a61a2f0223f7c929f54f056379f412f74e574ab2aeb672d.png\" alt=\"人.png\" data-href=\"/static/uploadfiles\\\\e8d884d9763ef6374a61a2f0223f7c929f54f056379f412f74e574ab2aeb672d.png\" style=\"\"/></p>\', \'create_time\': \'2024-08-20 17:26:10\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:28:40');
INSERT INTO `sys_operation_log` VALUES ('148', 'websetting', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/add', '127.0.0.1', '', '{\'title\': \'啊实打实的\', \'type_id\': 5, \'status\': \'0\', \'content\': \'<p>啊实打实的</p>\', \'url\': \'/member/notice/show/\', \'create_time\': \'2024-08-20 17:28:40\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-20 17:28:40');
INSERT INTO `sys_operation_log` VALUES ('149', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/update', '127.0.0.1', '', '{\'id\': 6, \'type_id\': 5, \'title\': \'啊实打实的\', \'url\': \'/member/notice/show/id/6\', \'status\': \'3\', \'content\': \'<p><br></p>\', \'create_time\': \'2024-08-20 17:28:40\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-21 09:09:48');
INSERT INTO `sys_operation_log` VALUES ('150', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/update', '127.0.0.1', '', '{\'id\': 5, \'type_id\': 2, \'title\': \'啊水水水水\', \'url\': \'/member/notice/show/id/5\', \'status\': \'3\', \'content\': \'<p>啊啊啊啊的风格和的风格和的风格和</p><p><img src=\"/static/uploadfiles\\\\e8d884d9763ef6374a61a2f0223f7c929f54f056379f412f74e574ab2aeb672d.png\" alt=\"人.png\" data-href=\"/static/uploadfiles\\\\e8d884d9763ef6374a61a2f0223f7c929f54f056379f412f74e574ab2aeb672d.png\" style=\"\"/></p>\', \'create_time\': \'2024-08-20 17:26:10\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-21 09:09:48');
INSERT INTO `sys_operation_log` VALUES ('151', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/update', '127.0.0.1', '', '{\'id\': 6, \'type_id\': 5, \'title\': \'啊实打实的\', \'url\': \'/member/notice/show/id/6\', \'status\': \'3\', \'content\': \'<p>asdasd</p>\', \'create_time\': \'2024-08-20 17:28:40\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-21 09:09:48');
INSERT INTO `sys_operation_log` VALUES ('152', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 4, \'type_id\': 3, \'name\': \'“五一”劳动节活动\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-04-01 00:00:00\', \'end_time\': \'2024-05-01 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('153', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 6, \'type_id\': 3, \'name\': \'“6·18”优惠\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-06-01 00:00:00\', \'end_time\': \'2024-06-18 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('154', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 5, \'type_id\': 3, \'name\': \'“双十一”优惠\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-11-01 00:00:00\', \'end_time\': \'2024-11-11 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('155', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 4, \'type_id\': 3, \'name\': \'“五一”优惠\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-04-01 00:00:00\', \'end_time\': \'2024-05-01 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('156', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 3, \'type_id\': 3, \'name\': \'“十一”国庆优惠\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-09-01 00:00:00\', \'end_time\': \'2024-10-07 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('157', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 5, \'type_id\': 3, \'name\': \'“11.11”优惠\', \'discount\': 85, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-11-01 00:00:00\', \'end_time\': \'2024-11-11 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('158', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 4, \'type_id\': 3, \'name\': \'“5.1”优惠\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-04-01 00:00:00\', \'end_time\': \'2024-05-01 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('159', 'vip', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/vip/coupon/update', '127.0.0.1', '', '{\'id\': 3, \'type_id\': 3, \'name\': \'“10.1”国庆优惠\', \'discount\': 88, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-09-01 00:00:00\', \'end_time\': \'2024-10-07 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-23 10:03:37');
INSERT INTO `sys_operation_log` VALUES ('160', 'system', '3', 'user_delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/system/user/user_delete?user_id=4', '127.0.0.1', '', '{\'user_id\': \'4\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-30 15:34:36');
INSERT INTO `sys_operation_log` VALUES ('161', 'system', '3', 'user_delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/system/user/user_delete?user_id=4', '127.0.0.1', '', '{\'user_id\': \'4\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-08-30 15:34:36');
INSERT INTO `sys_operation_log` VALUES ('162', 'websetting', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/websetting/notice/update', '127.0.0.1', '', '{\'id\': 6, \'type_id\': 5, \'title\': \'啊实打实的\', \'url\': \'/member/notice/show/id/6\', \'status\': \'3\', \'content\': \'<p>asdasd?</p>\', \'create_time\': \'2024-08-20 17:28:40\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-10-21 10:36:12');
INSERT INTO `sys_operation_log` VALUES ('163', 'system', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/system/user/add', '127.0.0.1', '', '{\'username\': \'test\', \'nick_name\': \'test\', \'sex\': \'0\', \'password\': \'e7e94e5f58e6393711fca058582d72aa\', \'status\': \'0\', \'remark\': \'\', \'create_time\': \'2024-10-29 04:15:41\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-10-29 04:15:41');
INSERT INTO `sys_operation_log` VALUES ('164', 'system', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/system/user/add', '127.0.0.1', '', '{\'username\': \'test22\', \'nick_name\': \'test222\', \'sex\': \'0\', \'password\': \'e7e94e5f58e6393711fca058582d72aa\', \'status\': \'0\', \'remark\': \'rest222\', \'create_time\': \'2024-10-29 05:20:43\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-10-29 05:20:43');
INSERT INTO `sys_operation_log` VALUES ('165', 'attachment', '3', 'mult_delete', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/attachment/attachment/mult_delete', '127.0.0.1', '', '{\'ids\': [18, 17]}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-10-31 17:20:40');
INSERT INTO `sys_operation_log` VALUES ('166', 'attachment', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/attachment/attachment/delete?id=5', '127.0.0.1', '', '{\'id\': \'5\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-10-31 19:22:19');
INSERT INTO `sys_operation_log` VALUES ('167', 'attachment', '3', 'mult_delete', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/attachment/attachment/mult_delete', '127.0.0.1', '', '{\'ids\': [16, 15, 14, 13, 12, 11, 10, 9, 8, 7]}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-01 16:01:38');
INSERT INTO `sys_operation_log` VALUES ('168', 'attachment', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/attachment/attachment/delete?id=6', '127.0.0.1', '', '{\'id\': \'6\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-01 16:01:38');
INSERT INTO `sys_operation_log` VALUES ('169', 'attachment', '3', 'mult_delete', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/attachment/attachment/mult_delete', '127.0.0.1', '', '{\'ids\': [4, 3, 2, 1]}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-01 16:01:38');
INSERT INTO `sys_operation_log` VALUES ('170', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'公司简介\', \'catid\': 1, \'url\': \'\', \'status\': \'0\', \'islink\': 1, \'content\': \'<p>公司简介公司简介公司简介公司简介</p>\', \'template\': \'about.html\', \'create_time\': \'2024-11-03T18:02:02.000Z\', \'description\': \'公司简介\', \'thumb\': \'/static/uploadfiles\\\\86d0c52b9854549ba12de27136a76707e30a46ef1eefdab0abec3bed0e44a2b4.jpg\'}', '{\'code\': 201, \'msg\': \'操作失败\', \'data\': []}', '1', '操作失败', '2024-11-04 03:24:03');
INSERT INTO `sys_operation_log` VALUES ('171', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'公司简介公司简介\', \'catid\': 1, \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\05ffb8bad2c2e4a2ea494ce581b26af261ff8e111c11efa47ae7f25182bf7317.jpg\', \'status\': \'0\', \'islink\': 1, \'content\': \'<p>公司简介公司简介公司简介公司简介</p>\', \'template\': \'about.html\', \'create_time\': \'2024-11-03T18:01:01.000Z\', \'description\': \'公司简介公司简介\'}', '{\'code\': 201, \'msg\': \'操作失败\', \'data\': []}', '1', '操作失败', '2024-11-04 03:33:01');
INSERT INTO `sys_operation_log` VALUES ('172', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'公司简介共公司简介\', \'catid\': 1, \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\a129fc9791dad4827c6786b051c443426f396d073a3c2c60253313c00c4a11f5.png\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p>公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介</p>\', \'template\': \'about.html\', \'create_time\': \'2024-11-04T00:03:02.000Z\', \'description\': \'公司简介共公司简介\'}', '{\'code\': 201, \'msg\': \'操作失败\', \'data\': []}', '1', '操作失败', '2024-11-04 03:40:37');
INSERT INTO `sys_operation_log` VALUES ('173', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'公司简介共公司简介\', \'catid\': 1, \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\a129fc9791dad4827c6786b051c443426f396d073a3c2c60253313c00c4a11f5.png\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p>公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介</p>\', \'template\': \'about.html\', \'create_time\': \'2024-11-04T00:03:02.000Z\', \'description\': \'公司简介共公司简介\'}', '{\'code\': 201, \'msg\': \'操作失败\', \'data\': []}', '1', '操作失败', '2024-11-04 03:48:50');
INSERT INTO `sys_operation_log` VALUES ('174', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'公司简介共公司简介\', \'catid\': 1, \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\a129fc9791dad4827c6786b051c443426f396d073a3c2c60253313c00c4a11f5.png\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p>公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介公司简介共公司简介</p>\', \'template\': \'about.html\', \'create_time\': \'2024-11-04T00:03:02.000Z\', \'description\': \'公司简介共公司简介\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-04 03:54:13');
INSERT INTO `sys_operation_log` VALUES ('175', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'服务条款\', \'catid\': 2, \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\9f6c28b8d4d162412e795aca30628ee0b1a05bb9124046c742315328513f0254.png\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p>服务条款服务条款服务条款服务条款</p>\', \'template\': \'service.html\', \'create_time\': \'\', \'description\': \'服务条款\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-04 04:10:50');
INSERT INTO `sys_operation_log` VALUES ('176', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 6, \'catid\': 2, \'title\': \'服务条款123\', \'thumb\': \'/static/uploadfiles\\\\9f6c28b8d4d162412e795aca30628ee0b1a05bb9124046c742315328513f0254.png\', \'description\': \'服务条款122222\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'0\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-04 04:10:50\', \'update_time\': \'2024-11-04 04:10:50\', \'content\': \'<p>服务条款服务条款服务条款服务条款2222222222</p>\', \'template\': \'service.html\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-04 05:46:17');
INSERT INTO `sys_operation_log` VALUES ('177', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'啊实打实\', \'catid\': 3, \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\200f5ea5fa8a52ae79cca87280055405512eb50d2f6751147d9f2f6c0270ed67.png\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p>手动阀手动阀手动阀手动阀撒旦</p>\', \'template\': \'\', \'author\': \'作者\', \'copyfrom\': \'原创\', \'editor\': \'编辑\', \'allow_comment\': \'0\', \'create_time\': \'\', \'description\': \'撒旦发射点\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-04 06:30:59');
INSERT INTO `sys_operation_log` VALUES ('178', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要通知】Bmob后端云开发版收费调整通知\', \'catid\': 7, \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\775b222fbd5573301f1983770d943c385e2dc0638d8cf204812032ab28a29972.png\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p style=\"text-align: start;\">各位Bmob后端云开发者：</p><p style=\"text-align: start;\"> &nbsp; &nbsp; &nbsp; &nbsp;感谢大家一直以来对Bmob后端云的喜爱与支持。由于云服务成本整体提升，为了继续给大家提供稳定可靠的服务，Bmob后端云将于2023年4月10正式调整开发版的收费方式，开发版新计费模式为：新用户免费体验期3个月，体验期过后每月30元，其他指标均保持不变。感谢大家的理解和支持。</p>\', \'template\': \'\', \'author\': \'PythonStyle运营团队\', \'copyfrom\': \'原创\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'感谢大家一直以来对Bmob后端云的喜爱与支持。由于云服务成本整体提升，为了继续给大家提\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:11:52');
INSERT INTO `sys_operation_log` VALUES ('179', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要通知】请各位开发者尽快绑定文件域名\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(100, 100, 100); background-color: rgb(255, 255, 255); font-size: 14px;\"> &nbsp; &nbsp; &nbsp; &nbsp;亲爱的比目用户，由于国内监管政策的调整，从2021/2/22号起，平台提供域名不再新提供文件域名开通服务，绑定自有文件域名可联系我们解除限制，之前开通的域名等服务到期不再支持使用， 收到上游服务商通知，最近对APK文件的监管要求，故从从2021/2/23号起平台文件服务将禁止任何APK文件下载，其他格式文件不受影响。 请有APK文件下载需求的开发者，请把APK文件上传到正规应用市场，让用户在市场进行更新操作。<br><br> &nbsp; &nbsp; &nbsp; &nbsp;近段时间，免费与专业版经常出现控制台数据加载中，这个问题困扰了我们较长时间。当时我们发现了当数据表特别大，或者单字段写入长文本导致数据条件查询时卡死数据库。当时想的解决办法是，希望大家文章之类的长字符都写到控制台新增的功能文章栏目，统计做好长文本处理，并且限制大家查询的时候，查出最高单次限制1mb数据，以为这样大家就不会写入长文本卡主数据库， 主要是考虑大家的使用体验，所以并未限制大家存入字符长度。导致一些开发者无节制的存入长文本，最近越发严重，引发数据库查询卡死频繁。为了解决这个问题，分为限制与引入新数据库ElasticSearch来解决这个问题，紧急提高稳定性，先紧急限制大家单次写入数据大小，后面引入新数据库全文搜索引擎来实现大家保存长文本问题， 目前计划分2步来解决。<br><br><br>第一步：在2021/3/1号起限制免费版每次存入数据大小为40960bytes，限制专业版每次存入数据大小为204800bytes，企业版每次存入数据大小为512000bytes，企业PRO版每次存入数据大小为1048576bytes，新数据库系统没上线之前，暂时以这个大小为限制范围，后面根据系统运行情况，会适当加紧与放宽。<br><br><br>第二步：基于ElasticSearch开发出适合长文本存储，并取消写入长度限制。<br><br><br>如有任何疑问，欢迎提交工单、联系在线客服。</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \' 亲爱的比目用户，由于国内监管政策的调整，从2021/2/22号起，平台提供域名不再新提供文件域名开通服务，绑定自有文件域名可联系我们解除限制，之前开通的域名等服务到期不再支持使用， 收到上游服务商通知\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:11:52');
INSERT INTO `sys_operation_log` VALUES ('180', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 9, \'catid\': 7, \'title\': \'【重要通知】请各位开发者尽快绑定文件域名\', \'thumb\': \'/static/uploadfiles\\\\dcec574773e76bf6bb5e464de84da2a8da4c94b377854a12053b4021740b953a.png\', \'description\': \'亲爱的比目用户，由于国内监管政策的调整，从2021/2/22号起，平台提供域名不再新提供文件域名开通服务，绑定自有文件域名可联系我们解除限制，之前开通的域名等服务到期不再支持使用， 收到上游服务商通知\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:11:52\', \'update_time\': \'2024-11-05 06:40:39\', \'content\': \'<p><span style=\"color: rgb(100, 100, 100); background-color: rgb(255, 255, 255); font-size: 14px;\"> &nbsp; &nbsp; &nbsp; &nbsp;亲爱的比目用户，由于国内监管政策的调整，从2021/2/22号起，平台提供域名不再新提供文件域名开通服务，绑定自有文件域名可联系我们解除限制，之前开通的域名等服务到期不再支持使用， 收到上游服务商通知，最近对APK文件的监管要求，故从从2021/2/23号起平台文件服务将禁止任何APK文件下载，其他格式文件不受影响。 请有APK文件下载需求的开发者，请把APK文件上传到正规应用市场，让用户在市场进行更新操作。<br><br> &nbsp; &nbsp; &nbsp; &nbsp;近段时间，免费与专业版经常出现控制台数据加载中，这个问题困扰了我们较长时间。当时我们发现了当数据表特别大，或者单字段写入长文本导致数据条件查询时卡死数据库。当时想的解决办法是，希望大家文章之类的长字符都写到控制台新增的功能文章栏目，统计做好长文本处理，并且限制大家查询的时候，查出最高单次限制1mb数据，以为这样大家就不会写入长文本卡主数据库， 主要是考虑大家的使用体验，所以并未限制大家存入字符长度。导致一些开发者无节制的存入长文本，最近越发严重，引发数据库查询卡死频繁。为了解决这个问题，分为限制与引入新数据库ElasticSearch来解决这个问题，紧急提高稳定性，先紧急限制大家单次写入数据大小，后面引入新数据库全文搜索引擎来实现大家保存长文本问题， 目前计划分2步来解决。<br><br><br>第一步：在2021/3/1号起限制免费版每次存入数据大小为40960bytes，限制专业版每次存入数据大小为204800bytes，企业版每次存入数据大小为512000bytes，企业PRO版每次存入数据大小为1048576bytes，新数据库系统没上线之前，暂时以这个大小为限制范围，后面根据系统运行情况，会适当加紧与放宽。<br><br><br>第二步：基于ElasticSearch开发出适合长文本存储，并取消写入长度限制。<br><br><br>如有任何疑问，欢迎提交工单、联系在线客服。</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('181', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 8, \'catid\': 7, \'title\': \'【重要通知】开发版收费调整通知\', \'thumb\': \'/static/uploadfiles\\\\775b222fbd5573301f1983770d943c385e2dc0638d8cf204812032ab28a29972.png\', \'description\': \'感谢大家一直以来对Bmob后端云的喜爱与支持。由于云服务成本整体提升，为了继续给大家提\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:11:52\', \'update_time\': \'2024-11-05 06:11:52\', \'content\': \'<p style=\"text-align: start;\">各位Bmob后端云开发者：</p><p style=\"text-align: start;\"> &nbsp; &nbsp; &nbsp; &nbsp;感谢大家一直以来对Bmob后端云的喜爱与支持。由于云服务成本整体提升，为了继续给大家提供稳定可靠的服务，Bmob后端云将于2023年4月10正式调整开发版的收费方式，开发版新计费模式为：新用户免费体验期3个月，体验期过后每月30元，其他指标均保持不变。感谢大家的理解和支持。</p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'原创\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('182', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('183', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要通知】12.1号将正式关停未绑定独立域名的应用</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('184', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('185', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常2\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('186', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常3\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('187', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常4\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('188', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('189', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'平台公有云用户数据访问异常公告\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'平台公有云用户数据访问异常公告\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('190', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'应用官网功能下架通知\', \'catid\': 7, \'url\': \'\', \'thumb\': \'\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">应用官网功能下架通知应用官网功能下架通知应用官网功能下架通知</span></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\', \'description\': \'应用官网功能下架通知\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 06:52:03');
INSERT INTO `sys_operation_log` VALUES ('191', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 8, \'catid\': 7, \'title\': \'【重要通知】开发版收费调整通知\', \'thumb\': \'/static/uploadfiles\\\\775b222fbd5573301f1983770d943c385e2dc0638d8cf204812032ab28a29972.png\', \'description\': \'感谢大家一直以来对PythonStyle的喜爱与支持。由于云服务成本整体提升，为了继续给大家提\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:11:52\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p style=\"text-align: start;\">各位PythonStyle开发者：</p><p style=\"text-align: start;\"> &nbsp; &nbsp; &nbsp; &nbsp;感谢大家一直以来对PythonStyle的喜爱与支持。由于云服务成本整体提升，为了继续给大家提供稳定可靠的服务，PythonStyle将于2023年4月10正式调整开发版的收费方式，开发版新计费模式为：新用户免费体验期3个月，体验期过后每月30元，其他指标均保持不变。感谢大家的理解和支持。</p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'原创\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 14:32:57');
INSERT INTO `sys_operation_log` VALUES ('192', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 10, \'catid\': 7, \'title\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用\', \'thumb\': \'/static/uploadfiles\\\\5a47cba05b09c3ff8d4b84dc123d3d8597172cddac29a9fe4edd1d9ddf92e2d7.jpg\', \'description\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用【重要通知】12.1号将正式关停未绑定独立域名的应用</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('193', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 11, \'catid\': 7, \'title\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用\', \'thumb\': \'/static/uploadfiles\\\\6fca734e8ae9ced21075af44359786c143da5847f0b2a498d5ebe0086f5df16e.jpg\', \'description\': \'【重要通知】12.1号将正式关停未绑定独立域名的应用\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要通知】12.1号将正式关停未绑定独立域名的应用</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('194', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 12, \'catid\': 7, \'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'thumb\': \'/static/uploadfiles\\\\f6894a00779871ee9a66a0d9509e58d28f2c17b54fd72a8e8d616f43d2d4688a.png\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('195', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 13, \'catid\': 7, \'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常2\', \'thumb\': \'/static/uploadfiles\\\\adaebc2dc6e57c2fdf24c5b70cc26e1e43cd1722165f0e99ba99a93018a92079.png\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('196', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 14, \'catid\': 7, \'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常3\', \'thumb\': \'/static/uploadfiles\\\\f6c6acf3fa1256a1233aa143ceb722cde8b37a6c32ec7a7c19b7a50f2c2d4b13.png\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('197', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 15, \'catid\': 7, \'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常4\', \'thumb\': \'/static/uploadfiles\\\\f7e172502a5c320a1b1d07a617510039efada650ee18c8738344cb0840497b6b.png\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('198', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 16, \'catid\': 7, \'title\': \'【重要公告】服务API被关停访问故障已经全部恢复正常\', \'thumb\': \'/static/uploadfiles\\\\e7d9a41f1041cd1a09dc8ebf85340d0f947bc6989565804878fc331ffb32a122.png\', \'description\': \'【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常【重要公告】服务API被关停访问故障已经全部恢复正常</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('199', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 17, \'catid\': 7, \'title\': \'平台公有云用户数据访问异常公告\', \'thumb\': \'/static/uploadfiles\\\\9894f468a0dc996f31ade84b012041ea1fe00c77a33f317ec0d6696bf9fbb7b1.png\', \'description\': \'平台公有云用户数据访问异常公告\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告平台公有云用户数据访问异常公告</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('200', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 18, \'catid\': 7, \'title\': \'应用官网功能下架通知\', \'thumb\': \'/static/uploadfiles\\\\4974f9aaa798de8119f99519b115ce5ee270e4a5dfb9e0ec2128281da8fd1b9b.jpg\', \'description\': \'应用官网功能下架通知\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-05 06:52:03\', \'update_time\': \'2024-11-05 06:52:03\', \'content\': \'<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">应用官网功能下架通知应用官网功能下架通知应用官网功能下架通知</span></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'PythonStyle运营团队\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-05 15:28:49');
INSERT INTO `sys_operation_log` VALUES ('201', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=14', '127.0.0.1', '', '{\'id\': \'14\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('202', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=15', '127.0.0.1', '', '{\'id\': \'15\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('203', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=16', '127.0.0.1', '', '{\'id\': \'16\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('204', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=17', '127.0.0.1', '', '{\'id\': \'17\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('205', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=18', '127.0.0.1', '', '{\'id\': \'18\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('206', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=13', '127.0.0.1', '', '{\'id\': \'13\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('207', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=12', '127.0.0.1', '', '{\'id\': \'12\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('208', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=11', '127.0.0.1', '', '{\'id\': \'11\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('209', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=10', '127.0.0.1', '', '{\'id\': \'10\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('210', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=9', '127.0.0.1', '', '{\'id\': \'9\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('211', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=8', '127.0.0.1', '', '{\'id\': \'8\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('212', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=7', '127.0.0.1', '', '{\'id\': \'7\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('213', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=6', '127.0.0.1', '', '{\'id\': \'6\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('214', 'content', '3', 'delete', 'GET', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/delete?id=5', '127.0.0.1', '', '{\'id\': \'5\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-11 09:22:58');
INSERT INTO `sys_operation_log` VALUES ('215', 'custom', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/custom/coupon/update', '127.0.0.1', '', '{\'id\': 3, \'type_id\': 3, \'name\': \'“10.1”国庆优惠\', \'discount\': 70, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-09-01 00:00:00\', \'end_time\': \'2024-10-07 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-18 12:18:57');
INSERT INTO `sys_operation_log` VALUES ('216', 'custom', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/custom/coupon/update', '127.0.0.1', '', '{\'id\': 3, \'type_id\': 3, \'name\': \'“10.1”国庆优惠\', \'discount\': 70, \'range\': \'会员商店\', \'expiration\': 7, \'start_time\': \'2024-09-01 00:00:00\', \'end_time\': \'2025-10-07 23:59:59\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-18 12:39:36');
INSERT INTO `sys_operation_log` VALUES ('217', 'content', '1', 'add', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/add', '127.0.0.1', '', '{\'title\': \'演示版说明介绍\', \'catid\': 9, \'description\': \'\', \'url\': \'\', \'thumb\': \'/static/uploadfiles\\\\2f890ba59764793499c0453a1a2d3e32c00e340f0957e1871aeafb981cc2e84e.png\', \'status\': \'0\', \'islink\': 0, \'content\': \'<p><img src=\"/static/uploadfiles\\\\a89dec731347b886671751e2831f554964594e2cbf6b857b9b4d35247b4d273f.png\" alt=\"登录.png\" data-href=\"/static/uploadfiles\\\\a89dec731347b886671751e2831f554964594e2cbf6b857b9b4d35247b4d273f.png\" style=\"\"/></p>\', \'template\': \'\', \'author\': \'\', \'copyfrom\': \'\', \'editor\': \'\', \'allow_comment\': 1, \'create_time\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-29 09:58:56');
INSERT INTO `sys_operation_log` VALUES ('218', 'content', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8085/content/content/update', '127.0.0.1', '', '{\'id\': 1, \'catid\': 9, \'title\': \'演示版说明介绍\', \'thumb\': \'/static/uploadfiles\\\\2f890ba59764793499c0453a1a2d3e32c00e340f0957e1871aeafb981cc2e84e.png\', \'description\': \'\', \'posids\': 0, \'url\': \'\', \'listorder\': 0, \'status\': \'99\', \'islink\': 0, \'username\': \'admin\', \'create_time\': \'2024-11-29 09:58:56\', \'update_time\': \'2024-11-29 09:58:56\', \'content\': \'<p><img src=\"/static/uploadfiles\\\\a89dec731347b886671751e2831f554964594e2cbf6b857b9b4d35247b4d273f.png\" alt=\"登录.png\" data-href=\"/static/uploadfiles\\\\a89dec731347b886671751e2831f554964594e2cbf6b857b9b4d35247b4d273f.png\" style=\"width: 100%;\"/></p>\', \'template\': \'\', \'allow_comment\': 1, \'maxcharperpage\': \'\', \'copyfrom\': \'\', \'author\': \'\', \'editor\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-11-29 09:58:56');
INSERT INTO `sys_operation_log` VALUES ('219', 'system', '2', 'update', 'POST', '1', 'admin', '贵阳thinkstyle科技', 'http://127.0.0.1:8082/system/user/update', '127.0.0.1', '', '{\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'email\': \'thinkpython@163.com924965282@139.com\', \'phone\': \'15180809092\', \'sex\': \'1\', \'avatar\': \'/static/uploadfiles\\\\07e760a47a09ef79d2f47fa4d2fe6c9acbce6d7bcf3da9aa7b82952a97675c7c.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'update_user\': \'\', \'update_time\': \'2024-12-02 14:06:48\', \'remark\': \'超级管理员\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-12-02 14:06:48');
INSERT INTO `sys_operation_log` VALUES ('220', 'system', '2', 'update', 'POST', '1', 'admin', 'PythonStyle科技', 'http://127.0.0.1:8082/system/user/update', '127.0.0.1', '', '{\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'email\': \'924965282@139.com\', \'phone\': \'15180809092\', \'sex\': \'1\', \'avatar\': \'/static/uploadfiles\\\\07e760a47a09ef79d2f47fa4d2fe6c9acbce6d7bcf3da9aa7b82952a97675c7c.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'update_user\': \'\', \'update_time\': \'2024-12-02 14:06:48\', \'remark\': \'超级管理员\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-12-02 14:06:48');
INSERT INTO `sys_operation_log` VALUES ('221', 'system', '2', 'update', 'POST', '1', 'admin', 'PythonStyle科技', 'http://127.0.0.1:8082/system/user/update', '127.0.0.1', '', '{\'user_id\': 1, \'dept_id\': 100, \'username\': \'admin\', \'nick_name\': \'PythonStyle\', \'email\': \'924965282@139.com\', \'phone\': \'15180809090\', \'sex\': \'1\', \'avatar\': \'/static/uploadfiles\\\\07e760a47a09ef79d2f47fa4d2fe6c9acbce6d7bcf3da9aa7b82952a97675c7c.jpg\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'update_user\': \'\', \'update_time\': \'2024-12-02 14:06:48\', \'remark\': \'超级管理员\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-12-02 14:06:48');
INSERT INTO `sys_operation_log` VALUES ('222', 'system', '2', 'update', 'POST', '1', 'admin', 'PythonStyle科技', 'http://127.0.0.1:8082/system/user/update', '127.0.0.1', '', '{\'user_id\': 4, \'dept_id\': 100, \'username\': \'13888888889\', \'nick_name\': \'13888888889\', \'email\': \'\', \'phone\': \'13888888889\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'update_user\': \'\', \'update_time\': \'2024-12-02 14:06:48\', \'remark\': \'\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-12-02 14:06:48');
INSERT INTO `sys_operation_log` VALUES ('223', 'system', '2', 'update', 'POST', '1', 'admin', 'PythonStyle科技', 'http://127.0.0.1:8082/system/user/update', '127.0.0.1', '', '{\'user_id\': 3, \'dept_id\': 100, \'username\': \'root\', \'nick_name\': \'root\', \'email\': \'\', \'phone\': \'13888888888\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'admin\', \'update_user\': \'\', \'update_time\': \'2024-12-02 14:06:48\', \'remark\': \'发布人员\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-12-02 14:06:48');
INSERT INTO `sys_operation_log` VALUES ('224', 'system', '2', 'update', 'POST', '1', 'admin', 'PythonStyle科技', 'http://127.0.0.1:8082/system/user/update', '127.0.0.1', '', '{\'user_id\': 10, \'dept_id\': 0, \'username\': \'test22\', \'nick_name\': \'test222\', \'email\': \'\', \'phone\': \'\', \'sex\': \'0\', \'avatar\': \'\', \'status\': \'0\', \'del_flag\': \'0\', \'login_ip\': \'\', \'login_date\': \'\', \'create_user\': \'\', \'update_user\': \'\', \'update_time\': \'2024-12-02 14:15:04\', \'remark\': \'test\'}', '{\'code\': 200, \'msg\': \'操作成功\', \'data\': []}', '0', '', '2024-12-02 14:15:04');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位名称',
  `listorder` int NOT NULL DEFAULT '1' COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_user` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '7', '0', 'admin', '2023-08-06 19:26:25', '', '2024-05-07 10:20:55', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '2', '0', 'admin', '2023-08-06 19:26:25', '', '2024-06-25 19:54:01', '嘎嘎嘎');
INSERT INTO `sys_post` VALUES ('13', '123', '总经理', '3', '1', '', '2024-04-11 11:58:59', '', '2024-04-17 12:11:48', '测试添加');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `listorder` int DEFAULT '1' COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `create_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL,
  `update_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '2', '1', '1', '1', '0', '0', 'admin', null, '', '2024-04-04 08:53:19', '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', '1', '2', '1', '1', '0', '0', 'admin', null, '', '2024-06-25 10:35:13', '普通角色');
INSERT INTO `sys_role` VALUES ('3', '发布角色', '1', '1', '1', '1', '0', '0', 'admin', null, '', '2024-06-28 11:32:17', '');
INSERT INTO `sys_role` VALUES ('4', 'test', '0', '1', '1', '1', '1', '1', '', null, '', '2024-04-04 08:53:19', '');
INSERT INTO `sys_role` VALUES ('5', 'test', '1', '1', '1', '1', '1', '1', '', null, '', '2024-04-15 17:31:10', null);
INSERT INTO `sys_role` VALUES ('6', '所发生的', '1', '1', '1', '1', '0', '1', '', null, '', null, null);
INSERT INTO `sys_role` VALUES ('7', 'test3333', '2', '1', '1', '1', '0', '1', '', '2024-04-22 04:10:59', '', '2024-04-22 05:40:24', '');
INSERT INTO `sys_role` VALUES ('8', '士大夫', '2', '1', '1', '1', '0', '1', '', '2024-04-25 15:59:00', '', '2024-04-30 11:40:18', '');
INSERT INTO `sys_role` VALUES ('9', 'test123', '1', '1', '1', '1', '0', '1', '', '2024-06-25 10:35:13', '', null, 'test123');
INSERT INTO `sys_role` VALUES ('10', '注册用户', '2', '1', '1', '1', '0', '0', '', '2024-08-22 09:51:34', '', '2024-11-27 21:46:59', '给注册的用户开设对应的会员中心菜单和功能，不允许删除');
INSERT INTO `sys_role` VALUES ('11', 'sdd', '1', '1', '1', '1', '0', '1', '', '2024-11-27 17:06:41', '', null, null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `idx_sys_role_menu__menu_id` (`menu_id`) USING BTREE,
  CONSTRAINT `fk_sys_role_menu__menu_id` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sys_role_menu__role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `sys_role_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_10` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_3` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_4` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_5` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_6` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_7` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_8` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_menu_ibfk_9` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('6', '1');
INSERT INTO `sys_role_menu` VALUES ('7', '1');
INSERT INTO `sys_role_menu` VALUES ('8', '1');
INSERT INTO `sys_role_menu` VALUES ('9', '1');
INSERT INTO `sys_role_menu` VALUES ('11', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('3', '100');
INSERT INTO `sys_role_menu` VALUES ('6', '100');
INSERT INTO `sys_role_menu` VALUES ('7', '100');
INSERT INTO `sys_role_menu` VALUES ('11', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('6', '101');
INSERT INTO `sys_role_menu` VALUES ('7', '101');
INSERT INTO `sys_role_menu` VALUES ('11', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('3', '102');
INSERT INTO `sys_role_menu` VALUES ('6', '102');
INSERT INTO `sys_role_menu` VALUES ('8', '102');
INSERT INTO `sys_role_menu` VALUES ('9', '102');
INSERT INTO `sys_role_menu` VALUES ('11', '102');
INSERT INTO `sys_role_menu` VALUES ('3', '103');
INSERT INTO `sys_role_menu` VALUES ('6', '103');
INSERT INTO `sys_role_menu` VALUES ('8', '103');
INSERT INTO `sys_role_menu` VALUES ('9', '103');
INSERT INTO `sys_role_menu` VALUES ('11', '103');
INSERT INTO `sys_role_menu` VALUES ('3', '104');
INSERT INTO `sys_role_menu` VALUES ('5', '104');
INSERT INTO `sys_role_menu` VALUES ('6', '104');
INSERT INTO `sys_role_menu` VALUES ('8', '104');
INSERT INTO `sys_role_menu` VALUES ('11', '104');
INSERT INTO `sys_role_menu` VALUES ('6', '108');
INSERT INTO `sys_role_menu` VALUES ('8', '108');
INSERT INTO `sys_role_menu` VALUES ('11', '108');
INSERT INTO `sys_role_menu` VALUES ('6', '500');
INSERT INTO `sys_role_menu` VALUES ('8', '500');
INSERT INTO `sys_role_menu` VALUES ('11', '500');
INSERT INTO `sys_role_menu` VALUES ('6', '501');
INSERT INTO `sys_role_menu` VALUES ('11', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('6', '1000');
INSERT INTO `sys_role_menu` VALUES ('7', '1000');
INSERT INTO `sys_role_menu` VALUES ('11', '1000');
INSERT INTO `sys_role_menu` VALUES ('6', '1001');
INSERT INTO `sys_role_menu` VALUES ('7', '1001');
INSERT INTO `sys_role_menu` VALUES ('11', '1001');
INSERT INTO `sys_role_menu` VALUES ('6', '1002');
INSERT INTO `sys_role_menu` VALUES ('7', '1002');
INSERT INTO `sys_role_menu` VALUES ('11', '1002');
INSERT INTO `sys_role_menu` VALUES ('6', '1003');
INSERT INTO `sys_role_menu` VALUES ('7', '1003');
INSERT INTO `sys_role_menu` VALUES ('11', '1003');
INSERT INTO `sys_role_menu` VALUES ('3', '1004');
INSERT INTO `sys_role_menu` VALUES ('6', '1004');
INSERT INTO `sys_role_menu` VALUES ('7', '1004');
INSERT INTO `sys_role_menu` VALUES ('11', '1004');
INSERT INTO `sys_role_menu` VALUES ('3', '1005');
INSERT INTO `sys_role_menu` VALUES ('6', '1005');
INSERT INTO `sys_role_menu` VALUES ('7', '1005');
INSERT INTO `sys_role_menu` VALUES ('11', '1005');
INSERT INTO `sys_role_menu` VALUES ('3', '1006');
INSERT INTO `sys_role_menu` VALUES ('6', '1006');
INSERT INTO `sys_role_menu` VALUES ('7', '1006');
INSERT INTO `sys_role_menu` VALUES ('11', '1006');
INSERT INTO `sys_role_menu` VALUES ('6', '1007');
INSERT INTO `sys_role_menu` VALUES ('7', '1007');
INSERT INTO `sys_role_menu` VALUES ('11', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('6', '1008');
INSERT INTO `sys_role_menu` VALUES ('7', '1008');
INSERT INTO `sys_role_menu` VALUES ('11', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('6', '1009');
INSERT INTO `sys_role_menu` VALUES ('7', '1009');
INSERT INTO `sys_role_menu` VALUES ('11', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('6', '1010');
INSERT INTO `sys_role_menu` VALUES ('7', '1010');
INSERT INTO `sys_role_menu` VALUES ('11', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('6', '1011');
INSERT INTO `sys_role_menu` VALUES ('7', '1011');
INSERT INTO `sys_role_menu` VALUES ('11', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('3', '1012');
INSERT INTO `sys_role_menu` VALUES ('6', '1012');
INSERT INTO `sys_role_menu` VALUES ('8', '1012');
INSERT INTO `sys_role_menu` VALUES ('9', '1012');
INSERT INTO `sys_role_menu` VALUES ('11', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('6', '1013');
INSERT INTO `sys_role_menu` VALUES ('8', '1013');
INSERT INTO `sys_role_menu` VALUES ('9', '1013');
INSERT INTO `sys_role_menu` VALUES ('11', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('6', '1014');
INSERT INTO `sys_role_menu` VALUES ('9', '1014');
INSERT INTO `sys_role_menu` VALUES ('11', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('6', '1015');
INSERT INTO `sys_role_menu` VALUES ('8', '1015');
INSERT INTO `sys_role_menu` VALUES ('9', '1015');
INSERT INTO `sys_role_menu` VALUES ('11', '1015');
INSERT INTO `sys_role_menu` VALUES ('3', '1016');
INSERT INTO `sys_role_menu` VALUES ('6', '1016');
INSERT INTO `sys_role_menu` VALUES ('9', '1016');
INSERT INTO `sys_role_menu` VALUES ('11', '1016');
INSERT INTO `sys_role_menu` VALUES ('6', '1017');
INSERT INTO `sys_role_menu` VALUES ('8', '1017');
INSERT INTO `sys_role_menu` VALUES ('9', '1017');
INSERT INTO `sys_role_menu` VALUES ('11', '1017');
INSERT INTO `sys_role_menu` VALUES ('6', '1018');
INSERT INTO `sys_role_menu` VALUES ('9', '1018');
INSERT INTO `sys_role_menu` VALUES ('11', '1018');
INSERT INTO `sys_role_menu` VALUES ('6', '1019');
INSERT INTO `sys_role_menu` VALUES ('9', '1019');
INSERT INTO `sys_role_menu` VALUES ('11', '1019');
INSERT INTO `sys_role_menu` VALUES ('3', '1020');
INSERT INTO `sys_role_menu` VALUES ('6', '1020');
INSERT INTO `sys_role_menu` VALUES ('8', '1020');
INSERT INTO `sys_role_menu` VALUES ('11', '1020');
INSERT INTO `sys_role_menu` VALUES ('6', '1021');
INSERT INTO `sys_role_menu` VALUES ('8', '1021');
INSERT INTO `sys_role_menu` VALUES ('11', '1021');
INSERT INTO `sys_role_menu` VALUES ('6', '1022');
INSERT INTO `sys_role_menu` VALUES ('11', '1022');
INSERT INTO `sys_role_menu` VALUES ('6', '1023');
INSERT INTO `sys_role_menu` VALUES ('8', '1023');
INSERT INTO `sys_role_menu` VALUES ('11', '1023');
INSERT INTO `sys_role_menu` VALUES ('6', '1039');
INSERT INTO `sys_role_menu` VALUES ('8', '1039');
INSERT INTO `sys_role_menu` VALUES ('11', '1039');
INSERT INTO `sys_role_menu` VALUES ('6', '1040');
INSERT INTO `sys_role_menu` VALUES ('8', '1040');
INSERT INTO `sys_role_menu` VALUES ('11', '1040');
INSERT INTO `sys_role_menu` VALUES ('6', '1041');
INSERT INTO `sys_role_menu` VALUES ('8', '1041');
INSERT INTO `sys_role_menu` VALUES ('11', '1041');
INSERT INTO `sys_role_menu` VALUES ('6', '1042');
INSERT INTO `sys_role_menu` VALUES ('11', '1042');
INSERT INTO `sys_role_menu` VALUES ('6', '1043');
INSERT INTO `sys_role_menu` VALUES ('11', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('3', '1047');
INSERT INTO `sys_role_menu` VALUES ('11', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('11', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('11', '1053');
INSERT INTO `sys_role_menu` VALUES ('11', '1054');
INSERT INTO `sys_role_menu` VALUES ('11', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('9', '1056');
INSERT INTO `sys_role_menu` VALUES ('11', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('9', '1057');
INSERT INTO `sys_role_menu` VALUES ('11', '1057');
INSERT INTO `sys_role_menu` VALUES ('9', '1059');
INSERT INTO `sys_role_menu` VALUES ('11', '1059');
INSERT INTO `sys_role_menu` VALUES ('9', '1060');
INSERT INTO `sys_role_menu` VALUES ('11', '1060');
INSERT INTO `sys_role_menu` VALUES ('11', '1062');
INSERT INTO `sys_role_menu` VALUES ('11', '1063');
INSERT INTO `sys_role_menu` VALUES ('11', '1064');
INSERT INTO `sys_role_menu` VALUES ('11', '1065');
INSERT INTO `sys_role_menu` VALUES ('11', '1066');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录时间',
  `create_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '100', 'admin', 'PythonStyle', '924965282@139.com', '15180809090', '1', '/static/uploadfiles\\07e760a47a09ef79d2f47fa4d2fe6c9acbce6d7bcf3da9aa7b82952a97675c7c.jpg', '0c0639dc444d78e8d0ccddd08bffa1a6', '0', '0', '', '', 'admin', null, '', '2024-12-02 14:06:48', '超级管理员');
INSERT INTO `sys_user` VALUES ('2', '100', 'test', 'test', '', '13888888888', '0', 'https://p.qqan.com/up/2023-12/2023121281748142.jpg', 'cb9244cccf7a180e05254ee97a85b510', '1', '1', '', '', 'admin', null, '', '2024-05-07 10:20:55', '普通管理员');
INSERT INTO `sys_user` VALUES ('3', '100', 'root', 'root', '', '13888888888', '0', '', 'cb9244cccf7a180e05254ee97a85b510', '0', '0', '', '', 'admin', null, '', '2024-12-02 14:06:48', '发布人员');
INSERT INTO `sys_user` VALUES ('4', '100', '13888888889', '13888888889', '', '13888888889', '0', '', '53241eac3cc0093e63d7585727e8569d', '0', '0', '', '', '', '2024-08-30 15:30:05', '', '2024-12-02 14:06:48', '');
INSERT INTO `sys_user` VALUES ('6', null, '15180808099', '15180808099', '', '15180808099', '0', '', '53241eac3cc0093e63d7585727e8569d', '0', '0', '', '', '', '2024-08-30 15:34:36', '', null, null);
INSERT INTO `sys_user` VALUES ('7', null, 'test', 'test', '', '', '0', '', 'e7e94e5f58e6393711fca058582d72aa', '0', '1', '', '', '', '2024-10-29 04:15:41', '', null, '');
INSERT INTO `sys_user` VALUES ('8', null, 'test22', 'test222', '', '', '0', '', 'e7e94e5f58e6393711fca058582d72aa', '0', '0', '', '', '', '2024-10-29 05:16:32', '', null, 'rest222');
INSERT INTO `sys_user` VALUES ('9', null, 'test22', 'test222', '', '', '0', '', 'e7e94e5f58e6393711fca058582d72aa', '0', '0', '', '', '', '2024-10-29 05:19:51', '', null, 'rest222');
INSERT INTO `sys_user` VALUES ('10', '0', 'test22', 'test222', '', '', '0', '', 'e7e94e5f58e6393711fca058582d72aa', '0', '0', '', '', '', '2024-10-29 05:20:43', '', '2024-12-02 14:15:04', 'test');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`),
  KEY `idx_sys_user_post__post_id` (`post_id`) USING BTREE,
  CONSTRAINT `fk_sys_user_post__post_id` FOREIGN KEY (`post_id`) REFERENCES `sys_post` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sys_user_post__user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `sys_user_post_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `sys_post` (`post_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_10` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `sys_post` (`post_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_5` FOREIGN KEY (`post_id`) REFERENCES `sys_post` (`post_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_7` FOREIGN KEY (`post_id`) REFERENCES `sys_post` (`post_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_8` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_post_ibfk_9` FOREIGN KEY (`post_id`) REFERENCES `sys_post` (`post_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '1');
INSERT INTO `sys_user_post` VALUES ('2', '13');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `idx_sys_user_role__role_id` (`role_id`) USING BTREE,
  CONSTRAINT `fk_sys_user_role__role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sys_user_role__user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `sys_user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_10` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_5` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_7` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_8` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_9` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('7', '3');
INSERT INTO `sys_user_role` VALUES ('8', '3');
INSERT INTO `sys_user_role` VALUES ('9', '3');
INSERT INTO `sys_user_role` VALUES ('10', '3');
INSERT INTO `sys_user_role` VALUES ('6', '10');
