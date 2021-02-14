/*
 Navicat Premium Data Transfer

 Source Server         : localhost3307
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3307
 Source Schema         : char

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 28/08/2020 17:25:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for character_racial
-- ----------------------------
DROP TABLE IF EXISTS `character_racial`;
CREATE TABLE `character_racial`  (
  `guid` int(10) UNSIGNED NOT NULL,
  `racial` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orc` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player XP Rate System' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
