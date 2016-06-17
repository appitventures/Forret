-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: forret
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.9-MariaDB

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
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
INSERT INTO `admin_password_resets` VALUES ('raj@gmail.com','ae22daaf62ccc06ece06cc4d9c736c75c5ac735ea56060826a0f1c341aebb463','2016-04-20 05:45:25');
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (3,'www','admin@admin.com','$2y$10$12GUxmSO0NH2twkyaJxRNuqNpwvjb9fAxlylE9h.i2flcIiFf/b12','RczNHWg9fQBH55xPhNp4fBFJF7ArSMr9UuNRNzjaidfmtOa9oP01TJHmohPY','2016-04-20 02:15:05','2016-04-20 02:15:44'),(4,'admin','admin@gmail.com','$2y$10$VSnyjcojMSvBpCfOQ.Q69ezvsYPWYoKlVuZwSOiQKA7n8YKqr7qr6','k8yywVtffRMLKcDum5hYDsg7GqkdzowhHwfVrbpYOMuSosfLECqP27FKi8OV','2016-04-20 02:18:18','2016-04-20 02:18:56'),(5,'rwere','werere@gmail.com','$2y$10$5xiVzwvKqw/0ddzcIs0IbelojnN.8lCSrgVz0Y9s1xHgcyQR7GM7i','mW124nfUTfDVKmqhueww5oLnc7kKR2PitNWARrb3sZpPHCRCbLISYXark6d3','2016-04-20 02:20:44','2016-04-20 02:21:18'),(6,'qwerty','qwertyyy@gmail.com','$2y$10$CcBxXhWIFbGfwVJXAKjX/uz9dhE40eg00CXXSYKaKpEz61WkcoKP2','EznQCKRl5k9Zi2xniz2FwaQJ95q5g0g9cwFJXq2KQl5H0yLwf9TEhtQWzWpN','2016-04-20 02:21:39','2016-04-20 02:29:39'),(7,'12345','12345@gmail.com','$2y$10$Lv5mMxjwhXTUvMCS9rFWievx.oeWAQ..dlMApA6xNfcagMnEHKsOW',NULL,'2016-04-20 02:22:47','2016-04-20 02:22:47'),(8,'raj','raj@gmail.com','$2y$10$XxilLiiLBUmETjFH.0rsie0ckkczhR3f0fMkqrXZ4Ydl3tYDna6gW','suzfofY5dEfHjifDlSIRL1BOsKSfcvSvhNqzvqxzxojRjzpv6ov21FminG3I','2016-04-20 02:26:30','2016-04-20 05:39:30'),(9,'qwerty','qwerty@gmail.com','$2y$10$FlkfNMZJAH5EyQBE0bIFOeqFHDOK5jPCalbrHbgXqA9ljnVBbp8ZS','SbFuc6JSp6TM096b4F54qluM7aRWRmrYcSFTL9pcHbOG6piSlWipzgPStzy6','2016-04-20 04:33:52','2016-04-20 04:58:10');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
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
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2014_04_24_110151_create_oauth_scopes_table',2),('2014_04_24_110304_create_oauth_grants_table',2),('2014_04_24_110403_create_oauth_grant_scopes_table',2),('2014_04_24_110459_create_oauth_clients_table',2),('2014_04_24_110557_create_oauth_client_endpoints_table',2),('2014_04_24_110705_create_oauth_client_scopes_table',2),('2014_04_24_110817_create_oauth_client_grants_table',2),('2014_04_24_111002_create_oauth_sessions_table',2),('2014_04_24_111109_create_oauth_session_scopes_table',2),('2014_04_24_111254_create_oauth_auth_codes_table',2),('2014_04_24_111403_create_oauth_auth_code_scopes_table',2),('2014_04_24_111518_create_oauth_access_tokens_table',2),('2014_04_24_111657_create_oauth_access_token_scopes_table',2),('2014_04_24_111810_create_oauth_refresh_tokens_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token_scopes`
--

DROP TABLE IF EXISTS `oauth_access_token_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_token_scopes_access_token_id_index` (`access_token_id`),
  KEY `oauth_access_token_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_access_token_scopes_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_access_token_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token_scopes`
--

LOCK TABLES `oauth_access_token_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_access_token_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_token_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_access_tokens_id_session_id_unique` (`id`,`session_id`),
  KEY `oauth_access_tokens_session_id_index` (`session_id`),
  CONSTRAINT `oauth_access_tokens_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('05JvdHONAaQ1knY5LD5eA1RrQb4DxghCIhmcs2F0',69,1462450437,'2016-05-05 05:43:57','2016-05-05 05:43:57'),('0EkcQnLCex9nolrnKKe1AJKNB0P4YqD8l4wZbMOg',68,1462450347,'2016-05-05 05:42:28','2016-05-05 05:42:28'),('0pjL9oXLwtOP4q3da0t3fY6TdwOX56JcSx0GgoUr',64,1462450130,'2016-05-05 05:38:50','2016-05-05 05:38:50'),('0w8oiQQ9WI8RRSh7YbqnQ8v42NBciFohgJNgicsQ',82,1462460187,'2016-05-05 08:26:27','2016-05-05 08:26:27'),('0y0toZiSF9YVrh795lvC9IylzZH9uUp97g6O1ywZ',29,1461339988,'2016-04-22 09:16:28','2016-04-22 09:16:28'),('5UyBTXjPanGSyZs4I53uxnXuCueQtHFulhD5QM3Q',66,1462450201,'2016-05-05 05:40:01','2016-05-05 05:40:01'),('6aDueSI3cMIsSzPtJjDGvrt06qqA1FYL0eWDfBJN',3,1461332648,'2016-04-22 08:13:58','2016-04-22 08:13:58'),('7MnmttZAHsHhWGGnKyopbqXq64mFZEp3TQyP9cIR',27,1461339950,'2016-04-22 09:15:50','2016-04-22 09:15:50'),('7vc3AXAlv6BOBAmpxaMXgvGaam1Ra4s2yVccY4Cm',14,1461339304,'2016-04-22 09:05:04','2016-04-22 09:05:04'),('835Z2WD6rXXngvl6jD84ioBS9mR27BkzzrpyX6RE',72,1462451902,'2016-05-05 06:08:22','2016-05-05 06:08:22'),('8XLw8SdY0HpDo8TOI2AP45kRhaZ60gekU7w2PHmL',37,1462344077,'2016-05-04 00:11:17','2016-05-04 00:11:17'),('9wmCwuUKnDgqkzgdrS5D6EMYyu5JniHhnYXYQKRo',31,1462343198,'2016-05-03 23:56:38','2016-05-03 23:56:38'),('a9WirKfXlmOydlCaUtWhs1rc7FydBBQuf20VeZe1',74,1462452445,'2016-05-05 06:17:26','2016-05-05 06:17:26'),('ABniRfP9vVGHsGiOYKk56jsyNJNnCSYqry7C8y3h',23,1461339814,'2016-04-22 09:13:34','2016-04-22 09:13:34'),('ADjpwwb4sxPlCGKSzTeMdIIiqxdFqJWAQzYAQzup',18,1461339595,'2016-04-22 09:09:55','2016-04-22 09:09:55'),('AQjzaHaHgslqZYrAxJN1dAPG8fpn0vVhSDAbXbkn',52,1462450005,'2016-05-05 05:36:45','2016-05-05 05:36:45'),('bbb8bC91AzIGynP3NuE2s4l9AC4etjr74HOfrMNc',46,1462448882,'2016-05-05 05:18:03','2016-05-05 05:18:03'),('BEYZHgN14AJH9w5Rwc40T9Aenh93c2A1BOdn5HMZ',26,1461339907,'2016-04-22 09:15:07','2016-04-22 09:15:07'),('bJ7ZnsxCEcIiGDf2vXqMIM12qNblcQA3Upet8dZS',19,1461339633,'2016-04-22 09:10:33','2016-04-22 09:10:33'),('Bm1v5Lz46IQgnJGMsu5hVl3FquY8hp7ykjyLlWYO',28,1461339971,'2016-04-22 09:16:11','2016-04-22 09:16:11'),('bO8J1yItt6xzlbi5siUulB73bZGNhlaEWcrTcAkN',39,1462344286,'2016-05-04 00:14:46','2016-05-04 00:14:46'),('BtWv3QWxNsilM6IQJMKbfHRSPr8RvVYd6vMC0BBd',49,1462449955,'2016-05-05 05:35:55','2016-05-05 05:35:55'),('Bx0CkJw9j6rPetMgrudaG5rO3VhzqYws8QiWGs9l',5,1461337854,'2016-04-22 08:40:54','2016-04-22 08:40:54'),('C2WlcFusMxkvS9XBSrBG1mfr4vphru31TCwnrO3x',77,1462452911,'2016-05-05 06:25:11','2016-05-05 06:25:11'),('cH7reSd802Sj2GVSzJTrRan2ZjmfQ1inhHfBF4yX',57,1462450124,'2016-05-05 05:38:44','2016-05-05 05:38:44'),('chQ1cHvdA3OXCp5VeZhWSD8wn2U7ntl4OQTdjbB4',45,1462448774,'2016-05-05 05:16:14','2016-05-05 05:16:14'),('CJEJQsqTqWnff7SnIwPscQKjNkw2dwwG5vj8wIAA',36,1462344061,'2016-05-04 00:11:02','2016-05-04 00:11:02'),('Cv3yFFHMSBmy3WnLx49Ysbh4VKkVhs5c7pnlcxwy',25,1461339886,'2016-04-22 09:14:46','2016-04-22 09:14:46'),('EAVbMbNH7yKe4FHjebsOinHXhTP36d74DaofApqY',50,1462449978,'2016-05-05 05:36:18','2016-05-05 05:36:18'),('Eil9l9nWyfWlpWHfwOMR8kPO37nC2dCX7tsxdaH9',7,1461338172,'2016-04-22 08:46:12','2016-04-22 08:46:12'),('EkVodbjxaSnzyDJCIEWLxWFwiJFka8kuRLKq8akP',41,1462344371,'2016-05-04 00:16:11','2016-05-04 00:16:11'),('etbzTW7g6s9FfpRf3MoHDZTrv9VKZzs2Dr8USR8X',24,1461339855,'2016-04-22 09:14:15','2016-04-22 09:14:15'),('Ex2bjZ5fGjm8wnPEqUCz1nI32jdOxMBT4JQhULE4',71,1462450586,'2016-05-05 05:46:26','2016-05-05 05:46:26'),('f9oJXoqCXZfeoT14BdxJojDvX9zDNOZyxceET2yH',70,1462450522,'2016-05-05 05:45:22','2016-05-05 05:45:22'),('g8f5utwIHIJuE8w0tzr6229hN84PjHe41sbDRpsv',54,1462450027,'2016-05-05 05:37:07','2016-05-05 05:37:07'),('glf3C9WHowizIuVmf0dGJecAFH1ktBngozgbeASJ',67,1462450334,'2016-05-05 05:42:14','2016-05-05 05:42:14'),('gqvwY4yTzuPWwIxQZXxbz1StgIiBcLv1IDwCpVFa',56,1462450103,'2016-05-05 05:38:23','2016-05-05 05:38:23'),('HcBTRZQuWTaRedMbdoezWwYy3HfvfSmdZytDyHKU',76,1462452474,'2016-05-05 06:17:54','2016-05-05 06:17:54'),('HHO00mWwVQInTvCuoyZxiuO2LmdV71PSwWfk6WXv',9,1461338488,'2016-04-22 08:51:28','2016-04-22 08:51:28'),('HHq4LDmuGx7iNcTBA5IOTSb2uj3HO9r9SxIyqHiL',78,1462452954,'2016-05-05 06:25:54','2016-05-05 06:25:54'),('HrX6EclhN57f73d7H2OmrSKH5cCWkzgQf9MOEqKE',35,1462344023,'2016-05-04 00:10:23','2016-05-04 00:10:23'),('HZLoI6BZeAfVU5O9IFD265r4lxO9IOADpd3MLTh5',16,1461339316,'2016-04-22 09:05:16','2016-04-22 09:05:16'),('I6cy23z6hshQyFoavJyxBBvnmRDBrZxhaX1mdjRw',73,1462451943,'2016-05-05 06:09:03','2016-05-05 06:09:03'),('icM3MrwusRzDmMuK2u9P5FCaCNDAewjSYknMZt3S',55,1462450063,'2016-05-05 05:37:43','2016-05-05 05:37:43'),('jA3ya60pbcsONxyopfhV1UgLHZdxFIvhVoowrgML',48,1462449945,'2016-05-05 05:35:45','2016-05-05 05:35:45'),('jJLY3F4EWZ3pHI1uFvEOO5QKpLdIVBL4ei4VHwg5',51,1462449991,'2016-05-05 05:36:31','2016-05-05 05:36:31'),('l2sKdaHGMaVz9kFgDwwJ3tjWJNjIDQoLQ5RtTQ8w',21,1461339807,'2016-04-22 09:13:28','2016-04-22 09:13:28'),('l2ZUesgMeSL69McPLSmNPgXeOugre25HfelXMz2L',40,1462344302,'2016-05-04 00:15:02','2016-05-04 00:15:02'),('LK0C4pec2Jtf87kh2q5e7qjGQac2DEWvyV4sLOIW',53,1462450015,'2016-05-05 05:36:55','2016-05-05 05:36:55'),('ll4tACulPQWF7pkxtXBNyTCi3TWq0arrPXxZAeHM',61,1462450128,'2016-05-05 05:38:48','2016-05-05 05:38:48'),('ma2uKCyDsKRzfryX2USL0fWsg6uJ78ZuQ6YlIZHS',65,1462450132,'2016-05-05 05:38:52','2016-05-05 05:38:52'),('mGb2Sog9zNxDcCQkgGMrujbzmUr58lnCPpG9tXF5',47,1462450386,'2016-05-05 05:43:06','2016-05-05 05:43:06'),('mtVvOEPRm6vceBy2r3FCczinitBMMlqqDYOfLSBy',42,1462344379,'2016-05-04 00:16:19','2016-05-04 00:16:19'),('MwfH2vcgdiXzXfHBgxa0XgZC2RGJZxyfRh0indAN',22,1461339812,'2016-04-22 09:13:32','2016-04-22 09:13:32'),('n8gVsU9rnV51mIT0ryRKWBnAn7nkRhqQkXkDW5EH',12,1461339294,'2016-04-22 09:04:54','2016-04-22 09:04:54'),('NCrf4VJmpp83BcO5RREsjncwqg1TdwhgtLPUDlND',44,1462448702,'2016-05-05 05:15:03','2016-05-05 05:15:03'),('NP9dHe3IOGL2L2iCUdfks1HNRSNs7ShNVCcuWnr2',58,1462450125,'2016-05-05 05:38:46','2016-05-05 05:38:46'),('O044MvoQX74BvdyAIId9Pf9JhA75oKE6nhOxk2Pg',13,1461339301,'2016-04-22 09:05:01','2016-04-22 09:05:01'),('OAgEcinqC8JQFPFY60OT7SYpwIA6em1Ew0m8D2Pl',1,1461335983,'2016-04-22 08:09:43','2016-04-22 08:09:43'),('obsmA9RKICdLpqVpmYxFTCuxOtR0EK2cjer4LjvM',2,1461332617,'2016-04-22 08:13:27','2016-04-22 08:13:27'),('pKV0otuvL3nWDIS7imEmCDK3NMaIag4DsgSXzIx9',34,1462343944,'2016-05-04 00:09:04','2016-05-04 00:09:04'),('QUowHGo1B1k0tSjeiH3S0SKoBqFKedXKHNNq2XKs',10,1461338682,'2016-04-22 08:54:42','2016-04-22 08:54:42'),('RlmWjiDrTDADELlgp3zdURM66194vyfLLPxcDbaS',81,1462459781,'2016-05-05 08:19:41','2016-05-05 08:19:41'),('RnGzonPicI65ALBFnql5oieUqNml1qbrXdXSgAu1',11,1461338765,'2016-04-22 08:56:05','2016-04-22 08:56:05'),('S8sYIrUnPEKyVi5auJAql1bjQZLl0z9T80goUP0Y',17,1461339317,'2016-04-22 09:05:17','2016-04-22 09:05:17'),('SNFr9K6E2YiVCkgU1QRtWJJewimvSaaviFbuVkSo',6,1461338090,'2016-04-22 08:44:51','2016-04-22 08:44:51'),('SYL4Ph9L81Jm2HRN2KbrWc4Xil0DR0YWv0wyoOFh',30,1461340174,'2016-04-22 09:19:34','2016-04-22 09:19:34'),('THX9b7P3mLt7QBQIg3wCxqdIkX7y01CXVm12Otl3',79,1462452968,'2016-05-05 06:26:08','2016-05-05 06:26:08'),('TOGQFtuh2aUjejuUIqBUrS1hMuvr5KLUQEiFidxp',43,1462448691,'2016-05-05 05:14:51','2016-05-05 05:14:51'),('UdiK5anoTaWatygbIgc2qf1evJTa83QvUU3fMZMb',83,1462460438,'2016-05-05 08:30:38','2016-05-05 08:30:38'),('V3ymkCDUmjejGredqI9w9GFJr5XerHDZtj8LhMNo',32,1462343859,'2016-05-04 00:07:39','2016-05-04 00:07:39'),('ViOmB5eO9uvzfPGPWCwwi5rEfpCciqvfJZb0eWxX',38,1462344186,'2016-05-04 00:13:06','2016-05-04 00:13:06'),('vl0iqHqeYwTEMOwSwkk9vFnvTX33Fk9hV2nlgBYh',15,1461339311,'2016-04-22 09:05:11','2016-04-22 09:05:11'),('wDIEQhfmU69FrlSd6IT8uDEjJ5qAwSQN2oLKMc31',4,1461337814,'2016-04-22 08:40:14','2016-04-22 08:40:14'),('wjtasQ4AocXSV50b9ETWjAv9ANsQiu87VTmL9bjU',80,1462459759,'2016-05-05 08:19:19','2016-05-05 08:19:19'),('xqEiWUUMyJJGFauWaCgAuepJh7etmmHqu5LAfoIS',33,1462343897,'2016-05-04 00:08:17','2016-05-04 00:08:17'),('xTB1xsZLYf7KkyrLoInEdydAf9bVNp6F5Vl2kqCu',8,1461338173,'2016-04-22 08:46:14','2016-04-22 08:46:14'),('Y6ShwOxGKu0rNsf8HNYcItuvkZUJ9LryRyV1t6HT',62,1462450128,'2016-05-05 05:38:48','2016-05-05 05:38:48'),('YC2Nx0EFSpju9ZRDhKKCwtIsokkHdKMDsjGPl3XI',20,1461339798,'2016-04-22 09:13:18','2016-04-22 09:13:18'),('YvxBmeZ2XOpSjiddTTOrCQQOH14H6AWobJZWCE50',60,1462450127,'2016-05-05 05:38:47','2016-05-05 05:38:47'),('ZdTRMocvQ6M18sHq0mNJ30wX1U9dV0cElbsoq4lS',63,1462450129,'2016-05-05 05:38:49','2016-05-05 05:38:49'),('zLSuAMCrqAVZQpa0kxdrtNKhrd7i1hVDPko4IQ9j',59,1462450126,'2016-05-05 05:38:46','2016-05-05 05:38:46'),('zT28YWXSoouHFdfaiFjn29UjUpLek6BajxApdPuj',75,1462452470,'2016-05-05 06:17:50','2016-05-05 06:17:50');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_code_scopes`
--

DROP TABLE IF EXISTS `oauth_auth_code_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_code_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `auth_code_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_code_scopes_auth_code_id_index` (`auth_code_id`),
  KEY `oauth_auth_code_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_auth_code_scopes_auth_code_id_foreign` FOREIGN KEY (`auth_code_id`) REFERENCES `oauth_auth_codes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_auth_code_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_code_scopes`
--

LOCK TABLES `oauth_auth_code_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_code_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_code_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_session_id_index` (`session_id`),
  CONSTRAINT `oauth_auth_codes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_endpoints`
--

DROP TABLE IF EXISTS `oauth_client_endpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_endpoints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_client_endpoints_client_id_redirect_uri_unique` (`client_id`,`redirect_uri`),
  CONSTRAINT `oauth_client_endpoints_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_endpoints`
--

LOCK TABLES `oauth_client_endpoints` WRITE;
/*!40000 ALTER TABLE `oauth_client_endpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_endpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_grants`
--

DROP TABLE IF EXISTS `oauth_client_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_grants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_grants_client_id_index` (`client_id`),
  KEY `oauth_client_grants_grant_id_index` (`grant_id`),
  CONSTRAINT `oauth_client_grants_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `oauth_client_grants_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_grants`
--

LOCK TABLES `oauth_client_grants` WRITE;
/*!40000 ALTER TABLE `oauth_client_grants` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_scopes`
--

DROP TABLE IF EXISTS `oauth_client_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_scopes_client_id_index` (`client_id`),
  KEY `oauth_client_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_client_scopes_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_client_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_scopes`
--

LOCK TABLES `oauth_client_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_client_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_clients_id_secret_unique` (`id`,`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('123clientid','clientsecret12343211','user2',NULL,NULL),('dasdasdasd23241231232','dsdsadassad23123','postman','2016-04-22 13:31:08','2016-04-22 13:31:08');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_grant_scopes`
--

DROP TABLE IF EXISTS `oauth_grant_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_grant_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_grant_scopes_grant_id_index` (`grant_id`),
  KEY `oauth_grant_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_grant_scopes_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_grant_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_grant_scopes`
--

LOCK TABLES `oauth_grant_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_grant_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_grant_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_grants`
--

DROP TABLE IF EXISTS `oauth_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_grants` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_grants`
--

LOCK TABLES `oauth_grants` WRITE;
/*!40000 ALTER TABLE `oauth_grants` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`access_token_id`),
  UNIQUE KEY `oauth_refresh_tokens_id_unique` (`id`),
  CONSTRAINT `oauth_refresh_tokens_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('xZwNUh9N53rMvha6vVLuu98iHGCoYVmbklvXCcCW','0EkcQnLCex9nolrnKKe1AJKNB0P4YqD8l4wZbMOg',1462482747,'2016-05-05 05:42:28','2016-05-05 05:42:28'),('2c4Pha4SCpksw6oiIo1elACvr8iicX0hEUMBVeJm','0y0toZiSF9YVrh795lvC9IylzZH9uUp97g6O1ywZ',1461372388,'2016-04-22 09:16:28','2016-04-22 09:16:28'),('NMJeWwDMBsCAchECjYuIOT9ZIVyEIR1z87qqh1pY','5UyBTXjPanGSyZs4I53uxnXuCueQtHFulhD5QM3Q',1462482601,'2016-05-05 05:40:01','2016-05-05 05:40:01'),('i8kpRkBKIoVeJdNQXxQOD600wJzxeFurvmd4MSAC','7MnmttZAHsHhWGGnKyopbqXq64mFZEp3TQyP9cIR',1461372350,'2016-04-22 09:15:50','2016-04-22 09:15:50'),('8tUioyaYkkWXv2tYYE1nsjPwTMePgNtJaWcaSn3y','7vc3AXAlv6BOBAmpxaMXgvGaam1Ra4s2yVccY4Cm',1461371704,'2016-04-22 09:05:04','2016-04-22 09:05:04'),('DwJj900F4zlfX5o8lgY6swTLx1EcS62CVMPSU29S','835Z2WD6rXXngvl6jD84ioBS9mR27BkzzrpyX6RE',1462484302,'2016-05-05 06:08:22','2016-05-05 06:08:22'),('Rz8huJ306twJvywUKxipyiUIQB42Xl560lweEtWS','ABniRfP9vVGHsGiOYKk56jsyNJNnCSYqry7C8y3h',1461372214,'2016-04-22 09:13:34','2016-04-22 09:13:34'),('IAzB5s3VGEDVXd2uQlWJE56gbSWkWWCvxkARA9zc','ADjpwwb4sxPlCGKSzTeMdIIiqxdFqJWAQzYAQzup',1461371995,'2016-04-22 09:09:55','2016-04-22 09:09:55'),('3ZgIWoJCKmfDLzUlDt1FTKpWdRGUd8QrAIuRC87M','BEYZHgN14AJH9w5Rwc40T9Aenh93c2A1BOdn5HMZ',1461372307,'2016-04-22 09:15:07','2016-04-22 09:15:07'),('UJBeH58am13lcdX2Vs4rZXzkkD2lCxVL93r5akrE','bJ7ZnsxCEcIiGDf2vXqMIM12qNblcQA3Upet8dZS',1461372033,'2016-04-22 09:10:34','2016-04-22 09:10:34'),('KmpQkgz9qot7vMVxoTaLqkjpJ84XmjC3RZSi5mPs','Bm1v5Lz46IQgnJGMsu5hVl3FquY8hp7ykjyLlWYO',1461372371,'2016-04-22 09:16:11','2016-04-22 09:16:11'),('GG2n2ZVVYFjxIYrojPZ1jAabPC5LQqrKOz57GRqi','bO8J1yItt6xzlbi5siUulB73bZGNhlaEWcrTcAkN',1462376686,'2016-05-04 00:14:46','2016-05-04 00:14:46'),('2Iq8yOBs8cpjJMPA9psuGWs2bgEhw5oHOgSdv1WT','chQ1cHvdA3OXCp5VeZhWSD8wn2U7ntl4OQTdjbB4',1462481174,'2016-05-05 05:16:14','2016-05-05 05:16:14'),('pHCl2VJICjoqFfU8jGbeBKI1AEu5ewvhkfCAhSFF','CJEJQsqTqWnff7SnIwPscQKjNkw2dwwG5vj8wIAA',1462376462,'2016-05-04 00:11:02','2016-05-04 00:11:02'),('Z69nY25Z0juCkEJEo1XcmneRGp3PlIS5AEVvV5tr','Cv3yFFHMSBmy3WnLx49Ysbh4VKkVhs5c7pnlcxwy',1461372286,'2016-04-22 09:14:46','2016-04-22 09:14:46'),('sLdGiZVErxq8XBO8g4zNxyHQRXa3d7ERvcPg0xux','EkVodbjxaSnzyDJCIEWLxWFwiJFka8kuRLKq8akP',1462376771,'2016-05-04 00:16:11','2016-05-04 00:16:11'),('mD5PWjxTNDOquhAzROpMfCMHHbHYbFkbyFajHGb5','etbzTW7g6s9FfpRf3MoHDZTrv9VKZzs2Dr8USR8X',1461372255,'2016-04-22 09:14:15','2016-04-22 09:14:15'),('B7oF4GO5miPmz260BTSoLLiTKecV6wNlWbZmi8ao','Ex2bjZ5fGjm8wnPEqUCz1nI32jdOxMBT4JQhULE4',1462482986,'2016-05-05 05:46:26','2016-05-05 05:46:26'),('PByYOhk4Ay0e7IchH5APXTO8r9ri8sOY3q02TLsX','g8f5utwIHIJuE8w0tzr6229hN84PjHe41sbDRpsv',1462482427,'2016-05-05 05:37:07','2016-05-05 05:37:07'),('QtsSQmEEGDPbcqv1JGxPx88J5tCod3EXrnv8zhSc','HHq4LDmuGx7iNcTBA5IOTSb2uj3HO9r9SxIyqHiL',1462485354,'2016-05-05 06:25:54','2016-05-05 06:25:54'),('htRtrmH87vsqg0137HzdFrgYtrTmPH5Kyqyd2XU5','HrX6EclhN57f73d7H2OmrSKH5cCWkzgQf9MOEqKE',1462376423,'2016-05-04 00:10:23','2016-05-04 00:10:23'),('ViOz5Tbfyu38YP17ufjQDlsBgZEmumflmwsmancw','HZLoI6BZeAfVU5O9IFD265r4lxO9IOADpd3MLTh5',1461371716,'2016-04-22 09:05:16','2016-04-22 09:05:16'),('nZsUbgOdrdthO6rvIW847YfrrvcizgzsMc2FHes6','I6cy23z6hshQyFoavJyxBBvnmRDBrZxhaX1mdjRw',1462484343,'2016-05-05 06:09:03','2016-05-05 06:09:03'),('k2D4ahlHRdSUicya0ECpgoawmdbPqlU4GRekVqQ1','icM3MrwusRzDmMuK2u9P5FCaCNDAewjSYknMZt3S',1462482463,'2016-05-05 05:37:43','2016-05-05 05:37:43'),('1iRHtN02xbSsnRnGD0oYrpM2NlYZmRHH95kZRVW2','jJLY3F4EWZ3pHI1uFvEOO5QKpLdIVBL4ei4VHwg5',1462482391,'2016-05-05 05:36:31','2016-05-05 05:36:31'),('h2YETSw49kpqVW4634tA6uxZ6UUF2bsQHvlG4u8F','l2sKdaHGMaVz9kFgDwwJ3tjWJNjIDQoLQ5RtTQ8w',1461372207,'2016-04-22 09:13:28','2016-04-22 09:13:28'),('J1GYrz7VXTyhDlZ2IXDzPGsTxvkQc1UMIex8uNLH','LK0C4pec2Jtf87kh2q5e7qjGQac2DEWvyV4sLOIW',1462482415,'2016-05-05 05:36:55','2016-05-05 05:36:55'),('64UyM42OghUrxBJB6GfCec8QbYEKtlFpdcFQZwGx','mGb2Sog9zNxDcCQkgGMrujbzmUr58lnCPpG9tXF5',1462482786,'2016-05-05 05:43:06','2016-05-05 05:43:06'),('9JLe0OnCUGQVkI2Cj9x4rqvbVEIggcl3OahcALrJ','MwfH2vcgdiXzXfHBgxa0XgZC2RGJZxyfRh0indAN',1461372212,'2016-04-22 09:13:32','2016-04-22 09:13:32'),('eezLnbqzm1vl72nEiJJDHpxJzmTZ5vcp11R8b4fv','NCrf4VJmpp83BcO5RREsjncwqg1TdwhgtLPUDlND',1462481102,'2016-05-05 05:15:03','2016-05-05 05:15:03'),('cnuuH2Djy9hKRhSSuDaGzUshpieVUkJBvPZ63FjM','pKV0otuvL3nWDIS7imEmCDK3NMaIag4DsgSXzIx9',1462376344,'2016-05-04 00:09:04','2016-05-04 00:09:04'),('dAtD4mLHTyY5IEdn95MqtLM0M4PFk1mCiBDtN8P5','RlmWjiDrTDADELlgp3zdURM66194vyfLLPxcDbaS',1462492181,'2016-05-05 08:19:41','2016-05-05 08:19:41'),('gtMEpF2G85wVoxg4M4ZaZ3KCf5iNTqJwwsmVMjI5','S8sYIrUnPEKyVi5auJAql1bjQZLl0z9T80goUP0Y',1461371717,'2016-04-22 09:05:18','2016-04-22 09:05:18'),('JHqsVBkpV6pkTKMgsPU4IG47nEkOJUiN6e22Nv7T','SYL4Ph9L81Jm2HRN2KbrWc4Xil0DR0YWv0wyoOFh',1461372574,'2016-04-22 09:19:34','2016-04-22 09:19:34'),('3VKqAvxlHdjyt2aIrhWtyxy1HbCgK0p9Ig1DloBS','THX9b7P3mLt7QBQIg3wCxqdIkX7y01CXVm12Otl3',1462485368,'2016-05-05 06:26:08','2016-05-05 06:26:08'),('ak9DtPg6Pzb2KnG4cU55KbBOMYK8K8JsoezuRPNI','UdiK5anoTaWatygbIgc2qf1evJTa83QvUU3fMZMb',1462492838,'2016-05-05 08:30:38','2016-05-05 08:30:38'),('6CHDNxdfRW0054dnUuH9xtrkzGEz3oCxUsCKJala','V3ymkCDUmjejGredqI9w9GFJr5XerHDZtj8LhMNo',1462376259,'2016-05-04 00:07:39','2016-05-04 00:07:39'),('RhwDQn0cwcBTEspUZ9BsTay3qMbdEV8NYO1SHfaO','vl0iqHqeYwTEMOwSwkk9vFnvTX33Fk9hV2nlgBYh',1461371711,'2016-04-22 09:05:11','2016-04-22 09:05:11'),('nTxq0YlMXz7EQ8XOabmJSStrqj2QiEUQB4XGFA0V','wjtasQ4AocXSV50b9ETWjAv9ANsQiu87VTmL9bjU',1462492159,'2016-05-05 08:19:19','2016-05-05 08:19:19'),('OvPbG0abGZiK6teXC1IWx8asavVUTTNOKUc9B7Dm','xqEiWUUMyJJGFauWaCgAuepJh7etmmHqu5LAfoIS',1462376297,'2016-05-04 00:08:17','2016-05-04 00:08:17'),('j43QzuPSGlxs8EnRTkYVglZ0AjPWAFoX0J0aWVIG','YC2Nx0EFSpju9ZRDhKKCwtIsokkHdKMDsjGPl3XI',1461372198,'2016-04-22 09:13:18','2016-04-22 09:13:18');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scopes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scopes`
--

LOCK TABLES `oauth_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_session_scopes`
--

DROP TABLE IF EXISTS `oauth_session_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_session_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(10) unsigned NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_session_scopes_session_id_index` (`session_id`),
  KEY `oauth_session_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_session_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_session_scopes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_session_scopes`
--

LOCK TABLES `oauth_session_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_session_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_session_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_sessions`
--

DROP TABLE IF EXISTS `oauth_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` enum('client','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `owner_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_redirect_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_sessions_client_id_owner_type_owner_id_index` (`client_id`,`owner_type`,`owner_id`),
  CONSTRAINT `oauth_sessions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_sessions`
--

LOCK TABLES `oauth_sessions` WRITE;
/*!40000 ALTER TABLE `oauth_sessions` DISABLE KEYS */;
INSERT INTO `oauth_sessions` VALUES (1,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 08:09:43','2016-04-22 08:09:43'),(2,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 08:13:27','2016-04-22 08:13:27'),(3,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 08:13:58','2016-04-22 08:13:58'),(4,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 08:40:14','2016-04-22 08:40:14'),(5,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 08:40:54','2016-04-22 08:40:54'),(6,'dasdasdasd23241231232','user','2',NULL,'2016-04-22 08:44:50','2016-04-22 08:44:50'),(7,'dasdasdasd23241231232','user','2',NULL,'2016-04-22 08:46:12','2016-04-22 08:46:12'),(8,'dasdasdasd23241231232','user','2',NULL,'2016-04-22 08:46:13','2016-04-22 08:46:13'),(9,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 08:51:28','2016-04-22 08:51:28'),(10,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 08:54:42','2016-04-22 08:54:42'),(11,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 08:56:05','2016-04-22 08:56:05'),(12,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 09:04:54','2016-04-22 09:04:54'),(13,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-04-22 09:05:01','2016-04-22 09:05:01'),(14,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:05:04','2016-04-22 09:05:04'),(15,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:05:11','2016-04-22 09:05:11'),(16,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:05:16','2016-04-22 09:05:16'),(17,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:05:17','2016-04-22 09:05:17'),(18,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:09:55','2016-04-22 09:09:55'),(19,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:10:33','2016-04-22 09:10:33'),(20,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:12:54','2016-04-22 09:12:54'),(21,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:13:27','2016-04-22 09:13:27'),(22,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:13:32','2016-04-22 09:13:32'),(23,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:13:34','2016-04-22 09:13:34'),(24,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:13:36','2016-04-22 09:13:36'),(25,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:14:24','2016-04-22 09:14:24'),(26,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:15:00','2016-04-22 09:15:00'),(27,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:15:50','2016-04-22 09:15:50'),(28,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:15:59','2016-04-22 09:15:59'),(29,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:16:28','2016-04-22 09:16:28'),(30,'dasdasdasd23241231232','user','4',NULL,'2016-04-22 09:19:26','2016-04-22 09:19:26'),(31,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-03 23:56:38','2016-05-03 23:56:38'),(32,'dasdasdasd23241231232','user','4',NULL,'2016-05-03 23:56:54','2016-05-03 23:56:54'),(33,'dasdasdasd23241231232','user','4',NULL,'2016-05-04 00:08:10','2016-05-04 00:08:10'),(34,'dasdasdasd23241231232','user','4',NULL,'2016-05-04 00:08:57','2016-05-04 00:08:57'),(35,'dasdasdasd23241231232','user','4',NULL,'2016-05-04 00:09:28','2016-05-04 00:09:28'),(36,'dasdasdasd23241231232','user','4',NULL,'2016-05-04 00:10:42','2016-05-04 00:10:42'),(37,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-04 00:11:17','2016-05-04 00:11:17'),(38,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-04 00:13:06','2016-05-04 00:13:06'),(39,'dasdasdasd23241231232','user','4',NULL,'2016-05-04 00:13:56','2016-05-04 00:13:56'),(40,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-04 00:15:02','2016-05-04 00:15:02'),(41,'dasdasdasd23241231232','user','4',NULL,'2016-05-04 00:16:11','2016-05-04 00:16:11'),(42,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-04 00:16:19','2016-05-04 00:16:19'),(43,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:14:51','2016-05-05 05:14:51'),(44,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:15:02','2016-05-05 05:15:02'),(45,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:16:14','2016-05-05 05:16:14'),(46,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:18:02','2016-05-05 05:18:02'),(47,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:18:13','2016-05-05 05:18:13'),(48,'123clientid','client','123clientid',NULL,'2016-05-05 05:35:45','2016-05-05 05:35:45'),(49,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:35:55','2016-05-05 05:35:55'),(50,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:36:18','2016-05-05 05:36:18'),(51,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:36:31','2016-05-05 05:36:31'),(52,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:36:45','2016-05-05 05:36:45'),(53,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:36:55','2016-05-05 05:36:55'),(54,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:37:07','2016-05-05 05:37:07'),(55,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:37:43','2016-05-05 05:37:43'),(56,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:23','2016-05-05 05:38:23'),(57,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:44','2016-05-05 05:38:44'),(58,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:45','2016-05-05 05:38:45'),(59,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:46','2016-05-05 05:38:46'),(60,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:47','2016-05-05 05:38:47'),(61,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:48','2016-05-05 05:38:48'),(62,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:48','2016-05-05 05:38:48'),(63,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:49','2016-05-05 05:38:49'),(64,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:50','2016-05-05 05:38:50'),(65,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:38:52','2016-05-05 05:38:52'),(66,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:40:01','2016-05-05 05:40:01'),(67,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:42:14','2016-05-05 05:42:14'),(68,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:42:27','2016-05-05 05:42:27'),(69,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:43:57','2016-05-05 05:43:57'),(70,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 05:45:22','2016-05-05 05:45:22'),(71,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 05:46:17','2016-05-05 05:46:17'),(72,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 06:08:16','2016-05-05 06:08:16'),(73,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 06:08:39','2016-05-05 06:08:39'),(74,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 06:17:25','2016-05-05 06:17:25'),(75,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 06:17:50','2016-05-05 06:17:50'),(76,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 06:17:54','2016-05-05 06:17:54'),(77,'dasdasdasd23241231232','client','dasdasdasd23241231232',NULL,'2016-05-05 06:25:11','2016-05-05 06:25:11'),(78,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 06:25:54','2016-05-05 06:25:54'),(79,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 06:26:08','2016-05-05 06:26:08'),(80,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 08:19:19','2016-05-05 08:19:19'),(81,'dasdasdasd23241231232','user','4',NULL,'2016-05-05 08:19:41','2016-05-05 08:19:41'),(82,'123clientid','client','123clientid',NULL,'2016-05-05 08:26:27','2016-05-05 08:26:27'),(83,'dasdasdasd23241231232','user','5',NULL,'2016-05-05 08:30:38','2016-05-05 08:30:38');
/*!40000 ALTER TABLE `oauth_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('raj@gmail.com','b417931d382e64ea1c2ed0143da7f7fbcce3e1c25dd1fcae4e3d76d1c82396b9','2016-04-20 04:39:16'),('qwerty@gmail.com','e7dec55548074eaeb90fe89b705b53ef035776a3319c47ba5103ee70aabd60ec','2016-04-20 04:41:10'),('sivaji.kakileti@appitventures.com','a873aad0a222f002e878cdbb1398722f4e5e4b730743910848475201202fd27f','2016-04-21 02:07:08');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shiva','shivaatshopping@gmail.com','$2y$10$dObSQ060NexIONwDHoTLR.DIf/4DnxBaxTgkFCLO5AvaPiXoLe45K','lJUqmnZW2FrUPFxH9ltmhmsTvpXevXtM5A2NKSJSZyTiE01sdvtF3e4HJrqW','2016-04-20 02:04:34','2016-04-20 02:06:18'),(2,'shiva','sivaji.kakileti@appitventures.com','$2y$10$zWqI30WBp5S/RWT4ymDQS.6ZMH.IJxBBYLkg/Gf0VYD.ZQ4IRQsVa','jbZcE1dVuVnrGvNVaFHz1exIbtuzUeRyU2ZWcee3iHGtC0ht5hmAPTPIKHV1','2016-04-20 02:06:48','2016-04-21 02:05:43'),(3,'daya','daya@gmail.com','$2y$10$w5LeyNplonfJ1ZDd4L9xuuo7J.ka6p7W7KszLS5ufh/i0FRowzNC6',NULL,'2016-04-20 02:10:55','2016-04-20 02:10:55'),(4,'qwerty','qwerty@gmail.com','$2y$10$afK/zpeOi8wYjXkkJCL6weQ/eVTP34dB8XCAhsaDph6Ws9DS/PdBy','9bmaF0U71eKaqbFhKliW3PQaAXHBFceCP0GlXOzn1BafYin1AmcDPcBFQyQJ','2016-04-22 08:51:06','2016-04-22 08:51:50'),(5,'hello','hello@gmail.com','$2y$10$QLSFu4bHnq3TSoQg/huuI.xFR6hXYT8ZIplhZU1LYjGUGU26KcSwG','1fsw4EaD1EHxIKpgc10QUgDkVHPXS7qnR8Is4hOETDe0XOIf2MIijGYJZhTL','2016-05-05 08:30:16','2016-05-05 08:30:18'),(6,'test','test@gmail.com','$2y$10$cKUXiVgyCaS.D1.ml8rNG.QqQBSj0wIue0V7f3wt2H9ZAumXp3Shi','qCh3YI7H41Ku6QWX2wPQkkx4w2k2P8Inp3j0PmAs5LWoOngJEpKCnpnf9UKN','2016-05-06 00:51:23','2016-05-06 00:51:27'),(7,'test','test1234@gmail.com','$2y$10$2QAB4GYkQARKA.gQEiP.uOlrf7H3l.x52BfxIbo518zSZ5sqlivLi','Wgkw4LwmyNqc9zCYzGvZBjB70At9nQDgy0j6wNZoDhGUSrnjW5sI5xZ3a3hh','2016-05-06 04:26:35','2016-05-06 04:30:02'),(8,'admin','admin@gmail.com','$2y$10$O3FXIAfh4VEi7Vy4d9.CE.Hvl3jv4.v/.Dg5x0mOQnjGq8cJjbPrm','4KzyeqM9SVyQPtOhX3Lk2O47WwNtB4LUwrNmE34jq8JaE6DzdBuF5C3fujmb','2016-06-17 07:21:49','2016-06-17 08:04:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'forret'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-17 20:28:59
