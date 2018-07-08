/*
Navicat MySQL Data Transfer

Source Server         : wtmanager
Source Server Version : 50721
Source Host           : whitenight.xin:3306
Source Database       : whitenight

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-07-08 23:55:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articletable
-- ----------------------------
DROP TABLE IF EXISTS `articletable`;
CREATE TABLE `articletable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for commenttable
-- ----------------------------
DROP TABLE IF EXISTS `commenttable`;
CREATE TABLE `commenttable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `article` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment-article` (`article`),
  KEY `comment-user` (`name`),
  CONSTRAINT `comment-article` FOREIGN KEY (`article`) REFERENCES `articletable` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment-user` FOREIGN KEY (`name`) REFERENCES `usertable` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for messagetable
-- ----------------------------
DROP TABLE IF EXISTS `messagetable`;
CREATE TABLE `messagetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message-user` (`user`),
  CONSTRAINT `message-user` FOREIGN KEY (`user`) REFERENCES `usertable` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for usertable
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` bit(1) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
