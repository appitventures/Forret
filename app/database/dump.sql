CREATE DATABASE  IF NOT EXISTS `solum_codeception_testing` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `solum_codeception_testing`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: starter
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
INSERT INTO `groups` VALUES (1,'Users','{\"user\":1}',NULL,'2014-06-09 22:19:38','2014-06-09 22:19:38'),(2,'Admins','{\"user\":1,\"admin\":1}',NULL,'2014-06-09 22:19:38','2014-06-09 22:19:38');
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
INSERT INTO `migrations` VALUES ('2012_12_06_225921_create_users_table',1),('2012_12_06_225929_create_groups_table',1),('2012_12_06_225945_create_groups_users_table',1),('2012_12_06_225988_create_throttle_table',1),('2014_04_07_214414_create_log_table',1),('2014_04_26_122314_create_Actions_table',1),('2014_04_28_152153_create_sessions_table',1),('2014_05_24_111246_create_types_table',1),('2014_05_24_111422_create_vehicles_table',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` VALUES (1,2,'127.0.0.1',2,0,0,'2014-06-15 11:38:27',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'user@starter.com','Jaida','Schmeler',NULL,'$2y$10$ATacKDV9rSLEqe.QgyMdAua38gv6aXiIxtJ2pPWl7G0Gmmxcmd1Su','136-805-3291x882','831 Tate Harbors',NULL,'Kennedimouth','CO','46843',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:38','2014-06-09 22:19:38'),(2,NULL,'admin@starter.com','Jennings','Rosenbaum',NULL,'$2y$10$jDDc.KN5k0aF3rkf4Wo8UOJ8Z4xPS2.6pe7cyXbpY69zTrE3cy15i','356-023-4583x834','2278 Lakin Manor',NULL,'Reillyfurt','CO','65687-9698',0,NULL,1,NULL,NULL,'2014-06-15 10:48:23','$2y$10$bTKAUMX1jDSD6WH7Z9OHse24JGjB/928DlVC18pXcQkbXCNao8pH.',NULL,NULL,'2014-06-09 22:19:38','2014-06-15 10:48:23'),(3,NULL,'philip54@yahoo.com','Jimmy','Hamill',NULL,'$2y$10$/XDlk9LSZPdfywmdSBFtquOpvoF180lyH2BMjl5GtbNEjgoCgaN4W','+36(8)3996194997','406 Carmen Shores Suite 783',NULL,'Jackiestad','CO','38939-1348',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:38','2014-06-09 22:19:38'),(4,NULL,'florian.lockman@renner.net','Xander','Macejkovic',NULL,'$2y$10$wR1XRWKfy5a9x5DgUQ5ZN.sUNWhffFuClsCxnux32YY.ps3dKQ.kC','1-734-693-7581','7811 Caesar Drive',NULL,'West Ayana','CO','47155',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:38','2014-06-09 22:19:38'),(5,NULL,'denis16@gmail.com','Louvenia','Ebert',NULL,'$2y$10$CMQB3vIirXZKtewVQkMqmO4mrrd8JbkOYSmCCQxQCixeGLjlhpb0.','370-564-5536','6661 Winfield Burg Suite 795',NULL,'Watersland','CO','69568',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:38','2014-06-09 22:19:38'),(6,NULL,'esperanza64@hotmail.com','Stefanie','Dickens',NULL,'$2y$10$Yc1hs2Di4w7P6mqf.IARwuT6YyhH5fNQ2OA.cpp.r/U9Dt/OhYDzK','225.024.7241','3353 Wendy Knolls Suite 035',NULL,'Wilkinsonstad','CO','13862',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(7,NULL,'granville.blanda@hotmail.com','Alia','Thompson',NULL,'$2y$10$Y0o6velY.dzd3.E9R9Fi2OyCv4jm1T4FEtZiGCNFq011kFPWymj0C','(081)737-6210x3447','186 Crooks Cape Suite 490',NULL,'Ortizberg','CO','01653',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(8,NULL,'amina.hills@gmail.com','Lilly','Conroy',NULL,'$2y$10$OPx0R7JhGi5NIWgVX4sO8OK5H/cplOvmsQD4uHoWOv2MdJbTQKt52','177-822-7019x6799','215 Curtis Loaf Apt. 210',NULL,'Nathenshire','CO','82242',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(9,NULL,'lesch.tanya@yahoo.com','Ericka','Kunde',NULL,'$2y$10$bjjEKlLaEoH5RwpK7kT4qOWKg.O3elNtN2MifKF.QaWSg4O50refW','06679185662','32177 Harry Burg',NULL,'Port Marquesborough','CO','20188-7216',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(10,NULL,'zkassulke@walker.com','Cathrine','Hane',NULL,'$2y$10$nSY4CIeNcAA.FMFQspIun.9sP3mCr5RgjOTv6RNF1Vi58R2Y7txJm','527-822-7318x3015','12399 Williamson Vista',NULL,'Dooleyshire','CO','33737-1638',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(11,NULL,'beier.karolann@gmail.com','Ruthie','Dare',NULL,'$2y$10$JBUiGftlEa8zJvXRL8bxbOZ85nZD5g4U1hSCBhu9VgMiDWYuPUsm2','1-700-878-3264','57429 Schimmel Extensions Suite 297',NULL,'Marquardtshire','CO','31419',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(12,NULL,'tlowe@hotmail.com','Jasen','Zemlak',NULL,'$2y$10$2VKG1scwNllYdZguORZL4uKbdfZO44X1tlFAMu/p.nssWE.QdjeYK','1-280-982-2685','94210 Miller Harbor',NULL,'Port Thora','CO','87451',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(13,NULL,'karelle81@yahoo.com','Derrick','Anderson',NULL,'$2y$10$D2oRe2hn7cQJfsIBDRPQY.DQDQpaINydvemTyrtVwSeQKdFNLo7dO','237-578-0791','748 Ariane Cliff Apt. 204',NULL,'Anastasiaport','CO','29962',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(14,NULL,'duncan25@gmail.com','Dock','Reinger',NULL,'$2y$10$wQlmSPACz5hChwVbjRXoVueA7OmFEsUnaj.f6my6nGp7RLVkJ8SKm','+96(5)1334092843','2517 Towne Lodge',NULL,'Schillerport','CO','46950-8883',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:39','2014-06-09 22:19:39'),(15,NULL,'nconsidine@lefflerryan.org','Antwan','Will',NULL,'$2y$10$Dqz2qOMvZvSlVnLX3VK3h.3QAsHhtOM8wtxV1rPyVkoLDZIcgd4z6','+00(4)6755486211','2239 Pouros Fields',NULL,'Luigitown','CO','66459',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(16,NULL,'kristian.lakin@pollich.org','Verona','Hammes',NULL,'$2y$10$jkrDTzv7Wjd0dmqCvPX8N.r5O.lq9imP8jRP/gje93ODIX.pGvzPy','+60(5)0532109163','04890 Gracie Tunnel',NULL,'South Colemouth','CO','24455-2895',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(17,NULL,'kunde.brannon@gmail.com','Valentin','Mraz',NULL,'$2y$10$nl64kKD0zHLtY7oEetJ.V.x1S5WX7e0EPGM6SRxwFHokZpOxwp.i.','04925312448','458 Dovie Street Suite 009',NULL,'North Quinten','CO','31817-7952',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(18,NULL,'carolyn76@yahoo.com','Layla','Wiza',NULL,'$2y$10$O9Js.AZrj91VWxulYvpSTuWIY4oloZkZ6xenvlmaiQY.uB8JkCYtm','278-871-0520x52971','9242 Esteban Motorway Suite 825',NULL,'Johanntown','CO','28818-6557',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(19,NULL,'qwalter@jakubowskithiel.com','Julia','Jakubowski',NULL,'$2y$10$v821A2AXv3cb6Em/NRLIgeshUfsPyCp5TNIv8FT3wTTiYkL2EjHv.','1-631-904-7057x39092','98764 Dorthy Views Suite 841',NULL,'North Brendonborough','CO','50905-5756',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(20,NULL,'meta.veum@fritsch.com','Clare','Dicki',NULL,'$2y$10$p1fiGLnJ/JgWB9yvc3ngMe6NYdYsdiTdmfObWQQ.go/HViwF9CX4G','(650)470-1637x9747','654 Tyrel Pines Suite 108',NULL,'West Faustino','CO','57605',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(21,NULL,'carmen.price@swaniawski.com','Odell','Konopelski',NULL,'$2y$10$vAjChY2oUlTHKQZdlRyBC.hw1BPdtFU/V9m3fawpGkc5nsUCaGoLi','181.365.5596x7175','893 Stefan Parkways',NULL,'Aleneville','CO','00073',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(22,NULL,'lydia41@brekke.com','Gerson','Bashirian',NULL,'$2y$10$/aKkEf0.ezb0UEqumUBsAeNhZCMBOrTv5Ml1OPnJny7bzIbJNEBnq','1-480-039-6413x65503','25443 Cormier Hill',NULL,'Elizabethfort','CO','62525',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:40','2014-06-09 22:19:40'),(23,NULL,'alba.wolf@hotmail.com','Cecile','Heidenreich',NULL,'$2y$10$Fkg33GM9X8e.HMXskEtDzeHMw9rmrlNY6uHGxjH8wHB/ZULUHCSYy','131.670.0845x41303','1438 McClure Stream Suite 111',NULL,'West Constantinport','CO','90321-1557',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(24,NULL,'tkuphal@klocko.org','Lonnie','Hand',NULL,'$2y$10$iBzvHE54rhcUM0BPO0nFrO0wk89jzEP7nMpPqt0ITOUq5xB6fqGgm','(264)869-9751','3233 Willa Junction',NULL,'South Darianstad','CO','59134',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(25,NULL,'roslyn16@crona.com','Faye','Dietrich',NULL,'$2y$10$E0P/ODvMqTY1NSz9CqTPkOAq3HNylwJvhKhOQV.ljtY.1qUPO1kUy','687-267-6471x297','1761 Jamar Square Apt. 281',NULL,'Kaleighstad','CO','88465-6561',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(26,NULL,'jamarcus93@ward.com','Koby','Steuber',NULL,'$2y$10$51mGwXrHrlTXLiuLc1cyA.jGJFJS/0m88ET5qZyjpYoLsEZ1iL5IS','160-039-8937','1823 Lubowitz Flats',NULL,'West Lowellview','CO','02405',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(27,NULL,'creola.strosin@gusikowski.com','Ashlee','Durgan',NULL,'$2y$10$qna5DckM2GdRcZ2mMvCWbum46.sq6hSI9c8ZeI1DWc4RMWXyFg9ES','550.482.3387x2506','1971 Vella Square',NULL,'South Sarinaside','CO','90707',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(28,NULL,'brigitte.veum@ledner.com','Ole','Runolfsson',NULL,'$2y$10$LXp8YtRllUYcF1hTe//siOFvYB9xSGTznfTtLhEZ8VL88lZXzQuJ.','638.218.5746x6136','68641 Margaret Bypass Suite 131',NULL,'Hertaberg','CO','16762-7387',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(29,NULL,'rice.glenna@hotmail.com','Archibald','Morissette',NULL,'$2y$10$/BZ6uA4u6NS1uOqIQEbLTukJnK.UEaSEC7sGMQbv45fATu7b9UcGa','06165275161','913 Bessie Forge',NULL,'Gislasonmouth','CO','22928-6536',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(30,NULL,'fwatsica@torphy.org','Marietta','Kessler',NULL,'$2y$10$4bOe77L7G/44.q48aXS4TO7N2sVevJVJ/VIRdI5tu2aWNDZDuTBb2','794.402.7114x389','965 Treutel Mountains Suite 530',NULL,'Lake Samir','CO','79797',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(31,NULL,'bbrakus@yahoo.com','Rey','Swaniawski',NULL,'$2y$10$0.6HrMbxKeVWGJm7RBxKaOCAhgxBXfZTmmwLZja1N5rLFNsh2s29W','482.980.0957x3891','441 Hermiston Dam',NULL,'Port Brannon','CO','11995',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:41','2014-06-09 22:19:41'),(32,NULL,'vhoeger@gmail.com','Ernestina','Runolfsson',NULL,'$2y$10$unuOndq18UB1/ViTnV6oHePShGWFuhm8lhHNvr35DwenJ0DME4yQ6','(604)769-1518','661 Olson Key Suite 912',NULL,'Runolfsdottirberg','CO','99846-4211',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(33,NULL,'rebekah21@mayert.com','Ida','Hilpert',NULL,'$2y$10$0xe6N.Bdl2c72rUo9OOfW.sOgZRJPOmUz28j/QG3P1UuOEA0Z8nLu','(008)308-7853x26143','07495 Emmie Vista',NULL,'Laurettaborough','CO','40484-0008',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(34,NULL,'elmira.west@bode.net','Joseph','Cole',NULL,'$2y$10$L13BGE5aYqOIfoIa6HHLTeMMS2xtXgs1Z17INHFCapn2MV1Vlodua','(137)511-3878x024','8487 Ervin Branch',NULL,'Benedictburgh','CO','91704-5976',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(35,NULL,'brenden07@luettgengislason.com','Geovany','Dooley',NULL,'$2y$10$GItGAHs9.OZvLu6XgsUas.2pVECpsw9NbY02d0ycDroH18RAzhfZS','977.865.9023x7160','59402 Fredrick Passage',NULL,'Hoegerland','CO','43463',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(36,NULL,'brown.tavares@yahoo.com','Ettie','Sipes',NULL,'$2y$10$WfqTOj4NexAE0AovzloA5u9MOLtDFHzb8YhNOQLaCVAqlqq9ldb6.','218-777-8762x55451','593 Joshuah Village Suite 349',NULL,'Port Eveshire','CO','21088-6361',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(37,NULL,'dschinner@gmail.com','Alexandria','Casper',NULL,'$2y$10$U709J9udnciqTrH0p3Jv.ejZCHDjQD93utePSyzl23KsvdVOmKoBy','439-809-0827x770','3642 Luettgen Walk',NULL,'East Antonina','CO','31152-2755',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(38,NULL,'roob.rudy@gmail.com','Lourdes','Huels',NULL,'$2y$10$E3Mc5tGnY6q0ILBmz5dZNOsa5pd8aHiQqpd9bSfL2WT/rSPgjGzKi','02045871149','1170 Angus Branch Apt. 226',NULL,'Fisherfurt','CO','75911',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(39,NULL,'sporer.jazmyn@gmail.com','Chelsie','Jenkins',NULL,'$2y$10$08MQvX5lXwIHzRgTtJ6WF.FY.3q6z7Wamj2.iseqM6MPhv4zWeJ3a','(861)433-2178x28379','32645 Feest Shoal Apt. 810',NULL,'Johnsfort','CO','18781',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(40,NULL,'reichel.porter@gutmann.com','Bernardo','O\'Reilly',NULL,'$2y$10$HvHgslqCMjAXKa60VIabBOD/g2wA6zvgqU5e6Y2BgLq279W45q1fm','052-879-3589x766','779 Cronin Valleys',NULL,'Lake Lailaside','CO','79959-2855',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:42','2014-06-09 22:19:42'),(41,NULL,'connie.braun@hotmail.com','Wilton','Hartmann',NULL,'$2y$10$Jjt.Ah0Fh8M5HPXQYtnvdeLNkWOBjvAPvxcBhblqNTefb4jRzGK1W','+33(0)7271609565','5745 Waino Pine',NULL,'Jettburgh','CO','97102-9027',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(42,NULL,'lyla.d\'amore@erdman.com','Norval','Luettgen',NULL,'$2y$10$498L3A5jIfeVSp4Csx/1oOUiO0AUV/z9nvV78MHfqTA29edSN8ciq','204.617.7294x4928','4994 Garrick Locks Suite 533',NULL,'Alisonstad','CO','52392-6154',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(43,NULL,'kshlerin.nat@yahoo.com','Clarissa','Bechtelar',NULL,'$2y$10$ZH6NmW75HAN0qFwIBpkChuRxofeU55lTFwFxdZFiTyjmd6Ls8U9TK','00110634938','27532 Corwin Gardens',NULL,'Lake Rosella','CO','25896-1224',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(44,NULL,'penelope69@stanton.com','Arvel','Batz',NULL,'$2y$10$MlBBHckQXdpTxDy0PB20aOsPfluOroF3fVyHKK5GZ/wyRVa0.3ynm','496.228.7916x09329','40820 Gleason Trail',NULL,'Ellieborough','CO','22169-6411',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(45,NULL,'cmcglynn@rosenbaumarmstrong.com','Ryleigh','Crooks',NULL,'$2y$10$hV/f5VbA7ZG53XS4lkB4.uhaC24EHpgaoFaYOrCub/tKCTNbCgc6a','443-507-6230x23754','9532 Flavie Crossing',NULL,'Lake Garnettfort','CO','39775-2971',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(46,NULL,'kuhn.jeffry@gmail.com','Mallie','Stokes',NULL,'$2y$10$oTtXo2kx.87MhDlqzDJPXuyFF1BZ8tAxz/pBl99mRx7ipzNzdOJ62','327.883.3961x04051','225 Sauer Fort Suite 988',NULL,'East Franceshaven','CO','49256',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(47,NULL,'geraldine20@murphy.biz','Leif','Zulauf',NULL,'$2y$10$.GBjNFG3x8GH9bfFJKCMAOkYTSw8Y4nxBV214tA2mk6CxzIZBg8tq','(729)881-4879','8797 Rohan Drives',NULL,'Feilside','CO','05019-9541',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(48,NULL,'ayla.murazik@beerleannon.net','Deondre','Cummings',NULL,'$2y$10$qCRDbgSbHDIYMJP.3t7bK.51lTKjVKYGoC..Nx9xndHSHdeVLGYS2','887.100.0844x3306','410 Rau Squares',NULL,'Port Baronmouth','CO','00833-5374',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:43','2014-06-09 22:19:43'),(49,NULL,'olson.felicity@gmail.com','Tanner','Kuhn',NULL,'$2y$10$zxXVKRnQTydbO7Z2toiMs.j5ssYUjAD98Mp9RdYFAJN8QalRYDGla','905-483-5068x2332','7272 Klocko Shoals Apt. 713',NULL,'North Lexus','CO','78136-6596',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(50,NULL,'gabrielle.barton@yahoo.com','Carmella','Huels',NULL,'$2y$10$VYJdKJuDL0tqaKlCRN7fcehcDECYKYHXOr6Oox7NKYsEd/xu6yiYy','625-923-4107x098','25685 Prosacco Corner Apt. 101',NULL,'Tamiaborough','CO','18416-9481',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(51,NULL,'herzog.maritza@yahoo.com','Clement','Rempel',NULL,'$2y$10$yr2ovXNkB6hB4Pd5H0bHz.ekijpKCyH7UlvDcVnslVXUTG9x5fExC','01039354917','2462 Little Trace',NULL,'Amyamouth','CO','04601',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(52,NULL,'howard.kunde@spinka.net','Macie','Torp',NULL,'$2y$10$QcOhlSw/IiX6ZDKT0j7/ROGiAyhrbTrivHblkwuMMxPxpBxw.3fQy','(213)405-5362','294 Marc Valleys',NULL,'Alexieshire','CO','70901-9024',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(53,NULL,'edd.kuphal@yahoo.com','Wilfredo','O\'Connell',NULL,'$2y$10$8ZqvuEu2o9njuiaG2yTrQuH/uyiteUyvvkt/gmIkeRv4G1JEi49ia','01129134194','259 Joan Place Suite 174',NULL,'North Alexys','CO','49575',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(54,NULL,'alden94@hilll.info','Magdalen','Klein',NULL,'$2y$10$VFO3X3UnxrxkY.XxV.sBcuf9dNhG6zN.cq2t8saqlwCJiP.lr6liC','1-665-498-4363','645 Durgan Mission',NULL,'East Alan','CO','59181',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(55,NULL,'windler.xzavier@rippingislason.com','Raleigh','Metz',NULL,'$2y$10$puQ0SJAZH8qrFGF6s0uM4OaOyYfqPU.ufpRom47f/K9CCoduAXUBS','1-824-758-6316x83820','8402 Dorris Course',NULL,'New Reyes','CO','39844',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(56,NULL,'pstracke@treutelrunolfsdottir.org','Olaf','Larson',NULL,'$2y$10$8tYq16e/8mw4Y/QgQDg2M.VBfyPPiu1zYFwQ44RnEFEeQ6IawRwwi','701-178-9616x11715','93930 Dangelo Spur',NULL,'Allenside','CO','43719',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(57,NULL,'ujohnson@kessler.net','Paula','Macejkovic',NULL,'$2y$10$7rnpJqbUPS7CmDXq9TXUtuo2cEV/FfxoI.RpY74C3bPmnfP7hgmDK','05880101819','8915 Hardy River Apt. 484',NULL,'North Jaronbury','CO','36155',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:44','2014-06-09 22:19:44'),(58,NULL,'lkris@schaden.biz','Ronaldo','Hand',NULL,'$2y$10$fzeza5TNJAbeYvYFD8H..uYqkURPUbEJS09.eMuDoL.UlMv4OvTwC','(011)471-6072','8745 Catherine Avenue',NULL,'Port Cicero','CO','46166',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(59,NULL,'lia.konopelski@yahoo.com','Hayden','Kuphal',NULL,'$2y$10$dQuvW5aLQdTo4.YN.WATTOmjCKOlbl0uC1PqmP.ZOg38beoNGsKrm','830.260.0948','08338 Waters Corners Apt. 620',NULL,'Lake Kelsifurt','CO','24166',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(60,NULL,'verner.hackett@hotmail.com','Wilhelm','Kunde',NULL,'$2y$10$S880R0ksuy8AJguhmQR8y.pGN4eO6FE/hu9Vkv7zBZkla8mjAKkiW','01538136626','75043 Keebler Mountains',NULL,'Reubenshire','CO','37759-8525',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(61,NULL,'aliza71@gmail.com','Krystel','Quigley',NULL,'$2y$10$vSPwMg98mL0MvjK7LfPGMOaEr3KveDm16WL20iHn8cRi3uK5V2h8i','1-639-319-0581x1293','0083 Goodwin Parkway',NULL,'Hahnshire','CO','85171-6820',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(62,NULL,'blanca.schaden@ullrich.info','Beau','Hane',NULL,'$2y$10$Uu5JJ2JmsynsfGq8EW3LkuQtqf1RnunFxQt2.KDg4/1c7J02voJpO','678.663.4104','51368 King Cliffs Suite 520',NULL,'West Elenor','CO','80352',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(63,NULL,'emmy.kemmer@gmail.com','Zane','Wyman',NULL,'$2y$10$GtXnvEGtx9HcwwZ26vGdDOuRJqx4r/KtlV2LvK7ihsoKNS3vzH1d6','116.845.6172','40061 Sylvan Canyon',NULL,'New Sigrid','CO','93403-4735',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(64,NULL,'barney.blanda@krajcikkeeling.net','Alberto','Waelchi',NULL,'$2y$10$LKtceRrNAGJzI4paceVd.ujvTBABh670o9/t8ZL16BdanB96c/.iq','1-744-379-9468x707','5486 Larkin Squares',NULL,'Herzogshire','CO','01064-7012',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(65,NULL,'jewel.white@yahoo.com','Marquise','Nikolaus',NULL,'$2y$10$Le9WEa9nGan4TtefnQPo/.2/tLum0vsV62a.bF.Z.Xwk92yX1Gy9W','018-204-2506','511 Dino Parkways',NULL,'Lake Duncanport','CO','74147',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(66,NULL,'anne10@kubturcotte.com','Guiseppe','Bailey',NULL,'$2y$10$FqT1jcQgLnXetsDAsVk7ouGM85KiBUWufvQtaIc2qbK9Oqu4EonT6','072-791-3955','924 Keely Flat Suite 719',NULL,'Robelhaven','CO','58579',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:45','2014-06-09 22:19:45'),(67,NULL,'heichmann@gmail.com','Annie','Boyer',NULL,'$2y$10$WKdhX/KiTk6zIAD23iIg5ue4h8x0Ii6QXW3feHSjACyXEjKNZRpUu','1-133-895-5415','31629 Berniece Locks Suite 184',NULL,'New Toniville','CO','67479',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(68,NULL,'carlos21@gmail.com','Antonia','Bode',NULL,'$2y$10$T3Q/HLRSmdHaidYxQ.HS0.g4DM68nGw5tQq92fn67A2H2QiH1kV.6','(069)711-6683x00355','1869 Baron Squares Apt. 658',NULL,'East Ashton','CO','40240-8019',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(69,NULL,'javier.yundt@paucek.com','Marian','Robel',NULL,'$2y$10$JQCqoUx1yKe04bo8fCITtudQdDd.S0IvsbCJHXAGxYZKBehsVE4b.','1-971-221-2174x936','264 Sporer Station Suite 264',NULL,'Raynorshire','CO','53710-3571',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(70,NULL,'mclaughlin.gerda@mills.biz','Addison','Goldner',NULL,'$2y$10$DO44wExE9Y0dUcV3w5nxA.6gPUFqpTtKknj4nfeh.Ca.jgj1d53xi','1-472-096-0633x2488','7800 Ritchie Isle',NULL,'North Joel','CO','33485-9180',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(71,NULL,'mdeckow@yahoo.com','Dortha','Cummings',NULL,'$2y$10$62hokprkGJ1vGtMT/0gtOOdP8UgYsx/4N2MyrXPthgM4Yne2kAv6e','1-386-138-7895','9502 Halle Forest',NULL,'South Alysha','CO','54339-9400',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(72,NULL,'dzboncak@yahoo.com','Arden','O\'Connell',NULL,'$2y$10$CfcVlL5PEtTMZxEBdf3LGeo0GE3E641.tRvXNs1sc03saPejvlM1O','(339)083-2134x94394','490 Jaime Islands Apt. 373',NULL,'West Jerelburgh','CO','70241-9395',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(73,NULL,'keebler.rashawn@hotmail.com','Candice','Schultz',NULL,'$2y$10$.d5Ttd1ga1pO3wUf1ylZc.pDFH9Q6vEzTW899RN9esKcp1UpQ8Rs.','1-333-011-9297','89293 Oscar Views Apt. 014',NULL,'Lake Liliane','CO','08971-9349',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(74,NULL,'nova.mckenzie@quigley.com','Nyah','Kris',NULL,'$2y$10$Ecvgvl.eREFTj3zKFBhgdud6RZEK/6ipfdIrHgUMVU7HjN368GH/G','1-978-725-0230','935 Upton Isle',NULL,'Lake Wade','CO','69849',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:46','2014-06-09 22:19:46'),(75,NULL,'marietta.heller@gmail.com','Delfina','Shanahan',NULL,'$2y$10$5aBR6t5NjmG8dYKkSUYSPOJCSkb8fZU.omI/62rPDvLjnwo62YEdy','1-824-138-6202','35870 Weimann Mission Suite 185',NULL,'Port Ewellville','CO','89890',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(76,NULL,'dmccullough@ondrickayost.biz','Emmalee','Pfannerstill',NULL,'$2y$10$MsvCU1.Cap5tE5zAMpXoPOV6Q1gmAhkZnN0CggyFuB3.KlV/r50TK','(111)775-9438','9333 Blanda Overpass Apt. 079',NULL,'Citlallishire','CO','14295',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(77,NULL,'mauricio28@yahoo.com','Sim','Cummings',NULL,'$2y$10$BSZ5GSa5.luTu09ErquMEOwJjG4F9WptuaHeU5IAVuFdJSqQWDcNq','+85(9)7400945865','054 Rex Points',NULL,'Rodolfoview','CO','22115',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(78,NULL,'darryl.bernhard@sawaynzemlak.com','Perry','Willms',NULL,'$2y$10$IboL/Oi1q7rZydh02JSVqea8YeZWEcTy.EVs7.qw5MXzHDK27K6tC','126-551-1055x29302','7083 Bianka Prairie Suite 678',NULL,'Broderickhaven','CO','40984-7319',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(79,NULL,'zaltenwerth@hotmail.com','Sonny','Baumbach',NULL,'$2y$10$rKaSb2fq3xyNxUR1QWmxdebYPk97a07W5Rfz3oJvPheH8PbYbalG.','669.577.3882','8263 Leonel Parks Apt. 689',NULL,'Kirlinmouth','CO','45521',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(80,NULL,'wrobel@rodriguez.net','Kory','Roberts',NULL,'$2y$10$uNUXDcns33ws/ihWahgtPOXS012/8sR9VpeLLVihrGCs5a/rHtbci','018.618.8197x43706','868 Coty Park Apt. 808',NULL,'New Freddy','CO','69991-8024',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(81,NULL,'ayla.ondricka@feest.com','Ruthe','Daniel',NULL,'$2y$10$oy6HICiAI9eoxDRAzQsWxOMJYmHJ1OZRvATdv81O4jk03DSOoCncS','(772)286-8584x29362','42003 Abernathy Wells Suite 768',NULL,'South Modesto','CO','78818-7850',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(82,NULL,'arnoldo.bergstrom@yahoo.com','Ana','Altenwerth',NULL,'$2y$10$WjJnKL5YA/NzJuKaT8ucde8jmOId3JXEniebQaqpQysJYXe/KSfoS','1-826-407-3333x8791','32623 Feeney Course',NULL,'North Angelinaberg','CO','46773-6301',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(83,NULL,'clyde.gerlach@sawayn.com','Isobel','Maggio',NULL,'$2y$10$uXdPTubkiLof66rK0hnILeHb/NVv6exkx9ZqSnVMCl4MEqKSFw3sK','(969)708-2831x28352','535 Howell View Apt. 562',NULL,'Jaquanport','CO','29779',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:47','2014-06-09 22:19:47'),(84,NULL,'josie82@yahoo.com','Lelah','Rodriguez',NULL,'$2y$10$dC9Thm/x6S1/rjA6VIcMmOSzt9qjnDN2xCLlFBVTgaBh/JS19JULe','289-241-3547x66288','750 Auer Island Suite 073',NULL,'West Ottilie','CO','60869',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(85,NULL,'jordyn34@gmail.com','Izaiah','Stanton',NULL,'$2y$10$C565cX8wAFjzVbO0F9AR.eAbNfzsMgXwbbHcEgsSh9iRAnnyrsFxG','624-179-6291x660','2105 Frida Neck',NULL,'Port Gunnarville','CO','78412',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(86,NULL,'mkoss@collinsfranecki.info','Justus','Yundt',NULL,'$2y$10$jaiUBSgF2b/bsIOsUiKKweNEQvD03xpWUQBJEdctwd/V2NJ3qYZJS','(044)776-2396','386 Heath Port',NULL,'West Katrinaview','CO','54200-7116',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(87,NULL,'garett50@hotmail.com','Helen','Ferry',NULL,'$2y$10$DrOiLdQS1ZZjWHZ8Lnam1.wsvN425BL5.3EoaN.9kmW7f0z7Ik4Gq','09916307460','4897 Green Junctions',NULL,'Brigittehaven','CO','54388-2994',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(88,NULL,'ebba.berge@kesslerpouros.com','Melyssa','Murazik',NULL,'$2y$10$Wn5b7AR9JYSApj1cKZQGsuqU9knrYUThluEDVgLLvDYSL5hq2nbnC','819.756.1839x33418','45513 Cormier Union Apt. 787',NULL,'Kingland','CO','60411-4060',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(89,NULL,'rkautzer@hotmail.com','Mathew','Kuphal',NULL,'$2y$10$gSncv75OMVubHIXlsqbRTeUJ0RsdgSW7d/wJjdxg16TfAo5fueOW6','(139)276-9969x49126','536 Kub Lodge Suite 938',NULL,'Mathildechester','CO','57907',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(90,NULL,'katelyn99@jewess.net','Helga','Sanford',NULL,'$2y$10$RMy3U8Eff9FABHh7rD7.duZNriHl3KnQD9Yklbnky7COPemeYLtJC','888.370.6322x769','085 Fern Stream',NULL,'West Chasityview','CO','82028',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(91,NULL,'natasha37@gleichner.info','Rebekah','Cormier',NULL,'$2y$10$bBUufPqTlptXU2XZUZiE/uRUPEsC1lLEflLWMFSA.vY5ldaoJmPJO','05659520457','5164 Monahan Field Suite 743',NULL,'Handfurt','CO','92588',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:48','2014-06-09 22:19:48'),(92,NULL,'billie.osinski@schultz.com','Stewart','Schaefer',NULL,'$2y$10$a6zJnkQsanFXKVM2NTxgLuES/.NeoeoYGlh6qH5Pif2i9l8H6C3Em','509-080-6385x1005','7833 Hoeger Parkways Suite 455',NULL,'Wymanmouth','CO','61717-9465',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(93,NULL,'stephen32@gmail.com','Erwin','Abernathy',NULL,'$2y$10$zYNsgXitw1R7ZA5ohJdcouTV5z3CLpPH9T1YdYtupNibiBBGDA.9e','195.858.6467x5569','64465 Schroeder Manor',NULL,'Kreigerside','CO','82119',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(94,NULL,'ddare@hotmail.com','Jackie','Pacocha',NULL,'$2y$10$6Eogl1ZdYPMcWKm31N1TT.uQ/BC6CgVk1pzoCvYPunEpyGls195ym','1-794-056-3463','407 Piper Terrace',NULL,'Port Juanitaville','CO','36568-2088',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(95,NULL,'melisa14@anderson.info','Cordelia','Smitham',NULL,'$2y$10$IiAwQLtiYaQZyT7ZqImrPui5g6Kv8n3SiGkRgi5ha8euYGZGz2tw6','1-365-881-3297x264','83327 Barrett Isle',NULL,'Gabriellachester','CO','98661',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(96,NULL,'rhianna.swaniawski@swaniawskiking.com','Preston','O\'Kon',NULL,'$2y$10$NhrgetyczKX8agmYq9cCdO6xEffrBsFO.4VfRoTDf0lWFEPEhqIDK','513-754-6622','37404 Lubowitz Glen',NULL,'North Pierceton','CO','03965',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(97,NULL,'evolkman@hotmail.com','Khalil','Skiles',NULL,'$2y$10$942sgGlmCI109oGQkYk14eced4gpSj23so62ZUsOTpWG6KduDV1v6','(830)735-5264x67875','4792 Weber Burgs',NULL,'Lake Geovannifurt','CO','11008-8972',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(98,NULL,'dax.wyman@hotmail.com','Oceane','Goldner',NULL,'$2y$10$4WEs.wFe7ufT7by1wfotpe4VqnDR2n0UAt7fB2oJZRezioOCKMuDy','1-132-090-8459','3502 Greenfelder Manor',NULL,'East Tyramouth','CO','08339',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(99,NULL,'mklocko@lesch.info','Tevin','Rempel',NULL,'$2y$10$MVY7VPLibUFXcUQeSggY5..icL8F3vdWdaj0vbzstD5BsrgV22LkS','748-978-5147x537','9086 Jovan Place Apt. 017',NULL,'New Nelsonberg','CO','87213-3942',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(100,NULL,'margarita84@yahoo.com','Garfield','Schinner',NULL,'$2y$10$8UbV8UckXdFev3oVJBj.7euVrDEsJ0ej/sxQInfMaOFyXhP3qwfzu','368.698.4901','701 Glover Vista',NULL,'New Meda','CO','79758-7331',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:49','2014-06-09 22:19:49'),(101,NULL,'earl90@hotmail.com','Sandy','Ernser',NULL,'$2y$10$EshItJ20cQ1sJxbMmg91YuDanyOG.xLT2qPAAoSh1D5G1Gqg0VLZa','+48(7)0012236760','61813 Jay Turnpike Apt. 287',NULL,'East Roma','CO','95551',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:50','2014-06-09 22:19:50'),(102,NULL,'garfield56@schumm.net','Cathryn','Aufderhar',NULL,'$2y$10$23cloNw6Y13Vs0Mgy0l.R.RDvd52OuQqgFZMCJUEgxx8tDUp3h1/K','936.985.0510x34902','06087 Rosemarie Key',NULL,'Connellyfurt','CO','43224',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2014-06-09 22:19:50','2014-06-09 22:19:50'),(103,NULL,'newEmail@starter.com',NULL,NULL,NULL,'$2y$10$jD6pq3TDqkQZAZmaoGORwuFvZ101bAcfCdFRYfo6sDp489wGQA4/S',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,'m5TqHpAEywCugiWK7f0zqiCe0bhrYZqgRcKbBlPMnx','2014-06-09 23:17:50',NULL,NULL,NULL,NULL,'2014-06-09 23:17:50','2014-06-09 23:17:50');
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
INSERT INTO `users_groups` VALUES (1,1),(2,1),(2,2),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1);
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

-- Dump completed on 2014-06-15  9:26:52
