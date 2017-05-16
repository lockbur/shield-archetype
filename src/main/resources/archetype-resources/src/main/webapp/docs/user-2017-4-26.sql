/*
Navicat MySQL Data Transfer

Source Server         : 10.240.1.1
Source Server Version : 50715
Source Host           : 10.240.1.1:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-04-26 11:39:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT '' COMMENT '姓名',
  `department` varchar(255) DEFAULT '' COMMENT '所在部门',
  `email` varchar(255) DEFAULT '' COMMENT '邮箱账号',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号',
  `account_enabled` tinyint(1) NOT NULL COMMENT '是否启用',
  `account_expired` tinyint(1) NOT NULL COMMENT '是否过期',
  `account_locked` tinyint(1) NOT NULL COMMENT '是否锁定',
  `credentials_expired` tinyint(1) NOT NULL DEFAULT '0' COMMENT '凭证是否过期',
  `locked_date` datetime DEFAULT NULL COMMENT '锁定时间',
  `login_date` datetime DEFAULT NULL COMMENT '最后一次时间',
  `login_failure_count` int(11) DEFAULT '0' COMMENT '登录失败次数',
  `login_ip` varchar(255) DEFAULT '' COMMENT '最后一次登录IP',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, null, '845885222@qq.com', '', '1', '0', '0', '0', null, null, '0', '', '2016-10-22 22:35:39', '2016-10-22 22:35:39');

-- ----------------------------
-- Table structure for tb_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_role`;
CREATE TABLE `tb_admin_role` (
  `admin_id` bigint(20) NOT NULL COMMENT '管理员ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建者的ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin_role
-- ----------------------------
INSERT INTO `tb_admin_role` VALUES ('1', '1', '2', '2016-10-24 22:20:07', '2016-10-24 22:20:15');
INSERT INTO `tb_admin_role` VALUES ('1', '2', '2', '2016-10-29 22:22:36', '2016-10-10 22:22:31');
INSERT INTO `tb_admin_role` VALUES ('2', '1', '1', '2016-10-24 22:55:30', '2016-10-24 22:55:30');

-- ----------------------------
-- Table structure for tb_authority
-- ----------------------------
DROP TABLE IF EXISTS `tb_authority`;
CREATE TABLE `tb_authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `authority` varchar(50) NOT NULL DEFAULT '' COMMENT '权限值',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建者的ID',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '本记录最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_authority
-- ----------------------------
INSERT INTO `tb_authority` VALUES ('76', '1', 'access:valuation', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('77', '1', 'access:typing', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('78', '1', 'employee:list', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('79', '1', 'role:list', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('80', '1', 'department:list', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('81', '1', 'department:roles', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('82', '1', 'employee:password', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('83', '1', 'investigate:task', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('84', '1', 'investigate:assign', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('85', '1', 'investigate:recheck', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('86', '1', 'netsign:typing', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('87', '1', 'loan:rechck', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('88', '1', 'mortgage:valuation', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('89', '1', 'mortgage:rate', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('90', '1', 'mortgage:ownship', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('91', '1', 'mortgage:revaluation', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('92', '1', 'mortgage:rerate', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('93', '1', 'mortgage:reownship', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('94', '1', 'notarization:list', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('95', '1', 'notarization:document', 'admin', '2016-12-16 11:29:39', '2016-12-16 11:29:39');
INSERT INTO `tb_authority` VALUES ('96', '1', 'warrant:list', 'admin', '2016-12-16 11:29:40', '2016-12-16 11:29:40');
INSERT INTO `tb_authority` VALUES ('97', '1', 'settle:check', 'admin', '2016-12-16 11:29:40', '2016-12-16 11:29:40');
INSERT INTO `tb_authority` VALUES ('98', '1', 'settle:recheck', 'admin', '2016-12-16 11:29:40', '2016-12-16 11:29:40');
INSERT INTO `tb_authority` VALUES ('99', '6', 'access:typing', 'admin', '2016-12-16 11:30:16', '2016-12-16 11:30:16');
INSERT INTO `tb_authority` VALUES ('100', '6', 'access:valuation', 'admin', '2016-12-16 11:30:16', '2016-12-16 11:30:16');
INSERT INTO `tb_authority` VALUES ('101', '3', 'investigate:task', 'admin', '2016-12-16 11:30:54', '2016-12-16 11:30:54');
INSERT INTO `tb_authority` VALUES ('102', '3', 'investigate:assign', 'admin', '2016-12-16 11:30:54', '2016-12-16 11:30:54');
INSERT INTO `tb_authority` VALUES ('103', '3', 'investigate:recheck', 'admin', '2016-12-16 11:30:54', '2016-12-16 11:30:54');
INSERT INTO `tb_authority` VALUES ('104', '4', 'notarization:list', 'admin', '2016-12-16 11:31:25', '2016-12-16 11:31:25');
INSERT INTO `tb_authority` VALUES ('105', '4', 'notarization:document', 'admin', '2016-12-16 11:31:25', '2016-12-16 11:31:25');
INSERT INTO `tb_authority` VALUES ('106', '5', 'employee:list', 'admin', '2016-12-16 11:32:02', '2016-12-16 11:32:02');
INSERT INTO `tb_authority` VALUES ('107', '5', 'role:list', 'admin', '2016-12-16 11:32:02', '2016-12-16 11:32:02');
INSERT INTO `tb_authority` VALUES ('108', '5', 'department:list', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('109', '5', 'department:roles', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('110', '5', 'employee:password', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('111', '5', 'access:typing', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('112', '5', 'access:valuation', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('113', '5', 'investigate:task', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('114', '5', 'investigate:assign', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('115', '5', 'investigate:recheck', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('116', '5', 'netsign:typing', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('117', '5', 'loan:rechck', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('118', '5', 'mortgage:valuation', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('119', '5', 'mortgage:rate', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('120', '5', 'mortgage:ownship', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('121', '5', 'mortgage:revaluation', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('122', '5', 'mortgage:reownship', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('123', '5', 'mortgage:rerate', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('124', '5', 'notarization:document', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('125', '5', 'notarization:list', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('126', '5', 'settle:recheck', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('127', '5', 'warrant:list', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('128', '5', 'settle:check', 'admin', '2016-12-16 11:32:03', '2016-12-16 11:32:03');
INSERT INTO `tb_authority` VALUES ('129', '7', 'warrant:list', 'admin', '2016-12-16 11:32:25', '2016-12-16 11:32:25');
INSERT INTO `tb_authority` VALUES ('130', '8', 'settle:check', 'admin', '2016-12-16 11:32:38', '2016-12-16 11:32:38');
INSERT INTO `tb_authority` VALUES ('131', '8', 'settle:recheck', 'admin', '2016-12-16 11:32:38', '2016-12-16 11:32:38');
INSERT INTO `tb_authority` VALUES ('132', '9', 'employee:list', 'admin', '2016-12-16 11:32:56', '2016-12-16 11:32:56');
INSERT INTO `tb_authority` VALUES ('133', '9', 'role:list', 'admin', '2016-12-16 11:32:56', '2016-12-16 11:32:56');
INSERT INTO `tb_authority` VALUES ('134', '9', 'department:list', 'admin', '2016-12-16 11:32:56', '2016-12-16 11:32:56');
INSERT INTO `tb_authority` VALUES ('135', '9', 'department:roles', 'admin', '2016-12-16 11:32:56', '2016-12-16 11:32:56');
INSERT INTO `tb_authority` VALUES ('136', '9', 'employee:password', 'admin', '2016-12-16 11:32:56', '2016-12-16 11:32:56');
INSERT INTO `tb_authority` VALUES ('137', '1', 'ROLE_USER2', 'admin', '2017-04-24 20:42:07', '2017-04-24 20:42:07');

-- ----------------------------
-- Table structure for tb_code
-- ----------------------------
DROP TABLE IF EXISTS `tb_code`;
CREATE TABLE `tb_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '字典名称',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='字典管理';

-- ----------------------------
-- Records of tb_code
-- ----------------------------
INSERT INTO `tb_code` VALUES ('1', '行业信息', '0', '王坤', '2017-04-25 11:11:20', '2017-04-25 11:11:20');
INSERT INTO `tb_code` VALUES ('2', '婚姻状况', '0', '王坤', '2017-04-25 13:56:35', '2017-04-25 13:56:38');
INSERT INTO `tb_code` VALUES ('34', '性别', '0', '王坤', '2017-04-25 20:35:55', '2017-04-25 20:35:55');
INSERT INTO `tb_code` VALUES ('38', '部门', '0', 'wang.kun', '2017-04-26 10:14:12', '2017-04-26 10:14:12');

-- ----------------------------
-- Table structure for tb_code_value
-- ----------------------------
DROP TABLE IF EXISTS `tb_code_value`;
CREATE TABLE `tb_code_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_id` int(11) NOT NULL COMMENT 'code的id',
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '字典实际内容',
  `description` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `created_by` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of tb_code_value
-- ----------------------------
INSERT INTO `tb_code_value` VALUES ('1', '1', '互联网', '互联网', '0', '1', '王坤', '2017-04-25 11:22:33', '2017-04-25 13:57:08');
INSERT INTO `tb_code_value` VALUES ('2', '1', '互联网', '互联网', '0', '1', '王坤', '2017-04-25 11:31:24', '2017-04-25 13:57:08');
INSERT INTO `tb_code_value` VALUES ('3', '2', '已婚', '已婚', '0', '1', '王坤', '2017-04-25 13:56:59', '2017-04-25 13:57:14');

-- ----------------------------
-- Table structure for tb_emp_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp_role`;
CREATE TABLE `tb_emp_role` (
  `emp_id` bigint(20) NOT NULL COMMENT '部门ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建者的ID',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '本记录最后修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_emp_role
-- ----------------------------
INSERT INTO `tb_emp_role` VALUES ('1', '3', 'wangkun', '2017-04-24 20:56:04', '2017-04-24 20:56:04');

-- ----------------------------
-- Table structure for tb_group_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_group_user`;
CREATE TABLE `tb_group_user` (
  `group_id` bigint(20) NOT NULL COMMENT '组ID loan_group',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`group_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of tb_group_user
-- ----------------------------
INSERT INTO `tb_group_user` VALUES ('6', '1191');
INSERT INTO `tb_group_user` VALUES ('6', '1192');
INSERT INTO `tb_group_user` VALUES ('7', '1193');
INSERT INTO `tb_group_user` VALUES ('7', '1194');
INSERT INTO `tb_group_user` VALUES ('8', '1195');
INSERT INTO `tb_group_user` VALUES ('8', '1196');
INSERT INTO `tb_group_user` VALUES ('9', '1197');
INSERT INTO `tb_group_user` VALUES ('9', '1198');
INSERT INTO `tb_group_user` VALUES ('10', '1199');
INSERT INTO `tb_group_user` VALUES ('10', '1200');

-- ----------------------------
-- Table structure for tb_loan_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_loan_group`;
CREATE TABLE `tb_loan_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_bin DEFAULT '' COMMENT '组名：刘备,关羽联合借款',
  `office_id` varchar(6) COLLATE utf8mb4_bin DEFAULT '' COMMENT '所属办公室',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of tb_loan_group
-- ----------------------------
INSERT INTO `tb_loan_group` VALUES ('6', '王坤-王坤222-联合借款', '沪房联', '2017-04-19 21:03:08', '2017-04-20 09:40:14');
INSERT INTO `tb_loan_group` VALUES ('7', '王坤-王坤222-联合借款', '100', '2017-04-20 11:36:39', '2017-04-20 11:36:39');
INSERT INTO `tb_loan_group` VALUES ('8', '王坤-王坤222-联合借款', '京房联', '2017-04-20 11:36:55', '2017-04-20 11:36:55');
INSERT INTO `tb_loan_group` VALUES ('9', '王坤-王坤222-联合借款', '京房联', '2017-04-20 17:09:32', '2017-04-20 17:09:32');
INSERT INTO `tb_loan_group` VALUES ('10', '王坤-王坤222-联合借款', '京房联', '2017-04-20 17:09:35', '2017-04-20 17:09:35');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `created_by` varchar(32) NOT NULL COMMENT '通过后台，添加本角色的操作者的账号',
  `description` varchar(100) DEFAULT NULL COMMENT '描述信息',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '本记录最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员', 'admin', '描述', '2016-12-02 16:15:54', '2016-12-16 11:29:39');
INSERT INTO `tb_role` VALUES ('2', '普通管理员', 'admin', '普通管理员33333', '2016-12-05 21:19:01', '2016-12-06 12:08:19');
INSERT INTO `tb_role` VALUES ('3', '调查员', 'admin', '下户调查权', '2016-12-06 12:11:39', '2016-12-16 11:30:54');
INSERT INTO `tb_role` VALUES ('4', '面签', 'admin', '面签相关权限', '2016-12-06 16:39:36', '2016-12-16 11:31:25');
INSERT INTO `tb_role` VALUES ('5', '研发测试', 'admin', '研发测试', '2016-12-06 16:42:10', '2016-12-16 11:32:02');
INSERT INTO `tb_role` VALUES ('6', '初评员', 'admin', '管理初评的数据', '2016-12-16 11:30:16', '2016-12-16 11:30:16');
INSERT INTO `tb_role` VALUES ('7', '权证', 'admin', '权证', '2016-12-16 11:32:25', '2016-12-16 11:32:25');
INSERT INTO `tb_role` VALUES ('8', '放款审批', 'admin', '放款审批', '2016-12-16 11:32:38', '2016-12-16 11:32:38');
INSERT INTO `tb_role` VALUES ('9', '员工管理', 'admin', '员工管理', '2016-12-16 11:32:56', '2016-12-16 11:32:56');
INSERT INTO `tb_role` VALUES ('10', '超级管理员11', 'admin', '描述', '2017-04-24 20:39:22', '2017-04-24 20:39:22');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_bin DEFAULT '' COMMENT '姓名',
  `gender` varchar(6) COLLATE utf8mb4_bin DEFAULT '' COMMENT '性别',
  `mobile` varchar(32) COLLATE utf8mb4_bin DEFAULT '' COMMENT '手机号码',
  `idCard` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '身份证号',
  `marital_status` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_bin DEFAULT '' COMMENT '邮箱账号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `source` varchar(11) COLLATE utf8mb4_bin DEFAULT '' COMMENT '用户来源',
  `enterprise` tinyint(1) DEFAULT '0' COMMENT '是否是企业账号',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1081', '王坤0', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', 'WIDOWED', '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-21 10:04:14');
INSERT INTO `tb_user` VALUES ('1082', '王坤1', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1083', '王坤2', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1084', '王坤3', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1085', '王坤4', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1086', '王坤5', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1087', '王坤6', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1088', '王坤7', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1089', '王坤8', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1090', '王坤9', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1091', '王坤10', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1092', '王坤11', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1093', '王坤12', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1094', '王坤13', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1095', '王坤14', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1096', '王坤15', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1097', '王坤16', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1098', '王坤17', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1099', '王坤18', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1100', '王坤19', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1101', '王坤20', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1102', '王坤21', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1103', '王坤22', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1104', '王坤23', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1105', '王坤24', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1106', '王坤25', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1107', '王坤26', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1108', '王坤27', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1109', '王坤28', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1110', '王坤29', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1111', '王坤30', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1112', '王坤31', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1113', '王坤32', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1114', '王坤33', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1115', '王坤34', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1116', '王坤35', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1117', '王坤36', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1118', '王坤37', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1119', '王坤38', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1120', '王坤39', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1121', '王坤40', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1122', '王坤41', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1123', '王坤42', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1124', '王坤43', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1125', '王坤44', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1126', '王坤45', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1127', '王坤46', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1128', '王坤47', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1129', '王坤48', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1130', '王坤49', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1131', '王坤50', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1132', '王坤51', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1133', '王坤52', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1134', '王坤53', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1135', '王坤54', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1136', '王坤55', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1137', '王坤56', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1138', '王坤57', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1139', '王坤58', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1140', '王坤59', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1141', '王坤60', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1142', '王坤61', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1143', '王坤62', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1144', '王坤63', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1145', '王坤64', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1146', '王坤65', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1147', '王坤66', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1148', '王坤67', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1149', '王坤68', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1150', '王坤69', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1151', '王坤70', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1152', '王坤71', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1153', '王坤72', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1154', '王坤73', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1155', '王坤74', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1156', '王坤75', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1157', '王坤76', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1158', '王坤77', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1159', '王坤78', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1160', '王坤79', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1161', '王坤80', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1162', '王坤81', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1163', '王坤82', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1164', '王坤83', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1165', '王坤84', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1166', '王坤85', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1167', '王坤86', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1168', '王坤87', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1169', '王坤88', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1170', '王坤89', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1171', '王坤90', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1172', '王坤91', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1173', '王坤92', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1174', '王坤93', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1175', '王坤94', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1176', '王坤95', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1177', '王坤96', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1178', '王坤97', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1179', '王坤98', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1180', '王坤99', 'MALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 20:09:21', '2017-04-19 20:09:21');
INSERT INTO `tb_user` VALUES ('1191', '王坤', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 21:03:08', '2017-04-19 21:03:08');
INSERT INTO `tb_user` VALUES ('1192', '王坤222', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-19 21:03:08', '2017-04-19 21:03:08');
INSERT INTO `tb_user` VALUES ('1193', '王坤', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 11:36:39', '2017-04-20 11:36:39');
INSERT INTO `tb_user` VALUES ('1194', '王坤222', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 11:36:39', '2017-04-20 11:36:39');
INSERT INTO `tb_user` VALUES ('1195', '王坤', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 11:36:55', '2017-04-20 11:36:55');
INSERT INTO `tb_user` VALUES ('1196', '王坤222', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 11:36:55', '2017-04-20 11:36:55');
INSERT INTO `tb_user` VALUES ('1197', '王坤', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 17:09:32', '2017-04-20 17:09:32');
INSERT INTO `tb_user` VALUES ('1198', '王坤222', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 17:09:32', '2017-04-20 17:09:32');
INSERT INTO `tb_user` VALUES ('1199', '王坤', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 17:09:35', '2017-04-20 17:09:35');
INSERT INTO `tb_user` VALUES ('1200', '王坤222', 'FEMALE', 'hnY/CPTMrYYhfSPhM+LMqA==', 'GLCGxXmoqkp7QsIniOdLnf+GL4N6FnYp', null, '845885222@qq.com', '0', '', '0', '2017-04-20 17:09:35', '2017-04-20 17:09:35');
INSERT INTO `tb_user` VALUES ('1201', '王坤001', 'MALE', 'hnY/CPTMrYbFikgqQjI98w==', null, null, '845885222@qq.com', '0', '', '0', '2017-04-20 18:13:06', '2017-04-20 18:13:06');

-- ----------------------------
-- Table structure for tb_user_family
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_family`;
CREATE TABLE `tb_user_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` bigint(20) NOT NULL COMMENT '借款人ID',
  `name` varchar(20) NOT NULL COMMENT '家庭成员姓名',
  `age` int(4) DEFAULT NULL COMMENT '家庭成员年龄',
  `relation` varchar(10) DEFAULT NULL COMMENT '与借款人关系',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='借款人家庭信息';

-- ----------------------------
-- Records of tb_user_family
-- ----------------------------
INSERT INTO `tb_user_family` VALUES ('1', '1092', '方世妹', '23', 'FATHER', '2017-03-15 10:58:06', '2017-04-21 10:57:46');
INSERT INTO `tb_user_family` VALUES ('2', '1092', '小狗', '20', 'FATHER', '2017-03-15 21:18:53', '2017-04-21 10:57:47');
INSERT INTO `tb_user_family` VALUES ('3', '1092', '马化腾', '42', 'FATHER', '2017-03-20 16:06:52', '2017-04-21 10:57:48');
INSERT INTO `tb_user_family` VALUES ('4', '1092', '测试', '22', 'FATHER', '2017-03-21 15:14:59', '2017-04-21 10:57:49');
INSERT INTO `tb_user_family` VALUES ('5', '1092', '武大郎', '30', 'SISTER', '2017-03-21 16:39:51', '2017-04-21 10:57:51');
INSERT INTO `tb_user_family` VALUES ('6', '1092', '萌黄', '23', 'SISTER', '2017-04-21 19:12:46', '2017-04-21 19:16:47');
INSERT INTO `tb_user_family` VALUES ('7', '1093', '小诺', '24', 'BROTHER', '2017-04-21 19:12:46', '2017-04-21 19:12:46');
INSERT INTO `tb_user_family` VALUES ('8', '1094', '小诺', '25', 'BROTHER', '2017-04-21 19:12:46', '2017-04-21 19:12:46');
INSERT INTO `tb_user_family` VALUES ('9', '1095', '小诺', '26', 'BROTHER', '2017-04-21 19:12:46', '2017-04-21 19:12:46');
INSERT INTO `tb_user_family` VALUES ('11', '1097', '小小', '28', 'BROTHER', '2017-04-21 19:20:56', '2017-04-21 19:20:56');
INSERT INTO `tb_user_family` VALUES ('12', '1098', '小小', '29', 'BROTHER', '2017-04-21 19:20:56', '2017-04-21 19:20:56');
INSERT INTO `tb_user_family` VALUES ('13', '1099', '萌黄', '30', 'SISTER', '2017-04-21 19:20:56', '2017-04-21 19:21:30');
INSERT INTO `tb_user_family` VALUES ('14', '1100', '小小', '31', 'BROTHER', '2017-04-21 19:20:56', '2017-04-21 19:20:56');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '借款人ID',
  `gender` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '性别',
  `date_of_birth` date DEFAULT NULL COMMENT '出生日期',
  `maritalStatus` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '婚姻状况',
  `children` tinyint(1) DEFAULT '0' COMMENT '是否有子女',
  `hukou_type` varchar(10) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '户口类型',
  `house_status` varchar(20) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '住房状况',
  `current_address` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '现居住地址',
  `current_phone` varchar(30) COLLATE utf8mb4_bin DEFAULT '' COMMENT '现居住地址电话',
  `native_province` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '籍贯省',
  `native_city` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '籍贯市',
  `hukou_province` varchar(30) COLLATE utf8mb4_bin DEFAULT '' COMMENT '户口所在省/市',
  `hukou_city` varchar(30) COLLATE utf8mb4_bin DEFAULT '' COMMENT '户口所在市/区',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
