/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : sandbox

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-10-31 18:29:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for interface
-- ----------------------------
DROP TABLE IF EXISTS `interface`;
CREATE TABLE `interface` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `interface_url` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `project_id` bigint(20) NOT NULL,
  `interface_cate_id` bigint(20) NOT NULL,
  `can_invoke_productenv` tinyint(1) DEFAULT '1' COMMENT '0 可以 1 不可以',
  `params` text COMMENT '接口参数',
  `return_params` text COMMENT '返回接口参数',
  `header_params` varchar(1000) DEFAULT NULL COMMENT '请求头参数',
  `http_method` tinyint(1) DEFAULT '0' COMMENT '请求方式 1 支持GET 2 支持POST 3 支持POST和GET ',
  PRIMARY KEY (`id`),
  KEY `idx_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface
-- ----------------------------
INSERT INTO `interface` VALUES ('1', '购物车列表', '/cart/list', '2016-04-09 16:44:25', '0', '1', '2', '1', 'ut=aca68ece064ded4a0192e581bff6bb3d35&sessionId=1509082025531574&platformId=3&areaCode=310101&receiverId=&v=1.2', null, null, '0');
INSERT INTO `interface` VALUES ('2', '选择购物车商品', '/cart/editItemCheck', '2017-10-27 15:31:16', '0', '1', '2', '11', 'ut=aca68ece064ded4a0192e581bff6bb3d35&sessionId=1509082025531574&checkStr=1004016601000902-0-0-0', null, null, '0');
INSERT INTO `interface` VALUES ('3', 'sfafas', '/interface', '2017-10-30 18:02:47', '0', '1', '1', '1', 'sfdsa=2323&dsf=244654', null, null, '1');
INSERT INTO `interface` VALUES ('4', '/cart/editItemNum', '/cart/editItemNum', '2017-10-30 18:11:57', '0', '1', '1', '1', 'ut=&sessionId=150892388825411&mpId=1004016601011641&num=3', null, null, '1');
INSERT INTO `interface` VALUES ('5', '/dolphin/list', '/dolphin/list', '2017-10-31 11:29:01', '0', '1', '1', '1', 'platform=2&pageCode=H5_CATEGORY_PAGE&adCode=img_sort_spread,title_hot_product,hot_product,title_common_product,common_product&companyId=&areaCode=310101', null, null, '0');

-- ----------------------------
-- Table structure for interface_cate
-- ----------------------------
DROP TABLE IF EXISTS `interface_cate`;
CREATE TABLE `interface_cate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_cate
-- ----------------------------
INSERT INTO `interface_cate` VALUES ('1', '1', '订单', '2016-05-19 16:54:15', '0');
INSERT INTO `interface_cate` VALUES ('2', '1', '购物车', '2016-05-31 15:39:51', '0');
INSERT INTO `interface_cate` VALUES ('3', '2', '订单', '2016-05-19 16:54:15', '0');
INSERT INTO `interface_cate` VALUES ('4', '2', '商品', '2016-05-19 16:54:15', '0');

-- ----------------------------
-- Table structure for param_list
-- ----------------------------
DROP TABLE IF EXISTS `param_list`;
CREATE TABLE `param_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `column_name` varchar(255) NOT NULL COMMENT '参数字段名',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT '是否删除 0 否 1 是',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project_id` bigint(20) NOT NULL COMMENT '项目id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of param_list
-- ----------------------------
INSERT INTO `param_list` VALUES ('1', 'TEST_CLOUMN', '0', '2016-08-04 00:00:00', '3');
INSERT INTO `param_list` VALUES ('2', '3333', '0', '2016-08-05 10:36:49', '3');
INSERT INTO `param_list` VALUES ('3', 'name', '0', '2016-08-05 10:45:04', '3');
INSERT INTO `param_list` VALUES ('4', 'mobile', '0', '2016-08-05 17:22:47', '2');
INSERT INTO `param_list` VALUES ('5', 'password', '0', '2016-08-05 17:22:47', '2');
INSERT INTO `param_list` VALUES ('6', 'confirmPassword', '0', '2016-08-05 17:22:47', '2');
INSERT INTO `param_list` VALUES ('7', 'captchas', '0', '2016-08-05 17:22:47', '2');
INSERT INTO `param_list` VALUES ('8', 'userPlatformId', '0', '2016-08-05 17:22:47', '2');
INSERT INTO `param_list` VALUES ('9', 'ut', '0', '2016-08-08 13:05:00', '2');
INSERT INTO `param_list` VALUES ('10', '12321', '0', '2016-08-08 16:06:57', '2');
INSERT INTO `param_list` VALUES ('11', 'userName', '0', '2016-08-17 19:43:19', '2');
INSERT INTO `param_list` VALUES ('12', 'companyId', '0', '2016-08-17 19:57:02', '2');
INSERT INTO `param_list` VALUES ('13', 'phone', '0', '2016-08-17 20:48:31', '3');
INSERT INTO `param_list` VALUES ('14', 'password', '0', '2016-08-17 20:48:32', '3');
INSERT INTO `param_list` VALUES ('15', 'auditStatus', '0', '2016-08-23 15:31:16', '2');
INSERT INTO `param_list` VALUES ('16', 'searchBarKeyword', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('17', 'categoryId', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('18', 'merchantProductName', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('19', 'cityName', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('20', 'material', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('21', 'specification', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('22', 'manufacturer', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('23', 'supplierName', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('24', 'sortFactor', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('25', 'pageno', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('26', 'pagesize', '0', '2016-08-23 16:46:57', '2');
INSERT INTO `param_list` VALUES ('27', 'id', '0', '2016-08-23 16:49:55', '2');
INSERT INTO `param_list` VALUES ('28', 'keyword', '0', '2016-08-23 17:00:32', '2');
INSERT INTO `param_list` VALUES ('29', 'type', '0', '2016-08-23 17:05:46', '2');
INSERT INTO `param_list` VALUES ('30', 'unitName', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('31', 'taxpayerIdentificationCode', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('32', 'bankDeposit', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('33', 'bankAccount', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('34', 'goodReceiverName', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('35', 'goodReceiverMobile', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('36', 'registerAddress', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('37', 'registerPhone', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('38', 'goodReceiverAddress', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('39', 'registrationCertificatePath', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('40', 'generalTaxpayerCertificatePath', '0', '2016-08-23 17:32:14', '2');
INSERT INTO `param_list` VALUES ('41', 'increaseTicketAuthorizePath', '0', '2016-08-23 17:40:11', '2');
INSERT INTO `param_list` VALUES ('42', 'goodReceiverProvinceId', '0', '2016-08-23 17:40:11', '2');
INSERT INTO `param_list` VALUES ('43', 'goodReceiverProvince', '0', '2016-08-23 17:40:11', '2');
INSERT INTO `param_list` VALUES ('44', 'goodReceiverCityId', '0', '2016-08-23 17:45:49', '2');
INSERT INTO `param_list` VALUES ('45', 'goodReceiverCity', '0', '2016-08-23 17:45:49', '2');
INSERT INTO `param_list` VALUES ('46', 'goodReceiverAreaId', '0', '2016-08-23 17:45:49', '2');
INSERT INTO `param_list` VALUES ('47', 'goodReceiverArea', '0', '2016-08-23 17:45:49', '2');
INSERT INTO `param_list` VALUES ('48', 'taxpayerIdentificaionCode', '0', '2016-08-23 18:23:20', '2');
INSERT INTO `param_list` VALUES ('49', 'mpId', '0', '2016-08-24 10:58:33', '2');
INSERT INTO `param_list` VALUES ('50', 'num', '0', '2016-08-24 10:58:33', '2');
INSERT INTO `param_list` VALUES ('51', 'deviceId', '0', '2016-08-24 10:58:33', '2');
INSERT INTO `param_list` VALUES ('52', 'mpIds', '0', '2016-08-24 11:03:54', '2');
INSERT INTO `param_list` VALUES ('53', 'msgType', '0', '2016-08-24 13:52:58', '2');
INSERT INTO `param_list` VALUES ('54', 'parentCode', '0', '2016-08-24 13:56:14', '2');
INSERT INTO `param_list` VALUES ('55', 'HttpServletRequest', '0', '2016-08-24 13:59:12', '2');
INSERT INTO `param_list` VALUES ('56', 'content', '0', '2016-08-24 14:01:06', '2');
INSERT INTO `param_list` VALUES ('57', 'code', '0', '2016-08-24 14:04:10', '2');
INSERT INTO `param_list` VALUES ('58', 'nikName', '0', '2016-08-24 14:19:49', '2');
INSERT INTO `param_list` VALUES ('59', 'headPicUrl', '0', '2016-08-24 14:19:49', '2');
INSERT INTO `param_list` VALUES ('60', 'qq', '0', '2016-08-24 14:19:49', '2');
INSERT INTO `param_list` VALUES ('61', 'sex', '0', '2016-08-24 14:19:49', '2');
INSERT INTO `param_list` VALUES ('62', 'auctionStatus', '0', '2016-08-24 14:38:12', '2');
INSERT INTO `param_list` VALUES ('63', 'auctionId', '0', '2016-08-24 14:45:26', '2');
INSERT INTO `param_list` VALUES ('64', 'orderCode', '0', '2016-08-24 14:45:26', '2');
INSERT INTO `param_list` VALUES ('65', 'defaultIs', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('66', 'provinceCode', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('67', 'provinceName', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('68', 'cityId', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('69', 'regionId', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('70', 'regionName', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('71', 'exactAddress', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('72', 'detailAddress', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('73', 'longitude', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('74', 'latitude', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('75', 'identityCardNumber', '0', '2016-08-24 14:46:29', '2');
INSERT INTO `param_list` VALUES ('76', 'name', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('77', 'describe', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('78', 'startTime', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('79', 'endTime', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('80', 'imageUri', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('81', 'deliveryTime', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('82', 'warehouseName', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('83', 'warehouseAddr', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('84', 'warehouseOwner', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('85', 'warehousePhoneNo', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('86', 'warehouseId', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('87', 'minUnit', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('88', 'count', '0', '2016-08-24 15:00:00', '2');
INSERT INTO `param_list` VALUES ('89', 'orderAmount', '0', '2016-08-24 15:17:00', '2');
INSERT INTO `param_list` VALUES ('90', 'photoPath', '0', '2016-08-24 15:17:00', '2');
INSERT INTO `param_list` VALUES ('91', 'cancelReason', '0', '2016-08-24 15:18:27', '2');
INSERT INTO `param_list` VALUES ('92', 'goodReceiverId', '0', '2016-08-24 15:31:11', '2');
INSERT INTO `param_list` VALUES ('93', 'userInvoiceId', '0', '2016-08-24 15:31:11', '2');
INSERT INTO `param_list` VALUES ('94', 'orderPromotionType', '0', '2016-08-24 15:31:11', '2');
INSERT INTO `param_list` VALUES ('95', 'orderChannel', '0', '2016-08-24 15:31:11', '2');
INSERT INTO `param_list` VALUES ('96', 'orderItemString', '0', '2016-08-24 15:31:11', '2');
INSERT INTO `param_list` VALUES ('97', 'needDeliver', '0', '2016-08-24 15:39:37', '2');
INSERT INTO `param_list` VALUES ('98', 'orderWebStatus', '0', '2016-08-24 16:04:14', '2');
INSERT INTO `param_list` VALUES ('99', 'description', '0', '2016-08-24 16:18:57', '2');
INSERT INTO `param_list` VALUES ('100', 'photoUrl', '0', '2016-08-24 16:18:57', '2');
INSERT INTO `param_list` VALUES ('101', 'minUint', '0', '2016-08-24 16:18:57', '2');
INSERT INTO `param_list` VALUES ('102', 'mpName', '0', '2016-08-24 16:38:55', '2');
INSERT INTO `param_list` VALUES ('103', 'standard', '0', '2016-08-24 16:38:55', '2');
INSERT INTO `param_list` VALUES ('104', 'texture', '0', '2016-08-24 16:38:55', '2');
INSERT INTO `param_list` VALUES ('105', 'bId', '0', '2016-08-24 16:38:55', '2');
INSERT INTO `param_list` VALUES ('106', 'grouponId', '0', '2016-08-24 16:43:55', '2');
INSERT INTO `param_list` VALUES ('107', 'grouponPrice', '0', '2016-08-24 16:43:55', '2');
INSERT INTO `param_list` VALUES ('108', 'packageNo', '0', '2016-08-24 16:43:55', '2');
INSERT INTO `param_list` VALUES ('109', 'originalPrice', '0', '2016-08-24 16:43:55', '2');
INSERT INTO `param_list` VALUES ('110', 'productCode', '0', '2016-08-24 16:43:55', '2');
INSERT INTO `param_list` VALUES ('111', 'productName', '0', '2016-08-24 16:43:55', '2');
INSERT INTO `param_list` VALUES ('112', 'weight', '0', '2016-08-24 16:43:55', '2');
INSERT INTO `param_list` VALUES ('113', 'state', '0', '2016-08-24 16:50:20', '2');
INSERT INTO `param_list` VALUES ('114', 'grouponType', '0', '2016-08-24 16:50:20', '2');
INSERT INTO `param_list` VALUES ('115', 'grouponStatus', '0', '2016-08-24 16:50:20', '2');
INSERT INTO `param_list` VALUES ('116', 'userId', '0', '2016-08-24 16:51:32', '2');
INSERT INTO `param_list` VALUES ('117', '•	orderPromotionType', '0', '2016-08-24 16:51:32', '2');
INSERT INTO `param_list` VALUES ('118', 'orderItems', '0', '2016-08-24 16:51:32', '2');
INSERT INTO `param_list` VALUES ('119', 'password1', '0', '2016-08-24 17:08:20', '2');
INSERT INTO `param_list` VALUES ('120', 'password2', '0', '2016-08-24 17:08:20', '2');
INSERT INTO `param_list` VALUES ('121', 'status', '0', '2016-08-24 17:10:27', '2');
INSERT INTO `param_list` VALUES ('122', 'grouponName', '0', '2016-08-24 17:10:27', '2');
INSERT INTO `param_list` VALUES ('123', 'ids', '0', '2016-08-24 17:13:17', '2');
INSERT INTO `param_list` VALUES ('124', '附加说明', '0', '2016-08-24 17:14:44', '2');
INSERT INTO `param_list` VALUES ('125', 'width', '0', '2016-08-24 17:17:17', '2');
INSERT INTO `param_list` VALUES ('126', 'height', '0', '2016-08-24 17:17:17', '2');
INSERT INTO `param_list` VALUES ('127', 'codeCount', '0', '2016-08-24 17:17:17', '2');
INSERT INTO `param_list` VALUES ('128', 'checkImageCode', '0', '2016-08-24 17:20:17', '2');
INSERT INTO `param_list` VALUES ('129', 'imgeKey', '0', '2016-08-24 17:20:17', '2');
INSERT INTO `param_list` VALUES ('130', 'merchantName', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('131', 'provinceId', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('132', 'telephone', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('133', 'fax', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('134', 'contact', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('135', 'contactMobile', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('136', 'contactQq', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('137', 'businessScope', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('138', 'businessLicenseUrl', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('139', 'taxCertificateUrl', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('140', 'organizationCodeUrl', '0', '2016-08-25 10:35:04', '2');
INSERT INTO `param_list` VALUES ('141', 'adType', '0', '2016-08-25 13:57:06', '2');
INSERT INTO `param_list` VALUES ('142', 'id', '0', '2016-08-26 14:15:09', '4');
INSERT INTO `param_list` VALUES ('143', 'ssfrom', '0', '2016-09-29 17:21:57', '2');
INSERT INTO `param_list` VALUES ('144', 'id', '0', '2016-10-21 16:56:07', '7');
INSERT INTO `param_list` VALUES ('145', 'name', '0', '2016-10-21 16:56:07', '7');
INSERT INTO `param_list` VALUES ('146', 'adminName', '0', '2016-10-21 16:56:07', '7');
INSERT INTO `param_list` VALUES ('147', 'creatorName', '0', '2016-10-21 16:56:07', '7');
INSERT INTO `param_list` VALUES ('148', 'status', '0', '2016-10-21 16:56:07', '7');
INSERT INTO `param_list` VALUES ('149', 'createTimeFrom', '0', '2016-10-21 16:56:07', '7');
INSERT INTO `param_list` VALUES ('150', 'createTimeTo', '0', '2016-10-21 16:56:07', '7');
INSERT INTO `param_list` VALUES ('151', 'idList', '0', '2016-10-21 17:05:48', '7');
INSERT INTO `param_list` VALUES ('152', 'closeReason', '0', '2016-10-21 17:05:48', '7');
INSERT INTO `param_list` VALUES ('153', 'chatroomId', '0', '2016-10-24 11:14:14', '7');
INSERT INTO `param_list` VALUES ('154', 'coverUrl', '0', '2016-10-24 11:27:50', '7');
INSERT INTO `param_list` VALUES ('155', 'description', '0', '2016-10-24 11:27:50', '7');
INSERT INTO `param_list` VALUES ('156', 'labels', '0', '2016-10-24 11:27:50', '7');
INSERT INTO `param_list` VALUES ('157', 'retainHours', '0', '2016-10-24 11:27:50', '7');
INSERT INTO `param_list` VALUES ('158', 'maxSpecialGuests', '0', '2016-10-24 11:27:50', '7');
INSERT INTO `param_list` VALUES ('159', 'maxUsers', '0', '2016-10-24 11:27:50', '7');
INSERT INTO `param_list` VALUES ('160', 'adminUserId', '0', '2016-10-24 13:23:44', '7');
INSERT INTO `param_list` VALUES ('161', 'notice', '0', '2016-10-24 13:26:58', '7');
INSERT INTO `param_list` VALUES ('162', 'users', '0', '2016-10-24 13:51:02', '7');
INSERT INTO `param_list` VALUES ('163', 'joinApplication', '0', '2016-10-24 19:06:59', '7');
INSERT INTO `param_list` VALUES ('164', 'lastMessageId', '0', '2016-11-03 18:01:24', '7');
INSERT INTO `param_list` VALUES ('165', 'pageSize', '0', '2016-11-03 18:01:24', '7');
INSERT INTO `param_list` VALUES ('166', 'ignoreUuids', '0', '2016-11-03 18:01:24', '7');
INSERT INTO `param_list` VALUES ('167', 'lastLoginTime', '0', '2016-11-03 19:34:35', '7');
INSERT INTO `param_list` VALUES ('168', 'fileName', '0', '2016-11-07 19:28:11', '7');
INSERT INTO `param_list` VALUES ('169', 'fileUrl', '0', '2016-11-07 19:28:11', '7');
INSERT INTO `param_list` VALUES ('170', 'fileSize', '0', '2016-11-07 19:28:11', '7');
INSERT INTO `param_list` VALUES ('171', 'pageNo', '0', '2016-11-08 17:27:06', '7');
INSERT INTO `param_list` VALUES ('172', 'userId', '0', '2016-11-10 10:42:36', '7');
INSERT INTO `param_list` VALUES ('173', 'pass', '0', '2016-11-10 10:42:36', '7');
INSERT INTO `param_list` VALUES ('174', 'silentHours', '0', '2016-11-10 11:03:09', '7');
INSERT INTO `param_list` VALUES ('175', 'requestType', '0', '2016-11-11 04:43:15', '7');
INSERT INTO `param_list` VALUES ('176', 'userType', '0', '2016-11-11 04:43:15', '7');
INSERT INTO `param_list` VALUES ('177', 'userName', '0', '2016-11-11 04:43:15', '7');
INSERT INTO `param_list` VALUES ('178', 'userMobile', '0', '2016-11-11 04:43:15', '7');
INSERT INTO `param_list` VALUES ('179', 'uIdentityCardName', '0', '2016-11-11 04:43:15', '7');
INSERT INTO `param_list` VALUES ('180', 'createTimeBegin', '0', '2016-11-11 04:43:15', '7');
INSERT INTO `param_list` VALUES ('181', 'createTimeEnd', '0', '2016-11-11 04:43:15', '7');
INSERT INTO `param_list` VALUES ('182', 'isBlack', '0', '2016-11-11 16:09:03', '7');
INSERT INTO `param_list` VALUES ('183', '二进制', '0', '2016-11-14 14:08:11', '7');
INSERT INTO `param_list` VALUES ('184', 'parentId', '0', '2016-11-15 15:28:24', '7');
INSERT INTO `param_list` VALUES ('185', 'data', '0', '2017-01-05 15:47:28', '9');
INSERT INTO `param_list` VALUES ('186', 'postUserId', '0', '2017-01-05 17:10:34', '9');
INSERT INTO `param_list` VALUES ('187', 'remark', '0', '2017-01-05 17:10:34', '9');
INSERT INTO `param_list` VALUES ('188', 'packageVOs', '0', '2017-01-05 17:10:34', '9');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '欧电云', '2016-04-09 13:28:44', '0');
INSERT INTO `project` VALUES ('2', '来伊份', '2017-10-30 14:16:54', '0');

-- ----------------------------
-- Table structure for project_env
-- ----------------------------
DROP TABLE IF EXISTS `project_env`;
CREATE TABLE `project_env` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `env_name` varchar(30) NOT NULL,
  `api_domain` varchar(100) NOT NULL,
  `api_ip` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `project_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_env
-- ----------------------------
INSERT INTO `project_env` VALUES ('1', '开发环境', 'http://m.lyf.dev.laiyifen.com/api', '', '2016-04-11 16:57:12', '0', '1');
INSERT INTO `project_env` VALUES ('2', '测试环境', 'http://m.lyf.uat.laiyifen.com/api/', '', '2017-10-27 15:19:59', '0', '1');
INSERT INTO `project_env` VALUES ('3', '开发环境', 'http://m.lyf.dev.laiyifen.com/api', '', '2016-04-11 16:57:12', '0', '2');
SET FOREIGN_KEY_CHECKS=1;
