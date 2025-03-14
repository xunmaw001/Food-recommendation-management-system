-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmm24q9
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmm24q9/upload/1616380380522.jpg'),(2,'picture2','http://localhost:8080/jspmm24q9/upload/1616380859336.jpg'),(3,'picture3','http://localhost:8080/jspmm24q9/upload/1616380281467.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishidianpu`
--

DROP TABLE IF EXISTS `discussmeishidianpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishidianpu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616381006948 DEFAULT CHARSET=utf8 COMMENT='美食店铺评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishidianpu`
--

LOCK TABLES `discussmeishidianpu` WRITE;
/*!40000 ALTER TABLE `discussmeishidianpu` DISABLE KEYS */;
INSERT INTO `discussmeishidianpu` VALUES (111,'2021-03-22 02:17:14',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-22 02:17:14',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-22 02:17:14',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-22 02:17:14',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-22 02:17:14',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-22 02:17:14',6,6,'用户名6','评论内容6','回复内容6'),(1616381006947,'2021-03-22 02:43:26',1616380804799,1616380882294,NULL,'很不错的餐厅',NULL);
/*!40000 ALTER TABLE `discussmeishidianpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishijiaocheng`
--

DROP TABLE IF EXISTS `discussmeishijiaocheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishijiaocheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='美食教程评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishijiaocheng`
--

LOCK TABLES `discussmeishijiaocheng` WRITE;
/*!40000 ALTER TABLE `discussmeishijiaocheng` DISABLE KEYS */;
INSERT INTO `discussmeishijiaocheng` VALUES (101,'2021-03-22 02:17:14',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-22 02:17:14',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-22 02:17:14',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-22 02:17:14',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-22 02:17:14',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-22 02:17:14',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmeishijiaocheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremenmeishi`
--

DROP TABLE IF EXISTS `discussremenmeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremenmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616380931117 DEFAULT CHARSET=utf8 COMMENT='热门美食评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremenmeishi`
--

LOCK TABLES `discussremenmeishi` WRITE;
/*!40000 ALTER TABLE `discussremenmeishi` DISABLE KEYS */;
INSERT INTO `discussremenmeishi` VALUES (91,'2021-03-22 02:17:14',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-03-22 02:17:14',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-03-22 02:17:14',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-03-22 02:17:14',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-03-22 02:17:14',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-03-22 02:17:14',6,6,'用户名6','评论内容6','回复内容6'),(1616380338792,'2021-03-22 02:32:18',1616380115825,1616380318608,NULL,'很不错美食',NULL),(1616380931116,'2021-03-22 02:42:10',1616380746475,1616380882294,NULL,'很不错的美食',NULL);
/*!40000 ALTER TABLE `discussremenmeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616381074688 DEFAULT CHARSET=utf8 COMMENT='美食社区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-22 02:17:14','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-22 02:17:14','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-22 02:17:14','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-22 02:17:14','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-22 02:17:14','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-22 02:17:14','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1616381065792,'2021-03-22 02:44:24','如何做出色香味俱全的小龙虾','<p>分享如何做出色香味俱全的小龙虾</p>\n<p>1）hjghjhfjgj</p>\n<p>2)FFGFGHGJHGJ</p>\n<p><img src=\"../../..//upload/1616381061979.jpg\" alt=\"\" width=\"1000\" height=\"1000\" /></p>',0,1616380882294,'2','开放'),(1616381074687,'2021-03-22 02:44:34',NULL,'GRTHTFYHYT',61,1616380882294,'2',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishidianpu`
--

DROP TABLE IF EXISTS `meishidianpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishidianpu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) NOT NULL COMMENT '店铺名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `yingyeshijian` varchar(200) NOT NULL COMMENT '营业时间',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianpudizhi` varchar(200) NOT NULL COMMENT '店铺地址',
  `dianpujieshao` longtext COMMENT '店铺介绍',
  `jingdiancaipin` longtext COMMENT '经典菜品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616380804800 DEFAULT CHARSET=utf8 COMMENT='美食店铺';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishidianpu`
--

LOCK TABLES `meishidianpu` WRITE;
/*!40000 ALTER TABLE `meishidianpu` DISABLE KEYS */;
INSERT INTO `meishidianpu` VALUES (51,'2021-03-22 02:17:14','店铺名称1','http://localhost:8080/jspmm24q9/upload/1616380607265.jpg','营业时间1','联系人1','13823888881','店铺地址1','店铺介绍1','经典菜品1\r\n'),(52,'2021-03-22 02:17:14','店铺名称2','http://localhost:8080/jspmm24q9/upload/1616380529006.jpg','营业时间2','联系人2','13823888882','店铺地址2','店铺介绍2','经典菜品2\r\n'),(53,'2021-03-22 02:17:14','店铺名称3','http://localhost:8080/jspmm24q9/upload/1616380635728.jpg','营业时间3','联系人3','13823888883','店铺地址3','店铺介绍3','经典菜品3\r\n'),(54,'2021-03-22 02:17:14','店铺名称4','http://localhost:8080/jspmm24q9/upload/meishidianpu_tupian4.jpg','营业时间4','联系人4','13823888884','店铺地址4','店铺介绍4','经典菜品4'),(55,'2021-03-22 02:17:14','店铺名称5','http://localhost:8080/jspmm24q9/upload/meishidianpu_tupian5.jpg','营业时间5','联系人5','13823888885','店铺地址5','店铺介绍5','经典菜品5'),(56,'2021-03-22 02:17:14','店铺名称6','http://localhost:8080/jspmm24q9/upload/meishidianpu_tupian6.jpg','营业时间6','联系人6','13823888886','店铺地址6','店铺介绍6','经典菜品6'),(1616380804799,'2021-03-22 02:40:04','堕落小龙虾','http://localhost:8080/jspmm24q9/upload/1616380764269.jpg','11:00-23:00','陈用','12312312312','梅州市新县城9号','经营各种龙虾烧烤','麻辣小龙虾\r\n海鲜烧烤\r\n');
/*!40000 ALTER TABLE `meishidianpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishifenlei`
--

DROP TABLE IF EXISTS `meishifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616380723148 DEFAULT CHARSET=utf8 COMMENT='美食分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishifenlei`
--

LOCK TABLES `meishifenlei` WRITE;
/*!40000 ALTER TABLE `meishifenlei` DISABLE KEYS */;
INSERT INTO `meishifenlei` VALUES (21,'2021-03-22 02:17:14','分类1'),(22,'2021-03-22 02:17:14','分类2'),(23,'2021-03-22 02:17:14','分类3'),(24,'2021-03-22 02:17:14','分类4'),(25,'2021-03-22 02:17:14','分类5'),(26,'2021-03-22 02:17:14','分类6'),(1616380067548,'2021-03-22 02:27:46','川菜'),(1616380073289,'2021-03-22 02:27:52','鲁菜'),(1616380723147,'2021-03-22 02:38:42','甜点蛋糕');
/*!40000 ALTER TABLE `meishifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishijiaocheng`
--

DROP TABLE IF EXISTS `meishijiaocheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishijiaocheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yongliao` varchar(200) DEFAULT NULL COMMENT '用料',
  `pengrenfangfa` varchar(200) DEFAULT NULL COMMENT '烹饪方法',
  `pengrenshizhang` float DEFAULT NULL COMMENT '烹饪时长',
  `meishitese` varchar(200) DEFAULT NULL COMMENT '美食特色',
  `zhizuofangfa` longtext COMMENT '制作方法',
  `xiaotieshi` varchar(200) DEFAULT NULL COMMENT '小贴士',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616381186202 DEFAULT CHARSET=utf8 COMMENT='美食教程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishijiaocheng`
--

LOCK TABLES `meishijiaocheng` WRITE;
/*!40000 ALTER TABLE `meishijiaocheng` DISABLE KEYS */;
INSERT INTO `meishijiaocheng` VALUES (41,'2021-03-22 02:17:14','美食名称1','分类1','http://localhost:8080/jspmm24q9/upload/1616380476450.jpg','用料1','烹饪方法1',1,'美食特色1','制作方法1\r\n','小贴士1','2021-03-22','用户名1'),(42,'2021-03-22 02:17:14','美食名称2','分类2','http://localhost:8080/jspmm24q9/upload/meishijiaocheng_tupian2.jpg','用料2','烹饪方法2',2,'美食特色2','制作方法2','小贴士2','2021-03-22','用户名2'),(43,'2021-03-22 02:17:14','美食名称3','分类3','http://localhost:8080/jspmm24q9/upload/1616380485199.jpg','用料3','烹饪方法3',3,'美食特色3','制作方法3\r\n','小贴士3','2021-03-22','用户名3'),(44,'2021-03-22 02:17:14','美食名称4','分类4','http://localhost:8080/jspmm24q9/upload/meishijiaocheng_tupian4.jpg','用料4','烹饪方法4',4,'美食特色4','制作方法4','小贴士4','2021-03-22','用户名4'),(45,'2021-03-22 02:17:14','美食名称5','分类5','http://localhost:8080/jspmm24q9/upload/meishijiaocheng_tupian5.jpg','用料5','烹饪方法5',5,'美食特色5','制作方法5','小贴士5','2021-03-22','用户名5'),(46,'2021-03-22 02:17:14','美食名称6','分类6','http://localhost:8080/jspmm24q9/upload/meishijiaocheng_tupian6.jpg','用料6','烹饪方法6',6,'美食特色6','制作方法6','小贴士6','2021-03-22','用户名6'),(1616381186201,'2021-03-22 02:46:26','麻辣小龙虾','川菜','http://localhost:8080/jspmm24q9/upload/1616381130587.jpg','小龙虾','煮',1.5,'鲜香麻辣','\r\n1，买回的小龙虾，加入陈醋，盐静泡半小时。加陈醋是为了更好的清洗龙虾。\r\n2，用牙刷清洗干净龙虾，腹部重点清洗区域。喜欢吃爪的朋友，爪子周边要不留死角的清洗。刷完后，反复用清水洗净。\r\n3，去虾线，去虾头，去虾爪，开虾背。这一部分工作量太大。5斤虾，从洗到处理干净花了两个多小时,\r\n4，准备辅材。紫苏，我们湖南人喜欢。也可根据个人口味加入魔芋豆腐，洋葱。因为本次小龙虾分量太多，就不加配菜了。\r\n5，大火持续油炸\r\n6，能闻到虾黄香味后，加入姜蒜，八角桂皮爆香，加入干辣椒或火锅底料或豆瓣酱\r\n\r\n','火候掌握要好','2021-03-22','2');
/*!40000 ALTER TABLE `meishijiaocheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616380847487 DEFAULT CHARSET=utf8 COMMENT='美食资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-22 02:17:14','标题1','简介1','http://localhost:8080/jspmm24q9/upload/news_picture1.jpg','内容1'),(82,'2021-03-22 02:17:14','标题2','简介2','http://localhost:8080/jspmm24q9/upload/1616380208989.jpg','内容2\r\n'),(83,'2021-03-22 02:17:14','标题3','简介3','http://localhost:8080/jspmm24q9/upload/news_picture3.jpg','内容3'),(84,'2021-03-22 02:17:14','标题4','简介4','http://localhost:8080/jspmm24q9/upload/news_picture4.jpg','内容4'),(85,'2021-03-22 02:17:14','标题5','简介5','http://localhost:8080/jspmm24q9/upload/1616380216245.jpg','内容5\r\n'),(86,'2021-03-22 02:17:14','标题6','简介6','http://localhost:8080/jspmm24q9/upload/news_picture6.jpg','内容6'),(1616380847486,'2021-03-22 02:40:46','美食街活动','美食街','http://localhost:8080/jspmm24q9/upload/1616380818217.jpg','美食街活动\r\n时间：5.7-5.9\r\n地点：人民广场\r\n<img src=\"http://localhost:8080/jspmm24q9/upload/1616380845334.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmm24q9/upload/1616380845334.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remenmeishi`
--

DROP TABLE IF EXISTS `remenmeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remenmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `meishitese` longtext COMMENT '美食特色',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616380746476 DEFAULT CHARSET=utf8 COMMENT='热门美食';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remenmeishi`
--

LOCK TABLES `remenmeishi` WRITE;
/*!40000 ALTER TABLE `remenmeishi` DISABLE KEYS */;
INSERT INTO `remenmeishi` VALUES (31,'2021-03-22 02:17:14','美食名称1','分类1','http://localhost:8080/jspmm24q9/upload/1616380413359.jpg','材料1','美食特色1\r\n','2021-03-22 10:33:31',3),(32,'2021-03-22 02:17:14','美食名称2','分类2','http://localhost:8080/jspmm24q9/upload/remenmeishi_tupian2.jpg','材料2','美食特色2','2021-03-22 10:17:14',2),(33,'2021-03-22 02:17:14','美食名称3','分类3','http://localhost:8080/jspmm24q9/upload/remenmeishi_tupian3.jpg','材料3','美食特色3','2021-03-22 10:17:14',3),(34,'2021-03-22 02:17:14','美食名称4','分类4','http://localhost:8080/jspmm24q9/upload/1616380452233.jpg','材料4','美食特色4\r\n','2021-03-22 10:34:09',8),(35,'2021-03-22 02:17:14','美食名称5','分类5','http://localhost:8080/jspmm24q9/upload/1616380436701.jpg','材料5','美食特色5\r\n','2021-03-22 10:41:59',14),(36,'2021-03-22 02:17:14','美食名称6','分类6','http://localhost:8080/jspmm24q9/upload/remenmeishi_tupian6.jpg','材料6','美食特色6','2021-03-22 10:17:14',6),(1616380746475,'2021-03-22 02:39:05','糖醋鱼','鲁菜','http://localhost:8080/jspmm24q9/upload/1616380736921.jpg','鲤鱼','糖醋鲤鱼，济南北临黄河，河中所产鲤鱼，体色美丽而鲜艳，口与鳍为淡红色，两侧鱼鳞具有金黄色光泽，腹部淡黄色，尾鳍鲜红，其肉味纯正，鲜嫩肥美，是鲤鱼中之珍品。济南百年老店汇泉楼饭庄（原在江家池），对烹制“黄河鲤鱼”有专长，该店所创制的“糖醋鲤鱼”，是把划上百叶花刀的整条鲤鱼裹上粉糊，下油炸至头尾翘起，成金黄色后，再浇上用洛口醋烹制的糖醋汁，使其“吱啦”作响的上桌，形似“鲤鱼跳龙门”。味甜酸微咸，外焦里嫩，香味扑鼻。系传统名菜。\r\n','2021-03-22 10:42:14',2);
/*!40000 ALTER TABLE `remenmeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616380998714 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616380326174,'2021-03-22 02:32:05',1616380318608,1616380115825,'remenmeishi','糖醋鱼','http://localhost:8080/jspmm24q9/upload/1616380108400.jpg'),(1616380998713,'2021-03-22 02:43:18',1616380882294,1616380804799,'meishidianpu','堕落小龙虾','http://localhost:8080/jspmm24q9/upload/1616380764269.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','78i1is0n3gj9h9het8e37fsunmcm49wk','2021-03-22 02:27:35','2021-03-22 03:38:25'),(2,1616380318608,'1','yonghu','用户','8t8jw94op6zv5ayabj1s706426agqtki','2021-03-22 02:32:03','2021-03-22 03:32:03'),(3,1616380882294,'2','yonghu','用户','hamx1q2z4opte7r27tmexy14wxycb879','2021-03-22 02:41:28','2021-03-22 03:41:28');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-22 02:17:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616380882295 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-22 02:17:14','用户1','123456','姓名1','http://localhost:8080/jspmm24q9/upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2021-03-22 02:17:14','用户2','123456','姓名2','http://localhost:8080/jspmm24q9/upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2021-03-22 02:17:14','用户3','123456','姓名3','http://localhost:8080/jspmm24q9/upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2021-03-22 02:17:14','用户4','123456','姓名4','http://localhost:8080/jspmm24q9/upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2021-03-22 02:17:14','用户5','123456','姓名5','http://localhost:8080/jspmm24q9/upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2021-03-22 02:17:14','用户6','123456','姓名6','http://localhost:8080/jspmm24q9/upload/yonghu_touxiang6.jpg','男','13823888886'),(1616380318608,'2021-03-22 02:31:58','1','1','陈一',NULL,NULL,'12312312312'),(1616380882294,'2021-03-22 02:41:22','2','2','陈一','http://localhost:8080/jspmm24q9/upload/1616380898141.jpg','女','12312312312');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 11:35:42
