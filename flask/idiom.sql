/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : idiom

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-11-13 15:30:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pictureUrl` varchar(255) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  `candidates` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_exam_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('1', 'http://www.hydcd.com/cy/fkccy/images/CF91254-53.png', '鱼目混珠', '珠,眼,目,电,孩,混,双,黑,跤,猪,鱼,摔,睛,童,痛,胖,矮,瞳', null);
INSERT INTO `exam` VALUES ('2', 'http://www.hydcd.com/cy/fkccy/images/CF91255.png', '水滴石穿', '下,透,滴,卵,雨,渴,不,鹅,彻,人,口,心,水,湿,穿,缺,石,施', null);
INSERT INTO `exam` VALUES ('3', 'http://www.hydcd.com/cy/fkccy/images/CF91255-50.png', '胆大包天', '日,玉,口,夫,国,包,禾,月,心,但,大,天,一,旦,小,扣,目,胆', null);
INSERT INTO `exam` VALUES ('4', 'http://www.hydcd.com/cy/fkccy/images/CF91256.png', '破口大骂', '骂,日,蚂,大,破,舔,吕,才,足,亩,口,妈,玛,乳,马,干,码,交', null);
INSERT INTO `exam` VALUES ('5', 'http://www.hydcd.com/cy/fkccy/images/CF91259-51.png', '对牛弹琴', '茧,弦,放,瑟,听,丝,弹,归,马,午,对,牛,骑,断,朱,琴,和,调', null);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sesion` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_member_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('5', 'oVAL60CQxQ1sxIE-r4AT21p-3_eg', '冯春龙', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKGibzXbuZbwxEcKQBbOEVQGHmsC1HsLRc1Qk5jLSQf2ichmQr1kshDtFOnzgb3cvNjUpK7HX2OX5cw/132', '5', '2018-11-12 15:42:25');
INSERT INTO `member` VALUES ('6', 'sdfasdfasdfasdffffffffadsaaaaaad', 'Andy', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKGibzXbuZbwxEcKQBbOEVQGHmsC1HsLRc1Qk5jLSQf2ichmQr1kshDtFOnzgb3cvNjUpK7HX2OX5cw/132', '2', '2018-11-12 15:50:48');
INSERT INTO `member` VALUES ('7', 'oVAL60CQxQ1sxIE-r4AT21p-3_eg', '李四', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKGibzXbuZbwxEcKQBbOEVQGHmsC1HsLRc1Qk5jLSQf2ichmQr1kshDtFOnzgb3cvNjUpK7HX2OX5cw/132', '3', '2018-11-12 15:42:25');
INSERT INTO `member` VALUES ('8', 'sdfasdfasdfasdffffffffadsaaaaaad', '张三', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKGibzXbuZbwxEcKQBbOEVQGHmsC1HsLRc1Qk5jLSQf2ichmQr1kshDtFOnzgb3cvNjUpK7HX2OX5cw/132', '4', '2018-11-12 15:50:48');
