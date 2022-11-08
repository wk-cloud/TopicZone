/*
Navicat MySQL Data Transfer

Source Server         : MySQL8.0
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : topicdb

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2022-11-08 22:49:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_friends
-- ----------------------------
DROP TABLE IF EXISTS `t_friends`;
CREATE TABLE `t_friends` (
  `friends_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `friend_id` int DEFAULT NULL,
  PRIMARY KEY (`friends_id`),
  KEY `FK_friend_base_uid` (`user_id`),
  KEY `FK_friend_base_fid` (`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_friends
-- ----------------------------

-- ----------------------------
-- Table structure for t_host_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_host_reply`;
CREATE TABLE `t_host_reply` (
  `host_reply_id` int NOT NULL AUTO_INCREMENT,
  `host_reply_content` varchar(1000) NOT NULL,
  `host_reply_date` timestamp NOT NULL,
  `user_basic_id` int NOT NULL,
  `reply_id` int NOT NULL,
  PRIMARY KEY (`host_reply_id`),
  KEY `FK_host_reply_basic` (`user_basic_id`),
  KEY `FK_host_reply_reply` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_host_reply
-- ----------------------------

-- ----------------------------
-- Table structure for t_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply` (
  `reply_id` int NOT NULL AUTO_INCREMENT,
  `reply_content` varchar(1000) NOT NULL,
  `user_basic_id` int NOT NULL,
  `reply_date` timestamp NOT NULL,
  `topic_id` int NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK_reply_basic` (`user_basic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_reply
-- ----------------------------

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(50) NOT NULL,
  `topic_content` text NOT NULL,
  `topic_publish_date` timestamp NOT NULL,
  `user_basic_id` int NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_topic
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_basic
-- ----------------------------
DROP TABLE IF EXISTS `t_user_basic`;
CREATE TABLE `t_user_basic` (
  `user_basic_id` int NOT NULL AUTO_INCREMENT,
  `login_id` varchar(20) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `head_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_basic_id`),
  UNIQUE KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_user_basic
-- ----------------------------
INSERT INTO `t_user_basic` VALUES ('1', '20191544117', '往事随风', '123456Aa', '2.webp');

-- ----------------------------
-- Table structure for t_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_user_detail`;
CREATE TABLE `t_user_detail` (
  `user_detail_id` int NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_sex` varchar(4) DEFAULT NULL,
  `user_id_number` varchar(18) DEFAULT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_birth` date DEFAULT NULL,
  `user_star` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_detail_id`),
  UNIQUE KEY `user_id_number` (`user_id_number`),
  UNIQUE KEY `user_phone` (`user_phone`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_user_detail
-- ----------------------------
INSERT INTO `t_user_detail` VALUES ('1', null, null, null, null, null, null, null);
