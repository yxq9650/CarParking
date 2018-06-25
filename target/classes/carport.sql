/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : carport

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2018-06-15 20:12:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `card`
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` int(11) NOT NULL auto_increment COMMENT '停车场卡信息表',
  `cardnum` varchar(50) default NULL COMMENT '卡号',
  `type` int(11) default NULL COMMENT '卡类型',
  `money` double(11,2) default '0.00' COMMENT '余额',
  `time` datetime default NULL COMMENT '发卡时间',
  `islose` int(11) default '0' COMMENT '是否挂失',
  `illegalcount` int(11) default '0' COMMENT '违规次数',
  `carnum` varchar(50) default NULL COMMENT '假如没有办卡那么就用车牌来标识',
  `deductedtime` datetime default NULL COMMENT '扣费时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('9', '1581345771220180221', '1', '226.00', '2017-12-25 19:37:53', '0', '0', '', null);
INSERT INTO `card` VALUES ('12', '1783542937420180422', '1', '2014.00', '2018-04-22 17:30:44', '0', '0', '沪K62933', null);
INSERT INTO `card` VALUES ('13', '1873542927420180509', '1', '7528.00', '2018-05-09 20:08:20', '0', '0', '黑A1R272', null);
INSERT INTO `card` VALUES ('14', '1358610158820180509', '1', '14000.00', '2018-05-09 20:51:27', '0', '0', '', null);
INSERT INTO `card` VALUES ('15', '1598898193220180509', '1', '9999.00', '2018-05-09 21:20:57', '0', '0', null, null);
INSERT INTO `card` VALUES ('17', '1784356989920180509', '1', '800.00', '2018-05-09 21:24:48', '0', '0', null, null);
INSERT INTO `card` VALUES ('18', '1783542987720180509', '1', '900.00', '2018-05-09 21:26:58', '0', '0', null, null);
INSERT INTO `card` VALUES ('19', '1358610158820180603', '1', '5000.00', '2018-06-03 10:21:12', '0', '0', null, null);

-- ----------------------------
-- Table structure for `cardtype`
-- ----------------------------
DROP TABLE IF EXISTS `cardtype`;
CREATE TABLE `cardtype` (
  `id` int(11) NOT NULL auto_increment COMMENT '卡类型表',
  `type` varchar(50) default NULL COMMENT '卡类型',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cardtype
-- ----------------------------
INSERT INTO `cardtype` VALUES ('1', '普通卡');
INSERT INTO `cardtype` VALUES ('2', '月卡');
INSERT INTO `cardtype` VALUES ('3', '年卡');

-- ----------------------------
-- Table structure for `coupon`
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL auto_increment,
  `couponNum` varchar(255) default NULL COMMENT '优惠券号码',
  `money` int(11) default NULL COMMENT '优惠金额',
  `cardnum` varchar(255) default NULL COMMENT '卡号',
  `time` datetime default NULL COMMENT '过期时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('17', '1166586e15074ba78f67945bec04d990', '500', '1234567891020180420', '2018-05-07 11:30:30');
INSERT INTO `coupon` VALUES ('18', 'd0cb9212eae3493990c6749847075065', '500', '18734542934420180422', '2018-05-07 11:30:30');
INSERT INTO `coupon` VALUES ('21', '6011976fd2084a1eb4fab16ef5258232', '500', '18734542934420180422', '2018-05-07 11:31:18');
INSERT INTO `coupon` VALUES ('22', '6ac70541f75e4aafb1f13aa582b35630', '500', '1234567891020180420', '2018-05-07 11:31:18');
INSERT INTO `coupon` VALUES ('23', 'fee9b6fe9bbe4c259027ccf681ac5fa1', '500', '1358610158820180509', '2018-06-04 07:46:14');
INSERT INTO `coupon` VALUES ('24', '4022909f8050461d99b10f11d7efe0ec', '500', '1598898193220180509', '2018-06-04 07:46:14');
INSERT INTO `coupon` VALUES ('27', '21060e597931459189450735bf219102', '500', '1358610158820180603', '2018-06-04 07:46:15');
INSERT INTO `coupon` VALUES ('28', 'ddcf37aef3914f6aa37ee38b7b3fb244', '100', '1783542937420180422', '2018-06-04 15:30:10');
INSERT INTO `coupon` VALUES ('29', '7e6533936e3948ea877f0a71cfd96aff', '100', '1358610158820180509', '2018-06-04 15:30:10');
INSERT INTO `coupon` VALUES ('30', 'bd6ad71f4d5f400e9f9be472038a8b83', '100', '1873542927420180509', '2018-06-04 15:30:10');
INSERT INTO `coupon` VALUES ('31', '3819dcea620447cab97142bb6177b10d', '100', '1783542987720180509', '2018-06-04 15:30:10');
INSERT INTO `coupon` VALUES ('32', '6cc459ae3c29452a8c8154a55c8e4f8c', '100', '1598898193220180509', '2018-06-04 15:30:10');

-- ----------------------------
-- Table structure for `depotinfo`
-- ----------------------------
DROP TABLE IF EXISTS `depotinfo`;
CREATE TABLE `depotinfo` (
  `id` int(11) NOT NULL auto_increment COMMENT '停车场信息表',
  `hourmoney` varchar(50) default NULL COMMENT '停车场名',
  `monthcard` varchar(50) default NULL COMMENT '停车场电话',
  `yearcard` varchar(255) default NULL COMMENT '停车场地址',
  `illegal` varchar(255) default NULL COMMENT '总车位',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depotinfo
-- ----------------------------
INSERT INTO `depotinfo` VALUES ('1', '10', '1920', '21120', '50');

-- ----------------------------
-- Table structure for `email`
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL auto_increment,
  `sendid` int(11) default NULL COMMENT '发送方',
  `toid` int(11) default NULL COMMENT '接收方',
  `title` varchar(255) default NULL COMMENT '标题',
  `content` varchar(255) default NULL COMMENT '内容',
  `time` datetime default NULL COMMENT '发送时间',
  `managerisread` int(11) default '0',
  `userisread` int(11) default '0' COMMENT '是否被读',
  `userdeleted` int(11) default '0',
  `managedelete` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('1', '33', '1', '扣费', '乱收费', '2018-05-09 21:55:01', '2', '0', '0', '0');
INSERT INTO `email` VALUES ('2', '3', '33', '回复：扣费', '你能那我咋滴', '2018-05-09 21:55:26', '0', '1', '0', '0');
INSERT INTO `email` VALUES ('3', '33', '1', '哪里违规', '哪里违规？', '2018-06-04 14:03:30', '1', '0', '0', '0');
INSERT INTO `email` VALUES ('4', '33', '1', '还好', '哈哈哈', '2018-06-04 14:12:37', '2', '0', '0', '0');
INSERT INTO `email` VALUES ('5', '3', '33', '回复：还好', '呵呵呵', '2018-06-04 14:14:20', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `illegalinfo`
-- ----------------------------
DROP TABLE IF EXISTS `illegalinfo`;
CREATE TABLE `illegalinfo` (
  `id` int(11) NOT NULL auto_increment,
  `cardnum` varchar(255) default NULL COMMENT '停车卡号',
  `illegalInfo` varchar(255) default NULL COMMENT '违规信息',
  `parkin` datetime default NULL,
  `time` datetime default NULL COMMENT '违规时间',
  `uid` int(11) default '0' COMMENT '添加的管理员',
  `carnum` varchar(255) default NULL COMMENT '车牌号，临时停车的话用车牌号记录',
  `deleted` char(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of illegalinfo
-- ----------------------------
INSERT INTO `illegalinfo` VALUES ('1', '1581345771220180221', '666', '2018-05-22 16:35:00', '2018-05-22 17:36:33', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('2', '', '5555', '2018-05-22 16:48:05', '2018-05-22 17:48:46', '0', '555', 'N');
INSERT INTO `illegalinfo` VALUES ('3', '', '999', '2018-05-22 17:56:13', '2018-05-22 17:57:47', '0', '000', 'N');
INSERT INTO `illegalinfo` VALUES ('4', '', '555', '2018-05-22 18:01:25', '2018-05-22 18:01:30', '0', '555', 'N');
INSERT INTO `illegalinfo` VALUES ('5', '1581345771220180221', '55555', '2018-05-22 19:00:55', '2018-05-22 19:01:11', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('6', '', '4444', '2018-05-22 19:01:02', '2018-05-22 19:01:17', '0', '浙GZB388', 'N');
INSERT INTO `illegalinfo` VALUES ('7', '1783542937420180422', '888', '2018-05-22 19:07:30', '2018-05-22 19:07:35', '0', '沪K62933', 'N');
INSERT INTO `illegalinfo` VALUES ('8', '1873542927420180509', '555', '2018-05-22 19:47:05', '2018-05-22 19:47:16', '28', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('9', '1873542927420180509', '77777', '2018-05-22 19:51:56', '2018-05-22 19:52:21', '28', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('10', '', '8', '2018-05-22 20:13:15', '2018-05-22 20:13:52', '0', '浙GZB388', 'N');
INSERT INTO `illegalinfo` VALUES ('11', '1873542927420180509', '7', '2018-05-22 20:13:04', '2018-05-22 20:13:57', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('12', '1873542927420180509', '8', '2018-05-22 20:15:47', '2018-05-22 20:16:07', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('13', '', '8', '2018-05-22 20:16:57', '2018-05-22 20:17:02', '0', '沪AP0910', 'N');
INSERT INTO `illegalinfo` VALUES ('14', '', '6', '2018-05-22 20:17:08', '2018-05-22 20:19:21', '1', '沪A51V39', 'N');
INSERT INTO `illegalinfo` VALUES ('15', '1783542937420180422', '1', '2018-05-22 20:23:58', '2018-05-22 20:24:03', '0', '沪K62933', 'N');
INSERT INTO `illegalinfo` VALUES ('16', '', '2', '2018-05-22 20:23:53', '2018-05-22 20:24:08', '0', '浙GZB388', 'N');
INSERT INTO `illegalinfo` VALUES ('17', '1873542927420180509', '3', '2018-05-22 20:23:46', '2018-05-22 20:24:12', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('18', '', '555', '2018-05-29 18:20:39', '2018-05-29 18:21:14', '0', '浙GZB388', 'N');
INSERT INTO `illegalinfo` VALUES ('19', '1873542927420180509', '999', '2018-05-29 18:21:02', '2018-05-29 18:21:31', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('20', '1873542927420180509', 'RRRR', '2018-05-29 18:22:13', '2018-05-29 18:22:36', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('21', '1873542927420180509', '乱停车', '2018-06-02 10:19:43', '2018-06-02 10:22:13', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('22', '', '非法停车', '2018-06-02 10:20:58', '2018-06-03 10:27:47', '0', '浙GZB388', 'N');
INSERT INTO `illegalinfo` VALUES ('23', '1783542937420180422', '888', '2018-06-04 07:52:14', '2018-06-04 07:52:59', '0', '沪K62933', 'N');
INSERT INTO `illegalinfo` VALUES ('24', '1873542927420180509', '哦哦哦', '2018-06-04 07:53:43', '2018-06-04 07:53:49', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('25', '', '应用', '2018-06-04 07:53:36', '2018-06-04 07:53:55', '0', '沪A51V39', 'N');
INSERT INTO `illegalinfo` VALUES ('26', '', '还好', '2018-06-04 07:54:24', '2018-06-04 07:55:01', '0', '沪AP0910', 'N');
INSERT INTO `illegalinfo` VALUES ('27', '1873542927420180509', '各个', '2018-06-04 07:54:30', '2018-06-04 07:59:52', '0', '黑A1R272', 'N');
INSERT INTO `illegalinfo` VALUES ('28', '', '666', '2018-06-04 13:59:26', '2018-06-04 13:59:52', '0', '沪A51V39', 'N');
INSERT INTO `illegalinfo` VALUES ('29', '', '违规听策', '2018-06-04 15:25:04', '2018-06-04 15:25:21', '0', '浙GZB388', 'N');

-- ----------------------------
-- Table structure for `income`
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `id` int(11) NOT NULL auto_increment,
  `money` double(20,2) default '0.00' COMMENT '收入',
  `method` int(11) default '0' COMMENT '收入方式（0现金，1支付宝，2微信，9从卡中扣费）',
  `type` int(11) default '0' COMMENT '收入类型（0临时停车，1普通卡，2月卡，3年卡）',
  `carnum` varchar(255) default NULL,
  `cardnum` varchar(255) default NULL,
  `isillegal` int(11) default '0' COMMENT '是否有违规',
  `source` int(11) default '1' COMMENT '收入来源，0充值卡，1出库收费',
  `time` datetime default NULL COMMENT '收入时间',
  `duration` bigint(20) default NULL COMMENT '停车时长',
  `trueincome` int(5) default '0' COMMENT '是否真正收入（0：否，1：是）',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income
-- ----------------------------
INSERT INTO `income` VALUES ('43', '11102.00', '0', '3', null, '1234567891020180220', '0', '0', '2018-04-18 21:55:37', '0', '0');
INSERT INTO `income` VALUES ('45', '686.00', '0', '1', null, '1581345771220180221', '0', '0', '2018-04-20 17:18:32', '0', '0');
INSERT INTO `income` VALUES ('49', '1110.00', '0', '2', null, '1234567891020180420', '0', '0', '2018-04-22 10:25:49', '0', '0');
INSERT INTO `income` VALUES ('50', '567.00', '0', '1', null, '1314938242720171217', '0', '0', '2018-04-22 15:00:41', '0', '0');
INSERT INTO `income` VALUES ('51', '7809.00', '2', '1', null, '1314938242720171217', '0', '0', '2018-04-22 15:00:57', '0', '0');
INSERT INTO `income` VALUES ('52', '900.00', '2', '1', null, '1314938242720171217', '0', '0', '2018-04-22 16:45:35', '0', '0');
INSERT INTO `income` VALUES ('54', '5500.00', '0', '1', null, '18734542934420180422', '0', '0', '2018-04-22 17:02:18', '0', '0');
INSERT INTO `income` VALUES ('58', '1178.00', '1', '1', null, '1783542937420180422', '0', '0', '2018-04-22 21:32:56', '0', '0');
INSERT INTO `income` VALUES ('60', '8120.00', '2', '1', null, '1783542937420180422', '0', '0', '2018-04-25 19:59:46', '0', '0');
INSERT INTO `income` VALUES ('62', '1120.00', '0', '1', null, '1783542937420180422', '0', '0', '2018-04-25 20:03:40', '0', '0');
INSERT INTO `income` VALUES ('66', '500.00', '0', '1', null, '1783542937420180422', '0', '0', '2018-04-25 20:22:05', '0', '0');
INSERT INTO `income` VALUES ('67', '800.00', '2', '1', null, '1783542937420180422', '0', '0', '2018-04-25 20:23:49', '0', '0');
INSERT INTO `income` VALUES ('68', '500.00', '1', '1', null, '1783542937420180422', '0', '0', '2018-04-25 20:50:16', '0', '0');
INSERT INTO `income` VALUES ('69', '30.00', '9', '0', '789', '', '0', '1', '2018-04-30 21:56:16', '144', '0');
INSERT INTO `income` VALUES ('70', '40.00', '9', '0', '456', '', '0', '1', '2018-04-30 22:57:31', '214', '0');
INSERT INTO `income` VALUES ('71', '118.00', '0', '1', '苏A0CP56', '1783542937420180422', '0', '1', '2018-05-02 11:50:43', '1585', '0');
INSERT INTO `income` VALUES ('72', '5000.00', '1', '1', null, '1783542937420180422', '0', '0', '2018-05-02 11:51:01', '0', '0');
INSERT INTO `income` VALUES ('73', '600.00', '0', '1', null, '1783542937420180422', '0', '0', '2018-05-07 11:30:57', '0', '0');
INSERT INTO `income` VALUES ('74', '10.00', '9', '0', '888', '', '0', '1', '2018-05-09 15:38:41', '7', '0');
INSERT INTO `income` VALUES ('75', '10.00', '9', '0', '苏A0CP56', 'null', '0', '1', '2018-05-09 15:38:47', '8', '0');
INSERT INTO `income` VALUES ('76', '10.00', '9', '0', '456', '', '0', '1', '2018-05-09 16:27:43', '44', '0');
INSERT INTO `income` VALUES ('77', '10.00', '9', '0', '555', '', '0', '1', '2018-05-09 16:38:18', '1', '0');
INSERT INTO `income` VALUES ('78', '10.00', '9', '0', 'fff', '', '0', '1', '2018-05-09 16:43:29', '2', '0');
INSERT INTO `income` VALUES ('79', '10.00', '9', '0', '888', '', '0', '1', '2018-05-09 17:06:18', '10', '0');
INSERT INTO `income` VALUES ('80', '10.00', '2', '0', '777', '', '0', '1', '2018-05-09 17:06:25', '3', '0');
INSERT INTO `income` VALUES ('81', '10.00', '9', '0', '999', '', '0', '1', '2018-05-09 19:53:26', '1', '0');
INSERT INTO `income` VALUES ('82', '0.00', '0', '1', null, '1873542927420180509', '0', '0', '2018-05-09 20:08:20', '0', '0');
INSERT INTO `income` VALUES ('83', '10.00', '9', '0', '8888', '', '0', '1', '2018-05-09 20:10:54', '18', '0');
INSERT INTO `income` VALUES ('84', '0.00', '1', '1', null, '1358610158820180509', '0', '0', '2018-05-09 20:51:27', '0', '0');
INSERT INTO `income` VALUES ('85', '5000.00', '1', '1', null, '1358610158820180509', '0', '0', '2018-05-09 20:53:47', '0', '0');
INSERT INTO `income` VALUES ('86', '500.00', '1', '1', null, '1873542927420180509', '0', '0', '2018-05-09 21:00:15', '0', '0');
INSERT INTO `income` VALUES ('87', '0.00', '1', '1', null, '1598898193220180509', '0', '0', '2018-05-09 21:20:58', '0', '0');
INSERT INTO `income` VALUES ('88', '0.00', '1', '1', null, '1783542899920180509', '0', '0', '2018-05-09 21:22:51', '0', '0');
INSERT INTO `income` VALUES ('89', '0.00', '1', '1', null, '1784356989920180509', '0', '0', '2018-05-09 21:24:48', '0', '0');
INSERT INTO `income` VALUES ('90', '900.00', '1', '1', null, '1783542987720180509', '0', '0', '2018-05-09 21:26:58', '0', '0');
INSERT INTO `income` VALUES ('91', '10.00', '9', '0', '浙GZB388', 'null', '0', '1', '2018-05-09 21:34:50', '1', '0');
INSERT INTO `income` VALUES ('92', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-09 21:36:25', '1', '0');
INSERT INTO `income` VALUES ('93', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-09 21:38:16', '1', '0');
INSERT INTO `income` VALUES ('94', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-05-09 21:39:33', '3', '0');
INSERT INTO `income` VALUES ('95', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-09 21:39:41', '3', '0');
INSERT INTO `income` VALUES ('96', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-09 21:41:19', '1', '0');
INSERT INTO `income` VALUES ('97', '10.00', '9', '0', '沪A51V39', '', '0', '1', '2018-05-09 21:41:27', '1', '0');
INSERT INTO `income` VALUES ('98', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-09 21:41:31', '1', '0');
INSERT INTO `income` VALUES ('99', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-05-09 21:41:39', '1', '0');
INSERT INTO `income` VALUES ('100', '510.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-14 17:31:48', '3024', '0');
INSERT INTO `income` VALUES ('101', '10.00', '0', '0', '浙GZB388', '', '0', '1', '2018-05-14 17:34:40', '2', '0');
INSERT INTO `income` VALUES ('102', '10.00', '9', '0', '沪A00910', '', '0', '1', '2018-05-15 16:39:59', '1', '0');
INSERT INTO `income` VALUES ('103', '10.00', '9', '0', '沪A51V39', '', '0', '1', '2018-05-15 16:40:04', '1', '0');
INSERT INTO `income` VALUES ('104', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-05-15 16:40:10', '1', '0');
INSERT INTO `income` VALUES ('105', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-15 16:40:15', '3', '0');
INSERT INTO `income` VALUES ('106', '10.00', '9', '0', '浙A0881V', '', '0', '1', '2018-05-15 20:26:27', '2', '0');
INSERT INTO `income` VALUES ('107', '10.00', '9', '0', '777', '', '0', '1', '2018-05-21 10:56:58', '1', '0');
INSERT INTO `income` VALUES ('108', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-05-21 11:00:33', '3', '0');
INSERT INTO `income` VALUES ('109', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-21 11:00:37', '3', '0');
INSERT INTO `income` VALUES ('110', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-21 11:34:08', '34', '0');
INSERT INTO `income` VALUES ('111', '10.00', '9', '0', '沪A51V39', '', '0', '1', '2018-05-21 11:34:12', '34', '0');
INSERT INTO `income` VALUES ('112', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-05-21 11:34:16', '34', '0');
INSERT INTO `income` VALUES ('113', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-21 11:34:24', '34', '0');
INSERT INTO `income` VALUES ('114', '270.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-22 14:50:58', '1608', '0');
INSERT INTO `income` VALUES ('115', '10.00', '9', '0', '沪A51V39', '', '0', '1', '2018-05-22 14:54:06', '3', '0');
INSERT INTO `income` VALUES ('116', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-05-22 15:01:42', '5', '0');
INSERT INTO `income` VALUES ('117', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-22 15:01:49', '3', '0');
INSERT INTO `income` VALUES ('118', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-22 15:01:53', '2', '0');
INSERT INTO `income` VALUES ('119', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-22 15:36:14', '35', '0');
INSERT INTO `income` VALUES ('120', '70.00', '9', '0', '555', '', '1', '1', '2018-05-22 17:55:59', '68', '0');
INSERT INTO `income` VALUES ('121', '10.00', '9', '0', '666', '', '0', '1', '2018-05-22 17:56:07', '2', '0');
INSERT INTO `income` VALUES ('122', '10.00', '9', '0', '777', '', '0', '1', '2018-05-22 18:01:10', '1', '0');
INSERT INTO `income` VALUES ('123', '10.00', '9', '0', '999', '', '0', '1', '2018-05-22 18:01:14', '4', '0');
INSERT INTO `income` VALUES ('124', '60.00', '9', '0', '000', '', '1', '1', '2018-05-22 18:01:18', '6', '0');
INSERT INTO `income` VALUES ('125', '10.00', '9', '0', '222', '', '0', '1', '2018-05-22 18:56:26', '55', '0');
INSERT INTO `income` VALUES ('126', '60.00', '9', '0', '555', '', '1', '1', '2018-05-22 18:57:39', '57', '0');
INSERT INTO `income` VALUES ('127', '10.00', '9', '0', '555', '', '0', '1', '2018-05-22 19:00:47', '3', '0');
INSERT INTO `income` VALUES ('128', '60.00', '9', '0', '浙GZB388', '', '1', '1', '2018-05-22 19:04:49', '4', '0');
INSERT INTO `income` VALUES ('129', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-22 19:19:25', '9', '0');
INSERT INTO `income` VALUES ('130', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-22 19:19:29', '9', '0');
INSERT INTO `income` VALUES ('131', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-22 19:46:00', '25', '0');
INSERT INTO `income` VALUES ('132', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-22 19:51:41', '5', '0');
INSERT INTO `income` VALUES ('133', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-22 20:07:30', '16', '0');
INSERT INTO `income` VALUES ('134', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-22 20:12:56', '4', '0');
INSERT INTO `income` VALUES ('135', '60.00', '9', '0', '浙GZB388', '', '1', '1', '2018-05-22 20:15:33', '3', '0');
INSERT INTO `income` VALUES ('136', '10.00', '9', '0', '沪A51V39', '', '0', '1', '2018-05-22 20:15:41', '2', '0');
INSERT INTO `income` VALUES ('137', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-22 20:16:36', '1', '0');
INSERT INTO `income` VALUES ('138', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-22 20:16:41', '1', '0');
INSERT INTO `income` VALUES ('139', '60.00', '9', '0', '沪AP0910', '', '1', '1', '2018-05-22 20:19:14', '3', '0');
INSERT INTO `income` VALUES ('140', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-05-22 20:23:30', '4', '0');
INSERT INTO `income` VALUES ('141', '60.00', '9', '0', '沪A51V39', '', '1', '1', '2018-05-22 20:23:34', '7', '0');
INSERT INTO `income` VALUES ('142', '60.00', '9', '0', '浙GZB388', '', '1', '1', '2018-05-22 20:24:20', '1', '0');
INSERT INTO `income` VALUES ('143', '60.00', '9', '0', '浙GZB388', '', '1', '1', '2018-05-29 18:21:59', '2', '0');
INSERT INTO `income` VALUES ('144', '410.00', '9', '0', '沪AP0910', '', '0', '1', '2018-05-31 11:12:43', '2449', '0');
INSERT INTO `income` VALUES ('145', '290.00', '9', '0', '浙GZB388', '', '0', '1', '2018-06-01 15:51:33', '1719', '0');
INSERT INTO `income` VALUES ('146', '290.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-06-01 16:09:04', '1736', '0');
INSERT INTO `income` VALUES ('147', '10.00', '9', '0', '333', '', '0', '1', '2018-06-01 16:51:22', '1', '0');
INSERT INTO `income` VALUES ('148', '470.00', '9', '0', '川A51V39', '', '0', '1', '2018-06-02 10:13:27', '2820', '0');
INSERT INTO `income` VALUES ('149', '470.00', '9', '0', '沪AP0910', '', '0', '1', '2018-06-02 10:13:37', '2820', '0');
INSERT INTO `income` VALUES ('150', '10.00', '9', '0', '沪AP0910', '', '0', '1', '2018-06-02 10:18:59', '1', '0');
INSERT INTO `income` VALUES ('151', '10.00', '9', '0', '沪A51V39', '', '0', '1', '2018-06-02 10:19:04', '1', '0');
INSERT INTO `income` VALUES ('152', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-06-02 10:19:07', '6', '0');
INSERT INTO `income` VALUES ('153', '5000.00', '2', '1', null, '1358610158820180603', '0', '0', '2018-06-03 10:21:12', '0', '0');
INSERT INTO `income` VALUES ('154', '300.00', '9', '0', '浙GZB388', '', '1', '1', '2018-06-03 10:27:58', '1448', '0');
INSERT INTO `income` VALUES ('155', '60.00', '9', '0', '浙GZB388', '', '0', '1', '2018-06-03 16:06:19', '339', '0');
INSERT INTO `income` VALUES ('156', '220.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-06-04 07:42:07', '1274', '0');
INSERT INTO `income` VALUES ('157', '220.00', '9', '0', '沪A51V39', '', '0', '1', '2018-06-04 07:42:11', '1273', '0');
INSERT INTO `income` VALUES ('158', '220.00', '9', '0', '沪AP0910', '', '0', '1', '2018-06-04 07:42:20', '1273', '0');
INSERT INTO `income` VALUES ('159', '10.00', '9', '0', '888', '', '0', '1', '2018-06-04 07:44:00', '1', '0');
INSERT INTO `income` VALUES ('160', '10.00', '9', '0', '222', '', '0', '1', '2018-06-04 07:44:34', '1', '0');
INSERT INTO `income` VALUES ('161', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-06-04 07:44:56', '3', '0');
INSERT INTO `income` VALUES ('162', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-06-04 07:45:00', '2', '0');
INSERT INTO `income` VALUES ('163', '200.00', '1', '1', null, '1783542937420180422', '0', '0', '2018-06-04 07:45:44', '0', '0');
INSERT INTO `income` VALUES ('164', '500.00', '1', '1', null, '1783542937420180422', '0', '0', '2018-06-04 07:45:59', '0', '0');
INSERT INTO `income` VALUES ('165', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-06-04 07:53:26', '2', '0');
INSERT INTO `income` VALUES ('166', '10.00', '9', '0', '苏A0CP56', '', '0', '1', '2018-06-04 07:53:31', '2', '0');
INSERT INTO `income` VALUES ('167', '60.00', '9', '0', '沪A51V39', '', '1', '1', '2018-06-04 07:54:11', '1', '0');
INSERT INTO `income` VALUES ('168', '10.00', '9', '0', '沪A51V39', '', '0', '1', '2018-06-04 07:54:56', '1', '0');
INSERT INTO `income` VALUES ('169', '60.00', '9', '0', '沪AP0910', '', '1', '1', '2018-06-04 08:00:12', '6', '0');
INSERT INTO `income` VALUES ('170', '60.00', '9', '0', '沪A51V39', '', '0', '1', '2018-06-04 13:58:47', '359', '0');
INSERT INTO `income` VALUES ('171', '10.00', '9', '0', '浙GZB388', '', '0', '1', '2018-06-04 13:59:22', '1', '0');
INSERT INTO `income` VALUES ('172', '70.00', '1', '0', '沪A51V39', '', '1', '1', '2018-06-04 15:21:44', '83', '0');
INSERT INTO `income` VALUES ('173', '60.00', '9', '0', '浙GZB388', '', '1', '1', '2018-06-04 15:25:44', '1', '0');

-- ----------------------------
-- Table structure for `parkinfo`
-- ----------------------------
DROP TABLE IF EXISTS `parkinfo`;
CREATE TABLE `parkinfo` (
  `id` int(11) NOT NULL auto_increment,
  `parknum` int(11) default NULL COMMENT '停车位号，对应parkspace的parkid',
  `cardnum` varchar(50) default NULL COMMENT '卡号',
  `carnum` varchar(50) default NULL COMMENT '车牌号',
  `parkin` datetime default NULL COMMENT '停入时间',
  `parktemp` int(11) default '0' COMMENT '0正常停车，1临时停车',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parkinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `parkinfoall`
-- ----------------------------
DROP TABLE IF EXISTS `parkinfoall`;
CREATE TABLE `parkinfoall` (
  `id` int(11) NOT NULL auto_increment,
  `cardnum` varchar(255) default NULL,
  `parknum` int(11) default NULL,
  `carnum` varchar(255) default NULL,
  `parkin` datetime default NULL,
  `parkout` datetime default NULL,
  `parktemp` int(11) default '0' COMMENT '0正常停车，1临时停车',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parkinfoall
-- ----------------------------
INSERT INTO `parkinfoall` VALUES ('1', '21312', '321', '123', '2018-01-03 15:14:12', '2018-01-01 15:14:15', '0');
INSERT INTO `parkinfoall` VALUES ('3', '1581345771220180221', '1', 'sadsajkhdaskj', '2018-01-01 11:45:04', '2018-01-07 21:42:59', '0');
INSERT INTO `parkinfoall` VALUES ('4', '1314938242720171217', '1', 'qwe5646', '2018-01-14 19:43:19', '2018-01-21 17:48:12', '0');
INSERT INTO `parkinfoall` VALUES ('5', '1314938242720171217', '1', '1212123132', '2018-02-01 19:34:01', '2018-02-01 19:45:52', '0');
INSERT INTO `parkinfoall` VALUES ('6', '1314938242720171217', '1', 'sadasdas', '2018-02-01 20:02:47', '2018-02-01 20:27:41', '0');
INSERT INTO `parkinfoall` VALUES ('7', '1314938242720171217', '1', '1231312', '2018-02-01 20:28:26', '2018-02-01 20:49:11', '0');
INSERT INTO `parkinfoall` VALUES ('8', '1314938242720171217', '1', '213312', '2018-02-01 20:57:35', '2018-02-01 21:10:38', '0');
INSERT INTO `parkinfoall` VALUES ('9', '1234567891020180220', '1', '123123', '2018-02-04 21:16:04', '2018-02-04 21:20:21', '0');
INSERT INTO `parkinfoall` VALUES ('10', '1581345771220180221', '1', '123123321', '2018-02-06 20:53:54', '2018-02-06 20:54:14', '0');
INSERT INTO `parkinfoall` VALUES ('11', '1581345771220180221', '1', '123123312', '2018-02-06 20:54:45', '2018-02-06 20:54:52', '0');
INSERT INTO `parkinfoall` VALUES ('12', '1581345771220180221', '1', '123123213', '2018-02-06 20:55:52', '2018-02-06 20:55:59', '0');
INSERT INTO `parkinfoall` VALUES ('13', '1581345771220180221', '1', '123213321', '2018-02-06 20:57:37', '2018-02-06 20:58:59', '0');
INSERT INTO `parkinfoall` VALUES ('14', '1581345771220180221', '1', '12312', '2018-02-06 21:00:12', '2018-02-06 21:00:19', '0');
INSERT INTO `parkinfoall` VALUES ('15', '1581345771220180221', '1', '12321321321', '2018-02-06 21:01:20', '2018-02-06 21:01:42', '0');
INSERT INTO `parkinfoall` VALUES ('16', '1581345771220180221', '1', '123132321231', '2018-02-06 21:02:07', '2018-02-06 21:02:45', '0');
INSERT INTO `parkinfoall` VALUES ('17', '1581345771220180221', '1', '123123', '2018-02-06 21:03:25', '2018-02-06 21:03:41', '0');
INSERT INTO `parkinfoall` VALUES ('18', '1581345771220180221', '1', '123123312213', '2018-02-06 21:13:19', '2018-02-06 21:13:46', '0');
INSERT INTO `parkinfoall` VALUES ('19', '1581345771220180221', '1', '123123312123', '2018-02-06 21:15:48', '2018-02-06 21:16:08', '0');
INSERT INTO `parkinfoall` VALUES ('20', '1581345771220180221', '1', '213321321', '2018-02-06 21:18:03', '2018-02-06 21:18:16', '0');
INSERT INTO `parkinfoall` VALUES ('21', '1581345771220180221', '1', '123321231213', '2018-02-06 21:24:47', '2018-02-06 21:25:07', '0');
INSERT INTO `parkinfoall` VALUES ('22', '7458214563220180206', '1', '213312132312', '2018-02-11 21:07:45', '2018-02-11 21:08:56', '0');
INSERT INTO `parkinfoall` VALUES ('23', '', '1', '213123123', '2018-02-20 10:22:21', '2018-02-20 10:31:06', '0');
INSERT INTO `parkinfoall` VALUES ('24', '', '1', '123', '2018-04-18 22:14:49', '2018-04-20 16:31:30', '0');
INSERT INTO `parkinfoall` VALUES ('25', '', '1', 'sadsajkhdaskj', '2018-04-20 16:37:49', '2018-04-20 17:22:42', '0');
INSERT INTO `parkinfoall` VALUES ('26', '', '1', '111111', '2018-04-21 22:29:15', '2018-04-21 22:59:12', '0');
INSERT INTO `parkinfoall` VALUES ('27', '', '4', '152', '2018-04-22 15:24:30', '2018-04-22 17:13:41', '0');
INSERT INTO `parkinfoall` VALUES ('28', '', '1', '1111', '2018-04-22 10:15:07', '2018-04-22 17:28:28', '0');
INSERT INTO `parkinfoall` VALUES ('94', '1783542937420180422', '2', '沪K62933', '2018-05-09 20:21:35', '2018-05-09 20:21:41', '0');
INSERT INTO `parkinfoall` VALUES ('95', '1314938242720171217', '4', '沪A51V39', '2018-05-09 20:22:32', '2018-05-09 20:22:36', '0');
INSERT INTO `parkinfoall` VALUES ('96', '1783542937420180422', '1', '苏A0CP56', '2018-05-09 20:25:39', '2018-05-09 20:25:46', '0');
INSERT INTO `parkinfoall` VALUES ('97', '1783542937420180422', '1', '沪AP0910', '2018-05-09 20:26:55', '2018-05-09 20:27:10', '0');
INSERT INTO `parkinfoall` VALUES ('98', '1783542937420180422', '1', '沪A51V39', '2018-05-09 20:27:36', '2018-05-09 20:27:53', '0');
INSERT INTO `parkinfoall` VALUES ('99', '1783542937420180422', '2', '沪A51V39', '2018-05-09 20:25:51', '2018-05-09 20:27:57', '0');
INSERT INTO `parkinfoall` VALUES ('100', '1783542937420180422', '3', '沪AP0910', '2018-05-09 20:27:17', '2018-05-09 20:28:00', '0');
INSERT INTO `parkinfoall` VALUES ('101', '1783542937420180422', '4', '沪K62933', '2018-05-09 20:27:24', '2018-05-09 20:28:03', '0');
INSERT INTO `parkinfoall` VALUES ('102', '1783542937420180422', '5', '浙GZB388', '2018-05-09 20:27:30', '2018-05-09 20:28:05', '0');
INSERT INTO `parkinfoall` VALUES ('103', '1783542937420180422', '1', '沪A51V39', '2018-05-09 20:28:13', '2018-05-09 20:32:10', '0');
INSERT INTO `parkinfoall` VALUES ('104', '1783542937420180422', '2', '黑A1R272', '2018-05-09 20:28:19', '2018-05-09 20:32:13', '0');
INSERT INTO `parkinfoall` VALUES ('105', '1783542937420180422', '3', '沪AP0910', '2018-05-09 20:28:24', '2018-05-09 20:32:15', '0');
INSERT INTO `parkinfoall` VALUES ('106', '1783542937420180422', '4', '浙GZB388', '2018-05-09 20:28:28', '2018-05-09 20:32:18', '0');
INSERT INTO `parkinfoall` VALUES ('107', '1783542937420180422', '5', '沪K62933', '2018-05-09 20:28:34', '2018-05-09 20:32:20', '0');
INSERT INTO `parkinfoall` VALUES ('108', '1783542937420180422', '6', '川A0CP56', '2018-05-09 20:28:40', '2018-05-09 20:32:23', '0');
INSERT INTO `parkinfoall` VALUES ('109', '1783542937420180422', '3', '浙GZB388', '2018-05-09 20:40:36', '2018-05-09 20:48:24', '0');
INSERT INTO `parkinfoall` VALUES ('110', '1783542937420180422', '1', '黑A1R272', '2018-05-09 20:33:26', '2018-05-09 21:34:21', '0');
INSERT INTO `parkinfoall` VALUES ('111', '1783542937420180422', '2', '沪AP0910', '2018-05-09 20:33:40', '2018-05-09 21:34:24', '0');
INSERT INTO `parkinfoall` VALUES ('112', null, '1', '浙GZB388', '2018-05-09 21:34:40', '2018-05-09 21:34:50', '0');
INSERT INTO `parkinfoall` VALUES ('113', '', '1', '浙GZB388', '2018-05-09 21:36:17', '2018-05-09 21:36:25', '0');
INSERT INTO `parkinfoall` VALUES ('114', '1581345771220180221', '5', '黑A1R272', '2018-05-09 21:37:15', '2018-05-09 21:37:59', '0');
INSERT INTO `parkinfoall` VALUES ('115', '', '5', '沪AP0910', '2018-05-09 21:38:05', '2018-05-09 21:38:16', '0');
INSERT INTO `parkinfoall` VALUES ('116', '1314938242720171217', '4', '沪A51V39', '2018-05-09 21:37:10', '2018-05-09 21:39:28', '0');
INSERT INTO `parkinfoall` VALUES ('117', '', '3', '苏A0CP56', '2018-05-09 21:37:06', '2018-05-09 21:39:33', '0');
INSERT INTO `parkinfoall` VALUES ('118', '1783542937420180422', '2', '沪K62933', '2018-05-09 21:37:00', '2018-05-09 21:39:37', '0');
INSERT INTO `parkinfoall` VALUES ('119', '', '1', '浙GZB388', '2018-05-09 21:36:54', '2018-05-09 21:39:41', '0');
INSERT INTO `parkinfoall` VALUES ('120', '1581345771220180221', '1', '黑A1R272', '2018-05-09 21:39:49', '2018-05-09 21:39:57', '0');
INSERT INTO `parkinfoall` VALUES ('121', '1581345771220180221', '1', '黑A1R272', '2018-05-09 21:40:24', '2018-05-09 21:41:15', '0');
INSERT INTO `parkinfoall` VALUES ('122', '', '2', '沪AP0910', '2018-05-09 21:40:30', '2018-05-09 21:41:19', '0');
INSERT INTO `parkinfoall` VALUES ('123', '', '3', '沪A51V39', '2018-05-09 21:40:34', '2018-05-09 21:41:27', '0');
INSERT INTO `parkinfoall` VALUES ('124', '', '4', '浙GZB388', '2018-05-09 21:40:38', '2018-05-09 21:41:31', '0');
INSERT INTO `parkinfoall` VALUES ('125', '1783542937420180422', '5', '沪K62933', '2018-05-09 21:40:45', '2018-05-09 21:41:35', '0');
INSERT INTO `parkinfoall` VALUES ('126', '', '6', '苏A0CP56', '2018-05-09 21:40:50', '2018-05-09 21:41:39', '0');
INSERT INTO `parkinfoall` VALUES ('127', '', '1', '浙GZB388', '2018-05-12 15:08:08', '2018-05-14 17:31:48', '0');
INSERT INTO `parkinfoall` VALUES ('128', '1581345771220180221', '2', '黑A1R272', '2018-05-14 17:34:16', '2018-05-14 17:34:30', '0');
INSERT INTO `parkinfoall` VALUES ('129', '', '1', '浙GZB388', '2018-05-14 17:33:10', '2018-05-14 17:34:40', '0');
INSERT INTO `parkinfoall` VALUES ('130', '', '4', '沪A00910', '2018-05-15 16:39:41', '2018-05-15 16:39:59', '0');
INSERT INTO `parkinfoall` VALUES ('131', '', '3', '沪A51V39', '2018-05-15 16:39:35', '2018-05-15 16:40:04', '0');
INSERT INTO `parkinfoall` VALUES ('132', '', '2', '苏A0CP56', '2018-05-15 16:39:27', '2018-05-15 16:40:10', '0');
INSERT INTO `parkinfoall` VALUES ('133', '', '1', '浙GZB388', '2018-05-15 16:38:02', '2018-05-15 16:40:15', '0');
INSERT INTO `parkinfoall` VALUES ('134', '', '1', '浙A0881V', '2018-05-15 20:24:42', '2018-05-15 20:26:27', '0');
INSERT INTO `parkinfoall` VALUES ('135', '', '1', '777', '2018-05-21 10:56:35', '2018-05-21 10:56:58', '0');
INSERT INTO `parkinfoall` VALUES ('136', '1783542937420180422', '1', '沪K62933', '2018-05-21 10:57:22', '2018-05-21 10:57:49', '0');
INSERT INTO `parkinfoall` VALUES ('137', '1581345771220180221', '4', '黑A1R272', '2018-05-21 10:59:49', '2018-05-21 11:00:28', '0');
INSERT INTO `parkinfoall` VALUES ('138', '', '3', '苏A0CP56', '2018-05-21 10:58:32', '2018-05-21 11:00:33', '0');
INSERT INTO `parkinfoall` VALUES ('139', '', '2', '浙GZB388', '2018-05-21 10:58:26', '2018-05-21 11:00:37', '0');
INSERT INTO `parkinfoall` VALUES ('140', '1783542937420180422', '1', '沪K62933', '2018-05-21 10:58:22', '2018-05-21 11:00:40', '0');
INSERT INTO `parkinfoall` VALUES ('141', '1581345771220180221', '1', '黑A1R272', '2018-05-21 11:00:55', '2018-05-21 11:34:04', '0');
INSERT INTO `parkinfoall` VALUES ('142', '', '2', '沪AP0910', '2018-05-21 11:00:59', '2018-05-21 11:34:08', '0');
INSERT INTO `parkinfoall` VALUES ('143', '', '3', '沪A51V39', '2018-05-21 11:01:04', '2018-05-21 11:34:12', '0');
INSERT INTO `parkinfoall` VALUES ('144', '', '4', '苏A0CP56', '2018-05-21 11:01:10', '2018-05-21 11:34:16', '0');
INSERT INTO `parkinfoall` VALUES ('145', '1783542937420180422', '5', '沪K62933', '2018-05-21 11:01:17', '2018-05-21 11:34:18', '0');
INSERT INTO `parkinfoall` VALUES ('146', '', '6', '浙GZB388', '2018-05-21 11:01:22', '2018-05-21 11:34:24', '0');
INSERT INTO `parkinfoall` VALUES ('147', '1581345771220180221', '1', '黑A1R272', '2018-05-21 11:34:37', '2018-05-22 14:50:37', '0');
INSERT INTO `parkinfoall` VALUES ('148', '1783542937420180422', '2', '沪K62933', '2018-05-21 12:03:16', '2018-05-22 14:50:40', '0');
INSERT INTO `parkinfoall` VALUES ('149', '', '3', '沪AP0910', '2018-05-21 12:03:26', '2018-05-22 14:50:58', '0');
INSERT INTO `parkinfoall` VALUES ('150', '', '2', '沪A51V39', '2018-05-22 14:51:39', '2018-05-22 14:54:06', '0');
INSERT INTO `parkinfoall` VALUES ('151', '1783542937420180422', '1', '沪K62933', '2018-05-22 14:51:16', '2018-05-22 14:54:09', '0');
INSERT INTO `parkinfoall` VALUES ('152', '', '1', '苏A0CP56', '2018-05-22 14:57:10', '2018-05-22 15:01:42', '0');
INSERT INTO `parkinfoall` VALUES ('153', '1581345771220180221', '2', '黑A1R272', '2018-05-22 14:57:25', '2018-05-22 15:01:45', '0');
INSERT INTO `parkinfoall` VALUES ('154', '', '3', '浙GZB388', '2018-05-22 14:59:42', '2018-05-22 15:01:49', '0');
INSERT INTO `parkinfoall` VALUES ('155', '', '4', '沪AP0910', '2018-05-22 14:59:58', '2018-05-22 15:01:53', '0');
INSERT INTO `parkinfoall` VALUES ('156', '1581345771220180221', '2', '黑A1R272', '2018-05-22 15:02:31', '2018-05-22 15:36:10', '0');
INSERT INTO `parkinfoall` VALUES ('157', '', '1', '沪AP0910', '2018-05-22 15:02:02', '2018-05-22 15:36:14', '0');
INSERT INTO `parkinfoall` VALUES ('158', '1581345771220180221', '1', '黑A1R272', '2018-05-22 15:36:24', '2018-05-22 16:34:40', '0');
INSERT INTO `parkinfoall` VALUES ('159', '', '2', '555', '2018-05-22 16:48:05', '2018-05-22 17:55:59', '0');
INSERT INTO `parkinfoall` VALUES ('160', '1581345771220180221', '1', '黑A1R272', '2018-05-22 16:35:00', '2018-05-22 17:56:02', '0');
INSERT INTO `parkinfoall` VALUES ('161', '', '3', '666', '2018-05-22 17:54:47', '2018-05-22 17:56:07', '0');
INSERT INTO `parkinfoall` VALUES ('162', '', '3', '777', '2018-05-22 18:00:33', '2018-05-22 18:01:10', '0');
INSERT INTO `parkinfoall` VALUES ('163', '', '2', '999', '2018-05-22 17:58:11', '2018-05-22 18:01:14', '0');
INSERT INTO `parkinfoall` VALUES ('164', '', '1', '000', '2018-05-22 17:56:13', '2018-05-22 18:01:18', '0');
INSERT INTO `parkinfoall` VALUES ('165', '', '2', '222', '2018-05-22 18:01:37', '2018-05-22 18:56:26', '0');
INSERT INTO `parkinfoall` VALUES ('166', '', '1', '555', '2018-05-22 18:01:25', '2018-05-22 18:57:39', '0');
INSERT INTO `parkinfoall` VALUES ('167', '1581345771220180221', '2', '黑A1R272', '2018-05-22 18:58:04', '2018-05-22 19:00:43', '0');
INSERT INTO `parkinfoall` VALUES ('168', '', '1', '555', '2018-05-22 18:57:48', '2018-05-22 19:00:47', '0');
INSERT INTO `parkinfoall` VALUES ('169', '1581345771220180221', '1', '黑A1R272', '2018-05-22 19:00:55', '2018-05-22 19:04:43', '0');
INSERT INTO `parkinfoall` VALUES ('170', '', '2', '浙GZB388', '2018-05-22 19:01:02', '2018-05-22 19:04:49', '0');
INSERT INTO `parkinfoall` VALUES ('171', '1581345771220180221', '1', '黑A1R272', '2018-05-22 19:05:03', '2018-05-22 19:07:09', '0');
INSERT INTO `parkinfoall` VALUES ('172', '1581345771220180221', '1', '黑A1R272', '2018-05-22 19:07:23', '2018-05-22 19:10:08', '0');
INSERT INTO `parkinfoall` VALUES ('173', '1783542937420180422', '2', '沪K62933', '2018-05-22 19:07:30', '2018-05-22 19:10:11', '0');
INSERT INTO `parkinfoall` VALUES ('174', '1581345771220180221', '1', '黑A1R272', '2018-05-22 19:10:26', '2018-05-22 19:19:21', '0');
INSERT INTO `parkinfoall` VALUES ('175', '', '2', '浙GZB388', '2018-05-22 19:10:31', '2018-05-22 19:19:25', '0');
INSERT INTO `parkinfoall` VALUES ('176', '', '3', '沪AP0910', '2018-05-22 19:11:08', '2018-05-22 19:19:29', '0');
INSERT INTO `parkinfoall` VALUES ('177', '1581345771220180221', '1', '黑A1R272', '2018-05-22 19:20:57', '2018-05-22 19:45:56', '0');
INSERT INTO `parkinfoall` VALUES ('178', '', '2', '沪AP0910', '2018-05-22 19:21:03', '2018-05-22 19:46:00', '0');
INSERT INTO `parkinfoall` VALUES ('179', '', '2', '沪AP0910', '2018-05-22 19:47:10', '2018-05-22 19:51:41', '0');
INSERT INTO `parkinfoall` VALUES ('180', '1873542927420180509', '1', '黑A1R272', '2018-05-22 19:47:05', '2018-05-22 19:51:44', '0');
INSERT INTO `parkinfoall` VALUES ('181', '1873542927420180509', '1', '黑A1R272', '2018-05-22 19:51:56', '2018-05-22 20:07:26', '0');
INSERT INTO `parkinfoall` VALUES ('182', '', '2', '浙GZB388', '2018-05-22 19:52:11', '2018-05-22 20:07:30', '0');
INSERT INTO `parkinfoall` VALUES ('183', '1873542927420180509', '1', '黑A1R272', '2018-05-22 20:09:37', '2018-05-22 20:12:52', '0');
INSERT INTO `parkinfoall` VALUES ('184', '', '2', '浙GZB388', '2018-05-22 20:09:43', '2018-05-22 20:12:56', '0');
INSERT INTO `parkinfoall` VALUES ('185', '', '2', '浙GZB388', '2018-05-22 20:13:15', '2018-05-22 20:15:33', '0');
INSERT INTO `parkinfoall` VALUES ('186', '1873542927420180509', '1', '黑A1R272', '2018-05-22 20:13:04', '2018-05-22 20:15:36', '0');
INSERT INTO `parkinfoall` VALUES ('187', '', '3', '沪A51V39', '2018-05-22 20:14:13', '2018-05-22 20:15:41', '0');
INSERT INTO `parkinfoall` VALUES ('188', '', '3', '沪AP0910', '2018-05-22 20:15:57', '2018-05-22 20:16:36', '0');
INSERT INTO `parkinfoall` VALUES ('189', '', '2', '浙GZB388', '2018-05-22 20:15:52', '2018-05-22 20:16:41', '0');
INSERT INTO `parkinfoall` VALUES ('190', '', '2', '沪AP0910', '2018-05-22 20:16:57', '2018-05-22 20:19:14', '0');
INSERT INTO `parkinfoall` VALUES ('191', '1873542927420180509', '1', '黑A1R272', '2018-05-22 20:15:47', '2018-05-22 20:19:17', '0');
INSERT INTO `parkinfoall` VALUES ('192', '', '1', '浙GZB388', '2018-05-22 20:19:34', '2018-05-22 20:23:30', '0');
INSERT INTO `parkinfoall` VALUES ('193', '', '3', '沪A51V39', '2018-05-22 20:17:08', '2018-05-22 20:23:34', '0');
INSERT INTO `parkinfoall` VALUES ('194', '1873542927420180509', '1', '黑A1R272', '2018-05-22 20:23:46', '2018-05-22 20:24:16', '0');
INSERT INTO `parkinfoall` VALUES ('195', '', '2', '浙GZB388', '2018-05-22 20:23:53', '2018-05-22 20:24:20', '0');
INSERT INTO `parkinfoall` VALUES ('196', '1783542937420180422', '3', '沪K62933', '2018-05-22 20:23:58', '2018-05-22 20:24:22', '0');
INSERT INTO `parkinfoall` VALUES ('197', '1873542927420180509', '2', '黑A1R272', '2018-05-29 18:21:02', '2018-05-29 18:21:53', '0');
INSERT INTO `parkinfoall` VALUES ('198', '', '1', '浙GZB388', '2018-05-29 18:20:39', '2018-05-29 18:21:59', '0');
INSERT INTO `parkinfoall` VALUES ('199', '1873542927420180509', '1', '黑A1R272', '2018-05-29 18:22:13', '2018-05-29 18:22:50', '0');
INSERT INTO `parkinfoall` VALUES ('200', '', '1', '沪AP0910', '2018-05-29 18:24:18', '2018-05-31 11:12:43', '0');
INSERT INTO `parkinfoall` VALUES ('201', '', '1', '浙GZB388', '2018-05-31 11:13:17', '2018-06-01 15:51:33', '0');
INSERT INTO `parkinfoall` VALUES ('202', '', '2', '苏A0CP56', '2018-05-31 11:13:22', '2018-06-01 16:09:04', '0');
INSERT INTO `parkinfoall` VALUES ('203', '1783542937420180422', '3', '沪K62933', '2018-05-31 11:13:28', '2018-06-01 16:34:43', '0');
INSERT INTO `parkinfoall` VALUES ('204', '1873542927420180509', '5', '黑A1R272', '2018-05-31 11:13:41', '2018-06-01 16:35:25', '0');
INSERT INTO `parkinfoall` VALUES ('205', '', '3', '333', '2018-06-01 16:50:56', '2018-06-01 16:51:22', '0');
INSERT INTO `parkinfoall` VALUES ('206', '', '4', '川A51V39', '2018-05-31 11:13:34', '2018-06-02 10:13:27', '0');
INSERT INTO `parkinfoall` VALUES ('207', '', '6', '沪AP0910', '2018-05-31 11:13:48', '2018-06-02 10:13:37', '0');
INSERT INTO `parkinfoall` VALUES ('208', '', '3', '沪AP0910', '2018-06-02 10:18:43', '2018-06-02 10:18:59', '0');
INSERT INTO `parkinfoall` VALUES ('209', '', '2', '沪A51V39', '2018-06-02 10:18:26', '2018-06-02 10:19:04', '0');
INSERT INTO `parkinfoall` VALUES ('210', '', '1', '苏A0CP56', '2018-06-02 10:13:51', '2018-06-02 10:19:07', '0');
INSERT INTO `parkinfoall` VALUES ('211', '1873542927420180509', '1', '黑A1R272', '2018-06-02 10:19:43', '2018-06-02 10:22:19', '0');
INSERT INTO `parkinfoall` VALUES ('212', '1783542937420180422', '3', '沪K62933', '2018-06-02 10:21:07', '2018-06-03 10:27:52', '0');
INSERT INTO `parkinfoall` VALUES ('213', '', '2', '浙GZB388', '2018-06-02 10:20:58', '2018-06-03 10:27:58', '0');
INSERT INTO `parkinfoall` VALUES ('214', '', '1', '浙GZB388', '2018-06-03 10:28:13', '2018-06-03 16:06:19', '0');
INSERT INTO `parkinfoall` VALUES ('215', '1783542937420180422', '2', '沪K62933', '2018-06-03 10:28:18', '2018-06-03 16:06:24', '0');
INSERT INTO `parkinfoall` VALUES ('216', '1873542927420180509', '2', '黑A1R272', '2018-06-03 20:40:37', '2018-06-03 20:40:56', '0');
INSERT INTO `parkinfoall` VALUES ('217', '1873542927420180509', '1', '黑A1R272', '2018-06-03 16:08:45', '2018-06-04 07:41:59', '0');
INSERT INTO `parkinfoall` VALUES ('218', '', '3', '苏A0CP56', '2018-06-03 10:28:24', '2018-06-04 07:42:07', '0');
INSERT INTO `parkinfoall` VALUES ('219', '', '4', '沪A51V39', '2018-06-03 10:29:40', '2018-06-04 07:42:11', '0');
INSERT INTO `parkinfoall` VALUES ('220', '1873542927420180509', '5', '黑A1R272', '2018-06-03 10:29:46', '2018-06-04 07:42:14', '0');
INSERT INTO `parkinfoall` VALUES ('221', '', '6', '沪AP0910', '2018-06-03 10:29:54', '2018-06-04 07:42:20', '0');
INSERT INTO `parkinfoall` VALUES ('222', '', '4', '888', '2018-06-04 07:43:25', '2018-06-04 07:44:00', '0');
INSERT INTO `parkinfoall` VALUES ('223', '', '4', '222', '2018-06-04 07:44:14', '2018-06-04 07:44:34', '0');
INSERT INTO `parkinfoall` VALUES ('224', '1783542937420180422', '2', '沪K62933', '2018-06-04 07:42:56', '2018-06-04 07:44:52', '0');
INSERT INTO `parkinfoall` VALUES ('225', '', '1', '浙GZB388', '2018-06-04 07:42:50', '2018-06-04 07:44:56', '0');
INSERT INTO `parkinfoall` VALUES ('226', '', '3', '苏A0CP56', '2018-06-04 07:43:02', '2018-06-04 07:45:00', '0');
INSERT INTO `parkinfoall` VALUES ('227', '1783542937420180422', '2', '沪K62933', '2018-06-04 07:52:14', '2018-06-04 07:53:22', '0');
INSERT INTO `parkinfoall` VALUES ('228', '', '1', '浙GZB388', '2018-06-04 07:52:09', '2018-06-04 07:53:26', '0');
INSERT INTO `parkinfoall` VALUES ('229', '', '3', '苏A0CP56', '2018-06-04 07:52:20', '2018-06-04 07:53:31', '0');
INSERT INTO `parkinfoall` VALUES ('230', '', '1', '沪A51V39', '2018-06-04 07:53:36', '2018-06-04 07:54:11', '0');
INSERT INTO `parkinfoall` VALUES ('231', '1873542927420180509', '2', '黑A1R272', '2018-06-04 07:53:43', '2018-06-04 07:54:18', '0');
INSERT INTO `parkinfoall` VALUES ('232', '', '3', '沪A51V39', '2018-06-04 07:54:36', '2018-06-04 07:54:56', '0');
INSERT INTO `parkinfoall` VALUES ('233', '', '1', '沪AP0910', '2018-06-04 07:54:24', '2018-06-04 08:00:12', '0');
INSERT INTO `parkinfoall` VALUES ('234', '', '1', '沪A51V39', '2018-06-04 08:00:18', '2018-06-04 13:58:47', '0');
INSERT INTO `parkinfoall` VALUES ('235', '1873542927420180509', '2', '黑A1R272', '2018-06-04 07:54:30', '2018-06-04 13:58:50', '0');
INSERT INTO `parkinfoall` VALUES ('236', '', '1', '浙GZB388', '2018-06-04 13:59:14', '2018-06-04 13:59:22', '0');
INSERT INTO `parkinfoall` VALUES ('237', '', '1', '沪A51V39', '2018-06-04 13:59:26', '2018-06-04 15:21:44', '0');
INSERT INTO `parkinfoall` VALUES ('238', '1873542927420180509', '2', '黑A1R272', '2018-06-04 13:59:39', '2018-06-04 15:22:11', '0');
INSERT INTO `parkinfoall` VALUES ('239', '', '2', '浙GZB388', '2018-06-04 15:25:04', '2018-06-04 15:25:44', '0');
INSERT INTO `parkinfoall` VALUES ('240', '1873542927420180509', '1', '黑A1R272', '2018-06-04 15:24:33', '2018-06-04 15:25:50', '0');

-- ----------------------------
-- Table structure for `parkspace`
-- ----------------------------
DROP TABLE IF EXISTS `parkspace`;
CREATE TABLE `parkspace` (
  `id` int(11) NOT NULL auto_increment COMMENT '停车位表',
  `parkid` int(11) default NULL COMMENT '车位号',
  `status` int(11) default '0' COMMENT '是否停车',
  `tag` int(11) default '1' COMMENT '停车类型，1：正常，2：临时，3紧急',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parkspace
-- ----------------------------
INSERT INTO `parkspace` VALUES ('1', '1', '0', '1');
INSERT INTO `parkspace` VALUES ('2', '2', '0', '1');
INSERT INTO `parkspace` VALUES ('3', '3', '0', '1');
INSERT INTO `parkspace` VALUES ('4', '4', '0', '1');
INSERT INTO `parkspace` VALUES ('5', '5', '0', '1');
INSERT INTO `parkspace` VALUES ('6', '6', '0', '1');
INSERT INTO `parkspace` VALUES ('7', '7', '0', '1');
INSERT INTO `parkspace` VALUES ('8', '8', '0', '1');
INSERT INTO `parkspace` VALUES ('9', '9', '0', '1');
INSERT INTO `parkspace` VALUES ('10', '10', '0', '1');
INSERT INTO `parkspace` VALUES ('11', '11', '0', '1');
INSERT INTO `parkspace` VALUES ('12', '12', '0', '1');
INSERT INTO `parkspace` VALUES ('13', '13', '0', '1');
INSERT INTO `parkspace` VALUES ('14', '14', '0', '1');
INSERT INTO `parkspace` VALUES ('15', '15', '0', '1');
INSERT INTO `parkspace` VALUES ('16', '16', '0', '1');
INSERT INTO `parkspace` VALUES ('17', '17', '0', '1');
INSERT INTO `parkspace` VALUES ('18', '18', '0', '1');
INSERT INTO `parkspace` VALUES ('19', '19', '0', '1');
INSERT INTO `parkspace` VALUES ('20', '20', '0', '1');
INSERT INTO `parkspace` VALUES ('21', '21', '0', '1');
INSERT INTO `parkspace` VALUES ('22', '22', '0', '1');
INSERT INTO `parkspace` VALUES ('23', '23', '0', '1');
INSERT INTO `parkspace` VALUES ('24', '24', '0', '1');
INSERT INTO `parkspace` VALUES ('25', '25', '0', '1');
INSERT INTO `parkspace` VALUES ('26', '26', '0', '1');
INSERT INTO `parkspace` VALUES ('27', '27', '0', '1');
INSERT INTO `parkspace` VALUES ('28', '28', '0', '1');
INSERT INTO `parkspace` VALUES ('29', '29', '0', '1');
INSERT INTO `parkspace` VALUES ('30', '30', '0', '1');
INSERT INTO `parkspace` VALUES ('31', '31', '0', '1');
INSERT INTO `parkspace` VALUES ('32', '32', '0', '1');
INSERT INTO `parkspace` VALUES ('33', '33', '0', '1');
INSERT INTO `parkspace` VALUES ('34', '34', '0', '1');
INSERT INTO `parkspace` VALUES ('35', '35', '0', '1');
INSERT INTO `parkspace` VALUES ('36', '36', '0', '1');
INSERT INTO `parkspace` VALUES ('37', '37', '0', '1');
INSERT INTO `parkspace` VALUES ('38', '38', '0', '1');
INSERT INTO `parkspace` VALUES ('39', '39', '0', '1');
INSERT INTO `parkspace` VALUES ('40', '40', '0', '1');
INSERT INTO `parkspace` VALUES ('41', '41', '0', '1');
INSERT INTO `parkspace` VALUES ('42', '42', '0', '1');
INSERT INTO `parkspace` VALUES ('43', '43', '0', '1');
INSERT INTO `parkspace` VALUES ('44', '44', '0', '1');
INSERT INTO `parkspace` VALUES ('45', '45', '0', '1');
INSERT INTO `parkspace` VALUES ('46', '46', '0', '1');
INSERT INTO `parkspace` VALUES ('47', '47', '0', '1');
INSERT INTO `parkspace` VALUES ('48', '48', '0', '1');
INSERT INTO `parkspace` VALUES ('49', '49', '0', '1');
INSERT INTO `parkspace` VALUES ('50', '50', '0', '1');
INSERT INTO `parkspace` VALUES ('51', '51', '0', '1');
INSERT INTO `parkspace` VALUES ('52', '52', '0', '1');
INSERT INTO `parkspace` VALUES ('53', '53', '0', '1');
INSERT INTO `parkspace` VALUES ('54', '54', '0', '1');
INSERT INTO `parkspace` VALUES ('55', '55', '0', '1');
INSERT INTO `parkspace` VALUES ('56', '56', '0', '1');
INSERT INTO `parkspace` VALUES ('57', '57', '0', '1');
INSERT INTO `parkspace` VALUES ('58', '58', '0', '1');
INSERT INTO `parkspace` VALUES ('59', '59', '0', '1');
INSERT INTO `parkspace` VALUES ('60', '60', '0', '1');
INSERT INTO `parkspace` VALUES ('61', '61', '0', '1');
INSERT INTO `parkspace` VALUES ('62', '62', '0', '1');
INSERT INTO `parkspace` VALUES ('63', '63', '0', '1');
INSERT INTO `parkspace` VALUES ('64', '64', '0', '1');
INSERT INTO `parkspace` VALUES ('65', '65', '0', '1');
INSERT INTO `parkspace` VALUES ('66', '66', '0', '1');
INSERT INTO `parkspace` VALUES ('67', '67', '0', '1');
INSERT INTO `parkspace` VALUES ('68', '68', '0', '1');
INSERT INTO `parkspace` VALUES ('69', '69', '0', '1');
INSERT INTO `parkspace` VALUES ('70', '70', '0', '2');
INSERT INTO `parkspace` VALUES ('71', '71', '0', '2');
INSERT INTO `parkspace` VALUES ('72', '72', '0', '2');
INSERT INTO `parkspace` VALUES ('73', '73', '0', '2');
INSERT INTO `parkspace` VALUES ('74', '74', '0', '2');
INSERT INTO `parkspace` VALUES ('75', '75', '0', '2');
INSERT INTO `parkspace` VALUES ('76', '76', '0', '2');
INSERT INTO `parkspace` VALUES ('77', '77', '0', '2');
INSERT INTO `parkspace` VALUES ('78', '78', '0', '2');
INSERT INTO `parkspace` VALUES ('79', '79', '0', '2');
INSERT INTO `parkspace` VALUES ('80', '80', '0', '2');
INSERT INTO `parkspace` VALUES ('81', '81', '0', '2');
INSERT INTO `parkspace` VALUES ('82', '82', '0', '2');
INSERT INTO `parkspace` VALUES ('83', '83', '0', '2');
INSERT INTO `parkspace` VALUES ('84', '84', '0', '2');
INSERT INTO `parkspace` VALUES ('85', '85', '0', '2');
INSERT INTO `parkspace` VALUES ('86', '86', '0', '2');
INSERT INTO `parkspace` VALUES ('87', '87', '0', '2');
INSERT INTO `parkspace` VALUES ('88', '88', '0', '2');
INSERT INTO `parkspace` VALUES ('89', '89', '0', '2');
INSERT INTO `parkspace` VALUES ('90', '90', '0', '2');
INSERT INTO `parkspace` VALUES ('91', '91', '0', '3');
INSERT INTO `parkspace` VALUES ('92', '92', '0', '3');
INSERT INTO `parkspace` VALUES ('93', '93', '0', '3');
INSERT INTO `parkspace` VALUES ('94', '94', '0', '3');
INSERT INTO `parkspace` VALUES ('95', '95', '0', '3');
INSERT INTO `parkspace` VALUES ('96', '96', '0', '3');
INSERT INTO `parkspace` VALUES ('97', '97', '0', '3');
INSERT INTO `parkspace` VALUES ('98', '98', '0', '3');
INSERT INTO `parkspace` VALUES ('99', '99', '0', '3');
INSERT INTO `parkspace` VALUES ('100', '100', '0', '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment COMMENT '人员信息表',
  `username` varchar(50) default NULL COMMENT '用户名',
  `name` varchar(50) default NULL COMMENT '姓名',
  `password` varchar(50) default NULL COMMENT '密码',
  `sex` varchar(10) default '男' COMMENT '性别',
  `tel` varchar(50) default '' COMMENT '联系电话',
  `role` int(11) default '3' COMMENT '权限/职位（1超级管理员，2管理员，3用户）',
  `cardid` int(11) default '0' COMMENT '停车场卡（停车用户才有的）',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', '123456', '豪哥', '123456', '男', '123456', '2', '0');
INSERT INTO `user` VALUES ('1', 'zhangsan', '张三', 'abcisme123', '男', '13149382427', '1', '0');
INSERT INTO `user` VALUES ('2', 'lisi', '李四', 'abcisme123', '男', '13149382427', '2', '0');
INSERT INTO `user` VALUES ('3', 'yexiaoqing', '叶骁庆', '12345', '男', '12345678901', '1', '0');
INSERT INTO `user` VALUES ('10', '13149382427', '赵柳', '13149382427', '男', '13149382427', '3', '8');
INSERT INTO `user` VALUES ('27', '17835429374', '刘琪', '17835429374', '男', '17835429374', '3', '12');
INSERT INTO `user` VALUES ('28', '18735429274', '尹响', '18735429274', '男', '18735429274', '3', '13');
INSERT INTO `user` VALUES ('29', '13586101588', '豪豪', '13586101588', '男', '13586101588', '3', '14');
INSERT INTO `user` VALUES ('30', '15988981932', '小涛', '15988981932', '男', '15988981932', '3', '15');
INSERT INTO `user` VALUES ('32', '17843569899', '小黑', '17843569899', '男', '17843569899', '3', '17');
INSERT INTO `user` VALUES ('33', '17835429877', '小杜', '17835429877', '男', '17835429877', '3', '18');
INSERT INTO `user` VALUES ('34', '13586101588', '大黑', '13586101588', '男', '13586101588', '3', '19');
INSERT INTO `user` VALUES ('35', '1783542937488', '1783542937488', '12345', '男', '178546954', '3', '0');
