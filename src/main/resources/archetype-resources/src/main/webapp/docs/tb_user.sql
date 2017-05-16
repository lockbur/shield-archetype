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
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
