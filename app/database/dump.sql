CREATE DATABASE  IF NOT EXISTS `forret_codeception_testing` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `forret_codeception_testing`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: forret_development
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `messages` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci,
  `user_id` int(10) unsigned DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currentMember` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Users','{\"user\":1}',NULL,'2014-06-17 20:22:04','2014-06-17 20:22:04'),(2,'Admins','{\"user\":1,\"admin\":1}',NULL,'2014-06-17 20:22:04','2014-06-17 20:22:04');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php_sapi_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2012_12_06_225921_create_users_table',1),('2012_12_06_225929_create_groups_table',1),('2012_12_06_225945_create_groups_users_table',1),('2012_12_06_225988_create_throttle_table',1),('2014_04_07_214414_create_log_table',1),('2014_04_26_122314_create_Actions_table',1),('2014_04_28_152153_create_sessions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'user@forret.com','Alayna','Mante',NULL,'$2y$10$3Q43Ppli8kIdDFAm1zcmKe9QVioF4sPupqiVnVtIRVDBqXcH1DwGC',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,'2014-06-17 20:22:04',NULL,NULL,NULL,NULL,'2014-06-17 20:22:04','2014-06-17 20:22:04'),(2,NULL,'admin@forret.com','Emmett','Leffler',NULL,'$2y$10$41xBCIkB7hOkHNv3BZP/Q.kIjDUrVYlNcQAQDrkoajH/m/ozuVmG2',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,'2014-06-17 20:22:04',NULL,NULL,NULL,NULL,'2014-06-17 20:22:04','2014-06-17 20:22:04'),(3,NULL,'nickolas98@hotmail.com','Jarvis','Bosco',NULL,'$2y$10$gF8rcrUTvqKNDaY0bqI/Quov07XnFuVgqaF3YkDAviqNMGXRrNRoG','497-894-6523x669','5910 Reid Meadow Suite 968',NULL,'Leathatown','CO','51640-3494',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:04','2014-06-17 20:22:04'),(4,NULL,'albert.beer@yahoo.com','Dawn','Koelpin',NULL,'$2y$10$SWfUU42eeFuj/cXZubGva.8HJadcfnOjSa4fN57bCFlHe0J7UzIfi','790.836.1756','4724 Dickens Estate Apt. 605',NULL,'West Lia','CO','47013',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:04','2014-06-17 20:22:04'),(5,NULL,'west.neva@johns.com','Glenna','Bosco',NULL,'$2y$10$.ESzF6QzCtin6FajuQUPJ.5H7M.IOheYvM.d3AVswTyDEzkapBdo.','(666)638-4171x36253','198 Morton Lock Apt. 762',NULL,'Lake Nikolasshire','CO','80136',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:04','2014-06-17 20:22:04'),(6,NULL,'gia71@hotmail.com','Maynard','Bernhard',NULL,'$2y$10$iN3NgK51lgd7V8JIDjdWAejKut3XLxLG2sLiZNKVI8EzqQ.lL.Fjy','1-141-871-4379','263 Orland Station',NULL,'Domenickshire','CO','06378-4615',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:05','2014-06-17 20:22:05'),(7,NULL,'boyd.doyle@reichert.info','Domenico','Gulgowski',NULL,'$2y$10$u63MIhO6VGxv5uPmKDlrjOdOp5SVRedLh1n/VdnaW1ALm4GpdKqiy','200.808.6142','7121 Nickolas Trail',NULL,'East Deshaun','CO','42081-5841',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:05','2014-06-17 20:22:05'),(8,NULL,'marques.douglas@carter.com','Valentin','Hettinger',NULL,'$2y$10$FNzzU65wtpf/7.55yLTzEe.uOQQ./7OaCQ8exwMOKwMwWE8joR0je','1-335-144-0395','4023 Clay Knoll Suite 616',NULL,'South Paris','CO','36730-5799',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:05','2014-06-17 20:22:05'),(9,NULL,'philip34@botsfordbednar.info','Sherwood','Kub',NULL,'$2y$10$5qxUQ6MbsfFVK60DnA2leelM8.kIZhudTLehA.ZQVrCZCK3Nf0knC','1-549-882-7933x4841','72381 Chad Knolls',NULL,'Brayanhaven','CO','55980-1230',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:06','2014-06-17 20:22:06'),(10,NULL,'karine77@hudsonwolff.com','Citlalli','Stehr',NULL,'$2y$10$PtZlopLdRqHRelCuivgfxegHuYwV5uKpzXuXVihBQfGHeHscXgyjy','+21(3)3775073084','5704 Douglas Freeway Suite 184',NULL,'Andyport','CO','59520-7956',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:06','2014-06-17 20:22:06'),(11,NULL,'imoore@hotmail.com','Karelle','Medhurst',NULL,'$2y$10$9yDs9AoLQ0Z4q3G9Z0IiMeK0JfKMxmiUdNuJXqzu.dgBmetux9u3m','586-044-1929x86222','943 Mohammed Harbors',NULL,'West Porter','CO','05042',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:06','2014-06-17 20:22:06'),(12,NULL,'raul34@jenkins.com','Manley','Osinski',NULL,'$2y$10$K0eG6EppWoaavK4AC6Ew2ev7s9kavvTwVylNddQNm56RGsigT0z0u','653.015.4482','641 Kyla Spring Apt. 399',NULL,'Schusterland','CO','51110-0263',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-17 20:22:06','2014-06-17 20:22:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1),(2,1),(2,2),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-17 14:25:41
