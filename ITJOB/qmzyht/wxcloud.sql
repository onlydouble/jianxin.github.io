/*
Navicat MySQL Data Transfer

Source Server         : MySQL_View
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : wxcloud

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2016-06-06 13:00:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` int(10) NOT NULL,
  `USERNAME` varchar(16) CHARACTER SET gb2312 NOT NULL,
  `PASSWORD` varchar(16) CHARACTER SET gb2312 NOT NULL,
  `STATE` int(10) NOT NULL,
  `REGDATE` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456', '1', '2014-10-01');
INSERT INTO `admin` VALUES ('2', 'test', 'test', '0', '2014-10-16');
INSERT INTO `admin` VALUES ('4', 'bbbb', 'bbbb', '1', '2014-10-28');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(10) NOT NULL,
  `USERNAME` varchar(32) CHARACTER SET gb2312 NOT NULL,
  `PASSWORD` varchar(32) CHARACTER SET gb2312 NOT NULL,
  `EMAIL` varchar(32) CHARACTER SET gb2312 NOT NULL,
  `PUBLICNAME` varchar(16) CHARACTER SET gb2312 NOT NULL,
  `CONTENT` varchar(128) CHARACTER SET gb2312 DEFAULT NULL,
  `IMG` varchar(128) CHARACTER SET gb2312 DEFAULT NULL,
  `STATE` int(10) NOT NULL,
  `REGDATE` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'user', '1234', 'user@gmail.com', '凡诺软件', '备注信息。。', '/data/avatar/user150128061713267.bmp', '1', '2014-09-28');
INSERT INTO `user` VALUES ('2', 'test', '1111', 'test@sohu.com', 'c', '无备注', '/data/avatar/test141103031634778.gif', '1', '2014-10-16');
INSERT INTO `user` VALUES ('3', 'abcd', '1234', 'abcd@gg.com', '哈哈', 'wu', '/data/avatar/abcd141031035915159.gif', '1', '2014-10-16');
INSERT INTO `user` VALUES ('6', 'dddd', 'dddd', 'dddd@gm.com', 'c', 'dd', null, '1', '2014-10-15');
INSERT INTO `user` VALUES ('7', 'eeee', '1234', 'ee@e.com', 'c', 'ee', '/data/avatar/eeee141031024151569.jpg', '1', '2014-10-17');
INSERT INTO `user` VALUES ('11', 'iiii', '1234', 'ii@gi.com', '米哦了', 'baaag', '/data/avatar/iiii141031023909569.gif', '1', '2014-10-25');
INSERT INTO `user` VALUES ('12', 'aabb', 'aabb', 'a2@gam.com', 'eeg', 'ge', null, '0', '2014-10-26');
INSERT INTO `user` VALUES ('13', 'many', 'many', 'man@g.com', '大婶', '无备注', null, '1', '2014-10-30');
INSERT INTO `user` VALUES ('14', 'kiki', 'kiki', 'ki@ga.com', '弟弟', '咯嘛', null, '1', '2014-10-30');
INSERT INTO `user` VALUES ('15', 'aadddd', 'ffffff', 'dd@gg.cm', 'gggg', 'gggg', null, '1', '2016-06-06');
INSERT INTO `user` VALUES ('16', 'aaggbb', 'aaaaaa', 'dd@gg.cm', 'gg', '', null, '1', '2016-06-06');
