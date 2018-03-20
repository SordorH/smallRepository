/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : selfmotivation

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 20/03/2018 17:58:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reward` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (12, '背100单词', 10);
INSERT INTO `task` VALUES (13, '复习100单词', 10);
INSERT INTO `task` VALUES (14, '做100俯卧撑', 10);
INSERT INTO `task` VALUES (15, '做20引体向上', 10);
INSERT INTO `task` VALUES (16, '腹肌撕裂者', 10);
INSERT INTO `task` VALUES (17, '深蹲50个', 10);
INSERT INTO `task` VALUES (18, '硬拉50个', 10);
INSERT INTO `task` VALUES (19, '看一本书', 100);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goldCoin` int(11) NULL DEFAULT 0,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 340, '123456');
INSERT INTO `user` VALUES (2, NULL, NULL, '123456');
INSERT INTO `user` VALUES (3, NULL, NULL, '123456');
INSERT INTO `user` VALUES (4, NULL, NULL, '123456');
INSERT INTO `user` VALUES (5, NULL, NULL, '123456');
INSERT INTO `user` VALUES (6, NULL, NULL, '123456');
INSERT INTO `user` VALUES (7, NULL, NULL, '123456');
INSERT INTO `user` VALUES (8, NULL, NULL, '123456');
INSERT INTO `user` VALUES (9, NULL, NULL, '123');
INSERT INTO `user` VALUES (10, '123456', 0, '123');
INSERT INTO `user` VALUES (11, 'hwl', 0, '123456');

SET FOREIGN_KEY_CHECKS = 1;
