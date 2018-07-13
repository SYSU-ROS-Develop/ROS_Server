/*
Navicat MySQL Data Transfer

Source Server         : meal_order_system
Source Server Version : 50640
Source Host           : 119.23.52.67:3306
Source Database       : ROS

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-13 19:06:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book_list
-- ----------------------------
DROP TABLE IF EXISTS `book_list`;
CREATE TABLE `book_list` (
  `BookName` varchar(255) NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pos_x` float(10,2) NOT NULL,
  `pos_y` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_list
-- ----------------------------
INSERT INTO `book_list` VALUES ('三国演义', '1', '-2.07', '2.35');
INSERT INTO `book_list` VALUES ('水浒传', '2', '-1.80', '-2.60');
INSERT INTO `book_list` VALUES ('test', '3', '-0.50', '2.30');
INSERT INTO `book_list` VALUES ('红楼梦', '4', '-0.62', '-2.56');
INSERT INTO `book_list` VALUES ('西游记', '5', '0.75', '2.46');
INSERT INTO `book_list` VALUES ('演员的自我修养', '6', '0.75', '-2.50');

-- ----------------------------
-- Table structure for Queries
-- ----------------------------
DROP TABLE IF EXISTS `Queries`;
CREATE TABLE `Queries` (
  `pos_x` float(255,2) DEFAULT NULL,
  `pos_y` float(255,2) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Queries
-- ----------------------------
INSERT INTO `Queries` VALUES ('1.00', '1.00', '6', '1');
INSERT INTO `Queries` VALUES ('-1.00', '2.00', '7', '1');
INSERT INTO `Queries` VALUES ('-1.00', '2.00', '8', '1');
INSERT INTO `Queries` VALUES ('-1.00', '2.00', '9', '1');
INSERT INTO `Queries` VALUES ('-1.00', '2.00', '10', '1');
INSERT INTO `Queries` VALUES ('-0.50', '2.30', '11', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '12', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '13', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '14', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '15', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '16', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '17', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '18', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '19', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '20', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '21', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '22', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '23', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '24', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '25', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '26', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '27', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '28', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '29', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '30', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '31', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '32', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '33', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '34', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '35', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '36', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '37', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '38', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '39', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '40', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '41', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '42', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '43', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '44', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '45', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '46', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '47', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '48', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '49', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '50', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '51', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '52', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '53', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '54', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '55', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '56', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '57', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '58', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '59', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '60', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '61', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '62', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '63', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '64', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '65', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '66', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '67', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '68', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '69', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '70', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '71', '1');
INSERT INTO `Queries` VALUES ('0.75', '2.46', '72', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '73', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '74', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '75', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '76', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '77', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '78', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '79', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '80', '1');
INSERT INTO `Queries` VALUES ('-0.50', '2.30', '81', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '82', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '83', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '84', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '85', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '86', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '87', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '88', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '89', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '90', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '91', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '92', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '93', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '94', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '95', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '96', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '97', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '98', '1');
INSERT INTO `Queries` VALUES ('-0.62', '-2.56', '99', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '100', '1');
INSERT INTO `Queries` VALUES ('-1.80', '-2.60', '101', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '102', '1');
INSERT INTO `Queries` VALUES ('-2.07', '2.35', '103', '1');
