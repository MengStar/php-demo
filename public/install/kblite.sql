/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : kblite

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-01-04 11:10:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ykb_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_group`;
CREATE TABLE `ykb_admin_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `base_purview` text,
  `menu_purview` text,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台管理组';

-- ----------------------------
-- Records of ykb_admin_group
-- ----------------------------
INSERT INTO `ykb_admin_group` VALUES ('1', '管理员', null, null, '1');
INSERT INTO `ykb_admin_group` VALUES ('3', '测试', null, '10,11,12,164,20,21,22,30,301,302,40,31,34,32,33,50,51,52,53,54,55,63,60,62,165,166,167,168,169,170,171,172', '1');
INSERT INTO `ykb_admin_group` VALUES ('4', '测试2', null, '10,11,12,164,20,21,22,30,301,302', '1');

-- ----------------------------
-- Table structure for ykb_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_log`;
CREATE TABLE `ykb_admin_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `app` varchar(250) DEFAULT '1',
  `content` text,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台操作记录';

-- ----------------------------
-- Records of ykb_admin_log
-- ----------------------------
INSERT INTO `ykb_admin_log` VALUES ('1', '0', '1515035194', '::1', 'admin', '登录系统');

-- ----------------------------
-- Table structure for ykb_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_menu`;
CREATE TABLE `ykb_admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '父级菜单id',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(500) DEFAULT NULL COMMENT '菜单链接地址',
  `act` text COMMENT '操作',
  `iconfont` varchar(255) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '50' COMMENT '排序',
  `lang_id` int(11) DEFAULT '1' COMMENT '语言id',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态1开启2关闭',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_admin_menu
-- ----------------------------
INSERT INTO `ykb_admin_menu` VALUES ('10', '0', '首页', '', '', '#xe610;', '1', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('11', '10', '管理首页', '/admin/index/home.html', '{\"1\":{\"name\":\"\\u9996\\u9875\",\"act\":\"admin_index_home\"}}', '#xe64c;', '1', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('12', '10', '后台菜单', '/admin/admin_menu/index.html', '{\"1\":{\"name\":\"\\u5217\\u8868\",\"act\":\"admin_admin_menu_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u83dc\\u5355\",\"act\":\"admin_admin_menu_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\\u83dc\\u5355\",\"act\":\"admin_admin_menu_info_id\"},\"5\":{\"name\":\"\\u5220\\u9664\",\"act\":\"admin_admin_menu_del\"}}', '#xe635;', '2', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('20', '0', '内容', '', '', '#xe637;', '2', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('21', '20', '栏目管理', '/kbcms/admin_category/index.html', '{\"1\":{\"name\":\"\\u680f\\u76ee\\u5217\\u8868\",\"act\":\"kbcms_admin_category_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u9875\\u9762\\u680f\\u76ee\",\"act\":\"page_admin_category_info\"},\"3\":{\"name\":\"\\u4fee\\u6539\\u9875\\u9762\\u680f\\u76ee\",\"act\":\"page_admin_category_info_id\"},\"4\":{\"name\":\"\\u5220\\u9664\\u9875\\u9762\\u680f\\u76ee\",\"act\":\"page_admin_category_del\"},\"5\":{\"name\":\"\\u6dfb\\u52a0\\u6587\\u7ae0\\u680f\\u76ee\",\"act\":\"article_admin_category_info\"},\"6\":{\"name\":\"\\u4fee\\u6539\\u6587\\u7ae0\\u680f\\u76ee\",\"act\":\"article_admin_category_info_id\"},\"7\":{\"name\":\"\\u5220\\u9664\\u6587\\u7ae0\\u680f\\u76ee\",\"act\":\"article_admin_category_del\"}}', '#xe635;', '1', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('22', '20', '文章管理', '/article/admin_content/index.html', '{\"1\":{\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"act\":\"article_admin_content_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u6587\\u7ae0\",\"act\":\"article_admin_content_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\\u6587\\u7ae0\",\"act\":\"article_admin_content_info_id\"},\"4\":{\"name\":\"\\u5220\\u9664\\u6587\\u7ae0\",\"act\":\"article_admin_content_del\"}}', '#xe62a;', '2', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('30', '0', '表单', '', '', '#xe64a;', '3', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('40', '0', '功能', '', '', '#xe637;', '4', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('31', '40', '碎片管理', '/kbcms/admin_fragment/index.html', '{\"1\":{\"name\":\"\\u788e\\u7247\\u5217\\u8868\",\"act\":\"kbcms_admin_fragment_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u788e\\u7247\",\"act\":\"kbcms_admin_fragment_info\"},\"3\":{\"name\":\"\\u4fee\\u6539\\u788e\\u7247\",\"act\":\"kbcms_admin_fragment_info_fragment_id\"},\"4\":{\"name\":\"\\u5220\\u9664\\u788e\\u7247\",\"act\":\"kbcms_admin_fragment_del\"}}', '#xe611;', '1', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('32', '40', '推荐位管理', '/kbcms/admin_position/index.html', '{\"1\":{\"name\":\"\\u63a8\\u8350\\u4f4d\\u5217\\u8868\",\"act\":\"kbcms_admin_position_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u63a8\\u8350\\u4f4d\",\"act\":\"kbcms_admin_position_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"kbcms_admin_position_info_position_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"kbcms_admin_position_del\"}}', '#xe62a;', '3', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('33', '40', '扩展模型管理', '/kbcms/admin_expand/index.html', '{\"1\":{\"name\":\"\\u6a21\\u578b\\u5217\\u8868\",\"act\":\"kbcms_admin_expand_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u6a21\\u578b\",\"act\":\"kbcms_admin_expand_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"kbcms_admin_expand_info_fieldset_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"kbcms_admin_expand_del\"},\"5\":{\"name\":\"\\u7ba1\\u7406\",\"act\":\"kbcms_admin_expand_field_index_fieldset_id\"}}', '#xe62a;', '4', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('34', '40', '表单管理', '/kbcms/admin_form/index.html', '{\"1\":{\"name\":\"\\u8868\\u5355\\u5217\\u8868\",\"act\":\"kbcms_admin_form_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u8868\\u5355\",\"act\":\"kbcms_admin_form_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"kbcms_admin_form_info_fieldset_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"kbcms_admin_form_del\"},\"5\":{\"name\":\"\\u7ba1\\u7406\",\"act\":\"kbcms_admin_form_field_index_fieldset_id\"}}', '#xe62a;', '2', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('50', '0', '系统', '', '', '#xe646;', '5', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('51', '50', '系统设置', '/admin/setting/site.html', '{\"1\":{\"name\":\"\\u7ad9\\u70b9\\u4fe1\\u606f\",\"act\":\"admin_setting_site\"},\"2\":{\"name\":\"\\u6a21\\u677f\\u8bbe\\u7f6e\",\"act\":\"admin_setting_tpl\"},\"3\":{\"name\":\"\\u624b\\u673a\\u8bbe\\u7f6e\",\"act\":\"admin_setting_mobile\"}}', '#xe689;', '1', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('52', '50', '后台用户', '/admin/admin_user/index.html', '{\"1\":{\"name\":\"\\u7528\\u6237\\u5217\\u8868\",\"act\":\"admin_admin_user_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u7528\\u6237\",\"act\":\"admin_admin_user_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"admin_admin_user_info_user_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"admin_admin_user_del\"}}', '#xe672;', '2', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('53', '50', '后台用户组', '/admin/admin_user_group/index.html', '{\"1\":{\"name\":\"\\u7528\\u6237\\u7ec4\\u5217\\u8868\",\"act\":\"admin_admin_user_group_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u7528\\u6237\\u7ec4\",\"act\":\"admin_admin_user_group_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"admin_admin_user_group_info_group_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"admin_admin_user_group_del\"},\"5\":{\"name\":\"\\u6743\\u9650\",\"act\":\"admin_admin_user_group_purview_group_id\"}}', '#xe668;', '3', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('54', '50', '会员管理', '/admin/user/index.html', '{\"1\":{\"name\":\"\\u4f1a\\u5458\\u5217\\u8868\",\"act\":\"admin_user_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u4f1a\\u5458\",\"act\":\"admin_user_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"admin_user_info_user_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"admin_user_del\"}}', '#xe608;', '4', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('55', '50', '会员类型', '/admin/user_type/index.html', '{\"1\":{\"name\":\"\\u4f1a\\u5458\\u7c7b\\u578b\\u5217\\u8868\",\"act\":\"admin_user_type_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u4f1a\\u5458\\u7c7b\\u578b\",\"act\":\"admin_user_type_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"admin\\/user_type\\/info\\/type_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"admin_user_type_del\"}}', '#xe630;', '5', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('56', '50', '语言管理', '/admin/lang/index.html', '{\"1\":{\"name\":\"\\u8bed\\u8a00\\u5217\\u8868\",\"act\":\"admin_lang_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u8bed\\u8a00\",\"act\":\"admin_lang_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\",\"act\":\"admin_lang_info_lang_id\"},\"4\":{\"name\":\"\\u5220\\u9664\",\"act\":\"admin_lang_del\"}}', '#xe60e;', '6', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('13', '10', '导航管理', '/admin/nav/index', '{\"1\":{\"name\":\"\\u5bfc\\u822a\\u5217\\u8868\",\"act\":\"admin_nav_index\"},\"2\":{\"name\":\"\\u6dfb\\u52a0\\u5bfc\\u822a\",\"act\":\"admin_nav_info\"},\"3\":{\"name\":\"\\u7f16\\u8f91\\u5bfc\\u822a\",\"act\":\"admin_nav_info_nav_id\"},\"4\":{\"name\":\"\\u5220\\u9664\\u5bfc\\u822a\",\"act\":\"admin_nav_del\"},\"5\":{\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"act\":\"admin_nav_menu_index_nav_id\"}}', '#xe634;', '3', '1', '1');

-- ----------------------------
-- Table structure for ykb_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_user`;
CREATE TABLE `ykb_admin_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户IP',
  `group_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户组ID',
  `username` varchar(20) NOT NULL COMMENT '登录名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `nicename` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `level` int(5) DEFAULT '1' COMMENT '等级',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT '未知' COMMENT '登录IP',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`),
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Records of ykb_admin_user
-- ----------------------------
INSERT INTO `ykb_admin_user` VALUES ('1', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '529988248@qq.com', '1', '1', '1399361747', '1515035193', '::1');
INSERT INTO `ykb_admin_user` VALUES ('2', '4', 'zz52998', 'e10adc3949ba59abbe56e057f20f883e', '测试管理', '529988248@qq.com', '1', '1', null, '1504591832', '::1');
INSERT INTO `ykb_admin_user` VALUES ('3', '4', '654321', '96e79218965eb72c92a549dd5a330112', '123456', '1111112111@qq.com', '1', '1', null, null, '未知');

-- ----------------------------
-- Table structure for ykb_category
-- ----------------------------
DROP TABLE IF EXISTS `ykb_category`;
CREATE TABLE `ykb_category` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT '0',
  `app` varchar(20) DEFAULT NULL,
  `show` tinyint(1) unsigned DEFAULT '1',
  `sequence` int(10) DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '1',
  `name` varchar(250) DEFAULT NULL,
  `urlname` varchar(250) DEFAULT NULL,
  `subname` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `class_tpl` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `upload_config` int(10) DEFAULT '1',
  `out_url` varchar(255) DEFAULT NULL COMMENT '网站外链',
  `target` tinyint(1) DEFAULT '0' COMMENT '当前窗口1否0是',
  `lang_id` int(11) DEFAULT '1' COMMENT '语言id 默认中文1',
  PRIMARY KEY (`class_id`),
  KEY `pid` (`parent_id`),
  KEY `mid` (`app`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='栏目基础信息';

-- ----------------------------
-- Records of ykb_category
-- ----------------------------
INSERT INTO `ykb_category` VALUES ('20', '0', 'page', '1', '2', '1', '关于我们', 'guanyuwomen', '', '/uploads/admin/20170419/8cb36838cc73b0bfdceff8f2c043b743.jpg', 'page', '', '徽隆公司2010年创立于上海市松江区，这里历史悠久,历史上曾有“苏（苏州府）松（松江府）财赋半天下”之美誉；这里风景秀丽，名胜众多，有“唐宋元明清，从古至今“之誉，这里交通便利，地理位置特殊而重要。', '1', '', '0', '1');
INSERT INTO `ykb_category` VALUES ('59', '0', 'article', '1', '1', '1', '新闻资讯', '', '', '', 'list', '', '', '1', '', '0', '1');
INSERT INTO `ykb_category` VALUES ('65', '0', 'article', '1', '1', '1', 'News', '', '', '', 'list', '', '', '1', '', '0', '2');
INSERT INTO `ykb_category` VALUES ('66', '0', 'page', '1', '2', '1', 'About us', '', '', '', 'page', '', '', '1', null, '0', '2');

-- ----------------------------
-- Table structure for ykb_category_article
-- ----------------------------
DROP TABLE IF EXISTS `ykb_category_article`;
CREATE TABLE `ykb_category_article` (
  `class_id` int(10) NOT NULL,
  `fieldset_id` int(10) NOT NULL,
  `content_tpl` varchar(250) NOT NULL,
  `config_upload` text,
  `content_order` varchar(250) NOT NULL,
  `page` int(10) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章栏目信息';

-- ----------------------------
-- Records of ykb_category_article
-- ----------------------------
INSERT INTO `ykb_category_article` VALUES ('59', '3', 'content', '', 'time DESC', '10');
INSERT INTO `ykb_category_article` VALUES ('61', '0', 'content', null, '', '10');
INSERT INTO `ykb_category_article` VALUES ('65', '0', 'content', null, '', '10');

-- ----------------------------
-- Table structure for ykb_category_page
-- ----------------------------
DROP TABLE IF EXISTS `ykb_category_page`;
CREATE TABLE `ykb_category_page` (
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COMMENT '内容',
  KEY `cid` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单页栏目信息';

-- ----------------------------
-- Records of ykb_category_page
-- ----------------------------
INSERT INTO `ykb_category_page` VALUES ('20', '<p>\n	1kbcms是一款基于thinkphp5.0开发，为小型企业建站，灵活组装开发的管理系统。&nbsp;\n</p>\n<p>\n	1kbcms完全开放源代码，具有良好的开放性、高可扩展性、安全性和透明性，您可以进行二次开发以满足自身需求；\n</p>\n<p>\n	1kbcms内容管理系统采用thinkphp5.0开发，目前核心为5.0.10，\n</p>\n<p>\n	作为一个cms管理系统，方便企业建站，可以自由修改后台文章字段，前台显示，便于客户后期的种种需求变更，系统未完善，制作中..\n</p>');
INSERT INTO `ykb_category_page` VALUES ('60', '123123');
INSERT INTO `ykb_category_page` VALUES ('66', '1kbcms is a management system based on thinkphp5.0 development for small enterprises and flexible assembly and development.<br />\n1kbcms fully open source code, with good openness, high scalability, security and transparency, you can carry out two development to meet their own needs;<br />\n1kbcms content management system using thinkphp5.0 development, the current core is 5.0.10,<br />\nAs a CMS management system, to facilitate enterprise building site, you can freely modify the background of the field, the front desk display, easy to customer changes in the later period of demand, the system is not perfect, the production of..');

-- ----------------------------
-- Table structure for ykb_config
-- ----------------------------
DROP TABLE IF EXISTS `ykb_config`;
CREATE TABLE `ykb_config` (
  `name` varchar(250) NOT NULL,
  `data` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of ykb_config
-- ----------------------------
INSERT INTO `ykb_config` VALUES ('site_title', '网站管理');
INSERT INTO `ykb_config` VALUES ('site_subtitle', '网站管理副标题');
INSERT INTO `ykb_config` VALUES ('site_url', '');
INSERT INTO `ykb_config` VALUES ('site_keywords', '网站管理关键词');
INSERT INTO `ykb_config` VALUES ('site_description', '网站管理站点描述');
INSERT INTO `ykb_config` VALUES ('site_email', '529988248@qq.com');
INSERT INTO `ykb_config` VALUES ('site_copyright', '12322');
INSERT INTO `ykb_config` VALUES ('site_statistics', '测试2222');
INSERT INTO `ykb_config` VALUES ('tpl_name', 'default');
INSERT INTO `ykb_config` VALUES ('tpl_index', 'index');
INSERT INTO `ykb_config` VALUES ('tpl_search', 'search');
INSERT INTO `ykb_config` VALUES ('tpl_tags', 'tag');
INSERT INTO `ykb_config` VALUES ('mobile_status', '2');
INSERT INTO `ykb_config` VALUES ('mobile_tpl', 'mobile');
INSERT INTO `ykb_config` VALUES ('mobile_domain', '');
INSERT INTO `ykb_config` VALUES ('lang_open', '1');
INSERT INTO `ykb_config` VALUES ('lang_id', '1');

-- ----------------------------
-- Table structure for ykb_config_upload
-- ----------------------------
DROP TABLE IF EXISTS `ykb_config_upload`;
CREATE TABLE `ykb_config_upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `upload_size` int(10) NOT NULL,
  `upload_exts` varchar(250) DEFAULT NULL,
  `upload_replace` tinyint(1) DEFAULT NULL,
  `thumb_status` tinyint(1) DEFAULT NULL,
  `water_status` tinyint(1) DEFAULT NULL,
  `thumb_type` tinyint(1) DEFAULT NULL,
  `thumb_width` int(10) DEFAULT NULL,
  `thumb_height` int(10) DEFAULT NULL,
  `water_image` varchar(250) DEFAULT NULL,
  `water_position` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of ykb_config_upload
-- ----------------------------
INSERT INTO `ykb_config_upload` VALUES ('1', '默认', '10', 'jpg,gif,bmp,png', '0', '0', '0', '1', '800', '800', 'logo.jpg', '1');

-- ----------------------------
-- Table structure for ykb_content
-- ----------------------------
DROP TABLE IF EXISTS `ykb_content`;
CREATE TABLE `ykb_content` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `class_id` int(10) DEFAULT NULL COMMENT '栏目ID',
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `urltitle` varchar(250) DEFAULT NULL COMMENT 'URL路径',
  `font_color` varchar(250) DEFAULT NULL COMMENT '颜色',
  `font_bold` tinyint(1) DEFAULT NULL COMMENT '加粗',
  `font_em` tinyint(1) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL COMMENT '关键词',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `time` int(10) DEFAULT NULL COMMENT '更新时间',
  `image` varchar(250) DEFAULT NULL COMMENT '封面图',
  `url` varchar(250) DEFAULT NULL COMMENT '跳转',
  `out_url` varchar(255) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT '1' COMMENT '状态',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `views` int(10) DEFAULT '0' COMMENT '浏览数',
  `taglink` int(10) DEFAULT '0' COMMENT 'TAG链接',
  `tpl` varchar(250) DEFAULT NULL,
  `site` int(10) DEFAULT '1',
  `target` tinyint(1) DEFAULT '0' COMMENT '当前窗口1否0是',
  PRIMARY KEY (`content_id`),
  KEY `title` (`title`) USING BTREE,
  KEY `description` (`description`(255)) USING BTREE,
  KEY `keywords` (`keywords`),
  KEY `class_id` (`class_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='内容基础';

-- ----------------------------
-- Records of ykb_content
-- ----------------------------
INSERT INTO `ykb_content` VALUES ('133', '59', '守得初心自清宁，扪心无愧如坦途', '', null, null, null, '1', null, '阿萨达', '1497231583', '', '', null, '0', '1', null, '55', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('134', '59', '任岁月变迁，我心不惊', '', null, null, null, null, null, '', '1497259707', '', '', null, '0', '1', null, '11', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('137', '59', '时光且长，一切都来得及', '', null, null, null, '2', null, '', '1497259621', '', '', null, '0', '1', null, '8', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('138', '59', '不殆时间，不负自己', '', null, null, null, null, null, '', '1497259940', '', '', null, '0', '1', null, '17', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('139', '59', '相遇文字，相遇你', '', null, null, null, null, null, '', '1501662959', null, '', null, '0', '1', null, '29', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('140', '65', 'Meets the character, meets you', '', null, null, null, null, null, '', '1502180876', '', '', null, '0', '1', null, '2', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('141', '65', 'Not dangerous time, not their own negative', '', null, null, null, null, null, '', '1502181023', '', '', null, '0', '1', null, '0', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('142', '65', 'Let the years change, my heart is not surprised', '', null, null, null, null, null, '', '1502181147', '', '', null, '0', '1', null, '1', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('143', '65', 'Time and long, everything is in time', '', null, null, null, null, null, '', '1502181264', '', '', null, '0', '1', null, '0', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('144', '65', 'Keep the heart from the early Qing Ling, such as to have a clear conscience', '', null, null, null, null, null, '', '1502181334', '', '', null, '0', '1', null, '5', '0', '', '1', '0');

-- ----------------------------
-- Table structure for ykb_content_article
-- ----------------------------
DROP TABLE IF EXISTS `ykb_content_article`;
CREATE TABLE `ykb_content_article` (
  `content_id` int(10) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容信息';

-- ----------------------------
-- Records of ykb_content_article
-- ----------------------------
INSERT INTO `ykb_content_article` VALUES ('133', '&nbsp; &nbsp; &nbsp; 闲来无事，常常流连于浩渺如宇宙的网络世界去浏览赏读那些文学大家或者是妙手之笔用心倾注的“真迹墨宝”。也许是因为懒，自觉得，如今这样的浏览阅读方式远胜于翻看纸质图书的经济了。启动电脑，打开浏览器，便如同走进一家无边无际的世界级的图书馆：文豪名家、古今中外、天文地理、经史子集、人文历史、奇趣轶闻等等等等，无所不包、无所不有，与此，十万分地感慨当代科学技术的发达，网络的奇妙与神速，为广大为文而用心者，为我这区区一小卒打开并提供了一条如此便利又实惠的轻捷之途。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;我之所以将那些流传至今的，盛行于互联网的，或者德才兼备的文字称之为“真迹墨宝”是因为我在搜肠刮肚之余实在找不出更恰当的词语去形容他们作品的美好。在我的眼里，那是从写作者的心里手下自然流淌出来的一泓泓山泉清流，是盛开在我们精神世界里的灵魂之花，那里的每一笔，每一字，每一句都饱含着他们极其认真仔细执着负责的态度。在那里，他们为之耗费了多少的精力精神与时间，其中饱蘸着他们多少的智慧和灵魂之光，多少的社会责任与担当的文化贡献，使我深感汗流浃背的而变得肃然起敬起来。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;我之所以将那些伟大的作品，那些被众人奉为圭臬的，那些被点赞推荐的优美文字称之为“真迹墨宝”，还因为是——在这样的文字里你绝对看不见或找不到一星点儿的抄袭剽窃的迹像。旁引博证也好，借古喻今也罢，自成一体的文字，似诙谐、似幽默，或平铺直叙、或侃侃而谈，无论是山高或是水长都是那么真切地跳动着他/她生命的脉搏，凝聚着他/她岁月给与的痕迹和深深的文化修练与文字功力。在这样认真严谨的文字里，每一个标点每一个符号都是那么认真地运用到了恰到好处，那都是我远远不能企及的，是我自觉得“可远观而不可亵玩”的杰作，其中，不乏有名不经传，默默无闻的作者和写手们的作品，它仿如“昭昭若日月之明，离离如星辰之行”，使我由衷地生出深切的敬仰而拜为至高的榜样。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;时至今日，与他们，我从无谋一面之幸，更不消说什么言语的深入交流或沟通，无论是已故的先生们，还是仍健在于世前辈，乃至于仍隐没在莽莽文海，辛勤劳作，鲜为人知的作家，他们的作品，他们的文字之所以让我欣赏，之所以让我迷醉，还因为是它展现在我眼前的，闪耀在字里行间的无形若有影的人格魅力。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人格是什么，怎么样的人格才无愧于这样的魅力？<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;且不例举说远古或海外的文学大家们，也暂且不提中国当代名家文人，我仅以当下“草根”之著为例——余秀华，一个“摇摇晃晃”地走在“摇摇晃晃”的人生之路上的残疾作者。范素雨，一个被“命运装订得拙劣不堪”的生命写手，面对岁月给与的苦难，凭其悠如处之的幽默，顽强的精神，坚韧的毅力写就出生命的断章。她们只凭着一手对自己负责，一手对他人的真诚，一心为平凡的世界而努力的态度，为我们奉上了一笔充满真情实意的，实则是难能可贵的范例······<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;大凡读过《我是范素雨》，有谁不被她的平凡而朴实的思想所撼动？用心体会一下余秀华坎坷的心路历程，去读出自于她手下的文学作品，有谁不被其耀眼的魅力所深深折服？她们是真诚的，这样的真诚使她们从来没有想过会“一鸣惊人”，从来没想到这样的认真会有这样的“有朝一日”。究其根源，全在于她们以一颗平常普通的心一直奉行着无愧我心的人生哲学。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;中华文字，自从她诞辰之日起并无粗鄙优劣之分，时至今日，之所以有某些“恶臭之气”窜于其中，只因为如此美好的文字落在了某些肮脏不堪之手，被他们肆意侵滥着。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;移花接木，去头截尾，生搬硬套，东拼西凑，似剽窃，或抄袭，更有甚者，干脆撇去原创作者的笔名或名字，冠以自己之作来一个“照单全收”。是为趋利，或为别有用心？这真如欧阳修先生所云：“不知耻者，无所不为”！面对浩若星辰的网络世界，我无从追根溯源探其目的究竟如何，却从中可以看到，这种无异于强取豪夺的无良行为损害的不仅仅是为文之道，丧失着做人的最基本的品德，此举，更是深深地伤害着、羞辱着在文学路上辛勤耕耘着的每一位作者和写手们的尊严，更是对当下网络文学能否走在健康发展路上之状态的漠然与亵渎。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;忆当年，受经济条件的限制，有我的同学为完整地抄录一部爱不释手的“名著”废寝忘食般地埋首于微弱的手电筒下，为求证谁才是那一部手抄本的真正作者，几乎耗尽他本可以尽情玩耍的大半个暑假时间。如此“幼稚”的行为在网络文学高度发达的今天看来是否意味着它是多么的愚蠢而可笑呢？<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;既不为名亦不为利，只为真正的文学；只为尊重原著；只为尊重其付出的不易，何况还冒着被捡举揭发的可能挨全校批斗的危险！<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;电脑的普及，网络的自由为我们洞开一个全新的世界，也为那些无良之人提供了一个极为便利的投机取巧的条件。也许，我们谁都无力也无法去扭转这种令人痛心的状态，所以只能眼睁睁地看着那些成篇成章的优秀作品被无德之“士”任意的盗挖，肆意地践踏，也因此，为保全自己的“孩子”不再被任意的侵略，有诸多的写作者们不得不心如滴血般地呐喊出诸如“尊重原创，远离抄袭”一类的无奈之声······<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;其实，你如果想成为一名作家真的很难，其中的难不是靠掠取他人的辛劳成果就可以克服，何况，奋泳在茫茫文海中的写作者早已多如过江之鲫，数不胜数。想成为一名作家，靠的不仅仅是你必须耐受得了无边的寂寞，承受得了漫漫的孤独，除了你必须具备一如既往的坚韧不拔的毅力，炼就一双博采众长洞察秋毫的慧眼，站在社会发展的前列及时并准确的把握世间百态的脉搏。也许，你付出了一辈子的心血和努力，到最后换来的依然是一文不名，两手空空的结果，而凭借东拼西凑式的抄袭终将会显露出你真正的庐山面目，为众人所唾弃，实在是得不偿失得很。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;诚然，摆在无畏困苦的写作者面前的路是极为艰难的，过去如此，往后也是如此。披荆斩棘，那是他们的真诚，扪心无愧，那是他们秉持一份清宁的初心，为对他人、对自己的人生给出一份良好的交代，借这一方无声的世界去表达他们内心真切的声音，去记录人生中走过的每一段路，而不是习自作聪明者之作为在圣洁的文学之路上肆意践踏，疯狂作乱。<br />\n<br />');
INSERT INTO `ykb_content_article` VALUES ('134', '&emsp;生活可以复杂，也可以简单，看我们拥有怎样的心态。简单就真实，平淡就从容。没有虚伪，不戴面具；不去张扬，甘愿淡泊。荣也好，辱也罢，一切好的不好的，不过是岁月变迁的填充物，到最后，都是过去。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;相信人生没有毫无意义的经历。上天给我们困难，是让我们看透人心；给我们失败，是教会我们如何更好地成功；给我们孤独，是让我们学会慎独和反省。此处失，他处得，有人让你哭了，就会有人让你笑，这是上天对待每一个人的公平。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人生路上不是每轮艳阳都暖人，不是每片云彩都下雨。一些事，想开自然微笑，看透肯定放下。人在旅途，心宽，才是海阔天空。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;心怀善念，能利人；心怀感恩，能利己。学会换位，人生才有和谐；知道感恩，岁月才有温暖。活着，就是一场修行，而真正的修行，不在一张能言的嘴上，而在一颗向善的心里。人生之光，是一颗宽容的心；岁月之好，是一份随缘的爱。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;世界上最美丽的风景，就是你有一颗善良的心，散发着优美的磁场和魅力，走到哪里，就照亮到哪里，温暖到哪里。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人生，总有许多沟坎需要跨越；岁月，总有许多遗憾需要弥补；生命，总有许多迷茫需要领悟。美好是属于自信者的，机会是属于开拓者的，奇迹是属于执着者的！你若不想做，总会找到借口；你若想做，总会找到方法。坚持未必是胜利，放弃未必是认输，与其华丽撞墙，不如优雅转身，给自己一个迂回的空间。学会思索，学会等待，学会调整。很多时候，比起执着，我们更需要的是回眸一笑的洒脱。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;一直觉得，人生就像是培育种子。你投入的每一分努力，都会在未来的某一天，回馈于你。而你所要做的，就是每天多努力一点点。在这路上，别人拥有的，不必羡慕；自己没有的，不要嫉妒。相信，只要努力，时间都会给你。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;没有播种，哪来收获；没有辛劳，哪来成功；生活本来平淡如水，放一点盐它就是咸的，放一点糖它就是甜的，想调成什么味道，全凭自己！<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;成功没有快车道，幸福没有高速路，一份耕耘一份收获，所有的成功都来自不倦的努力和奔跑，所有幸福都来自平凡的奋斗和坚持。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;坚持，不是为了感动谁，也不是证明给谁看。而是，一路奔跑，总比原地踏步好！坚持，不是心动，而是一种行动，就是简单的事情重复做，重复的事情认真做，认真的事情努力做。一点一滴的积累，你就会发现，原来成功的路上并不拥挤，因为坚持的人并不多。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;生活就像浮在水上的鸭子，表面上从容淡定，其实水底下在拼命的划水。想要过好的生活，就要拼命努力。优雅需要底气，华丽需要实力。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人这辈子，总有人羡慕你，也有人讨厌你；总有人嫉妒你，还有人看不起你。没关系，生活就是这样。你所做的一切并不能让每个人都满意，不必为了讨好别人而丢失自己的本性。一样的眼睛，不一样的看法；一样的耳朵，不一样的听法；一样的嘴巴，不一样的说法；一样的心，不一样的想法；一样的钱，不一样的花法；一样的人们，不一样的活法。别人嘴里的你，不是真实你的你。你无需告诉每个人，那一个个艰难的日子是如何熬过来的，大多数人都看你飞得高不高，很少人在意你飞得累不累。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;决心走一条路的时候，就不要左顾右盼，风景再美也别流连。起风的日子学会依风起舞，落雨的时候学会为自己撑一把伞。幸福就是，即使累了，还能笑着活出自我，努力奔跑。任岁月变迁，我心不惊，凭时光流转，我心如初。<br />\n&emsp;&emsp;<br />');
INSERT INTO `ykb_content_article` VALUES ('137', '有人说，人生，是一场修行，也有人说，人生，是一段旅程。而我却觉得，人生，是一场追求，也是一场领悟。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;平淡的日子里，安静，简单，没有起伏，没有波澜。有的只是一种安宁，一种重复，一种寂静。无论时光如何流逝，无论季节怎样变化，一如平常，安然于自己的生活，忙碌于自己的工作，坚持于自己喜欢做的事情，无论从何时起步，都不算晚。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;梦想就像天上星星，也许你永远无法触碰，但如果你跟随它们，它们将引领你找到最正确的方向。对信任你的人，永远别撒谎。对你撒谎的人，永远别太相信。有时候，失望到一定程度后，反而会开出一朵花来，那朵花的名字叫，无所谓。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人生最美好的，就是在你停止生存时，还能够以你所创造的一切为人们服务。你在等待，你在坚忍，你在静默。你在等一场春华秋实，你在等新一轮的春暖花开，你在等从未有过的雷霆万钧。这静默的日子有些长，有些闷，但是我也会等下去。我相信人的青春不止有一次，有时候，时光会给你额外的惊喜。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;一直认为，这世上最公平的，就是时间。别人偷不走，你也留不住。你拥有它，却又无法改变它。一路走来，你留在光阴里的艰难抑或快乐，都会随着时光的流逝被一一带走，身处其中的你我，无论是年轻还是衰老，所能做的，都只有充分的利用和享用它。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;想要过好每一天，不如先让今天充实。毕竟，那看似漫长的岁月，都是由无数个“今天”堆砌而成。岁月是种轮回，人生是种历练。我一直这样的提醒自己，让自己明白生活不需要太多的刻意。很多时候，我们都在不知不觉刻意人生，勉强生活，为的就是满足一份来自内心深处的虚荣。走在自己的路上，眼里却是别人路上的风景。直至有一天，后来者怀抱五彩鲜花，经过自己身旁时，羡慕之余才发现，一路匆忙，只顾观望他山之巅，却忽略了自己路上的满地鲜花。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;也许，此刻的你，正经历着某种辛酸，一路风雨兼程的赶来，却尽在一片黑暗中摸索，等待着云开见月明。然，只要你心中有信念，就要相信，寒夜终有时，太阳总有升。伤心失望的日子，你可能暂时无力改变现状，但你却可以选择自己的态度。或是悲观消极，或是笑容浅露。同一条路上的行人，有人哭泣也有人欢笑，最后都将抵达不一样的彼岸，就看你选择的是哪一种。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;每个人都是独立的个体，期待走不一样的人生路，收获不一样的生命色彩。倘若人生可以重来一次，亦不过是多了一场山长水阔，沿途的风景，依旧有枯荣；一路的悲喜，依旧似风雨。无论你选择的是哪一条路，阴晴圆缺，苦乐交融，都是必不可少的烟火。有些路，你若不坚持走下去，你就永远不知道它到底有多美。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;天空不总是晴朗，阳光不总是闪耀，人生，无所谓失去，只怕草率地挥霍。世界上，唯独骗不了的，就是自己的心。它总在你最没提防时，暴露你的欢喜忧愁。对太多的事情，寄予美好的期待，却是一再不尽人意。那些无心插柳随意而为的事情，反而更容易带给人意想不到的惊喜。人生犹如变化着的四季，途径每一季，都会有着不同的色彩。来去匆匆，变化无常。我们在创造自己的人生的同时，也该充分享受这人生。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;美好的，留在心底；遗憾的，随风散去。尽管，还有那么多梦想无法实现；尽管，还有那么多沮丧埋在心田。但那又如何？我在冰峰的深海，寻找希望的缺口，却在惊醒时，瞥见绝美的阳光。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;或许，人生更像是一场电影，痛苦是一个开端，挣扎是一种过程，死亡是一种结局。纵然难免留有遗憾，我也相信，终究还是会有一个完美的角落。不要着急，相信最好的，总会在你不经意的时候出现。活在当下，时光且长，一切都来得及。<br />');
INSERT INTO `ykb_content_article` VALUES ('138', '生命，就像是一张借记卡，从你呱呱坠地，还未有名字的时候，你生命的借记卡就已经毫不延迟的启动了它的业务。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;储存在生命借记卡上的数字，就是你这一生所有的时光。你此后生活的每一天，都是对这张借记卡的消费。虽然，你是它的主人，但你却不知道它的多少。幸好不知道，我们才会一边消费着卡额，一边无忧无虑的生活。懵然向前中，支出着我们生命有限的时间，于万千世相的一片混沌中，等待着这张卡的归零。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;常常，有很多事情不能如愿以偿，我们会安抚自己来日方长，以后有的是时间。于是，接下来的日子里，就开始了碧落黄泉，不及不归的执着。人在很多时候，都是盲目的。越是不可及，越是仰望；越是得不到，越是心念。却不知道天地苍茫，处处都可以花香满径，何必一条路走到黑。难道，你不相信自己，值得走过更美丽的山水，收获不一样的风景吗？<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;生命就是一张纵横交错的网，当你行至穷途末路的时候，切莫忘了转身回望。人生不仅需要一往无前，有时候，来个急刹车，急转弯，未必不是更好的选择。把那些求不得，又舍不下的优柔寡断，转换成不颓败，不纠结的乐观情绪，换条路走，说不定天宽地广。不忘初心，方得始终；不殆时间，不负自己。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;阡陌红尘，我们形同尘埃般的行走，总有些人留住我们回眸的眼神，羁绊着我们前进的脚步。于是，我们也曾驻足，也曾动情，却不想生命有很多相逢，不过形同一阵风。你感受得到它的擦身而过，却终是留不住它随性的身影。纵然在你耳边轻吟浅唱，亦不过是一场美丽的缘错。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;这世上就是有这样一种人，你不把他当回事，他把你当回事儿；你投桃报李把他当回事儿，他又觉得你好像很上赶似的。总有那么一些人，配不起真诚。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;向来，真诚，才是静水流深，是搭建人与人长情的桥梁。否则，谁都没必要拿一份热情典当成廉价的守候。不要把别人的谦和友善误解成你的高高在上，那不过是别人的涵养素质。毕竟，在这世上，谁都不是谁的谁，若有，锦上添花；若无；亦自在潇洒。你若懂我，携手一程；若是不懂，各自前行。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人这一生，有限的生命，却要划分为无数个阶段去消费。不论你行经生命的哪一站，都要为值得停留的风景而驻足。你的消费，总要换来你该有的东西，而不是白白虚度。拿得起，放得下，干脆利索，做出果断的选择，毅然走入下一段行程。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;很多时候，你觉得，破釜沉舟，重长计议是艰难的，是前功尽弃的，却不想，当你纠结于一件牵强附会的事情，久久踌躇，牵绊左右的时候，亦是一种破费。因为，你付出了时间，透支了你的借记卡。而你透支的这部分，本身它就是一种无偿的损失。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;不要浪费感情在不值得的人身上，也不要花费时间在没意义的事情上。很多时候，你认为的固守，只不过是自己的掩耳盗铃。你廉价的消费着自己最宝贵的东西，却不知道它原本值得与岁月来一场更有价值的交换。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;时间会告诉你，万物之始，大道至简，衍化至繁。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;唯有理性消费，有舍有得，生命才会更加的充实有效。直到有一天，那张手中的借记卡即将被清零的时候，我们回首，查询这一路走来的每一笔消费，都能够欣然一笑。觉得曾经有过的每一笔支出都是值得的，扪心无悔，不觉有憾，这一生，也就算得上圆满了。<br />');
INSERT INTO `ykb_content_article` VALUES ('139', '  一程光阴，一程山水，平凡的日子，一手握着珍惜，一手握着行走；素简流年，那些光阴抹不掉的印痕依稀牵动心潮，是久久的萦绕。满怀的心语化作欲言又止，岁月的云烟悄悄潜入记忆……最美的时光总是守住一窗安静，让文字生香。摘一缕清风明月，种一阕阳春白雪，让心灵的田园满是通透与清欢……<br />\n<br />\n  人生是一场漫长的旅行，生活的故事不会永远的平静如水阳光明媚，将自信、善良、坚定、无悔融于生命之中，走成属于自己的风景。总感觉自己走过了一条很简单很长远的路程。期间那一段心灵的荒芜常常想起，一个人的日子，一次次问自己，如果可以，我能否在从前里寻找现在的自己？拄笔前行，是我心灵的皈依。<br />\n<br />\n  这时节，淡雅的花朵开满每一个角角落落，轻嗅风中吹过的香气丝丝缕缕，思念如扯不断理还乱的雨。许多无奈、心酸、感叹在日复一日，年复一年里写进了人生旅途。思绪，心音，梦痕，心中的飘渺虚幻生长蔓延。落地的情缘再次缱绻，仿佛一份眷恋可以万水千山，千年万年……<br />\n<br />\n  或许，生命中每一种相逢前世早已注定。花开有声，心中酝酿的诗行只为那一片相遇的深情。心事如莲，呢喃成相思的花语，落笔生香，相伴孤灯下的守望。眺守你你所在的方向，思念无法在某个角落深藏，漫过文字的河床，浸润柔美的心房。星光如水，新月如眉。那一窗如诗的清韵婉约成一脉柔美深情。缕缕痴缠穿越绿水青山，荡在眉端心田，眷恋柔软，仿佛已过千年。语丝绵绵，细细聆听，思念对一个名字轻轻呢喃……<br />\n<br />\n  总是在无奈的日子里回望那些漫长，那些忧伤，时光苍茫，晕染了风霜。心的安静淹没于纷纷扰扰之中，流浪飘零。总感觉生命里的美好只是昙花一现，流星一闪，无法抵达的永远到底有多远？<br />\n<br />\n  也许相携一份淡然知足，每一个日子都能幸福安暖，风来不惊，雨落无声，如此平平静静。看着夕阳再次吻别青山，晚霞的余辉中又种一个新的期盼。一朵香莲在心中缓缓舒展……曾经禹禹独行的路上绿荫清凉，心入清香。将一份最美的期盼端放在前方，遥看水天一色，品读平静淡然，温柔安暖。携几行小字，轻嗅最美诗意；赏一片流云舒卷，掬一朵雅致清莲，心中绽放清爽与芬芳。（文章阅读网：www。sanwen。net）<br />\n<br />\n  将一些心语寄予文字，将走远的故事点滴倾诉。只是，思念一如往昔，跌落在水中，泛起一圈圈涟漪……清风能读懂，流云听得见。温润的软风，安宁淡雅，在柔雨初停的午后飘进来，隔了淡绿的纱窗，落在我的电脑旁。躲过恼人的喧哗，我在清茗半盏中寻找时间的缝隙，停泊在心灵的港湾里。读你，文字中的美丽；赏你，是花事般的相遇。情亦深深，念亦温婉，一遇，便成永远。不能没有你，这是我不变的情怀，真情留下来。将一朵清欢深种，于一片心相约的芳草地……踏着月光去寻觅，满地清愁，我一一捡拾。总有一些来得及以及一些来不及走进了生命里，今生来生选择与释然相伴相依。<br />\n<br />\n  光阴轻浅，真实绣织，日子里散落了事与愿违的前尘，霏霏如雨。生活之中，总要相遇一些东西薄如蝉翼。玫瑰落雨，昔日已梦……凝眸，惟愿心灵深处的散发，可以留香。阡陌之中，以它温暖那颗潮湿的心……<br />\n<br />\n  封锁的记忆慢慢开启，昨日的云烟随风散去。思念如一棵开花的树，在这个季节的垄中旖旎茂密。若有灵犀，你可否留意，每天晨晖中的晃动，那不是风，而是我深情的叮咛。浓浓淡淡的心绪温婉在岁月里，日子，疏落成一笔明月清风，月缺是诗，月圆是歌。尘世、繁华、云烟淡远，我心中所有的语言交给了无言。流年，在文字中婉转，悠扬；人生，每一份经历，在时光中生香。还好，我不在乎忧伤，只眺望经年的芬芳。如此，季节开始晕染舒适、清爽……时光里的故事盘旋在心间，是一朵温暖的记忆。<br />\n<br />\n  好想种一棵深情树，每一片绿油油的叶子都是我写给岁月的情书。任凭花开，任凭雨落，任凭风起，任凭云涌，我都以一种颜色诉说。静握着素淡的日子，将所有的情思放逐。拥一怀简约，掬一捧花香，听月光流淌，在文字中徜徉，一份柔软将整个生命贯穿，安静安暖……<br />\n<br />\n  好想说，感谢相遇，感谢从墨香中走来的你，文字中读你，我漂泊的心灵从此有了皈依；心灵的共鸣，让我忘记孤单，天涯化作咫尺。生命里有种相伴，便是灵魂相惜。如此，且将这份美好交给我的流年，我的岁月……<br />\n<br />');
INSERT INTO `ykb_content_article` VALUES ('140', 'One time, a landscape, the ordinary day, a hand holding a treasure, walking; plain Jane time, that time can not erase the imprint vaguely affects the heart, is a long lingering. Full of thoughts into the years quietly into the clouds about to speak, but saying nothing, memory...... The most beautiful time always hold a quiet window, let the words of aroma. Pick a wisp of breeze moon, for a highbrow, let the heart of the garden is full of transparent and clear......<br />\nLife is a long journey, the story of life will not always be as calm as water will be sunny, confident, kind, strong, no regrets in life, walk into their own landscape. Always feel that I have gone through a very simple, very long journey. During that period of desolation of the mind, often think of a person\'s day, ask yourself again and again, if possible, can I find myself in the past? A stroke of pen is my heart\'s turn.<br />\nThis season, elegant and full of flowers in every corner, the smell of the wind blowing through the aroma of Cecil strands, thoughts such as pull constantly tangled rain. Many helpless, sad, sigh in day after day, year after year, written into the journey of life. Thoughts, heart sounds, dreams, traces of the heart, illusory growth, spread. Landing again like a romantic love and attachment to the trials of a long journey for thousands of years......<br />\nPerhaps, in life each meet past already doomed. The sound, brew lines that only a deep encounter. The mind such as lotus, whispering into Acacia flower, to color, accompanied by Gudeng watch. Keep your vision in your direction, you can\'t hide in a corner, over the text of the riverbed, infiltration of soft heart. Stars, such as water, crescent, such as eyebrows. The window is a beautiful poetic melody and graceful feeling. Continuously through live swing in the green mountains and rivers, brow heart, love soft, seemed to have been over a thousand years. During rain, listen carefully, thinking of a name whispers......<br />\nIs always in the helpless days at the long time, those sad, confused, dizzy catch the wind. The heart of the quiet submerged in the confused, wandering wandering. Always feel the beauty of life is just a flash in the pan, meteor flash, can not reach forever, in the end how far?<br />\nMaybe a cool with contentment, every day can happiness and warm, the wind not startled, the rain fell silent, so quiet. Look at the sunset again kiss the Castle Peak, sunset afterglow, and planted a new look forward to. A stretch of Xianglian slowly in the heart...... Once Yu Yu alone on the road, cool shade, heart into the fragrance. A most beautiful hope end in front, yaokan Shuitianyise, read calm cool, gentle and warm. With a few lines of small print, the smell of the most beautiful poetry; a swirling cloud, a lotus flower elegant, refreshing and fragrant heart. (Article Reading Network: www. Sanwen. Net)<br />\nXinyu sent some text, the story will go far to drop. Just, miss, as in the past, fell in the water, a circle of ripples...... Cool breeze can read, cloud can hear. Warm wind, quiet elegant, soft in the rain stopped early afternoon came, a green screen, falling on my computer. Escape the annoying noise, I find the gap of time in the half of the clear tea, and anchor in the harbor of the mind. Read your text, in the beautiful flowers; reward you, is like. Love is also deep, read also mild, once, will become forever. Can not do without you, this is my constant feelings, the truth to stay. A Qinghuan deep, in a heart to grass...... Moonlight to find, Montreal clear worry, I pick up one by one. There are always some time, and some too late into life, the next life, the choice and relief, accompanied by dependence.<br />\nTime light, true tapestry, days of scattered things past, fall like rain. Life, always encounter something thin. Rose rain, the former has a dream...... Look, let out the depths of the soul, can. With, it is warm in the moist heart......<br />\nBlocked the memory of yesterday\'s clouds slowly open, gone with the wind. Miss is like a flowering tree, in this season\'s ridge in the dense charming. If you have, can you pay attention to, every day in Chenhui shaking, that is not the wind, but I love my. Thick light of gentle mood in the days, days, scattered into a pen at leisure, the moon is the full moon is a poem, song. The world, bustling, clouds apprehension, my heart all over to the silent language. Time, in the text tactfully, melodious; life, every experience, producing in time. Okay, I don\'t care about sadness, only look after years of fragrance. Thus, the season begins to be dizzy, comfortable and refreshing...... Time in the story, hovering in the heart, is a warm memory.<br />\nWant to plant a deep tree, every piece of green leaves are my love for years. Let the flowers bloom, let the rain fall, let the wind, let the clouds, I have to tell a color. Static hold quiet day, all the affection of exile. With a simple, hold a flower, listen to the moonlight flowing, wander in the text, a soft whole life through quiet, warm......<br />\nI want to say thank, meet, thank you in the coming from the ink, you read the text, my wandering mind had been converted; the resonance of the mind, let me forget the lonely horizon into close. Life in a company, it is the soul of xiangxi. So, and this beauty');
INSERT INTO `ykb_content_article` VALUES ('141', 'Life is like a debit card, you are not born from, when the name, your life will have a debit card without delay the start of its business.<br />\n<br />\nStored in life debit card number, it is your life all the time. Every day you\'ve lived since then has been a debit to this debit card. Though you are the master of it, you do not know how much it is. Fortunately, I do not know, we will spend the amount of cards, while carefree life. Mengran forward, spending a limited time in our lives, thousands of the world phase of chaos, waiting for this card to zero.<br />\n<br />\nOften, there are a lot of things can not be fulfilled, we will appease their The coming days would be long. there\'s time. So, the next day, began not to persist from the sky to earth. In many cases, people are blind. The more you cannot reach, the more you look up; the more you can\'t get it, the more you will read it. But I do not know the vast world, everywhere can be full of flowers, why should a road to black?. Don\'t you believe in yourself, it\'s worth walking through more beautiful mountains and rivers and getting different scenery?<br />\n<br />\nLife is a piece of the network when you are arranged in a crisscross pattern, to the end, do not forget to turn back. Life not only need to walk the line, sometimes to a braking, sharp turns, is not necessarily a better choice. To those who seek not, and can\'t give the conversion into a decadent, irresolute and hesitant, do not tangle of optimism, for the road, maybe day wide wide. Don\'t forget the heart, the party must always; but not their own time, negative.<br />\n<br />\nWorld of mortals, we are dust like walk, there are always some people we keep looking in the eyes, holding us back. So, we have stopped, have been emotional, but do not want to have a lot of life meet, but only a gust of wind. You feel it pass by, but you can\'t keep it from it. Even if you sing softly in your ear, it is only a beautiful mistake.<br />\n<br />\nThere is such a person in this world, you don\'t take him seriously, he take you seriously; you do take him seriously, he felt as if you\'d like to catch on. There are always some people who can not afford to be sincere.<br />\n<br />\nHas always been sincere, is the responsibility is to build bridges with long love. Otherwise, no one is necessary to take a warm pawn into cheap waiting. Do not mistake other people\'s friendliness and friendliness into your superior. It is just the quality of others. After all, in this world, no one is who, if there is, icing on the cake; if not, also comfortable chic. If you understand me, go hand in hand; if you don\'t understand, go ahead.<br />\n<br />\nPeople in this life, limited life is divided into many stages to consumption. No matter which station of your life you pass, you should stop for the scenery that is worth staying. Your spending will always change what you have, not what you spend in vain. Get up, put it down, in a clean manner, make a decisive choice, decided to move on to the next journey.<br />\n<br />\nMany times, you think, will heavy long plan is difficult, is wasted, but do not want to, when you focus on something far fetched things, long hesitation, when hobbling around, is also a kind of cost. Because you paid your time and overdrawn your debit card. And this part of your overdraft itself is a free loss.<br />\n<br />\nDon\'t waste feelings on someone who is not worthy, don\'t spend time on meaningless things. Most of the time, do you think of the stick, only his own. You spend your most precious things cheaply, but you don\'t know if it\'s worth a more valuable exchange.<br />\n<br />\nTime will tell you the beginning of all things, road to Jane, to complex evolution.<br />\n<br />\nOnly rational consumption, give and take, life will be full of more effective. Until one day, when the debit card in the hand was about to be cleared, we would look back and inquire about every consumption we had made along the way, and we would be able to smile with pleasure. Think every expenditure had are worth it, have no regrets, don\'t feel regret, this life, even to complete.');
INSERT INTO `ykb_content_article` VALUES ('142', 'Life can be complicated or simple. What kind of mentality do we have?. Simple is true, plain is easy. No hypocrisy, no mask; not unassuming, willing to be indifferent. Glory or disgrace, all good, bad, but the filling of the vicissitudes of time, and in the end, are the past.<br />\n<br />\nBelieve life is not meaningless experience. God gives us difficulties, let us see through people\'s minds; for we fail, is to teach us how to better success; give us lonely, let us learn to cautiousness and reflection. Lost here, he got, some people make you cry, and some people will make you laugh, this is god treat everyone fair.<br />\n<br />\nOn the road of life is not each round the sun are warm, not all clouds of rain. Some things, want to open a natural smile, see through, definitely put down. Renzailvtu, heart wide, is as boundless as the sea and sky.<br />\n<br />\nWith good, can benefit people; be thankful and can be selfish. Learn to change positions, life is harmonious; know Thanksgiving, the years are warm. Alive, is a spiritual practice, and real practice, not in a speech on the mouth, and in a good heart. The light of life, is a tolerance of the heart; the good years, is a love you.<br />\n<br />\nThe most beautiful scenery in the world, is that you have a good heart, exudes charm and beautiful field, go to where, where it shines, where warm.<br />\n<br />\nLife, there are many goukan across; years, there are always many regrets in life, need to make up; there is always a lot of confusion need to understand. The good belongs to the self-confident, the opportunity belongs to the pioneer, the miracle belongs to the persistent person! If you don\'t want to do it, you\'ll always find an excuse; if you do, you\'ll find a way. To give up is not necessarily win, defeat, and gorgeous, as elegant turn, give yourself a circuitous space. Learn to think, learn to wait, learn to adjust. Most of the time, compared to the persistent, we need to be clear with a smile.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nHas always felt that life is like the seeds. Every effort you put into it will come back to you in the future. And all you have to do is try harder every day. On the road, others do not have to envy; do not have their own, do not envy. Believe, as long as the effort, time will give you.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nNo pain, no gain; no pain, where life was successful; plain water, put a little salt it is salty, a little sugar is sweet, want to tune into what taste, all on their own!<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nThere is no fast track to success, and no highway to happiness, work a harvest, all success comes from tireless effort and pursuit, and all happiness comes from daily struggle and perseverance.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nInsisted not to touch who is not, who prove to. But running all the way is better than keeping track of it! Adhere to, not heart, but a kind of action, is simple things, repeat, do repeated things, seriously, do serious things, and strive to do. Bit by bit accumulation, you will find that the success of the road is not crowded, because there are not many people insist.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nLife is like floating in the water on the surface of the duck, calm, in fact, underwater in hard water. If you want to live a good life, you must work like hell. Elegance needs strength, and strength needs strength.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nPeople in this life, there are always people who envy you, some people hate you; there are always people who envy you, some people look down on you. That\'s all right. Life is like this. Everything you do doesn\'t satisfy everyone. You don\'t have to lose your nature to please others. The same eyes, not the same view; the same ears, not the same as listening method; the same mouth, not the same argument; like the heart, not the same idea; the same money, spending is not the same; as people, not the same way. In other people\'s mouth, you are not your true self. You don\'t have to tell everyone how hard each day is. Most people see you flying high and few people care if you\'re tired or tired.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nWhen a road determined to go, do not look around, the scenery is more beautiful don\'t linger. In the windy days to rain when the wind dance, to learn for themselves an umbrella. Happiness is, even if tired, but also laugh to live out of their own, and strive to run. Let the years change, my heart is not surprised, with the flow of time, my heart as before.<br />');
INSERT INTO `ykb_content_article` VALUES ('143', 'Some people say that life is a practice, but also some people say that life is a journey. And I think, life is a pursuit, but also a realization.<br />\n<br />\nDull days, quiet, simple, no ups and downs, no waves. There is only one kind of peace, one kind of repetition, one kind of silence. No matter how time goes by, no matter how the season changes, as usual, it is not too late to live safely in one\'s life, to be busy with one\'s work, and to stick to what one likes to do.<br />\n<br />\nDream is like the stars in the sky, you may never touch them, but if you follow them, they will lead you to find the right direction. Never lie to those who trust you. Never lie to those who lie to you. Sometimes, disappointed to a certain extent, but will open a flower, the name of that flower, does not matter.<br />\n<br />\nLife is the most beautiful, is you stop living, but also to have created all serve for the people. You are waiting, you are suffering, and you are silent. Are you waiting for a fruitful, you are waiting for a new round of spring, you never had an irresistible force. This quiet day is a bit long, a little stuffy, but I\'ll wait. I believe in people\'s youth more than once, sometimes, time will give you extra surprise.<br />\n<br />\nHas been that this world\'s fair, is the time. If someone steals you, you can\'t keep it. You own it, but you can\'t change it. Along the way, you stay in the hard time or happiness, will be taken away with the passage of time, in which you and I, whether young or old, can do, only the full use and enjoy it.<br />\n<br />\nWant to live each day, it is better to let enrich today. After all, the seemingly long years are made up of countless \"today\". Time is a kind of reincarnation, life is kind of experience. I keep reminding myself that I don\'t need much of life. Many times, we unconsciously deliberately life, barely living, in order to meet a heart from the depths of vanity. Walking on their own road, the eyes are other people\'s scenery on the road. Until one day, later people embrace colorful flowers, through their own side, only to find envy, all the way in a hurry, just looking at the top of his mountain, but ignored his road flowers everywhere.<br />\n<br />\nMay, now you are experiencing some bitterness, came to a road of trials and hardships, but try to grope in the dark, waiting for the wrong man. Of course, as long as there is a belief in your heart, to believe that the cold end times, the sun will rise. When you are sad and disappointed, you may not be able to change the situation for the time being, but you can choose your attitude. Or is negative, or smile bluntly. Pedestrians on the same road, some people cry, but also some people laugh, and finally will reach different shores, it depends on what kind of choice you choose.<br />\n<br />\nEveryone is an independent individual, looking forward to go a different way of life, harvest different colors of life. If life can come again, but also is a long and wearisome pathes, the scenery along the way, there is still a way of feeling, Kurong; still like rain. Whether you choose which way is, the moon, and blend, are essential fireworks. Some roads, if you don\'t keep going, you\'ll never know how beautiful it really is.<br />\n<br />\nThe sky is always blue, the sun doesn\'t always shine, life, nothing to lose, but carelessly squandered. In the world, the only thing you can\'t cheat is your own heart. It always reveals your joys and sorrows when you least watch out. Too many things to expect, but it is repeatedly unsatisfactory. Those unintentional arbitrary and things, but more likely to bring unexpected surprises. Life is like a changing season. Every season has different colors. Come and go, change constantly. While we are creating our own life, we should fully enjoy this life.<br />\n<br />\nGood, stay in the heart of regret, gone with the wind. Although there are so many dreams can not be achieved, although there are so many frustrations buried in the heart. But what about that? I am in the deep sea ice, hope to find the gap, but in the wake of, catch a glimpse of beautiful sunshine.<br />\n<br />\nPerhaps, life is more like a movie, the pain is a beginning, is a process of struggle, death is an ending. Even if there are some regrets, I believe that there will still be a perfect corner. Don\'t try so hard, the best things come when you least expect them to. Live in the present, time and long, and everything is in time.<br />');
INSERT INTO `ykb_content_article` VALUES ('144', 'They often linger in the boundless universe such as the network world to browse read those literary people or hand pen into the heart of \"authentic calligraphy\". Perhaps because of laziness, I think it is better to read and read this way than to look at the economics of paper books. Start the computer, open the browser, as he walked into a boundless world class library: famous writer, astronomy and geography, the history at all times and in all countries, a subset of the humanities and history, interesting anecdotes and so on, and the Everything is contained therein., Nothing needed is lacking. one hundred thousand points, with emotion when the modern science and technology developed, the network is wonderful and rapidly. The majority of the heart, for me this just a pawn to open and provide a convenient and affordable so lightly.<br />\n<br />\nI will who spread so far, popular in the Internet, or the text have both ability and political integrity is called \"authentic calligraphy\" is because I racked in more than it could not find a more appropriate word to describe their work better. In my eyes, it is natural from the writer\'s heart flowed under a very deep spring clean, is blooming in our spiritual world of flowers of the soul, where every, every word, every sentence with their extremely careful and responsible attitude. There, they spent much time and energy for the spirit, which they Baozhan much wisdom and soul light, how much of the social responsibility of the cultural contributions, so I am sweating and getting up in awe.<br />\n<br />\nI will those great works, those people who are like look up to as the standard, recommended the beautiful words called \"authentic calligraphy\", but also because it is in such words you never see or find a little star signs of plagiarism. Guide Bo card or using or self-contained text, like humor, like humor, or flat, or in person, whether it is mountain or water, vividly that he / she beats the pulse of life, together with his / her years to trace and cultural practice and text deep skill. In such serious words, every punctuation each symbol is so carefully applied to that I was just perfect, is not possible, since I think \"can not be Lex playing\" a masterpiece, which are not known by the mass, and the author unknown to the public the writers of the works, it is like \"clearly visible if the sun and the moon, such as from the stars\", so I sincerely admire and grow deep thanks to the Supreme example.<br />\n<br />\nToday, with them, I never seek a fortune, not to mention what speech in-depth exchanges or communication, whether it is late or still is World Health gentlemen, predecessors, even still hidden toil in the vast sea, and little-known writers, their works, their the text was that I appreciate, make me drunk, but also because it is to show in front of me, shining in between the lines if there is a shadow of intangible charisma.<br />\n<br />\nWhat is the personality, what kind of personality was worthy of such charm?<br />\n<br />\nAnd examples that the ancient or overseas literature we have, also not to mention the literati China contemporary artists, I only present the \"grassroots\" as an example -- Yu Xiuhua, a \"staggering\" in the way of \"staggered\" life of the disabled writer. Fan Suyu, a \"fate of bookbinding poor life\" writers, given the years of suffering, such as by the leisurely of humor, indomitable spirit, the tenacity of life fragments written. They only had a hand in charge of their own, a hand to others sincerely, one for the ordinary world and work attitude, we offer a full heart, it is valuable to Vanse<br />\n<br />\nGenerally read \"I am a fan Suyu\", who has not been shaken by her ordinary and simple thoughts? Yu Xiuhua experienced the ups and downs of the psychological process, to read from her literary works, who is not impressed by its dazzling charm? They are sincere, so sincere that they never thought of \"blockbuster\", never thought this seriously will have such \"some day in the future\". The root of the problem lies in their pursuit of a philosophy of life with an ordinary heart.<br />\n<br />\nChinese text, since the date of her birth is not vulgar or bad, today, has some \"foul gas channeling in them, only because of this beautiful text falls in some dirty hands, they abuse the wanton invasion.<br />\n<br />\nDeceitful, go head truncation, mechanically, like plagiarism or copying, put all sorts of things together, and what is more, just skim the original author\'s name or name, as their own for a zhaodanquanshou\". Is it for profit or ulterior motives? This really Mr. Ou Yangxiu said: \"I do not know shame, do everything\"! If the stars face Hao network in the world, I can not back to probe how, but as you can see, this is tantamount to the damage of unscrupulous behavior usurpations is not only for the road, the loss of a person\'s basic character, the move is deeply hurt and shame in the hard way of literature work with each of the authors and writers of the dignity, is on the current network literature can go in indifference and healthy development on the state of blasphemy.<br />\n<br />\nWhen Yi');

-- ----------------------------
-- Table structure for ykb_ext_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ykb_ext_guestbook`;
CREATE TABLE `ykb_ext_guestbook` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `content` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_ext_guestbook
-- ----------------------------
INSERT INTO `ykb_ext_guestbook` VALUES ('6', '222', '529988248@qq.com', 'asd', '1501657736');

-- ----------------------------
-- Table structure for ykb_ext_link
-- ----------------------------
DROP TABLE IF EXISTS `ykb_ext_link`;
CREATE TABLE `ykb_ext_link` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_ext_link
-- ----------------------------
INSERT INTO `ykb_ext_link` VALUES ('1', '壹凯的博客', 'http://blog.yikaiba.com/');
INSERT INTO `ykb_ext_link` VALUES ('2', '壹凯巴', 'http://www.yikaiba.com/');

-- ----------------------------
-- Table structure for ykb_ext_news
-- ----------------------------
DROP TABLE IF EXISTS `ykb_ext_news`;
CREATE TABLE `ykb_ext_news` (
  `data_id` int(10) DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_ext_news
-- ----------------------------
INSERT INTO `ykb_ext_news` VALUES ('137', null);
INSERT INTO `ykb_ext_news` VALUES ('134', null);
INSERT INTO `ykb_ext_news` VALUES ('138', null);
INSERT INTO `ykb_ext_news` VALUES ('140', '作者');
INSERT INTO `ykb_ext_news` VALUES ('139', '作者');
INSERT INTO `ykb_ext_news` VALUES ('133', null);

-- ----------------------------
-- Table structure for ykb_field
-- ----------------------------
DROP TABLE IF EXISTS `ykb_field`;
CREATE TABLE `ykb_field` (
  `field_id` int(10) NOT NULL AUTO_INCREMENT,
  `fieldset_id` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `field` varchar(250) DEFAULT NULL,
  `type` int(5) DEFAULT '1',
  `tip` varchar(250) DEFAULT NULL,
  `verify_type` varchar(250) DEFAULT NULL,
  `verify_data` text,
  `verify_data_js` text,
  `verify_condition` tinyint(1) DEFAULT NULL,
  `default` varchar(250) DEFAULT NULL,
  `sequence` int(10) DEFAULT '0',
  `errormsg` varchar(250) DEFAULT NULL,
  `config` text,
  PRIMARY KEY (`field_id`),
  KEY `field` (`field`),
  KEY `sequence` (`sequence`),
  KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='扩展字段基础';

-- ----------------------------
-- Records of ykb_field
-- ----------------------------
INSERT INTO `ykb_field` VALUES ('1', '1', '昵称', 'name', '1', '', 'regex', 'cmVxdWlyZQ==', 'Kg==', '1', '', '0', '', '');
INSERT INTO `ykb_field` VALUES ('2', '1', '邮箱', 'email', '1', '', 'regex', 'ZW1haWw=', 'ZQ==', '1', '', '1', '', '');
INSERT INTO `ykb_field` VALUES ('3', '1', '内容', 'content', '3', '', 'regex', 'cmVxdWlyZQ==', 'Kg==', '1', '内容', '3', '', '');
INSERT INTO `ykb_field` VALUES ('4', '1', '时间', 'time', '10', '', 'regex', '', '', '1', '', '2', '', '');
INSERT INTO `ykb_field` VALUES ('5', '2', '链接名称', 'name', '1', '', null, null, null, null, '', '0', null, '');
INSERT INTO `ykb_field` VALUES ('6', '2', '链接地址', 'url', '1', '', null, null, null, null, '', '1', null, '');
INSERT INTO `ykb_field` VALUES ('7', '3', '作者', 'author', '1', null, null, null, null, null, '作者', '0', null, '11133333');
INSERT INTO `ykb_field` VALUES ('9', '5', '链接', 'url', '1', '', null, null, null, null, '', '0', null, '');

-- ----------------------------
-- Table structure for ykb_field_expand
-- ----------------------------
DROP TABLE IF EXISTS `ykb_field_expand`;
CREATE TABLE `ykb_field_expand` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-扩展模型';

-- ----------------------------
-- Records of ykb_field_expand
-- ----------------------------
INSERT INTO `ykb_field_expand` VALUES ('7', null);

-- ----------------------------
-- Table structure for ykb_field_form
-- ----------------------------
DROP TABLE IF EXISTS `ykb_field_form`;
CREATE TABLE `ykb_field_form` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT '0',
  `show` tinyint(1) DEFAULT '0',
  `search` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-表单';

-- ----------------------------
-- Records of ykb_field_form
-- ----------------------------
INSERT INTO `ykb_field_form` VALUES ('1', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('2', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('3', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('4', '0', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('5', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('6', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('9', '1', '1', '1');

-- ----------------------------
-- Table structure for ykb_fieldset
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fieldset`;
CREATE TABLE `ykb_fieldset` (
  `fieldset_id` int(10) NOT NULL AUTO_INCREMENT,
  `table` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='字段集基础';

-- ----------------------------
-- Records of ykb_fieldset
-- ----------------------------
INSERT INTO `ykb_fieldset` VALUES ('1', 'guestbook', '留言板');
INSERT INTO `ykb_fieldset` VALUES ('2', 'link', '友情链接');
INSERT INTO `ykb_fieldset` VALUES ('3', 'news', '新闻新增字段');

-- ----------------------------
-- Table structure for ykb_fieldset_expand
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fieldset_expand`;
CREATE TABLE `ykb_fieldset_expand` (
  `fieldset_id` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展模型';

-- ----------------------------
-- Records of ykb_fieldset_expand
-- ----------------------------
INSERT INTO `ykb_fieldset_expand` VALUES ('3', '1');

-- ----------------------------
-- Table structure for ykb_fieldset_form
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fieldset_form`;
CREATE TABLE `ykb_fieldset_form` (
  `fieldset_id` int(10) DEFAULT NULL,
  `show_list` tinyint(1) DEFAULT NULL,
  `show_info` tinyint(1) DEFAULT NULL,
  `list_page` int(5) DEFAULT NULL,
  `list_where` varchar(250) DEFAULT NULL,
  `list_order` varchar(250) DEFAULT NULL,
  `tpl_list` varchar(250) DEFAULT NULL,
  `tpl_info` varchar(250) DEFAULT NULL,
  `post_status` tinyint(1) DEFAULT NULL,
  `post_msg` varchar(250) DEFAULT NULL,
  `post_return_url` varchar(250) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展表单';

-- ----------------------------
-- Records of ykb_fieldset_form
-- ----------------------------
INSERT INTO `ykb_fieldset_form` VALUES ('1', '1', '1', '10', '', 'data_id desc', 'guestbook', 'guestbook', '1', '留言发布成功！', '');
INSERT INTO `ykb_fieldset_form` VALUES ('2', '1', '1', '0', '', 'data_id desc', 'form_list', 'form_content', '1', null, null);

-- ----------------------------
-- Table structure for ykb_file
-- ----------------------------
DROP TABLE IF EXISTS `ykb_file`;
CREATE TABLE `ykb_file` (
  `file_id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `original` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ext` varchar(250) DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `ext` (`ext`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上传文件';

-- ----------------------------
-- Records of ykb_file
-- ----------------------------

-- ----------------------------
-- Table structure for ykb_fragment
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fragment`;
CREATE TABLE `ykb_fragment` (
  `fragment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `label` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`fragment_id`),
  KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='网站碎片';

-- ----------------------------
-- Records of ykb_fragment
-- ----------------------------
INSERT INTO `ykb_fragment` VALUES ('8', 'bottom', '底部信息', '地址：辽宁省大连市高新园区&amp;nbsp;&amp;nbsp;&amp;nbsp;电话：13488888888&amp;nbsp; &amp;nbsp; Copyright &amp;copy;\n                2002-2017 版权所有 1kbcms&lt;br /&gt;\n技术支持：<a href=\"http://www.yikaiba.com\" target=\"_blank\">壹凯巴</a> &amp;nbsp; &amp;nbsp;ICP备案编号：&lt;a href=\"http://www.miitbeian.gov.cn/\" target=\"_blank\"&gt;ICP备20160524号&lt;/a&gt;1');
INSERT INTO `ykb_fragment` VALUES ('9', 'logo', 'logo图片', '<img src=\"/static/plug/kingeditor/attached/image/20170802/20170802024117_78307.png\" alt=\"\" />');
INSERT INTO `ykb_fragment` VALUES ('10', 'en_logo', '英文版logo', '<img src=\"/static/plug/kingeditor/attached/image/20170808/20170808084322_50470.png\" alt=\"\" />');
INSERT INTO `ykb_fragment` VALUES ('11', 'en_bottom', '英文版底部信息', 'Address: High-tech Park, Dalian City, Liaoning Province&nbsp;&nbsp;&nbsp;tel：13488888888&nbsp; &nbsp; Copyright &copy;\n                2002-2017 all rights reserved 1kbcms<br />\nTechnical Support：<a href=\"http://www.yikaiba.com\" target=\"_blank\">yikaiba</a> &nbsp; &nbsp;ICPRecord number：<a href=\"http://www.miitbeian.gov.cn/\" target=\"_blank\">ICP备20160524号</a>1');

-- ----------------------------
-- Table structure for ykb_home_url
-- ----------------------------
DROP TABLE IF EXISTS `ykb_home_url`;
CREATE TABLE `ykb_home_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ykb_home_url
-- ----------------------------
INSERT INTO `ykb_home_url` VALUES ('1', '百度', 'https://www.baidu.com');
INSERT INTO `ykb_home_url` VALUES ('2', '新浪', 'http://www.sina.com.cn/');

-- ----------------------------
-- Table structure for ykb_lang
-- ----------------------------
DROP TABLE IF EXISTS `ykb_lang`;
CREATE TABLE `ykb_lang` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lang_id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_lang
-- ----------------------------
INSERT INTO `ykb_lang` VALUES ('1', '中文', 'zh-cn');
INSERT INTO `ykb_lang` VALUES ('2', 'english', 'en-us');

-- ----------------------------
-- Table structure for ykb_nav
-- ----------------------------
DROP TABLE IF EXISTS `ykb_nav`;
CREATE TABLE `ykb_nav` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `lang_id` int(11) DEFAULT '1' COMMENT '语言id',
  PRIMARY KEY (`nav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of ykb_nav
-- ----------------------------
INSERT INTO `ykb_nav` VALUES ('1', '1', '主导航', '主导航3', '1');

-- ----------------------------
-- Table structure for ykb_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `ykb_nav_menu`;
CREATE TABLE `ykb_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `type` tinyint(4) DEFAULT '1' COMMENT '地址类型1自定义url2栏目地址',
  `sort` int(11) NOT NULL DEFAULT '50' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of ykb_nav_menu
-- ----------------------------
INSERT INTO `ykb_nav_menu` VALUES ('1', '1', '0', '1', '1', '0', '首页', '', 'home');
INSERT INTO `ykb_nav_menu` VALUES ('17', '1', '0', '1', '1', '50', '产品1', '_blank', '/');

-- ----------------------------
-- Table structure for ykb_position
-- ----------------------------
DROP TABLE IF EXISTS `ykb_position`;
CREATE TABLE `ykb_position` (
  `position_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sequence` int(10) DEFAULT '0',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of ykb_position
-- ----------------------------
INSERT INTO `ykb_position` VALUES ('1', '首页推荐', '0');

-- ----------------------------
-- Table structure for ykb_tags
-- ----------------------------
DROP TABLE IF EXISTS `ykb_tags`;
CREATE TABLE `ykb_tags` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `click` int(10) DEFAULT '1',
  `quote` int(10) DEFAULT '1',
  PRIMARY KEY (`tag_id`),
  KEY `quote` (`quote`),
  KEY `click` (`click`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='TAG标签';

-- ----------------------------
-- Records of ykb_tags
-- ----------------------------
INSERT INTO `ykb_tags` VALUES ('1', '3', '1', '2');

-- ----------------------------
-- Table structure for ykb_tags_has
-- ----------------------------
DROP TABLE IF EXISTS `ykb_tags_has`;
CREATE TABLE `ykb_tags_has` (
  `content_id` int(10) DEFAULT NULL,
  `tag_id` int(10) DEFAULT NULL,
  KEY `aid` (`content_id`),
  KEY `tid` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TAG关系';

-- ----------------------------
-- Records of ykb_tags_has
-- ----------------------------

-- ----------------------------
-- Table structure for ykb_total_spider
-- ----------------------------
DROP TABLE IF EXISTS `ykb_total_spider`;
CREATE TABLE `ykb_total_spider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `baidu` int(10) DEFAULT '0',
  `google` int(10) DEFAULT '0',
  `soso` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蜘蛛统计';

-- ----------------------------
-- Records of ykb_total_spider
-- ----------------------------

-- ----------------------------
-- Table structure for ykb_total_visitor
-- ----------------------------
DROP TABLE IF EXISTS `ykb_total_visitor`;
CREATE TABLE `ykb_total_visitor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访客统计';

-- ----------------------------
-- Records of ykb_total_visitor
-- ----------------------------

-- ----------------------------
-- Table structure for ykb_user
-- ----------------------------
DROP TABLE IF EXISTS `ykb_user`;
CREATE TABLE `ykb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `head_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `sex` tinyint(4) DEFAULT '0' COMMENT '性别1男2女',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常2禁用',
  `type_id` tinyint(4) DEFAULT '1' COMMENT '用户分组',
  `add_time` int(11) DEFAULT '0' COMMENT '注册时间',
  `last_login_time` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='前台会员表';

-- ----------------------------
-- Records of ykb_user
-- ----------------------------
INSERT INTO `ykb_user` VALUES ('1', null, 'e10adc3949ba59abbe56e057f20f883e', '/uploads/home/20170802/4991a27914d770eaded6eab73786b54a.jpg', '壹凯', '529988248@qq.com', '大连高新园区', '1', '122222', '1', '1', '1501662959', '1504840965', '::1');
INSERT INTO `ykb_user` VALUES ('2', 'ccc', 'e10adc3949ba59abbe56e057f20f883e', null, '333', '444@qq.com', null, '1', '', '2', '1', '1501662959', null, null);
INSERT INTO `ykb_user` VALUES ('3', '23523523', '96e79218965eb72c92a549dd5a330112', null, '34242', 'admin@163.com', null, '1', '', '1', '1', '0', null, null);

-- ----------------------------
-- Table structure for ykb_user_type
-- ----------------------------
DROP TABLE IF EXISTS `ykb_user_type`;
CREATE TABLE `ykb_user_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `type_status` tinyint(4) DEFAULT '1' COMMENT '1正常2禁用',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员分组表';

-- ----------------------------
-- Records of ykb_user_type
-- ----------------------------
INSERT INTO `ykb_user_type` VALUES ('1', '默认用户', '1');
