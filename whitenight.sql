/*
Navicat MySQL Data Transfer

Source Server         : wtmanager
Source Server Version : 50721
Source Host           : whitenight.xin:3306
Source Database       : whitenight

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-07-05 21:45:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articletable
-- ----------------------------
DROP TABLE IF EXISTS `articletable`;
CREATE TABLE `articletable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `time` datetime NOT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of articletable
-- ----------------------------
INSERT INTO `articletable` VALUES ('1', '1', '2018-06-21 16:58:41', '1223');
INSERT INTO `articletable` VALUES ('2', '2', '2018-07-19 16:58:51', '1123');
INSERT INTO `articletable` VALUES ('3', '3', '2018-07-05 18:23:15', '12');
INSERT INTO `articletable` VALUES ('4', '4', '2018-07-05 18:23:28', '123');
INSERT INTO `articletable` VALUES ('5', '5', '2018-07-05 18:23:36', '13');
INSERT INTO `articletable` VALUES ('6', '6', '2018-07-05 18:23:43', '123');
INSERT INTO `articletable` VALUES ('7', '7', '2018-07-05 18:23:53', '23');
INSERT INTO `articletable` VALUES ('8', '8', '2018-07-05 18:24:05', '2312');

-- ----------------------------
-- Table structure for usertable
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` bit(1) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO `usertable` VALUES ('1', 'yl', '2543174', 'Ye1in', '', '21');
