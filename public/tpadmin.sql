-- MySQL dump 10.13  Distrib 5.5.60, for Linux (x86_64)
--
-- Host: localhost    Database: tpadmin
-- ------------------------------------------------------
-- Server version	5.5.60-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fy_activity`
--

DROP TABLE IF EXISTS `fy_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动表',
  `main_pic` varchar(255) DEFAULT NULL COMMENT '活动主图',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `name` varchar(32) DEFAULT NULL COMMENT '活动名称',
  `start_date` int(11) DEFAULT NULL COMMENT '活动开始时间 ',
  `end_date` int(11) DEFAULT NULL COMMENT '活动结束时间',
  `url` varchar(255) DEFAULT NULL COMMENT '活动链接',
  `detail` text COMMENT '活动详情描述',
  `lottery_name` varchar(255) DEFAULT NULL COMMENT '奖券名称',
  `lottery_id` int(11) DEFAULT NULL COMMENT '关联奖券id',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '0否1是',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_activity`
--

LOCK TABLES `fy_activity` WRITE;
/*!40000 ALTER TABLE `fy_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_access`
--

DROP TABLE IF EXISTS `fy_admin_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_access`
--

LOCK TABLES `fy_admin_access` WRITE;
/*!40000 ALTER TABLE `fy_admin_access` DISABLE KEYS */;
INSERT INTO `fy_admin_access` VALUES (3,157,3,153),(3,156,3,153),(3,155,3,153),(3,153,2,1),(3,149,3,145),(3,148,3,145),(3,147,3,145),(3,146,3,145),(3,145,2,1),(3,134,3,130),(3,133,3,130),(3,132,3,130),(3,131,3,130),(3,130,2,1),(3,127,3,123),(3,126,3,123),(3,125,3,123),(3,124,3,123),(3,123,2,1),(3,121,3,117),(3,120,3,117),(3,119,3,117),(3,118,3,117),(3,117,2,1),(3,116,3,112),(3,115,3,112),(3,114,3,112),(3,113,3,112),(3,112,2,1),(3,111,3,86),(3,110,3,86),(3,109,3,86),(3,108,3,86),(3,86,2,1),(3,89,3,85),(3,88,3,85),(3,87,3,85),(3,85,2,1),(3,78,3,75),(3,77,3,75),(2,1,1,0),(2,2,2,1),(2,51,3,2),(2,52,3,2),(2,53,3,2),(2,54,3,2),(2,55,3,2),(2,64,3,2),(2,65,3,2),(2,66,3,2),(2,67,3,2),(2,68,3,2),(2,69,3,2),(2,70,3,2),(2,3,2,1),(2,45,3,3),(2,46,3,3),(2,47,3,3),(2,48,3,3),(2,49,3,3),(2,50,2,3),(2,4,2,1),(2,38,3,4),(2,39,3,4),(2,40,3,4),(2,41,3,4),(2,42,3,4),(2,43,3,4),(2,44,3,4),(2,5,2,1),(2,29,3,5),(2,34,3,5),(2,35,3,5),(2,36,3,5),(2,37,3,5),(2,6,2,1),(2,7,3,6),(2,8,3,6),(2,9,2,1),(2,32,3,9),(2,33,3,9),(2,10,2,1),(2,11,2,1),(2,12,2,1),(2,13,2,1),(2,14,2,1),(2,15,2,1),(2,16,2,1),(2,17,2,1),(2,18,2,1),(2,19,2,1),(2,20,2,1),(2,21,2,1),(2,27,3,21),(2,28,3,21),(2,30,3,21),(2,31,3,21),(2,22,2,1),(2,25,3,22),(2,26,3,22),(2,23,2,1),(2,24,3,23),(2,59,2,1),(2,56,2,1),(2,60,3,56),(2,61,4,60),(2,62,5,61),(2,80,2,1),(2,81,3,80),(2,82,3,80),(2,83,3,80),(2,101,3,80),(2,90,3,80),(2,100,3,80),(2,99,3,80),(2,98,3,80),(2,97,3,80),(2,96,3,80),(2,75,2,1),(2,103,3,75),(2,102,3,75),(2,76,3,75),(2,77,3,75),(2,78,3,75),(2,107,3,75),(2,85,2,1),(2,104,3,85),(2,87,3,85),(2,88,3,85),(2,89,3,85),(2,105,3,85),(2,106,3,85),(2,86,2,1),(2,108,3,86),(2,109,3,86),(2,110,3,86),(2,111,3,86),(2,112,2,1),(2,113,3,112),(2,114,3,112),(2,115,3,112),(2,116,3,112),(2,117,2,1),(2,118,3,117),(2,119,3,117),(2,120,3,117),(2,121,3,117),(2,123,2,1),(2,124,3,123),(2,125,3,123),(2,126,3,123),(2,127,3,123),(2,128,2,1),(2,129,3,128),(2,130,2,1),(2,131,3,130),(2,132,3,130),(2,133,3,130),(2,134,3,130),(2,135,2,1),(2,136,3,135),(2,137,3,135),(2,138,3,135),(2,139,3,135),(2,140,2,1),(2,141,3,140),(2,142,3,140),(2,143,3,140),(2,145,2,1),(2,146,3,145),(2,147,3,145),(2,148,3,145),(2,149,3,145),(2,150,2,1),(2,151,2,1),(2,152,2,1),(2,153,2,1),(3,76,3,75),(3,75,2,1),(3,96,3,80),(3,90,3,80),(3,83,3,80),(3,82,3,80),(3,81,3,80),(3,80,2,1),(3,1,1,0),(3,160,3,153),(3,161,3,153),(4,293,3,292),(4,292,2,1),(1,245,3,3),(1,244,3,3),(1,243,3,3),(1,241,3,3),(1,240,3,3),(1,50,2,3),(1,49,3,3),(1,48,3,3),(1,47,3,3),(1,46,3,3),(1,3,2,1),(1,1,1,0),(4,275,3,159),(4,183,3,159),(4,182,3,159),(4,181,3,159),(4,180,3,159),(4,179,3,159),(4,178,3,159),(4,177,3,159),(4,159,2,1),(4,285,3,158),(4,175,3,158),(4,174,3,158),(4,173,3,158),(4,172,3,158),(4,171,3,158),(4,170,3,158),(4,169,3,158),(4,168,3,158),(4,158,2,1),(4,287,3,154),(4,276,3,154),(4,192,3,154),(4,191,3,154),(4,190,3,154),(4,189,3,154),(4,188,3,154),(4,187,3,154),(4,186,3,154),(4,185,3,154),(4,184,3,154),(4,154,2,1),(4,298,3,153),(4,297,3,153),(4,289,3,153),(4,167,3,153),(4,166,3,153),(4,165,3,153),(4,164,3,153),(4,163,3,153),(4,162,3,153),(4,161,3,153),(4,160,3,153),(4,157,3,153),(4,156,3,153),(4,155,3,153),(4,153,2,1),(4,277,3,152),(4,217,3,152),(4,212,3,152),(4,209,3,152),(4,206,3,152),(4,203,3,152),(4,196,3,152),(4,195,3,152),(4,194,3,152),(4,193,3,152),(4,152,2,1),(4,278,3,151),(4,274,3,151),(4,273,3,151),(4,272,3,151),(4,271,3,151),(4,270,3,151),(4,269,3,151),(4,268,3,151),(4,267,3,151),(4,266,3,151),(4,151,2,1),(4,288,3,150),(4,282,3,150),(4,281,3,150),(4,280,3,150),(4,279,3,150),(4,150,2,1),(4,283,3,135),(4,254,3,135),(4,251,3,135),(4,250,3,135),(4,249,3,135),(4,248,3,135),(4,246,3,135),(4,176,3,135),(4,139,3,135),(4,138,3,135),(4,137,3,135),(4,136,3,135),(4,135,2,1),(4,286,3,130),(4,242,3,130),(4,228,3,130),(4,225,3,130),(4,222,3,130),(4,134,3,130),(4,133,3,130),(4,132,3,130),(4,131,3,130),(4,130,2,1),(4,252,3,128),(4,202,3,128),(4,201,3,128),(4,200,3,128),(4,199,3,128),(4,198,3,128),(4,197,3,128),(4,129,3,128),(4,128,2,1),(4,127,3,123),(4,126,3,123),(4,125,3,123),(4,124,3,123),(4,123,2,1),(4,208,3,117),(4,207,3,117),(4,205,3,117),(4,204,3,117),(4,121,3,117),(4,120,3,117),(4,119,3,117),(4,118,3,117),(4,117,2,1),(4,291,3,112),(4,216,3,112),(4,215,3,112),(4,214,3,112),(4,213,3,112),(4,211,3,112),(4,210,3,112),(4,116,3,112),(4,115,3,112),(4,114,3,112),(4,113,3,112),(4,290,3,112),(4,112,2,1),(4,111,3,86),(4,110,3,86),(4,109,3,86),(4,108,3,86),(4,86,2,1),(4,232,3,75),(4,231,3,75),(4,230,3,75),(4,229,3,75),(4,107,3,75),(4,78,3,75),(4,77,3,75),(4,76,3,75),(4,102,3,75),(4,103,3,75),(4,75,2,1),(4,96,3,80),(4,97,3,80),(4,98,3,80),(4,99,3,80),(4,100,3,80),(4,90,3,80),(4,101,3,80),(4,83,3,80),(4,82,3,80),(4,81,3,80),(4,80,2,1),(4,24,3,23),(4,23,2,1),(4,26,3,22),(4,25,3,22),(4,22,2,1),(4,8,3,6),(4,7,3,6),(4,6,2,1),(4,1,1,0);
/*!40000 ALTER TABLE `fy_admin_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_group`
--

DROP TABLE IF EXISTS `fy_admin_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_group`
--

LOCK TABLES `fy_admin_group` WRITE;
/*!40000 ALTER TABLE `fy_admin_group` DISABLE KEYS */;
INSERT INTO `fy_admin_group` VALUES (1,'系统管理','&#xe61d;',2,1,'',0,1450752856,1481180175),(2,'工具','&amp;#xe616;',3,0,'',0,1476016712,1532419172);
/*!40000 ALTER TABLE `fy_admin_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_node`
--

DROP TABLE IF EXISTS `fy_admin_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `isdelete` (`isdelete`),
  KEY `sort` (`sort`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_node`
--

LOCK TABLES `fy_admin_node` WRITE;
/*!40000 ALTER TABLE `fy_admin_node` DISABLE KEYS */;
INSERT INTO `fy_admin_node` VALUES (1,0,1,'Admin','后台管理','后台管理，不可更改',1,1,1,1,0),(2,1,1,'AdminGroup','分组管理',' ',2,1,1,1,0),(3,1,1,'AdminNode','节点管理',' ',2,1,2,1,0),(4,1,1,'AdminRole','角色管理',' ',2,1,3,1,0),(5,1,1,'AdminUser','用户管理','',2,1,4,1,0),(6,1,0,'Index','首页','',2,1,50,1,0),(7,6,0,'welcome','欢迎页','',3,0,50,1,0),(8,6,0,'index','未定义','',3,0,50,1,0),(9,1,2,'Generate','代码自动生成','',2,1,50,1,0),(10,1,2,'Demo/excel','Excel一键导出','',2,0,2,1,0),(11,1,2,'Demo/download','下载','',2,0,3,1,0),(12,1,2,'Demo/downloadImage','远程图片下载','',2,0,4,1,0),(13,1,2,'Demo/mail','邮件发送','',2,0,5,1,0),(14,1,2,'Demo/qiniu','七牛上传','',2,0,6,1,0),(15,1,2,'Demo/hashids','ID加密','',2,0,7,1,0),(16,1,2,'Demo/layer','丰富弹层','',2,0,8,1,0),(17,1,2,'Demo/tableFixed','表格溢出','',2,0,9,1,0),(18,1,2,'Demo/ueditor','百度编辑器','',2,0,10,1,0),(19,1,2,'Demo/imageUpload','图片上传','',2,0,11,1,0),(20,1,2,'Demo/qrcode','二维码生成','',2,0,12,1,0),(21,1,1,'NodeMap','节点图','',2,1,5,1,0),(22,1,1,'WebLog','操作日志','',2,1,6,1,0),(23,1,1,'LoginLog','登录日志','',2,1,7,1,0),(59,1,2,'one.two.three.Four/index','多级节点','',2,0,50,1,0),(24,23,0,'index','首页','',3,0,50,1,0),(25,22,0,'index','列表','',3,0,50,1,0),(26,22,0,'detail','详情','',3,0,50,1,0),(27,21,0,'load','自动导入','',3,0,50,1,0),(28,21,0,'index','首页','',3,0,50,1,0),(30,21,0,'edit','编辑','',3,0,50,1,0),(31,21,0,'deleteForever','永久删除','',3,0,50,1,0),(32,9,0,'index','首页','',3,0,50,1,0),(33,9,0,'generate','生成方法','',3,0,50,1,0),(34,5,0,'password','修改密码','',3,0,49,1,0),(35,5,0,'index','首页','',3,0,50,1,0),(36,5,0,'add','添加','',3,0,50,1,0),(37,5,0,'edit','编辑','',3,0,50,1,0),(38,4,0,'user','用户列表','',3,0,50,1,0),(39,4,0,'access','授权','',3,0,50,1,0),(40,4,0,'index','首页','',3,0,50,1,0),(41,4,0,'add','添加','',3,0,50,1,0),(42,4,0,'edit','编辑','',3,0,50,1,0),(43,4,0,'forbid','默认禁用操作','',3,0,50,1,0),(44,4,0,'resume','默认恢复操作','',3,0,50,1,0),(290,112,0,'getskudata','获取sku数据','',3,0,50,1,0),(46,3,0,'index','首页','',3,0,50,1,0),(47,3,0,'add','添加','',3,0,49,1,0),(48,3,0,'edit','编辑','',3,0,48,1,0),(49,3,0,'forbid','默认禁用操作','',3,0,47,1,0),(50,3,0,'resume','默认恢复操作','',2,0,0,1,0),(51,2,0,'index','首页','',3,0,50,1,0),(52,2,0,'add','添加','',3,0,50,1,0),(53,2,0,'edit','编辑','',3,0,50,1,0),(54,2,0,'forbid','默认禁用操作','',3,0,51,1,0),(55,2,0,'resume','默认恢复操作','',3,0,50,1,0),(56,1,2,'one','一级菜单','',2,1,13,1,0),(60,56,2,'two','二级','',3,1,50,1,0),(61,60,2,'three','三级菜单','',4,1,50,1,0),(62,61,2,'Four','四级菜单','',5,1,50,1,0),(104,85,0,'delete','删除','',3,0,50,1,0),(64,2,0,'delete','删除','',3,0,50,1,0),(65,2,0,'recycleBin','回收站','',3,0,50,1,0),(66,2,0,'delete','默认删除操作','',3,0,50,1,0),(67,2,0,'recycle','从回收站恢复','',3,0,50,1,0),(68,2,0,'deleteForever','永久删除','',3,0,50,1,0),(69,2,0,'clear','清空回收站','',3,0,50,1,0),(70,2,0,'saveOrder','保存排序','',3,0,50,1,0),(103,75,0,'resume','默认恢复操作','',3,0,50,1,0),(80,1,1,'Notice','公告管理','',2,1,50,1,0),(102,75,0,'delete','删除','',3,0,50,1,0),(75,1,1,'SildeShow','轮播图','',2,1,50,1,0),(76,75,0,'add','添加','',3,0,50,1,0),(77,75,0,'edit','编辑','',3,0,50,1,0),(78,75,0,'index','首页','',3,0,50,1,0),(81,80,0,'add','添加','',3,0,50,1,0),(82,80,0,'index','首页','',3,0,50,1,0),(83,80,0,'edit','编辑','',3,0,50,1,0),(101,80,0,'resume','默认恢复操作','',3,0,50,1,0),(85,1,1,'Modular','前端功能模块','',2,1,50,1,0),(86,1,1,'GoodsClass','商品分类','',2,1,50,1,0),(87,85,0,'index','列表','',3,0,50,1,0),(88,85,0,'add','添加','',3,0,50,1,0),(89,85,0,'edit','编辑','',3,0,50,1,0),(90,80,0,'delete','删除','',3,0,50,1,0),(100,80,0,'recycle','从回收站恢复','',3,0,50,1,0),(99,80,0,'deleteForever','永久删除','',3,0,50,1,0),(98,80,0,'recycleBin','回收站','',3,0,50,1,0),(97,80,0,'clear','清空回收站','',3,0,50,1,0),(96,80,0,'forbid','默认禁用操作','',3,0,50,1,0),(105,85,0,'resume','默认恢复操作','',3,0,50,1,0),(106,85,0,'forbid','默认禁用操作','',3,0,50,1,0),(107,75,0,'forbid','默认禁用操作','',3,0,50,1,0),(108,86,0,'index','首页','',3,0,50,1,0),(109,86,0,'add','添加','',3,0,50,1,0),(110,86,0,'edit','编辑','',3,0,50,1,0),(111,86,0,'delete','删除','',3,0,50,1,0),(112,1,1,'Goods','商品管理','',2,1,50,1,0),(113,112,0,'index','首页','',3,0,50,1,0),(114,112,0,'add','添加','',3,0,50,1,0),(115,112,0,'edit','编辑','',3,0,50,1,0),(116,112,0,'delete','删除','',3,0,50,1,0),(117,1,1,'Brand','商品品牌管理','',2,1,50,1,0),(118,117,0,'index','首页','',3,0,50,1,0),(119,117,0,'add','添加','',3,0,50,1,0),(120,117,0,'edit','编辑','',3,0,50,1,0),(121,117,0,'delete','删除','',3,0,50,1,0),(123,1,0,'Upload','图片上传','',2,1,50,1,0),(124,123,0,'index','首页','',3,0,50,1,0),(125,123,0,'upload','文件上传','',3,0,50,1,0),(126,123,0,'remote','远程图片抓取','',3,0,50,1,0),(127,123,0,'listImage','图片列表','',3,0,50,1,0),(128,1,1,'Customer','会员管理','',2,1,50,1,0),(129,128,0,'index','列表','',3,0,50,1,0),(130,1,1,'Lottery','奖券中心','',2,1,50,1,0),(131,130,0,'add','添加','',3,0,50,1,0),(132,130,0,'index','首页','',3,0,50,1,0),(133,130,0,'edit','修改','',3,0,50,1,0),(134,130,0,'delete','删除','',3,0,50,1,0),(135,1,1,'CustomerTask','会员任务管理','',2,1,50,1,0),(136,135,0,'index','列表','',3,0,50,1,0),(137,135,0,'add','添加','',3,0,50,1,0),(138,135,0,'delete','删除','',3,0,50,1,0),(139,135,0,'edit','编辑','',3,0,50,1,0),(140,1,1,'CustomerGrade','会员等级管理','',2,1,50,1,0),(141,140,0,'index','列表','',3,0,50,1,0),(142,140,0,'add','新增','',3,0,50,1,0),(143,140,0,'edit','编辑','',3,0,50,1,0),(294,292,0,'recycleBin','回收站','',3,0,50,1,0),(145,1,1,'CustomerGradeDesc','会员等级规则','',2,1,50,1,0),(146,145,0,'index','列表','',3,0,50,1,0),(147,145,0,'add','添加','',3,0,50,1,0),(148,145,0,'edit','编辑','',3,0,50,1,0),(149,145,0,'delete','删除','',3,0,50,1,0),(150,1,1,'LotteryLog','奖券领取详情','',2,1,50,1,0),(151,1,1,'Activity','活动管理','',2,1,50,1,0),(152,1,1,'Transaction','交易设置','',2,1,50,1,0),(153,1,1,'Order','订单管理','',2,1,50,1,0),(154,1,1,'Message','消息中心','',2,1,50,1,0),(155,153,0,'index','列表','',3,0,50,1,0),(156,153,0,'edit','编辑','',3,0,50,1,0),(157,153,0,'orderDetail','订单详情','',3,0,50,1,0),(158,1,1,'GoodsComment','商品评论管理','',2,1,50,1,0),(159,1,1,'WxPayRefundLog','交易记录','',2,1,50,1,0),(160,153,0,'addPost','订单发货','',3,0,50,1,0),(161,153,0,'refund','订单退款','',3,0,50,1,0),(162,153,0,'editTotalPrice','修改订单总价','',3,0,50,1,0),(163,153,0,'delete','删除','',3,0,50,1,0),(164,153,0,'recycleBin','回收站','',3,0,50,1,0),(165,153,0,'deleteForever','永久删除','',3,0,50,1,0),(166,153,0,'clear','清空回收站','',3,0,50,1,0),(167,153,0,'recycle','还原','',3,0,50,1,0),(168,158,0,'delete','删除','',3,0,50,1,0),(169,158,0,'forbid','禁用','',3,0,50,1,0),(170,158,0,'recyclebin','回收站','',3,0,50,1,0),(171,158,0,'resume','恢复','',3,0,50,1,0),(172,158,0,'clear','清空回收站','',3,0,50,1,0),(173,158,0,'deleteForever','彻底删除','',3,0,50,1,0),(174,158,0,'recycle','还原','',3,0,50,1,0),(175,158,0,'returncomment','回复','',3,0,50,1,0),(176,135,0,'detail','详情','',3,0,50,1,0),(177,159,0,'forbid','禁用','',3,0,50,1,0),(178,159,0,'recyclebin','回收站','',3,0,50,1,0),(179,159,0,'delete','删除','',3,0,50,1,0),(180,159,0,'resume','恢复','',3,0,50,1,0),(181,159,0,'deleteForever','彻底删除','',3,0,50,1,0),(182,159,0,'clear','清空回收站','',3,0,50,1,0),(183,159,0,'recycle','还原','',3,0,50,1,0),(184,154,0,'delete','删除','',3,0,50,1,0),(185,154,0,'add','添加','',3,0,50,1,0),(186,154,0,'forbid','禁用','',3,0,50,1,0),(187,154,0,'resume','恢复','',3,0,50,1,0),(188,154,0,'recyclebin','回收站','',3,0,50,1,0),(189,154,0,'edit','编辑','',3,0,50,1,0),(190,154,0,'clear','清空回收站','',3,0,50,1,0),(191,154,0,'deleteForever','彻底删除','',3,0,50,1,0),(192,154,0,'recycle','还原','',3,0,50,1,0),(193,152,0,'add','添加','',3,0,50,1,0),(194,152,0,'eidt','编辑','',3,0,50,1,0),(195,152,0,'delete','删除','',3,0,50,1,0),(196,152,0,'forbid','禁用','',3,0,50,1,0),(197,128,0,'delete','删除','',3,0,50,1,0),(198,128,0,'recycleBin','回收站','',3,0,50,1,0),(199,128,0,'excel','导出excel','',3,0,50,1,0),(200,128,0,'recycle','从回收站还原','',3,0,50,1,0),(201,128,0,'deleteForever','永久删除','',3,0,50,1,0),(202,128,0,'clear','清空回收站','',3,0,50,1,0),(203,152,0,'recyclebin','回收站','',3,0,50,1,0),(204,117,0,'recycleBin','回收站','',3,0,50,1,0),(205,117,0,'deleteForever','永久删除','',3,0,50,1,0),(206,152,0,'resume','恢复','',3,0,50,1,0),(207,117,0,'recycle','从回收站还原','',3,0,50,1,0),(208,117,0,'clear','清空回收站','',3,0,50,1,0),(209,152,0,'deleteForever','彻底删除','',3,0,50,1,0),(210,112,0,'forbid','禁用','',3,0,50,1,0),(211,112,0,'resume','恢复','',3,0,50,1,0),(212,152,0,'recycle','还原','',3,0,50,1,0),(213,112,0,'recycleBin','回收站','',3,0,50,1,0),(214,112,0,'recycle','从回收站还原','',3,0,50,1,0),(215,112,0,'deleteForever','永久删除','',3,0,50,1,0),(216,112,0,'clear','清空回收站','',3,0,50,1,0),(217,152,0,'clear','清空回收站','',3,0,50,1,0),(222,130,0,'recyclebin','回收站','',3,0,50,1,0),(223,85,0,'recycleBin','回收站','',3,0,50,1,0),(224,85,0,'recycle','从回收站还原','',3,0,50,1,0),(225,130,0,'resume','还原','',3,0,50,1,0),(226,85,0,'deleteForever','永久删除','',3,0,50,1,0),(227,85,0,'clear','清空回收站','',3,0,50,1,0),(228,130,0,'deleteForever','彻底删除','',3,0,50,1,0),(229,75,0,'recycleBin','回收站','',3,0,50,1,0),(230,75,0,'recycle','从回收站还原','',3,0,50,1,0),(231,75,0,'clear','清空回收站','',3,0,50,1,0),(232,75,0,'deleteForever','永久删除','',3,0,50,1,0),(233,5,0,'forbid','禁用','',3,0,50,1,0),(234,5,0,'resume','恢复','',3,0,50,1,0),(235,4,0,'recycleBin','回收站','',3,0,50,1,0),(236,4,0,'recycle','从回收站还原','',3,0,50,1,0),(237,4,0,'deleteForever','永久删除','',3,0,50,1,0),(238,4,0,'clear','清空回收站','',3,0,50,1,0),(293,292,0,'index','列表','',3,0,51,1,0),(239,4,0,'delete','删除','',3,0,50,1,0),(240,3,0,'delete','删除','',3,0,50,1,0),(241,3,0,'recycleBin','回收站','',3,0,50,1,0),(242,130,0,'clear','清空回收站','',3,0,50,1,0),(243,3,0,'recycle','从回收站还原','',3,0,50,1,0),(244,3,0,'deleteForever','永久删除','',3,0,50,1,0),(245,3,0,'clear','清空回收站','',3,0,50,1,0),(246,135,0,'resume','恢复','',3,0,50,1,0),(247,21,0,'add','添加','',3,0,50,1,0),(248,135,0,'recycleBin','回收站','',3,0,50,1,0),(249,135,0,'recycle','还原','',3,0,50,1,0),(250,135,0,'deleteForever','彻底删除','',3,0,50,1,0),(292,1,1,'useLottery','代金券核销记录','',2,1,50,1,0),(291,112,0,'upDownTip','上架下架提醒','',3,0,50,1,0),(251,135,0,'clear','清空回收站','',3,0,50,1,0),(252,128,0,'detail','详情','',3,0,50,1,0),(253,45,1,'edit','编辑','',4,0,50,1,0),(254,135,0,'excel','导出','',3,0,50,1,0),(255,140,0,'delete','删除','',3,0,50,1,0),(256,140,0,'recycleBin','回收站','',3,1,50,1,0),(257,140,0,'recycle','还原','',3,0,50,1,0),(258,140,0,'deleteForever','彻底删除','',3,0,50,1,0),(259,140,0,'clear','清空回收站','',3,0,50,1,0),(260,145,0,'forbid','禁用','',3,0,50,1,0),(261,145,0,'resume','恢复','',3,0,50,1,0),(262,145,0,'recycleBin','回收站','',3,0,50,1,0),(263,145,0,'recycle','还原','',3,0,50,1,0),(264,145,0,'deleteForever','彻底删除','',3,0,50,1,0),(265,145,0,'clear','清空回收站','',3,0,50,1,0),(266,151,0,'add','添加','',3,0,50,1,0),(267,151,0,'forbid','禁用','',3,0,50,1,0),(268,151,0,'resume','恢复','',3,0,50,1,0),(269,151,0,'delete','删除','',3,0,50,1,0),(270,151,0,'recycleBin','回收站','',3,0,50,1,0),(271,151,0,'edit','编辑','',3,0,50,1,0),(272,151,0,'recycle','还原','',3,0,50,1,0),(273,151,0,'deleteForever','彻底删除','',3,0,50,1,0),(274,151,0,'clear','清空回收站','',3,0,50,1,0),(275,159,0,'index','列表','',3,0,50,1,0),(276,154,0,'index','列表','',3,0,50,1,0),(277,152,0,'index','列表','',3,0,50,1,0),(278,151,0,'index','列表','',3,0,50,1,0),(279,150,0,'index','列表','',3,0,50,1,0),(280,150,0,'add','添加','',3,0,50,1,0),(281,150,0,'forbid','禁用','',3,0,50,1,0),(282,150,0,'resume','恢复','',3,0,50,1,0),(283,135,0,'forbid','禁用','',3,0,50,1,0),(289,153,0,'afterSaleHandle','售后处理','',3,0,50,1,0),(285,158,0,'index','列表','',3,0,50,1,0),(286,130,0,'editStatus','发行','',3,0,50,1,0),(287,154,0,'sendUser','发送','',3,0,50,1,0),(288,150,0,'detail','领取详情','',3,0,50,1,0),(295,292,0,'delete','删除','',3,0,50,1,0),(296,1,1,'GiftBag','礼包管理','',2,1,50,1,0),(297,153,0,'shopSure','商家退货确认收货','',3,0,50,1,0),(298,153,0,'shopsSendGoods','商家售后确认发货','',3,0,50,1,0),(299,1,1,'CustomerRight','会员权益管理','',2,1,50,1,0),(300,299,0,'index','列表','',3,0,50,1,0),(301,299,0,'add','添加','',3,0,50,1,0),(302,299,0,'edit','编辑','',3,0,50,1,0),(303,299,0,'forbid','禁用','',3,0,50,1,0),(304,299,0,'resume','恢复','',3,0,50,1,0),(305,299,0,'delete','删除','',3,0,50,1,0),(306,299,0,'recycleBin','回收站','',3,0,50,1,0),(307,299,0,'recycle','从回收站恢复','',3,0,50,1,0),(308,299,0,'deleteForever','永久删除','',3,0,50,1,0),(309,299,0,'clear','清空回收站','',3,0,50,1,0);
/*!40000 ALTER TABLE `fy_admin_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_node_load`
--

DROP TABLE IF EXISTS `fy_admin_node_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_node_load`
--

LOCK TABLES `fy_admin_node_load` WRITE;
/*!40000 ALTER TABLE `fy_admin_node_load` DISABLE KEYS */;
INSERT INTO `fy_admin_node_load` VALUES (4,'编辑','edit',1),(5,'添加','add',1),(6,'首页','index',1),(7,'删除','delete',1);
/*!40000 ALTER TABLE `fy_admin_node_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_role`
--

DROP TABLE IF EXISTS `fy_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_role`
--

LOCK TABLES `fy_admin_role` WRITE;
/*!40000 ALTER TABLE `fy_admin_role` DISABLE KEYS */;
INSERT INTO `fy_admin_role` VALUES (1,0,'领导组',' ',1,0,1208784792,1254325558),(2,0,'网编组',' ',1,0,1215496283,1454049929),(3,0,'test','testsartsrt',1,0,1527663705,1527663705),(4,0,'welcome','市场部',1,0,1533115093,1533115093),(5,0,'啊啊啊','',1,1,1534732490,1534732490);
/*!40000 ALTER TABLE `fy_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_role_user`
--

DROP TABLE IF EXISTS `fy_admin_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_role_user`
--

LOCK TABLES `fy_admin_role_user` WRITE;
/*!40000 ALTER TABLE `fy_admin_role_user` DISABLE KEYS */;
INSERT INTO `fy_admin_role_user` VALUES (5,'23'),(2,'4'),(2,'2'),(4,'21'),(4,'20'),(4,'23');
/*!40000 ALTER TABLE `fy_admin_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_user`
--

DROP TABLE IF EXISTS `fy_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) DEFAULT '1' COMMENT '1男0女',
  `wechat_num` varchar(50) DEFAULT NULL COMMENT '微信号可用于转款',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '余额',
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_user`
--

LOCK TABLES `fy_admin_user` WRITE;
/*!40000 ALTER TABLE `fy_admin_user` DISABLE KEYS */;
INSERT INTO `fy_admin_user` VALUES (1,'admin','超级管理员','e10adc3949ba59abbe56e057f20f883e',1535772170,'117.188.4.196',720,'tianpian0805@gmail.comaaa','13121126169','我是超级管理员',1,0,1222907803,1451033528,0,'',0.00),(2,'demo','测试','e10adc3949ba59abbe56e057f20f883e',1532331682,'10.110.111.23',15,'','13111111111','',0,0,1476777133,1477399793,1,'weixinnichen',0.00),(3,'test1','罗正波','e10adc3949ba59abbe56e057f20f883e',1530351402,'10.110.111.46',11,'1060049850@qq.com','18285111561','test',0,0,1527663753,1527663753,1,'luozhengbo9850',0.00),(4,'123456','123333','fcea920f7412b5da7be0cf42b8c93759',1529564512,'10.110.111.36',1,'617641705@qq.com','','',0,0,1529549152,1529549152,1,NULL,0.00),(21,'jyf','江永飞','e10adc3949ba59abbe56e057f20f883e',1535706284,'220.197.182.87',2,'','','',1,0,1533866369,1533866369,1,NULL,0.01),(20,'welcome','泛亚','e10adc3949ba59abbe56e057f20f883e',1535590162,'220.197.182.87',23,'','','',1,0,1533806651,1533806651,1,NULL,0.00),(23,'fy','测试商户','e10adc3949ba59abbe56e057f20f883e',1534732619,'220.197.182.70',6,'','','',1,0,1534469233,1534469233,1,NULL,0.00);
/*!40000 ALTER TABLE `fy_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_admin_user_customer`
--

DROP TABLE IF EXISTS `fy_admin_user_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_admin_user_customer` (
  `user_id` mediumint(9) unsigned DEFAULT NULL,
  `customer_id` char(32) DEFAULT NULL,
  KEY `group_id` (`user_id`),
  KEY `user_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_admin_user_customer`
--

LOCK TABLES `fy_admin_user_customer` WRITE;
/*!40000 ALTER TABLE `fy_admin_user_customer` DISABLE KEYS */;
INSERT INTO `fy_admin_user_customer` VALUES (23,'123'),(21,'136'),(23,'119'),(20,'120');
/*!40000 ALTER TABLE `fy_admin_user_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_after_sale_following`
--

DROP TABLE IF EXISTS `fy_after_sale_following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_after_sale_following` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '售后跟踪表',
  `goods_id` int(11) NOT NULL COMMENT '售后商品id ',
  `ogid` int(11) NOT NULL COMMENT 'order_goods关联id',
  `mobile` varchar(12) NOT NULL COMMENT '用户联系电话',
  `order_id` varchar(64) NOT NULL COMMENT '订单id',
  `openid` varchar(255) NOT NULL COMMENT '售后用户',
  `after_status` tinyint(4) DEFAULT NULL COMMENT '状态0未申请1,申请中2不同意,,4维修中5换货中,6商家发货中，7用户确认收货,8同意',
  `after_sale_reson` varchar(255) DEFAULT NULL COMMENT '售后原因',
  `after_sale_type` tinyint(1) DEFAULT NULL COMMENT '售后类型1换货2，维修3，退款/退货',
  `after_sale_ask` varchar(255) DEFAULT NULL COMMENT '售后要求',
  `after_sale_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `after_sale_pic` text COMMENT '售后图片',
  `handle_yes_no_time` int(11) DEFAULT NULL COMMENT '同意货拒绝时间',
  `handle_yes_no_user` varchar(255) DEFAULT NULL COMMENT '处理人',
  `shop_wuliu_address` text COMMENT '商户地址',
  `shop_sure_get_goods` tinyint(1) DEFAULT NULL COMMENT '1商家确认收货',
  `shop_sure_get_time` int(11) DEFAULT NULL COMMENT '商家确认收货时间',
  `apply_time` int(11) DEFAULT NULL COMMENT '申请时间',
  `refused_reason` varchar(255) DEFAULT NULL COMMENT '拒绝售后理由',
  `handle_time` int(11) DEFAULT NULL COMMENT '处理时间',
  `user_wuliu_type_order` varchar(255) DEFAULT NULL COMMENT '用户物流单号',
  `moren_address` text COMMENT '默认寄回地址',
  `huan_wei_handle_time` int(11) DEFAULT NULL COMMENT '确认收货时间换货维修',
  `send_time` int(11) DEFAULT NULL COMMENT '商家发货时间',
  `send_wuliu_type` varchar(255) DEFAULT NULL COMMENT '发送物流类型',
  `send_wuliu_order` varchar(255) DEFAULT NULL COMMENT '发送物流单号',
  `yes_or_no` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_after_sale_following`
--

LOCK TABLES `fy_after_sale_following` WRITE;
/*!40000 ALTER TABLE `fy_after_sale_following` DISABLE KEYS */;
INSERT INTO `fy_after_sale_following` VALUES (1,1,37,'18285111561','1441217402201808291344524540','omQYXwNAT5uC15TQqMGxajJzqo4s',8,'ffff',3,'ddd','','',1535523797,NULL,'贵州省贵阳市云岩区大西门海文小学旁',1,1535523866,1535523589,NULL,1535523866,'dfsefd1234567098765','{\"id\":2,\"uid\":3,\"name\":\"\\u770b\\u89c1\\u4e86\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e30\\u53f0\\u533a\\u5357\\u82d1\\u8857\\u9053\",\"street\":\"\\u54e6\\u54e6\\u54e6\\u91cc\\u54af\\u6234\\u83ab\\u54ed\\u5462\",\"status\":1,\"addtime\":1535421884,\"updatetime\":1535421884}',NULL,NULL,NULL,NULL,1),(2,1,38,'18285111561','1441217402201808291433183541','omQYXwNAT5uC15TQqMGxajJzqo4s',1,'wertyw',1,'ert','','',NULL,NULL,NULL,NULL,NULL,1535525152,NULL,1535525152,NULL,'{\"id\":2,\"uid\":3,\"name\":\"\\u770b\\u89c1\\u4e86\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e30\\u53f0\\u533a\\u5357\\u82d1\\u8857\\u9053\",\"street\":\"\\u54e6\\u54e6\\u54e6\\u91cc\\u54af\\u6234\\u83ab\\u54ed\\u5462\",\"status\":1,\"addtime\":1535421884,\"updatetime\":1535421884}',NULL,NULL,NULL,NULL,0),(3,1,1,'13765805489','1441217402201808311656478916','omQYXwM8TEkiBZR7Ldm891OOWbNQ',1,'不要了',3,'','','',NULL,NULL,NULL,NULL,NULL,1535706860,NULL,1535706860,NULL,'{\"id\":2,\"uid\":2,\"name\":\"\\u6bb5\\u6b22\",\"mobile\":\"13765805489\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"\\u4e5f\\u662f\",\"status\":1,\"addtime\":1535705798,\"updatetime\":1535705798}',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `fy_after_sale_following` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_brand`
--

DROP TABLE IF EXISTS `fy_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '品牌名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片',
  `desc` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '所属用户',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_brand`
--

LOCK TABLES `fy_brand` WRITE;
/*!40000 ALTER TABLE `fy_brand` DISABLE KEYS */;
INSERT INTO `fy_brand` VALUES (15,'ONLY','/pic/uploads/20180817/4708e60a8d639063a68d3621e431afce.png','',20,1534471133,1534471133,0),(16,'ochirly','/pic/uploads/20180817/0d9222085bdc8a62b30753a9d685191b.png','',21,1534472464,1534472464,0),(17,'Lee','/pic/uploads/20180817/24566dbf09a88d562f9709b94ea479eb.png','',23,1534473367,1534473367,0),(18,'李宁','/pic/uploads/20180817/2412232686f7bbcc2e8861c8848a066a.png','',21,1534474516,1534474516,0),(19,'叮当猫','/pic/uploads/20180820/04b70532101f2e32bc80bf2beca7e1b5.jpg','',20,1534732108,1534730915,0),(20,'甜可果园','/pic/uploads/20180828/68c227a06d53ab34c46c55efdf2b163d.png','',21,1535418871,1535418871,0),(21,'易果生鲜','/pic/uploads/20180828/a8a3dde9ae76534705e8b932f3dc2e1c.png','',20,1535419391,1535419391,0);
/*!40000 ALTER TABLE `fy_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_car`
--

DROP TABLE IF EXISTS `fy_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_car` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  `goods_num` smallint(10) NOT NULL COMMENT '商品数量',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '该条商品的状态1表示未结算的商品0表示结算的商品',
  `detail` text COMMENT '商品详情json存储',
  `sku_id` int(10) DEFAULT NULL COMMENT 'skuid',
  `show_status` tinyint(1) DEFAULT '1' COMMENT '默认显示，0否',
  `val` varchar(255) DEFAULT NULL COMMENT '值组合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_car`
--

LOCK TABLES `fy_car` WRITE;
/*!40000 ALTER TABLE `fy_car` DISABLE KEYS */;
INSERT INTO `fy_car` VALUES (3,1,NULL,'omQYXwAasNeXdGSMymd91487Ds1g',1,1535769876,1535769876,1,NULL,3,1,'5000g');
/*!40000 ALTER TABLE `fy_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer`
--

DROP TABLE IF EXISTS `fy_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `username` varchar(255) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `sex` tinyint(1) DEFAULT NULL COMMENT '1男2女3未知',
  `nickname` varchar(50) DEFAULT NULL COMMENT '微信昵称',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `mobile` varchar(12) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `headimgurl` varchar(512) DEFAULT NULL COMMENT '微信头像',
  `score` int(10) DEFAULT NULL COMMENT '会员积分',
  `experience` int(10) DEFAULT '0' COMMENT '会员经验值',
  `login_ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `continuity_day` int(4) unsigned DEFAULT '0' COMMENT '连续签到天数',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `reg_time` int(11) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer`
--

LOCK TABLES `fy_customer` WRITE;
/*!40000 ALTER TABLE `fy_customer` DISABLE KEYS */;
INSERT INTO `fy_customer` VALUES (1,NULL,'omQYXwNAT5uC15TQqMGxajJzqo4s',1,'葡萄不长牙',NULL,NULL,NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/micicBxD02xCNicL5pYMEttjRkydmsp7bLwqxvacutLxbzE63iaFPXpbicIW0LOaiboW3xnoJMg5HR8sJ0sHH4YicFzgw/132',10,0,'220.197.182.69',0,1,0,1535705545,1535705859,NULL,'zh_CN','贵阳','贵州','中国'),(2,NULL,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',1,'Baymax',NULL,NULL,NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq2d8mGwPshVjOWKEqTJJVwShvxIOGrUJW86jogK8FW7SKGg5YuCIibomSo8PrdIPGnywlFHgP8WsQ/132',20,10,'220.197.182.71',0,1,0,1535705741,NULL,NULL,'zh_CN','贵阳','贵州','中国'),(3,NULL,'omQYXwAasNeXdGSMymd91487Ds1g',1,'DANIEL',NULL,NULL,NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/BpprxVMjsB3m98GlYXgpntu9MMVIov2On3qu7IxJmGlZCmtYO6JoCHPyWZjvDuEaQguMfJg3fsEoaRiaEwibRAFA/132',1,0,'220.197.182.86',1,1,0,1535765279,1535767787,NULL,'zh_CN','深圳','广东','中国');
/*!40000 ALTER TABLE `fy_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_activity_log`
--

DROP TABLE IF EXISTS `fy_customer_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_activity_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'activitylog表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `activity_detail` text,
  `status` tinyint(1) DEFAULT NULL COMMENT '1已参与|2参与中',
  `create_time` int(11) DEFAULT NULL COMMENT '开始参与活动时间',
  `update_time` int(11) DEFAULT NULL COMMENT '活动参与完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_activity_log`
--

LOCK TABLES `fy_customer_activity_log` WRITE;
/*!40000 ALTER TABLE `fy_customer_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_customer_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_address`
--

DROP TABLE IF EXISTS `fy_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(32) NOT NULL COMMENT '收货人',
  `mobile` varchar(12) NOT NULL COMMENT '用户电话',
  `address` varchar(512) NOT NULL COMMENT '地址',
  `street` varchar(512) DEFAULT NULL COMMENT '街道',
  `status` tinyint(1) DEFAULT '0' COMMENT '1默认地址|0非默认地址',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `updatetime` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_address`
--

LOCK TABLES `fy_customer_address` WRITE;
/*!40000 ALTER TABLE `fy_customer_address` DISABLE KEYS */;
INSERT INTO `fy_customer_address` VALUES (1,1,'dddd','18285111561','北京市东城区东华门街道','eeeeeeeee',1,1535705561,1535705561),(2,2,'段欢','13765805489','北京市东城区东华门街道','也是',1,1535705798,1535705798),(3,3,'测试人','18988756181','天津市河北区新开河街道','测试',1,1535765409,1535765409);
/*!40000 ALTER TABLE `fy_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_collect`
--

DROP TABLE IF EXISTS `fy_customer_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `addtime` int(11) NOT NULL COMMENT '收藏时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '1状态备用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_collect`
--

LOCK TABLES `fy_customer_collect` WRITE;
/*!40000 ALTER TABLE `fy_customer_collect` DISABLE KEYS */;
INSERT INTO `fy_customer_collect` VALUES (1,3,6,1535766209,0);
/*!40000 ALTER TABLE `fy_customer_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_grade`
--

DROP TABLE IF EXISTS `fy_customer_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_grade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员等级表',
  `name` varchar(20) NOT NULL COMMENT '等级名称',
  `experience_start` int(10) DEFAULT NULL COMMENT '积分开始值',
  `experience_end` int(10) DEFAULT NULL COMMENT '积分结束值',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  `all` varchar(255) DEFAULT NULL COMMENT '权益id列表',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `goods_score_rate` decimal(10,2) DEFAULT '1.00' COMMENT '购物返积分倍率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_grade`
--

LOCK TABLES `fy_customer_grade` WRITE;
/*!40000 ALTER TABLE `fy_customer_grade` DISABLE KEYS */;
INSERT INTO `fy_customer_grade` VALUES (34,'青铜会员',0,1999,1530841065,1532600931,'1',0,1.00),(35,'白银会员',2000,9999,1530841120,1532600928,'1<br/>2',0,1.50),(36,'黄金会员',10000,29999,1530841155,1532600925,'1<br/>2<br/>4',0,2.00),(37,'钻石会员',30000,10000000,1530841210,1534129185,'1<br/>2<br/>3<br/>4',0,3.00);
/*!40000 ALTER TABLE `fy_customer_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_grade_desc`
--

DROP TABLE IF EXISTS `fy_customer_grade_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_grade_desc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员等级规则说明',
  `detail` text NOT NULL,
  `addtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `updatetime` int(10) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `type` tinyint(1) DEFAULT NULL COMMENT '1等级规则|2升级攻略|3权益说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_grade_desc`
--

LOCK TABLES `fy_customer_grade_desc` WRITE;
/*!40000 ALTER TABLE `fy_customer_grade_desc` DISABLE KEYS */;
INSERT INTO `fy_customer_grade_desc` VALUES (5,'&lt;p style=&quot;text-align: center;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.会员共分为4个等级，分别为：青铜会员、白银会员、黄金会员、钻石会员。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.会员级别由经验值决定，经验值越高会员等级越高，享受到的会员权益越多。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.成长值与消费金额成正比，完成购物后获得与结算金额相对应的成长值。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.会员级别的升降均由系统自动处理，无需申请。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;',1530842063,1,1534478144,0,1),(6,'&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;会员专属特权&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;table width=&quot;613&quot; align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员专属特权&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;青铜会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;白银会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;黄金会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;钻石会员&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;新人礼包&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;购物积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;标准积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;1.5倍积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;2倍积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;3倍积分&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员优惠活动&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;游戏抽奖&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员升级送积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;100积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;500积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;1000积分&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;免邮券&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;三月1张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;单月1张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月1张&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;生日礼包&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;超值优惠券&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月2张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月5张&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;钻石会员尊享体验&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;包括但不限于新品体验、尊享定制体验等&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1530842847,1,1532600984,0,3),(7,'&lt;p&gt;1.通过经验值计算会员等级；&lt;/p&gt;&lt;p&gt;2.购物送相应的经验值。&lt;br/&gt;&lt;/p&gt;',1532601039,1,1534130353,0,2);
/*!40000 ALTER TABLE `fy_customer_grade_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_login_log`
--

DROP TABLE IF EXISTS `fy_customer_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表ID',
  `uid` mediumint(8) NOT NULL COMMENT '用户ID',
  `openid` varchar(50) NOT NULL COMMENT '用户openid',
  `login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `login_ip` char(15) NOT NULL COMMENT '登录IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_login_log`
--

LOCK TABLES `fy_customer_login_log` WRITE;
/*!40000 ALTER TABLE `fy_customer_login_log` DISABLE KEYS */;
INSERT INTO `fy_customer_login_log` VALUES (1,0,'omQYXwNAT5uC15TQqMGxajJzqo4s','2018-08-31 08:50:56','220.197.182.69'),(2,0,'omQYXwM8TEkiBZR7Ldm891OOWbNQ','2018-08-31 08:53:09','220.197.182.71'),(3,2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ','2018-08-31 09:13:26','220.197.182.71'),(4,3,'omQYXwAasNeXdGSMymd91487Ds1g','2018-09-01 01:27:59','220.197.182.86'),(5,3,'omQYXwAasNeXdGSMymd91487Ds1g','2018-09-01 01:40:36','220.197.182.86'),(6,3,'omQYXwAasNeXdGSMymd91487Ds1g','2018-09-01 01:57:17','220.197.182.86'),(7,3,'omQYXwAasNeXdGSMymd91487Ds1g','2018-09-01 02:09:51','220.197.182.86'),(8,3,'omQYXwAasNeXdGSMymd91487Ds1g','2018-09-01 02:20:33','220.197.182.86'),(9,3,'omQYXwAasNeXdGSMymd91487Ds1g','2018-09-01 02:43:27','220.197.182.86');
/*!40000 ALTER TABLE `fy_customer_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_right`
--

DROP TABLE IF EXISTS `fy_customer_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_right` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员特权表',
  `name` varchar(50) DEFAULT NULL COMMENT '权益名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '权益图',
  `desc` varchar(255) DEFAULT NULL COMMENT '权益描述',
  `instruction` varchar(255) DEFAULT NULL COMMENT '权益说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除 ',
  `create_time` int(11) DEFAULT NULL COMMENT '增加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_right`
--

LOCK TABLES `fy_customer_right` WRITE;
/*!40000 ALTER TABLE `fy_customer_right` DISABLE KEYS */;
INSERT INTO `fy_customer_right` VALUES (1,'新人礼包','/pic/uploads/20180723/949ad4c57591a0793b777e74c0afbd33.jpg','新人专享','&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;',1,0,1532339953,1535772770),(2,'生日礼包','/pic/uploads/20180723/00b284f74955a532c941f0d4d061c7fd.jpg','生日会员专享','&lt;p&gt;生日会员专享&lt;/p&gt;',1,0,1532340075,1535772767),(3,'钻石会员专享','/pic/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png','钻石会员专享','&lt;p&gt;钻石会员专享&lt;/p&gt;',1,0,1532340098,1535772763),(4,'升级送积分','/pic/uploads/20180901/ad61a9b50e7d2b918618a29c9d7db9c8.png','升级送积分','&lt;p&gt;升级送积分&lt;/p&gt;',1,0,1532340122,1535773687),(5,'fff','/pic/uploads/20180901/216be9b0a3218cc416d95c39e00e52ed.png','ffff','&lt;p&gt;ffffff&lt;/p&gt;',1,0,1535772748,1535772748);
/*!40000 ALTER TABLE `fy_customer_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_sign`
--

DROP TABLE IF EXISTS `fy_customer_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_sign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员签到表',
  `uid` int(11) NOT NULL COMMENT '签到用户',
  `score` decimal(10,2) DEFAULT NULL COMMENT '签到积分',
  `reward_score` decimal(10,2) DEFAULT NULL COMMENT '奖励积分',
  `addtime` int(11) NOT NULL COMMENT '签到时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_sign`
--

LOCK TABLES `fy_customer_sign` WRITE;
/*!40000 ALTER TABLE `fy_customer_sign` DISABLE KEYS */;
INSERT INTO `fy_customer_sign` VALUES (1,3,2.00,0.00,1535766078);
/*!40000 ALTER TABLE `fy_customer_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_sign_rule`
--

DROP TABLE IF EXISTS `fy_customer_sign_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_sign_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员签到规则表',
  `continuous_days_one` int(255) DEFAULT NULL,
  `continuous_days_two` int(11) NOT NULL COMMENT '连续签到天数',
  `continuous_days_three` int(11) NOT NULL,
  `get_score_one` decimal(10,2) NOT NULL COMMENT '获得积分',
  `get_score_two` decimal(10,2) NOT NULL,
  `get_score_three` decimal(10,2) NOT NULL,
  `addtime` int(11) NOT NULL COMMENT '时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `desc` varchar(255) DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_sign_rule`
--

LOCK TABLES `fy_customer_sign_rule` WRITE;
/*!40000 ALTER TABLE `fy_customer_sign_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_customer_sign_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_task`
--

DROP TABLE IF EXISTS `fy_customer_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `main_pic` varchar(255) DEFAULT NULL COMMENT '主图',
  `display` int(1) DEFAULT NULL COMMENT '1图片|2图片+文字',
  `reward_score` decimal(10,2) DEFAULT NULL COMMENT '奖励积分',
  `name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `start_date` int(10) DEFAULT NULL COMMENT '任务开始时间',
  `end_date` int(10) DEFAULT NULL COMMENT '结束时间',
  `detail` text COMMENT '内容详情',
  `desc` text COMMENT '活动说明',
  `status` tinyint(1) DEFAULT NULL COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_task`
--

LOCK TABLES `fy_customer_task` WRITE;
/*!40000 ALTER TABLE `fy_customer_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_customer_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_customer_task_log`
--

DROP TABLE IF EXISTS `fy_customer_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_customer_task_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员任务完成明细表',
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `task_id` int(11) NOT NULL COMMENT '任务ID',
  `time` int(11) DEFAULT NULL COMMENT '参与时间',
  `status` tinyint(1) NOT NULL COMMENT '1完成|0未完成',
  `reward_score` decimal(10,2) NOT NULL COMMENT '奖励积分',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_customer_task_log`
--

LOCK TABLES `fy_customer_task_log` WRITE;
/*!40000 ALTER TABLE `fy_customer_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_customer_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_file`
--

DROP TABLE IF EXISTS `fy_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=734 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_file`
--

LOCK TABLES `fy_file` WRITE;
/*!40000 ALTER TABLE `fy_file` DISABLE KEYS */;
INSERT INTO `fy_file` VALUES (674,3,'/tmp/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png','微信图片_20180807145703.png','','image/png',172212,1534924480),(675,3,'/tmp/uploads/20180823/e7f06b85a02fbc3c57b06d42ff297224.png','23BFF577-AA70-4613-BF68-4FDA2C6D7203.png','','image/png',117804,1534989751),(676,3,'/tmp/uploads/20180823/bbf287373028bc77056ad3328d11d4d7.jpeg','660436E6-ABD0-4ACC-A562-1D4A99CB5B99.jpeg','','image/jpeg',230375,1534989770),(677,3,'/tmp/uploads/20180823/a31f0d6a1d54066e45309e35d936241d.png','86BFDD88-55C5-434B-96A2-B406A8C4C9C9.png','','image/png',197234,1534989793),(678,3,'/tmp/uploads/20180823/d16f4b25c83f76982a894098c0ffbded.jpeg','A8392A56-7F2B-4E28-92E7-B9E34D22FFF4.jpeg','','image/jpeg',661051,1534989793),(679,3,'/tmp/uploads/20180823/5a8007d0f2cd281cbd1474c068dd157a.png','DED2B0F3-A9A9-4DDF-9132-8E78893ECE19.png','','image/png',117804,1534989862),(680,3,'/tmp/uploads/20180823/7f4d2e22ccb9dfbfe190eed1559b9749.jpeg','0733EED8-0034-4409-99D8-50BC06BC2DED.jpeg','','image/jpeg',83728,1534989862),(681,3,'/tmp/uploads/20180823/6d23b382bce06b971bcec6565cf82cec.jpeg','2C3D9447-A9BB-4EBF-B6B5-26A63DA70C3A.jpeg','','image/jpeg',264262,1534989862),(682,3,'/tmp/uploads/20180823/1c753914e5fd1b45dfe99cfa41d47485.jpeg','94CB142A-AFAC-4F1B-9446-3901032F1486.jpeg','','image/jpeg',661051,1534989862),(683,3,'/tmp/uploads/20180823/fbac4558997b2d555673bdf29427b89d.png','5BCC1473-BF15-4CCD-8983-4D064AEC8CB9.png','','image/png',197234,1534989862),(684,3,'/tmp/uploads/20180823/1ff0415401dd35672a17d0bd8c1edf48.png','59669F98-126A-4356-8360-DE3DEEEEC0D2.png','','image/png',117804,1534989872),(685,3,'/tmp/uploads/20180828/e55b86ee3d35c7f152e9a64783a56d44.png','QQ截图20180828091055.png','','image/png',208617,1535418730),(686,3,'/tmp/uploads/20180828/68c227a06d53ab34c46c55efdf2b163d.png','QQ截图20180828091250.png','','image/png',22563,1535418866),(687,3,'/tmp/uploads/20180828/a11731d4b01a6dd41cdc21d3fdabf0cf.png','QQ截图20180828091328.png','','image/png',243390,1535418881),(688,3,'/tmp/uploads/20180828/5fc1332916aee8884f8095dcb76365ba.png','QQ截图201808280911251.png','','image/png',282306,1535418895),(689,3,'/tmp/uploads/20180828/db0bcda4a25dc457e29484b6b142504e.png','QQ截图20180828091328.png','','image/png',243390,1535418897),(690,3,'/tmp/uploads/20180828/f20a29f350023a47de051e85f22a019c.png','QQ截图20180828091339.png','','image/png',218819,1535418898),(691,3,'/tmp/uploads/20180828/1bde95e73b98544bc2de8d64ba1af22a.png','QQ截图20180828091354.png','','image/png',203993,1535418900),(692,3,'/tmp/uploads/20180828/a8a3dde9ae76534705e8b932f3dc2e1c.png','QQ截图20180828092202.png','','image/png',15068,1535419386),(693,3,'/tmp/uploads/20180828/71b30d3af10a39e896908eacfb343a70.png','QQ截图20180828092325.png','','image/png',169555,1535419460),(694,3,'/tmp/uploads/20180828/c045d562f15a442f6a1f43cc5ed8ef1d.png','QQ截图20180828092336.png','','image/png',342611,1535419462),(695,3,'/tmp/uploads/20180828/506f6fbc6072a1aac31e855b119870c2.png','QQ截图20180828092345.png','','image/png',313856,1535419464),(696,3,'/tmp/uploads/20180828/72ec56580efd36a9c26379cfb4596237.png','QQ截图20180828092353.png','','image/png',344568,1535419466),(697,3,'/tmp/uploads/20180828/e9e0eb39e98c6a3f34f255d1560ea838.png','QQ截图20180828092325.png','','image/png',169555,1535419672),(698,3,'/tmp/uploads/20180828/1703f293be77eeb90b78533b9778d25e.png','QQ截图20180828092325.png','','image/png',169555,1535419912),(699,3,'/tmp/uploads/20180828/482e772aa624a6168b9f60cfea70c603.png','QQ截图20180828091328.png','','image/png',243390,1535421366),(700,3,'/tmp/uploads/20180828/5c1f977d8b6c7720f0e41a3085fe6725.jpg','mmexport1535421394617.jpg','','image/jpeg',218819,1535421440),(701,3,'/tmp/uploads/20180828/7d52afafc59ce80ff6823ea9f0ae818c.jpg','mmexport1535421391168.jpg','','image/jpeg',243390,1535421446),(702,3,'/tmp/uploads/20180828/67d3e57d568a4623e2af7ff04bd168f2.jpg','微信图片_20180814113948.jpg','','image/jpeg',45519,1535428426),(703,3,'/tmp/uploads/20180828/a5b545db813421d75aaecfcd42d8a777.jpg','微信图片_20180814115907.jpg','','image/jpeg',36604,1535428426),(704,3,'/tmp/uploads/20180828/eddbd53897f5e2bb6ad54472d7a8c698.jpg','u=214273920,3494333795&fm=200&gp=0.jpg','','image/jpeg',22394,1535444368),(705,3,'/tmp/uploads/20180828/89c9a66a8fc734649e15a75ab7408024.jpg','u=214273920,3494333795&fm=200&gp=0.jpg','','image/jpeg',22394,1535444375),(706,3,'/tmp/uploads/20180828/30a0caede7a7f351efdfc6a40437e7de.jpg','u=3323704405,62374999&fm=202&src=762&mola=new&crop=v1.jpg','','image/jpeg',9142,1535444375),(707,3,'/tmp/uploads/20180828/9a2e1e360b51b0eb8ae7a7a7ac02fd63.jpg','u=1950348361,3686672964&fm=77&src=1002.jpg','','image/jpeg',7341,1535444376),(708,3,'/tmp/uploads/20180828/dacbf091fa632f201a0a514d77cd61a7.jpg','u=4065688865,1655321373&fm=202.jpg','','image/jpeg',69530,1535444376),(709,3,'/tmp/uploads/20180829/620e8b0e42fc5f40b6a25f14d2bc1aaf.jpg','O1CN011l4Phoe3KtdIeIz_!!917264765.jpg_60x60q90.jpg','','image/jpeg',2122,1535528982),(710,3,'/tmp/uploads/20180829/4acc86019b036b0f8343ea773f01ff9f.jpg','O1CN011l4Phoe3KtdIeIz_!!917264765.jpg_60x60q90.jpg','','image/jpeg',2122,1535529107),(711,3,'/tmp/uploads/20180829/82e7853f93e108fa216bb00defb1c47a.jpg','O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_60x60q90.jpg','','image/jpeg',2476,1535529107),(712,3,'/tmp/uploads/20180829/f9b8f57aa202464606723cbeb3636513.jpg','TB2U8_prCYTBKNjSZKbXXXJ8pXa_!!917264765.jpg_430x430q90.jpg','','image/jpeg',54429,1535529107),(713,3,'/tmp/uploads/20180829/8e3196c747bc38c0f48246700aac1534.jpg','O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg','','image/jpeg',62967,1535529394),(714,3,'/tmp/uploads/20180829/95e825fba136594ebfa7993a1b0c6c23.jpg','O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg','','image/jpeg',62967,1535529404),(715,3,'/tmp/uploads/20180829/83df97b84fee562c38be9c1ac040d009.jpg','TB2U8_prCYTBKNjSZKbXXXJ8pXa_!!917264765.jpg_430x430q90.jpg','','image/jpeg',54429,1535529471),(716,3,'/tmp/uploads/20180829/aef56645484fe050e6be48a7d29e187f.jpg','O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg','','image/jpeg',62967,1535529471),(717,3,'/tmp/uploads/20180829/ff52a9827eae2d3b49ef19bae36a8756.jpg','TB2U8_prCYTBKNjSZKbXXXJ8pXa_!!917264765.jpg_430x430q90.jpg','','image/jpeg',54429,1535529539),(718,3,'/tmp/uploads/20180830/ea1de0a49c95ce254cd599ec2fdae29e.png','QQ截图20180830092404.png','','image/png',257741,1535592307),(719,3,'/tmp/uploads/20180830/ea45e2935e48ced0a4d5d41e0747b67f.png','QQ截图20180830092404.png','','image/png',257741,1535592325),(720,3,'/tmp/uploads/20180830/4391e2482ec76691700cd515c9345bdb.png','QQ截图20180830092445.png','','image/png',188156,1535592325),(721,3,'/tmp/uploads/20180830/c6aeb8f410cffb7177176664f22faeca.png','QQ截图20180830092427.png','','image/png',300680,1535592325),(722,3,'/tmp/uploads/20180830/e36a0b9370ce4cc1f5253ecbe60965d3.png','QQ截图20180830092419.png','','image/png',272543,1535592325),(723,3,'/tmp/uploads/20180830/2acd8620b35b3002254d1efe262bd616.png','QQ截图20180830092427.png','','image/png',300680,1535592336),(724,3,'/tmp/uploads/20180830/e1cb7a1a90efbff95611e80dd15bb476.png','QQ截图20180830092445.png','','image/png',188156,1535592338),(725,3,'/tmp/uploads/20180831/64d622707bdba1b080aafa78023e9939.jpg','timg (2).jpg','','image/jpeg',28989,1535685769),(726,3,'/tmp/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg','timg (2).jpg','','image/jpeg',28989,1535685832),(727,3,'/tmp/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg','timg (2).jpg','','image/jpeg',28989,1535685882),(728,3,'/tmp/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg','timg.jpg','','image/jpeg',19117,1535685890),(729,3,'/tmp/uploads/20180831/c9eeb4703eccfd5b46d57249451c0db7.jpg','timg.jpg','','image/jpeg',19117,1535696547),(730,3,'/tmp/uploads/20180831/1d24ff63ce97e98b5bfb4ff2fab9feb9.jpg','timg.jpg','','image/jpeg',19117,1535696577),(731,3,'/tmp/uploads/20180831/443091067af6b9ff229b087de97c04ec.jpg','timg (2).jpg','','image/jpeg',28989,1535696587),(732,3,'/tmp/uploads/20180901/216be9b0a3218cc416d95c39e00e52ed.png','logo.png','','image/png',527314,1535772712),(733,3,'/tmp/uploads/20180901/ad61a9b50e7d2b918618a29c9d7db9c8.png','logo.png','','image/png',527314,1535773681);
/*!40000 ALTER TABLE `fy_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_gift_bag`
--

DROP TABLE IF EXISTS `fy_gift_bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_gift_bag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '礼包管理表',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lottery_id` varchar(255) NOT NULL COMMENT '奖券id用逗号拼接',
  `isdelete` tinyint(1) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL COMMENT '名字',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_gift_bag`
--

LOCK TABLES `fy_gift_bag` WRITE;
/*!40000 ALTER TABLE `fy_gift_bag` DISABLE KEYS */;
INSERT INTO `fy_gift_bag` VALUES (3,1534310671,1535419998,1,'1,2',0,'新人礼包',''),(4,1534310701,1535419990,1,'1,2',0,'生日礼包','');
/*!40000 ALTER TABLE `fy_gift_bag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_gift_bag_log`
--

DROP TABLE IF EXISTS `fy_gift_bag_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_gift_bag_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '礼包记录',
  `openid` varchar(255) DEFAULT NULL,
  `gift_bag_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未发送1已经发送',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1新人礼包2生日礼包3待定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_gift_bag_log`
--

LOCK TABLES `fy_gift_bag_log` WRITE;
/*!40000 ALTER TABLE `fy_gift_bag_log` DISABLE KEYS */;
INSERT INTO `fy_gift_bag_log` VALUES (1,'omQYXwNAT5uC15TQqMGxajJzqo4s',3,1,1535705545,NULL,1),(2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',3,1,1535705741,NULL,1),(3,'omQYXwAasNeXdGSMymd91487Ds1g',3,1,1535765279,NULL,1);
/*!40000 ALTER TABLE `fy_gift_bag_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods`
--

DROP TABLE IF EXISTS `fy_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '商品所属用户',
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `pic` text COMMENT '商品图片以json格式存储轮播图',
  `original_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `settlement_type` tinyint(4) DEFAULT '1' COMMENT '结算类型1-货币2-积分3-积分+货币',
  `goods_class_id` int(10) NOT NULL COMMENT '商品分类id',
  `goods_brand_id` int(10) DEFAULT NULL COMMENT '品牌id',
  `show_area` tinyint(4) DEFAULT '3' COMMENT '展示区域1-限时抢购2-积分商城3-日常售卖4-热销产品5-积分+现价',
  `detail` text NOT NULL COMMENT '商品详情',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1上架0仓库中',
  `main_image` varchar(255) NOT NULL COMMENT '商品主图',
  `subtitle` varchar(50) DEFAULT NULL COMMENT '商品副标题',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '修改时间',
  `orderby` int(10) DEFAULT NULL COMMENT '商品排序值',
  `click_count` int(10) DEFAULT NULL COMMENT '商品点击数',
  `goods_weight` decimal(10,3) NOT NULL COMMENT '商品重量',
  `start_date` int(11) DEFAULT NULL COMMENT '开售时间',
  `end_date` int(11) DEFAULT NULL COMMENT '结束时间',
  `is_real` tinyint(1) NOT NULL COMMENT '是否是实物1 是 0 否',
  `return_score` int(10) DEFAULT NULL COMMENT '返现积分',
  `score_price` int(10) DEFAULT NULL COMMENT '积分,价格',
  `price_real` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `score` int(10) DEFAULT NULL COMMENT '积分换价',
  `basic_price` varchar(255) DEFAULT NULL COMMENT '现价',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '是否添加到回收站',
  `store_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1下单减库存 2拍下减库存',
  `free_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '包邮1不包邮0',
  `postage` decimal(10,2) DEFAULT NULL COMMENT '邮费',
  `after_sale` varchar(255) DEFAULT NULL COMMENT '售后保障',
  `routine` text COMMENT '常规参数以json存',
  `shop_code` varchar(255) DEFAULT NULL COMMENT '商家编码',
  `buy_num` int(11) DEFAULT '0' COMMENT '销量',
  `bar_code` varchar(255) DEFAULT NULL COMMENT '商品条形码',
  `is_return_goods` tinyint(1) DEFAULT '1' COMMENT '1支持，0否',
  `yieldly` varchar(50) DEFAULT NULL COMMENT '生产地',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许评论',
  `up_tip` tinyint(1) DEFAULT '0' COMMENT '0未提醒1已提醒',
  `up_error_reason` text,
  `service` text COMMENT '字符串存储',
  `service_mobile` varchar(12) DEFAULT NULL COMMENT '商家联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods`
--

LOCK TABLES `fy_goods` WRITE;
/*!40000 ALTER TABLE `fy_goods` DISABLE KEYS */;
INSERT INTO `fy_goods` VALUES (1,21,'陕西嘎啦苹果水果新鲜10斤当季整箱现摘批发包邮小红富士','[\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"\\/pic\\/uploads\\/20180828\\/db0bcda4a25dc457e29484b6b142504e.png\",\"\\/pic\\/uploads\\/20180828\\/f20a29f350023a47de051e85f22a019c.png\",\"\\/pic\\/uploads\\/20180828\\/1bde95e73b98544bc2de8d64ba1af22a.png\"]',30.00,1,1,20,4,'&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1,'/pic/uploads/20180828/a11731d4b01a6dd41cdc21d3fdabf0cf.png','',1535703801,1535703801,10,NULL,5000.000,NULL,NULL,1,10,NULL,0.00,0,'0.01',0,1,1,0.00,'&lt;p&gt;坏单包退：签收后24小时内，食品出现腐败变质，商家承诺24小时之内处理。&lt;/p&gt;','{\"\\u54c1\\u724c\":\"\\u751c\\u53ef\\u679c\\u56ed\",\"\\u4fdd\\u8d28\\u671f\":\"7\\u5929\",\"\\u51c0\\u542b\\u91cf\":\"5000g\",\"\\u5305\\u88c5\\u65b9\\u5f0f\":\"\\u5305\\u88c5\",\"\\u662f\\u5426\\u4e3a\\u6709\\u673a\\u98df\\u54c1\":\"\\u5426\",\"\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u7701\\u4efd\":\"\\u9655\\u897f\\u7701\",\"\\u5957\\u9910\\u4efd\\u91cf\":\"3\\u4eba\\u4efd\",\"\\u914d\\u9001\\u9891\\u6b21\":\"1\\u54682\\u6b21\"}','',18571,'',1,'',1,0,'','[\"\\u574f\\u5355\\u5305\\u9000\"]','86701701'),(2,20,'澳大利亚脐橙10个约140g/个 进口甜橙子新鲜水果','[\"\\/pic\\/uploads\\/20180828\\/71b30d3af10a39e896908eacfb343a70.png\",\"\\/pic\\/uploads\\/20180828\\/c045d562f15a442f6a1f43cc5ed8ef1d.png\",\"\\/pic\\/uploads\\/20180828\\/506f6fbc6072a1aac31e855b119870c2.png\",\"\\/pic\\/uploads\\/20180828\\/72ec56580efd36a9c26379cfb4596237.png\"]',50.00,2,3,21,4,'&lt;p&gt;&lt;img src=&quot;http://www.fyxt701.com/ueditor/php/upload/image/20180828/1535419655175110.jpg&quot; title=&quot;1535419655175110.jpg&quot;/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419655490129.jpg&quot; title=&quot;1535419655490129.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419656312797.jpg&quot; title=&quot;1535419656312797.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419656128199.jpg&quot; title=&quot;1535419656128199.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419656973206.jpg&quot; title=&quot;1535419656973206.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1,'/pic/uploads/20180828/e9e0eb39e98c6a3f34f255d1560ea838.png','',1535436428,1535436428,10,NULL,1400.000,NULL,NULL,1,10,NULL,0.00,1,'0.01',0,1,1,0.00,'&lt;p&gt;坏单包退：确认收货24小时内，食物发生腐败变质，商家在24小时内处理。&lt;/p&gt;','{\"\\u54c1\\u724c\":\"\\u6613\\u679c\\u751f\\u9c9c\",\"\\u51c0\\u542b\\u91cf\":\"1400g\",\"\\u5305\\u88c5\\u65b9\\u5f0f\":\"\\u5305\\u88c5\",\"\\u4fdd\\u8d28\\u671f\":\"7\\u5929\",\"\\u5957\\u9910\\u4efd\\u91cf\":\"1\\u4eba\\u4efd\",\"\\u914d\\u9001\\u9891\\u6b21\":\"1\\u54682\\u6b21\"}','',10661,'',0,'',1,0,'','[\"\\u574f\\u5355\\u5305\\u9000\"]','86701701'),(3,21,'【新品预售】SK-II skii sk2能量大红瓶面霜套装轻盈型 保湿A','[\"\\/pic\\/uploads\\/20180829\\/83df97b84fee562c38be9c1ac040d009.jpg\",\"\\/pic\\/uploads\\/20180829\\/aef56645484fe050e6be48a7d29e187f.jpg\"]',10.00,1,4,15,1,'&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180829/1535529382432667.jpg&quot; title=&quot;1535529382432667.jpg&quot; alt=&quot;O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180829/1535529323978093.jpg&quot; title=&quot;1535529323978093.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1,'/pic/uploads/20180829/ff52a9827eae2d3b49ef19bae36a8756.jpg','【新品预售】SK-II skii sk2能量大红瓶面霜套装轻盈型 保湿A',1535592151,1535592151,10,NULL,10.000,1535530402,1535618143,1,10,NULL,0.00,0,'0.2',0,1,1,0.00,'&lt;p&gt;质量不好可退换：非人为损坏&lt;/p&gt;',NULL,'',12,'',1,'江苏苏州',1,0,'','[\"\\u8d28\\u91cf\\u4e0d\\u597d\\u53ef\\u9000\\u6362\",\"7\\u65e5\\u53ef\\u6362\"]','18302563273'),(4,21,'新疆喀什西梅4斤大果顺丰包邮当季水果 新鲜西梅','[\"\\/pic\\/uploads\\/20180830\\/ea45e2935e48ced0a4d5d41e0747b67f.png\",\"\\/pic\\/uploads\\/20180830\\/4391e2482ec76691700cd515c9345bdb.png\",\"\\/pic\\/uploads\\/20180830\\/c6aeb8f410cffb7177176664f22faeca.png\",\"\\/pic\\/uploads\\/20180830\\/e36a0b9370ce4cc1f5253ecbe60965d3.png\",\"\\/pic\\/uploads\\/20180830\\/2acd8620b35b3002254d1efe262bd616.png\",\"\\/pic\\/uploads\\/20180830\\/e1cb7a1a90efbff95611e80dd15bb476.png\"]',50.00,3,5,20,4,'&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715470866.jpg&quot; title=&quot;1535592715470866.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715223950.jpg&quot; title=&quot;1535592715223950.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715131169.jpg&quot; title=&quot;1535592715131169.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715428269.jpg&quot; title=&quot;1535592715428269.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715454974.jpg&quot; title=&quot;1535592715454974.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715724215.jpg&quot; title=&quot;1535592715724215.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715908613.jpg&quot; title=&quot;1535592715908613.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715538300.jpg&quot; title=&quot;1535592715538300.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715682912.jpg&quot; title=&quot;1535592715682912.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1,'/pic/uploads/20180830/ea1de0a49c95ce254cd599ec2fdae29e.png','',1535593177,1535593177,10,NULL,1000.000,NULL,NULL,1,10,NULL,0.00,1,'0.01',0,1,1,0.00,'&lt;p&gt;坏单包退：确认收货24小时内食物出现腐败变质，商家承诺24小时内处理。&lt;/p&gt;','{\"\\u54c1\\u724c\":\"\\u751c\\u53ef\\u679c\\u56ed\",\"\\u4fdd\\u8d28\\u671f\":\"5\\u5929\",\"\\u51c0\\u542b\\u91cf\":\"1kg\\uff08\\u542b\\uff09-2.5kg\\uff08\\u542b\\uff09\",\"\\u5305\\u88c5\\u65b9\\u5f0f\":\"\\u5305\\u88c5\",\"\\u552e\\u5356\\u65b9\\u5f0f\":\"\\u5355\\u54c1\",\"\\u662f\\u5426\\u4e3a\\u6709\\u673a\\u98df\\u54c1\":\"\\u5426\",\"\\u751f\\u9c9c\\u50a8\\u5b58\\u6e29\\u5ea6\":\"0-8\\u2103\",\"\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u7701\\u4efd\":\"\\u65b0\\u7586\\u7ef4\\u543e\\u5c14\\u65cf\\u81ea\\u6cbb\\u533a\",\"\\u57ce\\u5e02\":\"\\u5580\\u4ec0\\u5730\\u533a\",\"\\u5957\\u9910\\u4efd\\u91cf\":\"5\\u4eba\\u4efd\",\"\\u5957\\u9910\\u5468\\u671f\":\"1\\u5468\",\"\\u914d\\u9001\\u9891\\u6b21\":\"1\\u54682\\u6b21\"}','',999,'',1,'',1,0,'','[\"\\u574f\\u5355\\u5305\\u9000\"]','86701701'),(5,21,'苹果手机','[\"\\/pic\\/uploads\\/20180831\\/b7e860b80b4714b627f9d72e6f71d72b.jpg\",\"\\/pic\\/uploads\\/20180831\\/f6f882914e96e541e77f0d3af9e7eb8b.jpg\"]',5200.00,1,6,20,1,'&lt;p&gt;苹果手机&lt;/p&gt;',1,'/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg','苹果手机',1535768413,1535768413,10,NULL,300.000,1535685661,1536031265,1,0,NULL,0.00,0,'0.01',0,1,1,0.00,'&lt;p&gt;ok&lt;/p&gt;',NULL,'',500,'',1,'上海',1,0,'','[\"\\u6ca1\\u6709\\u670d\\u52a1\"]',''),(6,21,'积分商城苹果手机','[\"\\/pic\\/uploads\\/20180831\\/1d24ff63ce97e98b5bfb4ff2fab9feb9.jpg\",\"\\/pic\\/uploads\\/20180831\\/443091067af6b9ff229b087de97c04ec.jpg\"]',10.00,2,6,20,2,'&lt;p&gt;0000&lt;/p&gt;',1,'/pic/uploads/20180831/c9eeb4703eccfd5b46d57249451c0db7.jpg','',1535696647,1535696647,10,NULL,300.000,NULL,NULL,1,10,NULL,0.00,10,'',0,1,1,NULL,'&lt;p&gt;正品&lt;/p&gt;',NULL,'',11,'',1,'',1,0,'','[\"\\u6b63\\u54c1\\u4fdd\\u969c\"]','');
/*!40000 ALTER TABLE `fy_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods_attribute`
--

DROP TABLE IF EXISTS `fy_goods_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性存储值表',
  `goods_id` int(11) NOT NULL,
  `attribute_name` varchar(255) DEFAULT NULL COMMENT '商品存贮所有属性的值',
  `goods_code` varchar(255) DEFAULT NULL COMMENT '商品编码关联id',
  `store` int(11) DEFAULT '0' COMMENT '库存',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `bar_code` varchar(255) NOT NULL COMMENT '条形码',
  `point_score` int(10) DEFAULT '0' COMMENT '积分价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods_attribute`
--

LOCK TABLES `fy_goods_attribute` WRITE;
/*!40000 ALTER TABLE `fy_goods_attribute` DISABLE KEYS */;
INSERT INTO `fy_goods_attribute` VALUES (3,1,'1535420770059_净含量:1535420787291_5000g','12425425',59,0.01,'452754754',1),(4,2,'1535420855229_净含量:1535420870046_1400g','452577',809,0.01,'4527575204',1),(6,3,'1535529211591_重量:1535529229659_80g','',20,0.50,'',0),(8,3,'1535529211591_重量:1535534351500_45','',44,234.00,'',0),(9,4,'1535592549001_净含量:1535592562262_1kg','404524524',998,0.01,'4250425401',1),(10,4,'1535592549001_净含量:1535592566192_1.5kg','404524524',999,0.02,'4250425402',2),(11,4,'1535592549001_净含量:1535592569678_2kg','404524524',999,0.03,'4250425403',3),(12,4,'1535592549001_净含量:1535592573415_2.5kg','404524524',1000,0.04,'4250425404',4),(16,5,'1535685741914_规格:1535685749337_通用','',10,0.01,'',10),(17,6,'1535696425476_属性:1535696432758_通用','',98,0.01,'',10);
/*!40000 ALTER TABLE `fy_goods_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods_browse`
--

DROP TABLE IF EXISTS `fy_goods_browse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods_browse` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品浏览记录表',
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `num` int(1) DEFAULT NULL COMMENT '浏览次数',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods_browse`
--

LOCK TABLES `fy_goods_browse` WRITE;
/*!40000 ALTER TABLE `fy_goods_browse` DISABLE KEYS */;
INSERT INTO `fy_goods_browse` VALUES (1,NULL,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',1,1535705776,3,1535705776),(2,NULL,'omQYXwNAT5uC15TQqMGxajJzqo4s',1,1535705870,2,1535705870),(3,NULL,'omQYXwAasNeXdGSMymd91487Ds1g',1,1535765321,10,1535765321),(4,NULL,'omQYXwAasNeXdGSMymd91487Ds1g',2,1535765540,5,1535765540),(5,NULL,'omQYXwAasNeXdGSMymd91487Ds1g',5,1535765565,5,1535765565),(6,NULL,'omQYXwAasNeXdGSMymd91487Ds1g',4,1535765723,8,1535765723),(7,NULL,'omQYXwAasNeXdGSMymd91487Ds1g',6,1535766098,12,1535766098);
/*!40000 ALTER TABLE `fy_goods_browse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods_class`
--

DROP TABLE IF EXISTS `fy_goods_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `path` varchar(255) NOT NULL DEFAULT '0,' COMMENT '路径',
  `pic` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods_class`
--

LOCK TABLES `fy_goods_class` WRITE;
/*!40000 ALTER TABLE `fy_goods_class` DISABLE KEYS */;
INSERT INTO `fy_goods_class` VALUES (1,0,'水果','0,','',NULL),(2,1,'苹果','0,1,','',NULL),(3,1,'橙子','0,1,','',NULL),(4,0,'化妆品','0,','',NULL),(5,1,'西梅','0,1,','',NULL),(6,0,'手机','0,','',NULL);
/*!40000 ALTER TABLE `fy_goods_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods_comment`
--

DROP TABLE IF EXISTS `fy_goods_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品评价表',
  `openid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `uid` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `pic` text COMMENT '评价晒图json存储最多5张',
  `content` text COMMENT '评论内容',
  `create_time` int(11) DEFAULT NULL COMMENT '评论时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态，是否显示',
  `similarity_score` decimal(10,2) NOT NULL COMMENT '相似积分',
  `logistics_score` decimal(10,2) NOT NULL COMMENT '物流得分',
  `service_score` decimal(10,2) NOT NULL COMMENT '服务积分',
  `avg_score` decimal(10,2) NOT NULL COMMENT '平均分',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `return_content` text COMMENT '回复',
  `return_is` tinyint(1) DEFAULT '0' COMMENT '0未回复1已回复',
  `user_id` int(11) DEFAULT NULL COMMENT '所属商户id',
  `ogid` int(11) DEFAULT NULL COMMENT '关联order_goods_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods_comment`
--

LOCK TABLES `fy_goods_comment` WRITE;
/*!40000 ALTER TABLE `fy_goods_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_goods_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods_comment_reply`
--

DROP TABLE IF EXISTS `fy_goods_comment_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods_comment_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论回复表',
  `user_id` int(10) NOT NULL COMMENT '回复人id',
  `goods_comment_id` int(10) NOT NULL COMMENT '回复的那条留言',
  `addtime` int(10) DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods_comment_reply`
--

LOCK TABLES `fy_goods_comment_reply` WRITE;
/*!40000 ALTER TABLE `fy_goods_comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_goods_comment_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods_proprety_name`
--

DROP TABLE IF EXISTS `fy_goods_proprety_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods_proprety_name` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性名表',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `name` varchar(255) NOT NULL COMMENT '属性名',
  `goods_class_id` int(11) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods_proprety_name`
--

LOCK TABLES `fy_goods_proprety_name` WRITE;
/*!40000 ALTER TABLE `fy_goods_proprety_name` DISABLE KEYS */;
INSERT INTO `fy_goods_proprety_name` VALUES (7,2,'1535420855229_净含量',NULL),(26,3,'1535529211591_重量',NULL),(28,4,'1535592549001_净含量',NULL),(31,6,'1535696425476_属性',NULL),(33,1,'1535420770059_净含量',NULL),(35,5,'1535685741914_规格',NULL);
/*!40000 ALTER TABLE `fy_goods_proprety_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_goods_proprety_val`
--

DROP TABLE IF EXISTS `fy_goods_proprety_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_goods_proprety_val` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性值表',
  `propre_name_id` int(11) NOT NULL COMMENT '属性名id',
  `value` varchar(255) NOT NULL COMMENT '属性值',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id备用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_goods_proprety_val`
--

LOCK TABLES `fy_goods_proprety_val` WRITE;
/*!40000 ALTER TABLE `fy_goods_proprety_val` DISABLE KEYS */;
INSERT INTO `fy_goods_proprety_val` VALUES (7,7,'1535420870046_1400g',2),(58,26,'1535529229659_80g',3),(59,26,'1535534351500_45',3),(68,28,'1535592562262_1kg',4),(69,28,'1535592566192_1.5kg',4),(70,28,'1535592569678_2kg',4),(71,28,'1535592573415_2.5kg',4),(77,31,'1535696432758_通用',6),(79,33,'1535420787291_5000g',1),(81,35,'1535685749337_通用',5);
/*!40000 ALTER TABLE `fy_goods_proprety_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_login_log`
--

DROP TABLE IF EXISTS `fy_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_login_log`
--

LOCK TABLES `fy_login_log` WRITE;
/*!40000 ALTER TABLE `fy_login_log` DISABLE KEYS */;
INSERT INTO `fy_login_log` VALUES (1,21,'220.197.182.87','中国 贵州 贵阳 ','Chrome(68.0.3440.106)','Windows 7','2018-08-31 09:04:44'),(2,1,'220.197.182.87','中国 贵州 贵阳 ','Chrome(68.0.3440.106)','Windows 7','2018-08-31 09:10:20'),(3,1,'220.197.182.89','中国 贵州 贵阳 ','Chrome(68.0.3440.106)','Windows 10','2018-09-01 01:54:47'),(4,1,'117.188.4.196','中国 中国  ','Chrome(64.0.3282.186)','Windows 7','2018-09-01 03:22:50');
/*!40000 ALTER TABLE `fy_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_lottery`
--

DROP TABLE IF EXISTS `fy_lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_lottery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '奖券表',
  `name` varchar(50) NOT NULL COMMENT '奖券名称',
  `pic` text NOT NULL COMMENT '权展示',
  `main_pic` varchar(255) NOT NULL COMMENT '活动主题图',
  `grant_start_date` int(11) DEFAULT NULL COMMENT '开始时间',
  `grant_end_date` int(11) DEFAULT NULL COMMENT '结束时间',
  `expire_start_date` int(11) DEFAULT NULL COMMENT '有效期开始时间',
  `expire_end_date` int(11) DEFAULT NULL COMMENT '有效期截止时间',
  `type` tinyint(1) NOT NULL COMMENT '1抵扣券2优惠券3代金券4积分抵现金',
  `coupon_money` decimal(10,2) NOT NULL COMMENT '优惠金额 减多少 ',
  `coupon_real_money` decimal(10,2) DEFAULT NULL COMMENT '优惠券面额 满多少',
  `receive_number` int(11) DEFAULT '0' COMMENT '领取量',
  `surplus_number` int(11) DEFAULT '0' COMMENT '剩余量',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '奖券数量',
  `goods_id` varchar(32) DEFAULT NULL COMMENT '0表示所有商品关联商品',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `desc` text COMMENT '奖券说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '0未发行，1发行中，2领取完状态',
  `update_time` int(11) DEFAULT NULL COMMENT '商户ID',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '默认值为0表示没有删除',
  `user_id` int(11) DEFAULT NULL COMMENT '商户ID',
  `expire_type` tinyint(1) DEFAULT '0' COMMENT '默认设置有效期，1有效期领取之后',
  `expire_time` int(11) DEFAULT NULL COMMENT '时间戳存储',
  `use_type` tinyint(1) DEFAULT '0' COMMENT '0商品1礼包',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_lottery`
--

LOCK TABLES `fy_lottery` WRITE;
/*!40000 ALTER TABLE `fy_lottery` DISABLE KEYS */;
INSERT INTO `fy_lottery` VALUES (1,'优惠券（新人礼包）','','/pic/uploads/20180828/1703f293be77eeb90b78533b9778d25e.png',0,0,0,0,2,1.00,1.00,0,100,100,'2','澳大利亚脐橙10个约140g/个 进口甜橙子新鲜水果','','',1,NULL,0,20,1,30,1),(2,'新人礼包','','/pic/uploads/20180828/5fc1332916aee8884f8095dcb76365ba.png',0,0,0,0,2,2.00,10.00,0,444,444,'all',NULL,'','&lt;p&gt;新人礼包&lt;/p&gt;',1,NULL,0,0,1,12,1),(3,'测试券','','/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png',1535426316,1535426771,1535426367,1535426729,2,1.00,1.00,1,9,10,'all',NULL,'','',0,NULL,1,0,0,0,0),(4,'测试用券','[\"\\/pic\\/uploads\\/20180828\\/67d3e57d568a4623e2af7ff04bd168f2.jpg\",\"\\/pic\\/uploads\\/20180828\\/a5b545db813421d75aaecfcd42d8a777.jpg\"]','/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png',1535426869,1535686432,1535426884,1535779094,2,1.00,1.00,4,20,20,'all',NULL,'','&lt;p&gt;wertghj&lt;/p&gt;',1,NULL,0,0,0,0,1),(5,'北京烤鸭门店','[\"\\/pic\\/uploads\\/20180828\\/89c9a66a8fc734649e15a75ab7408024.jpg\",\"\\/pic\\/uploads\\/20180828\\/30a0caede7a7f351efdfc6a40437e7de.jpg\",\"\\/pic\\/uploads\\/20180828\\/9a2e1e360b51b0eb8ae7a7a7ac02fd63.jpg\",\"\\/pic\\/uploads\\/20180828\\/dacbf091fa632f201a0a514d77cd61a7.jpg\"]','/pic/uploads/20180828/eddbd53897f5e2bb6ad54472d7a8c698.jpg',1970,1970,1970,1970,3,100.00,0.10,0,45,45,'',NULL,'','',0,NULL,0,21,1,1,0),(6,'有代金券','','/pic/uploads/20180823/d16f4b25c83f76982a894098c0ffbded.jpeg',1535530525,1535544931,1535530542,1535616945,3,100.00,1.00,0,10,10,'',NULL,'','',1,NULL,0,0,0,0,0),(7,'测试券','','/pic/uploads/20180828/71b30d3af10a39e896908eacfb343a70.png',0,0,0,0,2,1.00,1.00,3,330,333,'all',NULL,'','&lt;p&gt;少时诵诗书所所所所所所所所所所所所所所所所所所所所所所所所&lt;/p&gt;',1,NULL,0,0,1,23,0),(8,'测试重复券','','/pic/uploads/20180823/e7f06b85a02fbc3c57b06d42ff297224.png',0,0,0,0,2,0.50,0.50,2,98,100,'all',NULL,'','',0,NULL,1,0,1,10,0),(9,'测试测试','','/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png',0,0,0,0,2,0.10,0.10,2,8,10,'all',NULL,'','',0,NULL,1,0,1,10,0),(10,'测试不花钱券','','/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png',0,0,0,0,2,0.10,0.10,2,8,10,'all',NULL,'','',1,NULL,0,0,1,10,0);
/*!40000 ALTER TABLE `fy_lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_lottery_log`
--

DROP TABLE IF EXISTS `fy_lottery_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_lottery_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '奖券参与明细表',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '领取用户名',
  `addtime` int(11) DEFAULT NULL COMMENT '领取时间',
  `lottery_id` int(11) DEFAULT NULL COMMENT '奖券id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用，1启用',
  `updatetime` int(11) DEFAULT NULL COMMENT '使用时间',
  `lottery_name` varchar(255) DEFAULT NULL COMMENT '奖券名称',
  `use_num` int(1) DEFAULT '0' COMMENT '使用张数 默认0',
  `openid` varchar(255) NOT NULL COMMENT '用户id',
  `lottery_num` int(11) DEFAULT '1' COMMENT '数量',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付时间',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '0未支付1已经支付',
  `lottery_info` text COMMENT 'lottery信息',
  `js_api_parameters` varchar(255) DEFAULT NULL,
  `prepay_id` varchar(50) DEFAULT NULL,
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '0 否 1是推',
  `order_status` tinyint(1) DEFAULT NULL COMMENT '订单状态',
  `order_id` varchar(64) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_lottery_log`
--

LOCK TABLES `fy_lottery_log` WRITE;
/*!40000 ALTER TABLE `fy_lottery_log` DISABLE KEYS */;
INSERT INTO `fy_lottery_log` VALUES (1,NULL,NULL,1535705741,1,1,NULL,'优惠券（新人礼包）',0,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',1,NULL,NULL,0,'{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}',NULL,NULL,0,NULL,NULL),(2,NULL,NULL,1535705741,2,1,NULL,'新人礼包',0,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',1,NULL,NULL,0,'{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}',NULL,NULL,0,NULL,NULL),(3,NULL,NULL,1535705865,1,1,NULL,'优惠券（新人礼包）',0,'omQYXwNAT5uC15TQqMGxajJzqo4s',1,NULL,NULL,0,'{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}',NULL,NULL,0,NULL,NULL),(4,NULL,NULL,1535705865,2,1,NULL,'新人礼包',0,'omQYXwNAT5uC15TQqMGxajJzqo4s',1,NULL,NULL,0,'{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}',NULL,NULL,0,NULL,NULL),(5,NULL,NULL,1535765280,1,1,NULL,'优惠券（新人礼包）',0,'omQYXwAasNeXdGSMymd91487Ds1g',1,NULL,NULL,0,'{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}',NULL,NULL,0,NULL,NULL),(6,NULL,NULL,1535765280,2,1,NULL,'新人礼包',0,'omQYXwAasNeXdGSMymd91487Ds1g',1,NULL,NULL,0,'{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}',NULL,NULL,0,NULL,NULL),(7,3,'DANIEL',1535766229,7,1,NULL,'测试券',0,'omQYXwAasNeXdGSMymd91487Ds1g',1,NULL,NULL,0,'{\"id\":7,\"name\":\"\\u6d4b\\u8bd5\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/71b30d3af10a39e896908eacfb343a70.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":2,\"surplus_number\":331,\"number\":333,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u5c11\\u65f6\\u8bf5\\u8bd7\\u4e66\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":23,\"use_type\":0}',NULL,NULL,0,NULL,NULL),(8,3,'DANIEL',1535766231,10,1,NULL,'测试不花钱券',0,'omQYXwAasNeXdGSMymd91487Ds1g',1,NULL,NULL,0,'{\"id\":10,\"name\":\"\\u6d4b\\u8bd5\\u4e0d\\u82b1\\u94b1\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180822\\/7a2570970d3d8229dcf3deca8903d946.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"0.10\",\"coupon_real_money\":\"0.10\",\"receive_number\":1,\"surplus_number\":9,\"number\":10,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":10,\"use_type\":0}',NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `fy_lottery_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_lottery_order`
--

DROP TABLE IF EXISTS `fy_lottery_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_lottery_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '代金券表',
  `order_id` varchar(50) DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '订单状态',
  `lottery_id` int(11) NOT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `lottery_num` int(11) DEFAULT NULL COMMENT '数量',
  `lottery_info` text COMMENT 'lottery信息',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '0未支付1已经支付',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `js_api_parameters` varchar(255) DEFAULT NULL,
  `prepay_id` varchar(50) DEFAULT NULL,
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '0 否 1是推',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_lottery_order`
--

LOCK TABLES `fy_lottery_order` WRITE;
/*!40000 ALTER TABLE `fy_lottery_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_lottery_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_message`
--

DROP TABLE IF EXISTS `fy_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息模板表',
  `title` varchar(255) DEFAULT NULL COMMENT 'title',
  `pic` varchar(255) DEFAULT NULL,
  `detail` text,
  `type` tinyint(1) DEFAULT NULL COMMENT '1积分清零提醒|2积分清零|3生日礼包|4其他',
  `lottery_id` int(11) DEFAULT NULL COMMENT '奖券id',
  `status` tinyint(1) DEFAULT '1',
  `isdelete` tinyint(4) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_message`
--

LOCK TABLES `fy_message` WRITE;
/*!40000 ALTER TABLE `fy_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_message_user`
--

DROP TABLE IF EXISTS `fy_message_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_message_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `text` text COMMENT '支付成功、发货、退款消息内容',
  `is_read` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_message_user`
--

LOCK TABLES `fy_message_user` WRITE;
/*!40000 ALTER TABLE `fy_message_user` DISABLE KEYS */;
INSERT INTO `fy_message_user` VALUES (1,2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',NULL,'{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb  5000g\\u00d71<br\\/><br\\/>\"}',0,1535706068,0,NULL),(2,2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',NULL,'{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb 5000g\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808311656478916<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-31 17:01:35<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u987a\\u4e30\\u5feb\\u9012<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u6bb5\\u6b22   13765805489    \\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\\u4e5f\\u662f<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}',0,1535706096,0,NULL),(3,2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',NULL,'{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb 5000g\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808311656478916<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-31 17:01:40<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u987a\\u4e30\\u5feb\\u9012<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a123<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u6bb5\\u6b22   13765805489    \\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\\u4e5f\\u662f<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}',0,1535706100,0,NULL),(4,2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',NULL,'{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb 5000g\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808311656478916<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}',0,1535706882,0,NULL),(5,3,'omQYXwAasNeXdGSMymd91487Ds1g',NULL,'{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb  5000g\\u00d71<br\\/><br\\/>\"}',0,1535765494,0,NULL),(6,3,'omQYXwAasNeXdGSMymd91487Ds1g',NULL,'{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe510<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u79ef\\u5206\\u5546\\u57ce\\u82f9\\u679c\\u624b\\u673a  <br\\/>\"}',1,1535766142,0,1535766482),(7,3,'omQYXwAasNeXdGSMymd91487Ds1g',NULL,'{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u65b0\\u7586\\u5580\\u4ec0\\u897f\\u68854\\u65a4\\u5927\\u679c\\u987a\\u4e30\\u5305\\u90ae\\u5f53\\u5b63\\u6c34\\u679c \\u65b0\\u9c9c\\u897f\\u6885  1kg\\u00d71<br\\/><br\\/>\"}',0,1535766341,0,NULL);
/*!40000 ALTER TABLE `fy_message_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_modular`
--

DROP TABLE IF EXISTS `fy_modular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_modular` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '首页模块功能表',
  `pic` varchar(255) NOT NULL COMMENT '图片',
  `title` varchar(20) NOT NULL COMMENT '名称',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `orderby` int(11) DEFAULT '1' COMMENT '排序值',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `url` varchar(255) NOT NULL COMMENT '链接',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_modular`
--

LOCK TABLES `fy_modular` WRITE;
/*!40000 ALTER TABLE `fy_modular` DISABLE KEYS */;
INSERT INTO `fy_modular` VALUES (5,'/pic/uploads/20180815/37997791f696b84d28044c300ffab2c4.png','券集市',1530519950,1,2,1534831696,'http://www.fyxt701.com/index.php/index/lottery/market.html',0),(6,'/pic/uploads/20180815/19bd2c8f934a1d30e29ea800ce8b0f6a.png','积分商城',1530519975,1,3,1534831691,'http://www.fyxt701.com/index.php/index/goods/goodsScore.html',0),(7,'/pic/uploads/20180712/7e9ad7220a395482357dc96e6e065241.png','充值中心',1530519996,0,4,1534831685,'http://www.fyxt701.com/index.php/index',0),(8,'/pic/uploads/20180727/19c301bf9f40b6c29c3d9fda684541bc.png','会员签到',1530520015,1,5,1534831678,'http://www.fyxt701.com/index.php/index/customer/my_sign.html',0),(9,'/pic/uploads/20180815/e554024d8505052d6bb4deaaa2c23a03.png','限时抢购',1531961915,1,6,1534831671,'http://www.fyxt701.com/index.php/index/goods/rushPurchase.html',0);
/*!40000 ALTER TABLE `fy_modular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_node_map`
--

DROP TABLE IF EXISTS `fy_node_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_node_map`
--

LOCK TABLES `fy_node_map` WRITE;
/*!40000 ALTER TABLE `fy_node_map` DISABLE KEYS */;
INSERT INTO `fy_node_map` VALUES (1,'admin','SildeShow','index','ALL','轮播图'),(2,'admin','AdminGroup','index','ALL','分组管理'),(3,'admin','AdminGroup','add','ALL','分组添加'),(4,'admin','Group','forbid','ALL','分组禁止'),(5,'admin','Group','resume','ALL','分组恢复'),(6,'admin','Group','delete','ALL','分组删除'),(7,'admin','Group','saveorder','ALL','分组排序保存'),(8,'admin','AdminGroup','recycleBin','ALL','AdminGroup 回收站'),(9,'admin','AdminGroup','edit','ALL','AdminGroup 编辑'),(10,'admin','AdminGroup','delete','ALL','AdminGroup 默认删除操作'),(11,'admin','AdminGroup','recycle','ALL','AdminGroup 从回收站恢复'),(12,'admin','AdminGroup','forbid','ALL','AdminGroup 默认禁用操作'),(13,'admin','AdminGroup','resume','ALL','AdminGroup 默认恢复操作'),(14,'admin','AdminGroup','deleteForever','ALL','AdminGroup 永久删除'),(15,'admin','AdminGroup','clear','ALL','AdminGroup 清空回收站'),(16,'admin','AdminGroup','saveOrder','ALL','AdminGroup 保存排序'),(23,'admin','AdminNode','index','ALL','AdminNode 首页'),(24,'admin','AdminNode','recycleBin','ALL','AdminNode 回收站'),(25,'admin','AdminNode','sort','ALL','AdminNode 保存排序'),(26,'admin','AdminNode','load','ALL','AdminNode 节点快速导入'),(27,'admin','AdminNode','indexOld','ALL','AdminNode 首页'),(28,'admin','AdminNode','add','ALL','AdminNode 添加'),(29,'admin','AdminNode','edit','ALL','AdminNode 编辑'),(30,'admin','AdminNode','delete','ALL','AdminNode 默认删除操作'),(31,'admin','AdminNode','recycle','ALL','AdminNode 从回收站恢复'),(32,'admin','AdminNode','forbid','ALL','AdminNode 默认禁用操作'),(33,'admin','AdminNode','resume','ALL','AdminNode 默认恢复操作'),(34,'admin','AdminNode','deleteForever','ALL','AdminNode 永久删除'),(35,'admin','AdminNode','clear','ALL','AdminNode 清空回收站'),(36,'admin','AdminNode','saveOrder','ALL','AdminNode 保存排序'),(38,'admin','AdminNodeLoad','index','ALL','AdminNodeLoad 首页'),(39,'admin','AdminNodeLoad','recycleBin','ALL','AdminNodeLoad 回收站'),(40,'admin','AdminNodeLoad','add','ALL','AdminNodeLoad 添加'),(41,'admin','AdminNodeLoad','edit','ALL','AdminNodeLoad 编辑'),(42,'admin','AdminNodeLoad','forbid','ALL','AdminNodeLoad 默认禁用操作'),(43,'admin','AdminNodeLoad','resume','ALL','AdminNodeLoad 默认恢复操作'),(44,'admin','AdminNodeLoad','deleteForever','ALL','AdminNodeLoad 永久删除'),(45,'admin','AdminNodeLoad','clear','ALL','AdminNodeLoad 清空回收站'),(46,'admin','AdminNodeLoad','saveOrder','ALL','AdminNodeLoad 保存排序'),(53,'admin','AdminRole','user','ALL','AdminRole 用户列表'),(54,'admin','AdminRole','access','ALL','AdminRole 授权'),(55,'admin','AdminRole','index','ALL','AdminRole 首页'),(56,'admin','AdminRole','recycleBin','ALL','AdminRole 回收站'),(57,'admin','AdminRole','add','ALL','AdminRole 添加'),(58,'admin','AdminRole','edit','ALL','AdminRole 编辑'),(59,'admin','AdminRole','delete','ALL','AdminRole 默认删除操作'),(60,'admin','AdminRole','recycle','ALL','AdminRole 从回收站恢复'),(61,'admin','AdminRole','forbid','ALL','AdminRole 默认禁用操作'),(62,'admin','AdminRole','resume','ALL','AdminRole 默认恢复操作'),(63,'admin','AdminRole','deleteForever','ALL','AdminRole 永久删除'),(64,'admin','AdminRole','clear','ALL','AdminRole 清空回收站'),(65,'admin','AdminRole','saveOrder','ALL','AdminRole 保存排序'),(68,'admin','AdminUser','password','ALL','AdminUser 修改密码'),(69,'admin','AdminUser','index','ALL','AdminUser 首页'),(70,'admin','AdminUser','recycleBin','ALL','AdminUser 回收站'),(71,'admin','AdminUser','add','ALL','AdminUser 添加'),(72,'admin','AdminUser','edit','ALL','AdminUser 编辑'),(73,'admin','AdminUser','delete','ALL','AdminUser 默认删除操作'),(74,'admin','AdminUser','recycle','ALL','AdminUser 从回收站恢复'),(75,'admin','AdminUser','forbid','ALL','AdminUser 默认禁用操作'),(76,'admin','AdminUser','resume','ALL','AdminUser 默认恢复操作'),(77,'admin','AdminUser','deleteForever','ALL','AdminUser 永久删除'),(78,'admin','AdminUser','clear','ALL','AdminUser 清空回收站'),(79,'admin','AdminUser','saveOrder','ALL','AdminUser 保存排序'),(83,'admin','Demo','excel','ALL','Demo Excel一键导出'),(84,'admin','Demo','download','ALL','Demo 下载文件'),(85,'admin','Demo','downloadImage','ALL','Demo 下载远程图片'),(86,'admin','Demo','mail','ALL','Demo 发送邮件'),(87,'admin','Demo','ueditor','ALL','Demo 百度编辑器'),(88,'admin','Demo','qiniu','ALL','Demo 七牛上传'),(89,'admin','Demo','hashids','ALL','Demo ID加密'),(90,'admin','Demo','layer','ALL','Demo 丰富弹层'),(91,'admin','Demo','tableFixed','ALL','Demo 表格溢出'),(92,'admin','Demo','imageUpload','ALL','Demo 图片上传回调'),(93,'admin','Demo','qrcode','ALL','Demo 二维码生成'),(98,'admin','Index','index','ALL','Index '),(99,'admin','Index','welcome','ALL','Index 欢迎页'),(101,'admin','LoginLog','index','ALL','LoginLog 首页'),(102,'admin','LoginLog','saveOrder','ALL','LoginLog 保存排序'),(104,'admin','Modular','index','ALL','Modular '),(105,'admin','Modular','recycleBin','ALL','Modular 回收站'),(106,'admin','Modular','add','ALL','Modular 添加'),(107,'admin','Modular','edit','ALL','Modular 编辑'),(108,'admin','Modular','delete','ALL','Modular 默认删除操作'),(109,'admin','Modular','recycle','ALL','Modular 从回收站恢复'),(110,'admin','Modular','forbid','ALL','Modular 默认禁用操作'),(111,'admin','Modular','resume','ALL','Modular 默认恢复操作'),(112,'admin','Modular','deleteForever','ALL','Modular 永久删除'),(113,'admin','Modular','clear','ALL','Modular 清空回收站'),(114,'admin','Modular','saveOrder','ALL','Modular 保存排序'),(119,'admin','NodeMap','load','ALL','NodeMap 自动导入'),(120,'admin','NodeMap','index','ALL','NodeMap 首页'),(121,'admin','NodeMap','recycleBin','ALL','NodeMap 回收站'),(122,'admin','NodeMap','add','ALL','NodeMap 添加'),(123,'admin','NodeMap','edit','ALL','NodeMap 编辑'),(124,'admin','NodeMap','deleteForever','ALL','NodeMap 永久删除'),(125,'admin','NodeMap','saveOrder','ALL','NodeMap 保存排序'),(126,'admin','Notice','index','ALL','Notice 首页'),(127,'admin','Notice','recycleBin','ALL','Notice 回收站'),(128,'admin','Notice','add','ALL','Notice 添加'),(129,'admin','Notice','edit','ALL','Notice 编辑'),(130,'admin','Notice','delete','ALL','Notice 默认删除操作'),(131,'admin','Notice','recycle','ALL','Notice 从回收站恢复'),(132,'admin','Notice','forbid','ALL','Notice 默认禁用操作'),(133,'admin','Notice','resume','ALL','Notice 默认恢复操作'),(134,'admin','Notice','deleteForever','ALL','Notice 永久删除'),(135,'admin','Notice','clear','ALL','Notice 清空回收站'),(136,'admin','Notice','saveOrder','ALL','Notice 保存排序'),(141,'admin','Pub','login','ALL','Pub 用户登录页面'),(142,'admin','Pub','loginFrame','ALL','Pub 小窗口登录页面'),(143,'admin','Pub','index','ALL','Pub 首页'),(144,'admin','Pub','logout','ALL','Pub 用户登出'),(145,'admin','Pub','checkLogin','ALL','Pub 登录检测'),(146,'admin','Pub','password','ALL','Pub 修改密码'),(147,'admin','Pub','profile','ALL','Pub 查看用户信息|修改资料'),(148,'admin','SildeShow','recycleBin','ALL','SildeShow 回收站'),(149,'admin','SildeShow','add','ALL','SildeShow 添加'),(150,'admin','SildeShow','edit','ALL','SildeShow 编辑'),(151,'admin','SildeShow','delete','ALL','SildeShow 默认删除操作'),(152,'admin','SildeShow','recycle','ALL','SildeShow 从回收站恢复'),(153,'admin','SildeShow','forbid','ALL','SildeShow 默认禁用操作'),(154,'admin','SildeShow','resume','ALL','SildeShow 默认恢复操作'),(155,'admin','SildeShow','deleteForever','ALL','SildeShow 永久删除'),(156,'admin','SildeShow','clear','ALL','SildeShow 清空回收站'),(157,'admin','SildeShow','saveOrder','ALL','SildeShow 保存排序'),(163,'admin','Upload','index','ALL','Upload 首页'),(164,'admin','Upload','upload','ALL','Upload 文件上传'),(165,'admin','Upload','remote','ALL','Upload 远程图片抓取'),(166,'admin','Upload','listImage','ALL','Upload 图片列表'),(170,'admin','WebLog','index','ALL','WebLog 列表'),(171,'admin','WebLog','detail','ALL','WebLog 详情'),(173,'admin','one.two.three.Four','index','ALL','Four 首页'),(174,'admin','one.two.three.Four','recycleBin','ALL','Four 回收站'),(175,'admin','one.two.three.Four','add','ALL','Four 添加'),(176,'admin','one.two.three.Four','edit','ALL','Four 编辑'),(177,'admin','one.two.three.Four','delete','ALL','Four 默认删除操作'),(178,'admin','one.two.three.Four','recycle','ALL','Four 从回收站恢复'),(179,'admin','one.two.three.Four','forbid','ALL','Four 默认禁用操作'),(180,'admin','one.two.three.Four','resume','ALL','Four 默认恢复操作'),(181,'admin','one.two.three.Four','deleteForever','ALL','Four 永久删除'),(182,'admin','one.two.three.Four','clear','ALL','Four 清空回收站'),(183,'admin','one.two.three.Four','saveOrder','ALL','Four 保存排序'),(184,'admin','GoodsClass','add','ALL','GoodsClass 添加'),(185,'admin','GoodsClass','edit','ALL','GoodsClass 编辑'),(186,'admin','GoodsClass','delete','ALL','GoodsClass '),(187,'admin','GoodsClass','index','ALL','GoodsClass '),(188,'admin','GoodsClass','recycleBin','ALL','GoodsClass 回收站'),(189,'admin','GoodsClass','recycle','ALL','GoodsClass 从回收站恢复'),(190,'admin','GoodsClass','forbid','ALL','GoodsClass 默认禁用操作'),(191,'admin','GoodsClass','resume','ALL','GoodsClass 默认恢复操作'),(192,'admin','GoodsClass','deleteForever','ALL','GoodsClass 永久删除'),(193,'admin','GoodsClass','clear','ALL','GoodsClass 清空回收站'),(194,'admin','GoodsClass','saveOrder','ALL','GoodsClass 保存排序'),(199,'admin','Brand','index','ALL','Brand 首页'),(200,'admin','Brand','recycleBin','ALL','Brand 回收站'),(201,'admin','Brand','add','ALL','Brand 添加'),(202,'admin','Brand','edit','ALL','Brand 编辑'),(203,'admin','Brand','delete','ALL','Brand 默认删除操作'),(204,'admin','Brand','recycle','ALL','Brand 从回收站恢复'),(205,'admin','Brand','forbid','ALL','Brand 默认禁用操作'),(206,'admin','Brand','resume','ALL','Brand 默认恢复操作'),(207,'admin','Brand','deleteForever','ALL','Brand 永久删除'),(208,'admin','Brand','clear','ALL','Brand 清空回收站'),(209,'admin','Brand','saveOrder','ALL','Brand 保存排序'),(210,'admin','Customer','excel','ALL','Customer 会员信息一键导出'),(211,'admin','Customer','index','ALL','Customer 首页'),(212,'admin','Customer','recycleBin','ALL','Customer 回收站'),(213,'admin','Customer','add','ALL','Customer 添加'),(214,'admin','Customer','edit','ALL','Customer 编辑'),(215,'admin','Customer','delete','ALL','Customer 默认删除操作'),(216,'admin','Customer','recycle','ALL','Customer 从回收站恢复'),(217,'admin','Customer','forbid','ALL','Customer 默认禁用操作'),(218,'admin','Customer','resume','ALL','Customer 默认恢复操作'),(219,'admin','Customer','deleteForever','ALL','Customer 永久删除'),(220,'admin','Customer','clear','ALL','Customer 清空回收站'),(221,'admin','Customer','saveOrder','ALL','Customer 保存排序'),(225,'admin','Goods','add','ALL','Goods '),(226,'admin','Goods','index','ALL','Goods 首页'),(227,'admin','Goods','recycleBin','ALL','Goods 回收站'),(228,'admin','Goods','edit','ALL','Goods 编辑'),(229,'admin','Goods','delete','ALL','Goods 默认删除操作'),(230,'admin','Goods','recycle','ALL','Goods 从回收站恢复'),(231,'admin','Goods','forbid','ALL','Goods 默认禁用操作'),(232,'admin','Goods','resume','ALL','Goods 默认恢复操作'),(233,'admin','Goods','deleteForever','ALL','Goods 永久删除'),(234,'admin','Goods','clear','ALL','Goods 清空回收站'),(235,'admin','Goods','saveOrder','ALL','Goods 保存排序'),(240,'admin','CustomerTask','index','ALL','CustomerTask 首页'),(241,'admin','CustomerTask','recycleBin','ALL','CustomerTask 回收站'),(242,'admin','CustomerTask','add','ALL','CustomerTask 添加'),(243,'admin','CustomerTask','edit','ALL','CustomerTask 编辑'),(244,'admin','CustomerTask','delete','ALL','CustomerTask 默认删除操作'),(245,'admin','CustomerTask','recycle','ALL','CustomerTask 从回收站恢复'),(246,'admin','CustomerTask','forbid','ALL','CustomerTask 默认禁用操作'),(247,'admin','CustomerTask','resume','ALL','CustomerTask 默认恢复操作'),(248,'admin','CustomerTask','deleteForever','ALL','CustomerTask 永久删除'),(249,'admin','CustomerTask','clear','ALL','CustomerTask 清空回收站'),(250,'admin','CustomerTask','saveOrder','ALL','CustomerTask 保存排序'),(255,'admin','Lottery','index','ALL','Lottery 首页'),(256,'admin','Lottery','recycleBin','ALL','Lottery 回收站'),(257,'admin','Lottery','add','ALL','Lottery 添加'),(258,'admin','Lottery','edit','ALL','Lottery 编辑'),(259,'admin','Lottery','delete','ALL','Lottery 默认删除操作'),(260,'admin','Lottery','recycle','ALL','Lottery 从回收站恢复'),(261,'admin','Lottery','forbid','ALL','Lottery 默认禁用操作'),(262,'admin','Lottery','resume','ALL','Lottery 默认恢复操作'),(263,'admin','Lottery','deleteForever','ALL','Lottery 永久删除'),(264,'admin','Lottery','clear','ALL','Lottery 清空回收站'),(265,'admin','Lottery','saveOrder','ALL','Lottery 保存排序'),(270,'admin','Sildeshow','index','ALL','Sildeshow '),(271,'admin','Sildeshow','recycleBin','ALL','Sildeshow 回收站'),(272,'admin','Sildeshow','add','ALL','Sildeshow 添加'),(273,'admin','Sildeshow','edit','ALL','Sildeshow 编辑'),(274,'admin','Sildeshow','delete','ALL','Sildeshow 默认删除操作'),(275,'admin','Sildeshow','recycle','ALL','Sildeshow 从回收站恢复'),(276,'admin','Sildeshow','forbid','ALL','Sildeshow 默认禁用操作'),(277,'admin','Sildeshow','resume','ALL','Sildeshow 默认恢复操作'),(278,'admin','Sildeshow','deleteForever','ALL','Sildeshow 永久删除'),(279,'admin','Sildeshow','clear','ALL','Sildeshow 清空回收站'),(280,'admin','Sildeshow','saveOrder','ALL','Sildeshow 保存排序'),(285,'admin','CustomerGrade','add','ALL','CustomerGrade 添加'),(286,'admin','CustomerGrade','edit','ALL','CustomerGrade 编辑'),(287,'admin','CustomerGrade','index','ALL','CustomerGrade 首页'),(288,'admin','CustomerGrade','recycleBin','ALL','CustomerGrade 回收站'),(289,'admin','CustomerGrade','delete','ALL','CustomerGrade 默认删除操作'),(290,'admin','CustomerGrade','recycle','ALL','CustomerGrade 从回收站恢复'),(291,'admin','CustomerGrade','forbid','ALL','CustomerGrade 默认禁用操作'),(292,'admin','CustomerGrade','resume','ALL','CustomerGrade 默认恢复操作'),(293,'admin','CustomerGrade','deleteForever','ALL','CustomerGrade 永久删除'),(294,'admin','CustomerGrade','clear','ALL','CustomerGrade 清空回收站'),(295,'admin','CustomerGrade','saveOrder','ALL','CustomerGrade 保存排序'),(300,'admin','Goods','return_json','ALL','Goods '),(301,'admin','CustomerGradeDesc','index','ALL','CustomerGradeDesc 首页'),(302,'admin','CustomerGradeDesc','recycleBin','ALL','CustomerGradeDesc 回收站'),(303,'admin','CustomerGradeDesc','add','ALL','CustomerGradeDesc 添加'),(304,'admin','CustomerGradeDesc','edit','ALL','CustomerGradeDesc 编辑'),(305,'admin','CustomerGradeDesc','delete','ALL','CustomerGradeDesc 默认删除操作'),(306,'admin','CustomerGradeDesc','recycle','ALL','CustomerGradeDesc 从回收站恢复'),(307,'admin','CustomerGradeDesc','forbid','ALL','CustomerGradeDesc 默认禁用操作'),(308,'admin','CustomerGradeDesc','resume','ALL','CustomerGradeDesc 默认恢复操作'),(309,'admin','CustomerGradeDesc','deleteForever','ALL','CustomerGradeDesc 永久删除'),(310,'admin','CustomerGradeDesc','clear','ALL','CustomerGradeDesc 清空回收站'),(311,'admin','CustomerGradeDesc','saveOrder','ALL','CustomerGradeDesc 保存排序'),(316,'admin','LotteryLog','index','ALL','LotteryLog '),(317,'admin','LotteryLog','detail','ALL','LotteryLog '),(318,'admin','LotteryLog','recycleBin','ALL','LotteryLog 回收站'),(319,'admin','LotteryLog','add','ALL','LotteryLog 添加'),(320,'admin','LotteryLog','edit','ALL','LotteryLog 编辑'),(321,'admin','LotteryLog','delete','ALL','LotteryLog 默认删除操作'),(322,'admin','LotteryLog','recycle','ALL','LotteryLog 从回收站恢复'),(323,'admin','LotteryLog','forbid','ALL','LotteryLog 默认禁用操作'),(324,'admin','LotteryLog','resume','ALL','LotteryLog 默认恢复操作'),(325,'admin','LotteryLog','deleteForever','ALL','LotteryLog 永久删除'),(326,'admin','LotteryLog','clear','ALL','LotteryLog 清空回收站'),(327,'admin','LotteryLog','saveOrder','ALL','LotteryLog 保存排序'),(331,'admin','Activity','add','ALL','Activity '),(332,'admin','Activity','index','ALL','Activity 首页'),(333,'admin','Activity','recycleBin','ALL','Activity 回收站'),(334,'admin','Activity','edit','ALL','Activity 编辑'),(335,'admin','Activity','delete','ALL','Activity 默认删除操作'),(336,'admin','Activity','recycle','ALL','Activity 从回收站恢复'),(337,'admin','Activity','forbid','ALL','Activity 默认禁用操作'),(338,'admin','Activity','resume','ALL','Activity 默认恢复操作'),(339,'admin','Activity','deleteForever','ALL','Activity 永久删除'),(340,'admin','Activity','clear','ALL','Activity 清空回收站'),(341,'admin','Activity','saveOrder','ALL','Activity 保存排序'),(346,'admin','Customer','detail','ALL','Customer 会员信息详情'),(347,'admin','Customer','getGradeVal','ALL','Customer '),(349,'admin','Goods','CreateProductSpecByCustomCidHasPid','ALL','Goods '),(350,'admin','Goods','CreateProductSpecValueByCustomCid','ALL','Goods '),(351,'admin','Goods','delProductSpecValueByCustomCid','ALL','Goods '),(352,'admin','Goods','delProductSpecByCustomCidHasPid','ALL','Goods '),(356,'admin','Lottery','editStatus','ALL','Lottery '),(357,'admin','CustomerTask','detail','ALL','CustomerTask 会员信息详情'),(358,'admin','CustomerTask','excel','ALL','CustomerTask 会员参与任务信息一键导出'),(360,'admin','Goods','getskudata','ALL','Goods '),(361,'admin','Order','index','ALL','Order 首页'),(362,'admin','Order','recycleBin','ALL','Order 回收站'),(363,'admin','Order','add','ALL','Order 添加'),(364,'admin','Order','edit','ALL','Order 编辑'),(365,'admin','Order','delete','ALL','Order 默认删除操作'),(366,'admin','Order','recycle','ALL','Order 从回收站恢复'),(367,'admin','Order','forbid','ALL','Order 默认禁用操作'),(368,'admin','Order','resume','ALL','Order 默认恢复操作'),(369,'admin','Order','deleteForever','ALL','Order 永久删除'),(370,'admin','Order','clear','ALL','Order 清空回收站'),(371,'admin','Order','saveOrder','ALL','Order 保存排序'),(376,'admin','Transaction','add','ALL','Transaction '),(377,'admin','Transaction','edit','ALL','Transaction '),(378,'admin','Transaction','index','ALL','Transaction 首页'),(379,'admin','Transaction','recycleBin','ALL','Transaction 回收站'),(380,'admin','Transaction','delete','ALL','Transaction 默认删除操作'),(381,'admin','Transaction','recycle','ALL','Transaction 从回收站恢复'),(382,'admin','Transaction','forbid','ALL','Transaction 默认禁用操作'),(383,'admin','Transaction','resume','ALL','Transaction 默认恢复操作'),(384,'admin','Transaction','deleteForever','ALL','Transaction 永久删除'),(385,'admin','Transaction','clear','ALL','Transaction 清空回收站'),(386,'admin','Transaction','saveOrder','ALL','Transaction 保存排序'),(391,'admin','Goods','editStatus','ALL','Goods '),(392,'admin','CustomerRight','index','ALL','CustomerRight 首页'),(393,'admin','CustomerRight','recycleBin','ALL','CustomerRight 回收站'),(394,'admin','CustomerRight','add','ALL','CustomerRight 添加'),(395,'admin','CustomerRight','edit','ALL','CustomerRight 编辑'),(396,'admin','CustomerRight','delete','ALL','CustomerRight 默认删除操作'),(397,'admin','CustomerRight','recycle','ALL','CustomerRight 从回收站恢复'),(398,'admin','CustomerRight','forbid','ALL','CustomerRight '),(399,'admin','CustomerRight','resume','ALL','CustomerRight 默认恢复操作'),(400,'admin','CustomerRight','deleteForever','ALL','CustomerRight 永久删除'),(401,'admin','CustomerRight','clear','ALL','CustomerRight 清空回收站'),(402,'admin','CustomerRight','saveOrder','ALL','CustomerRight 保存排序'),(407,'admin','GoodsComment','returnComment','ALL','GoodsComment '),(408,'admin','GoodsComment','index','ALL','GoodsComment 首页'),(409,'admin','GoodsComment','recycleBin','ALL','GoodsComment 回收站'),(410,'admin','GoodsComment','add','ALL','GoodsComment 添加'),(411,'admin','GoodsComment','edit','ALL','GoodsComment 编辑'),(412,'admin','GoodsComment','delete','ALL','GoodsComment 默认删除操作'),(413,'admin','GoodsComment','recycle','ALL','GoodsComment 从回收站恢复'),(414,'admin','GoodsComment','forbid','ALL','GoodsComment '),(415,'admin','GoodsComment','resume','ALL','GoodsComment 默认恢复操作'),(416,'admin','GoodsComment','deleteForever','ALL','GoodsComment 永久删除'),(417,'admin','GoodsComment','clear','ALL','GoodsComment 清空回收站'),(418,'admin','GoodsComment','saveOrder','ALL','GoodsComment 保存排序'),(422,'admin','Message','beforeEdit','ALL','Message '),(423,'admin','Message','beforeAdd','ALL','Message '),(424,'admin','Message','getLottery','ALL','Message '),(425,'admin','Message','add','ALL','Message 添加'),(426,'admin','Message','edit','ALL','Message 编辑'),(427,'admin','Message','sendUser','ALL','Message '),(428,'admin','Message','index','ALL','Message 首页'),(429,'admin','Message','recycleBin','ALL','Message 回收站'),(430,'admin','Message','delete','ALL','Message 默认删除操作'),(431,'admin','Message','recycle','ALL','Message 从回收站恢复'),(432,'admin','Message','forbid','ALL','Message '),(433,'admin','Message','resume','ALL','Message 默认恢复操作'),(434,'admin','Message','deleteForever','ALL','Message 永久删除'),(435,'admin','Message','clear','ALL','Message 清空回收站'),(436,'admin','Message','saveOrder','ALL','Message 保存排序'),(437,'admin','Order','orderDetail','ALL','Order '),(438,'admin','Order','addPost','ALL','Order '),(439,'admin','Order','editTotalPrice','ALL','Order '),(440,'admin','Order','afterSaleHandle','ALL','Order '),(441,'admin','Order','refund','ALL','Order '),(444,'admin','ScoreLog','index','ALL','ScoreLog 首页'),(445,'admin','ScoreLog','recycleBin','ALL','ScoreLog 回收站'),(446,'admin','ScoreLog','add','ALL','ScoreLog 添加'),(447,'admin','ScoreLog','edit','ALL','ScoreLog 编辑'),(448,'admin','ScoreLog','delete','ALL','ScoreLog 默认删除操作'),(449,'admin','ScoreLog','recycle','ALL','ScoreLog 从回收站恢复'),(450,'admin','ScoreLog','forbid','ALL','ScoreLog '),(451,'admin','ScoreLog','resume','ALL','ScoreLog 默认恢复操作'),(452,'admin','ScoreLog','deleteForever','ALL','ScoreLog 永久删除'),(453,'admin','ScoreLog','clear','ALL','ScoreLog 清空回收站'),(454,'admin','ScoreLog','saveOrder','ALL','ScoreLog 保存排序'),(459,'admin','WxPayRefundLog','index','ALL','WxPayRefundLog 首页'),(460,'admin','WxPayRefundLog','recycleBin','ALL','WxPayRefundLog 回收站'),(461,'admin','WxPayRefundLog','add','ALL','WxPayRefundLog 添加'),(462,'admin','WxPayRefundLog','edit','ALL','WxPayRefundLog 编辑'),(463,'admin','WxPayRefundLog','delete','ALL','WxPayRefundLog 默认删除操作'),(464,'admin','WxPayRefundLog','recycle','ALL','WxPayRefundLog 从回收站恢复'),(465,'admin','WxPayRefundLog','forbid','ALL','WxPayRefundLog '),(466,'admin','WxPayRefundLog','resume','ALL','WxPayRefundLog 默认恢复操作'),(467,'admin','WxPayRefundLog','deleteForever','ALL','WxPayRefundLog 永久删除'),(468,'admin','WxPayRefundLog','clear','ALL','WxPayRefundLog 清空回收站'),(469,'admin','WxPayRefundLog','saveOrder','ALL','WxPayRefundLog 保存排序');
/*!40000 ALTER TABLE `fy_node_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_notice`
--

DROP TABLE IF EXISTS `fy_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告表',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `detail` varchar(255) DEFAULT NULL COMMENT '概要',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `orderby` int(11) DEFAULT '1' COMMENT '排序值',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `desc` text COMMENT '详情',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_notice`
--

LOCK TABLES `fy_notice` WRITE;
/*!40000 ALTER TABLE `fy_notice` DISABLE KEYS */;
INSERT INTO `fy_notice` VALUES (7,'泛亚商城1.0即将试运营','泛亚商城1.0即将试运营',1532573107,1,7,1535767026,'经过不懈的努力，泛亚商城1.0终于完成，将于一周后正式开始试运营，敬请期待！',0),(8,'欢迎各位同事内部体验,反馈建议','泛亚商城商品即将上线完毕，敬请期待！',1532573355,1,7,1535767197,'各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！',0),(9,'泛亚商城1.0内部体验','',1533258057,1,7,1535767069,'泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。',1),(10,'内部体验','   泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。',1533258227,1,7,1535766979,'    贵州泛亚信通网络科技有限公司（简称&ldquo;泛亚科技&rdquo;）是一家集泛在无线网络环境建设、数据可视化研究、大数据智能跨界应用为一体的大数据高科技企业，由郑州市讯捷贸易有限公司、阿里巴巴集团、贵阳广电传媒有限公司、贵阳市工业投资（集团）有限公司合资成立，注册资本1.2亿元。\r\n \r\n',1);
/*!40000 ALTER TABLE `fy_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_one_two_three_four`
--

DROP TABLE IF EXISTS `fy_one_two_three_four`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='四级控制器';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_one_two_three_four`
--

LOCK TABLES `fy_one_two_three_four` WRITE;
/*!40000 ALTER TABLE `fy_one_two_three_four` DISABLE KEYS */;
INSERT INTO `fy_one_two_three_four` VALUES (1,'yuan1994','tpadmin','2','1',NULL,'2222','https://github.com/yuan1994/tpadmin','2016-12-07','13012345678','tianpian0805@gmail.com',50,1,0,1481947278,1481947353);
/*!40000 ALTER TABLE `fy_one_two_three_four` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_order`
--

DROP TABLE IF EXISTS `fy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表',
  `order_id` varchar(255) NOT NULL COMMENT '订单编号',
  `order_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0未支付1已支付2待评价，3待回复，4,待退款 5部分退款，6全部退款，7取消订单，8订单完成',
  `buy_list` text COMMENT '商品列表',
  `total_price` decimal(10,2) NOT NULL COMMENT '订单总价',
  `create_time` int(10) NOT NULL COMMENT '时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `openid` varchar(255) NOT NULL COMMENT '用户id',
  `customer_name` varchar(255) DEFAULT NULL,
  `address_id` int(10) DEFAULT NULL COMMENT '地址id',
  `pay_time` int(10) DEFAULT NULL COMMENT '付款时间',
  `js_api_parameters` text COMMENT '微信支付所需参数',
  `prepay_id` varchar(50) DEFAULT NULL COMMENT '统一下单接口返回的预付id',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态;0未付款;1已付款 ',
  `inv_payee` varchar(255) DEFAULT NULL COMMENT '发票抬头,用户页面填写 ',
  `inv_content` varchar(255) DEFAULT NULL COMMENT '发票内容,用户页面选择,取值shop_config的code字段的值 为invoice_content的value ',
  `goods_all` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '商户id',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `lottery_id` int(11) DEFAULT NULL COMMENT '优惠券id',
  `lottery_price` decimal(10,2) DEFAULT NULL COMMENT '优惠券金额',
  `is_lottery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0没有1有',
  `return_price_all` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `total_point` decimal(10,2) DEFAULT NULL COMMENT '积分总价',
  `type` tinyint(1) DEFAULT '0' COMMENT '0表示纯金钱的订单1纯积分，2两种混合',
  `is_settlement` tinyint(1) DEFAULT '0' COMMENT '0未结算 1结算',
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '0为推送支付成功，1已经推送',
  `address_detail` varchar(3000) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_order`
--

LOCK TABLES `fy_order` WRITE;
/*!40000 ALTER TABLE `fy_order` DISABLE KEYS */;
INSERT INTO `fy_order` VALUES (1,'1441217402201808311656478916',8,'[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]',0.00,1535705807,NULL,NULL,'omQYXwM8TEkiBZR7Ldm891OOWbNQ','Baymax',2,1535706068,'{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"qc02xzohg2npyrcwk5tn9w78qe38ddvd\",\"package\":\"prepay_id=wx31170043895566cab672aa4e2083859678\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1535706056\",\"paySign\":\"426B9506D4BEC6C36949922057AFD357CBC98B358698A3241762ADDD4A240B19\"}','wx31170043895566cab672aa4e2083859678',1,NULL,NULL,'1',21,0,NULL,NULL,0,NULL,0.00,0,0,1,'{\"id\":2,\"uid\":2,\"name\":\"\\u6bb5\\u6b22\",\"mobile\":\"13765805489\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"\\u4e5f\\u662f\",\"status\":1,\"addtime\":1535705798,\"updatetime\":1535705798}'),(2,'1441217402201808311657597087',7,'[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]',0.01,1535705879,NULL,NULL,'omQYXwNAT5uC15TQqMGxajJzqo4s','葡萄不长牙',1,NULL,NULL,NULL,0,NULL,NULL,'1',21,0,NULL,NULL,0,NULL,0.00,0,0,0,'{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}'),(3,'1441217402201808311658048857',7,'[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]',0.01,1535705884,NULL,NULL,'omQYXwNAT5uC15TQqMGxajJzqo4s','葡萄不长牙',1,NULL,'{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"f4r8agzikuw796ak7rk1fkcage12y3uo\",\"package\":\"prepay_id=wx3116594991176456746ebe250560521679\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1535706002\",\"paySign\":\"DBD1FB796C8292572E2EDF47091CB9B8C78FFEC18BBE54B709DD1AF48E018CF6\"}','wx3116594991176456746ebe250560521679',0,NULL,NULL,'1',21,0,NULL,NULL,0,NULL,0.00,0,0,0,'{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}'),(4,'1441217402201809010931086075',1,'[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]',0.01,1535765468,NULL,NULL,'omQYXwAasNeXdGSMymd91487Ds1g','DANIEL',3,1535765494,NULL,NULL,1,NULL,NULL,'1',21,0,NULL,NULL,0,NULL,0.00,0,0,0,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}'),(5,'1441217402201809010933292534',7,'[{\"goods_name\":\"\\u82f9\\u679c\\u624b\\u673a\",\"sku_val\":\"\\u901a\\u7528\",\"num\":1,\"goods_id\":5,\"user_id\":21}]',0.01,1535765609,NULL,NULL,'omQYXwAasNeXdGSMymd91487Ds1g','DANIEL',3,NULL,'{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"4r3nlm7oytu1qhc1fc0nd4rwpkr0s880\",\"package\":\"prepay_id=wx010934220212221b1d1e30073756940256\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1535765675\",\"paySign\":\"E2E2723C2F53E62CC79098F11B39CB3AC8DF54B7A3BA48B10472223920F6B61A\"}','wx010934220212221b1d1e30073756940256',0,NULL,NULL,'5',21,0,NULL,NULL,0,NULL,0.00,0,0,0,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}'),(6,'1441217402201809010942213958',1,'[{\"goods_name\":\"\\u79ef\\u5206\\u5546\\u57ce\\u82f9\\u679c\\u624b\\u673a\",\"sku_val\":\"\\u901a\\u7528\",\"num\":1,\"goods_id\":6,\"user_id\":21}]',0.01,1535766141,NULL,NULL,'omQYXwAasNeXdGSMymd91487Ds1g','DANIEL',3,1535766141,NULL,NULL,1,NULL,NULL,'6',21,0,NULL,NULL,0,NULL,10.00,1,0,0,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}'),(7,'1441217402201809010945314726',1,'[{\"goods_name\":\"\\u65b0\\u7586\\u5580\\u4ec0\\u897f\\u68854\\u65a4\\u5927\\u679c\\u987a\\u4e30\\u5305\\u90ae\\u5f53\\u5b63\\u6c34\\u679c \\u65b0\\u9c9c\\u897f\\u6885\",\"sku_val\":\"1kg\",\"num\":1,\"goods_id\":4,\"user_id\":21}]',0.01,1535766331,NULL,NULL,'omQYXwAasNeXdGSMymd91487Ds1g','DANIEL',3,1535766341,NULL,NULL,1,NULL,NULL,'4',21,0,NULL,NULL,0,NULL,1.00,0,0,0,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}');
/*!40000 ALTER TABLE `fy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_order_all`
--

DROP TABLE IF EXISTS `fy_order_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_order_all` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL COMMENT '总的订单id',
  `son_id` varchar(255) DEFAULT NULL COMMENT '子id',
  `status` tinyint(1) DEFAULT NULL COMMENT '1支付0，未支付',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `create_time` int(11) DEFAULT NULL,
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '1已经推送0为推送',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_order_all`
--

LOCK TABLES `fy_order_all` WRITE;
/*!40000 ALTER TABLE `fy_order_all` DISABLE KEYS */;
INSERT INTO `fy_order_all` VALUES (1,'144121740220180831165647','8916',NULL,0.01,1535705807,0),(2,'144121740220180831165759','7087',NULL,0.01,1535705879,0),(3,'144121740220180831165804','8857',NULL,0.01,1535705884,0),(4,'144121740220180901093108','6075',1,0.01,1535765468,1),(5,'144121740220180901093329','2534',NULL,0.01,1535765609,0),(6,'144121740220180901094221','3958',NULL,0.01,1535766141,0),(7,'144121740220180901094531','4726',1,0.01,1535766331,1);
/*!40000 ALTER TABLE `fy_order_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_order_goods`
--

DROP TABLE IF EXISTS `fy_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_order_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单商品表',
  `goods_id` int(11) NOT NULL,
  `sku_id` int(11) DEFAULT NULL COMMENT 'skuid',
  `order_id` varchar(255) NOT NULL COMMENT '父id 订单id',
  `user_id` int(11) DEFAULT NULL COMMENT '所属商户',
  `goods_detail` text COMMENT '商品详情json存储',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '1包邮0不包邮，3上门自取',
  `shipping_fee` decimal(10,2) DEFAULT NULL COMMENT '配送费用',
  `logistics_name` varchar(255) DEFAULT NULL COMMENT '物流名称',
  `logistics_number` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `send_time` int(11) DEFAULT NULL COMMENT '发货时间',
  `refuse_reson` varchar(255) DEFAULT NULL COMMENT '退款理由',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0未发货1已发货，2待评价。3退款中，4退款完成,,5待回复，6完成,7退货退款',
  `remind_get` tinyint(1) DEFAULT '0' COMMENT '0否1是 提醒过用户收货',
  `words` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `goods_num` int(10) NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `sku_val` varchar(255) NOT NULL COMMENT 'sku值',
  `address_id` int(11) NOT NULL COMMENT '地址id',
  `openid` varchar(255) NOT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0否1待退款2已退款3退款失败',
  `return_price` decimal(10,2) DEFAULT NULL COMMENT '退款',
  `get_goods_time` int(11) DEFAULT NULL COMMENT '确认收货时间',
  `address_detail` text COMMENT '收货地址',
  `after_sale_is` tinyint(1) DEFAULT '0' COMMENT '0未提交1提交2售后完成',
  `after_handle_is` tinyint(1) DEFAULT '0' COMMENT '0未处理，1已经处理',
  `is_lottery` tinyint(1) DEFAULT '0' COMMENT '0fou 1是',
  `lottery_id` int(10) DEFAULT NULL COMMENT '奖券id',
  `lottery_log_id` int(10) DEFAULT NULL COMMENT '奖券领取id',
  `lottery_detail` text COMMENT '奖券详情',
  `real_pay_price` decimal(10,2) DEFAULT NULL COMMENT '实际支付价格',
  `is_settlement` tinyint(1) DEFAULT '0',
  `real_pay_score` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_order_goods`
--

LOCK TABLES `fy_order_goods` WRITE;
/*!40000 ALTER TABLE `fy_order_goods` DISABLE KEYS */;
INSERT INTO `fy_order_goods` VALUES (1,1,3,'1441217402201808311656478916',21,'{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18454,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}',0,NULL,'顺丰快递','123',1535706100,NULL,4,0,'',1,'5000g',2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',2,0.01,1535706110,'{\"id\":2,\"uid\":2,\"name\":\"\\u6bb5\\u6b22\",\"mobile\":\"13765805489\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"\\u4e5f\\u662f\",\"status\":1,\"addtime\":1535705798,\"updatetime\":1535705798}',1,0,0,0,0,'',0.01,1,1.00),(2,1,3,'1441217402201808311657597087',21,'{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18454,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}',0,NULL,NULL,NULL,NULL,NULL,0,0,'',1,'5000g',1,'omQYXwNAT5uC15TQqMGxajJzqo4s',0,NULL,NULL,'{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}',0,0,0,0,0,'',0.01,0,1.00),(3,1,3,'1441217402201808311658048857',21,'{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18454,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}',0,NULL,NULL,NULL,NULL,NULL,0,0,'',1,'5000g',1,'omQYXwNAT5uC15TQqMGxajJzqo4s',0,NULL,NULL,'{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}',0,0,0,0,0,'',0.01,0,1.00),(4,1,3,'1441217402201809010931086075',21,'{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18511,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}',0,NULL,NULL,NULL,NULL,NULL,0,0,'',1,'5000g',3,'omQYXwAasNeXdGSMymd91487Ds1g',0,NULL,NULL,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}',0,0,0,0,0,'',0.01,0,1.00),(5,5,16,'1441217402201809010933292534',21,'{\"id\":5,\"user_id\":21,\"name\":\"\\u82f9\\u679c\\u624b\\u673a\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/b7e860b80b4714b627f9d72e6f71d72b.jpg\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/f6f882914e96e541e77f0d3af9e7eb8b.jpg\\\"]\",\"original_price\":\"5200.00\",\"settlement_type\":1,\"goods_class_id\":6,\"goods_brand_id\":20,\"show_area\":1,\"detail\":\"&lt;p&gt;\\u6492\\u65e6&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180831\\/35cb42fbfe509141499aab67a3a0a680.jpg\",\"subtitle\":\"\",\"create_time\":1535686042,\"update_time\":1535686042,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"300.000\",\"start_date\":1535685661,\"end_date\":1536031265,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":null,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":null,\"after_sale\":\"&lt;p&gt;ok&lt;\\/p&gt;\",\"routine\":null,\"shop_code\":\"\",\"buy_num\":500,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u6ca1\\\\u6709\\\\u670d\\\\u52a1\\\"]\",\"service_mobile\":\"\"}',0,NULL,NULL,NULL,NULL,NULL,0,0,'',1,'通用',3,'omQYXwAasNeXdGSMymd91487Ds1g',0,NULL,NULL,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}',0,0,0,0,0,'',0.01,0,10.00),(6,6,17,'1441217402201809010942213958',21,'{\"id\":6,\"user_id\":21,\"name\":\"\\u79ef\\u5206\\u5546\\u57ce\\u82f9\\u679c\\u624b\\u673a\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/1d24ff63ce97e98b5bfb4ff2fab9feb9.jpg\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/443091067af6b9ff229b087de97c04ec.jpg\\\"]\",\"original_price\":\"10.00\",\"settlement_type\":2,\"goods_class_id\":6,\"goods_brand_id\":20,\"show_area\":2,\"detail\":\"&lt;p&gt;0000&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180831\\/c9eeb4703eccfd5b46d57249451c0db7.jpg\",\"subtitle\":\"\",\"create_time\":1535696647,\"update_time\":1535696647,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"300.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":10,\"basic_price\":\"\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":null,\"after_sale\":\"&lt;p&gt;\\u6b63\\u54c1&lt;\\/p&gt;\",\"routine\":null,\"shop_code\":\"\",\"buy_num\":10,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u6b63\\\\u54c1\\\\u4fdd\\\\u969c\\\"]\",\"service_mobile\":\"\"}',0,NULL,NULL,NULL,NULL,NULL,0,0,'',1,'通用',3,'omQYXwAasNeXdGSMymd91487Ds1g',0,NULL,NULL,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}',0,0,0,0,0,'',0.01,0,10.00),(7,4,9,'1441217402201809010945314726',21,'{\"id\":4,\"user_id\":21,\"name\":\"\\u65b0\\u7586\\u5580\\u4ec0\\u897f\\u68854\\u65a4\\u5927\\u679c\\u987a\\u4e30\\u5305\\u90ae\\u5f53\\u5b63\\u6c34\\u679c \\u65b0\\u9c9c\\u897f\\u6885\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/ea45e2935e48ced0a4d5d41e0747b67f.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/4391e2482ec76691700cd515c9345bdb.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/c6aeb8f410cffb7177176664f22faeca.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/e36a0b9370ce4cc1f5253ecbe60965d3.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/2acd8620b35b3002254d1efe262bd616.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/e1cb7a1a90efbff95611e80dd15bb476.png\\\"]\",\"original_price\":\"50.00\",\"settlement_type\":3,\"goods_class_id\":5,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715470866.jpg&quot; title=&quot;1535592715470866.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715223950.jpg&quot; title=&quot;1535592715223950.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715131169.jpg&quot; title=&quot;1535592715131169.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715428269.jpg&quot; title=&quot;1535592715428269.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715454974.jpg&quot; title=&quot;1535592715454974.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715724215.jpg&quot; title=&quot;1535592715724215.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715908613.jpg&quot; title=&quot;1535592715908613.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715538300.jpg&quot; title=&quot;1535592715538300.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715682912.jpg&quot; title=&quot;1535592715682912.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180830\\/ea1de0a49c95ce254cd599ec2fdae29e.png\",\"subtitle\":\"\",\"create_time\":1535593177,\"update_time\":1535593177,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"1000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":1,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u786e\\u8ba4\\u6536\\u8d2724\\u5c0f\\u65f6\\u5185\\u98df\\u7269\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"5\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"1kg\\\\uff08\\\\u542b\\\\uff09-2.5kg\\\\uff08\\\\u542b\\\\uff09\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u552e\\\\u5356\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5355\\\\u54c1\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u751f\\\\u9c9c\\\\u50a8\\\\u5b58\\\\u6e29\\\\u5ea6\\\":\\\"0-8\\\\u2103\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u65b0\\\\u7586\\\\u7ef4\\\\u543e\\\\u5c14\\\\u65cf\\\\u81ea\\\\u6cbb\\\\u533a\\\",\\\"\\\\u57ce\\\\u5e02\\\":\\\"\\\\u5580\\\\u4ec0\\\\u5730\\\\u533a\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"5\\\\u4eba\\\\u4efd\\\",\\\"\\\\u5957\\\\u9910\\\\u5468\\\\u671f\\\":\\\"1\\\\u5468\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":0,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}',0,NULL,NULL,NULL,NULL,NULL,0,0,'',1,'1kg',3,'omQYXwAasNeXdGSMymd91487Ds1g',0,NULL,NULL,'{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}',0,0,0,0,0,'',0.01,0,1.00);
/*!40000 ALTER TABLE `fy_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_score_log`
--

DROP TABLE IF EXISTS `fy_score_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '积分日志表',
  `uid` int(10) DEFAULT NULL COMMENT '用户ID',
  `openid` varchar(255) DEFAULT NULL COMMENT '用户openid',
  `source_id` int(11) DEFAULT '0' COMMENT '积分来源ID',
  `source` tinyint(1) NOT NULL COMMENT '1注册|2签到|3完成任务|4升级|5购买商品|6参与活动|7兑换商品|8兑换积分抵扣券|9抵扣付款金额|10积分清零11评论',
  `score` decimal(10,2) NOT NULL COMMENT '增减的积分',
  `time` int(11) NOT NULL COMMENT '积分增减时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_score_log`
--

LOCK TABLES `fy_score_log` WRITE;
/*!40000 ALTER TABLE `fy_score_log` DISABLE KEYS */;
INSERT INTO `fy_score_log` VALUES (1,1,'omQYXwNAT5uC15TQqMGxajJzqo4s',0,1,10.00,1535705545,1,0),(2,2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',0,1,10.00,1535705741,1,0),(3,2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',0,7,0.00,1535706068,1,0),(4,NULL,'omQYXwM8TEkiBZR7Ldm891OOWbNQ',1,5,10.00,1535706110,1,0),(5,3,'omQYXwAasNeXdGSMymd91487Ds1g',0,1,10.00,1535765279,1,0),(6,3,'omQYXwAasNeXdGSMymd91487Ds1g',0,7,0.00,1535765494,1,0),(7,3,'omQYXwAasNeXdGSMymd91487Ds1g',1,2,2.00,1535766078,1,0),(8,3,'omQYXwAasNeXdGSMymd91487Ds1g',0,7,-10.00,1535766141,1,0),(9,3,'omQYXwAasNeXdGSMymd91487Ds1g',0,7,-1.00,1535766341,1,0);
/*!40000 ALTER TABLE `fy_score_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_search`
--

DROP TABLE IF EXISTS `fy_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '搜索关键词表',
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `search` varchar(255) DEFAULT NULL COMMENT '搜索词',
  `create_time` int(11) DEFAULT NULL COMMENT '时间',
  `goods_id` text COMMENT '搜索到的商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_search`
--

LOCK TABLES `fy_search` WRITE;
/*!40000 ALTER TABLE `fy_search` DISABLE KEYS */;
INSERT INTO `fy_search` VALUES (1,NULL,'omQYXwAasNeXdGSMymd91487Ds1g','我',1535767469,''),(2,NULL,'omQYXwAasNeXdGSMymd91487Ds1g','橙子',1535767480,'2'),(3,NULL,'omQYXwAasNeXdGSMymd91487Ds1g','橙子',1535767480,'');
/*!40000 ALTER TABLE `fy_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_silde_show`
--

DROP TABLE IF EXISTS `fy_silde_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_silde_show` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) NOT NULL COMMENT '图片',
  `name` varchar(50) NOT NULL COMMENT '描述',
  `orderby` int(11) NOT NULL DEFAULT '1' COMMENT '排序值',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1启用0禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `url` varchar(255) NOT NULL COMMENT '跳转链接',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_silde_show`
--

LOCK TABLES `fy_silde_show` WRITE;
/*!40000 ALTER TABLE `fy_silde_show` DISABLE KEYS */;
INSERT INTO `fy_silde_show` VALUES (6,'/pic/uploads/20180816/a4c15401cd86eaa5a241a8b93a420b86.png','裤子',1,1,1530519761,1535426121,'http://www.fyxt701.com/index.php/index/goods/detail/id/2.html',0),(7,'/pic/uploads/20180816/c294033a256277ec75e05f92d702c498.png','手提包',1,1,1530520601,1535426250,'http://www.fyxt701.com/index.php/index/goods/detail/id/1.html',0),(8,'/pic/uploads/20180816/b95d11e6b321bb3abfb7267a216c9c3f.png','棉布',1,0,1532572889,1534831633,'http://www.fyxt701.com/index.php/index/goods/rushPurchase.html',0),(10,'/pic/uploads/20180816/69e7517edddc65cf02a342cdf76f32b7.png','坚果',1,0,1532575849,1534831647,'http://www.fyxt701.com/index.php/index/goods/rushPurchase.html',0),(12,'/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png','商城',1,0,1534924541,1534924541,'https://www.baidu.com/',0);
/*!40000 ALTER TABLE `fy_silde_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_sys_event_log`
--

DROP TABLE IF EXISTS `fy_sys_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_sys_event_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统操作表',
  `addtime` int(11) NOT NULL COMMENT '操作时间',
  `uid` int(11) NOT NULL COMMENT '操作用户',
  `method` varchar(50) DEFAULT NULL COMMENT '操作控制/方法',
  `method_zh` varchar(50) DEFAULT NULL COMMENT '中文描述',
  `group_id` int(11) DEFAULT NULL COMMENT '组id',
  `group_name` varchar(32) DEFAULT NULL COMMENT '组名',
  `object` text COMMENT '操作对象',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_sys_event_log`
--

LOCK TABLES `fy_sys_event_log` WRITE;
/*!40000 ALTER TABLE `fy_sys_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_sys_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_task_achievement`
--

DROP TABLE IF EXISTS `fy_task_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_task_achievement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员任务完成明细表',
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `task_id` int(11) NOT NULL COMMENT '任务ID',
  `time` int(11) DEFAULT NULL COMMENT '参与时间',
  `status` tinyint(1) NOT NULL COMMENT '1完成|0未完成',
  `reward_score` decimal(10,2) NOT NULL COMMENT '奖励积分',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_task_achievement`
--

LOCK TABLES `fy_task_achievement` WRITE;
/*!40000 ALTER TABLE `fy_task_achievement` DISABLE KEYS */;
INSERT INTO `fy_task_achievement` VALUES (1,11,7,1530151205,1,30.00,1530151205,1530151205),(2,31,7,NULL,0,0.00,1531151205,1531151205),(3,21,6,1529747645,1,12.00,1529747645,1529823875),(4,41,6,1529823875,1,12.00,1529823875,1529823875);
/*!40000 ALTER TABLE `fy_task_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_transaction`
--

DROP TABLE IF EXISTS `fy_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_transaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'transaction 交易设置表',
  `group_id` int(11) DEFAULT NULL COMMENT '所属组id',
  `group_name` varchar(50) DEFAULT NULL COMMENT '组名',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `rate` decimal(10,2) NOT NULL COMMENT '费率',
  `update_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除区回收站0正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_transaction`
--

LOCK TABLES `fy_transaction` WRITE;
/*!40000 ALTER TABLE `fy_transaction` DISABLE KEYS */;
INSERT INTO `fy_transaction` VALUES (4,1,'领导组',NULL,1,0,NULL,1.00,NULL,0),(5,3,'test',NULL,1,0,NULL,12.00,NULL,0),(7,0,NULL,NULL,1,4,'123456',3.00,NULL,0),(8,0,NULL,NULL,1,3,NULL,10.00,NULL,1),(9,0,NULL,NULL,1,21,'jyf',3.00,NULL,0);
/*!40000 ALTER TABLE `fy_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_use_lottery`
--

DROP TABLE IF EXISTS `fy_use_lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_use_lottery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `use_openid` varchar(64) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `lottery_id` int(10) DEFAULT NULL,
  `lottery_log_id` int(10) DEFAULT NULL,
  `shop_openid` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `coupon_real_money` decimal(10,2) DEFAULT NULL,
  `coupon_money` decimal(10,2) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `unique_flag` varchar(255) DEFAULT NULL COMMENT '每次核销对应生成的唯一标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_use_lottery`
--

LOCK TABLES `fy_use_lottery` WRITE;
/*!40000 ALTER TABLE `fy_use_lottery` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_use_lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_web_log_001`
--

DROP TABLE IF EXISTS `fy_web_log_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_web_log_001` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ip` (`ip`),
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=utf8 COMMENT='网站日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_web_log_001`
--

LOCK TABLES `fy_web_log_001` WRITE;
/*!40000 ALTER TABLE `fy_web_log_001` DISABLE KEYS */;
INSERT INTO `fy_web_log_001` VALUES (1,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535705332),(2,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535705332),(3,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535705334),(4,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535705334),(5,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535705347),(6,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535705360),(7,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535705366),(8,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/5.html','admin','Goods','edit','GET','a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"5\";}',1535705368),(9,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/getskudata.html','admin','Goods','getskudata','POST','a:1:{s:2:\"id\";s:1:\"5\";}',1535705368),(10,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535705389),(11,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535705389),(12,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706077),(13,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706078),(14,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535706083),(15,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535706088),(16,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html','admin','Order','orderdetail','GET','a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}',1535706093),(17,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/addpost.html','admin','Order','addpost','POST','a:3:{s:2:\"id\";s:1:\"1\";s:14:\"logistics_name\";s:12:\"顺丰快递\";s:16:\"logistics_number\";s:0:\"\";}',1535706095),(18,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html','admin','Order','orderdetail','GET','a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}',1535706097),(19,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/addpost.html','admin','Order','addpost','POST','a:3:{s:2:\"id\";s:1:\"1\";s:14:\"logistics_name\";s:12:\"顺丰快递\";s:16:\"logistics_number\";s:3:\"123\";}',1535706099),(20,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html','admin','Order','orderdetail','GET','a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}',1535706101),(21,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535706112),(22,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706114),(23,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706114),(24,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535706118),(25,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706123),(26,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706123),(27,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706127),(28,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706128),(29,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535706158),(30,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535706214),(31,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535706214),(32,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535706217),(33,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706221),(34,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706222),(35,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706232),(36,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706232),(37,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535706239),(38,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535706242),(39,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706253),(40,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706253),(41,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/logout.html','admin','Pub','logout','GET','a:0:{}',1535706255),(42,0,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/login.html','admin','Pub','login','GET','a:0:{}',1535706258),(43,0,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:3:{s:7:\"account\";s:3:\"jyf\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"8iw4\";}',1535706278),(44,0,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:3:{s:7:\"account\";s:3:\"jyf\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"t38t\";}',1535706284),(45,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535706285),(46,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706285),(47,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706295),(48,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706295),(49,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706296),(50,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706296),(51,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706297),(52,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706297),(53,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706302),(54,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706302),(55,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706304),(56,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706305),(57,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706309),(58,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706309),(59,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706312),(60,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706312),(61,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706313),(62,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706313),(63,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706314),(64,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706315),(65,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706315),(66,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706316),(67,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706323),(68,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706323),(69,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706324),(70,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706324),(71,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706325),(72,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706326),(73,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706332),(74,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706332),(75,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706333),(76,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706333),(77,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706334),(78,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706334),(79,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706335),(80,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706336),(81,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706336),(82,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706336),(83,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706338),(84,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706338),(85,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706339),(86,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706339),(87,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706340),(88,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706340),(89,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706341),(90,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706341),(91,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706343),(92,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706343),(93,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706344),(94,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706344),(95,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706347),(96,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706347),(97,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706348),(98,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706348),(99,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706355),(100,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706355),(101,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706356),(102,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706356),(103,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706367),(104,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706367),(105,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706368),(106,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706368),(107,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706369),(108,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706369),(109,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706370),(110,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706370),(111,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706373),(112,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706374),(113,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706375),(114,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706375),(115,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706376),(116,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706376),(117,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706378),(118,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706378),(119,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706379),(120,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706380),(121,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706394),(122,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706394),(123,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706395),(124,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706395),(125,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706395),(126,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706396),(127,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706396),(128,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706396),(129,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706397),(130,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706397),(131,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706397),(132,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706397),(133,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706398),(134,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706398),(135,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706399),(136,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706399),(137,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706400),(138,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706400),(139,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706401),(140,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706401),(141,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706402),(142,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706402),(143,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706403),(144,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706403),(145,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706404),(146,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706404),(147,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706405),(148,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706405),(149,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706407),(150,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706407),(151,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706408),(152,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706408),(153,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706409),(154,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706409),(155,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706410),(156,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706410),(157,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706410),(158,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706410),(159,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706411),(160,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706411),(161,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706412),(162,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706412),(163,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706413),(164,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706413),(165,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706414),(166,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706414),(167,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706414),(168,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706414),(169,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706415),(170,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706415),(171,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706416),(172,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706416),(173,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706416),(174,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706416),(175,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706417),(176,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706417),(177,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706417),(178,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706417),(179,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706418),(180,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706418),(181,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706418),(182,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706419),(183,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706419),(184,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706419),(185,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706419),(186,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706420),(187,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706420),(188,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706420),(189,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706420),(190,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706420),(191,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706421),(192,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706421),(193,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706422),(194,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706422),(195,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706422),(196,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706422),(197,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706423),(198,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706423),(199,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706423),(200,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706423),(201,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706424),(202,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706424),(203,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706424),(204,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706424),(205,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706425),(206,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706425),(207,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706425),(208,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706425),(209,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706426),(210,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706426),(211,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706426),(212,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706426),(213,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706427),(214,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706427),(215,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706427),(216,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706427),(217,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706428),(218,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706428),(219,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706429),(220,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706429),(221,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706429),(222,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706429),(223,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706430),(224,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706430),(225,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706432),(226,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706432),(227,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535706435),(228,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535706437),(229,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535706437),(230,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535706438),(231,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535706439),(232,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535706441),(233,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_class/index.html','admin','GoodsClass','index','GET','a:0:{}',1535706442),(234,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_comment/index.html','admin','GoodsComment','index','GET','a:0:{}',1535706443),(235,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer/index.html','admin','Customer','index','GET','a:0:{}',1535706444),(236,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery_log/index.html','admin','LotteryLog','index','GET','a:0:{}',1535706445),(237,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer/index.html','admin','Customer','index','GET','a:0:{}',1535706446),(238,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin.html','admin','Index','index','GET','a:0:{}',1535706462),(239,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706463),(240,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535706466),(241,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535706470),(242,1,'220.197.182.69','中国 贵州 贵阳 ','Windows NT','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535706530),(243,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535706597),(244,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535706600),(245,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535706601),(246,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535706604),(247,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/silde_show/index.html','admin','SildeShow','index','GET','a:0:{}',1535706605),(248,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535706606),(249,21,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/logout.html','admin','Pub','logout','GET','a:0:{}',1535706611),(250,0,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/login.html','admin','Pub','login','GET','a:0:{}',1535706614),(251,0,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"rhum\";}',1535706620),(252,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535706620),(253,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535706620),(254,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535706628),(255,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html?username=&type=1','admin','WxPayRefundLog','index','GET','a:2:{s:8:\"username\";s:0:\"\";s:4:\"type\";s:1:\"1\";}',1535706631),(256,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer/index.html','admin','Customer','index','GET','a:0:{}',1535706692),(257,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535706705),(258,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_task/index.html','admin','CustomerTask','index','GET','a:0:{}',1535706714),(259,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_task/index.html','admin','CustomerTask','index','GET','a:0:{}',1535706716),(260,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_grade/index.html','admin','CustomerGrade','index','GET','a:0:{}',1535706716),(261,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html','admin','CustomerGradeDesc','index','GET','a:0:{}',1535706719),(262,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery_log/index.html','admin','LotteryLog','index','GET','a:0:{}',1535706721),(263,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535706729),(264,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535706730),(265,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535706732),(266,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535706736),(267,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535706750),(268,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_comment/index.html','admin','GoodsComment','index','GET','a:0:{}',1535706751),(269,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535706752),(270,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535706867),(271,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html','admin','Order','orderdetail','GET','a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}',1535706873),(272,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/refund.html','admin','Order','refund','POST','a:3:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";s:4:\"flag\";s:3:\"yes\";}',1535706880),(273,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html','admin','Order','orderdetail','GET','a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}',1535706883),(274,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535706886),(275,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html','admin','Order','orderdetail','GET','a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}',1535706889),(276,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535706933),(277,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535706933),(278,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535706935),(279,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery_log/index.html','admin','LotteryLog','index','GET','a:0:{}',1535706936),(280,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535706938),(281,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/silde_show/index.html','admin','SildeShow','index','GET','a:0:{}',1535706940),(282,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/modular/index.html','admin','Modular','index','GET','a:0:{}',1535706941),(283,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_class/index.html','admin','GoodsClass','index','GET','a:0:{}',1535706942),(284,1,'220.197.182.87','中国 贵州 贵阳 ','Windows 7','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535707482),(285,0,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/login.html','admin','Pub','login','GET','a:0:{}',1535766872),(286,0,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"gs3b\";}',1535766887),(287,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535766887),(288,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535766887),(289,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535766918),(290,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/node_map/index.html','admin','NodeMap','index','GET','a:0:{}',1535766920),(291,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}',1535766920),(292,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_role/index.html','admin','AdminRole','index','GET','a:0:{}',1535766921),(293,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}',1535766921),(294,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}',1535766921),(295,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}',1535766921),(296,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}',1535766922),(297,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/node_map/index.html','admin','NodeMap','index','GET','a:0:{}',1535766923),(298,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535766923),(299,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}',1535766924),(300,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535766924),(301,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535766925),(302,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"8\";}',1535766936),(303,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/10.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:2:\"10\";}',1535766953),(304,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/10.html','admin','Notice','edit','POST','a:6:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:12:\"内部体验\";s:6:\"detail\";s:105:\"   泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:401:\"    贵州泛亚信通网络科技有限公司（简称&ldquo;泛亚科技&rdquo;）是一家集泛在无线网络环境建设、数据可视化研究、大数据智能跨界应用为一体的大数据高科技企业，由郑州市讯捷贸易有限公司、阿里巴巴集团、贵阳广电传媒有限公司、贵阳市工业投资（集团）有限公司合资成立，注册资本1.2亿元。\r\n \r\n\";}',1535766979),(305,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535766979),(306,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"9\";}',1535766985),(307,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"8\";}',1535766993),(308,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','POST','a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:18:\"欢迎内部体验\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}',1535767009),(309,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767010),(310,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/7.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"7\";}',1535767014),(311,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/7.html','admin','Notice','edit','POST','a:6:{s:2:\"id\";s:1:\"7\";s:5:\"title\";s:30:\"泛亚商城1.0即将试运营\";s:6:\"detail\";s:30:\"泛亚商城1.0即将试运营\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:108:\"经过不懈的努力，泛亚商城1.0终于完成，将于一周后正式开始试运营，敬请期待！\";}',1535767026),(312,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767026),(313,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"9\";}',1535767051),(314,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html','admin','Notice','edit','POST','a:6:{s:2:\"id\";s:1:\"9\";s:5:\"title\";s:27:\"泛亚商城1.0内部体验\";s:6:\"detail\";s:0:\"\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:102:\"泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。\";}',1535767069),(315,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767070),(316,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/delete.html','admin','Notice','delete','POST','a:1:{s:2:\"id\";s:1:\"9\";}',1535767105),(317,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/delete.html','admin','Notice','delete','POST','a:1:{s:2:\"id\";s:2:\"10\";}',1535767110),(318,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767113),(319,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"8\";}',1535767131),(320,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','POST','a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:30:\"欢迎各位同事内部体验\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}',1535767140),(321,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767140),(322,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"8\";}',1535767165),(323,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','POST','a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:46:\"欢迎各位同事内部体验,反馈建议。\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}',1535767186),(324,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767186),(325,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','GET','a:1:{s:2:\"id\";s:1:\"8\";}',1535767191),(326,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html','admin','Notice','edit','POST','a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:43:\"欢迎各位同事内部体验,反馈建议\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}',1535767197),(327,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767197),(328,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767218),(329,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767219),(330,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767220),(331,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767220),(332,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767220),(333,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767220),(334,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}',1535767221),(335,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767222),(336,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767231),(337,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535767231),(338,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_role/index.html','admin','AdminRole','index','GET','a:0:{}',1535767232),(339,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}',1535767233),(340,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}',1535767233),(341,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}',1535767233),(342,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}',1535767233),(343,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}',1535767234),(344,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}',1535767234),(345,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535767235),(346,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/silde_show/index.html','admin','SildeShow','index','GET','a:0:{}',1535767235),(347,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/modular/index.html','admin','Modular','index','GET','a:0:{}',1535767235),(348,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_class/index.html','admin','GoodsClass','index','GET','a:0:{}',1535767236),(349,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/modular/index.html','admin','Modular','index','GET','a:0:{}',1535767237),(350,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535767240),(351,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer/index.html','admin','Customer','index','GET','a:0:{}',1535767241),(352,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535767242),(353,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_grade/index.html','admin','CustomerGrade','index','GET','a:0:{}',1535767244),(354,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535767246),(355,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535767247),(356,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535767250),(357,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/gift_bag/index.html','admin','GiftBag','index','GET','a:0:{}',1535767250),(358,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/gift_bag/edit/id/3.html','admin','GiftBag','edit','GET','a:1:{s:2:\"id\";s:1:\"3\";}',1535767254),(359,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_comment/index.html','admin','GoodsComment','index','GET','a:0:{}',1535767276),(360,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535767277),(361,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535767278),(362,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/gift_bag/index.html','admin','GiftBag','index','GET','a:0:{}',1535767279),(363,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535767281),(364,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"1\";}',1535767285),(365,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"2\";}',1535767296),(366,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"3\";}',1535767306),(367,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535767314),(368,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535767339),(369,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535767397),(370,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535768151),(371,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html','admin','Goods','edit','GET','a:1:{s:2:\"id\";s:1:\"5\";}',1535768156),(372,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/getskudata.html','admin','Goods','getskudata','POST','a:1:{s:2:\"id\";s:1:\"5\";}',1535768156),(373,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html','admin','Goods','edit','POST','a:34:{s:2:\"id\";s:1:\"5\";s:7:\"user_id\";s:2:\"21\";s:4:\"name\";s:12:\"苹果手机\";s:8:\"subtitle\";s:0:\"\";s:7:\"yieldly\";s:0:\"\";s:10:\"main_image\";s:58:\"/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg\";s:14:\"goods_class_id\";s:1:\"6\";s:14:\"goods_brand_id\";s:2:\"20\";s:9:\"show_area\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-08-31 11:21:01\";s:8:\"end_date\";s:19:\"2018-09-04 11:21:05\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:0:\"\";s:12:\"return_score\";s:1:\"0\";s:3:\"pic\";a:2:{i:0;s:58:\"/pic/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg\";i:1;s:58:\"/pic/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:7:\"300.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"1\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:0:\"\";s:7:\"service\";a:1:{i:0;s:12:\"没有服务\";}s:10:\"after_sale\";s:21:\"&lt;p&gt;ok&lt;/p&gt;\";s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:0:\"\";s:14:\"original_price\";s:7:\"5200.00\";s:7:\"buy_num\";s:3:\"500\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:25:\"&lt;p&gt;撒旦&lt;/p&gt;\";s:11:\"skuZuheData\";s:208:\"[{&quot;id&quot;:&quot;16&quot;,&quot;SkuId&quot;:&quot;1535685741914_规格:1535685749337_通用&quot;,&quot;pointPrice&quot;:&quot;10&quot;,&quot;price&quot;:0.01,&quot;num&quot;:&quot;10&quot;,&quot;code&q\";s:15:\"propty_name_val\";s:57:\"[[&quot;1535685741914_规格:1535685749337_通用&quot;]]\";}',1535768196),(374,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html','admin','Goods','edit','GET','a:1:{s:2:\"id\";s:1:\"5\";}',1535768343),(375,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/getskudata.html','admin','Goods','getskudata','POST','a:1:{s:2:\"id\";s:1:\"5\";}',1535768343),(376,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html','admin','Goods','edit','POST','a:34:{s:2:\"id\";s:1:\"5\";s:7:\"user_id\";s:2:\"21\";s:4:\"name\";s:12:\"苹果手机\";s:8:\"subtitle\";s:12:\"苹果手机\";s:7:\"yieldly\";s:6:\"上海\";s:10:\"main_image\";s:58:\"/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg\";s:14:\"goods_class_id\";s:1:\"6\";s:14:\"goods_brand_id\";s:2:\"20\";s:9:\"show_area\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-08-31 11:21:01\";s:8:\"end_date\";s:19:\"2018-09-04 11:21:05\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:4:\"0.00\";s:12:\"return_score\";s:1:\"0\";s:3:\"pic\";a:2:{i:0;s:58:\"/pic/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg\";i:1;s:58:\"/pic/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:7:\"300.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"1\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:0:\"\";s:7:\"service\";a:1:{i:0;s:12:\"没有服务\";}s:10:\"after_sale\";s:21:\"&lt;p&gt;ok&lt;/p&gt;\";s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:1:\"0\";s:14:\"original_price\";s:7:\"5200.00\";s:7:\"buy_num\";s:3:\"500\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:31:\"&lt;p&gt;苹果手机&lt;/p&gt;\";s:11:\"skuZuheData\";s:208:\"[{&quot;id&quot;:&quot;16&quot;,&quot;SkuId&quot;:&quot;1535685741914_规格:1535685749337_通用&quot;,&quot;pointPrice&quot;:&quot;10&quot;,&quot;price&quot;:0.01,&quot;num&quot;:&quot;10&quot;,&quot;code&q\";s:15:\"propty_name_val\";s:57:\"[[&quot;1535685741914_规格:1535685749337_通用&quot;]]\";}',1535768413),(377,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html','admin','Goods','edit','GET','a:1:{s:2:\"id\";s:1:\"5\";}',1535768418),(378,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/getskudata.html','admin','Goods','getskudata','POST','a:1:{s:2:\"id\";s:1:\"5\";}',1535768418),(379,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535768458),(380,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_task/index.html','admin','CustomerTask','index','GET','a:0:{}',1535768458),(381,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html','admin','CustomerGradeDesc','index','GET','a:0:{}',1535768459),(382,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery_log/index.html','admin','LotteryLog','index','GET','a:0:{}',1535768460),(383,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535768461),(384,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535768461),(385,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535768462),(386,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535768467),(387,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_comment/index.html','admin','GoodsComment','index','GET','a:0:{}',1535768467),(388,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535768468),(389,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535768470),(390,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/gift_bag/index.html','admin','GiftBag','index','GET','a:0:{}',1535768471),(391,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535768474),(392,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery_log/index.html','admin','LotteryLog','index','GET','a:0:{}',1535768475),(393,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_task/index.html','admin','CustomerTask','index','GET','a:0:{}',1535768475),(394,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer/index.html','admin','Customer','index','GET','a:0:{}',1535768476),(395,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535768477),(396,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535768486),(397,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_class/index.html','admin','GoodsClass','index','GET','a:0:{}',1535768489),(398,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/modular/index.html','admin','Modular','index','GET','a:0:{}',1535768490),(399,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/silde_show/index.html','admin','SildeShow','index','GET','a:0:{}',1535768490),(400,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/notice/index.html','admin','Notice','index','GET','a:0:{}',1535768491),(401,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535768493),(402,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}',1535768494),(403,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/node_map/index.html','admin','NodeMap','index','GET','a:0:{}',1535768496),(404,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}',1535768497),(405,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/detail/id/390.html','admin','WebLog','detail','GET','a:1:{s:2:\"id\";s:3:\"390\";}',1535768518),(406,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html?p=2','admin','WebLog','index','GET','a:1:{s:1:\"p\";s:1:\"2\";}',1535768532),(407,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html?p=3','admin','WebLog','index','GET','a:1:{s:1:\"p\";s:1:\"3\";}',1535768535),(408,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html?p=2','admin','WebLog','index','GET','a:1:{s:1:\"p\";s:1:\"2\";}',1535768539),(409,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535768542),(410,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}',1535768543),(411,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/node_map/index.html','admin','NodeMap','index','GET','a:0:{}',1535768544),(412,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}',1535768552),(413,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}',1535768553),(414,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_role/index.html','admin','AdminRole','index','GET','a:0:{}',1535768564),(415,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}',1535768565),(416,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}',1535768566),(417,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}',1535768566),(418,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}',1535768568),(419,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}',1535768569),(420,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}',1535768569),(421,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}',1535768569),(422,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}',1535768569),(423,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/node_map/index.html','admin','NodeMap','index','GET','a:0:{}',1535768570),(424,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}',1535768570),(425,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535768571),(426,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/silde_show/index.html','admin','SildeShow','index','GET','a:0:{}',1535768571),(427,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_class/index.html','admin','GoodsClass','index','GET','a:0:{}',1535768571),(428,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535768572),(429,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer/index.html','admin','Customer','index','GET','a:0:{}',1535768573),(430,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535768574),(431,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535768574),(432,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_task/index.html','admin','CustomerTask','index','GET','a:0:{}',1535768575),(433,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_grade/index.html','admin','CustomerGrade','index','GET','a:0:{}',1535768576),(434,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html','admin','CustomerGradeDesc','index','GET','a:0:{}',1535768576),(435,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery_log/index.html','admin','LotteryLog','index','GET','a:0:{}',1535768579),(436,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/activity/index.html','admin','Activity','index','GET','a:0:{}',1535768580),(437,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535768581),(438,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535768581),(439,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535768583),(440,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_comment/index.html','admin','GoodsComment','index','GET','a:0:{}',1535768584),(441,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535768585),(442,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535768585),(443,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/gift_bag/index.html','admin','GiftBag','index','GET','a:0:{}',1535768586),(444,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535768589),(445,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}',1535768592),(446,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}',1535768593),(447,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}',1535768593),(448,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}',1535768593),(449,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}',1535768593),(450,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/node_map/index.html','admin','NodeMap','index','GET','a:0:{}',1535768593),(451,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535768594),(452,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/silde_show/index.html','admin','SildeShow','index','GET','a:0:{}',1535768594),(453,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/modular/index.html','admin','Modular','index','GET','a:0:{}',1535768595),(454,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535768595),(455,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535768595),(456,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_role/index.html','admin','AdminRole','index','GET','a:0:{}',1535768596),(457,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}',1535768596),(458,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535768604),(459,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535768604),(460,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535768605),(461,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535768605),(462,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535768606),(463,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535768606),(464,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535768607),(465,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535768607),(466,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}',1535768631),(467,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535768631),(468,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/modular/index.html','admin','Modular','index','GET','a:0:{}',1535768631),(469,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535768632),(470,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535768632),(471,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html','admin','CustomerGradeDesc','index','GET','a:0:{}',1535768632),(472,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/transaction/index.html','admin','Transaction','index','GET','a:0:{}',1535768633),(473,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535768634),(474,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_comment/index.html','admin','GoodsComment','index','GET','a:0:{}',1535768634),(475,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535768635),(476,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/gift_bag/index.html','admin','GiftBag','index','GET','a:0:{}',1535768635),(477,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/goods_class/index.html','admin','GoodsClass','index','GET','a:0:{}',1535768636),(478,1,'220.197.182.89','中国 贵州 贵阳 ','Windows 10','Chrome(68.0.3440.106)','http://www.fyxt701.com/index.php/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}',1535768637),(479,0,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin','admin','Index','index','GET','a:0:{}',1535772160),(480,0,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/pub/login.html','admin','Pub','login','GET','a:0:{}',1535772160),(481,0,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"qeyc\";}',1535772170),(482,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535772170),(483,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535772171),(484,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535772185),(485,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772187),(486,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/add.html','admin','CustomerRight','add','GET','a:0:{}',1535772194),(487,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html','admin','Upload','index','GET','a:1:{s:2:\"id\";s:6:\"upload\";}',1535772623),(488,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/upload/listimage.html','admin','Upload','listimage','POST','a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}',1535772625),(489,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/upload/upload.html','admin','Upload','upload','POST','a:0:{}',1535772712),(490,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/add.html','admin','CustomerRight','add','GET','a:0:{}',1535772737),(491,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/add.html','admin','CustomerRight','add','POST','a:5:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:3:\"fff\";s:3:\"pic\";s:58:\"/tmp/uploads/20180901/216be9b0a3218cc416d95c39e00e52ed.png\";s:4:\"desc\";s:4:\"ffff\";s:11:\"instruction\";s:25:\"&lt;p&gt;ffffff&lt;/p&gt;\";}',1535772748),(492,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772748),(493,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535772753),(494,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','POST','a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/1681a77828fe3083f2699165d26908bb.jpg\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}',1535772756),(495,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772756),(496,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"3\";}',1535772757),(497,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html','admin','CustomerRight','edit','POST','a:5:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:18:\"钻石会员专享\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png\";s:4:\"desc\";s:18:\"钻石会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;钻石会员专享&lt;/p&gt;\";}',1535772759),(498,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772760),(499,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"3\";}',1535772762),(500,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html','admin','CustomerRight','edit','POST','a:5:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:18:\"钻石会员专享\";s:3:\"pic\";s:58:\"/pic/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png\";s:4:\"desc\";s:18:\"钻石会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;钻石会员专享&lt;/p&gt;\";}',1535772763),(501,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772763),(502,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"2\";}',1535772765),(503,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html','admin','CustomerRight','edit','POST','a:5:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:12:\"生日礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/00b284f74955a532c941f0d4d061c7fd.jpg\";s:4:\"desc\";s:18:\"生日会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;生日会员专享&lt;/p&gt;\";}',1535772767),(504,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772767),(505,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"1\";}',1535772768),(506,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html','admin','CustomerRight','edit','POST','a:5:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"新人礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/949ad4c57591a0793b777e74c0afbd33.jpg\";s:4:\"desc\";s:12:\"新人专享\";s:11:\"instruction\";s:82:\"&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;\";}',1535772770),(507,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772770),(508,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535772783),(509,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535772810),(510,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html','admin','Upload','index','GET','a:1:{s:2:\"id\";s:6:\"upload\";}',1535772811),(511,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/upload/listimage.html','admin','Upload','listimage','POST','a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}',1535772813),(512,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','POST','a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}',1535772818),(513,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535772818),(514,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535772821),(515,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/order/index.html','admin','Order','index','GET','a:0:{}',1535772904),(516,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/message/index.html','admin','Message','index','GET','a:0:{}',1535772905),(517,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods_comment/index.html','admin','GoodsComment','index','GET','a:0:{}',1535772907),(518,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html','admin','WxPayRefundLog','index','GET','a:0:{}',1535772908),(519,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/use_lottery/index.html','admin','UseLottery','index','GET','a:0:{}',1535772909),(520,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/gift_bag/index.html','admin','GiftBag','index','GET','a:0:{}',1535772910),(521,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html','admin','CustomerGradeDesc','index','GET','a:0:{}',1535772912),(522,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/lottery_log/index.html','admin','LotteryLog','index','GET','a:0:{}',1535772915),(523,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/lottery/index.html','admin','Lottery','index','GET','a:0:{}',1535772941),(524,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_task/index.html','admin','CustomerTask','index','GET','a:0:{}',1535772943),(525,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer/index.html','admin','Customer','index','GET','a:0:{}',1535772943),(526,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535772951),(527,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535772954),(528,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535772962),(529,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods/edit/id/1.html','admin','Goods','edit','GET','a:1:{s:2:\"id\";s:1:\"1\";}',1535772965),(530,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods/getskudata.html','admin','Goods','getskudata','POST','a:1:{s:2:\"id\";s:1:\"1\";}',1535772965),(531,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods/edit/id/1.html','admin','Goods','edit','GET','a:1:{s:2:\"id\";s:1:\"1\";}',1535773119),(532,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods/getskudata.html','admin','Goods','getskudata','POST','a:1:{s:2:\"id\";s:1:\"1\";}',1535773120),(533,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535773123),(534,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535773125),(535,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535773130),(536,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535773130),(537,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535773138),(538,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535773141),(539,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535773143),(540,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535773180),(541,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535773180),(542,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535773182),(543,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535773182),(544,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535773185),(545,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535773187),(546,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535773368),(547,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535773370),(548,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535773380),(549,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535773380),(550,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535773383),(551,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535773385),(552,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/index.html','admin','Index','index','GET','a:0:{}',1535773471),(553,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}',1535773472),(554,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/goods/index.html','admin','Goods','index','GET','a:0:{}',1535773474),(555,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/index.html','admin','Brand','index','GET','a:0:{}',1535773477),(556,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535773478),(557,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html','admin','Brand','edit','GET','a:1:{s:2:\"id\";s:2:\"17\";}',1535773565),(558,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535773574),(559,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/5.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"5\";}',1535773659),(560,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"3\";}',1535773667),(561,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','GET','a:1:{s:2:\"id\";s:1:\"4\";}',1535773675),(562,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html','admin','Upload','index','GET','a:1:{s:2:\"id\";s:6:\"upload\";}',1535773676),(563,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/upload/upload.html','admin','Upload','upload','POST','a:0:{}',1535773681),(564,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html','admin','CustomerRight','edit','POST','a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180901/ad61a9b50e7d2b918618a29c9d7db9c8.png\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}',1535773687),(565,1,'117.188.4.196','中国 中国  ','Windows 7','Chrome(64.0.3282.186)','http://www.fyxt701.com/index.php/admin/customer_right/index.html','admin','CustomerRight','index','GET','a:0:{}',1535773687);
/*!40000 ALTER TABLE `fy_web_log_001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_web_log_all`
--

DROP TABLE IF EXISTS `fy_web_log_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC INSERT_METHOD=LAST UNION=(`fy_web_log_001`) COMMENT='网站日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fy_withdrawals_log`
--

DROP TABLE IF EXISTS `fy_withdrawals_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_withdrawals_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '提现记录表',
  `user_id` int(10) NOT NULL COMMENT '提现用户',
  `money` decimal(10,2) NOT NULL COMMENT '提下money',
  `rate` decimal(10,2) DEFAULT NULL COMMENT '费率',
  `addtime` int(10) NOT NULL COMMENT '提现时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '1到账成功，0到账失败，2待审核。3审核通过。4.审核失败',
  `updatetime` int(10) DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(10) DEFAULT NULL COMMENT '备注',
  `withrawals_id` int(10) DEFAULT NULL COMMENT '提现费率哪一种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_withdrawals_log`
--

LOCK TABLES `fy_withdrawals_log` WRITE;
/*!40000 ALTER TABLE `fy_withdrawals_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fy_withdrawals_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fy_wx_pay_refund_log`
--

DROP TABLE IF EXISTS `fy_wx_pay_refund_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fy_wx_pay_refund_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信交易记录表',
  `openid` varchar(255) NOT NULL COMMENT '用户openid',
  `username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `create_time` int(11) NOT NULL COMMENT '交易时间',
  `money` decimal(10,2) NOT NULL COMMENT '交易金额',
  `type` tinyint(1) DEFAULT NULL COMMENT '交易类型1购买商品2退款3.其他',
  `status` tinyint(1) DEFAULT '1',
  `isdelete` tinyint(1) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单号',
  `desc` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fy_wx_pay_refund_log`
--

LOCK TABLES `fy_wx_pay_refund_log` WRITE;
/*!40000 ALTER TABLE `fy_wx_pay_refund_log` DISABLE KEYS */;
INSERT INTO `fy_wx_pay_refund_log` VALUES (1,'omQYXwM8TEkiBZR7Ldm891OOWbNQ','Baymax',1535706068,0.01,1,1,0,'1441217402201808311656478916',NULL,NULL),(2,'omQYXwM8TEkiBZR7Ldm891OOWbNQ','Baymax',1535706882,-0.01,2,1,0,'1441217402201808311656478916',NULL,NULL),(3,'omQYXwAasNeXdGSMymd91487Ds1g','DANIEL',1535765494,0.01,1,1,0,'144121740220180901093108',NULL,NULL),(4,'omQYXwAasNeXdGSMymd91487Ds1g','DANIEL',1535766341,0.01,1,1,0,'144121740220180901094531',NULL,NULL);
/*!40000 ALTER TABLE `fy_wx_pay_refund_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-01 11:56:05
