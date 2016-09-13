/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : itjob

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2016-06-30 13:53:11
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456', '1', '2014-10-01');
INSERT INTO `admin` VALUES ('3', 'zhang', '123456', '1', '2016-06-26');
INSERT INTO `admin` VALUES ('4', 'chen', '123456', '1', '2016-06-26');
INSERT INTO `admin` VALUES ('5', 'feng', '123456', '1', '2016-06-28');

-- ----------------------------
-- Table structure for `apply`
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `sid` int(5) NOT NULL,
  `name` varchar(32) CHARACTER SET gbk NOT NULL,
  `job` varchar(128) CHARACTER SET gbk NOT NULL,
  `education` varchar(128) CHARACTER SET gbk NOT NULL,
  `exp` varchar(128) CHARACTER SET gbk NOT NULL,
  `information` varchar(128) CHARACTER SET gbk DEFAULT NULL,
  `date` varchar(128) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('5', 'wang', 'web前端开发', '本科', 'ddd', 'ddd', null);

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `cid` int(5) NOT NULL COMMENT '企业编号',
  `cname` varchar(20) CHARACTER SET gbk NOT NULL COMMENT '企业名称',
  `cpassword` varchar(10) CHARACTER SET gbk NOT NULL,
  `caddress` varchar(40) CHARACTER SET gbk DEFAULT NULL COMMENT '企业地址',
  `clink` varchar(40) CHARACTER SET gbk DEFAULT NULL COMMENT '企业链接',
  `cphone` varchar(11) CHARACTER SET gbk DEFAULT NULL COMMENT '企业联系电话',
  `cemail` varchar(32) CHARACTER SET gbk DEFAULT NULL COMMENT '企业邮箱',
  `cimg` varchar(128) CHARACTER SET gbk DEFAULT NULL,
  `content` varchar(500) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`),
  KEY `cname` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '武汉东湖游戏公司', '123456', '北京', 'www.keji.com', '13554138797', 'wuhan@ok.con', '/data/avatar/武汉东湖游戏公司160627035932419.gif', '深圳市全容电子商务有限公司成立于2014年12月12日，是一家致力于打造建筑装饰材料垂直采购的电子商务平台。我们旨在构建未来装饰建材行业的B2B电子商务生态系统，建立以价值链为中心的“服务+展示+采购”的网上及移动平台');
INSERT INTO `company` VALUES ('11', '深圳科技有限公司', '123456', '北京', 'www.keji.com', '13554138797', 'wuhan@ok.con', '/data/avatar/深圳科技有限公司160627040053781.gif', '深圳市全容电子商务有限公司成立于2014年12月12日，是一家致力于打造建筑装饰材料垂直采购的电子商务平台。我们旨在构建未来装饰建材行业的B2B电子商务生态系统，建立以价值链为中心的“服务+展示+采购”的网上及移动平台');
INSERT INTO `company` VALUES ('12', '武汉科技有限', '123456', '武汉', 'www.keji.com', '13554138797', 'wuhan@ok.con', 'data/avatar/10.gif', '深圳市全容电子商务有限公司成立于2014年12月12日，是一家致力于打造建筑装饰材料垂直采购的电子商务平台。我们旨在构建未来装饰建材行业的B2B电子商务生态系统，建立以价值链为中心的“服务+展示+采购”的网上及移动平台');
INSERT INTO `company` VALUES ('14', '深圳市全容电子商务有限公司', '123456', '武汉', 'www.keji.com', '13554138797', '109068@qq.om', null, '深圳市全容电子商务有限公司成立于2014年12月12日，是一家致力于打造建筑装饰材料垂直采购的电子商务平台。我们旨在构建未来装饰建材行业的B2B电子商务生态系统，建立以价值链为中心的“服务+展示+采购”的网上及移动平台');
INSERT INTO `company` VALUES ('16', '深圳有限公司', '123456', '北京', 'www.friendster.com', '13554138797', 'shenzhen@163.com', null, '深圳市全容电子商务有限公司成立于2014年12月12日，是一家致力于打造建筑装饰材料垂直采购的电子商务平台。我们旨在构建未来装饰建材行业的B2B电子商务生态系统，建立以价值链为中心的“服务+展示+采购”的网上及移动平台');
INSERT INTO `company` VALUES ('22', '深圳科技', '123456', '北京', 'www.friendster.com', null, '106@ww.com', null, null);

-- ----------------------------
-- Table structure for `companyjob`
-- ----------------------------
DROP TABLE IF EXISTS `companyjob`;
CREATE TABLE `companyjob` (
  `cjid` int(5) NOT NULL AUTO_INCREMENT,
  `cjob` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '职位名称',
  `csalary` varchar(4) CHARACTER SET gbk DEFAULT NULL COMMENT '薪水',
  `crequest` varchar(300) CHARACTER SET gbk DEFAULT NULL COMMENT '职位要求',
  `cjaddress` varchar(40) CHARACTER SET gbk DEFAULT NULL COMMENT '职位所在地址',
  `cid` int(5) DEFAULT NULL,
  `credate` date DEFAULT NULL,
  PRIMARY KEY (`cjid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of companyjob
-- ----------------------------
INSERT INTO `companyjob` VALUES ('1', '软件测试', '2000', '两年以上工作经验', '武汉市洪山区', '2', '2016-06-22');
INSERT INTO `companyjob` VALUES ('2', 'web前端设计', '5000', '两年以上工作经验', '北京 东城区', '2', '2016-06-06');
INSERT INTO `companyjob` VALUES ('3', 'web前端设计', '2000', '在职三个月', '武汉 东湖', '2', '2016-05-31');
INSERT INTO `companyjob` VALUES ('6', 'java高级工程师', '3000', '3年相关工作经验，ssh框架有独到理解', '深圳 软件园', '2', '2016-06-28');
INSERT INTO `companyjob` VALUES ('7', '网络设计专员', '2000', '无', '深圳', '1', '2016-05-30');
INSERT INTO `companyjob` VALUES ('8', '数据库管理员', '4000', '.数据库监控技术：包括监控平台的研发、应用，服务监控准确性、实时性、全面性的保障', '合肥', '2', '2016-05-31');
INSERT INTO `companyjob` VALUES ('10', 'JS前端工程师', '8000', '五年以上工作经验', '深圳 软件园', '2', '2016-05-31');
INSERT INTO `companyjob` VALUES ('11', '软件测试', '8000', '五年以上工作经验', '武汉', '2', '2016-06-19');
INSERT INTO `companyjob` VALUES ('13', 'JS前端工程师', '2000', '无', '福建', '2', '2016-06-10');
INSERT INTO `companyjob` VALUES ('15', 'PHP程序员', '2000', '无', '上海', '2', '2016-06-16');
INSERT INTO `companyjob` VALUES ('17', '底层播放器设计师', '2000', '无', '青岛', '1', '2016-07-02');
INSERT INTO `companyjob` VALUES ('20', 'web前端开发', '2000', '应届毕业生', '无', '1', '2016-06-06');
INSERT INTO `companyjob` VALUES ('21', '数据库管理', '1000', '3年相关工作经验，数据库管理有独到理解', '深圳 福田区', '2', '2016-06-21');
INSERT INTO `companyjob` VALUES ('22', 'web前端开发', '5000', '应届毕业生', '无', '1', '2016-07-01');
INSERT INTO `companyjob` VALUES ('23', 'web前端开发', '3000', '应届毕业生', '海外', '1', '2016-07-15');
INSERT INTO `companyjob` VALUES ('24', 'web前端开发', '5000', '应届毕业生', '北京', '1', '2016-06-06');
INSERT INTO `companyjob` VALUES ('26', 'php工程师', '2000', '应届毕业生', '武汉', '3', '2016-07-05');
INSERT INTO `companyjob` VALUES ('27', '网络运营', '1000', '计算机相关专业，大专及以上学历，2年以上前台开发经验；\r\n计算机相关专业，大专及以上学历，2年以上前台开发经验；\r\n', '武汉 光谷软件园', '2', '2016-06-07');
INSERT INTO `companyjob` VALUES ('28', 'php工程师', '3000', '信息管理专业', '深圳 软件园', '2', '2016-06-21');
INSERT INTO `companyjob` VALUES ('29', '网络运营', '4000', '计算机专业', '武汉 光谷', '2', '2016-06-14');
INSERT INTO `companyjob` VALUES ('30', 'java工程师', '8000', '三年以上工作经验', '武汉 光谷', '1', '2016-06-14');
INSERT INTO `companyjob` VALUES ('31', 'web前端开发', '5000', '应届毕业生', '武汉 光谷', '1', '2016-06-08');
INSERT INTO `companyjob` VALUES ('32', 'web前端开发', '3000', '无', null, null, null);

-- ----------------------------
-- Table structure for `emcmrelation`
-- ----------------------------
DROP TABLE IF EXISTS `emcmrelation`;
CREATE TABLE `emcmrelation` (
  `rid` int(10) NOT NULL,
  `cjid` int(5) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `re` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `cijd` (`cjid`),
  KEY `eid` (`eid`),
  CONSTRAINT `cijd` FOREIGN KEY (`cjid`) REFERENCES `companyjob` (`cjid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `eid` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of emcmrelation
-- ----------------------------

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eno` varchar(32) CHARACTER SET gbk DEFAULT NULL COMMENT '应聘者账号',
  `eid` int(10) NOT NULL,
  `epassword` char(10) CHARACTER SET gbk NOT NULL,
  `ename` varchar(20) CHARACTER SET gbk NOT NULL,
  `esex` char(2) CHARACTER SET gbk DEFAULT NULL,
  `ebirth` datetime DEFAULT NULL,
  `eidnumber` char(18) CHARACTER SET gbk DEFAULT NULL COMMENT '身份证号码',
  `ephone` int(11) NOT NULL,
  `email` varchar(20) CHARACTER SET gbk DEFAULT NULL,
  `eimg` varchar(128) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('nn', '1', '123456', '张', '男', '2016-06-12 11:37:08', '155548849894556', '135541387', '1096826746@163.com', null);
INSERT INTO `employee` VALUES (null, '2', '123456', 'wang', '男', '2016-06-21 14:55:10', '13574854874849', '1355413879', '1090685244@163.com', null);
INSERT INTO `employee` VALUES (null, '3', '123456', '王', '女', '1997-04-26 00:00:00', '158526595648898', '23564899', null, null);
INSERT INTO `employee` VALUES (null, '4', '123456', '陈', '女', '2016-05-07 00:00:00', '1255489878797977', '789584624', null, null);

-- ----------------------------
-- Table structure for `employeejob`
-- ----------------------------
DROP TABLE IF EXISTS `employeejob`;
CREATE TABLE `employeejob` (
  `ejtype` char(20) CHARACTER SET gbk NOT NULL COMMENT '工作类型',
  `ejob` varchar(20) CHARACTER SET gbk NOT NULL COMMENT '应聘工作',
  `esalary` int(4) NOT NULL COMMENT '薪水',
  `eid` int(10) NOT NULL,
  PRIMARY KEY (`ejtype`),
  KEY `eidid` (`eid`),
  CONSTRAINT `eidid` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of employeejob
-- ----------------------------

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` mediumtext CHARACTER SET gbk,
  `canLock` tinyint(1) NOT NULL,
  `canTop` tinyint(1) NOT NULL,
  `canPrime` tinyint(1) NOT NULL,
  `canLogon` tinyint(1) NOT NULL,
  `canPublish` tinyint(1) NOT NULL,
  `canReply` tinyint(1) NOT NULL,
  `groupName` varchar(255) CHARACTER SET gbk NOT NULL,
  `canDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `aid` int(10) NOT NULL COMMENT '管理员编号',
  `aname` varchar(20) CHARACTER SET gbk NOT NULL COMMENT '管理员姓名',
  `asex` char(2) CHARACTER SET gbk NOT NULL COMMENT '性别',
  `abirth` datetime NOT NULL COMMENT '出生日期',
  `apassword` char(10) CHARACTER SET gbk NOT NULL COMMENT '密码',
  `aphone` char(11) CHARACTER SET gbk NOT NULL COMMENT '电话',
  `aintime` datetime NOT NULL COMMENT '入职时间',
  `cid` int(5) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `aiid` (`cid`),
  CONSTRAINT `aiid` FOREIGN KEY (`cid`) REFERENCES `company` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `meno` varchar(10) CHARACTER SET gbk NOT NULL COMMENT '账号',
  `memail` varchar(20) CHARACTER SET gbk NOT NULL COMMENT '标题',
  `medate` date DEFAULT NULL COMMENT '留言日期',
  `mecontent` varchar(10000) CHARACTER SET gbk NOT NULL COMMENT '留言内容',
  `id` int(10) NOT NULL,
  `mphone` varchar(20) CHARACTER SET gbk DEFAULT NULL,
  `mimg` varchar(5000) CHARACTER SET gbk DEFAULT 'images/7.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('zhang', '111111@5888.com', '2016-06-30', '我现在还在读大学，快要毕业了，想找份和javs相关的兼职，地点最好在广西的，请问有合适的岗位可以推荐么', '5', '1355413', 'images/chen.jpg');
INSERT INTO `message` VALUES ('王建新', '13554138797@163.com', '2016-06-18', '想要求职一份web前端开发的工作。这是我的个人网站。\r\n<a href=\"information.jsp\">王建新的个人主页</a>', '10', '1355413', 'images/7.jpg');
INSERT INTO `message` VALUES ('帅帅', 'shuaishua@168.cn', '2016-06-01', '大学学的专业是计算机专业，现在研究生在读，希望找一份前端设计的兼职，月薪大概在3000-5000左右，有合适的可以推荐么？<a href=\"employee/information.jsp\">这是我的个人主页</a>.', '13', '1355413', 'images/3.jpg');
INSERT INTO `message` VALUES ('全荣电子有限公司', 'quanrong@email.com', '2016-07-01', '<div style=\"margin-left:20%;margin-top:-4%;\"><h2>深圳市全容电子商务有限公司</h2><p>地址：广东深圳市福田区 天安数码城天吉大厦CD座四楼D1D2</p>\r\n        	<p>联系人：吕小姐</p>\r\n        	<p>手机：83827374</p>\r\n        	<p>网址：<a href=\"index.html\">index.html</a></p></div>', '14', '1355413', 'images/feng.jpg');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `photo` mediumblob,
  `born` bigint(20) unsigned DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `sex` char(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `regTime` bigint(20) unsigned NOT NULL,
  `lastLogon` bigint(20) unsigned DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK27E3CB9572E80A` (`groupId`),
  CONSTRAINT `FK27E3CB9572E80A` FOREIGN KEY (`groupId`) REFERENCES `group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
