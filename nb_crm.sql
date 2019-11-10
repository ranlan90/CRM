-- MySQL dump 10.13  Distrib 5.7.21, for macos10.13 (x86_64)
--
-- Host: localhost    Database: nb_crm
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Current Database: `nb_crm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nb_crm` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `nb_crm`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 账户信息',6,'add_userprofile'),(17,'Can change 账户信息',6,'change_userprofile'),(18,'Can delete 账户信息',6,'delete_userprofile'),(19,'Can add campuses',7,'add_campuses'),(20,'Can change campuses',7,'change_campuses'),(21,'Can delete campuses',7,'delete_campuses'),(22,'Can add class list',8,'add_classlist'),(23,'Can change class list',8,'change_classlist'),(24,'Can delete class list',8,'delete_classlist'),(25,'Can add consult record',9,'add_consultrecord'),(26,'Can change consult record',9,'change_consultrecord'),(27,'Can delete consult record',9,'delete_consultrecord'),(28,'Can add contract template',10,'add_contracttemplate'),(29,'Can change contract template',10,'change_contracttemplate'),(30,'Can delete contract template',10,'delete_contracttemplate'),(31,'Can add course record',11,'add_courserecord'),(32,'Can change course record',11,'change_courserecord'),(33,'Can delete course record',11,'delete_courserecord'),(34,'Can add customer',12,'add_customer'),(35,'Can change customer',12,'change_customer'),(36,'Can delete customer',12,'delete_customer'),(37,'Can add department',13,'add_department'),(38,'Can change department',13,'change_department'),(39,'Can delete department',13,'delete_department'),(40,'Can add enrollment',14,'add_enrollment'),(41,'Can change enrollment',14,'change_enrollment'),(42,'Can delete enrollment',14,'delete_enrollment'),(43,'Can add payment record',15,'add_paymentrecord'),(44,'Can change payment record',15,'change_paymentrecord'),(45,'Can delete payment record',15,'delete_paymentrecord'),(46,'Can add study record',16,'add_studyrecord'),(47,'Can change study record',16,'change_studyrecord'),(48,'Can delete study record',16,'delete_studyrecord'),(49,'Can add 菜单表',17,'add_menu'),(50,'Can change 菜单表',17,'change_menu'),(51,'Can delete 菜单表',17,'delete_menu'),(52,'Can add 权限表',18,'add_permission'),(53,'Can change 权限表',18,'change_permission'),(54,'Can delete 权限表',18,'delete_permission'),(55,'Can add role',19,'add_role'),(56,'Can change role',19,'change_role'),(57,'Can delete role',19,'delete_role'),(58,'Can add user',20,'add_user'),(59,'Can change user',20,'change_user'),(60,'Can delete user',20,'delete_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_campuses`
--

DROP TABLE IF EXISTS `crm_campuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_campuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_campuses`
--

LOCK TABLES `crm_campuses` WRITE;
/*!40000 ALTER TABLE `crm_campuses` DISABLE KEYS */;
INSERT INTO `crm_campuses` VALUES (1,'北京',NULL);
/*!40000 ALTER TABLE `crm_campuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_classlist`
--

DROP TABLE IF EXISTS `crm_classlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_classlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `memo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `graduate_date` date DEFAULT NULL,
  `class_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campuses_id` int(11) NOT NULL,
  `contract_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_classlist_course_semester_campuses_id_118b09f0_uniq` (`course`,`semester`,`campuses_id`),
  KEY `crm_classlist_campuses_id_34b62f4c_fk_crm_campuses_id` (`campuses_id`),
  KEY `crm_classlist_contract_id_99c5c1b3_fk_crm_contracttemplate_id` (`contract_id`),
  CONSTRAINT `crm_classlist_campuses_id_34b62f4c_fk_crm_campuses_id` FOREIGN KEY (`campuses_id`) REFERENCES `crm_campuses` (`id`),
  CONSTRAINT `crm_classlist_contract_id_99c5c1b3_fk_crm_contracttemplate_id` FOREIGN KEY (`contract_id`) REFERENCES `crm_contracttemplate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_classlist`
--

LOCK TABLES `crm_classlist` WRITE;
/*!40000 ALTER TABLE `crm_classlist` DISABLE KEYS */;
INSERT INTO `crm_classlist` VALUES (1,'LinuxL',1,998,NULL,'2019-06-27',NULL,NULL,1,NULL),(2,'PythonFullStack',1,10000,NULL,'2019-06-27',NULL,NULL,1,NULL),(3,'LinuxL',2,10000,NULL,'2019-06-27',NULL,NULL,1,NULL),(4,'LinuxL',3,10000,NULL,'2019-06-27',NULL,NULL,1,NULL),(5,'PythonFullStack',5,10000,NULL,'2019-06-27',NULL,NULL,1,NULL),(6,'PythonFullStack',6,10000,NULL,'2019-06-27',NULL,NULL,1,NULL),(7,'LinuxL',4,10000,NULL,'2019-06-27',NULL,'online',1,NULL);
/*!40000 ALTER TABLE `crm_classlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_classlist_teachers`
--

DROP TABLE IF EXISTS `crm_classlist_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_classlist_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_classlist_teachers_classlist_id_userprofile_id_fdeb6cf0_uniq` (`classlist_id`,`userprofile_id`),
  KEY `crm_classlist_teache_userprofile_id_4ba87056_fk_crm_userp` (`userprofile_id`),
  CONSTRAINT `crm_classlist_teache_userprofile_id_4ba87056_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_classlist_teachers_classlist_id_4b676750_fk_crm_classlist_id` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_classlist_teachers`
--

LOCK TABLES `crm_classlist_teachers` WRITE;
/*!40000 ALTER TABLE `crm_classlist_teachers` DISABLE KEYS */;
INSERT INTO `crm_classlist_teachers` VALUES (7,1,2),(9,1,3),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(8,7,2);
/*!40000 ALTER TABLE `crm_classlist_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_consultrecord`
--

DROP TABLE IF EXISTS `crm_consultrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_consultrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `delete_status` tinyint(1) NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userprofile_id` (`consultant_id`),
  KEY `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id` (`customer_id`),
  CONSTRAINT `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_consultrecord`
--

LOCK TABLES `crm_consultrecord` WRITE;
/*!40000 ALTER TABLE `crm_consultrecord` DISABLE KEYS */;
INSERT INTO `crm_consultrecord` VALUES (1,'alexdsb','C','2019-07-02 13:49:09.033996',0,1,7),(4,'三生三世1','C','2019-07-03 04:18:59.855817',0,1,2),(5,'三生三世','C','2019-07-03 04:19:23.329282',0,1,5),(6,'sffdfdf','E','2019-07-03 04:36:25.682093',0,1,1),(7,'可好看好看','F','2019-07-03 05:56:45.011186',0,1,1),(8,'phone','E','2019-11-08 02:55:30.982094',0,1,1),(9,'meeting','B','2019-11-08 03:05:29.777312',0,1,1),(10,'phone111','E','2019-11-09 12:55:45.579834',0,1,7),(11,'metting','A','2019-11-09 13:02:13.383027',0,1,7);
/*!40000 ALTER TABLE `crm_consultrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_contracttemplate`
--

DROP TABLE IF EXISTS `crm_contracttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_contracttemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_contracttemplate`
--

LOCK TABLES `crm_contracttemplate` WRITE;
/*!40000 ALTER TABLE `crm_contracttemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_contracttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_courserecord`
--

DROP TABLE IF EXISTS `crm_courserecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_courserecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_num` int(11) NOT NULL,
  `date` date NOT NULL,
  `course_title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_memo` longtext COLLATE utf8_unicode_ci,
  `has_homework` tinyint(1) NOT NULL,
  `homework_title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homework_memo` longtext COLLATE utf8_unicode_ci,
  `scoring_point` longtext COLLATE utf8_unicode_ci,
  `re_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_courserecord_re_class_id_day_num_90a7cd93_uniq` (`re_class_id`,`day_num`),
  KEY `crm_courserecord_teacher_id_3ace9808_fk_crm_userprofile_id` (`teacher_id`),
  CONSTRAINT `crm_courserecord_re_class_id_f13402af_fk_crm_classlist_id` FOREIGN KEY (`re_class_id`) REFERENCES `crm_classlist` (`id`),
  CONSTRAINT `crm_courserecord_teacher_id_3ace9808_fk_crm_userprofile_id` FOREIGN KEY (`teacher_id`) REFERENCES `crm_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_courserecord`
--

LOCK TABLES `crm_courserecord` WRITE;
/*!40000 ALTER TABLE `crm_courserecord` DISABLE KEYS */;
INSERT INTO `crm_courserecord` VALUES (1,1,'2019-07-07','fdfdf','',1,NULL,'','',1,1),(2,2,'2019-07-07',NULL,'',1,NULL,'','',1,1),(3,3,'2019-07-07',NULL,'',1,NULL,'','',1,1),(4,8,'2019-11-08',NULL,'',1,NULL,'','',1,1);
/*!40000 ALTER TABLE `crm_courserecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_customer`
--

DROP TABLE IF EXISTS `crm_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `qq_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `source` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `class_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `customer_note` longtext COLLATE utf8_unicode_ci,
  `status` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `network_consult_note` longtext COLLATE utf8_unicode_ci,
  `date` datetime(6) NOT NULL,
  `last_consult_date` date NOT NULL,
  `next_date` date DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `introduce_from_id` int(11) DEFAULT NULL,
  `network_consultant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `qq` (`qq`),
  KEY `crm_customer_consultant_id_11f5298a_fk_crm_userprofile_id` (`consultant_id`),
  KEY `crm_customer_introduce_from_id_2ca323af_fk_crm_customer_id` (`introduce_from_id`),
  KEY `crm_customer_network_consultant_i_1b6675eb_fk_crm_userp` (`network_consultant_id`),
  CONSTRAINT `crm_customer_consultant_id_11f5298a_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_customer_introduce_from_id_2ca323af_fk_crm_customer_id` FOREIGN KEY (`introduce_from_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_customer_network_consultant_i_1b6675eb_fk_crm_userp` FOREIGN KEY (`network_consultant_id`) REFERENCES `crm_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_customer`
--

LOCK TABLES `crm_customer` WRITE;
/*!40000 ALTER TABLE `crm_customer` DISABLE KEYS */;
INSERT INTO `crm_customer` VALUES (1,'kit',NULL,'kity','female',NULL,NULL,'office_direct','LinuxL','fulltime','','signed','','2019-06-27 15:06:54.914841','2019-06-27',NULL,2,NULL,NULL),(2,'234342423',NULL,'ss','male',NULL,NULL,'baidu_ads','LinuxL','fulltime','','studying','','2019-06-27 15:08:15.487176','2019-06-27',NULL,2,NULL,NULL),(3,'123',NULL,'alex2','male',NULL,NULL,'qq','LinuxL','fulltime','','unregistered','','2019-06-29 13:05:55.884375','2019-06-29',NULL,2,NULL,NULL),(4,'456',NULL,NULL,'male',NULL,NULL,'qq','LinuxL','weekend','','studying','','2019-06-29 13:38:10.529238','2019-06-29',NULL,2,NULL,NULL),(5,'343434',NULL,'susan','female',NULL,NULL,'qq','PythonFullStack','fulltime','','studying','','2019-06-30 01:59:16.342370','2019-06-30',NULL,2,NULL,NULL),(6,'224324324','jack','jack','male',NULL,NULL,'qq','PythonFullStack','fulltime','','studying','','2019-07-01 07:02:21.210538','2019-07-01',NULL,2,NULL,NULL),(7,'3434324555',NULL,NULL,'male',NULL,NULL,'qq','PythonFullStack','online','','paid_in_full','','2019-07-02 00:35:55.327192','2019-07-02',NULL,1,NULL,NULL),(8,'4234435435543',NULL,'alex','male',NULL,NULL,'qq','PythonFullStack','fulltime','','unregistered','','2019-07-02 02:47:46.775483','2019-07-02',NULL,NULL,NULL,NULL),(9,'3423423423233333',NULL,'tony','male',NULL,NULL,'qq','PythonFullStack','fulltime','','unregistered','','2019-07-02 03:08:57.802830','2019-07-02',NULL,2,NULL,NULL),(10,'78768787',NULL,NULL,'male',NULL,NULL,'qq','PythonFullStack','weekend','','unregistered','','2019-07-02 03:09:47.613893','2019-07-02',NULL,2,NULL,NULL),(11,'55555',NULL,'alex5','male',NULL,NULL,'qq','LinuxL','fulltime','','unregistered','','2019-07-02 04:15:02.983031','2019-07-02',NULL,2,NULL,NULL),(12,'343434323232',NULL,NULL,'male',NULL,NULL,'qq','LinuxL','fulltime','','unregistered','','2019-11-08 00:57:09.818469','2019-11-08',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `crm_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_customer_class_list`
--

DROP TABLE IF EXISTS `crm_customer_class_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_customer_class_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `classlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_customer_class_list_customer_id_classlist_id_965b57d6_uniq` (`customer_id`,`classlist_id`),
  KEY `crm_customer_class_l_classlist_id_d6308406_fk_crm_class` (`classlist_id`),
  CONSTRAINT `crm_customer_class_l_classlist_id_d6308406_fk_crm_class` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`),
  CONSTRAINT `crm_customer_class_list_customer_id_bd17a54f_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_customer_class_list`
--

LOCK TABLES `crm_customer_class_list` WRITE;
/*!40000 ALTER TABLE `crm_customer_class_list` DISABLE KEYS */;
INSERT INTO `crm_customer_class_list` VALUES (12,1,1),(2,2,1),(4,3,1),(5,4,2),(7,5,1),(8,5,2),(9,6,1),(10,7,2),(11,8,2);
/*!40000 ALTER TABLE `crm_customer_class_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_department`
--

DROP TABLE IF EXISTS `crm_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_department`
--

LOCK TABLES `crm_department` WRITE;
/*!40000 ALTER TABLE `crm_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_enrollment`
--

DROP TABLE IF EXISTS `crm_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_enrollment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `why_us` longtext COLLATE utf8_unicode_ci,
  `your_expectation` longtext COLLATE utf8_unicode_ci,
  `contract_agreed` tinyint(1) NOT NULL,
  `contract_approved` tinyint(1) NOT NULL,
  `enrolled_date` datetime(6) NOT NULL,
  `memo` longtext COLLATE utf8_unicode_ci,
  `delete_status` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `enrolment_class_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_enrollment_enrolment_class_id_customer_id_8283d1dd_uniq` (`enrolment_class_id`,`customer_id`),
  KEY `crm_enrollment_customer_id_4e9336cf_fk_crm_customer_id` (`customer_id`),
  KEY `crm_enrollment_school_id_b5e8c943_fk_crm_campuses_id` (`school_id`),
  CONSTRAINT `crm_enrollment_customer_id_4e9336cf_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_enrollment_enrolment_class_id_8500dce0_fk_crm_classlist_id` FOREIGN KEY (`enrolment_class_id`) REFERENCES `crm_classlist` (`id`),
  CONSTRAINT `crm_enrollment_school_id_b5e8c943_fk_crm_campuses_id` FOREIGN KEY (`school_id`) REFERENCES `crm_campuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_enrollment`
--

LOCK TABLES `crm_enrollment` WRITE;
/*!40000 ALTER TABLE `crm_enrollment` DISABLE KEYS */;
INSERT INTO `crm_enrollment` VALUES (5,'learn','',1,0,'2019-07-04 07:57:01.422012','',0,1,1,1),(6,'dream','',1,0,'2019-11-09 14:03:59.286882','',0,7,2,1);
/*!40000 ALTER TABLE `crm_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_paymentrecord`
--

DROP TABLE IF EXISTS `crm_paymentrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_paymentrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paid_fee` int(11) NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci,
  `date` datetime(6) NOT NULL,
  `course` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_status` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `confirm_date` datetime(6) DEFAULT NULL,
  `confirm_user_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `enrolment_class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_paymentrecord_confirm_user_id_e88e5f25_fk_crm_userprofile_id` (`confirm_user_id`),
  KEY `crm_paymentrecord_consultant_id_45289fb8_fk_crm_userprofile_id` (`consultant_id`),
  KEY `crm_paymentrecord_customer_id_cd6d33f2_fk_crm_customer_id` (`customer_id`),
  KEY `crm_paymentrecord_enrolment_class_id_36cbd119_fk_crm_class` (`enrolment_class_id`),
  CONSTRAINT `crm_paymentrecord_confirm_user_id_e88e5f25_fk_crm_userprofile_id` FOREIGN KEY (`confirm_user_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_paymentrecord_consultant_id_45289fb8_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_paymentrecord_customer_id_cd6d33f2_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_paymentrecord_enrolment_class_id_36cbd119_fk_crm_class` FOREIGN KEY (`enrolment_class_id`) REFERENCES `crm_classlist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_paymentrecord`
--

LOCK TABLES `crm_paymentrecord` WRITE;
/*!40000 ALTER TABLE `crm_paymentrecord` DISABLE KEYS */;
INSERT INTO `crm_paymentrecord` VALUES (3,'deposit',0,'','2019-07-05 13:43:57.728218',NULL,'weekend',0,1,NULL,NULL,1,1,2),(4,'deposit',0,'','2019-07-05 14:11:46.559555','LinuxL','online',0,1,NULL,NULL,1,2,1),(5,'deposit',1,'','2019-11-09 14:07:08.944706','LinuxL','online',0,1,NULL,1,1,7,2);
/*!40000 ALTER TABLE `crm_paymentrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_studyrecord`
--

DROP TABLE IF EXISTS `crm_studyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_studyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `homework_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homework` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_studyrecord_course_record_id_student_id_c1b4eb36_uniq` (`course_record_id`,`student_id`),
  KEY `crm_studyrecord_student_id_18b0c323_fk_crm_customer_id` (`student_id`),
  CONSTRAINT `crm_studyrecord_course_record_id_e3601e93_fk_crm_courserecord_id` FOREIGN KEY (`course_record_id`) REFERENCES `crm_courserecord` (`id`),
  CONSTRAINT `crm_studyrecord_student_id_18b0c323_fk_crm_customer_id` FOREIGN KEY (`student_id`) REFERENCES `crm_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_studyrecord`
--

LOCK TABLES `crm_studyrecord` WRITE;
/*!40000 ALTER TABLE `crm_studyrecord` DISABLE KEYS */;
INSERT INTO `crm_studyrecord` VALUES (14,'leave_early',-1,'fffffff','2019-07-07 14:09:47.126454',NULL,'',1,1),(15,'leave_early',-1,'fsvff','2019-07-07 14:09:47.126617',NULL,'',1,2),(16,'checked',-1,NULL,'2019-07-07 14:09:47.126702',NULL,'',1,5),(17,'checked',-1,NULL,'2019-07-07 14:09:47.126770',NULL,'',1,6),(18,'checked',-1,NULL,'2019-11-08 06:39:46.253440',NULL,'',2,2),(19,'checked',-1,NULL,'2019-11-08 06:39:46.253599',NULL,'',2,5),(20,'checked',-1,NULL,'2019-11-08 06:39:46.253706',NULL,'',2,6);
/*!40000 ALTER TABLE `crm_studyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_userprofile`
--

DROP TABLE IF EXISTS `crm_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memo` longtext COLLATE utf8_unicode_ci,
  `date_joined` datetime(6) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `crm_userprofile_department_id_b7469aef_fk_crm_department_id` (`department_id`),
  CONSTRAINT `crm_userprofile_department_id_b7469aef_fk_crm_department_id` FOREIGN KEY (`department_id`) REFERENCES `crm_department` (`id`),
  CONSTRAINT `crm_userprofile_user_id_baffd786_fk_rbac_user_id` FOREIGN KEY (`user_id`) REFERENCES `rbac_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_userprofile`
--

LOCK TABLES `crm_userprofile` WRITE;
/*!40000 ALTER TABLE `crm_userprofile` DISABLE KEYS */;
INSERT INTO `crm_userprofile` VALUES (1,'pbkdf2_sha256$36000$Iap8DM5FKOsJ$p+m5IV1URrtc5lddUeNXGhRDPjNnWckUGFjxJYKhhaY=','2019-11-10 05:26:30.392163',1,'root9527@qq.com',1,0,'root',NULL,NULL,'2019-06-25 12:28:36.376781',NULL,1),(2,'pbkdf2_sha256$36000$LlVRyGVT10EW$HgB+9s5RBizwaG0rpb3yemScyNoy3EXd9dlvTz3LhWQ=','2019-11-09 09:13:25.200396',0,'hanhan@qq.com',0,0,'hanhan',NULL,NULL,'2019-06-26 14:44:51.325763',NULL,2),(3,'weixin1234',NULL,0,'weixin@qq.com',0,0,'archer1',NULL,NULL,'2019-06-26 14:56:50.826121',NULL,NULL),(4,'pbkdf2_sha256$36000$U20BgTW4dGpP$DDwo4gpmcnhP2eAO8imE+ozTDKG/V7NpTd4SZZXdK3k=','2019-11-09 12:44:43.633252',0,'sabar@qq.com',0,0,'sabar',NULL,NULL,'2019-06-26 15:02:49.419364',NULL,4),(5,'pbkdf2_sha256$36000$iJ5lCFoIkpCX$QvJA5E9IlKrSbY0GvRsxBLDghgNBFOXuf2pEPj+d8iw=','2019-11-09 04:08:29.046200',0,'archer@qq.com',0,0,'archer',NULL,NULL,'2019-11-07 14:23:21.587449',NULL,3);
/*!40000 ALTER TABLE `crm_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_userprofile_groups`
--

DROP TABLE IF EXISTS `crm_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_userprofile_groups_userprofile_id_group_id_3639bc47_uniq` (`userprofile_id`,`group_id`),
  KEY `crm_userprofile_groups_group_id_50fd12ae_fk_auth_group_id` (`group_id`),
  CONSTRAINT `crm_userprofile_grou_userprofile_id_c8440cbf_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_userprofile_groups_group_id_50fd12ae_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_userprofile_groups`
--

LOCK TABLES `crm_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `crm_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `crm_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_userprofile_user_per_userprofile_id_permissio_d2888764_uniq` (`userprofile_id`,`permission_id`),
  KEY `crm_userprofile_user_permission_id_28bdda74_fk_auth_perm` (`permission_id`),
  CONSTRAINT `crm_userprofile_user_permission_id_28bdda74_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `crm_userprofile_user_userprofile_id_566784f9_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_userprofile_user_permissions`
--

LOCK TABLES `crm_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `crm_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_crm_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_crm_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `crm_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-06-27 14:59:16.137530','1','Campuses object',1,'[{\"added\": {}}]',7,1),(2,'2019-06-27 15:01:19.205182','1','ClassList object',1,'[{\"added\": {}}]',8,1),(3,'2019-06-27 15:06:54.927349','1','Customer object',1,'[{\"added\": {}}]',12,1),(4,'2019-06-27 15:08:15.504638','2','Customer object',1,'[{\"added\": {}}]',12,1),(5,'2019-06-27 15:54:21.807007','1','Customer object',2,'[]',12,1),(6,'2019-06-27 15:54:30.286749','2','Customer object',2,'[{\"changed\": {\"fields\": [\"course\"]}}]',12,1),(7,'2019-06-27 22:18:34.069637','2','PythonFullStack1 期(北京)',1,'[{\"added\": {}}]',8,1),(8,'2019-06-27 22:18:46.541030','2','Customer object',2,'[{\"changed\": {\"fields\": [\"class_list\"]}}]',12,1),(9,'2019-11-08 13:16:31.299842','2','管理员',2,'[{\"changed\": {\"fields\": [\"permissions\"]}}]',19,1),(10,'2019-11-09 10:21:08.171660','36','注销',1,'[{\"added\": {}}]',18,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'crm','campuses'),(8,'crm','classlist'),(9,'crm','consultrecord'),(10,'crm','contracttemplate'),(11,'crm','courserecord'),(12,'crm','customer'),(13,'crm','department'),(14,'crm','enrollment'),(15,'crm','paymentrecord'),(16,'crm','studyrecord'),(6,'crm','userprofile'),(17,'rbac','menu'),(18,'rbac','permission'),(19,'rbac','role'),(20,'rbac','user'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-06-25 08:30:41.754171'),(2,'contenttypes','0002_remove_content_type_name','2019-06-25 08:30:41.823068'),(3,'auth','0001_initial','2019-06-25 08:30:42.061230'),(4,'auth','0002_alter_permission_name_max_length','2019-06-25 08:30:42.098106'),(5,'auth','0003_alter_user_email_max_length','2019-06-25 08:30:42.110130'),(6,'auth','0004_alter_user_username_opts','2019-06-25 08:30:42.128701'),(7,'auth','0005_alter_user_last_login_null','2019-06-25 08:30:42.146348'),(8,'auth','0006_require_contenttypes_0002','2019-06-25 08:30:42.149452'),(9,'auth','0007_alter_validators_add_error_messages','2019-06-25 08:30:42.170548'),(10,'auth','0008_alter_user_username_max_length','2019-06-25 08:30:42.187012'),(11,'crm','0001_initial','2019-06-25 08:30:43.800756'),(12,'admin','0001_initial','2019-06-25 08:30:43.903658'),(13,'admin','0002_logentry_remove_auto_add','2019-06-25 08:30:43.956040'),(14,'sessions','0001_initial','2019-06-25 08:30:44.016644'),(15,'crm','0002_auto_20190804_0742','2019-08-04 07:42:35.264835'),(16,'rbac','0001_initial','2019-08-04 07:42:35.589187'),(17,'rbac','0002_auto_20190804_1152','2019-08-04 11:52:16.047192'),(18,'crm','0003_userprofile_user','2019-08-04 15:08:53.758890'),(19,'rbac','0003_auto_20190804_1539','2019-08-04 15:39:53.811630');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2co9aoak5yrkwdber9hivxi0kjxfxwsp','YTI2MjE5NTU5MjU0NGY1M2FmYjEyOGQ0N2U0YWQ1OWJiYmFlN2FjZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2EyYjkxMjkzOWJiY2U0NDlhOTA2MWQyN2VlNzMyOTFlYzI0NGVhIiwicGVybWlzc2lvbnMiOnsibG9naW4iOnsidXJsIjoiL2xvZ2luLyIsImlkIjoxLCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NzY3Ylx1NWY1NSJ9LCJyZWciOnsidXJsIjoiL3JlZy8iLCJpZCI6MiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTZjZThcdTUxOGMifSwiY3VzdG9tZXIiOnsidXJsIjoiL2NybS9jdXN0b21lcl9saXN0LyIsImlkIjozLCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NWJhMlx1NjIzN1x1NTIxN1x1ODg2OCJ9LCJteV9jdXN0b21lciI6eyJ1cmwiOiIvY3JtL215X2N1c3RvbWVyLyIsImlkIjo0LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NzljMVx1NjIzNyJ9LCJhZGRfY3VzdG9tZXIiOnsidXJsIjoiL2NybS9jdXN0b21lci9hZGQvIiwiaWQiOjUsInBpZCI6NCwicG5hbWUiOiJteV9jdXN0b21lciIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU1YmEyXHU2MjM3In0sImVkaXRfY3VzdG9tZXIiOnsidXJsIjoiL2NybS9jdXN0b21lci9lZGl0LyhcXGQrKSIsImlkIjo2LCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1NWJhMlx1NjIzNyJ9LCJjb25zdWx0X3JlY29yZCI6eyJ1cmwiOiIvY3JtL2NvbnN1bHRfcmVjb3JkX2xpc3QvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsImlkIjo3LCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1OGRkZlx1OGZkYlx1OGJiMFx1NWY1NSJ9LCJhZGRfY3VzdG9tZXJfcmVjb3JkIjp7InVybCI6Ii9jcm0vY29uc3VsdF9yZWNvcmQvYWRkLyIsImlkIjo4LCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1OGRkZlx1OGZkYiJ9LCJlZGl0X2NvbnN1bHRfcmVjb3JkIjp7InVybCI6Ii9jcm0vY29uc3VsdF9yZWNvcmQvZWRpdC8oXFxkKykvIiwiaWQiOjksInBpZCI6NCwicG5hbWUiOiJteV9jdXN0b21lciIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU4ZGRmXHU4ZmRiIn0sImVucm9sbG1lbnQiOnsidXJsIjoiL2NybS9lbnJvbGxtZW50X2xpc3QvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsImlkIjoxMCwicGlkIjo0LCJwbmFtZSI6Im15X2N1c3RvbWVyIiwidGl0bGUiOiJcdTYyYTVcdTU0MGRcdThiYjBcdTVmNTVcdTg4NjgifSwiYWRkX2Vucm9sbG1lbnQiOnsidXJsIjoiL2NybS9lbnJvbGxtZW50L2FkZC8oP1A8Y3VzdG9tZXJfaWQ+XFxkKykvIiwiaWQiOjExLCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1NjJhNVx1NTQwZFx1ODg2OCJ9LCJlZGl0X2Vucm9sbG1lbnQiOnsidXJsIjoiL2NybS9lbnJvbGxtZW50L2VkaXQvKD9QPGVkaXRfaWQ+XFxkKykvIiwiaWQiOjEyLCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1NjJhNVx1NTQwZFx1ODg2OCJ9LCJjbGFzc19saXN0Ijp7InVybCI6Ii9jcm0vY2xhc3NfbGlzdC8iLCJpZCI6MTYsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU3M2VkXHU3ZWE3XHU1MjE3XHU4ODY4In0sImFkZF9jbGFzcyI6eyJ1cmwiOiIvY3JtL2NsYXNzL2FkZC8iLCJpZCI6MTcsInBpZCI6MTYsInBuYW1lIjoiY2xhc3NfbGlzdCIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU3M2VkXHU3ZWE3In0sImVkaXRfY2xhc3MiOnsidXJsIjoiL2NybS9jbGFzcy9lZGl0Lyg/UDxlZGl0X2lkPlxcZCspLyIsImlkIjoxOCwicGlkIjoxNiwicG5hbWUiOiJjbGFzc19saXN0IiwidGl0bGUiOiJcdTdmMTZcdThmOTFcdTczZWRcdTdlYTcifSwiY291cnNlX2xpc3QiOnsidXJsIjoiL2NybS9jb3Vyc2VfbGlzdC8oP1A8Y2xhc3NfaWQ+XFxkKykvIiwiaWQiOjE5LCJwaWQiOjE2LCJwbmFtZSI6ImNsYXNzX2xpc3QiLCJ0aXRsZSI6Ilx1OGJmZVx1N2EwYlx1NTIxN1x1ODg2OCJ9LCJhZGRfY291cnNlIjp7InVybCI6Ii9jcm0vY291cnNlL2FkZC8oP1A8Y2xhc3NfaWQ+XFxkKykvIiwiaWQiOjIwLCJwaWQiOjE2LCJwbmFtZSI6ImNsYXNzX2xpc3QiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1OGJmZVx1N2EwYiJ9LCJlZGl0X2NvdXJzZSI6eyJ1cmwiOiIvY3JtL2NvdXJzZS9lZGl0Lyg/UDxlZGl0X2lkPlxcZCspLyIsImlkIjoyMSwicGlkIjoxNiwicG5hbWUiOiJjbGFzc19saXN0IiwidGl0bGUiOiJcdTdmMTZcdThmOTFcdThiZmVcdTdhMGIifSwic3R1ZHlfcmVjb3JkX2xpc3QiOnsidXJsIjoiL2NybS9zdHVkeV9yZWNvcmRfbGlzdC8oP1A8Y291cnNlX2lkPlxcZCspLyIsImlkIjoyMiwicGlkIjoxNiwicG5hbWUiOiJjbGFzc19saXN0IiwidGl0bGUiOiJcdTViNjZcdTRlNjBcdThiYjBcdTVmNTVcdTg4NjgifSwicmJhYzpyb2xlX2xpc3QiOnsidXJsIjoiL3JiYWMvcm9sZS9saXN0LyIsImlkIjoyMywicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMTdcdTg4NjgifSwicmJhYzpyb2xlX2FkZCI6eyJ1cmwiOiIvcmJhYy9yb2xlL2FkZC8iLCJpZCI6MjQsInBpZCI6MjMsInBuYW1lIjoicmJhYzpyb2xlX2xpc3QiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1ODlkMlx1ODI3MiJ9LCJyYmFjOnJvbGVfZWRpdCI6eyJ1cmwiOiIvcmJhYy9yb2xlL2VkaXQvKFxcZCspIiwiaWQiOjI1LCJwaWQiOjIzLCJwbmFtZSI6InJiYWM6cm9sZV9saXN0IiwidGl0bGUiOiJcdTdmMTZcdThmOTFcdTg5ZDJcdTgyNzIifSwicmJhYzpyb2xlX2RlbCI6eyJ1cmwiOiIvcmJhYy9yb2xlL2RlbC8oXFxkKykiLCJpZCI6MjYsInBpZCI6MjMsInBuYW1lIjoicmJhYzpyb2xlX2xpc3QiLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1ODlkMlx1ODI3MiJ9LCJyYmFjOm1lbnVfbGlzdCI6eyJ1cmwiOiIvcmJhYy9tZW51L2xpc3QvIiwiaWQiOjI3LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1NGZlMVx1NjA2ZiJ9LCJyYmFjOm1lbnVfYWRkIjp7InVybCI6Ii9yYmFjL21lbnUvYWRkLyIsImlkIjoyOCwicGlkIjoyNywicG5hbWUiOiJyYmFjOm1lbnVfbGlzdCIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU4M2RjXHU1MzU1In0sInJiYWM6bWVudV9lZGl0Ijp7InVybCI6Ii9yYmFjL21lbnUvZWRpdC8oXFxkKykiLCJpZCI6MjksInBpZCI6MjcsInBuYW1lIjoicmJhYzptZW51X2xpc3QiLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1ODNkY1x1NTM1NSJ9LCJyYmFjOm1lbnVfZGVsIjp7InVybCI6Ii9yYmFjL21lbnUvZGVsLyhcXGQrKSIsImlkIjozMCwicGlkIjoyNywicG5hbWUiOiJyYmFjOm1lbnVfbGlzdCIsInRpdGxlIjoiXHU1MjIwXHU5NjY0XHU4M2RjXHU1MzU1In0sInJiYWM6cGVybWlzc2lvbl9hZGQiOnsidXJsIjoiL3JiYWMvcGVybWlzc2lvbi9hZGQvIiwiaWQiOjMxLCJwaWQiOjI3LCJwbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTY3NDNcdTk2NTAifSwicmJhYzpwZXJtaXNzaW9uX2VkaXQiOnsidXJsIjoiL3JiYWMvcGVybWlzc2lvbi9lZGl0LyhcXGQrKSIsImlkIjozMiwicGlkIjoyNywicG5hbWUiOiJyYmFjOm1lbnVfbGlzdCIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU2NzQzXHU5NjUwIn0sInJiYWM6cGVybWlzc2lvbl9kZWwiOnsidXJsIjoiL3JiYWMvcGVybWlzc2lvbi9kZWwvKFxcZCspIiwiaWQiOjMzLCJwaWQiOjI3LCJwbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTUyMjBcdTk2NjRcdTY3NDNcdTk2NTAifSwicmJhYzptdWx0aV9wZXJtaXNzaW9ucyI6eyJ1cmwiOiIvcmJhYy9tdWx0aS9wZXJtaXNzaW9ucy8iLCJpZCI6MzQsInBpZCI6MjcsInBuYW1lIjoicmJhYzptZW51X2xpc3QiLCJ0aXRsZSI6Ilx1NjI3OVx1OTFjZlx1NjRjZFx1NGY1Y1x1Njc0M1x1OTY1MCJ9LCJyYmFjOmRpc3RyaWJ1dGVfcGVybWlzc2lvbnMiOnsidXJsIjoiL3JiYWMvZGlzdHJpYnV0ZS9wZXJtaXNzaW9ucy8iLCJpZCI6MzUsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU1MjA2XHU5MTRkXHU2NzQzXHU5NjUwIn19LCJtZW51cyI6eyIxIjp7InRpdGxlIjoiXHU1YmEyXHU2MjM3XHU0ZmUxXHU2MDZmXHU3YmExXHU3NDA2IiwiaWNvbiI6ImZhLWFkZHJlc3MtY2FyZCIsIndlaWdodCI6MTAwLCJjaGlsZHJlbiI6W3sidGl0bGUiOiJcdTViYTJcdTYyMzdcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvY3JtL2N1c3RvbWVyX2xpc3QvIiwiaWQiOjMsInBpZCI6bnVsbH0seyJ0aXRsZSI6Ilx1NzljMVx1NjIzNyIsInVybCI6Ii9jcm0vbXlfY3VzdG9tZXIvIiwiaWQiOjQsInBpZCI6bnVsbH1dfSwiMiI6eyJ0aXRsZSI6Ilx1NzNlZFx1N2VhN1x1N2JhMVx1NzQwNiIsImljb24iOiJmYS1ob21lIiwid2VpZ2h0IjoxLCJjaGlsZHJlbiI6W3sidGl0bGUiOiJcdTczZWRcdTdlYTdcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvY3JtL2NsYXNzX2xpc3QvIiwiaWQiOjE2LCJwaWQiOm51bGx9XX0sIjMiOnsidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTdiYTFcdTc0MDYiLCJpY29uIjoiZmEtaGFuZC1zY2lzc29ycy1vIiwid2VpZ2h0IjoxLCJjaGlsZHJlbiI6W3sidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvcmJhYy9yb2xlL2xpc3QvIiwiaWQiOjIzLCJwaWQiOm51bGx9LHsidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTRmZTFcdTYwNmYiLCJ1cmwiOiIvcmJhYy9tZW51L2xpc3QvIiwiaWQiOjI3LCJwaWQiOm51bGx9LHsidGl0bGUiOiJcdTUyMDZcdTkxNGRcdTY3NDNcdTk2NTAiLCJ1cmwiOiIvcmJhYy9kaXN0cmlidXRlL3Blcm1pc3Npb25zLyIsImlkIjozNSwicGlkIjpudWxsfV19fX0=','2019-08-19 04:52:14.217335'),('cmvidamo64ah0kemm9vp6lo6d1sapsng','ZWZkZjE4MzI5MzRiNmJjNmE4ZWZmYjAxMzBhYjAxYzhjNjQzMjUxOTp7InZfY29kZSI6IlZDWk00IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE3YTJiOTEyOTM5YmJjZTQ0OWE5MDYxZDI3ZWU3MzI5MWVjMjQ0ZWEiLCJwZXJtaXNzaW9ucyI6eyJjdXN0b21lciI6eyJ1cmwiOiIvY3JtL2N1c3RvbWVyX2xpc3QvIiwiaWQiOjMsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU1YmEyXHU2MjM3XHU1MjE3XHU4ODY4In0sIm15X2N1c3RvbWVyIjp7InVybCI6Ii9jcm0vbXlfY3VzdG9tZXIvIiwiaWQiOjQsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU3OWMxXHU2MjM3In0sImNsYXNzX2xpc3QiOnsidXJsIjoiL2NybS9jbGFzc19saXN0LyIsImlkIjoxNiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTczZWRcdTdlYTdcdTUyMTdcdTg4NjgifSwicmJhYzpyb2xlX2xpc3QiOnsidXJsIjoiL3JiYWMvcm9sZS9saXN0LyIsImlkIjoyMywicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTg5ZDJcdTgyNzJcdTUyMTdcdTg4NjgifSwicmJhYzptZW51X2xpc3QiOnsidXJsIjoiL3JiYWMvbWVudS9saXN0LyIsImlkIjoyNywicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTRmZTFcdTYwNmYifSwicmJhYzpkaXN0cmlidXRlX3Blcm1pc3Npb25zIjp7InVybCI6Ii9yYmFjL2Rpc3RyaWJ1dGUvcGVybWlzc2lvbnMvIiwiaWQiOjM1LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NTIwNlx1OTE0ZFx1Njc0M1x1OTY1MCJ9LCJsb2dpbiI6eyJ1cmwiOiIvbG9naW4vIiwiaWQiOjEsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU3NjdiXHU1ZjU1In0sInJlZyI6eyJ1cmwiOiIvcmVnLyIsImlkIjoyLCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NmNlOFx1NTE4YyJ9LCJhZGRfY3VzdG9tZXIiOnsidXJsIjoiL2NybS9jdXN0b21lci9hZGQvIiwiaWQiOjUsInBpZCI6NCwicG5hbWUiOiJteV9jdXN0b21lciIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU1YmEyXHU2MjM3In0sImVkaXRfY3VzdG9tZXIiOnsidXJsIjoiL2NybS9jdXN0b21lci9lZGl0LyhcXGQrKSIsImlkIjo2LCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1NWJhMlx1NjIzNyJ9LCJjb25zdWx0X3JlY29yZCI6eyJ1cmwiOiIvY3JtL2NvbnN1bHRfcmVjb3JkX2xpc3QvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsImlkIjo3LCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1OGRkZlx1OGZkYlx1OGJiMFx1NWY1NSJ9LCJhZGRfY3VzdG9tZXJfcmVjb3JkIjp7InVybCI6Ii9jcm0vY29uc3VsdF9yZWNvcmQvYWRkLyIsImlkIjo4LCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1OGRkZlx1OGZkYiJ9LCJlZGl0X2NvbnN1bHRfcmVjb3JkIjp7InVybCI6Ii9jcm0vY29uc3VsdF9yZWNvcmQvZWRpdC8oXFxkKykvIiwiaWQiOjksInBpZCI6NCwicG5hbWUiOiJteV9jdXN0b21lciIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU4ZGRmXHU4ZmRiIn0sImVucm9sbG1lbnQiOnsidXJsIjoiL2NybS9lbnJvbGxtZW50X2xpc3QvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsImlkIjoxMCwicGlkIjo0LCJwbmFtZSI6Im15X2N1c3RvbWVyIiwidGl0bGUiOiJcdTYyYTVcdTU0MGRcdThiYjBcdTVmNTVcdTg4NjgifSwiYWRkX2Vucm9sbG1lbnQiOnsidXJsIjoiL2NybS9lbnJvbGxtZW50L2FkZC8oP1A8Y3VzdG9tZXJfaWQ+XFxkKykvIiwiaWQiOjExLCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1NjJhNVx1NTQwZFx1ODg2OCJ9LCJlZGl0X2Vucm9sbG1lbnQiOnsidXJsIjoiL2NybS9lbnJvbGxtZW50L2VkaXQvKD9QPGVkaXRfaWQ+XFxkKykvIiwiaWQiOjEyLCJwaWQiOjQsInBuYW1lIjoibXlfY3VzdG9tZXIiLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1NjJhNVx1NTQwZFx1ODg2OCJ9LCJhZGRfY2xhc3MiOnsidXJsIjoiL2NybS9jbGFzcy9hZGQvIiwiaWQiOjE3LCJwaWQiOjE2LCJwbmFtZSI6ImNsYXNzX2xpc3QiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1NzNlZFx1N2VhNyJ9LCJlZGl0X2NsYXNzIjp7InVybCI6Ii9jcm0vY2xhc3MvZWRpdC8oP1A8ZWRpdF9pZD5cXGQrKS8iLCJpZCI6MTgsInBpZCI6MTYsInBuYW1lIjoiY2xhc3NfbGlzdCIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU3M2VkXHU3ZWE3In0sImNvdXJzZV9saXN0Ijp7InVybCI6Ii9jcm0vY291cnNlX2xpc3QvKD9QPGNsYXNzX2lkPlxcZCspLyIsImlkIjoxOSwicGlkIjoxNiwicG5hbWUiOiJjbGFzc19saXN0IiwidGl0bGUiOiJcdThiZmVcdTdhMGJcdTUyMTdcdTg4NjgifSwiYWRkX2NvdXJzZSI6eyJ1cmwiOiIvY3JtL2NvdXJzZS9hZGQvKD9QPGNsYXNzX2lkPlxcZCspLyIsImlkIjoyMCwicGlkIjoxNiwicG5hbWUiOiJjbGFzc19saXN0IiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdThiZmVcdTdhMGIifSwiZWRpdF9jb3Vyc2UiOnsidXJsIjoiL2NybS9jb3Vyc2UvZWRpdC8oP1A8ZWRpdF9pZD5cXGQrKS8iLCJpZCI6MjEsInBpZCI6MTYsInBuYW1lIjoiY2xhc3NfbGlzdCIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU4YmZlXHU3YTBiIn0sInN0dWR5X3JlY29yZF9saXN0Ijp7InVybCI6Ii9jcm0vc3R1ZHlfcmVjb3JkX2xpc3QvKD9QPGNvdXJzZV9pZD5cXGQrKS8iLCJpZCI6MjIsInBpZCI6MTYsInBuYW1lIjoiY2xhc3NfbGlzdCIsInRpdGxlIjoiXHU1YjY2XHU0ZTYwXHU4YmIwXHU1ZjU1XHU4ODY4In0sInJiYWM6cm9sZV9hZGQiOnsidXJsIjoiL3JiYWMvcm9sZS9hZGQvIiwiaWQiOjI0LCJwaWQiOjIzLCJwbmFtZSI6InJiYWM6cm9sZV9saXN0IiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTg5ZDJcdTgyNzIifSwicmJhYzpyb2xlX2VkaXQiOnsidXJsIjoiL3JiYWMvcm9sZS9lZGl0LyhcXGQrKSIsImlkIjoyNSwicGlkIjoyMywicG5hbWUiOiJyYmFjOnJvbGVfbGlzdCIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU4OWQyXHU4MjcyIn0sInJiYWM6cm9sZV9kZWwiOnsidXJsIjoiL3JiYWMvcm9sZS9kZWwvKFxcZCspIiwiaWQiOjI2LCJwaWQiOjIzLCJwbmFtZSI6InJiYWM6cm9sZV9saXN0IiwidGl0bGUiOiJcdTUyMjBcdTk2NjRcdTg5ZDJcdTgyNzIifSwicmJhYzptZW51X2FkZCI6eyJ1cmwiOiIvcmJhYy9tZW51L2FkZC8iLCJpZCI6MjgsInBpZCI6MjcsInBuYW1lIjoicmJhYzptZW51X2xpc3QiLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1ODNkY1x1NTM1NSJ9LCJyYmFjOm1lbnVfZWRpdCI6eyJ1cmwiOiIvcmJhYy9tZW51L2VkaXQvKFxcZCspIiwiaWQiOjI5LCJwaWQiOjI3LCJwbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTdmMTZcdThmOTFcdTgzZGNcdTUzNTUifSwicmJhYzptZW51X2RlbCI6eyJ1cmwiOiIvcmJhYy9tZW51L2RlbC8oXFxkKykiLCJpZCI6MzAsInBpZCI6MjcsInBuYW1lIjoicmJhYzptZW51X2xpc3QiLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1ODNkY1x1NTM1NSJ9LCJyYmFjOnBlcm1pc3Npb25fYWRkIjp7InVybCI6Ii9yYmFjL3Blcm1pc3Npb24vYWRkLyIsImlkIjozMSwicGlkIjoyNywicG5hbWUiOiJyYmFjOm1lbnVfbGlzdCIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU2NzQzXHU5NjUwIn0sInJiYWM6cGVybWlzc2lvbl9lZGl0Ijp7InVybCI6Ii9yYmFjL3Blcm1pc3Npb24vZWRpdC8oXFxkKykiLCJpZCI6MzIsInBpZCI6MjcsInBuYW1lIjoicmJhYzptZW51X2xpc3QiLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1Njc0M1x1OTY1MCJ9LCJyYmFjOnBlcm1pc3Npb25fZGVsIjp7InVybCI6Ii9yYmFjL3Blcm1pc3Npb24vZGVsLyhcXGQrKSIsImlkIjozMywicGlkIjoyNywicG5hbWUiOiJyYmFjOm1lbnVfbGlzdCIsInRpdGxlIjoiXHU1MjIwXHU5NjY0XHU2NzQzXHU5NjUwIn0sInJiYWM6bXVsdGlfcGVybWlzc2lvbnMiOnsidXJsIjoiL3JiYWMvbXVsdGkvcGVybWlzc2lvbnMvIiwiaWQiOjM0LCJwaWQiOjI3LCJwbmFtZSI6InJiYWM6bWVudV9saXN0IiwidGl0bGUiOiJcdTYyNzlcdTkxY2ZcdTY0Y2RcdTRmNWNcdTY3NDNcdTk2NTAifX0sIm1lbnVzIjp7IjEiOnsidGl0bGUiOiJcdTViYTJcdTYyMzdcdTRmZTFcdTYwNmZcdTdiYTFcdTc0MDYiLCJpY29uIjoiZmEtYWRkcmVzcy1jYXJkIiwid2VpZ2h0IjoxMDAsImNoaWxkcmVuIjpbeyJ0aXRsZSI6Ilx1NWJhMlx1NjIzN1x1NTIxN1x1ODg2OCIsInVybCI6Ii9jcm0vY3VzdG9tZXJfbGlzdC8iLCJpZCI6MywicGlkIjpudWxsfSx7InRpdGxlIjoiXHU3OWMxXHU2MjM3IiwidXJsIjoiL2NybS9teV9jdXN0b21lci8iLCJpZCI6NCwicGlkIjpudWxsfV19LCIyIjp7InRpdGxlIjoiXHU3M2VkXHU3ZWE3XHU3YmExXHU3NDA2IiwiaWNvbiI6ImZhLWhvbWUiLCJ3ZWlnaHQiOjEsImNoaWxkcmVuIjpbeyJ0aXRsZSI6Ilx1NzNlZFx1N2VhN1x1NTIxN1x1ODg2OCIsInVybCI6Ii9jcm0vY2xhc3NfbGlzdC8iLCJpZCI6MTYsInBpZCI6bnVsbH1dfSwiMyI6eyJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1N2JhMVx1NzQwNiIsImljb24iOiJmYS1oYW5kLXNjaXNzb3JzLW8iLCJ3ZWlnaHQiOjEsImNoaWxkcmVuIjpbeyJ0aXRsZSI6Ilx1ODlkMlx1ODI3Mlx1NTIxN1x1ODg2OCIsInVybCI6Ii9yYmFjL3JvbGUvbGlzdC8iLCJpZCI6MjMsInBpZCI6bnVsbH0seyJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1NGZlMVx1NjA2ZiIsInVybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJpZCI6MjcsInBpZCI6bnVsbH0seyJ0aXRsZSI6Ilx1NTIwNlx1OTE0ZFx1Njc0M1x1OTY1MCIsInVybCI6Ii9yYmFjL2Rpc3RyaWJ1dGUvcGVybWlzc2lvbnMvIiwiaWQiOjM1LCJwaWQiOm51bGx9XX19fQ==','2019-08-21 12:55:58.954865'),('nhe36pusnnf6stz9g8odu0g07ci7jf9f','YWU0OTQ5ODEzMTU4NTFmYWJmNWZjMjk3ZTg1ZjYzYjk2MDRiM2E4Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2EyYjkxMjkzOWJiY2U0NDlhOTA2MWQyN2VlNzMyOTFlYzI0NGVhIn0=','2019-11-24 05:26:30.395313'),('qiuweiskt4qp0nb15wmddrw21zwfb6ru','ZWUyZGUzNjhhYjg1NjI5ZWRmNTA0NzYyMGU2YzAwZWY3NDMxOTVkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNWQyMDhmMjljNWNmMTk1ODQ4MDA2NWZhOWM5MGE4NmMxMzkxYWI4In0=','2019-07-19 14:46:13.611316'),('wro706or5yj58xy40te8wu9ncsm230o8','MzkwYjdlYTdmYWY0ZjFjMTI0ODdhY2Y5MzJlNWYwOTkwNWNmNmI2Mjp7InZfY29kZSI6IlBSOSIsIl9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYmEwNGFhZTVjNjdlMzM1OGRlMzAwNDJlZDVmOGFjYzNhMDlhZGI1IiwicGVybWlzc2lvbnMiOnsiY3VzdG9tZXIiOnsidXJsIjoiL2NybS9jdXN0b21lcl9saXN0LyIsImlkIjozLCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NWJhMlx1NjIzN1x1NTIxN1x1ODg2OCJ9LCJteV9jdXN0b21lciI6eyJ1cmwiOiIvY3JtL215X2N1c3RvbWVyLyIsImlkIjo0LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NzljMVx1NjIzNyJ9LCJjbGFzc19saXN0Ijp7InVybCI6Ii9jcm0vY2xhc3NfbGlzdC8iLCJpZCI6MTYsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU3M2VkXHU3ZWE3XHU1MjE3XHU4ODY4In0sInJiYWM6cm9sZV9saXN0Ijp7InVybCI6Ii9yYmFjL3JvbGUvbGlzdC8iLCJpZCI6MjMsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU4OWQyXHU4MjcyXHU1MjE3XHU4ODY4In0sInJiYWM6bWVudV9saXN0Ijp7InVybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJpZCI6MjcsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU2NzQzXHU5NjUwXHU0ZmUxXHU2MDZmIn0sInJiYWM6ZGlzdHJpYnV0ZV9wZXJtaXNzaW9ucyI6eyJ1cmwiOiIvcmJhYy9kaXN0cmlidXRlL3Blcm1pc3Npb25zLyIsImlkIjozNSwicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTUyMDZcdTkxNGRcdTY3NDNcdTk2NTAifSwibG9naW4iOnsidXJsIjoiL2xvZ2luLyIsImlkIjoxLCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NzY3Ylx1NWY1NSJ9LCJyZWciOnsidXJsIjoiL3JlZy8iLCJpZCI6MiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTZjZThcdTUxOGMifSwiZWRpdF9jdXN0b21lciI6eyJ1cmwiOiIvY3JtL2N1c3RvbWVyL2VkaXQvKFxcZCspIiwiaWQiOjYsInBpZCI6NCwicG5hbWUiOiJteV9jdXN0b21lciIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU1YmEyXHU2MjM3In0sInBheW1lbnRfcmVjb3JkIjp7InVybCI6Ii9jcm0vcGF5bWVudF9yZWNvcmRfbGlzdC8oP1A8Y3VzdG9tZXJfaWQ+XFxkKykvIiwiaWQiOjEzLCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1N2YzNFx1OGQzOVx1OGJiMFx1NWY1NVx1ODg2OCJ9LCJhZGRfcGF5bWVudCI6eyJ1cmwiOiIvY3JtL3BheW1lbnQvYWRkLyg/UDxjdXN0b21lcl9pZD5cXGQrKS8iLCJpZCI6MTQsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU3ZjM0XHU4ZDM5XHU4ODY4In0sImVkaXRfcGF5bWVudCI6eyJ1cmwiOiIvY3JtL3BheW1lbnQvZWRpdC8oP1A8ZWRpdF9pZD5cXGQrKS8iLCJpZCI6MTUsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU3ZjM0XHU4ZDM5XHU4ODY4In0sImxvZ291dCI6eyJ1cmwiOiIvbG9nb3V0LyIsImlkIjozNiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTZjZThcdTk1MDAifX0sIm1lbnVzIjp7IjEiOnsidGl0bGUiOiJcdTViYTJcdTYyMzdcdTRmZTFcdTYwNmZcdTdiYTFcdTc0MDYiLCJpY29uIjoiZmEtYWRkcmVzcy1jYXJkIiwid2VpZ2h0IjoxMDAsImNoaWxkcmVuIjpbeyJ0aXRsZSI6Ilx1NWJhMlx1NjIzN1x1NTIxN1x1ODg2OCIsInVybCI6Ii9jcm0vY3VzdG9tZXJfbGlzdC8iLCJpZCI6MywicGlkIjpudWxsfSx7InRpdGxlIjoiXHU3OWMxXHU2MjM3IiwidXJsIjoiL2NybS9teV9jdXN0b21lci8iLCJpZCI6NCwicGlkIjpudWxsfV19LCIyIjp7InRpdGxlIjoiXHU3M2VkXHU3ZWE3XHU3YmExXHU3NDA2IiwiaWNvbiI6ImZhLWhvbWUiLCJ3ZWlnaHQiOjEsImNoaWxkcmVuIjpbeyJ0aXRsZSI6Ilx1NzNlZFx1N2VhN1x1NTIxN1x1ODg2OCIsInVybCI6Ii9jcm0vY2xhc3NfbGlzdC8iLCJpZCI6MTYsInBpZCI6bnVsbH1dfSwiMyI6eyJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1N2JhMVx1NzQwNiIsImljb24iOiJmYS1oYW5kLXNjaXNzb3JzLW8iLCJ3ZWlnaHQiOjEsImNoaWxkcmVuIjpbeyJ0aXRsZSI6Ilx1ODlkMlx1ODI3Mlx1NTIxN1x1ODg2OCIsInVybCI6Ii9yYmFjL3JvbGUvbGlzdC8iLCJpZCI6MjMsInBpZCI6bnVsbH0seyJ0aXRsZSI6Ilx1Njc0M1x1OTY1MFx1NGZlMVx1NjA2ZiIsInVybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJpZCI6MjcsInBpZCI6bnVsbH0seyJ0aXRsZSI6Ilx1NTIwNlx1OTE0ZFx1Njc0M1x1OTY1MCIsInVybCI6Ii9yYmFjL2Rpc3RyaWJ1dGUvcGVybWlzc2lvbnMvIiwiaWQiOjM1LCJwaWQiOm51bGx9XX19fQ==','2019-11-23 12:44:43.640792'),('yqgkchoevib5gdi2vginb358sr2iwx0k','YWU0OTQ5ODEzMTU4NTFmYWJmNWZjMjk3ZTg1ZjYzYjk2MDRiM2E4Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2EyYjkxMjkzOWJiY2U0NDlhOTA2MWQyN2VlNzMyOTFlYzI0NGVhIn0=','2019-07-14 13:15:32.450177');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_menu`
--

DROP TABLE IF EXISTS `rbac_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_menu`
--

LOCK TABLES `rbac_menu` WRITE;
/*!40000 ALTER TABLE `rbac_menu` DISABLE KEYS */;
INSERT INTO `rbac_menu` VALUES (1,'客户信息管理','fa-address-card',100),(2,'班级管理','fa-home',1),(3,'权限管理','fa-hand-scissors-o',1);
/*!40000 ALTER TABLE `rbac_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_permission`
--

DROP TABLE IF EXISTS `rbac_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` (`menu_id`),
  KEY `rbac_permission_parent_id_bcb411ef_fk_rbac_permission_id` (`parent_id`),
  CONSTRAINT `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `rbac_menu` (`id`),
  CONSTRAINT `rbac_permission_parent_id_bcb411ef_fk_rbac_permission_id` FOREIGN KEY (`parent_id`) REFERENCES `rbac_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_permission`
--

LOCK TABLES `rbac_permission` WRITE;
/*!40000 ALTER TABLE `rbac_permission` DISABLE KEYS */;
INSERT INTO `rbac_permission` VALUES (1,'登录','/login/','login',NULL,NULL),(2,'注册','/reg/','reg',NULL,NULL),(3,'客户列表','/crm/customer_list/','customer',1,NULL),(4,'私户','/crm/my_customer/','my_customer',1,NULL),(5,'添加客户','/crm/customer/add/','add_customer',NULL,4),(6,'编辑客户','/crm/customer/edit/(\\d+)','edit_customer',NULL,4),(7,'跟进记录','/crm/consult_record_list/(?P<customer_id>\\d+)/','consult_record',NULL,4),(8,'添加跟进','/crm/consult_record/add/','add_customer_record',NULL,4),(9,'编辑跟进','/crm/consult_record/edit/(\\d+)/','edit_consult_record',NULL,4),(10,'报名记录表','/crm/enrollment_list/(?P<customer_id>\\d+)/','enrollment',NULL,4),(11,'添加报名表','/crm/enrollment/add/(?P<customer_id>\\d+)/','add_enrollment',NULL,4),(12,'编辑报名表','/crm/enrollment/edit/(?P<edit_id>\\d+)/','edit_enrollment',NULL,4),(13,'缴费记录表','/crm/payment_record_list/(?P<customer_id>\\d+)/','payment_record',NULL,NULL),(14,'添加缴费表','/crm/payment/add/(?P<customer_id>\\d+)/','add_payment',NULL,NULL),(15,'编辑缴费表','/crm/payment/edit/(?P<edit_id>\\d+)/','edit_payment',NULL,NULL),(16,'班级列表','/crm/class_list/','class_list',2,NULL),(17,'添加班级','/crm/class/add/','add_class',NULL,16),(18,'编辑班级','/crm/class/edit/(?P<edit_id>\\d+)/','edit_class',NULL,16),(19,'课程列表','/crm/course_list/(?P<class_id>\\d+)/','course_list',NULL,16),(20,'添加课程','/crm/course/add/(?P<class_id>\\d+)/','add_course',NULL,16),(21,'编辑课程','/crm/course/edit/(?P<edit_id>\\d+)/','edit_course',NULL,16),(22,'学习记录表','/crm/study_record_list/(?P<course_id>\\d+)/','study_record_list',NULL,16),(23,'角色列表','/rbac/role/list/','rbac:role_list',3,NULL),(24,'添加角色','/rbac/role/add/','rbac:role_add',NULL,23),(25,'编辑角色','/rbac/role/edit/(\\d+)','rbac:role_edit',NULL,23),(26,'删除角色','/rbac/role/del/(\\d+)','rbac:role_del',NULL,23),(27,'权限信息','/rbac/menu/list/','rbac:menu_list',3,NULL),(28,'添加菜单','/rbac/menu/add/','rbac:menu_add',NULL,27),(29,'编辑菜单','/rbac/menu/edit/(\\d+)','rbac:menu_edit',NULL,27),(30,'删除菜单','/rbac/menu/del/(\\d+)','rbac:menu_del',NULL,27),(31,'添加权限','/rbac/permission/add/','rbac:permission_add',NULL,27),(32,'编辑权限','/rbac/permission/edit/(\\d+)','rbac:permission_edit',NULL,27),(33,'删除权限','/rbac/permission/del/(\\d+)','rbac:permission_del',NULL,27),(34,'批量操作权限','/rbac/multi/permissions/','rbac:multi_permissions',NULL,27),(35,'分配权限','/rbac/distribute/permissions/','rbac:distribute_permissions',3,NULL),(36,'注销','/logout/','logout',NULL,NULL);
/*!40000 ALTER TABLE `rbac_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role`
--

DROP TABLE IF EXISTS `rbac_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role`
--

LOCK TABLES `rbac_role` WRITE;
/*!40000 ALTER TABLE `rbac_role` DISABLE KEYS */;
INSERT INTO `rbac_role` VALUES (1,'BOSS'),(2,'管理员'),(3,'销售'),(4,'班主任'),(5,'财务');
/*!40000 ALTER TABLE `rbac_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role_permissions`
--

DROP TABLE IF EXISTS `rbac_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_role_permissions_role_id_permission_id_d01303da_uniq` (`role_id`,`permission_id`),
  KEY `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` (`permission_id`),
  CONSTRAINT `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` FOREIGN KEY (`permission_id`) REFERENCES `rbac_permission` (`id`),
  CONSTRAINT `rbac_role_permissions_role_id_d10416cb_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role_permissions`
--

LOCK TABLES `rbac_role_permissions` WRITE;
/*!40000 ALTER TABLE `rbac_role_permissions` DISABLE KEYS */;
INSERT INTO `rbac_role_permissions` VALUES (119,2,1),(110,2,2),(118,2,3),(102,2,4),(98,2,5),(120,2,6),(101,2,7),(104,2,8),(93,2,9),(125,2,10),(123,2,11),(112,2,12),(106,2,13),(109,2,14),(105,2,15),(116,2,16),(124,2,17),(97,2,18),(128,2,19),(115,2,20),(127,2,21),(107,2,22),(121,2,23),(117,2,24),(95,2,25),(96,2,26),(111,2,27),(126,2,28),(99,2,29),(94,2,30),(113,2,31),(108,2,32),(122,2,33),(100,2,34),(103,2,35),(114,2,36),(138,3,1),(132,3,2),(139,3,3),(140,3,4),(131,3,5),(141,3,6),(135,3,7),(145,3,8),(129,3,9),(147,3,10),(143,3,11),(134,3,12),(146,3,13),(130,3,14),(144,3,15),(137,3,16),(148,3,19),(142,3,23),(133,3,27),(136,3,36),(151,4,1),(156,4,2),(152,4,3),(150,4,16),(157,4,17),(155,4,18),(161,4,19),(153,4,20),(160,4,21),(149,4,22),(154,4,23),(158,4,27),(159,4,36),(191,5,1),(193,5,2),(194,5,3),(189,5,13),(190,5,14),(196,5,15),(192,5,16),(197,5,23),(188,5,27),(195,5,35),(187,5,36);
/*!40000 ALTER TABLE `rbac_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_user`
--

DROP TABLE IF EXISTS `rbac_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_user`
--

LOCK TABLES `rbac_user` WRITE;
/*!40000 ALTER TABLE `rbac_user` DISABLE KEYS */;
INSERT INTO `rbac_user` VALUES (1,'root',NULL),(2,'hanhan',NULL),(3,'archer',NULL),(4,'sabar',NULL);
/*!40000 ALTER TABLE `rbac_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_user_roles`
--

DROP TABLE IF EXISTS `rbac_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_user_roles_user_id_role_id_60665088_uniq` (`user_id`,`role_id`),
  KEY `rbac_user_roles_role_id_363ee4fe_fk_rbac_role_id` (`role_id`),
  CONSTRAINT `rbac_user_roles_role_id_363ee4fe_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`),
  CONSTRAINT `rbac_user_roles_user_id_01d9ab9e_fk_rbac_user_id` FOREIGN KEY (`user_id`) REFERENCES `rbac_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_user_roles`
--

LOCK TABLES `rbac_user_roles` WRITE;
/*!40000 ALTER TABLE `rbac_user_roles` DISABLE KEYS */;
INSERT INTO `rbac_user_roles` VALUES (4,1,2),(12,2,3),(15,3,4),(19,4,5);
/*!40000 ALTER TABLE `rbac_user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 14:48:23
