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

CREATE TABLE IF NOT EXISTS `actions` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=107 ;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `action`, `uri`, `method`, `description`, `messages`, `payload`, `user_id`, `session`, `currentMember`, `created_at`, `updated_at`) VALUES
  (1, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'd78c647909926eac23eed0dba8e70d408707b975', NULL, '2014-06-17 20:26:48', '2014-06-17 20:26:48'),
  (2, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, 'bddcc1b47a1bfab88c056ccbeef17830f3edf253', NULL, '2014-06-17 20:26:48', '2014-06-17 20:26:48'),
  (3, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, '3b4df169f6a4c1b9f21a547cfe0b87b1c77de93d', NULL, '2014-06-17 20:26:50', '2014-06-17 20:26:50'),
  (4, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, '228b44f1ca96818195c6b8364a583f2f6c30d637', NULL, '2014-06-17 20:26:51', '2014-06-17 20:26:51'),
  (5, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '7d93d063014e37966bdbaa911f991245df45cef8', NULL, '2014-06-17 20:26:52', '2014-06-17 20:26:52'),
  (6, 'API query', 'api/users/1', 'GET', NULL, NULL, NULL, 1, '7d93d063014e37966bdbaa911f991245df45cef8', NULL, '2014-06-17 20:26:53', '2014-06-17 20:26:53'),
  (7, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '1c79b47237d63b798bfbe79394923a2953f7efe5', NULL, '2014-06-17 20:26:53', '2014-06-17 20:26:53'),
  (8, 'API query', 'api/users/2', 'GET', NULL, NULL, NULL, 1, '1c79b47237d63b798bfbe79394923a2953f7efe5', NULL, '2014-06-17 20:26:54', '2014-06-17 20:26:54'),
  (9, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '94b902058f5eeb637c4e7c406f0ea30d4e431402', NULL, '2014-06-17 20:26:55', '2014-06-17 20:26:55'),
  (10, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '39e8272d3ffa0930ab5c3b3d2aee91c3586081ea', NULL, '2014-06-17 20:26:55', '2014-06-17 20:26:55'),
  (11, 'API query', 'api/users/8', 'DELETE', NULL, NULL, NULL, 2, '39e8272d3ffa0930ab5c3b3d2aee91c3586081ea', NULL, '2014-06-17 20:26:56', '2014-06-17 20:26:56'),
  (12, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '9d370ccb06959456d4ce1ea4616a1ac213231cd9', NULL, '2014-06-17 20:26:56', '2014-06-17 20:26:56'),
  (13, 'API query', 'api/users/8/undestroy', 'GET', NULL, NULL, NULL, 2, '9d370ccb06959456d4ce1ea4616a1ac213231cd9', NULL, '2014-06-17 20:27:07', '2014-06-17 20:27:07'),
  (14, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '9846350abf1a4a77d17fad76d4192919ccab2a52', NULL, '2014-06-17 20:27:07', '2014-06-17 20:27:07'),
  (15, 'API query', 'api/users/1', 'PUT', NULL, NULL, NULL, 1, '9846350abf1a4a77d17fad76d4192919ccab2a52', NULL, '2014-06-17 20:27:07', '2014-06-17 20:27:07'),
  (16, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '1b09a304b04e4e4bd371de6bff50732495ec9662', NULL, '2014-06-17 20:27:08', '2014-06-17 20:27:08'),
  (17, 'API query', 'admin/login', 'POST', NULL, NULL, NULL, 2, '77f6b4f433efe1ce4304ae85997c04c20170207b', NULL, '2014-06-23 06:42:53', '2014-06-23 06:42:53'),
  (18, 'API query', 'admin/logout', 'GET', NULL, NULL, NULL, NULL, '77f6b4f433efe1ce4304ae85997c04c20170207b', NULL, '2014-06-23 06:53:42', '2014-06-23 06:53:42'),
  (19, 'API query', 'admin/login', 'POST', NULL, NULL, NULL, 2, '77f6b4f433efe1ce4304ae85997c04c20170207b', NULL, '2014-06-23 06:54:15', '2014-06-23 06:54:15'),
  (20, 'API query', 'admin/users', 'GET', NULL, NULL, NULL, 2, '77f6b4f433efe1ce4304ae85997c04c20170207b', NULL, '2014-06-23 07:05:57', '2014-06-23 07:05:57'),
  (21, 'API query', 'admin/users', 'GET', NULL, NULL, NULL, 2, '77f6b4f433efe1ce4304ae85997c04c20170207b', NULL, '2014-06-23 07:07:33', '2014-06-23 07:07:33'),
  (22, 'API query', 'admin/logout', 'GET', NULL, NULL, NULL, NULL, '77f6b4f433efe1ce4304ae85997c04c20170207b', NULL, '2014-06-23 07:07:41', '2014-06-23 07:07:41'),
  (23, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '19b1f0f42495fb1fb3fa2f39e464ca6fce2a0213', NULL, '2014-06-23 13:19:17', '2014-06-23 13:19:17'),
  (24, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'cd7a251aff3783304dd1c55082d027ec8f3870b8', NULL, '2014-06-23 13:19:30', '2014-06-23 13:19:30'),
  (25, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '62c37fb0e23e24421ffb4b6a60adaf86347f67ee', NULL, '2014-06-23 13:19:31', '2014-06-23 13:19:31'),
  (26, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, '074b44ba66b8e5e8818a1020c8d6459b368615c1', NULL, '2014-06-23 13:19:34', '2014-06-23 13:19:34'),
  (27, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, '84b9268b69493e6e023aa2e4c60e9cffc3b2b9c5', NULL, '2014-06-23 13:19:35', '2014-06-23 13:19:35'),
  (28, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'f468cc902c056221c09653ac49752e7d9cb53e9c', NULL, '2014-06-23 13:19:42', '2014-06-23 13:19:42'),
  (29, 'API query', 'api/users/1', 'GET', NULL, NULL, NULL, 1, 'f468cc902c056221c09653ac49752e7d9cb53e9c', NULL, '2014-06-23 13:19:42', '2014-06-23 13:19:42'),
  (30, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '5217f21fc1dfef3d176a1e16a943db08142db7bc', NULL, '2014-06-23 13:19:45', '2014-06-23 13:19:45'),
  (31, 'API query', 'api/users/2', 'GET', NULL, NULL, NULL, 1, '5217f21fc1dfef3d176a1e16a943db08142db7bc', NULL, '2014-06-23 13:19:45', '2014-06-23 13:19:45'),
  (32, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'ef9ee926d1cc206ba8fe8bd9480ad792e25ab2a5', NULL, '2014-06-23 13:19:46', '2014-06-23 13:19:46'),
  (33, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, 'd9536416ccf6a7220340211e84ffbf9f71658eba', NULL, '2014-06-23 13:19:47', '2014-06-23 13:19:47'),
  (34, 'API query', 'api/users/8', 'DELETE', NULL, NULL, NULL, 2, 'd9536416ccf6a7220340211e84ffbf9f71658eba', NULL, '2014-06-23 13:19:47', '2014-06-23 13:19:47'),
  (35, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '55473417313ff5396b5b47921f91fdf1327f6f19', NULL, '2014-06-23 13:19:48', '2014-06-23 13:19:48'),
  (36, 'API query', 'api/users/8/undestroy', 'GET', NULL, NULL, NULL, 2, '55473417313ff5396b5b47921f91fdf1327f6f19', NULL, '2014-06-23 13:19:49', '2014-06-23 13:19:49'),
  (37, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'eaa566b050c68750258eb690084919162ec24c3d', NULL, '2014-06-23 13:19:50', '2014-06-23 13:19:50'),
  (38, 'API query', 'api/users/1', 'PUT', NULL, NULL, NULL, 1, 'eaa566b050c68750258eb690084919162ec24c3d', NULL, '2014-06-23 13:19:50', '2014-06-23 13:19:50'),
  (39, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '06b5df4ee234c9735938f1eaf7adbeb16eaff5a1', NULL, '2014-06-23 13:19:53', '2014-06-23 13:19:53'),
  (40, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '4bbba08213bebcf7cfe9beeebb9471193e0dc24f', NULL, '2014-06-23 13:35:29', '2014-06-23 13:35:29'),
  (41, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '95aa7502828b6edb252c7bb0bd5c7def4447d2cc', NULL, '2014-06-23 13:35:33', '2014-06-23 13:35:33'),
  (42, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, 'c91a0a57f52dbf833bd4b8cef37eb6daad9809c9', NULL, '2014-06-23 13:35:36', '2014-06-23 13:35:36'),
  (43, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, '1b526802d2e0bbe51fd8dd9656842dada0eb8319', NULL, '2014-06-23 13:35:37', '2014-06-23 13:35:37'),
  (44, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '5be5813cc748eaf3ee6824efb13e63723786d135', NULL, '2014-06-23 13:35:42', '2014-06-23 13:35:42'),
  (45, 'API query', 'api/users/1', 'GET', NULL, NULL, NULL, 1, '5be5813cc748eaf3ee6824efb13e63723786d135', NULL, '2014-06-23 13:35:43', '2014-06-23 13:35:43'),
  (46, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'fdf596ce0b61969153c4efe2579fb43f13d06c1f', NULL, '2014-06-23 13:35:45', '2014-06-23 13:35:45'),
  (47, 'API query', 'api/users/2', 'GET', NULL, NULL, NULL, 1, 'fdf596ce0b61969153c4efe2579fb43f13d06c1f', NULL, '2014-06-23 13:35:45', '2014-06-23 13:35:45'),
  (48, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '8e24d6be52b2140a15ee7f6658898a9c0074aae6', NULL, '2014-06-23 13:35:46', '2014-06-23 13:35:46'),
  (49, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '72ab1dd0bb2c25a699ee1925be586db0ddec8249', NULL, '2014-06-23 13:35:49', '2014-06-23 13:35:49'),
  (50, 'API query', 'api/users/8', 'DELETE', NULL, NULL, NULL, 2, '72ab1dd0bb2c25a699ee1925be586db0ddec8249', NULL, '2014-06-23 13:35:49', '2014-06-23 13:35:49'),
  (51, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '6dfd0468638a03ee95fc658518263a1bb4d11d7b', NULL, '2014-06-23 13:35:51', '2014-06-23 13:35:51'),
  (52, 'API query', 'api/users/8/undestroy', 'GET', NULL, NULL, NULL, 2, '6dfd0468638a03ee95fc658518263a1bb4d11d7b', NULL, '2014-06-23 13:35:52', '2014-06-23 13:35:52'),
  (53, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '40066deec50f27d2bd88ac2de1c1e109e8654eda', NULL, '2014-06-23 13:35:53', '2014-06-23 13:35:53'),
  (54, 'API query', 'api/users/1', 'PUT', NULL, NULL, NULL, 1, '40066deec50f27d2bd88ac2de1c1e109e8654eda', NULL, '2014-06-23 13:36:01', '2014-06-23 13:36:01'),
  (55, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '3146cc6d6b235319d6d4529b6308e387eb6a2c73', NULL, '2014-06-23 13:36:02', '2014-06-23 13:36:02'),
  (56, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '4938ad0e645dd7546c6d246d9398d04704afcf95', NULL, '2014-06-23 13:36:35', '2014-06-23 13:36:35'),
  (57, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, 'f2d6666ae5e4235ba88d987d13b38c4c80bf38a0', NULL, '2014-06-23 13:36:38', '2014-06-23 13:36:38'),
  (58, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, 'e32d01c544e3bf74b6d27172f593755a4905955b', NULL, '2014-06-23 13:36:39', '2014-06-23 13:36:39'),
  (59, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, 'c919ed19907fdcdff1bd9a3ec30cafe7d1c61e37', NULL, '2014-06-23 13:36:43', '2014-06-23 13:36:43'),
  (60, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'ab18e40883e4a222970ed12ea4fbe36c8cad38a0', NULL, '2014-06-23 13:36:50', '2014-06-23 13:36:50'),
  (61, 'API query', 'api/users/1', 'GET', NULL, NULL, NULL, 1, 'ab18e40883e4a222970ed12ea4fbe36c8cad38a0', NULL, '2014-06-23 13:36:50', '2014-06-23 13:36:50'),
  (62, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'c17d75077dafcc60c708b67cca6b699c12e15771', NULL, '2014-06-23 13:36:51', '2014-06-23 13:36:51'),
  (63, 'API query', 'api/users/2', 'GET', NULL, NULL, NULL, 1, 'c17d75077dafcc60c708b67cca6b699c12e15771', NULL, '2014-06-23 13:36:51', '2014-06-23 13:36:51'),
  (64, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '92107156314a2c9190d815c79296effc5fff1ffd', NULL, '2014-06-23 13:36:52', '2014-06-23 13:36:52'),
  (65, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '7d332383e0cd967dad62e8ee95780d3491ec8cd8', NULL, '2014-06-23 13:36:53', '2014-06-23 13:36:53'),
  (66, 'API query', 'api/users/8', 'DELETE', NULL, NULL, NULL, 2, '7d332383e0cd967dad62e8ee95780d3491ec8cd8', NULL, '2014-06-23 13:36:54', '2014-06-23 13:36:54'),
  (67, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '73742b16b692ebb552d65308887a73c34ea56129', NULL, '2014-06-23 13:36:54', '2014-06-23 13:36:54'),
  (68, 'API query', 'api/users/8/undestroy', 'GET', NULL, NULL, NULL, 2, '73742b16b692ebb552d65308887a73c34ea56129', NULL, '2014-06-23 13:36:56', '2014-06-23 13:36:56'),
  (69, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'a6e756914d716ff54f3a81fc1aac551305cda09d', NULL, '2014-06-23 13:36:57', '2014-06-23 13:36:57'),
  (70, 'API query', 'api/users/1', 'PUT', NULL, NULL, NULL, 1, 'a6e756914d716ff54f3a81fc1aac551305cda09d', NULL, '2014-06-23 13:36:57', '2014-06-23 13:36:57'),
  (71, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'dcfe39d4ae154ae5f1e624b3c5496bf68070cdeb', NULL, '2014-06-23 13:36:59', '2014-06-23 13:36:59'),
  (72, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '1631c86cbdc0c7adbe80b5466b75ae7054d6407c', NULL, '2014-06-23 13:39:11', '2014-06-23 13:39:11'),
  (73, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '4e7a69bb2b091b9a55febe2a8a9c48eb5595a06f', NULL, '2014-06-23 13:39:13', '2014-06-23 13:39:13'),
  (74, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, 'ee090afd06ae049870c1241e5e379f16c6390b61', NULL, '2014-06-23 13:39:17', '2014-06-23 13:39:17'),
  (75, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, 'c99782dbd2924b1645e390cee835889db9e3072f', NULL, '2014-06-23 13:39:32', '2014-06-23 13:39:32'),
  (76, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '931a758a9902754b905aa89e4cf69afbd5974e6f', NULL, '2014-06-23 13:39:47', '2014-06-23 13:39:47'),
  (77, 'API query', 'api/users/1', 'GET', NULL, NULL, NULL, 1, '931a758a9902754b905aa89e4cf69afbd5974e6f', NULL, '2014-06-23 13:39:48', '2014-06-23 13:39:48'),
  (78, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'c48a2cc0500a431359aa2c99c84ff4ff6bea3a43', NULL, '2014-06-23 13:39:51', '2014-06-23 13:39:51'),
  (79, 'API query', 'api/users/2', 'GET', NULL, NULL, NULL, 1, 'c48a2cc0500a431359aa2c99c84ff4ff6bea3a43', NULL, '2014-06-23 13:39:51', '2014-06-23 13:39:51'),
  (80, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'e18093a2b8f1d7ddddc597fe2b357e27bb79bff1', NULL, '2014-06-23 13:39:53', '2014-06-23 13:39:53'),
  (81, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, 'c96bef8e93d6459e210c8f857d083e473c72dc6c', NULL, '2014-06-23 13:39:54', '2014-06-23 13:39:54'),
  (82, 'API query', 'api/users/8', 'DELETE', NULL, NULL, NULL, 2, 'c96bef8e93d6459e210c8f857d083e473c72dc6c', NULL, '2014-06-23 13:39:55', '2014-06-23 13:39:55'),
  (83, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '06630c420636a2bb310901e455a0ead4044beb0b', NULL, '2014-06-23 13:39:56', '2014-06-23 13:39:56'),
  (84, 'API query', 'api/users/8/undestroy', 'GET', NULL, NULL, NULL, 2, '06630c420636a2bb310901e455a0ead4044beb0b', NULL, '2014-06-23 13:40:03', '2014-06-23 13:40:03'),
  (85, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '2b06ef2ca2643f4d26a701e19e3d66aae0f0393f', NULL, '2014-06-23 13:40:05', '2014-06-23 13:40:05'),
  (86, 'API query', 'api/users/1', 'PUT', NULL, NULL, NULL, 1, '2b06ef2ca2643f4d26a701e19e3d66aae0f0393f', NULL, '2014-06-23 13:40:06', '2014-06-23 13:40:06'),
  (87, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '578e71d1cb1741c043063b94436415a67d4e6245', NULL, '2014-06-23 13:40:07', '2014-06-23 13:40:07'),
  (88, 'API query', 'admin/login', 'POST', NULL, NULL, NULL, 2, 'd147f7f117824aa0e968d9b14077c3dfcb790f2f', NULL, '2014-06-23 14:08:10', '2014-06-23 14:08:10'),
  (89, 'API query', 'admin/users', 'GET', NULL, NULL, NULL, 2, 'd147f7f117824aa0e968d9b14077c3dfcb790f2f', NULL, '2014-06-23 14:08:17', '2014-06-23 14:08:17'),
  (90, 'API query', 'admin/users', 'GET', NULL, NULL, NULL, 2, 'd147f7f117824aa0e968d9b14077c3dfcb790f2f', NULL, '2014-06-23 14:09:14', '2014-06-23 14:09:14'),
  (91, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'ca5b5a90888ebda160228f69463731a62d39c52e', NULL, '2014-06-23 14:11:39', '2014-06-23 14:11:39'),
  (92, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '4a096d6ffc3b48a5edccbe5a2989eb902ec099e8', NULL, '2014-06-23 14:11:40', '2014-06-23 14:11:40'),
  (93, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, 'b9674242257fe0feebdfd519a4e4764d88b99a85', NULL, '2014-06-23 14:11:42', '2014-06-23 14:11:42'),
  (94, 'API query', 'api/users', 'POST', NULL, NULL, NULL, NULL, '7f0cb292eccf09b24e89e6e551efa48d365c4fd4', NULL, '2014-06-23 14:11:43', '2014-06-23 14:11:43'),
  (95, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '794ad2341b09009817868b3653532d4389588921', NULL, '2014-06-23 14:11:50', '2014-06-23 14:11:50'),
  (96, 'API query', 'api/users/1', 'GET', NULL, NULL, NULL, 1, '794ad2341b09009817868b3653532d4389588921', NULL, '2014-06-23 14:11:51', '2014-06-23 14:11:51'),
  (97, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '21a91e23320091b7807c550471296aec0939492d', NULL, '2014-06-23 14:11:52', '2014-06-23 14:11:52'),
  (98, 'API query', 'api/users/2', 'GET', NULL, NULL, NULL, 1, '21a91e23320091b7807c550471296aec0939492d', NULL, '2014-06-23 14:11:53', '2014-06-23 14:11:53'),
  (99, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, '761b57291c4ba6c1eb8cbf35fe06605bd202e8ca', NULL, '2014-06-23 14:11:54', '2014-06-23 14:11:54'),
  (100, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, '00e0e358e9be415b107d74c0ec95729100ad2f1b', NULL, '2014-06-23 14:11:57', '2014-06-23 14:11:57'),
  (101, 'API query', 'api/users/8', 'DELETE', NULL, NULL, NULL, 2, '00e0e358e9be415b107d74c0ec95729100ad2f1b', NULL, '2014-06-23 14:11:59', '2014-06-23 14:11:59'),
  (102, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 2, 'c8ef1abbb2cff27454be98051c717f34d1e61b70', NULL, '2014-06-23 14:12:02', '2014-06-23 14:12:02'),
  (103, 'API query', 'api/users/8/undestroy', 'GET', NULL, NULL, NULL, 2, 'c8ef1abbb2cff27454be98051c717f34d1e61b70', NULL, '2014-06-23 14:12:04', '2014-06-23 14:12:04'),
  (104, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'd0164c42134956f2575a59b68144ad09ab53fc46', NULL, '2014-06-23 14:12:04', '2014-06-23 14:12:04'),
  (105, 'API query', 'api/users/1', 'PUT', NULL, NULL, NULL, 1, 'd0164c42134956f2575a59b68144ad09ab53fc46', NULL, '2014-06-23 14:12:05', '2014-06-23 14:12:05'),
  (106, 'API query', 'api/sessions', 'POST', NULL, NULL, NULL, 1, 'cdd308891ab09cb8d2e022ef2be2ece90d28f78e', NULL, '2014-06-23 14:12:07', '2014-06-23 14:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `deleted_at`, `created_at`, `updated_at`) VALUES
  (1, 'Users', '{"user":1}', NULL, '2014-06-17 20:22:04', '2014-06-17 20:22:04'),
  (2, 'Admins', '{"user":1,"admin":1}', NULL, '2014-06-17 20:22:04', '2014-06-17 20:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php_sapi_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
  ('2012_12_06_225921_create_users_table', 1),
  ('2012_12_06_225929_create_groups_table', 1),
  ('2012_12_06_225945_create_groups_users_table', 1),
  ('2012_12_06_225988_create_throttle_table', 1),
  ('2014_04_07_214414_create_log_table', 1),
  ('2014_04_26_122314_create_Actions_table', 1),
  ('2014_04_28_152153_create_sessions_table', 1),
  ('2014_06_23_132741_create_tracker_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE IF NOT EXISTS `throttle` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
  (1, 1, '127.0.0.1', 0, 0, 0, NULL, NULL, NULL),
  (2, 2, '127.0.0.1', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `remember_token`, `email`, `first_name`, `last_name`, `profile_image`, `password`, `phone_number`, `address1`, `address2`, `city`, `state`, `zip`, `locked`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
  (1, NULL, 'user@forret.com', 'Ernestine', 'Mante', NULL, '$2y$10$3Q43Ppli8kIdDFAm1zcmKe9QVioF4sPupqiVnVtIRVDBqXcH1DwGC', NULL, NULL, NULL, 'South Floridaton', NULL, NULL, 0, NULL, 1, NULL, '2014-06-17 20:22:04', '2014-06-23 14:12:06', '$2y$10$uIJ8bDTAPa17H7D..9oXbOiZPo.LXGf.ukzQNl9.MI.ST/TIcjE42', NULL, NULL, '2014-06-17 20:22:04', '2014-06-23 14:12:06'),
  (2, NULL, 'admin@forret.com', 'Emmett', 'Leffler', NULL, '$2y$10$41xBCIkB7hOkHNv3BZP/Q.kIjDUrVYlNcQAQDrkoajH/m/ozuVmG2', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2014-06-17 20:22:04', '2014-06-23 14:12:01', '$2y$10$4xtK0pHwDim5C9n5YWqpU.NX9xUmG3cFk9wI0SCTah4gIclz6bsMW', NULL, NULL, '2014-06-17 20:22:04', '2014-06-23 14:12:01'),
  (3, NULL, 'nickolas98@hotmail.com', 'Jarvis', 'Bosco', NULL, '$2y$10$gF8rcrUTvqKNDaY0bqI/Quov07XnFuVgqaF3YkDAviqNMGXRrNRoG', '497-894-6523x669', '5910 Reid Meadow Suite 968', NULL, 'Leathatown', 'CO', '51640-3494', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:04', '2014-06-17 20:22:04'),
  (4, NULL, 'albert.beer@yahoo.com', 'Dawn', 'Koelpin', NULL, '$2y$10$SWfUU42eeFuj/cXZubGva.8HJadcfnOjSa4fN57bCFlHe0J7UzIfi', '790.836.1756', '4724 Dickens Estate Apt. 605', NULL, 'West Lia', 'CO', '47013', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:04', '2014-06-17 20:22:04'),
  (5, NULL, 'west.neva@johns.com', 'Glenna', 'Bosco', NULL, '$2y$10$.ESzF6QzCtin6FajuQUPJ.5H7M.IOheYvM.d3AVswTyDEzkapBdo.', '(666)638-4171x36253', '198 Morton Lock Apt. 762', NULL, 'Lake Nikolasshire', 'CO', '80136', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:04', '2014-06-17 20:22:04'),
  (6, NULL, 'gia71@hotmail.com', 'Maynard', 'Bernhard', NULL, '$2y$10$iN3NgK51lgd7V8JIDjdWAejKut3XLxLG2sLiZNKVI8EzqQ.lL.Fjy', '1-141-871-4379', '263 Orland Station', NULL, 'Domenickshire', 'CO', '06378-4615', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:05', '2014-06-17 20:22:05'),
  (7, NULL, 'boyd.doyle@reichert.info', 'Domenico', 'Gulgowski', NULL, '$2y$10$u63MIhO6VGxv5uPmKDlrjOdOp5SVRedLh1n/VdnaW1ALm4GpdKqiy', '200.808.6142', '7121 Nickolas Trail', NULL, 'East Deshaun', 'CO', '42081-5841', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:05', '2014-06-17 20:22:05'),
  (8, NULL, 'marques.douglas@carter.com', 'Valentin', 'Hettinger', NULL, '$2y$10$FNzzU65wtpf/7.55yLTzEe.uOQQ./7OaCQ8exwMOKwMwWE8joR0je', '1-335-144-0395', '4023 Clay Knoll Suite 616', NULL, 'South Paris', 'CO', '36730-5799', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:05', '2014-06-23 14:12:04'),
  (9, NULL, 'philip34@botsfordbednar.info', 'Sherwood', 'Kub', NULL, '$2y$10$5qxUQ6MbsfFVK60DnA2leelM8.kIZhudTLehA.ZQVrCZCK3Nf0knC', '1-549-882-7933x4841', '72381 Chad Knolls', NULL, 'Brayanhaven', 'CO', '55980-1230', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:06', '2014-06-17 20:22:06'),
  (10, NULL, 'karine77@hudsonwolff.com', 'Citlalli', 'Stehr', NULL, '$2y$10$PtZlopLdRqHRelCuivgfxegHuYwV5uKpzXuXVihBQfGHeHscXgyjy', '+21(3)3775073084', '5704 Douglas Freeway Suite 184', NULL, 'Andyport', 'CO', '59520-7956', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:06', '2014-06-17 20:22:06'),
  (11, NULL, 'imoore@hotmail.com', 'Karelle', 'Medhurst', NULL, '$2y$10$9yDs9AoLQ0Z4q3G9Z0IiMeK0JfKMxmiUdNuJXqzu.dgBmetux9u3m', '586-044-1929x86222', '943 Mohammed Harbors', NULL, 'West Porter', 'CO', '05042', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:06', '2014-06-17 20:22:06'),
  (12, NULL, 'raul34@jenkins.com', 'Manley', 'Osinski', NULL, '$2y$10$K0eG6EppWoaavK4AC6Ew2ev7s9kavvTwVylNddQNm56RGsigT0z0u', '653.015.4482', '641 Kyla Spring Apt. 399', NULL, 'Schusterland', 'CO', '51110-0263', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-17 20:22:06', '2014-06-17 20:22:06'),
  (13, NULL, 'harber.marley@fadel.org', 'Ernestina', 'Mosciski', NULL, '$2y$10$ajXUyKk.MpCX/rS.hs8jSuFeXkbsHNNNOjpDtiE2xGqEFq4oPHnFO', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'b1NpN042Ozzg4FtBc1VfvSrdRXwGU2xHiIbsoJTSOe', '2014-06-17 20:26:50', NULL, NULL, NULL, NULL, '2014-06-17 20:26:50', '2014-06-17 20:26:50'),
  (14, NULL, 'hope.cormier@bauch.com', 'Dillon', 'Walker', NULL, '$2y$10$JWrG8MRcSMaavA3r7bKj/.CgdxcsnJ0rxad7QKU5oqFdSXyUDIxI6', '989.121.8939x583', '785 Langworth Locks\nWillmsside, VT 27824-2215', NULL, 'Erdmanland', 'MT', '86982', 0, NULL, 1, '41cSbEw2tkBRlpZxG1Q8GocyJhvpuzYfoxFIC4EHRq', '2014-06-17 20:26:51', NULL, NULL, NULL, NULL, '2014-06-17 20:26:51', '2014-06-17 20:26:51'),
  (15, NULL, 'ljast@wuckert.org', 'Keshaun', 'Abbott', NULL, '$2y$10$mAXdtRrt4sNldsALULQf9OnshA4wXYEq4YktICahEvixAyKCsQe1W', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'a5vCiRRGktqIr6UJWNDvKxFdewMWAnnI0B4e8ldada', '2014-06-23 13:19:34', NULL, NULL, NULL, NULL, '2014-06-23 13:19:34', '2014-06-23 13:19:34'),
  (16, NULL, 'lelah.hauck@yahoo.com', 'Doris', 'Hauck', NULL, '$2y$10$dl7ZnRYXmkSZJEjrSJhdmukf50CgMMdJFr1xVC7VjPnW3DAdSIaIW', '(566)855-9124x5757', '409 Itzel Inlet Suite 197\nLake Justice, MT 71308-5598', NULL, 'Mraztown', 'NH', '49757-6790', 0, NULL, 1, 'E7KU0r8Wn5fWlxctt8EGZ5tUlVc5PbWblq1n9Hhn5p', '2014-06-23 13:19:35', NULL, NULL, NULL, NULL, '2014-06-23 13:19:34', '2014-06-23 13:19:35'),
  (17, NULL, 'rubye.kovacek@west.com', 'Rickey', 'Hamill', NULL, '$2y$10$lwKCTmrb.jArJnaR1ycVp..Y1puDYvTfzjXXodz1gCGRum/4ZoQ7.', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'pQGRMgaSdUHHm4w9KpZTXxKHARXcCGKVR17yJfBFZb', '2014-06-23 13:35:36', NULL, NULL, NULL, NULL, '2014-06-23 13:35:36', '2014-06-23 13:35:36'),
  (18, NULL, 'anne17@breitenberg.com', 'Jeramy', 'Bashirian', NULL, '$2y$10$eoeQXqDWkF4UFRZroQbP/eZJLzdU3izTcKyxHy9x0PDFgxolH7dpG', '+75(5)3017428792', '90733 Hahn Skyway Suite 906\nGrantstad, NV 57831-7238', NULL, 'Wardville', 'AR', '87068', 0, NULL, 1, 'lQ1X0pshPShCAD1WuqzCQKQIXExTPtCNZC6JE1h2zy', '2014-06-23 13:35:37', NULL, NULL, NULL, NULL, '2014-06-23 13:35:37', '2014-06-23 13:35:37'),
  (19, NULL, 'trycia48@jacobsondibbert.info', 'Jolie', 'Paucek', NULL, '$2y$10$als6W4wAdydjzlfoAuVFRepCNQrt.wobHLZYbg06Rc.ok7B578yl6', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'nfaCcD2zmGXBBPUIg5updULu1oOgvoBFoUXv5HxeLK', '2014-06-23 13:36:39', NULL, NULL, NULL, NULL, '2014-06-23 13:36:39', '2014-06-23 13:36:39'),
  (20, NULL, 'gulgowski.brendon@gmail.com', 'Shirley', 'Armstrong', NULL, '$2y$10$FfobH7qhoVH4mpoEgfQ8jebjPgs7MstgqdfgmyDnMn1ZU0IOVwNX6', '(399)340-0559', '52306 Mayert Lock Apt. 444\nSouth May, NE 85425-0916', NULL, 'Johnsburgh', 'IN', '25919', 0, NULL, 1, 'WreYe9MDEmEXWG16TY2DxHS5gll3nhWpxvc7CloZXW', '2014-06-23 13:36:42', NULL, NULL, NULL, NULL, '2014-06-23 13:36:39', '2014-06-23 13:36:42'),
  (21, NULL, 'gskiles@yahoo.com', 'Dewitt', 'Schneider', NULL, '$2y$10$AKRsnc8dVT0vuGV3gdUDYeK.h8t04a0lDnwkBkZ2YSOSyvkwoPDwW', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'GYcjnA1yjX4tazvkpg2UOpG56w4hTunidb9cTsn0uu', '2014-06-23 13:39:17', NULL, NULL, NULL, NULL, '2014-06-23 13:39:15', '2014-06-23 13:39:17'),
  (22, NULL, 'mortiz@hotmail.com', 'Ivy', 'Rutherford', NULL, '$2y$10$qB5Ww2IKUb7mWI6Rmgcrj.3y/MaM5wXAl8S/8l3VtDyFrt.Bc4piG', '(744)317-1244x19870', '728 Jasmin Parks\nElnaland, TN 29060-0463', NULL, 'East Jammie', 'CA', '58341-4414', 0, NULL, 1, '1QnJQuhZAK9aTBqB6fRwvBFgc5vt7U1iP7untsU2gU', '2014-06-23 13:39:27', NULL, NULL, NULL, NULL, '2014-06-23 13:39:18', '2014-06-23 13:39:27'),
  (23, NULL, 'johnathan.ritchie@gmail.com', 'Providenci', 'Quigley', NULL, '$2y$10$me1wRE86D9fXUcNyZ6F9EOFz7OEUrHzdPw/HAKpqIGSIC8xZfjlOS', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'WaoNMEtElF7H6ulx46PawgpH9yMzxAsoHDOhDXxdUL', '2014-06-23 14:11:42', NULL, NULL, NULL, NULL, '2014-06-23 14:11:42', '2014-06-23 14:11:42'),
  (24, NULL, 'vern74@hotmail.com', 'Adrianna', 'Langworth', NULL, '$2y$10$GZNyuJP1UMW3mv0gVIHoj.6OxV/RlW4drwivwVZdjvOnhvjs8L5Qu', '454-303-9380', '063 Fahey Place Apt. 682\nVicentashire, NE 06403-4725', NULL, 'South Ivyborough', 'CO', '31458-3517', 0, NULL, 1, 'ituRQb1kWqiTxJvar1d726Csx4uPLsXo4CVIiwCN4P', '2014-06-23 14:11:43', NULL, NULL, NULL, NULL, '2014-06-23 14:11:43', '2014-06-23 14:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
  (1, 1),
  (2, 1),
  (2, 2),
  (3, 1),
  (4, 1),
  (5, 1),
  (6, 1),
  (7, 1),
  (9, 1),
  (10, 1),
  (11, 1),
  (12, 1),
  (13, 1),
  (14, 1),
  (15, 1),
  (16, 1),
  (17, 1),
  (18, 1),
  (19, 1),
  (20, 1),
  (21, 1),
  (22, 1),
  (23, 1),
  (24, 1);
