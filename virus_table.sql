/*
Navicat MySQL Data Transfer

Source Server         : VirusWeb
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : virus_table

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2020-03-27 14:44:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL COMMENT '管理员表',
  `staus` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '王嫄', '123456', '0');
INSERT INTO `admin` VALUES ('2', 'root', '123456', '1');
INSERT INTO `admin` VALUES ('3', '祁甜', '123456', '1');

-- ----------------------------
-- Table structure for student-infor
-- ----------------------------
DROP TABLE IF EXISTS `student-infor`;
CREATE TABLE `student-infor` (
  `id` int(11) NOT NULL,
  `college` varchar(255) NOT NULL,
  `time` time DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `number` varchar(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) NOT NULL,
  `an` int(1) NOT NULL,
  `bn` int(1) NOT NULL,
  `cn` int(1) NOT NULL,
  `dn` int(1) NOT NULL,
  `en` int(1) NOT NULL,
  `fn` int(1) NOT NULL,
  `gn` varchar(255) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student-infor
-- ----------------------------
INSERT INTO `student-infor` VALUES ('2', '', null, '', '', '', '', null, '', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `student-infor` VALUES ('5', '音乐学院', '08:10:12', '李松渝', '201771030110', '17393165031', '新疆维吾尔自治区', '乌鲁木齐市', '市辖区', '0', '0', '0', '0', '0', '0', '有家人在国外');
INSERT INTO `student-infor` VALUES ('3', '体育学院', '08:10:06', '祁甜', '201771030117', '17393165022', '甘肃省', '酒泉市', '敦煌市', '0', '0', '0', '0', '1', '0', '无');
INSERT INTO `student-infor` VALUES ('7', '马克思主义学院', '08:10:20', '乔昊', '201771030118', '17393165035', '甘肃省', '天水市', '武山县', '0', '0', '0', '0', '0', '0', '无');
INSERT INTO `student-infor` VALUES ('1', '计算机科学与工程学院', '08:10:03', '王嫄', '201771030120', '17393165057', '甘肃省', '兰州市', '兰州新区', '0', '0', '0', '0', '1', '0', '无');
INSERT INTO `student-infor` VALUES ('6', '哲学院', '08:10:15', '王瑞梅', '201771030122', '17393165033', '甘肃省', '天水市', '甘谷区', '0', '0', '0', '0', '0', '0', '有家人在国外');
INSERT INTO `student-infor` VALUES ('4', '美术学院', '08:10:08', '王爽', '201771030123', '17393165025', '贵州省', '贵阳市', '开阳县', '0', '0', '0', '0', '1', '0', '无');
INSERT INTO `student-infor` VALUES ('8', '外国语学院', '08:10:22', '张琳', '201771030129', '17393165036', '天津市', '天津市', '滨海新区', '0', '0', '0', '0', '0', '0', '无');

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_work_palce` varchar(255) NOT NULL,
  `t_time` time NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_code` varchar(255) NOT NULL,
  `t_number` varchar(11) NOT NULL,
  `t_province` varchar(255) NOT NULL,
  `t_city` varchar(255) NOT NULL,
  `t_area` varchar(255) NOT NULL,
  `am` int(1) NOT NULL,
  `bm` int(1) NOT NULL,
  `cm` int(1) NOT NULL,
  `dm` int(1) NOT NULL,
  `em` int(1) NOT NULL,
  `fm` int(1) NOT NULL,
  `gm` varchar(255) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES ('1', '计算机科学与工程学院', '08:10:07', '刘颜星', '16710301', '17393165023', '甘肃省', '兰州市', '安宁区', '0', '0', '0', '0', '0', '0', '无');
INSERT INTO `teacher_info` VALUES ('2', '计算机科学与工程学院', '08:10:10', '李芬芳', '16710304', '17393165026', '甘肃省', '兰州市', '安宁区', '0', '0', '0', '0', '0', '0', '无');
INSERT INTO `teacher_info` VALUES ('3', '计算机科学与工程学院', '08:10:17', '郝占军', '13710304', '17393165034', '甘肃省', '兰州市', '安宁区', '0', '0', '0', '0', '0', '0', '有家人在国外');
