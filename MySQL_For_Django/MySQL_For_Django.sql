-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mysqlfordjanog
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user profile',7,'add_userprofile'),(26,'Can change user profile',7,'change_userprofile'),(27,'Can delete user profile',7,'delete_userprofile'),(28,'Can view user profile',7,'view_userprofile'),(29,'Can add user article',8,'add_userarticle'),(30,'Can change user article',8,'change_userarticle'),(31,'Can delete user article',8,'delete_userarticle'),(32,'Can view user article',8,'view_userarticle');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$Of2c12MpMpPh$eXKowCAhExm4yiItgm1FBoSL/KTkHD+2m/DpxiB6QEQ=','2019-10-25 05:22:30.985859',1,'bbb654123','','','QAQ2016712@gmail.com',1,1,'2019-10-23 07:04:05.549357'),(2,'pbkdf2_sha256$150000$Bz3gnkS5zbGq$y752Iow3Rf2B33veemDHDb3QbNfdrOZ7YzZhpqVDUJE=','2019-10-24 11:25:39.667489',0,'02987654123','承濬','鍾','game8577919@gmail.com',0,1,'2019-10-23 07:22:43.839774'),(3,'pbkdf2_sha256$150000$MXyldZzy3l0G$/C69eIL9VCWxYWcg1vrRya4jkYYqaGg0N+a1eXPJD0U=','2019-10-24 02:59:34.228406',0,'zxc123','auto testing','use selenium','',0,1,'2019-10-24 02:59:34.081406'),(4,'pbkdf2_sha256$150000$kJGZOSAXQeCX$rxq95Oln30Lm2A1hToId0QFt3fizMAiTGXYDUhoWMQo=','2019-10-24 11:26:21.285402',0,'B10756054','','','b10756054@mail.npust.edu.tw',0,1,'2019-10-24 11:26:21.126403');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-10-23 10:04:09.838274','1','02987654123',1,'[{\"added\": {}}]',7,1),(2,'2019-10-24 16:43:08.277258','2','zxc123',3,'',8,1),(3,'2019-10-25 05:22:54.116550','1','02987654123',2,'[{\"changed\": {\"fields\": [\"Article_writer\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'main_site','userarticle'),(7,'main_site','userprofile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-10-23 06:58:45.377112'),(2,'auth','0001_initial','2019-10-23 06:58:45.595112'),(3,'admin','0001_initial','2019-10-23 06:58:46.145126'),(4,'admin','0002_logentry_remove_auto_add','2019-10-23 06:58:46.276127'),(5,'admin','0003_logentry_add_action_flag_choices','2019-10-23 06:58:46.285127'),(6,'contenttypes','0002_remove_content_type_name','2019-10-23 06:58:46.421111'),(7,'auth','0002_alter_permission_name_max_length','2019-10-23 06:58:46.495112'),(8,'auth','0003_alter_user_email_max_length','2019-10-23 06:58:46.521127'),(9,'auth','0004_alter_user_username_opts','2019-10-23 06:58:46.530126'),(10,'auth','0005_alter_user_last_login_null','2019-10-23 06:58:46.602113'),(11,'auth','0006_require_contenttypes_0002','2019-10-23 06:58:46.620110'),(12,'auth','0007_alter_validators_add_error_messages','2019-10-23 06:58:46.633111'),(13,'auth','0008_alter_user_username_max_length','2019-10-23 06:58:46.708132'),(14,'auth','0009_alter_user_last_name_max_length','2019-10-23 06:58:46.784117'),(15,'auth','0010_alter_group_name_max_length','2019-10-23 06:58:46.820111'),(16,'auth','0011_update_proxy_permissions','2019-10-23 06:58:46.829113'),(17,'main_site','0001_initial','2019-10-23 06:58:46.871131'),(18,'main_site','0002_auto_20190925_1935','2019-10-23 06:58:47.086111'),(19,'main_site','0003_auto_20190925_2012','2019-10-23 06:58:47.226110'),(20,'main_site','0004_auto_20190925_2013','2019-10-23 06:58:47.376111'),(21,'main_site','0005_auto_20190927_2109','2019-10-23 06:58:47.574109'),(22,'main_site','0006_auto_20190927_2155','2019-10-23 06:58:47.774112'),(23,'main_site','0007_auto_20190927_2233','2019-10-23 06:58:47.861127'),(24,'main_site','0008_auto_20190927_2241','2019-10-23 06:58:47.869126'),(25,'main_site','0009_auto_20190927_2244','2019-10-23 06:58:47.984112'),(26,'main_site','0010_auto_20190927_2315','2019-10-23 06:58:48.074111'),(27,'main_site','0011_auto_20190928_0125','2019-10-23 06:58:48.205113'),(28,'main_site','0012_auto_20190928_0128','2019-10-23 06:58:48.306110'),(29,'main_site','0013_auto_20190928_0130','2019-10-23 06:58:48.385114'),(30,'main_site','0014_auto_20190928_0131','2019-10-23 06:58:48.599113'),(31,'main_site','0015_auto_20190928_0132','2019-10-23 06:58:48.734111'),(32,'main_site','0016_remove_userarticle_user','2019-10-23 06:58:48.813111'),(33,'main_site','0017_userarticle_user','2019-10-23 06:58:48.832112'),(34,'main_site','0018_auto_20190928_0133','2019-10-23 06:58:48.874111'),(35,'main_site','0019_auto_20190928_0135','2019-10-23 06:58:49.024112'),(36,'main_site','0020_auto_20190928_0137','2019-10-23 06:58:49.184110'),(37,'main_site','0021_auto_20190928_0139','2019-10-23 06:58:49.416112'),(38,'main_site','0022_auto_20190928_0159','2019-10-23 06:58:49.622111'),(39,'main_site','0023_userarticle_article_writer','2019-10-23 06:58:49.642112'),(40,'sessions','0001_initial','2019-10-23 06:58:49.676112'),(41,'main_site','0024_auto_20191023_1758','2019-10-23 09:58:58.349732');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('10wwlnn6n7uqcy98hswvixq9o5ziq4cw','NjNhNDU2Y2YwMGE0NDhkNThkMzlhMTk5ZWU3MWFkNzhmMGUwOTdhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzEwNzNlYTI0MGRmNzRlNWU1MDRlYjllZjE5MTdlYmM0YmRmMDc0In0=','2019-11-07 16:42:18.185957'),('78igel8jdg7f9u04mhj6bn1oxlk73ini','MzI0NGFhMWYzZjkzYjlmMTg3ZTk0YmFiOGRhODE0NzAzYjk0OTQ2NTp7Il9wYXNzd29yZF9yZXNldF90b2tlbiI6IjVhdi1iNjFiMTUzN2YzODMyY2QzMWYyNSJ9','2019-11-08 05:22:09.063146'),('aivpvsf70402p6hrkjk7lke6s6m9ehad','OWU5NTdjZmE4NWE3YmY5NGQwNTJiMzRmNWIxZGIxZGZkM2U2OGVjYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYWJhODE3OTgwMTE5ZThkNGExZmUwNjc5YTBjNjBlZGJhYzkxZTQ5In0=','2019-11-06 09:59:30.855840'),('hfo19o8uffqrxc0olt0aia8c3ghcbvgs','OWU5NTdjZmE4NWE3YmY5NGQwNTJiMzRmNWIxZGIxZGZkM2U2OGVjYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYWJhODE3OTgwMTE5ZThkNGExZmUwNjc5YTBjNjBlZGJhYzkxZTQ5In0=','2019-11-06 07:22:43.969798'),('i1pfobuifd63sd2nnv86mfjkxc3jhxqd','NjNhNDU2Y2YwMGE0NDhkNThkMzlhMTk5ZWU3MWFkNzhmMGUwOTdhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzEwNzNlYTI0MGRmNzRlNWU1MDRlYjllZjE5MTdlYmM0YmRmMDc0In0=','2019-11-08 05:22:30.989859'),('lfl9yi64ml4otqmd9bot1fc0yjwtj1ik','NjNhNDU2Y2YwMGE0NDhkNThkMzlhMTk5ZWU3MWFkNzhmMGUwOTdhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzEwNzNlYTI0MGRmNzRlNWU1MDRlYjllZjE5MTdlYmM0YmRmMDc0In0=','2019-11-07 11:26:40.955590'),('to6e19ul65jy7wp5cpjcovfldgt908uy','YzFhZTg2MTc3YWViNTQyNDNlZjA3MTNjMTFkZDE0ZTgzZTFmZTUzMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNWM4MjdlNzJhODRmN2ZhNzc3ZGQyNmFiNTdmYjhiYzQ1ZDc5NjdhIn0=','2019-11-07 02:59:34.248406');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_site_userarticle`
--

DROP TABLE IF EXISTS `main_site_userarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_site_userarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Article_title` varchar(255) DEFAULT NULL,
  `Article` longtext,
  `USER_id` int(11) DEFAULT NULL,
  `Article_writer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `main_site_userarticle_USER_id_f4ce2be3` (`USER_id`),
  CONSTRAINT `main_site_userarticle_USER_id_f4ce2be3_fk_auth_user_id` FOREIGN KEY (`USER_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_site_userarticle`
--

LOCK TABLES `main_site_userarticle` WRITE;
/*!40000 ALTER TABLE `main_site_userarticle` DISABLE KEYS */;
INSERT INTO `main_site_userarticle` VALUES (1,'Change database','I think it works',2,'MySQL');
/*!40000 ALTER TABLE `main_site_userarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_site_userprofile`
--

DROP TABLE IF EXISTS `main_site_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_site_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hobbies` varchar(255) DEFAULT NULL,
  `selfIntroduction` longtext,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USER_id` (`USER_id`),
  CONSTRAINT `main_site_userprofile_USER_id_cf629894_fk_auth_user_id` FOREIGN KEY (`USER_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_site_userprofile`
--

LOCK TABLES `main_site_userprofile` WRITE;
/*!40000 ALTER TABLE `main_site_userprofile` DISABLE KEYS */;
INSERT INTO `main_site_userprofile` VALUES (1,'qwewqe','fdsbgfdsjhytjky75y',2),(2,'氣氣氣氣氣','氣氣氣氣氣',3),(3,'','',4);
/*!40000 ALTER TABLE `main_site_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-27  0:42:35
