/*
Navicat MySQL Data Transfer
Source Server         : 本地
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : student_examination_sys
Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001
Date: 2019-07-4 00:40:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '1', '1001', '80');
INSERT INTO `score` VALUES ('2', '2', '1002', '60');
INSERT INTO `score` VALUES ('3', '1', '1001', '70');
INSERT INTO `score` VALUES ('4', '2', '1002', '60.5');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '18', '男');
INSERT INTO `student` VALUES ('2', '李四', '20', '女');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(20) DEFAULT NULL,
  `teacher` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO `subject` VALUES ('1002', '数学', '刘老师', '本次考试比较难');
