-- MySQL dump 10.13  Distrib 5.7.11, for osx10.11 (x86_64)
--
-- Host: localhost    Database: cboard
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `dashboard_board`
--

DROP TABLE IF EXISTS `dashboard_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_board` (
  `board_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `board_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `layout_json` text COLLATE utf8_unicode_ci,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_board`
--

LOCK TABLES `dashboard_board` WRITE;
/*!40000 ALTER TABLE `dashboard_board` DISABLE KEYS */;
INSERT INTO `dashboard_board` VALUES (2,'1',NULL,'10KV跳闸率','{\"rows\":[{\"type\":\"widget\",\"widgets\":[{\"widgetId\":3,\"name\":\"10KV跳闸率\",\"width\":\"6\"},{\"widgetId\":4,\"name\":\"10KV跳闸率_图表\",\"width\":\"6\"}]}]}','2018-05-11 06:33:49','2018-05-16 13:51:00'),(4,'e61a231f-557c-4dce-ab7f-afec3c858406',NULL,'10KV跳闸率','{\"rows\":[{\"type\":\"widget\",\"widgets\":[{\"widgetId\":3,\"name\":\"10KV跳闸率\",\"width\":\"6\"},{\"widgetId\":4,\"name\":\"10KV跳闸率_图表\",\"width\":\"6\"}]}]}','2018-05-17 01:51:21','2018-05-17 01:52:03');
/*!40000 ALTER TABLE `dashboard_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_board_param`
--

DROP TABLE IF EXISTS `dashboard_board_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_board_param` (
  `board_param_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `board_id` bigint(20) NOT NULL,
  `config` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`board_param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_board_param`
--

LOCK TABLES `dashboard_board_param` WRITE;
/*!40000 ALTER TABLE `dashboard_board_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_board_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_category`
--

DROP TABLE IF EXISTS `dashboard_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_category`
--

LOCK TABLES `dashboard_category` WRITE;
/*!40000 ALTER TABLE `dashboard_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_dataset`
--

DROP TABLE IF EXISTS `dashboard_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_dataset` (
  `dataset_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataset_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_json` text COLLATE utf8_unicode_ci,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dataset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_dataset`
--

LOCK TABLES `dashboard_dataset` WRITE;
/*!40000 ALTER TABLE `dashboard_dataset` DISABLE KEYS */;
INSERT INTO `dashboard_dataset` VALUES (2,'1','默认分类','10KV跳闸率','{\"schema\":{\"measure\":[],\"dimension\":[{\"column\":\"运行单位\",\"id\":\"a629530d-f5a2-41a7-9dc3-edd2a4cfa2a3\",\"type\":\"column\"},{\"column\":\"跳闸率\",\"alias\":\"跳闸率（次/百公里）\",\"id\":\"e2eca973-b30b-484e-9840-be20a8f0a3dd\",\"type\":\"column\"},{\"column\":\"down_time\",\"alias\":\"跳闸次数\",\"id\":\"63e47b77-c224-4e33-914e-ad5f4d14f97a\",\"type\":\"column\"}]},\"selects\":[\"down_time\",\"跳闸率\",\"运行单位\"],\"datasource\":1,\"query\":{\"sql\":\"select run_company \'运行单位\', down_rate \'跳闸率\',down_time from t_10k_down\"},\"filters\":[],\"expressions\":[]}','2018-05-16 13:31:45','2018-05-17 01:09:15'),(3,'1','默认分类','10KV跳闸率_图表','{\"schema\":{\"measure\":[{\"column\":\"跳闸率\",\"alias\":\"\",\"id\":\"8c3e087c-d6ee-4a64-836a-da595b5d19f7\",\"type\":\"column\"}],\"dimension\":[{\"column\":\"运行单位\",\"id\":\"488aecb8-4906-4bdf-970c-8b6eb890dfd1\",\"type\":\"column\"}]},\"selects\":[\"跳闸率\",\"运行单位\"],\"datasource\":1,\"query\":{\"sql\":\"select run_company \'运行单位\', down_rate \'跳闸率\' from t_10k_down \"},\"filters\":[],\"expressions\":[]}','2018-05-16 13:36:44','2018-05-16 13:46:06');
/*!40000 ALTER TABLE `dashboard_dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_datasource`
--

DROP TABLE IF EXISTS `dashboard_datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_datasource` (
  `datasource_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `source_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`datasource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_datasource`
--

LOCK TABLES `dashboard_datasource` WRITE;
/*!40000 ALTER TABLE `dashboard_datasource` DISABLE KEYS */;
INSERT INTO `dashboard_datasource` VALUES (1,'1','mysql','jdbc','{\"aggregateProvider\":true,\"password\":\"123456\",\"pooled\":true,\"driver\":\"com.mysql.jdbc.Driver\",\"jdbcurl\":\"jdbc:mysql://localhost:3306/cboard\",\"username\":\"test\"}','2018-05-11 05:46:54','2018-05-11 05:46:54');
/*!40000 ALTER TABLE `dashboard_datasource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_job`
--

DROP TABLE IF EXISTS `dashboard_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cron_exp` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `job_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_config` text COLLATE utf8_unicode_ci,
  `user_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_exec_time` timestamp NULL DEFAULT NULL,
  `job_status` bigint(20) DEFAULT NULL,
  `exec_log` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_job`
--

LOCK TABLES `dashboard_job` WRITE;
/*!40000 ALTER TABLE `dashboard_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_role`
--

DROP TABLE IF EXISTS `dashboard_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_role` (
  `role_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_role`
--

LOCK TABLES `dashboard_role` WRITE;
/*!40000 ALTER TABLE `dashboard_role` DISABLE KEYS */;
INSERT INTO `dashboard_role` VALUES ('0e4d88f0-8ce7-40e7-b028-8bc7cd118124','test','e61a231f-557c-4dce-ab7f-afec3c858406');
/*!40000 ALTER TABLE `dashboard_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_role_res`
--

DROP TABLE IF EXISTS `dashboard_role_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_role_res` (
  `role_res_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `res_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `res_id` bigint(20) DEFAULT NULL,
  `permission` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_role_res`
--

LOCK TABLES `dashboard_role_res` WRITE;
/*!40000 ALTER TABLE `dashboard_role_res` DISABLE KEYS */;
INSERT INTO `dashboard_role_res` VALUES (152,'0e4d88f0-8ce7-40e7-b028-8bc7cd118124','menu',2,'00'),(153,'0e4d88f0-8ce7-40e7-b028-8bc7cd118124','menu',3,'00'),(154,'0e4d88f0-8ce7-40e7-b028-8bc7cd118124','datasource',1,'11'),(155,'0e4d88f0-8ce7-40e7-b028-8bc7cd118124','dataset',2,'11'),(156,'0e4d88f0-8ce7-40e7-b028-8bc7cd118124','dataset',3,'11'),(157,'0e4d88f0-8ce7-40e7-b028-8bc7cd118124','widget',3,'11'),(158,'0e4d88f0-8ce7-40e7-b028-8bc7cd118124','widget',4,'11');
/*!40000 ALTER TABLE `dashboard_role_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_user`
--

DROP TABLE IF EXISTS `dashboard_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_user` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_user`
--

LOCK TABLES `dashboard_user` WRITE;
/*!40000 ALTER TABLE `dashboard_user` DISABLE KEYS */;
INSERT INTO `dashboard_user` VALUES ('1','admin','Administrator','ff9830c42660c1dd1942844f8069b74a',NULL),('e61a231f-557c-4dce-ab7f-afec3c858406','test','test','098f6bcd4621d373cade4e832627b4f6',NULL);
/*!40000 ALTER TABLE `dashboard_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_user_role`
--

DROP TABLE IF EXISTS `dashboard_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_user_role` (
  `user_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_user_role`
--

LOCK TABLES `dashboard_user_role` WRITE;
/*!40000 ALTER TABLE `dashboard_user_role` DISABLE KEYS */;
INSERT INTO `dashboard_user_role` VALUES (6,'e61a231f-557c-4dce-ab7f-afec3c858406','0e4d88f0-8ce7-40e7-b028-8bc7cd118124');
/*!40000 ALTER TABLE `dashboard_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget`
--

DROP TABLE IF EXISTS `dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget` (
  `widget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_json` text COLLATE utf8_unicode_ci,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget`
--

LOCK TABLES `dashboard_widget` WRITE;
/*!40000 ALTER TABLE `dashboard_widget` DISABLE KEYS */;
INSERT INTO `dashboard_widget` VALUES (3,'1','默认分类','10KV跳闸率','{\"datasetId\":2,\"config\":{\"chart_type\":\"table\",\"keys\":[{\"col\":\"运行单位\",\"values\":[],\"sort\":\"asc\",\"id\":\"a629530d-f5a2-41a7-9dc3-edd2a4cfa2a3\",\"type\":\"eq\"},{\"col\":\"down_time\",\"values\":[],\"alias\":\"跳闸次数\",\"sort\":\"asc\",\"id\":\"63e47b77-c224-4e33-914e-ad5f4d14f97a\",\"type\":\"eq\"},{\"col\":\"跳闸率\",\"values\":[],\"alias\":\"跳闸率（次/百公里）\",\"sort\":\"asc\",\"id\":\"e2eca973-b30b-484e-9840-be20a8f0a3dd\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[]}],\"groups\":[],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-05-16 13:33:55','2018-05-17 01:09:59'),(4,'1','默认分类','10KV跳闸率_图表','{\"datasetId\":3,\"config\":{\"valueAxis\":\"horizontal\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"运行单位\",\"values\":[],\"id\":\"488aecb8-4906-4bdf-970c-8b6eb890dfd1\",\"type\":\"eq\"}],\"values\":[{\"min\":\"0\",\"name\":\"\",\"series_type\":\"bar\",\"type\":\"value\",\"cols\":[{\"col\":\"跳闸率\",\"aggregate_type\":\"max\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"ctgLabelInterval\":\"\",\"dataZoom\":false,\"ctgLabelRotate\":\"\",\"gridCustom\":false,\"legendShow\":false}},\"expressions\":[],\"filterGroups\":[]}','2018-05-16 13:49:27','2018-05-16 13:49:27');
/*!40000 ALTER TABLE `dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_10k_down`
--

DROP TABLE IF EXISTS `t_10k_down`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_10k_down` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `run_company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `down_rate` bigint(20) NOT NULL,
  `down_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_10k_down`
--

LOCK TABLES `t_10k_down` WRITE;
/*!40000 ALTER TABLE `t_10k_down` DISABLE KEYS */;
INSERT INTO `t_10k_down` VALUES (1,'国网赣州供电公司',3,46),(2,'国网南昌供电公司',5,56),(3,'国网九江供电公司',5,60),(4,'国网赣西供电公司',7,62),(5,'国网宜春供电公司',5,26);
/*!40000 ALTER TABLE `t_10k_down` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-17 10:16:13
