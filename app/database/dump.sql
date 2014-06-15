CREATE DATABASE  IF NOT EXISTS `solum_codeception_testing` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `solum_codeception_testing`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: solum_codeception_testing
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
INSERT INTO `groups` VALUES (1,'Users','{\"user\":1}',NULL,'2014-06-15 16:24:38','2014-06-15 16:24:38'),(2,'Admins','{\"user\":1,\"admin\":1}',NULL,'2014-06-15 16:24:38','2014-06-15 16:24:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'user@solum.com','Yessenia','Erdman',NULL,'$2y$10$TAr2vDo3Ekw5d0WxONrX6eRoxDnQdcAapV1Hxj/GWFsd6.gNebUUi','1-046-273-8382x1026','2021 Kreiger Trail Apt. 839',NULL,'Jacobsonshire','CO','36465-4928',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:38','2014-06-15 16:24:38'),(2,NULL,'admin@solum.com','Angelina','Schowalter',NULL,'$2y$10$fghX4FjR4cItxUgqm1a1P.q7oB4l3Rs0CHTh/2ihj.q//OOClpT3G','1-538-310-7310x52883','3942 Jakubowski Vista',NULL,'Runolfssonchester','CO','82665',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:38','2014-06-15 16:24:38'),(3,NULL,'omari24@yahoo.com','Ruthe','Robel',NULL,'$2y$10$Y4r8fUmEwuVIpaeK7dsp0ulKQpogHGwTz6HyUHAsAt/33USZ38B8K','1-758-879-9943x9976','63770 Arielle Prairie Apt. 044',NULL,'New Sanfordberg','CO','45893',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:38','2014-06-15 16:24:38'),(4,NULL,'chaag@gmail.com','Audrey','Purdy',NULL,'$2y$10$K5PPBvzmwlcVOpQoyZtsfe3ykZMjXR5IS1AJejx1/h5hX7prsnfxu','1-980-745-7022x4538','08279 Abshire Shores',NULL,'Herzogtown','CO','29683',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:38','2014-06-15 16:24:38'),(5,NULL,'rice.phoebe@hyatt.info','Mitchell','Donnelly',NULL,'$2y$10$V1/gz8C.EbsoaYNBMAyiQ.mFCP.mGKB9rrlLgbw.SHjD0HIn/VcaS','(029)549-0159x79363','2827 Charles Passage Apt. 622',NULL,'Angelicaside','CO','53178-5632',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:38','2014-06-15 16:24:38'),(6,NULL,'ansel59@hotmail.com','London','Hilpert',NULL,'$2y$10$0WtCvfn5hMwiIVJAc3WNxumuItvVjwrxo.WQToJxpxNYkUizr9el2','1-114-793-2014','55124 Sipes Course Apt. 130',NULL,'Krajcikstad','CO','83197-9888',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(7,NULL,'laurie06@gmail.com','Alek','Mohr',NULL,'$2y$10$KRfSlLMzcDbVg2OAFLlBfuaswvCKg8P6RUAu/uPMuYJDxvIJcETCa','1-022-424-3354x04701','9498 Gwendolyn Keys Suite 733',NULL,'Hilpertchester','CO','67800',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(8,NULL,'lazaro.o\'reilly@gmail.com','Susanna','Little',NULL,'$2y$10$c6vS8G5MzNXdC/L0axtY0Oh9zkQoTABkVLBpNjEofVuoWsOIFCkx6','1-606-546-1300','547 Nader Union Suite 529',NULL,'South Friedaview','CO','86158',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(9,NULL,'jmohr@gmail.com','Chelsie','Stark',NULL,'$2y$10$VUkv.2ldA1ArTAZ2aT4ihOR2YcRSoZCu7Pp10IIyyZBNeeUqm8b.2','+74(8)5275466161','678 Christiansen Circles',NULL,'Zacheryside','CO','78777-5302',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(10,NULL,'jaclyn.kohler@yahoo.com','Brenna','Collier',NULL,'$2y$10$PqranCb.6rTxzE072x5jiOg0Pv3VKhD1h8UG9CF8WYTiS3s8SnQMW','(707)729-1284x85062','75008 Ullrich Isle',NULL,'Lake Aliberg','CO','17279-5985',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(11,NULL,'marty56@yahoo.com','Leanne','Witting',NULL,'$2y$10$J3XBg59nCgO6QQXTDMq9A.YhNkMH/nrnDptmRVOI2h7EJdobC7Cdu','(999)273-2007','53178 Jayden Walks Apt. 180',NULL,'Port Creolaside','CO','17108',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(12,NULL,'gherzog@reichert.com','Ernesto','Larkin',NULL,'$2y$10$rY/cZCQeUdNqo/Xznxt30exd4F78Cfi5ebP4ei4AoeOwt4rytqW4O','608-530-3866x082','502 Metz Meadow',NULL,'Lake Charlie','CO','36528-4228',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(13,NULL,'linnie.mclaughlin@hotmail.com','Giles','Flatley',NULL,'$2y$10$4Ixqgf06wG683zYOVCE/oOzDj./4JOTqeYkYWyQ/3iUWsA8TaGLjG','(523)145-4910x800','250 Carli Green Suite 324',NULL,'Zboncakhaven','CO','50827',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:39','2014-06-15 16:24:39'),(14,NULL,'francisco.hermiston@hahn.info','Clementine','Kiehn',NULL,'$2y$10$./Y5osC0mHSqZ7b8Bt/ehexIH2/w1IQZmbRGo.UeWoEInBufSzZte','(567)015-6853','0313 Toy Villages Suite 763',NULL,'Andersonland','CO','55361',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(15,NULL,'jhomenick@yahoo.com','Lillie','Altenwerth',NULL,'$2y$10$PIYMMF9li.6HcceokchgoOHt/27zIE12F4jNmgzGf/otQzgHvJ4ei','1-394-883-8490','98537 Kautzer Roads',NULL,'Lake Elta','CO','77691',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(16,NULL,'wilkinson.justina@hotmail.com','Lisandro','Hammes',NULL,'$2y$10$DAk4Oc4Y7OPimZ2zdH364u6Q6tEZjepn2XDKKAjwfOjbIBWUnarva','(357)508-0072x1756','44662 Adams Hollow',NULL,'New Pansy','CO','44551-4489',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(17,NULL,'nkuvalis@yahoo.com','Titus','Morissette',NULL,'$2y$10$d6vSXB6OTH03les3R8bT7uqZ0BIroF/nc3bmrmeW94G/.jRlvZ8Qm','1-348-914-3953x65236','48032 Gusikowski Green Apt. 393',NULL,'South Hermina','CO','04395-0695',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(18,NULL,'howe.reinhold@hoppe.com','Kelly','Thompson',NULL,'$2y$10$djYVC3YM4fAVpsaP6F3V8euy7TMG7/6kgw6NTEwNSLGVFAZIqo7Xq','+66(6)1315888816','1790 Emmerich Cape Suite 483',NULL,'Lake Rebekashire','CO','96465',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(19,NULL,'to\'reilly@yahoo.com','Luther','Bayer',NULL,'$2y$10$5DMXsUNxm1keE7rZWJ2rrun9tdayTPB.Qhg.u7n18OtNvXZqyL1oW','1-028-039-4908x5558','278 Damian Trail',NULL,'Lake Elwin','CO','91669-2515',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(20,NULL,'gregg.littel@rempelcollins.org','Damian','Waters',NULL,'$2y$10$6ljCa.60y4YX7GTFr6bpOuGOp32PrHE/uCX6VgUz956pGTJ6DhvCi','1-448-212-9763','75882 Fidel Ford Apt. 887',NULL,'East Dayna','CO','27419',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(21,NULL,'dgulgowski@marvin.com','Sunny','Cole',NULL,'$2y$10$G3JiGL5WssYocGcdo/yume8yle67lKg5YZG3OtejwkG1dtI3FTV/u','410.271.9535','102 Consuelo Circle',NULL,'Eugeneside','CO','05741-5691',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:40','2014-06-15 16:24:40'),(22,NULL,'casper.stephany@schmelertorphy.com','Kailyn','Runolfsdottir',NULL,'$2y$10$8jBeOwAPm0.gd045shefke51aENaWalLVovdZvjj4MzqNe46TR6Qm','212.284.8197x00247','332 Legros Neck',NULL,'Port Martinamouth','CO','32066',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:41','2014-06-15 16:24:41'),(23,NULL,'ybode@gmail.com','Rae','Boyer',NULL,'$2y$10$cHxmDM7bWhCKHI/1G/tBQes0csP18E/Yhrf/v78mpQPQrs3d8xzVC','1-617-004-9884x757','852 Gayle Pines',NULL,'Roslyntown','CO','47644',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:41','2014-06-15 16:24:41'),(24,NULL,'alanis33@mooreschimmel.info','Karl','Mann',NULL,'$2y$10$mQOEhrVU0t77OKhXTqG4c.rRnYB5rvcEzzY83LPI/sLPjy/5LIJN2','553.492.8566','26274 Bednar Valleys Apt. 004',NULL,'Lake Emerald','CO','70538',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:41','2014-06-15 16:24:41'),(25,NULL,'emelie.heathcote@gmail.com','Sadie','Beier',NULL,'$2y$10$zmPfuYvPPnyhcNilCKfzWu0DZHLBiYpJkXZrqiMOwL6VOHMZGZv1q','090.787.6729x71312','37804 Feil Spring Suite 762',NULL,'Kianaberg','CO','69501-9559',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:41','2014-06-15 16:24:41'),(26,NULL,'fisher.shea@hotmail.com','Alvina','Rosenbaum',NULL,'$2y$10$FXBNtR3sA8aB.VM5xm7Nl.S5kimFeNEOFW6sPngPIP6j6CoXbNA4y','06462164136','05415 Donnell Junction',NULL,'Jakubowskiton','CO','22510-4082',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:41','2014-06-15 16:24:41'),(27,NULL,'nash.ernser@gmail.com','Troy','Huels',NULL,'$2y$10$JIbAsmhPz5dW5rmQ1dP8vOO/K4RqlzNjJLfcpaNunF/L9XqF5jU7K','504.394.3708','80339 Green Cliff Apt. 801',NULL,'Lake Caroline','CO','15964-9565',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:42','2014-06-15 16:24:42'),(28,NULL,'jan15@grady.info','Jalen','Botsford',NULL,'$2y$10$rga0X/B8M7DE8WGoI7Xx6O7.ao5P/ESPuB5dK9Jcv3JxorBDWUO9W','025-124-8131','495 Robel Valley',NULL,'West Ivaborough','CO','69054',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:42','2014-06-15 16:24:42'),(29,NULL,'rolando57@towneswift.com','Alisha','Quitzon',NULL,'$2y$10$WZ09FcvYA1fhT1GksAtQ2OrPiro845lgaMrJf7x5Pxh0bbMiWYrn2','(163)230-9592','18326 Elliot Islands',NULL,'West Wileyburgh','CO','78390-5879',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:42','2014-06-15 16:24:42'),(30,NULL,'gpagac@gmail.com','Melyssa','Wyman',NULL,'$2y$10$u5uqWQ/eTABYaCAfKp4gm.78OkHx7tPupAlLLIKYJuFEE4itqL/Iu','(629)388-9164','022 Lucious Junction Apt. 064',NULL,'New Zackaryberg','CO','01312-8845',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:42','2014-06-15 16:24:42'),(31,NULL,'mafalda70@daniel.net','Nico','Howe',NULL,'$2y$10$97hNGpDN02Sl1uy5TFC.YeQRgO.p6QbKhnfJk3Zo6dC8VstK4VdYa','336.693.7498','69068 Bernhard Avenue',NULL,'Port Bria','CO','73776-5243',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:42','2014-06-15 16:24:42'),(32,NULL,'irwin.boyer@weber.com','Caitlyn','Orn',NULL,'$2y$10$WNAQzh0AnNpw1nSpWZCEL.hKfuAbTCXMRbX40NM29PakGbek3/l0.','(736)411-8540x71669','6839 Janie Junctions Apt. 115',NULL,'North Dorthy','CO','16090',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:42','2014-06-15 16:24:42'),(33,NULL,'maya48@yahoo.com','Sheridan','Hamill',NULL,'$2y$10$fbADjz3ClvJSw056Xq1DrudDqYQ5rdJhyt98152JIm3NF8npe4dyK','924-550-1645','9329 Verna Stream Apt. 607',NULL,'Norbertoside','CO','19979',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:42','2014-06-15 16:24:42'),(34,NULL,'benjamin.smitham@yahoo.com','Bernadine','Leuschke',NULL,'$2y$10$zmf77LJXLUtdVj1UwjBL4e4Zr8LHK8ihCFPOBTttXHOcsAkDFBMr2','1-350-721-6866x06770','117 Rylee Canyon Apt. 184',NULL,'New Ottisport','CO','80609-5134',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:43','2014-06-15 16:24:43'),(35,NULL,'francisca92@hotmail.com','Coralie','Wolff',NULL,'$2y$10$olGOh.NZwisZAQDzhqjUCOJVlMKymQB5fyc.sTPUhexbMUxwm4itm','1-437-943-3488x1594','620 Mayer Stream',NULL,'Port Silasfort','CO','04920-1525',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:43','2014-06-15 16:24:43'),(36,NULL,'cydney89@kutchhalvorson.com','Esther','Mills',NULL,'$2y$10$Gg0ViMsMXP6O9bNauzoeoe8zMBxIU.aUq1u3/ol/BpmKeO9dsk8Ri','(486)043-6976','627 Layne Route Apt. 684',NULL,'New Lilianstad','CO','50370',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:43','2014-06-15 16:24:43'),(37,NULL,'edison84@hotmail.com','Lloyd','Kling',NULL,'$2y$10$jrXFdQ9ZIBm77Bp0cepsSeAHKUMT/UjVeGmFY./kIlpMNEht98CnG','06924449250','761 Patience Viaduct Apt. 090',NULL,'Port Adelia','CO','53715',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:43','2014-06-15 16:24:43'),(38,NULL,'bschumm@yahoo.com','Cathy','Hirthe',NULL,'$2y$10$Gi6KzGbe05gG4olrDB6KzuivjR5ZAS0hiwz9QN4.Bxs0UcEzqJPwG','071-845-4071x769','990 Hortense Spur Suite 355',NULL,'New Marjolaine','CO','88601-7943',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:43','2014-06-15 16:24:43'),(39,NULL,'telly56@emmerich.info','Katrine','Towne',NULL,'$2y$10$Ypbqd0rcR4QXhYZBuCajOutKjy.dCh2g.pUoAgVYnG4gyuKbIUH0C','393.043.5903x172','84236 Oma Lights Suite 487',NULL,'Nicolasberg','CO','96387',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:44','2014-06-15 16:24:44'),(40,NULL,'von.rowena@gmail.com','Leopold','Gibson',NULL,'$2y$10$bCkalITQgogCOXW290bDzu8UdW593LeMQ1qCGkGeUSUvYDko6YZ.C','(624)337-3157x999','975 Frami Vista',NULL,'South Inesburgh','CO','56492-5942',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:44','2014-06-15 16:24:44'),(41,NULL,'tatum.upton@hotmail.com','Theodore','Turcotte',NULL,'$2y$10$cMDNLEX9IrkgRGXd71o0V.lCBC429kPochoQEqYCDLzVZ7aVIaZM.','(775)074-3732','85041 Noemi Freeway',NULL,'West Zora','CO','42092-8588',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:44','2014-06-15 16:24:44'),(42,NULL,'katelin.nitzsche@yahoo.com','Electa','Crooks',NULL,'$2y$10$q3Qimyn3JtvYECqnpyNFMeJ0labPWdix5D8.ue1WCZsmUOxZcNnJa','625-168-5828','8787 Hane Falls Suite 429',NULL,'Lake Kitty','CO','27962',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:44','2014-06-15 16:24:44'),(43,NULL,'icollins@torphy.net','Diego','Bailey',NULL,'$2y$10$Hu3FI0DpHHBduZ6/3WrBguZOF4CfU.HBH/l7aPXUQ.oBFMY5.Ggs6','(252)007-8972x7173','1174 Alfonzo Throughway Apt. 560',NULL,'East Cieloshire','CO','32307-0862',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:44','2014-06-15 16:24:44'),(44,NULL,'jboehm@gmail.com','Carlos','Lynch',NULL,'$2y$10$0V3PZXi55b39yjmUGkJvnuOUcT0XxD/x5mlJ/lfVDtkaaA8A4po3S','158.490.4535','635 Tiara Plain Apt. 415',NULL,'East Chauncey','CO','39919',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:44','2014-06-15 16:24:44'),(45,NULL,'swaniawski.kaleigh@pfannerstill.com','Linwood','Keeling',NULL,'$2y$10$Os.UfyBZUx0/Xj4RYMUyHeBKYmBJJyUbZDoBX2vOOIeiJv44zFVcW','(065)948-1456x21272','2217 Cassin Garden Suite 251',NULL,'Abbottville','CO','87625',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:45','2014-06-15 16:24:45'),(46,NULL,'sbeatty@yahoo.com','Dolores','Welch',NULL,'$2y$10$3x.W3TX83I1d34v8JI.D1OZPnaFJ54GNLfKU.xengFoP4pgJBb2iq','332.099.2350x28759','4763 Jordan Shore',NULL,'Howellmouth','CO','94842',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:45','2014-06-15 16:24:45'),(47,NULL,'hand.lois@cole.com','Era','Mills',NULL,'$2y$10$rTzhgfLrxZjbybzxB754tuHHXBofg.PuRVOQx9neeDzpVJgRd.Iey','1-160-566-4724','3175 Forest Centers Suite 549',NULL,'Walshborough','CO','39084-9653',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:45','2014-06-15 16:24:45'),(48,NULL,'lvandervort@yahoo.com','Durward','Marquardt',NULL,'$2y$10$C2LICB7.FovizELvv0QQ4uzW3SHVbncxlfOTs0MVxdYXVgRpzWyzG','1-040-935-4527','869 Leannon Route Suite 817',NULL,'Lake Marielleville','CO','00018',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:45','2014-06-15 16:24:45'),(49,NULL,'teresa14@gmail.com','Heaven','Schulist',NULL,'$2y$10$mp9dHW2h6ye.x4KJD7dX..Px9PXmcSLXBGc.totrIkF4yBGp9RtIu','715-430-4263','65521 Brown Manor Apt. 105',NULL,'Port Diamondport','CO','94795-7191',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:45','2014-06-15 16:24:45'),(50,NULL,'klakin@yahoo.com','Hope','Kunde',NULL,'$2y$10$jUflQs7RFMYPsVXunbjAVOcdiheNExerfbl/2H/t1Oei52nFmkaZ2','405.378.7982x895','383 Jast Street Suite 828',NULL,'New Kelsitown','CO','68619-5289',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:46','2014-06-15 16:24:46'),(51,NULL,'trenton87@yahoo.com','Matteo','Kautzer',NULL,'$2y$10$gDqyO7Q62MBPzQeDycZ38uiuDcARafYuZeVxRZs7phxF6FJaKM3Se','(031)807-4992','5263 Padberg Mountains Suite 796',NULL,'East Lucile','CO','42779-7383',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:46','2014-06-15 16:24:46'),(52,NULL,'jackson43@predovicruecker.com','Archibald','Hilpert',NULL,'$2y$10$sq3H5xDNSDq0/05ly33G4.2iDQQ.knwPT39oIhVFppoXfRocG85nq','06540183594','545 Bernadette Parks',NULL,'Hymanborough','CO','14618',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:46','2014-06-15 16:24:46'),(53,NULL,'laurine56@schneider.com','Morris','Wilderman',NULL,'$2y$10$w2C38/EHUiVFJaivINcyIu06czbeBlTjpOjIguYjv7wi/RtDZYRfu','+35(5)0825897930','05787 Naomie Pine Suite 385',NULL,'West Landenfort','CO','48766-9279',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:46','2014-06-15 16:24:46'),(54,NULL,'bennie.considine@hotmail.com','Jordi','Crooks',NULL,'$2y$10$Iw47TvytwI14Hj98rPma1efabmIXAnCNE8g15Fw16gBlebCsdz036','+57(8)4349925559','69872 Zboncak Freeway',NULL,'Shanahanbury','CO','13274-6044',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:46','2014-06-15 16:24:46'),(55,NULL,'freddie81@hotmail.com','Ally','Schiller',NULL,'$2y$10$8HFgHLyuwX3qIylV7a0XDOfgGN77EQ4kvA9NogLWb5.P2jMdyWEbC','531-768-3892','71054 Gregorio Mountains',NULL,'Port Rudyburgh','CO','12927-4260',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:46','2014-06-15 16:24:46'),(56,NULL,'goodwin.kamron@block.com','Tess','Gorczany',NULL,'$2y$10$fh1DiaNa7O/fWMbr03kP.uzAEu3ILZoNKICAM1ih9SqGfY9TIluYK','120-748-4016x4366','7342 Herman Hill',NULL,'South Kirstinberg','CO','22074-6741',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(57,NULL,'obuckridge@orn.biz','Cyril','Trantow',NULL,'$2y$10$NMh0u35HoSjKxQ2WxzeCVe4pdTgLNQoUTbSBj7POmCthYqJZuVqQ6','839.691.8905','065 Sarai Valley',NULL,'West Marlonfort','CO','78428-0028',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(58,NULL,'leannon.eileen@heathcote.info','Osvaldo','Bashirian',NULL,'$2y$10$u129031QPQxgjq2x.9oLjeCm04G5HyzTbJooVdJyYWSwWSeQK0aF6','1-398-324-9416x710','2930 Farrell Wall',NULL,'Maiyaburgh','CO','88605',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(59,NULL,'hodkiewicz.kenny@yahoo.com','Molly','Weimann',NULL,'$2y$10$9QeYPR3WBDvf7Wc/H6Dzru4qG4wK/FYo8CYQabRGryCDmmcIH1d3.','(262)028-4886x085','940 Aleen Stream',NULL,'East Howardport','CO','44150-8468',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(60,NULL,'katherine.larkin@gmail.com','May','O\'Reilly',NULL,'$2y$10$oLANjAlPBs2LHO0kN1r9Pu3G0W91MSR15xnd5i73/Ct7kiH6KjnSG','1-600-295-1645x3758','9551 Littel Roads Suite 578',NULL,'Mannstad','CO','25716-0226',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(61,NULL,'cronin.ova@gmail.com','Caden','Ruecker',NULL,'$2y$10$y8Oq1QOJReoEWO.I7q1NSO9tmYb3LUnrAeghXzj3JZIv.vdVqwl92','639.125.4918x4427','234 Hauck Row Suite 821',NULL,'Chynaberg','CO','85683',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(62,NULL,'peyton28@jacobson.com','Filiberto','O\'Hara',NULL,'$2y$10$nsgFCmGaW5ZCDLUZw/cQhu6KKrBJVYjI7dYIQynqU0jwUb.AFG2gO','664-047-2869x369','6986 Gino Port',NULL,'North Edd','CO','66928-6835',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(63,NULL,'lelah35@rosenbaummiller.net','Jada','Predovic',NULL,'$2y$10$LQdynBN08bSUw.gJObB1DO/mHHAXY07Lo919WH1hWxkgBdDJPsFym','1-338-186-9456','5344 Toy Drive Apt. 412',NULL,'Amaraside','CO','96934-1831',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:47','2014-06-15 16:24:47'),(64,NULL,'oran.okuneva@hammes.info','Gaylord','Kris',NULL,'$2y$10$7d/21h0gKfGSNa9w/mcezuwARijptrcHJEdGKytP07406RzRjFAWa','594.834.0253','78750 Carlo Summit',NULL,'Websterchester','CO','56143',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:48','2014-06-15 16:24:48'),(65,NULL,'stephon12@heller.biz','Aric','Maggio',NULL,'$2y$10$r0F4eeMv7/2NPuTAHbgE0eujjEzD0rekPTavXj/sJJ9cHgVVDDnLm','(007)502-4783x1809','21362 Brown Greens Suite 355',NULL,'Camronport','CO','14312',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:48','2014-06-15 16:24:48'),(66,NULL,'phammes@hessel.org','Skylar','Auer',NULL,'$2y$10$LE.gFTKdXghA9PpGnfv8V.seaUfTkGiIili.sER1Rp2FR5QhTf4ue','(933)841-6982','66640 Toby Prairie Apt. 525',NULL,'Irvingmouth','CO','10313-6653',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:48','2014-06-15 16:24:48'),(67,NULL,'zechariah.williamson@hotmail.com','Aniyah','Beier',NULL,'$2y$10$JkDVp/a3rllLRKx7DdQWkOmdW7LQIeAcHsqF0pQpl4ZLL/C3cwsgS','354.578.6297x23619','858 Lelah Plains Apt. 051',NULL,'Hagenesport','CO','52091-4520',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:48','2014-06-15 16:24:48'),(68,NULL,'eda.parker@corwin.com','Ada','Thiel',NULL,'$2y$10$01674m0NZ98JIgaJjj2r.OrFaGqeDABcqa0eKmUoBUsy7pOtWGqtK','674.388.7561x35634','810 Connelly Flat Suite 367',NULL,'Rolfsonside','CO','52198-8195',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:48','2014-06-15 16:24:48'),(69,NULL,'sheldon97@gmail.com','Raheem','Barton',NULL,'$2y$10$.EQgnuHTucGOuosf061Mq./cjmkzkkHUS5EXDLVIk9tERfNX8PJH2','136.613.4647','300 Dannie Spurs',NULL,'Hermannshire','CO','72331-8517',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(70,NULL,'qokuneva@wuckert.info','Granville','Denesik',NULL,'$2y$10$nnsV1ALwv37uzLB1Kq0w/Oe4J0o8f4Wrl9BTyq/XvkmHnqPPnQ/uC','939-083-6558x566','2826 Merlin Ports Suite 629',NULL,'Framiland','CO','75009',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(71,NULL,'dillon88@mitchellschneider.biz','Mitchel','Rohan',NULL,'$2y$10$HVNvl/NauXJ409XN2swNqeFvMfTKPVBsnOfJXbiRI5ybcSAb/CGqC','1-896-431-6794x541','2594 Ankunding Heights Suite 866',NULL,'Predovicville','CO','10582-0580',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(72,NULL,'mwilliamson@graham.com','Mohamed','Homenick',NULL,'$2y$10$mM1MEtJ4AJjZyO4UeNfM.ezZ//Au937C1/9dbpSl874bzcY1aVjFK','250.342.6249x99115','015 Lenna Inlet Apt. 413',NULL,'New Jordonport','CO','43301-7104',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(73,NULL,'avis31@hudson.com','Lexus','Emmerich',NULL,'$2y$10$jk1d7eY58CYX/wQq.lXwfOr7/sGGaitYNsaF4MKUT5P9tsenzSFLC','+06(1)0788512221','656 Schroeder Mission',NULL,'Port Justus','CO','78682',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(74,NULL,'bernadette.o\'conner@gmail.com','Alexander','Wyman',NULL,'$2y$10$TolFU2j34jhAX5Z7Ovt8puEfrlteELFWcRtjBIp9VqEmRxvWQj5Gq','(502)844-5689','33135 Fae Cliffs Suite 735',NULL,'Lake Estella','CO','97154',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(75,NULL,'ohowe@bergnaum.info','Rosamond','Robel',NULL,'$2y$10$jX5YkkI4M1mX/R/057fpF.n9on/SCNoqi0KfFIBTFYkMRfB/t13ZS','05436896833','02185 Goldner Landing Apt. 447',NULL,'Taureanville','CO','29571',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(76,NULL,'lturner@hyattgaylord.org','Devin','Shanahan',NULL,'$2y$10$v4KMtCSRT5lMGm9WUndKTemxRQJ1zfJTtqL7dQqLEmEZ1zrDydd/W','(570)559-9987','8740 Turner Court Suite 086',NULL,'Hoppestad','CO','41972-8650',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:49','2014-06-15 16:24:49'),(77,NULL,'schuppe.rodolfo@herzog.net','Braxton','Keebler',NULL,'$2y$10$ObjtKsBgYLoE2vfYBqxqQOa35phFeHU2NxC5KHRQGGGODi6MLV9ja','587.952.2708x0158','84685 Hilll Street',NULL,'North Amya','CO','30424-9791',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:50','2014-06-15 16:24:50'),(78,NULL,'funk.alisa@mills.biz','Ward','Bosco',NULL,'$2y$10$jY8rsTAUWW.yels72o2PyunnAOTCUkyCN1ER0JTqa3jFocxBRQ8hy','517.601.6569','1172 Kathryn Lodge Apt. 565',NULL,'West Ikemouth','CO','37230-8777',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:51','2014-06-15 16:24:51'),(79,NULL,'jaclyn.swift@hotmail.com','Johan','Mraz',NULL,'$2y$10$CltaKgKpr6FAe6xvL.w//eMYoSLB0vj8F5on15p2ljJqmecy.nWau','280-661-3227','128 Barrows Path Apt. 240',NULL,'Port Glennafurt','CO','73850',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:51','2014-06-15 16:24:51'),(80,NULL,'toby.mraz@yahoo.com','Jakob','Kulas',NULL,'$2y$10$FEz4EpQ.6HJJeBzf7ugCU.hE9ooF17vleGdsR757jq21V5JkOIyGq','(523)990-7556','155 Valentine Greens Apt. 338',NULL,'Port Darron','CO','32715-5099',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:51','2014-06-15 16:24:51'),(81,NULL,'alf.emard@rippincorwin.org','Kirsten','Connelly',NULL,'$2y$10$QnkNbR4ULRPBZ97B0640aOKKuoOtffjkVXfjeFQDpttqyT1QMbZlS','(343)407-0538','616 O\'Conner Junctions Apt. 685',NULL,'Samarachester','CO','48630',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:51','2014-06-15 16:24:51'),(82,NULL,'carmine.harber@blanda.net','Katelyn','Treutel',NULL,'$2y$10$FP3QLtGPu97oh3vHHu9D1uZHiXtace6FL.qB4j4Gb3MCahP2UeKTm','239.416.8889x144','76821 Windler Spur',NULL,'Baileymouth','CO','81689',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:51','2014-06-15 16:24:51'),(83,NULL,'hodkiewicz.flavio@lakin.com','Lionel','Champlin',NULL,'$2y$10$vso2eGoP/wCYrAB1lCdYE.1RZvgoAjXuM8dxBKn2SjA3rJ.HWKLqK','+30(6)3425536255','76116 Johns Track',NULL,'Harberside','CO','31278',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:51','2014-06-15 16:24:51'),(84,NULL,'amayer@okon.com','Fred','McDermott',NULL,'$2y$10$1QCkj6s7NUHZNZ7H7qErPOUkYC/MLlnAfvTTXFkcywlurb4utJL86','1-953-708-9909x770','252 Shanahan Parkway Suite 586',NULL,'Arturoside','CO','25084-8971',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:51','2014-06-15 16:24:51'),(85,NULL,'may.little@schneiderluettgen.com','Terrance','Simonis',NULL,'$2y$10$ZJbC.wWGL10mAGbf1wruROLy/ixQRlyrcrrN/cRQKsvoKG7ww9EcG','(850)203-0513','216 O\'Conner Locks',NULL,'Port Wallace','CO','36831-7947',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(86,NULL,'wiegand.amari@hotmail.com','Javier','Dooley',NULL,'$2y$10$lExXnO9MlM1fyIIhM259keERVsKz7HqRpJAtiNUsKnLguG0pbNEDa','603-159-1363','139 Padberg Run',NULL,'Carissaville','CO','59946',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(87,NULL,'dcummerata@weber.org','Sonia','Olson',NULL,'$2y$10$vqh.lOT6PEQ3exY1yrJBQuRgc2VCxsA6GidCKilbEM6AM1DMG2RBq','(516)566-2369','625 Greenfelder Falls Suite 725',NULL,'Lake Weldonshire','CO','03433',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(88,NULL,'zack.bernier@fishermueller.com','Rebeka','Kihn',NULL,'$2y$10$//YYM1IAU6CqjOXDMnNICOEwtJAu42Kf2HfzbE8FzNwonyngNcxK6','1-352-753-9616','62552 Cordie Path Suite 627',NULL,'Simeonview','CO','60087',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(89,NULL,'keebler.stephan@thielhand.com','Royal','Cole',NULL,'$2y$10$ETn6l7Eotnv36p1woE/KKODtbTZIbiMt5V5FYpnGtt3wAblBvjg1.','1-563-167-8567x9841','5752 Austyn Loaf',NULL,'East Nathanielshire','CO','82751-6870',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(90,NULL,'tomasa31@willmsharber.com','Beth','Schamberger',NULL,'$2y$10$EY.pLhJMeGkZ08D1f8J5OOGeUIAbDH07lDFSijywadZHLb9CgHB1.','1-763-824-3909','625 Hyatt Lake Suite 211',NULL,'Chazshire','CO','86170',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(91,NULL,'paul.wisozk@yahoo.com','Reymundo','Ernser',NULL,'$2y$10$qPmKjYYrRFjby7ot2HE2FugK8LiZnLqjsf8pSyoUC9fQb.Ad2PqMO','(309)375-3925','88218 Funk Hills',NULL,'Port Christa','CO','96063-3986',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(92,NULL,'dejuan74@hauckpowlowski.com','Stephen','Weimann',NULL,'$2y$10$Pnzv3vk.icgujzW410nZBOhMW/kgfGR1qwpXpGwRXayHSP3oxtjGe','1-189-483-9278x165','7601 Deangelo Avenue',NULL,'Trentshire','CO','84732',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:52','2014-06-15 16:24:52'),(93,NULL,'o\'reilly.orpha@trantow.net','Herbert','Cronin',NULL,'$2y$10$TWvmFS.becfvxLBM2EcmI.inZcStl1utWUgJvA6hoB.xeCHuLLbYe','1-019-478-4311x103','613 Stoltenberg Center Suite 423',NULL,'Geofurt','CO','06213-0055',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(94,NULL,'heaney.thomas@padberggerlach.net','Marisol','Shields',NULL,'$2y$10$xU5Ia6GVHdS8w2XVJpoKWekUQ.olxssdOtb.LHnM5eYe1vR3Bh/5S','1-857-579-4308','709 Demond Estates Suite 355',NULL,'South Joanie','CO','58245',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(95,NULL,'hardy49@gmail.com','Jarrell','Mosciski',NULL,'$2y$10$82QSbGGFmVmjdTEZ7.1j2eWSPwTeuHYdnW7heYuB9Bpm5cUo/1SqG','1-577-475-6285','26585 Amara Rue Suite 476',NULL,'West Peggieville','CO','45067-1752',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(96,NULL,'ejakubowski@hotmail.com','Maybell','Wehner',NULL,'$2y$10$GEYoJ63pATMdoH3DuSp1Ue5EXVK.ChBfHVqQekQXBOxy.fYsWLuOe','375.210.4872','989 Jessie Mountain',NULL,'West Lowellborough','CO','46011',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(97,NULL,'fhegmann@becker.com','Lilyan','Jewess',NULL,'$2y$10$OSOg23UgUxVZuj7mNG6z8Ow56WPbYePOQPec1Dm24NlaBIHwitmQ.','495-845-1190x691','0363 Marvin Vista',NULL,'Port Lethaside','CO','32288-9887',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(98,NULL,'eusebio20@beerkeeling.com','Elenor','Blanda',NULL,'$2y$10$9qzD/nzUATHg50NZ30Mqruc.ct1kYwJgGHmCcjC1d3JOz0hiJwd9y','06019577334','742 Aliza Mall Suite 286',NULL,'Angelinechester','CO','25565',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(99,NULL,'krajcik.gregory@dicki.com','Lionel','Christiansen',NULL,'$2y$10$IZtye75zQ/MVf5a7mcw8DO8hF3PjmtbJjEhCKMqfTYDF9Vfz5rHOe','020.502.7107x735','9048 Jacques Alley',NULL,'New Alfredo','CO','83587-1067',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(100,NULL,'dustin.klein@yahoo.com','Amie','Haley',NULL,'$2y$10$W74a9SDnch/jzWPpnmdFxO0Ngix14F4ypIuHZhbNWPzRE5FzCIROm','1-575-691-1600x9158','32891 Darrel Station Apt. 581',NULL,'Marianamouth','CO','46891-2762',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:53','2014-06-15 16:24:53'),(101,NULL,'charlie82@heaney.com','Marquis','Haag',NULL,'$2y$10$RMEW4u4CoC2lKe8MidlkQ.NLwkNv9CTEPSu72jW1wwgY88XN46sJW','1-994-587-6020','3502 Hal Squares',NULL,'Christinaburgh','CO','73401',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:54','2014-06-15 16:24:54'),(102,NULL,'bbartell@lowe.net','Liliane','Bins',NULL,'$2y$10$W5fo5MBre.AWJz/BFvmr1Ojc3NTLDieJAnAhEdBt1THRbq33toWFy','1-721-286-4919x36640','65725 Therese Ville',NULL,'New Lester','CO','46633-5647',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-15 16:24:54','2014-06-15 16:24:54');
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
INSERT INTO `users_groups` VALUES (1,1),(2,1),(2,2),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1);
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

-- Dump completed on 2014-06-15 10:26:31
