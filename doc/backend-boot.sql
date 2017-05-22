/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : platform_cloud

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 05/22/2017 16:10:55 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `category_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目编号',
  `title` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '标题',
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COLLATE utf8_bin COMMENT '视图配置',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章表';

-- ----------------------------
--  Records of `cms_article`
-- ----------------------------
BEGIN;
INSERT INTO `cms_article` VALUES ('1', '3', '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('10', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('11', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('12', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('13', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('14', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('15', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('16', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('17', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('18', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('19', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('2', '3', '文章标题标题标题标题', null, 'red', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('20', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('21', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('22', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('23', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('24', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('25', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('26', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('27', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('28', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('29', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('3', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('30', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('31', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('32', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('33', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('34', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('35', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('36', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('37', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('38', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('39', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('4', '3', '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('40', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('41', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('42', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('43', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('44', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('45', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('46', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('47', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('48', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('49', '16', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('5', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('50', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('51', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('52', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('53', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('6', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('7', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('8', '4', '文章标题标题标题标题', null, 'blue', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('9', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `cms_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_data`;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `content` text COLLATE utf8_bin COMMENT '文章内容',
  `copyfrom` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章详表';

-- ----------------------------
--  Records of `cms_article_data`
-- ----------------------------
BEGIN;
INSERT INTO `cms_article_data` VALUES ('1', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('10', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('11', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('12', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('13', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('14', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('15', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('16', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('17', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('18', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('19', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('2', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('20', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('21', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('22', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('23', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('24', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('25', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('26', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('27', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('28', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('29', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('3', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('30', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('31', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('32', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('33', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('34', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('35', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('36', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('37', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('38', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('39', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('4', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('40', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('41', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('42', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('43', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('44', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('45', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('46', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('47', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('48', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('49', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('5', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('50', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('51', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('52', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('53', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('6', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('7', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('8', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('9', '文章内容内容内容内容', '来源', '1,2,3', '1');
COMMIT;

-- ----------------------------
--  Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) COLLATE utf8_bin DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '栏目名称',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `target` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '目标',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COLLATE utf8_bin COMMENT '视图配置',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='栏目表';

-- ----------------------------
--  Records of `cms_category`
-- ----------------------------
BEGIN;
INSERT INTO `cms_category` VALUES ('1', '0', '0,', '0', '1', null, '顶级栏目', null, null, null, null, null, '0', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('10', '1', '0,1,', '1', '4', 'article', '软件介绍', null, null, null, null, null, '20', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('11', '10', '0,1,10,', '1', '4', 'article', '网络工具', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('12', '10', '0,1,10,', '1', '4', 'article', '浏览工具', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('13', '10', '0,1,10,', '1', '4', 'article', '浏览辅助', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('14', '10', '0,1,10,', '1', '4', 'article', '网络优化', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('15', '10', '0,1,10,', '1', '4', 'article', '邮件处理', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('16', '10', '0,1,10,', '1', '4', 'article', '下载工具', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('17', '10', '0,1,10,', '1', '4', 'article', '搜索工具', null, null, null, null, null, '50', '1', '1', '2', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('18', '1', '0,1,', '1', '5', 'link', '友情链接', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('19', '18', '0,1,18,', '1', '5', 'link', '常用网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('2', '1', '0,1,', '1', '3', 'article', '组织机构', null, null, null, null, null, '10', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('20', '18', '0,1,18,', '1', '5', 'link', '门户网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('21', '18', '0,1,18,', '1', '5', 'link', '购物网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('22', '18', '0,1,18,', '1', '5', 'link', '交友社区', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('23', '18', '0,1,18,', '1', '5', 'link', '音乐视频', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('24', '1', '0,1,', '1', '6', null, '百度一下', null, 'http://www.baidu.com', '_blank', null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('25', '1', '0,1,', '1', '6', null, '全文检索', null, '/search', null, null, null, '90', '0', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('26', '1', '0,1,', '2', '6', 'article', '测试栏目', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('27', '1', '0,1,', '1', '6', null, '公共留言', null, '/guestbook', null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('3', '2', '0,1,2,', '1', '3', 'article', '网站简介', null, null, null, null, null, '30', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('4', '2', '0,1,2,', '1', '3', 'article', '内部机构', null, null, null, null, null, '40', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('5', '2', '0,1,2,', '1', '3', 'article', '地方机构', null, null, null, null, null, '50', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('6', '1', '0,1,', '1', '3', 'article', '质量检验', null, null, null, null, null, '20', '1', '1', '1', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('7', '6', '0,1,6,', '1', '3', 'article', '产品质量', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('8', '6', '0,1,6,', '1', '3', 'article', '技术质量', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('9', '6', '0,1,6,', '1', '3', 'article', '工程质量', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `category_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='评论表';

-- ----------------------------
--  Table structure for `cms_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) COLLATE utf8_bin NOT NULL COMMENT '留言分类',
  `content` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '留言内容',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `email` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '邮箱',
  `phone` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '电话',
  `workunit` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单位',
  `ip` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='留言板';

-- ----------------------------
--  Table structure for `cms_link`
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `category_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目编号',
  `title` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '链接名称',
  `color` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='友情链接';

-- ----------------------------
--  Records of `cms_link`
-- ----------------------------
BEGIN;
INSERT INTO `cms_link` VALUES ('1', '19', 'JeeSite', null, null, 'http://thinkgem.github.com/jeesite', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('10', '22', '58同城', null, null, 'http://www.58.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('11', '23', '视频大全', null, null, 'http://v.360.cn/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('12', '23', '凤凰网', null, null, 'http://www.ifeng.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('2', '19', 'ThinkGem', null, null, 'http://thinkgem.iteye.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('3', '19', '百度一下', null, null, 'http://www.baidu.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('4', '19', '谷歌搜索', null, null, 'http://www.google.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('5', '20', '新浪网', null, null, 'http://www.sina.com.cn', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('6', '20', '腾讯网', null, null, 'http://www.qq.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('7', '21', '淘宝网', null, null, 'http://www.taobao.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('8', '21', '新华网', null, null, 'http://www.xinhuanet.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('9', '22', '赶集网', null, null, 'http://www.ganji.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `cms_site`
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '站点名称',
  `title` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '站点标题',
  `logo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) COLLATE utf8_bin DEFAULT 'default' COMMENT '主题',
  `copyright` text COLLATE utf8_bin COMMENT '版权信息',
  `custom_index_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='站点表';

-- ----------------------------
--  Records of `cms_site`
-- ----------------------------
BEGIN;
INSERT INTO `cms_site` VALUES ('1', '默认站点', 'JeeSite Web', null, null, 'JeeSite', 'JeeSite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('2', '子站点测试', 'JeeSite Subsite', null, null, 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `gen_scheme`
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='生成方案';

-- ----------------------------
--  Records of `gen_scheme`
-- ----------------------------
BEGIN;
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b', '树结构', 'treeTable', 'com.thinkgem.jeesite.modules', 'test', null, '树结构生成', '树结构', 'ThinkGem', 'f6e4dafaa72f4c509636484715f33a96', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0'), ('9c9de9db6da743bb899036c6546061ac', '单表', 'curd', 'com.thinkgem.jeesite.modules', 'test', null, '单表生成', '单表', 'ThinkGem', 'aef6f1fc948f4c9ab1c1b780bc471cc2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0'), ('e6d905fd236b46d1af581dd32bdfb3b0', '主子表', 'curd_many', 'com.thinkgem.jeesite.modules', 'test', null, '主子表生成', '主子表', 'ThinkGem', '43d6d5acffa14c258340ce6765e46c6f', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务表';

-- ----------------------------
--  Records of `gen_table`
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES ('a5fb679bf6f14e2f9efb16ace00f34e8', 'test_data', '业务数据表', 'TestData', null, null, null, null, null, null, null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务表字段';

-- ----------------------------
--  Records of `gen_table_column`
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` VALUES ('03cd18c635df476983a2c565e023dec9', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', null, null, '1', '1', '1', null, '=', 'input', '', null, '130', null, null, null, null, null, '0'), ('07af7d55039a4533811765fa4372336e', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', null, '1', '1', '1', '1', null, '=', 'input', '', null, '120', null, null, null, null, null, '0'), ('10e1c0861046478bb0dfbf61d53e7107', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'id', '编号', 'varchar(64)', 'String', 'id', '1', null, '1', null, null, null, '=', 'input', '', null, '10', null, null, null, null, null, '0'), ('164982d32d4847dbbaab14a1b2eac68e', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'in_date', '加入日期', 'date', 'java.util.Date', 'inDate', null, '1', '1', '1', '1', null, '=', 'dateselect', '', null, '70', null, null, null, null, null, '0'), ('2768080d9e4242a0b71d57bbf7367e63', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', null, null, '1', null, '1', null, '=', 'input', '', null, '80', null, null, null, null, null, '0'), ('2fe13b6c4407432dbf3f14db7036079c', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', null, null, '1', '1', '1', null, '=', 'dateselect', '', null, '110', null, null, null, null, null, '0'), ('38abd202a7794973918435dacd80554d', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', null, null, '1', '1', '1', null, '=', 'dateselect', '', null, '90', null, null, null, null, null, '0'), ('4e2a507ca5fd4d5696979a14bb34a2f2', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'office_id', '归属部门', 'varchar(64)', 'String', 'officeId', null, '1', '1', '1', '1', null, '=', 'input', '', null, '30', null, null, null, null, null, '0'), ('777f1939d4e240ffadc668ced0d1e0cd', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'user_id', '归属用户', 'varchar(64)', 'String', 'userId', null, '1', '1', '1', '1', null, '=', 'input', '', null, '20', null, null, null, null, null, '0'), ('94d217d0b6db49edbe30b0e9b44580ad', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'name', '名称', 'varchar(100)', 'String', 'name', null, '1', '1', '1', '1', '1', 'like', 'input', '', null, '50', null, null, null, null, null, '0'), ('bcf4c1fa24024d75bb4f222e3ee5a715', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'sex', '性别', 'char(1)', 'String', 'sex', null, '1', '1', '1', '1', null, '=', 'input', '', null, '60', null, null, null, null, null, '0'), ('c6394271a92f45069260d89660b8e7cb', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', null, null, '1', null, null, null, '=', 'input', '', null, '100', null, null, null, null, null, '0'), ('c7d817a6aa48411eb810cc330ebff0d3', 'a5fb679bf6f14e2f9efb16ace00f34e8', 'area_id', '归属区域', 'varchar(64)', 'String', 'areaId', null, '1', '1', '1', '1', null, '=', 'input', '', null, '40', null, null, null, null, null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `gen_template`
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生成文件名',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='代码模板表';

-- ----------------------------
--  Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='区域表';

-- ----------------------------
--  Records of `sys_area`
-- ----------------------------
BEGIN;
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', '10', '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('2', '1', '0,1,', '山东省', '20', '110000', '2', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('3', '2', '0,1,2,', '济南市', '30', '110101', '3', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('4', '3', '0,1,2,3,', '历城区', '40', '110102', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('5', '3', '0,1,2,3,', '历下区', '50', '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('6', '3', '0,1,2,3,', '高新区', '60', '110105', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `value` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '数据值',
  `label` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '标签名',
  `type` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `description` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) COLLATE utf8_bin DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';

-- ----------------------------
--  Records of `sys_dict`
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('10', 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型\0\0', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型\0\0', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型\0\0', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型\0\0', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型\0\0', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('11', 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('15', 'united', '红色主题', 'theme', '主题方案', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('16', 'flat', 'Flat主题', 'theme', '主题方案', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('17', '1', '国家', 'sys_area_type', '区域类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('19', '3', '地市', 'sys_area_type', '区域类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('20', '4', '区县', 'sys_area_type', '区域类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('21', '1', '公司', 'sys_office_type', '机构类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('22', '2', '部门', 'sys_office_type', '机构类型', '70', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('23', '3', '小组', 'sys_office_type', '机构类型', '80', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('24', '4', '其它', 'sys_office_type', '机构类型', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('26299646004d426e8e38d03e1f3d9831', '1', '删除', 'user_delFlag', '用户状态', '20', '0', '1', '2017-05-22 13:43:31', '1', '2017-05-22 13:43:43', null, '0'), ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('28', '1', '一级', 'sys_office_grade', '机构等级', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('29', '2', '二级', 'sys_office_grade', '机构等级', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('30', '3', '三级', 'sys_office_grade', '机构等级', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('31', '4', '四级', 'sys_office_grade', '机构等级', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('32', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('39', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('40', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('41', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('42', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('425a702dc868442ab58210b3537eca40', '3', '锁定', 'user_delFlag', '用户状态', '40', '0', '1', '2017-05-14 16:03:48', '1', '2017-05-22 13:44:21', null, '0'), ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('44', 'red', '红色主题', 'cms_theme', '站点主题', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('45', 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('46', 'picture', '图片模型', 'cms_module', '栏目模型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('47', 'download', '下载模型', 'cms_module', '栏目模型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('48', 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('48f6b244e738475b89b73738454c374f', '0', '正常', 'user_delFlag', '用户状态', '10', '0', '1', '2017-05-14 15:57:01', '1', '2017-05-22 13:43:03', null, '0'), ('49', 'special', '专题模型', 'cms_module', '栏目模型', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('53', '0', '发布', 'cms_del_flag', '内容状态', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('54', '1', '删除', 'cms_del_flag', '内容状态', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('55', '2', '审核', 'cms_del_flag', '内容状态', '15', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('56', '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('58', '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('59', '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('60', '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('61', '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0'), ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0'), ('7', 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('75', 'tree', '树结构', 'gen_category', '代码生成分类', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('76', '=', '=', 'gen_query_type', '查询方式', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('8', 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('80', 'between', 'Between', 'gen_query_type', '查询方式', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('81', 'like', 'Like', 'gen_query_type', '查询方式', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('9', 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('90', 'userselect', '人员选择\0', 'gen_show_type', '字段生成方案', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0\0\0', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('96', '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0'), ('97', '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0'), ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型\0\0', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('99', 'Double', 'Double', 'gen_java_type', 'Java类型\0\0', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1'), ('c8422f3fa8b24229891927f7ea7ede6f', '2', '审核', 'user_delFlag', '用户状态', '30', '0', '1', '2017-05-14 16:03:05', '1', '2017-05-22 13:43:56', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '操作方式',
  `params` text COLLATE utf8_bin COMMENT '操作提交的数据',
  `exception` text COLLATE utf8_bin COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志表';

-- ----------------------------
--  Records of `sys_log`
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES ('06b1cde9bcdb4a338375ac847a6fa456', '1', '功能菜单-系统设置-日志查询-编辑', '1', '2017-05-22 16:10:39', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/a/sys/log/empty', 'GET', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `sys_mdict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多级字典表';

-- ----------------------------
--  Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `target` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图标',
  `is_show` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='菜单表';

-- ----------------------------
--  Records of `sys_menu`
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', '0', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('10', '3', '0,1,3,', '字典管理', '60', '/sys/dict/', null, 'th-list', '1', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('12', '10', '0,1,3,10,', '编辑', '61', null, null, null, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('14', '3', '0,1,3,', '区域管理', '50', '/sys/area/', null, 'th', '1', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('16', '14', '0,1,3,14,', '编辑', '51', null, null, null, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('17', '3', '0,1,3,', '机构管理', '40', '/sys/office/', null, 'th-large', '1', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('19', '17', '0,1,3,17,', '编辑', '41', null, null, null, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('20', '3', '0,1,3,', '用户管理', '10', '/sys/user/index', null, 'user', '1', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('21', '20', '0,1,3,20,', '编辑', '11', null, null, null, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('22', '3', '0,1,3,', '日志查询', '70', '/sys/log', null, 'pencil', '1', 'sys:log:view', '1', '2013-05-27 08:00:00', '1', '2013-06-03 08:00:00', null, '0'), ('23', '22', '0,1,3,22,', '编辑', '71', null, null, null, '0', 'sys:log:edit', '1', '2017-05-14 14:55:12', '1', '2017-05-14 14:55:20', null, '0'), ('3', '1', '0,1,', '系统设置', '1000', null, null, 'fa-cogs', '1', null, '1', '2013-05-27 08:00:00', '1', '2017-05-14 15:25:20', null, '0'), ('4', '3', '0,1,3,', '菜单管理', '30', '/sys/menu/', null, 'list-alt', '1', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('6', '4', '0,1,3,4,', '编辑', '31', null, null, null, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('7', '3', '0,1,3,', '角色管理', '20', '/sys/role/', null, 'lock', '1', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('9', '7', '0,1,3,7,', '编辑', '21', null, null, null, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('da2634f9665a4fe5aaa64b9219a77908', '3', '0,1,3,', '代码生产', '80', '/gen/genTable/', null, null, '1', 'gen:genTable:view,gen:genTable:edit', '1', '2017-05-14 15:06:34', '1', '2017-05-22 13:39:33', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序',
  `area_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属区域',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `type` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构类型',
  `grade` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构等级',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '传真',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='机构表';

-- ----------------------------
--  Records of `sys_office`
-- ----------------------------
BEGIN;
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '山东省总公司', '10', '2', '100000', '1', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('10', '7', '0,1,7,', '市场部', '30', '3', '200003', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('11', '7', '0,1,7,', '技术部', '40', '3', '200004', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('12', '7', '0,1,7,', '历城区分公司', '0', '4', '201000', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('13', '12', '0,1,7,12,', '公司领导', '10', '4', '201001', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('14', '12', '0,1,7,12,', '综合部', '20', '4', '201002', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('15', '12', '0,1,7,12,', '市场部', '30', '4', '201003', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('16', '12', '0,1,7,12,', '技术部', '40', '4', '201004', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('17', '7', '0,1,7,', '历下区分公司', '40', '5', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('19', '17', '0,1,7,17,', '综合部', '20', '5', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('2', '1', '0,1,', '公司领导', '10', '2', '100001', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('20', '17', '0,1,7,17,', '市场部', '30', '5', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('21', '17', '0,1,7,17,', '技术部', '40', '5', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('22', '7', '0,1,7,', '高新区分公司', '50', '6', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('23', '22', '0,1,7,22,', '公司领导', '10', '6', '201011', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('24', '22', '0,1,7,22,', '综合部', '20', '6', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('25', '22', '0,1,7,22,', '市场部', '30', '6', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('26', '22', '0,1,7,22,', '技术部1', '40', '6', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2017-05-14 15:45:47', null, '0'), ('261b5a49d5a6404683a9766993533e5f', '26', '0,1,7,22,26,', '1111', null, '4', '201014001', '1', '1', null, null, null, null, null, null, '1', null, null, '1', '2017-05-14 15:55:27', '1', '2017-05-14 15:55:27', null, '0'), ('3', '1', '0,1,', '综合部', '20', '2', '100002', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('4', '1', '0,1,', '市场部', '30', '2', '100003', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('5', '1', '0,1,', '技术部', '40', '2', '100004', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('6', '1', '0,1,', '研发部', '50', '2', '100005', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0'), ('7', '1', '0,1,', '济南市分公司', '20', '3', '200000', '1', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `enname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色表';

-- ----------------------------
--  Records of `sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', '1', '系统管理员', 'dept', 'assignment', '1', null, '1', '1', '2013-05-27 08:00:00', '1', '2017-05-14 15:42:37', null, '0'), ('6', '1', '普通用户', 'd', 'assignment', '8', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-菜单';

-- ----------------------------
--  Records of `sys_role_menu`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES ('1', '1'), ('1', '10'), ('1', '12'), ('1', '14'), ('1', '16'), ('1', '17'), ('1', '19'), ('1', '20'), ('1', '21'), ('1', '22'), ('1', '23'), ('1', '3'), ('1', '4'), ('1', '6'), ('1', '7'), ('1', '9'), ('1', 'da2634f9665a4fe5aaa64b9219a77908');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-机构';

-- ----------------------------
--  Records of `sys_role_office`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_office` VALUES ('7', '10'), ('7', '11'), ('7', '12'), ('7', '13'), ('7', '14'), ('7', '15'), ('7', '16'), ('7', '17'), ('7', '19'), ('7', '20'), ('7', '21'), ('7', '22'), ('7', '23'), ('7', '24'), ('7', '25'), ('7', '26'), ('7', '7');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `company_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属公司',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属部门',
  `login_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '手机',
  `user_type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', '1', '2', 'admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', 'thinkgem@163.com', '8675', '8675', '1', null, '127.0.0.1', '2017-05-22 15:23:39', '1', '1', '2013-05-27 08:00:00', '1', '2017-05-22 16:03:56', '最高管理员', '0'), ('10', '7', '11', 'jn_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0010', '济南技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('11', '12', '13', 'lc_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0011', '济南历城领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('12', '12', '18', 'lx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0012', '济南历下领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('13', '22', '23', 'gx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0013', '济南高新领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('2', '1', '2', 'sd_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('3', '1', '3', 'sd_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0003', '综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('4', '1', '4', 'sd_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0004', '市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('5', '1', '5', 'sd_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('6', '1', '6', 'sd_yfb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0006', '研发部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('7', '7', '8', 'jn_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0007', '济南领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('8', '7', '9', 'jn_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0008', '济南综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1'), ('ac015160db404dc29693ddcf8e8449cb', '7', '10', '1111111', '5310ef43245692ffc6c7554f1a7aadcaffa6c0a59ba2c4590ffc1f7f', null, '测试', 'lufengc@163.com', null, '13141010664', '1', 'userid_1/images/2017-05-12/709749fce9034ea0a8db7f9dd18332d3.png', '127.0.0.1', '2017-05-12 18:43:29', '1', null, null, '1', '2017-05-18 18:39:39', 'aaaaa', '1'), ('b56e8275a271414a9de8b2f86e398402', null, null, null, 'b5dd152784a2993e73d70a937350b1acc19cfa79fa8331efaf9b50e5', null, 'test', null, null, null, null, null, null, null, '1', null, '2017-05-22 10:58:09', null, '2017-05-22 10:58:09', null, '1'), ('fe123a5477ea4ef197fbf1295d9688cb', null, null, null, 'c6e97c13747969bddc0ec60fed64d45e4bd0866503f471549d5c3832', null, 'test', null, null, null, null, null, null, null, '1', null, '2017-05-22 11:01:03', null, '2017-05-22 11:01:03', null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户-角色';

-- ----------------------------
--  Records of `sys_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('1', '1'), ('10', '2'), ('10', '4'), ('11', '3'), ('12', '4'), ('13', '5'), ('14', '6'), ('2', '1'), ('3', '2'), ('3', '4'), ('4', '3'), ('4', '4'), ('6', '5'), ('7', '2'), ('7', '7'), ('8', '2'), ('9', '1'), ('ac015160db404dc29693ddcf8e8449cb', '1'), ('ac015160db404dc29693ddcf8e8449cb', '2'), ('ac015160db404dc29693ddcf8e8449cb', '3');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_notice_template`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_template`;
CREATE TABLE `t_sys_notice_template` (
  `id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id',
  `project_id` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目ID',
  `method` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '通知方式(0：电子邮件 1：站内消息 2：手机短信)',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '变量标签',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容模板',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态（0：停用，1：启用）',
  `sys_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台类型（1：交易，2：物流）',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '删除标识(1:已删除,0:正常)',
  `add_time` datetime NOT NULL COMMENT '创建时间',
  `add_user_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建者',
  `add_mark` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建页面ID',
  `upd_time` datetime DEFAULT NULL COMMENT '更新时间',
  `upd_user_id` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新者',
  `upd_mark` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新页面ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `t_sys_notice_template`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice_template` VALUES ('0140f077b991434ebac7ed14c57aa77b', '', '2', '结算单结算成功提醒托运方', 'carrier-confirm-settlement-success', '', '尊敬的中联钢信#userName#会员，你发起的结算单#settlement#，承运方已确认，请查看。', '0', '2', '0', '2017-01-12 16:11:16', '1', 'sysNotice', '2017-01-12 16:11:16', '1', 'sysNotice'), ('034aab3718d54754b841a673db8abe49', null, '1', '洽谈后，某方点击同意生成订单时提示买家，已生成订单。', 'buyer-bargain-agree-msg', '洽谈同意按钮', '尊敬的中联钢信#userName#会员，您发起的洽谈商品#productNo#，卖家同意成交，已生成订单#orderNo#。请注意查看并及时付款。', '0', '1', '0', '2017-02-16 15:32:02', '1', 'sysNotice', '2017-02-16 15:32:02', '1', 'sysNotice'), ('03d46010d1eb473f9f77f4d8adbb0c9c', '', '1', '竞价开始提醒已报名的承运方', 'bidding-reming-carrier', '', '尊敬的中联钢信#userName#会员，您参与的竞价货源#sourceNo#，已开始，请注意查看。', '0', '2', '0', '2017-01-12 15:51:07', '1', 'sysNotice', '2017-01-12 15:51:07', '1', 'sysNotice'), ('05496c5bd94240f2802ee20564b7d636', null, '1', '竞价商品审核结果，卖家接收站内信和短信', 'bidding-goods-check-over', '后台竞价商品审核', '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，审核通过，已上架。', '0', '1', '0', '2017-02-16 19:16:12', '1', 'sysNotice', '2017-02-16 19:16:12', '1', 'sysNotice'), ('05b38230d5144835ac799eb9706b2899', null, '2', '后台冻结订单时，应给用户站内信及短息提醒', 'frezz-order-msg', null, '尊敬的中联钢信#userName#会员，您有订单#orderNo# 已被管理员冻结，请及时查看', '0', '1', '0', '2017-02-22 10:49:14', '1', 'sysNotice', '2017-02-22 10:49:14', '1', 'sysNotice'), ('066f26c1eee74c0bb40c69f4f7b5c71c', null, '2', '买方会员购物车下单，卖方收到短信和站内信', 'confirm-order-msg', null, '尊敬的中联钢信#userName#会员，你的商品#productNo#，已有买家下单，请及时处理。', '0', '1', '0', '2017-01-12 09:51:29', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:51:29', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('096b3b09aa4e4d878d5dbb8f35ce3d9b', '', '1', '承运方发起洽谈提醒托运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'carrier-talk-send', '', '尊敬的中联钢信#userName#会员，承运方#carrier#,对您的货源#sourceNo#提交了洽谈单#talkNo#，请注意查看。', '0', '2', '0', '2017-01-12 14:48:18', '1', 'sysNotice', '2017-01-12 14:48:18', '1', 'sysNotice'), ('09bee5af3f44437ebf9b73b3b196729e', '', '2', '托运方回复洽谈后提醒承运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'consign-talk-reply', '', '尊敬的中联钢信#userName#会员，托运方#consign#,已回复您提交的洽谈单#talkNo#，请注意查看。', '0', '2', '0', '2017-01-12 14:50:25', '1', 'sysNotice', '2017-01-12 18:21:34', '1', 'sysNotice'), ('0a37d2b8f6064419b5b8e88939ca9e7e', '', '2', '竞价发盘支付保证金后提醒托运方', 'bidding-pay-margin', '', '尊敬的中联钢信#userName#会员，您的竞价货源#sourceNo#保证金已支付，请查看。', '0', '2', '0', '2017-01-12 15:46:35', '1', 'sysNotice', '2017-01-12 15:46:35', '1', 'sysNotice'), ('0a899343b174471f97362548c046c692', '', '2', '竞价成交提醒中标的承运方（自动成交、选择成交）', 'bidding-reming-carrier-winning', '', '尊敬的中联钢信#userName#会员，您参与的竞价货源#sourceNo#，已中标请注意查看', '0', '2', '0', '2017-01-12 15:54:40', '1', 'sysNotice', '2017-01-12 15:54:40', '1', 'sysNotice'), ('0f5fa966a0194c578667abbd6efcfe5e', '', '1', '承运方回复洽谈后提醒托运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'carrier-talk-reply', '', '尊敬的中联钢信#userName#会员，承运方#carrier#,已回复洽谈单#talkNo#，请注意查看。', '0', '2', '0', '2017-01-12 14:51:53', '1', 'sysNotice', '2017-01-12 14:51:53', '1', 'sysNotice'), ('0fc3c56086c0448b9b055326ff320539', null, '1', '平台注册成功', 'platform-register-success', '', '尊敬的#userName#，欢迎您成为中联钢信用户会员.', '0', '2', '0', '2017-04-13 21:21:47', '1', 'sysNotice', '2017-04-13 21:21:47', '1', 'sysNotice'), ('135b0ad951c3418e9f2305d6ff069e72', null, '2', '竞价类商品后台审核通过/驳回后短信、站内信提示卖方。', 'bidding-reject-msg', null, '审核驳回：尊敬的中联钢信#userName#会员，您提交的挂牌商品#productNo#，已审核驳回。', '0', '1', '0', '2017-01-12 09:43:02', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:43:02', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('166a73a333564994a3bb3aeb3049c1ee', null, '2', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-recive-msg', null, '接收方：尊敬的中联钢信#userName#会员，您有待处理异议#complaintNo#，请及时处理。', '0', '1', '0', '2017-01-12 09:34:52', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:34:52', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('1721f314bc17468d97d4ca0f34101088', null, '1', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-recive-msg', '申请合同异议', '接收方：尊敬的中联钢信#userName#会员，您有待处理异议#complaintNo#，请及时处理。', '0', '1', '0', '2017-01-12 09:34:52', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:34:52', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('17b4a5f21ea14d7d9164ddff344a076b', '', '2', '承运方发起洽谈提醒托运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'carrier-talk-send', '', '尊敬的中联钢信#userName#会员，承运方#carrier#,对您的货源#sourceNo#提交了洽谈单#talkNo#，请注意查看。', '0', '2', '0', '2017-01-12 14:48:18', '1', 'sysNotice', '2017-01-12 14:48:18', '1', 'sysNotice'), ('1857ca9bca6d4042bc0797db9020d195', '', '1', '竞价成交提醒托运方（自动成交）', 'bidding-reming-consign', '', '尊敬的中联钢信#userName#会员，您发起的竞价货源#sourceNo#，已成交。请注意查看。', '0', '2', '0', '2017-01-12 15:55:20', '1', 'sysNotice', '2017-01-12 15:55:20', '1', 'sysNotice'), ('19634dc3eadd40d58084df2d173187f4', null, '2', '买家报名竞价商品，提示双方站内信和短信', 'bidding-apply-send-buyer', null, '尊敬的中联钢信#userName#会员，您已报名参与竞价商品#productNo#，请在竞价结束前报价。', '0', '1', '0', '2017-02-16 19:17:00', '1', 'sysNotice', '2017-02-16 19:17:00', '1', 'sysNotice'), ('1a72253960e6437e8d46df354ae8ed78', null, '2', '资质审核通过后短信、站内信提示。', 'qualification-reject-msg', null, '审核驳回：尊敬的中联钢信#userName#会员，您#qualification#没有审核通过。原因如下：#reason#', '0', '1', '0', '2017-01-12 09:46:13', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-03-17 15:54:38', '1', 'sysNotice'), ('1b9bd0e2dc55445c8d284213c02c6b99', '', '2', '托运方终止洽谈后提醒承运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'consign-talk-stop', '', '尊敬的中联钢信#userName#会员，托运方#consign#，已终止洽谈单#talkNo#，请注意查看', '0', '2', '0', '2017-01-12 14:52:52', '1', 'sysNotice', '2017-01-12 15:18:21', '1', 'sysNotice'), ('1bf73f431e3e4a4bb77f38777826fd6c', '', '2', '注册成功后发送短信', 'regist-success', '', '尊敬的#userName#，欢迎您成为中联钢信用户会员。', '1', '', '0', '2017-01-12 14:34:33', '1', 'sysNotice', '2017-03-08 09:55:13', '1', 'sysNotice'), ('20962dcaa433457083638881c2985ba3', null, '1', '竞价商品结束时，买方接收站内信和短信', 'bidding-over-send-buyer', '竞价结束生成订单时', '尊敬的中联钢信#userName#会员，您参与的竞价商品#productNo#，已竞价成功，生成订单#orderNo#，请及时支付货款。', '0', '1', '0', '2017-02-16 19:18:30', '1', 'sysNotice', '2017-02-16 19:18:30', '1', 'sysNotice'), ('22b6f66868184b2e842bada5b3820e6b', '', '1', '结算单结算成功提醒承运方', 'carrier-confirm-settlement-success-for-carrier', '', '尊敬的中联钢信#userName#会员，结算单#settlement#，您已确认，本次结算完成。', '0', '2', '0', '2017-01-12 16:11:59', '1', 'sysNotice', '2017-01-12 16:11:59', '1', 'sysNotice'), ('25e2642cb54148a6bfbf2dea74de0bad', '', '1', '托运方发盘，后台审核通过，发送短信和站内信', 'source-audit-msg', '', '审核通过：尊敬的中联钢信#userName#会员，您提交的挂牌货源#sourceNo#，已通过审核。', '0', '2', '0', '2017-01-12 14:40:39', '1', 'sysNotice', '2017-01-12 14:40:39', '1', 'sysNotice'), ('26769fcfe5d844ff9eb251d1c5712953', null, '2', '卖家进行定向挂牌，定向会员接受站内信和短信', 'send-steel-factory-user-msg', null, '尊敬的中联钢信#userName#会员，有卖家发起挂牌商品#productNo#，恭喜您被选为定向会员。', '0', '1', '0', '2017-02-16 11:19:55', '1', 'sysNotice', '2017-02-16 11:19:55', '1', 'sysNotice'), ('28379c8c71e24ca58fcad6e14cfc7c9d', '', '2', '结算单结算成功提醒承运方', 'carrier-confirm-settlement-success-for-carrier', '', '尊敬的中联钢信#userName#会员，结算单#settlement#，您已确认，本次结算完成。', '0', '2', '0', '2017-01-12 16:11:59', '1', 'sysNotice', '2017-01-12 16:11:59', '1', 'sysNotice'), ('28b6937c93cc4591a70eaf725530de6d', null, '1', '买家签章完成后，提示卖家签章', 'confirm-seller-signature', '买家签章完成后，提示卖家签章', '尊敬的中联钢信#userName#会员，您的销售订单#orderNo#买家已签章，请您注意及时签章。', '0', '1', '0', '2017-02-15 13:43:15', '1', 'sysNotice', '2017-02-15 13:43:15', '1', 'sysNotice'), ('29425a785bd6432aa73751f0db129125', null, '2', '竞价商品结束时，买方接收站内信和短信', 'bidding-over-send-buyer', null, '尊敬的中联钢信#userName#会员，您参与的竞价商品#productNo#，已竞价成功，生成订单#orderNo#，请及时支付货款。', '0', '1', '0', '2017-02-16 19:18:30', '1', 'sysNotice', '2017-02-16 19:18:30', '1', 'sysNotice'), ('2bcf3e4f5da44ab1a6162b94db3671dc', null, '1', '结算单司机运费结算失败通知司机', 'driver-delivery-drive-freight-fail', '', '您好#driver#，您承运的#sourceBrand#(#productWeight##unit#)结算失败，请与#userName#线下结算。', '0', '2', '0', '2017-04-11 16:10:05', '1', 'sysNotice', '2017-04-11 16:10:05', '1', 'sysNotice'), ('2c610b2e5b4749039f5d16ffa5f54f9a', '', '1', '注册成功后发送短信', 'regist-success', '', '尊敬的#userName#，欢迎您成为中联钢信用户会员。', '0', '', '0', '2017-01-12 14:34:33', '1', 'sysNotice', '2017-01-16 19:25:58', '1', 'sysNotice'), ('2da7504a0ea747bf83efbe63cceea092', '', '2', '竞价选择成交倒计时即将截止提醒托运方', 'choose-over-reming-consign', '', '尊敬的中联钢信#userName#会员，您的货源#sourceNo#,选择成交截止时间即将到期，请尽快处理。', '0', '2', '0', '2017-01-13 16:48:28', '1', 'sysNotice', '2017-01-13 16:48:28', '1', 'sysNotice'), ('2dec923fc2004e86afc02394292b2387', null, '2', '当买家进行下单后，提示双方进行签章', 'sign-send-msg', null, '尊敬的中联钢信#userName#会员，您有订单#orderNo# 生成，请注意及时签章。', '0', '1', '0', '2017-02-27 10:31:54', '1', 'sysNotice', '2017-02-27 10:31:54', '1', 'sysNotice'), ('2ef468c4261e4cd4b37e582838df261b', '', '1', '承运方发起合同异议提醒托运方', 'carrier-contract-dissent', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，承运方发起新的合同异议#dissentNo#，请注意查看。', '0', '2', '0', '2017-01-12 16:16:51', '1', 'sysNotice', '2017-01-12 16:16:51', '1', 'sysNotice'), ('305b293ff00f4748a5f9894d0f7ead5e', '', '2', '承运方提交订单后提醒托运方及时支付保证金', 'consign-pay-margin', '', '尊敬的中联钢信#userName#会员，您有新的订单#orderNo#,请您尽快支付保证金。', '0', '2', '0', '2017-01-12 15:40:20', '1', 'sysNotice', '2017-01-12 15:41:06', '1', 'sysNotice'), ('31dd249a4ae84048a4f0257269147ff5', null, '1', '商品后台下架', 'goods-down-msg', '商品后台下架', '尊敬的中联钢信#userName#会员，您的商品#productNo#，已下架请注意查看。', '0', '1', '0', '2017-02-27 10:36:17', '1', 'sysNotice', '2017-02-27 10:36:17', '1', 'sysNotice'), ('34ec7c19fec7488b92b9bc6c6b3f3726', null, '2', '资质审核通过后短信、站内信提示。', 'qualification-audit-msg', null, '审核通过：尊敬的中联钢信#userName#会员，恭喜您#qualification#审核通过。', '0', '1', '0', '2017-01-12 09:45:20', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-03-17 15:54:47', '1', 'sysNotice'), ('352228e2b98c409c95396fca0784d506', '', '1', '承运方终止洽谈后提醒托运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'carrier-talk-stop', '', '尊敬的中联钢信#userName#会员，承运方#carrier#,已终止洽谈单#talkNo#，请注意查看', '0', '2', '0', '2017-01-12 14:55:55', '1', 'sysNotice', '2017-01-12 15:14:42', '1', 'sysNotice'), ('39bbcba283af421e818ed3359e4d133d', null, '1', '平台注册成功提示修改支付密码', 'platform-update-pay-password', '', '尊敬的中联钢信#userName#会员，请注意及时修改您的支付密码。', '0', '2', '0', '2017-04-13 21:22:33', '1', 'sysNotice', '2017-04-13 21:22:33', '1', 'sysNotice'), ('3b343f3efe7148bcbc07cd1b4d54ecee', null, '1', '卖家进行定向挂牌，定向会员接受站内信和短信', 'send-steel-factory-user-msg', '钢厂直销会员挂牌时', '尊敬的中联钢信#userName#会员，有卖家发起挂牌商品#productNo#，恭喜您被选为定向会员。', '0', '1', '0', '2017-02-16 11:19:55', '1', 'sysNotice', '2017-02-16 11:19:55', '1', 'sysNotice'), ('3c7bdd3f0dd44761be1c0193192c3944', '', '2', '托运方发盘，后台审核通过，发送短信和站内信', 'source-audit-msg', '', '审核通过：尊敬的中联钢信#userName#会员，您提交的挂牌货源#sourceNo#，已通过审核。', '0', '2', '0', '2017-01-12 14:40:39', '1', 'sysNotice', '2017-01-12 14:40:39', '1', 'sysNotice'), ('3c7dacf6ccf348ce8e20ebe780db2004', null, '1', '洽谈后，某方点击同意生成订单时提示卖家，已生成订单。', 'seller-bargain-agree-msg', '洽谈同意按钮', '尊敬的中联钢信#userName#会员，您的可洽谈商品#productNo#，已有买家同意成交，已生成订单#orderNo#。请注意查看。', '0', '1', '0', '2017-02-16 15:30:59', '1', 'sysNotice', '2017-02-16 15:30:59', '1', 'sysNotice'), ('3d0fd7aabed64bfda257540b877bc608', '', '2', '短信验证码', 'checkcode-msg', '', '您本次验证码为#checkcode#，如不是本人请忽略。', '0', '', '0', '2017-01-12 18:02:20', '1', 'sysNotice', '2017-03-09 14:12:58', '69543fbda9c74b14969d7fd1e9535e0c', 'sysNotice'), ('3e817fe4873949b49ef996597670b904', null, '1', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-recive -msg', '申请合同异议', '接收方：尊敬的中联钢信#userName#会员，您有待处理异议#complaintNo#，请及时处理。', '0', '1', '1', '2017-01-12 09:33:19', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:33:19', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('427b53e448fc40a98d5f8188ca6435f2', null, '2', '竞价商品结束时，没有成交卖方接收站内信和短信', 'bidding-over-no-buyer-send-seller', null, '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，已竞价结束，没有撮合成交的订单。请查看。', '0', '1', '0', '2017-02-16 19:19:55', '1', 'sysNotice', '2017-02-16 19:19:55', '1', 'sysNotice'), ('430b7473f31446ccab88b0bf0da2c770', '', '2', '托运方首次支付预付款倒计时即将截止提醒', 'consign-first-pay-fee-reming', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，预付款支付时间即将到期，请尽快处理。', '0', '2', '0', '2017-01-12 16:06:41', '1', 'sysNotice', '2017-01-12 16:06:41', '1', 'sysNotice'), ('44345762a1e442ba8d7e76239442ddb9', null, '2', '买方付款后，提示卖方，短信和站内信。', 'pay-msg', null, '尊敬的中联钢信#userName#会员，您的订单#orderNo#买家已付款，请注意查收。', '0', '1', '0', '2017-01-12 09:36:45', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:36:45', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('45da64220f014fabb4161d2cd39b2aca', '', '2', '竞价成交提醒托运方（自动成交）', 'bidding-reming-consign', '', '尊敬的中联钢信#userName#会员，您发起的竞价货源#sourceNo#，已成交。请注意查看。', '0', '2', '0', '2017-01-12 15:55:20', '1', 'sysNotice', '2017-01-12 15:55:20', '1', 'sysNotice'), ('48c90951684f40b7b3459bf804487bab', null, '1', '竞价商品结束时，卖方接收站内信和短信', 'bidding-over-send-seller', '竞价结束生成订单时', '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，已竞价结束生成订单#orderNo#，请注意查看', '0', '1', '0', '2017-02-16 19:19:18', '1', 'sysNotice', '2017-02-16 19:19:18', '1', 'sysNotice'), ('49ad597cc2dc4657baf7c2723e2cf278', null, '1', '资质审核通过后短信、站内信提示。', 'qualification-audit-msg', '审核通过', '审核通过：尊敬的中联钢信#userName#会员，恭喜您#qualification#审核通过。', '0', '1', '0', '2017-01-12 09:45:20', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:45:20', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('4a0c993d56e34adf9803e27e27cda60b', null, '2', '站内信。', 'complaints-recive-msg', null, '提出方：尊敬的中联钢信#userName#会员，您提出的异议#complaintNo#已发送成功。', '0', '2', '1', '2017-01-11 16:43:44', '1', 'sysNotice', '2017-01-11 16:43:44', '1', 'sysNotice'), ('4ab3c4bc8d404605bc2d7840cdf576e4', '', '2', '洽谈成交提醒（选择同意的一方不需要提醒）', 'talk-agree-msg', '', '尊敬的中联钢信#userName#会员，洽谈单#talkNo#，已同意成交，请注意查看。', '0', '2', '0', '2017-01-12 15:14:10', '1', 'sysNotice', '2017-01-12 15:17:51', '1', 'sysNotice'), ('4e1563e84e0b464cba99b8bbdf605bbd', '', '2', '承运方同意合同异议提醒托运方', 'carrier-contract-dissent-agree', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，承运方已同意，请注意查看。', '0', '2', '0', '2017-01-12 16:18:26', '1', 'sysNotice', '2017-01-12 16:18:26', '1', 'sysNotice'), ('4faf48f7428d47069143fe2beed74382', '', '1', '托运方终止洽谈后提醒承运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'consign-talk-stop', '', '尊敬的中联钢信#userName#会员，托运方#consign#，已终止洽谈单#talkNo#，请注意查看', '0', '2', '0', '2017-01-12 14:52:52', '1', 'sysNotice', '2017-01-12 15:16:38', '1', 'sysNotice'), ('50cd8e4dec6945c490681464a4bb8c73', null, '1', '交易平台买家进行洽谈回复，卖家接收短信和站内信', 'buyer-bargain-for-seller-msg', '', '尊敬的中联钢信#userName#会员，您的可洽谈商品#productNo#买家已回复，请注意查看。', '0', '1', '0', '2017-03-16 20:13:49', '1', 'sysNotice', '2017-03-16 20:13:49', '1', 'sysNotice'), ('564b064358d24a109e40a4aa1f0e7229', '', '1', '承运方驳回运输完成后的提醒托运方', 'settlement-over-for-consign-reject', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，承运方运输完成确认已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:15:07', '1', 'sysNotice', '2017-01-12 16:15:07', '1', 'sysNotice'), ('56f174b02e33466390babb018de91cd5', null, '2', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-send-msg', null, '提出方：尊敬的中联钢信#userName#会员，您提出的异议#complaintNo#已发送成功。', '0', '1', '1', '2017-01-12 09:28:07', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:28:07', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('5821eaef44204fd096bba2ac5ea8c086', '', '1', '竞价发盘支付保证金后提醒托运方', 'bidding-pay-margin', '', '尊敬的中联钢信#userName#会员，您的竞价货源#sourceNo#保证金已支付，请查看。', '0', '2', '0', '2017-01-12 15:46:35', '1', 'sysNotice', '2017-01-12 15:46:35', '1', 'sysNotice'), ('5a104faa19434394b8eb6cace52af8cc', '', '2', '注册时发送短信验证码', 'send-verification-msg', '', '欢迎您成为中联钢信用户会员，您的验证码#checkcode#，如不是您本人，请忽视。', '0', '', '0', '2017-01-12 14:30:36', '1', 'sysNotice', '2017-01-12 16:27:11', '1', 'sysNotice'), ('5a5798be877c47178256b055331b7965', null, '2', '卖家上传交收单，提示买方进行验货确认', 'delivery-send-msg', null, '尊敬的中联钢信#userName#会员，您的采购订单#orderNo#，卖家已上传交收单# deliveryNo #,请及时确认。', '0', '1', '0', '2017-02-16 15:30:14', '1', 'sysNotice', '2017-02-16 15:30:14', '1', 'sysNotice'), ('5a99c3c1a647405580ee2264a603f547', null, '2', '结算单司机运费结算失败通知司机', 'driver-delivery-drive-freight-fail', null, '您好#driver#，您承运的#sourceBrand#(#productWeight##unit#)结算失败，请与#userName#线下结算。', '0', '2', '0', '2017-04-11 16:10:05', '1', 'sysNotice', '2017-04-11 16:10:05', '1', 'sysNotice'), ('5cf4bdae2f9e4758896214eda8bb8d5e', '', '1', '基础信息认证审核结果，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'member-check-msg', '', '尊敬的中联钢信会员#userName#，您的会员信息审核已通过。请注意查看', '0', '2', '0', '2017-01-12 14:38:10', '1', 'sysNotice', '2017-01-16 19:25:21', '1', 'sysNotice'), ('5f42d8ce8d7d4e4980a34a2327a448d5', null, '1', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-send-msg', '申请合同异议', '提出方：尊敬的中联钢信#userName#会员，您提出的异议#complaintNo#已发送成功。', '0', '1', '0', '2017-01-12 09:35:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:35:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('5f626acc4f164e5da2429378223cd95d', '', '2', '托运方预付款支付成功提醒承运方', 'consign-pay-fee-success', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方已支付运费，请查看。', '0', '2', '0', '2017-01-12 16:07:05', '1', 'sysNotice', '2017-01-12 16:07:05', '1', 'sysNotice'), ('5f9efb44080a465287ce68a670f4388d', null, '2', '交易平台卖家进行洽谈回复，买家接收短信和站内信', 'seller-bargain-for-buyer-msg', null, '尊敬的中联钢信#userName#会员，您洽谈的商品#productNo#卖家已回复，请注意查看。', '0', '1', '0', '2017-03-16 20:14:11', '1', 'sysNotice', '2017-03-16 20:14:11', '1', 'sysNotice'), ('60c735aa900d491b8f08014c98eef587', '', '2', '托运方为订单支付保证金后提醒承运方', 'carrier-pay-margin-after-consign', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#,托运方已支付保证金，请查看。', '0', '2', '0', '2017-01-12 15:45:44', '1', 'sysNotice', '2017-01-12 15:45:44', '1', 'sysNotice'), ('6125e209dd634a388a2d36b87104a5d4', '', '2', '一口价/洽谈订单付款倒计时即将截止提醒承运方/托运方', 'pay-order-countdown', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#,付款截止时间即将到期，请尽快处理。', '0', '2', '0', '2017-01-12 15:41:54', '1', 'sysNotice', '2017-01-12 15:41:54', '1', 'sysNotice'), ('61cdac24570f4cfebf87acac080da671', '', '1', '洽谈成交提醒（选择同意的一方不需要提醒）', 'talk-agree-msg', '', '尊敬的中联钢信#userName#会员，洽谈单#talkNo#，已同意成交，请注意查看。', '0', '2', '0', '2017-01-12 15:14:10', '1', 'sysNotice', '2017-01-12 15:17:57', '1', 'sysNotice'), ('6285c2a32fb74eaeb679e96829ed6a48', '', '2', '测试bug', '1', '', '测试bug', '0', '2', '0', '2017-01-11 19:26:22', '1', 'sysNotice', '2017-01-11 19:26:22', '1', 'sysNotice'), ('65ac6dc46c2347c2865810d1dbb18447', '', '2', '承运方驳回合同异议提醒托运方', 'carrier-contract-dissent-reject', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，承运方已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:21:49', '1', 'sysNotice', '2017-01-12 16:21:49', '1', 'sysNotice'), ('683f5f488a85461595f29b9c1d05ae6e', null, '1', '平台注册成功信息审核通过', 'platform-member-pass', '', '尊敬的中联钢信#userName#会员，您的会员信息审核已通过。请注意查看。', '0', '2', '0', '2017-04-13 21:22:17', '1', 'sysNotice', '2017-04-13 21:22:17', '1', 'sysNotice'), ('690c897108b74623947f88c9a5e22420', '', '1', '托运方首次支付预付款倒计时即将截止提醒', 'consign-first-pay-fee-reming', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，预付款支付时间即将到期，请尽快处理。', '0', '2', '0', '2017-01-12 16:06:41', '1', 'sysNotice', '2017-01-12 16:06:41', '1', 'sysNotice'), ('6d6105415fe245f98ce22f334bc09acd', '', '1', '注册时发送短信验证码', 'send-verification-msg', '', '欢迎您成为中联钢信用户会员，您的验证码#checkcode#，如不是您本人，请忽视。', '0', '', '0', '2017-01-12 14:30:36', '1', 'sysNotice', '2017-01-16 19:26:04', '1', 'sysNotice'), ('772d6d175d6b46c98ac935b582f482e3', '', '2', '托运方发盘，后台驳回，发送短信和站内信', 'source-reject-msg', '', '尊敬的中联钢信#userName#会员，您提交的挂牌货源#sourceNo#，已审核驳回,原因：#auditOpinion#。', '0', '2', '0', '2017-01-12 14:47:16', '1', 'sysNotice', '2017-01-12 14:47:16', '1', 'sysNotice'), ('77a39c1a95834d579a85918e6a16d75f', null, '2', '卖方提交交收单后，提示买方，短信和站内信。', 'delivery-msg', null, '尊敬的中联钢信#userName#会员，您有交收单#deliveryNo#待确认，请及时处理。', '0', '1', '0', '2017-01-12 09:38:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:38:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('7a2ce203f1744a1496476992537e8636', null, '2', '出金申请后台审核成功发站内信和短信', 'out-account-success-msg', null, '尊敬的中联钢信#userName#会员，您的出金审核已通过，请注意查看。', '0', '1', '0', '2017-02-27 10:32:57', '1', 'sysNotice', '2017-02-27 10:32:57', '1', 'sysNotice'), ('7abac23299c04cb8a22d6dc00b97d0ca', null, '2', '买方交收完成确认后，提示双方合同完成，请评价，短信和站内信。', 'delivery-confirm-msg', null, '尊敬的中联钢信#userName#会员，合同#contractNo#已完成，请评价。', '0', '1', '0', '2017-01-12 09:39:31', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:39:31', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('7ac2537477ca417a9c29a7313b162c53', '', '1', '托运方首次支付预付款提醒（双方都支付订单保证金后）', 'consign-first-pay-fee', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方#consign#，已支付运费，请查看。', '0', '2', '0', '2017-01-12 15:57:07', '1', 'sysNotice', '2017-01-12 15:57:07', '1', 'sysNotice'), ('7b5588c31d5b47f390e8904887542c89', '', '2', '找回密码发送短信验证码', 'recive-verification-msg', '', '尊敬的中联钢信会员#userName#，您本次的短信验证码为：#checkcode#，请注意查收，如不是您本人，请忽视。', '0', '', '0', '2017-01-12 14:35:55', '1', 'sysNotice', '2017-03-08 17:06:51', '69543fbda9c74b14969d7fd1e9535e0c', 'sysNotice'), ('7c79bc47dff1446abf1c9d2fb9cfd69e', null, '1', '结算单司机运费结算失败通知承运方', 'carrier-delivery-drive-freight-fail', '', '尊敬的中联钢信#userName#会员，您的结算单#settlement#支付司机运费失败，请与#driver#线下结算。', '0', '2', '0', '2017-04-11 15:23:29', '1', 'sysNotice', '2017-04-11 16:08:45', '1', 'sysNotice'), ('80ccb5921fe84897ad170e69a2c8400e', null, '2', '买家报名竞价商品，提示卖家站内信和短信', 'bidding-apply-send-seller', null, '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，有买家报名，请注意查看。', '0', '1', '0', '2017-02-16 19:17:50', '1', 'sysNotice', '2017-02-16 19:17:50', '1', 'sysNotice'), ('8180fc96d06449e2b0430af3c138eb36', null, '1', '卖家上传交收单，提示买方进行验货确认', 'delivery-send-msg', '上传交收单按钮', '尊敬的中联钢信#userName#会员，您的采购订单#orderNo#，卖家已上传交收单# deliveryNo #,请及时确认。', '0', '1', '0', '2017-02-16 15:30:14', '1', 'sysNotice', '2017-02-16 15:30:14', '1', 'sysNotice'), ('886d278e22424bb8bb87d74bd4a681b8', '', '2', '托运方发起合同异议提醒承运方', 'consign-contract-dissent', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方发起新的合同异议#dissentNo#，请注意查看。', '0', '2', '0', '2017-01-12 16:17:46', '1', 'sysNotice', '2017-01-12 16:17:46', '1', 'sysNotice'), ('8990694012fd459b99b4f43b7e1b0a17', null, '2', '平台注册成功信息审核通过', 'platform-member-pass', null, '尊敬的中联钢信#userName#会员，您的会员信息审核已通过。请注意查看。', '0', '2', '0', '2017-04-13 21:22:17', '1', 'sysNotice', '2017-04-13 21:22:17', '1', 'sysNotice'), ('89a56dbd6dd447c1b2a6037ea3709f39', '', '2', '基础信息认证审核结果，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'member-check-msg', '', '尊敬的中联钢信会员#userName#，您的会员信息审核已通过。请注意查看。', '0', '2', '0', '2017-01-12 14:38:10', '1', 'sysNotice', '2017-01-12 15:18:08', '1', 'sysNotice'), ('8b60571878dc4f1198ca5641fd1508cc', null, '2', '结算单司机运费结算失败通知承运方', 'carrier-delivery-drive-freight-fail', null, '尊敬的中联钢信#userName#会员，您的结算单#settlement#支付司机运费失败，请与#driver#线下结算。', '0', '2', '0', '2017-04-11 15:23:29', '1', 'sysNotice', '2017-04-11 16:09:22', '1', 'sysNotice'), ('8d4b3b92b028429bb3c61df706cbb3e0', '', '1', '托运方发起合同异议提醒承运方', 'consign-contract-dissent', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方发起新的合同异议#dissentNo#，请注意查看。', '0', '2', '0', '2017-01-12 16:17:46', '1', 'sysNotice', '2017-01-12 16:17:46', '1', 'sysNotice'), ('8f2496d6bb84467bb35d4bab323523b6', '', '1', '托运方上传结算单后提醒承运方确认', 'consign-send-settlement', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方有上传结算单#settlement#，请查看。', '0', '2', '0', '2017-01-12 16:08:55', '1', 'sysNotice', '2017-01-12 16:08:55', '1', 'sysNotice'), ('8f3948750eda42cc88f2dd59f784efdf', '', '2', '结算单驳回提醒托运方。', 'carrier-confirm-settlement-reject', '', '尊敬的中联钢信#userName#会员，结算单#settlement#，承运方已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:12:38', '1', 'sysNotice', '2017-01-12 16:12:38', '1', 'sysNotice'), ('9018c1ccefbc46dc9001dfb28161d108', null, '1', '资质审核通过后短信、站内信提示。', 'qualification-reject-msg', '审核驳回', '审核驳回：尊敬的中联钢信#userName#会员，您#qualification#没有审核通过。原因如下：#reason#', '0', '1', '0', '2017-01-12 09:46:13', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-03-16 19:54:19', '1', 'sysNotice'), ('916bd408962b4eb6ab3441bd11e2a8d0', '', '1', '竞价成交提醒中标的承运方（自动成交、选择成交）', 'bidding-reming-carrier-winning', '', '尊敬的中联钢信#userName#会员，您参与的竞价货源#sourceNo#，已中标请注意查看', '0', '2', '0', '2017-01-12 15:54:40', '1', 'sysNotice', '2017-01-12 15:54:40', '1', 'sysNotice'), ('93bd20bfdff949ea94ff04c3a7753dd3', '', '2', '承运方回复洽谈后提醒托运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'carrier-talk-reply', '', '尊敬的中联钢信#userName#会员，承运方#carrier#,已回复洽谈单#talkNo#，请注意查看。', '0', '2', '0', '2017-01-12 14:51:53', '1', 'sysNotice', '2017-01-12 14:51:53', '1', 'sysNotice'), ('940ba1eb567549b3924d27c6cb005a83', null, '2', '商品后台下架', 'goods-down-msg', null, '尊敬的中联钢信#userName#会员，您的商品#productNo#，已下架请注意查看。', '0', '1', '0', '2017-02-27 10:36:17', '1', 'sysNotice', '2017-02-27 10:36:17', '1', 'sysNotice'), ('949e69ec065e4a74aa01b294b5f9395b', null, '1', '买方会员购物车下单，卖方收到短信和站内信', 'confirm-order-msg', '确认订单', '尊敬的中联钢信#userName#会员，你的商品#productNo#，已有买家下单，请及时处理。', '0', '1', '0', '2017-01-12 09:51:29', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:51:29', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('9541dc8ff5cb45ddbbbaba5c57af1e04', null, '1', '会员信息审核驳回后发送短信及驳回的原因', 'info-check-fail-msg', '', '尊敬的中联钢信#userName#会员，您的会员信息审核驳回，原因为：#reason#', '0', '1', '0', '2017-03-16 20:12:47', '1', 'sysNotice', '2017-03-16 20:12:47', '1', 'sysNotice'), ('95d7223dc1c640c693ac7945397ced51', null, '1', '买方交收完成确认后，提示双方合同完成，请评价，短信和站内信。', 'delivery-confirm-msg', '确认交收完成', '尊敬的中联钢信#userName#会员，合同#contractNo#已完成，请评价。', '0', '1', '0', '2017-01-12 09:39:31', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:39:31', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('9618ab487b6147839841d4affa541363', null, '2', '入金成功后提示会员站内信和短信', 'charg-account-msg', null, '尊敬的中联钢信#userName#会员，您有一笔入金请注意查看。', '0', '1', '0', '2017-02-27 10:32:25', '1', 'sysNotice', '2017-02-27 10:32:25', '1', 'sysNotice'), ('96942892357143d5a48f35b717a2a1c9', null, '2', '非竞价模式，生成合同后，提示双方，短信和站内信。', 'contract-msg', null, '尊敬的中联钢信#userName#会员，您的订单#orderNo#合同已生成，请注意查看。', '0', '1', '0', '2017-01-12 09:21:14', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:21:14', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('9899083129d749de9fa1304c7068a6b5', '', '1', '竞价选择成交倒计时即将截止提醒托运方', 'choose-over-reming-consign', '', '尊敬的中联钢信#userName#会员，您的货源#sourceNo#,选择成交截止时间即将到期，请尽快处理。', '0', '2', '0', '2017-01-13 16:48:28', '1', 'sysNotice', '2017-01-13 16:48:28', '1', 'sysNotice'), ('98c70197329e4bf6a7c7ff944b8a4272', '', '2', '承运方确认运输完成后提醒托运方', 'carrier-confirm-settlement-over-for-consign', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，承运方已运输完成确认。请注意查看。', '0', '2', '0', '2017-01-12 16:14:27', '1', 'sysNotice', '2017-01-12 16:14:27', '1', 'sysNotice'), ('99dbe59a88ea4a3aa39787be9a8fd909', '', '1', '托运方预付款支付成功提醒承运方', 'consign-pay-fee-success', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方已支付运费，请查看。', '0', '2', '0', '2017-01-12 16:07:05', '1', 'sysNotice', '2017-01-12 16:07:05', '1', 'sysNotice'), ('9a73f7af4341484a95f441e5c6f3afff', '', '2', '托运方首次支付预付款提醒（双方都支付订单保证金后）', 'consign-first-pay-fee', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方#consign#，已支付运费，请查看。', '0', '2', '0', '2017-01-12 15:57:07', '1', 'sysNotice', '2017-01-12 15:57:07', '1', 'sysNotice'), ('9c91608d797643fdb80829310fb9776c', null, '2', '出金申请后台审核驳回发站内信和短信', 'out-account-fail-msg', null, '尊敬的中联钢信#userName#会员，您的出金审核被驳回，请注意查看。', '0', '1', '0', '2017-02-27 10:34:51', '1', 'sysNotice', '2017-02-27 10:34:51', '1', 'sysNotice'), ('9e9b31a5a22a41c5858150561ee38f58', '', '1', '竞价结束后提醒托运方选择成交', 'bidding-over-reming-consign', '', '尊敬的中联钢信#userName#会员，您发起的竞价货源#sourceNo#，竞价时间已到。请注意及时选择承运方承运。', '0', '2', '0', '2017-01-12 15:56:29', '1', 'sysNotice', '2017-01-12 15:56:29', '1', 'sysNotice'), ('9f527864de81400b9474ae8ce5510e31', null, '1', '出金申请后台审核驳回发站内信和短信', 'out-account-fail-msg', '出金申请后台审核驳回', '尊敬的中联钢信#userName#会员，您的出金审核被驳回，请注意查看。', '0', '1', '0', '2017-02-27 10:34:51', '1', 'sysNotice', '2017-02-27 10:34:51', '1', 'sysNotice'), ('a13130a5a4f64a0dbddc147acd504531', '', '1', '托运方回复洽谈后提醒承运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'consign-talk-reply', '', '尊敬的中联钢信#userName#会员，托运方#consign#,已回复您提交的洽谈单#talkNo#，请注意查看。', '0', '2', '0', '2017-01-12 14:50:25', '1', 'sysNotice', '2017-01-12 15:17:35', '1', 'sysNotice'), ('a2644bec0c6843f7821725c3913aeb5d', '', '2', '承运方发起合同异议提醒托运方', 'carrier-contract-dissent', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，承运方发起新的合同异议#dissentNo#，请注意查看。', '0', '2', '0', '2017-01-12 16:16:51', '1', 'sysNotice', '2017-01-12 16:16:51', '1', 'sysNotice'), ('a3aa57b732354a9498faa1cb003c9cf0', null, '2', '资金账户创建成功，请及时修改支付密码。', 'prompt-user-modify-paycode', null, '尊敬的中联钢信#userName#会员，请注意及时修改您的支付密码。', '1', '1', '0', '2017-02-15 13:50:47', '1', 'sysNotice', '2017-03-08 09:55:53', '1', 'sysNotice'), ('a6f11605f17d472a8141f73196768c9f', null, '1', '当买家进行下单后，提示双方进行签章', 'sign-send-msg', '买家提交订单', '尊敬的中联钢信#userName#会员，您有订单#orderNo# 生成，请注意及时签章。', '0', '1', '0', '2017-02-27 10:31:54', '1', 'sysNotice', '2017-02-27 10:31:54', '1', 'sysNotice'), ('a9b2aabbf6864f6389ad5734282ed6ee', '', '2', '承运方为订单支付保证金后提醒托运方', 'consign-pay-margin-after-carrier', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#,承运方已支付保证金，请查看。', '0', '2', '0', '2017-01-12 15:45:00', '1', 'sysNotice', '2017-01-12 15:45:00', '1', 'sysNotice'), ('ade924813609432195d3c50717cb9a4e', null, '2', '平台注册成功', 'platform-register-success', null, '尊敬的#userName#，欢迎您成为中联钢信用户会员.', '0', '2', '0', '2017-04-13 21:21:47', '1', 'sysNotice', '2017-04-13 21:21:47', '1', 'sysNotice'), ('b144f3ddb5554674b957008745c62ce7', null, '1', '交易平台买家进行洽谈，卖家接收短信和站内信', 'buyer-bargain-msg', '买家发起洽谈', '尊敬的中联钢信#userName#会员，您的可洽谈商品#productNo#已有买家发起洽谈，请注意查看回复。', '0', '1', '0', '2017-02-16 11:41:19', '1', 'sysNotice', '2017-02-16 11:41:19', '1', 'sysNotice'), ('b28f3b0f114c4943b158a4e765dd2037', '', '1', '竞价流标提醒托运方（自动成交）', 'bidding-fail-reming-consign', '', '尊敬的中联钢信#userName#会员，您发起的竞价货源#sourceNo#，已流标。请注意查看。', '0', '2', '0', '2017-01-12 15:55:54', '1', 'sysNotice', '2017-01-12 15:55:54', '1', 'sysNotice'), ('b87ba2b7e57c42a58cc79779a2a183b9', '', '2', '承运方终止洽谈后提醒托运方，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'carrier-talk-stop', '', '尊敬的中联钢信#userName#会员，承运方#carrier#,已终止洽谈单#talkNo#，请注意查看', '0', '2', '0', '2017-01-12 14:55:55', '1', 'sysNotice', '2017-01-12 15:14:53', '1', 'sysNotice'), ('b8a7121b113f489b8cdf9d77e75aa9e2', '', '2', '运输完成后提醒托运方/承运方评价', 'settlement-over-for-consign-carrier', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，已运输确认完成，请及时完成评价。', '0', '2', '0', '2017-01-12 16:15:55', '1', 'sysNotice', '2017-01-12 16:15:55', '1', 'sysNotice'), ('b9fc4a59bd2f45bb8dfcb5e18a9eaef2', null, '2', '交易平台买家进行洽谈，卖家接收短信和站内信', 'buyer-bargain-msg', null, '尊敬的中联钢信#userName#会员，您的可洽谈商品#productNo#已有买家发起洽谈，请注意查看回复。', '0', '1', '0', '2017-02-16 11:41:19', '1', 'sysNotice', '2017-02-16 11:41:19', '1', 'sysNotice'), ('bb01959a06aa44659bedf44a7e52b29a', null, '2', '平台注册成功提示修改支付密码', 'platform-update-pay-password', null, '尊敬的中联钢信#userName#会员，请注意及时修改您的支付密码。', '0', '2', '0', '2017-04-13 21:22:33', '1', 'sysNotice', '2017-04-13 21:22:33', '1', 'sysNotice'), ('bcb593769e9e42eeb3b6284ab0fb190d', null, '1', '买家报名竞价商品，提示卖家站内信和短信', 'bidding-apply-send-seller', '竞价报名', '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，有买家报名，请注意查看。', '0', '1', '0', '2017-02-16 19:17:50', '1', 'sysNotice', '2017-02-16 19:17:50', '1', 'sysNotice'), ('bdf698dd7b624a3ead3802ee592a4bec', null, '1', '买家报名竞价商品，提示双方站内信和短信', 'bidding-apply-send-buyer', '竞价报名', '尊敬的中联钢信#userName#会员，您已报名参与竞价商品#productNo#，请在竞价结束前报价。', '0', '1', '0', '2017-02-16 19:17:00', '1', 'sysNotice', '2017-02-16 19:17:00', '1', 'sysNotice'), ('be1306f6c413456697164c4fba769d25', '', '1', '托运方为订单支付保证金后提醒承运方', 'carrier-pay-margin-after-consign', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#,托运方已支付保证金，请查看。', '0', '2', '0', '2017-01-12 15:45:44', '1', 'sysNotice', '2017-01-12 15:45:44', '1', 'sysNotice'), ('befdb65baf3c45d19215c0a1e7cdd838', '', '2', '竞价开始提醒已报名的承运方', 'bidding-reming-carrier', '', '尊敬的中联钢信#userName#会员，您参与的竞价货源#sourceNo#，已开始，请注意查看。', '0', '2', '0', '2017-01-12 15:51:07', '1', 'sysNotice', '2017-01-12 15:51:07', '1', 'sysNotice'), ('bffec183113b42018db0d508edfd9428', '', '1', '资质认证审核结果，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'member-qualification-check-msg', '', '尊敬的中联钢信会员#userName#，您申请的会员资质审核已通过。请注意查看。', '0', '2', '0', '2017-01-12 14:39:11', '1', 'sysNotice', '2017-01-16 19:25:34', '1', 'sysNotice'), ('c0017dddb257404f8f46b479a69310a6', '', '1', '结算单结算失败提醒承运方', 'carrier-confirm-settlement-fail', '', '尊敬的中联钢信#userName#会员，结算单#settlement#，结算失败，请注意查看', '0', '2', '0', '2017-01-12 16:13:24', '1', 'sysNotice', '2017-01-12 16:13:24', '1', 'sysNotice'), ('c697eb680b1c4025ae148dae5f505bc6', null, '2', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-send-msg', null, '提出方：尊敬的中联钢信#userName#会员，您提出的异议#complaintNo#已发送成功。', '0', '1', '0', '2017-01-12 09:35:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:35:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('c6af7428ea4c4b2ba28e42f7356e535f', null, '1', '买方进行验货异议，提示双方站内信和短信', 'apply-contract-diffrent', '申请验货异议', '尊敬的中联钢信#userName#会员，您有验货异议单#complaintNo#，请注意查看。', '0', '1', '0', '2017-02-16 15:20:16', '1', 'sysNotice', '2017-02-16 15:20:16', '1', 'sysNotice'), ('c7304930bca74c28b51dd523c0d24839', '', '2', '托运方同意合同异议提醒承运方', 'consign-contract-dissent-agree', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，托运方已同意，请注意查看。', '0', '2', '0', '2017-01-12 16:21:14', '1', 'sysNotice', '2017-01-12 16:21:14', '1', 'sysNotice'), ('c7584ed3f3d9409c8c8fd45d47b7a2b9', '', '2', '提醒承运方确认运输完成', 'carrier-confirm-settlement-over', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方已发起运输完成确认，请您尽快处理。', '0', '2', '0', '2017-01-12 16:13:56', '1', 'sysNotice', '2017-01-12 16:13:56', '1', 'sysNotice'), ('c90a5b155f914402bce8cfb3fa368bbf', null, '1', '非竞价模式，生成合同后，提示双方，短信和站内信。', 'contract-msg', '同意支付', '尊敬的中联钢信#userName#会员，您的订单#orderNo#合同已生成，请注意查看。', '0', '1', '0', '2017-01-12 09:21:14', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:28:28', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('c90dfd0435c0415ca4f1cbee9ae20d50', '', '2', '托运方上传结算单后提醒承运方确认', 'consign-send-settlement', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方有上传结算单#settlement#，请查看。', '0', '2', '0', '2017-01-12 16:08:55', '1', 'sysNotice', '2017-01-12 16:08:55', '1', 'sysNotice'), ('c93d073ac15a4f6a894c97b5320a97a3', '', '1', '结算单结算成功提醒托运方', 'carrier-confirm-settlement-success', '', '尊敬的中联钢信#userName#会员，你发起的结算单#settlement#，承运方已确认，请查看。', '0', '2', '0', '2017-01-12 16:11:16', '1', 'sysNotice', '2017-01-12 16:11:16', '1', 'sysNotice'), ('ca4063b405734a2b9dce8e2059a23f07', null, '1', '入金成功后提示会员站内信和短信', 'charg-account-msg', '充值', '尊敬的中联钢信#userName#会员，您有一笔入金请注意查看。', '0', '1', '0', '2017-02-27 10:32:25', '1', 'sysNotice', '2017-02-27 10:32:25', '1', 'sysNotice'), ('ca75e51786e147abb1975adf721c462d', '', '1', '运输完成后提醒托运方/承运方评价', 'settlement-over-for-consign-carrier', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，已运输确认完成，请及时完成评价。', '0', '2', '0', '2017-01-12 16:15:55', '1', 'sysNotice', '2017-01-12 16:15:55', '1', 'sysNotice'), ('cae59b063b1542e4b80af137d3d154b2', '', '1', '承运方为订单支付保证金后提醒托运方', 'consign-pay-margin-after-carrier', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#,承运方已支付保证金，请查看。', '0', '2', '0', '2017-01-12 15:45:00', '1', 'sysNotice', '2017-01-12 15:45:00', '1', 'sysNotice'), ('cb4eaf7877a44b24bdf60dc6d90044d8', '', '2', '结算单结算失败提醒承运方', 'carrier-confirm-settlement-fail', '', '尊敬的中联钢信#userName#会员，结算单#settlement#，结算失败，请注意查看', '0', '2', '0', '2017-01-12 16:13:24', '1', 'sysNotice', '2017-01-12 16:13:24', '1', 'sysNotice'), ('cc2c5d11edb84f5c8cfcc92bdc76b83c', '', '1', '承运方确认运输完成后提醒托运方', 'carrier-confirm-settlement-over-for-consign', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，承运方已运输完成确认。请注意查看。', '0', '2', '0', '2017-01-12 16:14:27', '1', 'sysNotice', '2017-01-12 16:14:27', '1', 'sysNotice'), ('cd1d0b0febb94a4eb3bc312b0302bf89', '', '1', '测试bug', '1', '', '测试bug', '0', '2', '0', '2017-01-11 19:26:22', '1', 'sysNotice', '2017-01-11 19:26:22', '1', 'sysNotice'), ('ce69bc145ffb4b73a59afb786b8b13b6', null, '2', '竞价类商品后台审核通过/驳回后短信、站内信提示卖方。', 'bidding-audit-msg', null, '审核通过：尊敬的中联钢信#userName#会员，您提交的挂牌商品#productNo#，已通过审核。', '0', '1', '0', '2017-01-12 09:41:55', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:41:55', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('cf4da57a6ce6408c8c26ddb3ea84798a', '', '1', '结算单驳回提醒托运方。', 'carrier-confirm-settlement-reject', '', '尊敬的中联钢信#userName#会员，结算单#settlement#，承运方已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:12:38', '1', 'sysNotice', '2017-01-12 16:12:38', '1', 'sysNotice'), ('cfc91327eb1a4ec5b013fbfd957ce08f', '', '1', '一口价/洽谈订单付款倒计时即将截止提醒承运方/托运方', 'pay-order-countdown', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#,付款截止时间即将到期，请尽快处理。', '0', '2', '0', '2017-01-12 15:41:54', '1', 'sysNotice', '2017-01-12 15:41:54', '1', 'sysNotice'), ('d0e22b89cc7e4495a0770a868be5d689', null, '1', '后台冻结订单时，应给用户站内信及短息提醒', 'frezz-order-msg', '冻结订单', '尊敬的中联钢信#userName#会员，您有订单#orderNo# 已被管理员冻结，请及时查看', '0', '1', '0', '2017-02-22 10:49:14', '1', 'sysNotice', '2017-02-22 10:49:14', '1', 'sysNotice'), ('d0faea1ec6a143d5b3d30a9f9682c8a8', null, '2', '洽谈后，某方点击同意生成订单时提示卖家，已生成订单。', 'seller-bargain-agree-msg', null, '尊敬的中联钢信#userName#会员，您的可洽谈商品#productNo#，已有买家同意成交，已生成订单#orderNo#。请注意查看。', '0', '1', '0', '2017-02-16 15:30:59', '1', 'sysNotice', '2017-02-16 15:30:59', '1', 'sysNotice'), ('d3776680daa74c46851135dcd2caca7a', '', '2', '承运方驳回运输完成后的提醒托运方', 'settlement-over-for-consign-reject', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，承运方运输完成确认已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:15:07', '1', 'sysNotice', '2017-01-12 16:15:07', '1', 'sysNotice'), ('d40bd1e8712e41fba90d2fa9bb422abe', '', '1', '提醒承运方确认运输完成', 'carrier-confirm-settlement-over', '', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，托运方已发起运输完成确认，请您尽快处理。', '0', '2', '0', '2017-01-12 16:13:56', '1', 'sysNotice', '2017-01-12 16:13:56', '1', 'sysNotice'), ('d73d4e76c0d149dd92368ea09b63172a', null, '1', '站内信。', 'complaints-recive-msg', '系统消息', '提出方：尊敬的中联钢信#userName#会员，您提出的异议#complaintNo#已发送成功。', '0', '2', '1', '2017-01-11 16:43:44', '1', 'sysNotice', '2017-01-11 16:43:44', '1', 'sysNotice'), ('d74dd6549c3b427dbca3d4eb20a1b3f9', '', '1', '承运方同意合同异议提醒托运方', 'carrier-contract-dissent-agree', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，承运方已同意，请注意查看。', '0', '2', '0', '2017-01-12 16:18:26', '1', 'sysNotice', '2017-01-12 16:18:26', '1', 'sysNotice'), ('d7de85e08af04aad9a8f15ac0b63376c', null, '2', '买家验货确认后提示卖家验货成功再次上传交收单或发起交收完成确认', 'buy-commit-recive-goods-msg', null, '尊敬的中联钢信#userName#会员，您的订单#orderNo#，买家已确认验货，请您继续上传交收单或发起交收完成确认。', '0', '1', '0', '2017-02-27 10:35:31', '1', 'sysNotice', '2017-02-27 10:35:31', '1', 'sysNotice'), ('def7da7f6f654111ab485b6e27c26cb1', null, '1', '卖方提交交收单后，提示买方，短信和站内信。', 'delivery-msg', '提交', '尊敬的中联钢信#userName#会员，您有交收单#deliveryNo#待确认，请及时处理。', '0', '1', '0', '2017-01-12 09:38:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:38:36', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('df86f5fd354e41b7a382d7f962f717ba', null, '2', '交易平台买家进行洽谈回复，卖家接收短信和站内信', 'buyer-bargain-for-seller-msg', null, '尊敬的中联钢信#userName#会员，您的可洽谈商品#productNo#买家已回复，请注意查看。', '0', '1', '0', '2017-03-16 20:13:49', '1', 'sysNotice', '2017-03-16 20:13:49', '1', 'sysNotice'), ('e105bdd28fc1419cb5722f851679628b', '', '2', '竞价结束后提醒托运方选择成交', 'bidding-over-reming-consign', '', '尊敬的中联钢信#userName#会员，您发起的竞价货源#sourceNo#，竞价时间已到。请注意及时选择承运方承运。', '0', '2', '0', '2017-01-12 15:56:29', '1', 'sysNotice', '2017-01-12 15:56:29', '1', 'sysNotice'), ('e1d5600b72c343888d1112f7902ba106', '', '1', '承运方驳回合同异议提醒托运方', 'carrier-contract-dissent-reject', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，承运方已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:21:49', '1', 'sysNotice', '2017-01-12 16:21:49', '1', 'sysNotice'), ('e1ee14a668fe4345abd94e44d601c2a2', null, '1', '交易平台卖家进行洽谈回复，买家接收短信和站内信', 'seller-bargain-for-buyer-msg', '', '尊敬的中联钢信#userName#会员，您洽谈的商品#productNo#卖家已回复，请注意查看。', '0', '1', '0', '2017-03-16 20:14:11', '1', 'sysNotice', '2017-03-16 20:14:11', '1', 'sysNotice'), ('e2d9792837d0469fa1de3f9d901f03f6', '', '2', '资质认证审核结果，主账号、所有子账号的手机号码（会员设为不允许接收的除外）', 'member-qualification-check-msg', '', '尊敬的中联钢信会员#userName#，您申请的会员资质审核已通过。请注意查看。', '0', '2', '0', '2017-01-12 14:39:11', '1', 'sysNotice', '2017-01-12 15:17:07', '1', 'sysNotice'), ('e5474744b38247fc99cadf574db5d4a9', '', '2', '竞价流标提醒托运方（自动成交）', 'bidding-fail-reming-consign', '', '尊敬的中联钢信#userName#会员，您发起的竞价货源#sourceNo#，已流标。请注意查看。', '0', '2', '0', '2017-01-12 15:55:54', '1', 'sysNotice', '2017-01-12 15:55:54', '1', 'sysNotice'), ('e57dd52b573743c78d2cb93c08719c61', '', '1', '短信验证码', 'checkcode-msg', '', '您本次验证码为#checkcode#，如不是本人请忽略。', '0', '', '0', '2017-01-12 18:02:20', '1', 'sysNotice', '2017-01-16 19:25:27', '1', 'sysNotice'), ('e8abb39c460c4fba924faa160c3b7793', null, '2', '竞价商品审核结果，卖家接收站内信和短信', 'bidding-goods-check-over', null, '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，审核通过，已上架。', '0', '1', '0', '2017-02-16 19:16:12', '1', 'sysNotice', '2017-02-16 19:16:12', '1', 'sysNotice'), ('e8e8e71dd9b54916ab3142eed9c03ddb', '', '1', '找回密码发送短信验证码', 'recive-verification-msg', '', '尊敬的中联钢信会员#userName#，您本次的短信验证码为：#checkcode#，请注意查收，如不是您本人，请忽视。', '1', '', '0', '2017-01-12 14:35:55', '1', 'sysNotice', '2017-03-15 13:54:21', '1', 'sysNotice'), ('ec04a992e9634644ac5e67d6cee1fb8d', '', '2', '托运方驳回合同异议提醒承运方', 'consign-contract-dissent-reject', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，托运方已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:22:21', '1', 'sysNotice', '2017-01-12 16:22:21', '1', 'sysNotice'), ('ef7b0337688141fba8eed6a974be5009', null, '2', '买家签章完成后，提示卖家签章', 'confirm-seller-signature', null, '尊敬的中联钢信#userName#会员，您的销售订单#orderNo#买家已签章，请您注意及时签章。', '0', '1', '0', '2017-02-15 13:43:15', '1', 'sysNotice', '2017-02-15 13:43:15', '1', 'sysNotice'), ('f140f075ac8b44b08ad1bc94bcbc214f', null, '2', '竞价商品结束时，卖方接收站内信和短信', 'bidding-over-send-seller', null, '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，已竞价结束生成订单#orderNo#，请注意查看', '0', '1', '0', '2017-02-16 19:19:18', '1', 'sysNotice', '2017-02-16 19:19:18', '1', 'sysNotice'), ('f32ad320ddd34a3cb2fc07151b4b2f7f', null, '1', '买方付款后，提示卖方，短信和站内信。', 'pay-msg', '同意支付', '尊敬的中联钢信#userName#会员，您的订单#orderNo#买家已付款，请注意查收。', '0', '1', '0', '2017-01-12 09:36:45', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:36:45', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('f543117ab8b346b88983e52cfc774f5a', null, '2', '买方进行验货异议，提示双方站内信和短信', 'apply-contract-diffrent', null, '尊敬的中联钢信#userName#会员，您有验货异议单#complaintNo#，请注意查看。', '0', '1', '0', '2017-02-16 15:20:16', '1', 'sysNotice', '2017-02-16 15:20:16', '1', 'sysNotice'), ('f54abb296cc8464b9d84685a8f3660d1', null, '1', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-send-msg', '申请合同异议', '提出方：尊敬的中联钢信#userName#会员，您提出的异议#complaintNo#已发送成功。', '0', '1', '1', '2017-01-12 09:28:07', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:28:07', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('f5bdcd35df4442dd9916a1bd8531f62c', null, '1', '买家验货确认后提示卖家验货成功再次上传交收单或发起交收完成确认', 'buy-commit-recive-goods-msg', '验货确认', '尊敬的中联钢信#userName#会员，您的订单#orderNo#，买家已确认验货，请您继续上传交收单或发起交收完成确认。', '0', '1', '0', '2017-02-27 10:35:31', '1', 'sysNotice', '2017-02-27 10:35:31', '1', 'sysNotice'), ('f5dd0932f0a24969af1190a2e48dfb72', null, '1', '竞价商品结束时，没有成交卖方接收站内信和短信', 'bidding-over-no-buyer-send-seller', '竞价结束没有撮合成交生成订单', '尊敬的中联钢信#userName#会员，您的竞价商品#productNo#，已竞价结束，没有撮合成交的订单。请查看。', '0', '1', '0', '2017-02-16 19:19:55', '1', 'sysNotice', '2017-02-16 19:19:55', '1', 'sysNotice'), ('f62a4197b7f147fea4ec5722703fe3b7', '', '1', '托运方同意合同异议提醒承运方', 'consign-contract-dissent-agree', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，托运方已同意，请注意查看。', '0', '2', '0', '2017-01-12 16:21:14', '1', 'sysNotice', '2017-01-12 16:21:14', '1', 'sysNotice'), ('f789e61b3c284fd1b5b2ebce6880baf1', null, '1', '竞价类商品后台审核通过/驳回后短信、站内信提示卖方。', 'bidding-audit-msg', '审核通过', '审核通过：尊敬的中联钢信#userName#会员，您提交的挂牌商品#productNo#，已通过审核。', '0', '1', '0', '2017-01-12 09:41:55', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:41:55', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('f84b8b8309b341aeab26f6cdae9d8764', null, '1', '竞价类商品后台审核通过/驳回后短信、站内信提示卖方。', 'bidding-reject-msg', '审核驳回', '审核驳回：尊敬的中联钢信#userName#会员，您提交的挂牌商品#productNo#，已审核驳回。', '0', '1', '0', '2017-01-12 09:43:02', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:43:02', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('f8e0d3652f874b6f97c057e858dc8109', null, '2', '会员信息审核驳回后发送短信及驳回的原因', 'info-check-fail-msg', null, '尊敬的中联钢信#userName#会员，您的会员信息审核驳回，原因为：#reason#', '0', '1', '0', '2017-03-16 20:12:47', '1', 'sysNotice', '2017-03-16 20:12:47', '1', 'sysNotice'), ('f97b682c95b04b24b516ceec1c2f23c3', '', '1', '托运方发盘，后台驳回，发送短信和站内信', 'source-reject-msg', '', '尊敬的中联钢信#userName#会员，您提交的挂牌货源#sourceNo#，已审核驳回，原因：#auditOpinion#。', '0', '2', '0', '2017-01-12 14:47:16', '1', 'sysNotice', '2017-01-12 14:47:16', '1', 'sysNotice'), ('fa2a6d0ee5dc45a1955c3182f464239a', '', '1', '托运方驳回合同异议提醒承运方', 'consign-contract-dissent-reject', '', '尊敬的中联钢信#userName#会员，您对订单#orderNo#发起的合同异议#dissentNo#，托运方已驳回，请注意查看。', '0', '2', '0', '2017-01-12 16:22:21', '1', 'sysNotice', '2017-01-12 16:22:21', '1', 'sysNotice'), ('fa3578427b6e4d58aa210ac2c3307961', null, '2', '任一方提出解除合同/异议后，提示双方，短信和站内信。', 'complaints-recive -msg', null, '接收方：尊敬的中联钢信#userName#会员，您有待处理异议#complaintNo#，请及时处理。', '0', '1', '1', '2017-01-12 09:33:19', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice', '2017-01-12 09:33:19', '3af82b616ce44a6a98cd78506ac41bd6', 'sysNotice'), ('fbf4ab865a6846c5bc400a9ad287e31a', null, '1', '出金申请后台审核成功发站内信和短信', 'out-account-success-msg', '出金申请后台审核成功', '尊敬的中联钢信#userName#会员，您的出金审核已通过，请注意查看。', '0', '1', '0', '2017-02-27 10:32:57', '1', 'sysNotice', '2017-02-27 10:32:57', '1', 'sysNotice'), ('fc6ce1234c604f1694951d07a0b84f5d', null, '1', '资金账户创建成功，请及时修改支付密码。', 'prompt-user-modify-paycode', '系统消息', '尊敬的中联钢信#userName#会员，请注意及时修改您的支付密码。', '0', '1', '0', '2017-02-15 13:50:47', '1', 'sysNotice', '2017-02-15 13:50:47', '1', 'sysNotice'), ('fd3dd2d82c25408386c32933bd7ecae6', null, '2', '洽谈后，某方点击同意生成订单时提示买家，已生成订单。', 'buyer-bargain-agree-msg', null, '尊敬的中联钢信#userName#会员，您发起的洽谈商品#productNo#，卖家同意成交，已生成订单#orderNo#。请注意查看并及时付款。', '0', '1', '0', '2017-02-16 15:32:02', '1', 'sysNotice', '2017-02-16 15:32:02', '1', 'sysNotice'), ('ff3a36e6d0c84193a757be8b3b1b8bf6', '', '1', '承运方提交订单后提醒托运方及时支付保证金', 'consign-pay-margin', '', '尊敬的中联钢信#userName#会员，您有新的订单#orderNo#,请您尽快支付保证金。', '0', '2', '0', '2017-01-12 15:40:20', '1', 'sysNotice', '2017-01-12 15:40:52', '1', 'sysNotice');
COMMIT;

-- ----------------------------
--  Table structure for `test_data`
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务数据表';

-- ----------------------------
--  Table structure for `test_data_child`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `test_data_main_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务数据子表';

-- ----------------------------
--  Table structure for `test_data_main`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_main`;
CREATE TABLE `test_data_main` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务数据表';

-- ----------------------------
--  Table structure for `test_tree`
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='树结构表';

SET FOREIGN_KEY_CHECKS = 1;
