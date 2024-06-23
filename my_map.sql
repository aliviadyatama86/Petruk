/*
 Navicat Premium Data Transfer

 Source Server         : #Local_7.0
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3316
 Source Schema         : my_map

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 02/07/2020 20:18:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_peta
-- ----------------------------
DROP TABLE IF EXISTS `tb_peta`;
CREATE TABLE `tb_peta`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `GeoJson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_peta
-- ----------------------------
INSERT INTO `tb_peta` VALUES (17, '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[106.714325,-6.583988],[106.714325,-6.583988],[106.72411,-6.568128],[106.72411,-6.568128],[106.738529,-6.579043],[106.738529,-6.579043],[106.736469,-6.592855],[106.736469,-6.592855],[106.72308,-6.599847],[106.72308,-6.599847],[106.714497,-6.583647],[106.714325,-6.583988]]]}},{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Point\",\"coordinates\":[106.726685,-6.585011]}}]}');
INSERT INTO `tb_peta` VALUES (18, '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"LineString\",\"coordinates\":[[106.749344,-6.601552],[106.749344,-6.601552],[106.769257,-6.582624],[106.769257,-6.582624],[106.796722,-6.601723],[106.796722,-6.601723],[106.819038,-6.588081],[106.819038,-6.588081],[106.831055,-6.601211],[106.831055,-6.601211],[106.842728,-6.588763],[106.842728,-6.588763]]}},{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Point\",\"coordinates\":[106.795864,-6.588729]}}]}');
INSERT INTO `tb_peta` VALUES (21, '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"LineString\",\"coordinates\":[[106.867447,-6.577076],[106.867447,-6.577076],[106.87706,-6.563604],[106.87706,-6.563604],[106.894741,-6.577246],[106.894741,-6.577246],[106.889248,-6.597028],[106.889248,-6.597028],[106.866932,-6.576394]]}},{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Point\",\"coordinates\":[106.880322,-6.573495]}}]}');

SET FOREIGN_KEY_CHECKS = 1;
