/*
Navicat MySQL Data Transfer

Source Server         : 10.240.1.1
Source Server Version : 50715
Source Host           : 10.240.1.1:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-04-19 21:01:47
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
  `email` varchar(30) COLLATE utf8mb4_bin DEFAULT '' COMMENT '邮箱账号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `source` varchar(11) COLLATE utf8mb4_bin DEFAULT '' COMMENT '用户来源',
  `enterprise` tinyint(1) DEFAULT '0' COMMENT '是否是企业账号',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



CREATE TABLE `tb_user_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` bigint(20) NOT NULL COMMENT '借款人ID',
  `name` varchar(20) NOT NULL COMMENT '家庭成员姓名',
  `age` int(4) DEFAULT NULL COMMENT '家庭成员年龄',
  `relation` varchar(10) DEFAULT NULL COMMENT '与借款人关系',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='借款人家庭信息';

CREATE TABLE `tb_code` (
	`id` INT (11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR (100) NOT NULL COMMENT '字典名称',
	`system` TINYINT (1) NOT NULL DEFAULT '0',
	`created_by` VARCHAR (20) DEFAULT NULL COMMENT '创建人',
	`created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`modified_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
	PRIMARY KEY (`id`),
	UNIQUE KEY `code_name` (`name`)
) ENGINE = INNODB COMMENT = '字典管理';

CREATE TABLE `tb_code_value` (
	`id` INT (11) NOT NULL AUTO_INCREMENT,
	`code_id` INT (11) NOT NULL COMMENT 'code的id',
	`value` VARCHAR (100) DEFAULT NULL COMMENT '字典实际内容',
	`description` VARCHAR (500) DEFAULT NULL COMMENT '描述',
	`position` INT (11) NOT NULL DEFAULT '0' COMMENT '排序',
	`score` INT (11) DEFAULT NULL,
	`active` TINYINT (1) NOT NULL DEFAULT '1' COMMENT '是否启用',
	`created_by` VARCHAR (20) DEFAULT NULL COMMENT '创建人',
	`created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`modified_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
	PRIMARY KEY (`id`)
) ENGINE = INNODB;
