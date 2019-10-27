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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23 18:27:47
