CREATE DATABASE  IF NOT EXISTS `tfsolutions_quickglance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tfsolutions_quickglance`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: tfsolutions_quickglance
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `appointment_statuses`
--

DROP TABLE IF EXISTS `appointment_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_statuses`
--

LOCK TABLES `appointment_statuses` WRITE;
/*!40000 ALTER TABLE `appointment_statuses` DISABLE KEYS */;
INSERT INTO `appointment_statuses` VALUES (1,'2021-02-19 04:08:37',1,1,'2021-02-18 22:38:33','2021-02-18 22:38:37','scheduled'),(2,NULL,1,1,'2021-02-18 22:38:51','2021-02-18 22:38:51','cancelled');
/*!40000 ALTER TABLE `appointment_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `appointment_status` int DEFAULT NULL,
  `patient` int DEFAULT NULL,
  `staff_entity` int DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  `notes` longtext,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(10,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}','object','',''),(11,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(12,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(13,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(19,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(20,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(21,'model_def_application::staff-category.staff-category','{\"uid\":\"application::staff-category.staff-category\",\"collectionName\":\"staff_categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"staff_category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"description\":{\"type\":\"richtext\"},\"code\":{\"type\":\"string\",\"unique\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(22,'plugin_content_manager_configuration_content_types::application::staff-category.staff-category','{\"uid\":\"application::staff-category.staff-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"code\",\"published_at\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]]}}','object','',''),(23,'model_def_application::staffentity.staffentity','{\"uid\":\"application::staffentity.staffentity\",\"collectionName\":\"staffentities\",\"kind\":\"collectionType\",\"info\":{\"name\":\"staff_entity\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"first_name\":{\"type\":\"string\"},\"middle_name\":{\"type\":\"string\"},\"last_name\":{\"type\":\"string\"},\"gender\":{\"type\":\"enumeration\",\"enum\":[\"male\",\"female\",\"bisexual\"]},\"staff_category\":{\"model\":\"staff-category\"},\"staff_patient_associations\":{\"via\":\"staff_entity\",\"collection\":\"staff-patient-association\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(24,'plugin_content_manager_configuration_content_types::application::staffentity.staffentity','{\"uid\":\"application::staffentity.staffentity\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"first_name\",\"defaultSortBy\":\"first_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"first_name\":{\"edit\":{\"label\":\"First_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"First_name\",\"searchable\":true,\"sortable\":true}},\"middle_name\":{\"edit\":{\"label\":\"Middle_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Middle_name\",\"searchable\":true,\"sortable\":true}},\"last_name\":{\"edit\":{\"label\":\"Last_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Last_name\",\"searchable\":true,\"sortable\":true}},\"gender\":{\"edit\":{\"label\":\"Gender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Gender\",\"searchable\":true,\"sortable\":true}},\"staff_category\":{\"edit\":{\"label\":\"Staff_category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"code\"},\"list\":{\"label\":\"Staff_category\",\"searchable\":true,\"sortable\":true}},\"staff_patient_associations\":{\"edit\":{\"label\":\"Staff_patient_associations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Staff_patient_associations\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"published_at\",\"created_at\",\"first_name\"],\"edit\":[[{\"name\":\"first_name\",\"size\":6},{\"name\":\"middle_name\",\"size\":6}],[{\"name\":\"last_name\",\"size\":6},{\"name\":\"gender\",\"size\":6}]],\"editRelations\":[\"staff_category\",\"staff_patient_associations\"]}}','object','',''),(25,'model_def_application::patient.patient','{\"uid\":\"application::patient.patient\",\"collectionName\":\"patients\",\"kind\":\"collectionType\",\"info\":{\"name\":\"patient\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"first_name\":{\"type\":\"string\"},\"primary_contact\":{\"type\":\"string\",\"required\":true},\"middle_name\":{\"type\":\"string\"},\"last_name\":{\"type\":\"string\"},\"gender\":{\"type\":\"enumeration\",\"enum\":[\"male\",\"female\",\"bisexual\"]},\"dob\":{\"type\":\"date\"},\"staff_patient_associations\":{\"via\":\"patient\",\"collection\":\"staff-patient-association\",\"isVirtual\":true},\"patient_records\":{\"via\":\"patient\",\"collection\":\"patient-record\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(26,'plugin_content_manager_configuration_content_types::application::patient.patient','{\"uid\":\"application::patient.patient\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"first_name\",\"defaultSortBy\":\"first_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"first_name\":{\"edit\":{\"label\":\"First_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"First_name\",\"searchable\":true,\"sortable\":true}},\"primary_contact\":{\"edit\":{\"label\":\"Primary_contact\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Primary_contact\",\"searchable\":true,\"sortable\":true}},\"middle_name\":{\"edit\":{\"label\":\"Middle_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Middle_name\",\"searchable\":true,\"sortable\":true}},\"last_name\":{\"edit\":{\"label\":\"Last_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Last_name\",\"searchable\":true,\"sortable\":true}},\"gender\":{\"edit\":{\"label\":\"Gender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Gender\",\"searchable\":true,\"sortable\":true}},\"dob\":{\"edit\":{\"label\":\"Dob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Dob\",\"searchable\":true,\"sortable\":true}},\"staff_patient_associations\":{\"edit\":{\"label\":\"Staff_patient_associations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Staff_patient_associations\",\"searchable\":false,\"sortable\":false}},\"patient_records\":{\"edit\":{\"label\":\"Patient_records\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Patient_records\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"first_name\",\"primary_contact\",\"middle_name\"],\"edit\":[[{\"name\":\"first_name\",\"size\":6},{\"name\":\"primary_contact\",\"size\":6}],[{\"name\":\"middle_name\",\"size\":6},{\"name\":\"last_name\",\"size\":6}],[{\"name\":\"gender\",\"size\":6},{\"name\":\"dob\",\"size\":4}]],\"editRelations\":[\"staff_patient_associations\",\"patient_records\"]}}','object','',''),(27,'model_def_application::staff-patient-association.staff-patient-association','{\"uid\":\"application::staff-patient-association.staff-patient-association\",\"collectionName\":\"staff_patient_associations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"staff_patient_association\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"staff_entity\":{\"model\":\"staffentity\",\"via\":\"staff_patient_associations\"},\"patient\":{\"model\":\"patient\",\"via\":\"staff_patient_associations\"},\"start_dt\":{\"type\":\"date\"},\"end_dt\":{\"type\":\"date\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(28,'plugin_content_manager_configuration_content_types::application::staff-patient-association.staff-patient-association','{\"uid\":\"application::staff-patient-association.staff-patient-association\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"staff_entity\":{\"edit\":{\"label\":\"Staff_entity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"first_name\"},\"list\":{\"label\":\"Staff_entity\",\"searchable\":true,\"sortable\":true}},\"patient\":{\"edit\":{\"label\":\"Patient\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"first_name\"},\"list\":{\"label\":\"Patient\",\"searchable\":true,\"sortable\":true}},\"start_dt\":{\"edit\":{\"label\":\"Start_dt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Start_dt\",\"searchable\":true,\"sortable\":true}},\"end_dt\":{\"edit\":{\"label\":\"End_dt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"End_dt\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"staff_entity\",\"patient\",\"start_dt\"],\"editRelations\":[\"staff_entity\",\"patient\"],\"edit\":[[{\"name\":\"start_dt\",\"size\":4},{\"name\":\"end_dt\",\"size\":4}]]}}','object','',''),(29,'model_def_application::record-entity.record-entity','{\"uid\":\"application::record-entity.record-entity\",\"collectionName\":\"record_entities\",\"kind\":\"collectionType\",\"info\":{\"name\":\"record_entity\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"code\":{\"type\":\"enumeration\",\"enum\":[\"Admission\",\"Diagnosis\",\"Medication\"]},\"patient_records\":{\"via\":\"record_entity\",\"collection\":\"patient-record\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(30,'plugin_content_manager_configuration_content_types::application::record-entity.record-entity','{\"uid\":\"application::record-entity.record-entity\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"patient_records\":{\"edit\":{\"label\":\"Patient_records\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Patient_records\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"code\",\"published_at\",\"created_at\"],\"edit\":[[{\"name\":\"code\",\"size\":6}]],\"editRelations\":[\"patient_records\"]}}','object','',''),(31,'model_def_application::patient-record.patient-record','{\"uid\":\"application::patient-record.patient-record\",\"collectionName\":\"patient_records\",\"kind\":\"collectionType\",\"info\":{\"name\":\"patient_record\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"patient\":{\"model\":\"patient\",\"via\":\"patient_records\"},\"record_entity\":{\"model\":\"record-entity\",\"via\":\"patient_records\"},\"staff_entity\":{\"model\":\"staffentity\"},\"updated_dt\":{\"type\":\"datetime\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(32,'plugin_content_manager_configuration_content_types::application::patient-record.patient-record','{\"uid\":\"application::patient-record.patient-record\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"patient\":{\"edit\":{\"label\":\"Patient\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"first_name\"},\"list\":{\"label\":\"Patient\",\"searchable\":true,\"sortable\":true}},\"record_entity\":{\"edit\":{\"label\":\"Record_entity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Record_entity\",\"searchable\":true,\"sortable\":true}},\"staff_entity\":{\"edit\":{\"label\":\"Staff_entity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"first_name\"},\"list\":{\"label\":\"Staff_entity\",\"searchable\":true,\"sortable\":true}},\"updated_dt\":{\"edit\":{\"label\":\"Updated_dt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Updated_dt\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"patient\",\"record_entity\",\"staff_entity\"],\"editRelations\":[\"patient\",\"record_entity\",\"staff_entity\"],\"edit\":[[{\"name\":\"updated_dt\",\"size\":6}]]}}','object','',''),(33,'model_def_application::appointment-status.appointment-status','{\"uid\":\"application::appointment-status.appointment-status\",\"collectionName\":\"appointment_statuses\",\"kind\":\"collectionType\",\"info\":{\"name\":\"appointment_status\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"code\":{\"type\":\"enumeration\",\"enum\":[\"scheduled\",\"cancelled\"]},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(34,'plugin_content_manager_configuration_content_types::application::appointment-status.appointment-status','{\"uid\":\"application::appointment-status.appointment-status\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"published_at\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"code\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(35,'model_def_application::appointment.appointment','{\"uid\":\"application::appointment.appointment\",\"collectionName\":\"appointments\",\"kind\":\"collectionType\",\"info\":{\"name\":\"appointment\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"appointment_status\":{\"model\":\"appointment-status\"},\"patient\":{\"model\":\"patient\"},\"staff_entity\":{\"model\":\"staffentity\"},\"start_dt\":{\"type\":\"datetime\"},\"end_dt\":{\"type\":\"datetime\"},\"notes\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(36,'plugin_content_manager_configuration_content_types::application::appointment.appointment','{\"uid\":\"application::appointment.appointment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"appointment_status\":{\"edit\":{\"label\":\"Appointment_status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Appointment_status\",\"searchable\":true,\"sortable\":true}},\"patient\":{\"edit\":{\"label\":\"Patient\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"first_name\"},\"list\":{\"label\":\"Patient\",\"searchable\":true,\"sortable\":true}},\"staff_entity\":{\"edit\":{\"label\":\"Staff_entity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"first_name\"},\"list\":{\"label\":\"Staff_entity\",\"searchable\":true,\"sortable\":true}},\"start_dt\":{\"edit\":{\"label\":\"Start_dt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Start_dt\",\"searchable\":true,\"sortable\":true}},\"end_dt\":{\"edit\":{\"label\":\"End_dt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"End_dt\",\"searchable\":true,\"sortable\":true}},\"notes\":{\"edit\":{\"label\":\"Notes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Notes\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"appointment_status\",\"patient\",\"staff_entity\"],\"editRelations\":[\"appointment_status\",\"patient\",\"staff_entity\"],\"edit\":[[{\"name\":\"start_dt\",\"size\":6},{\"name\":\"end_dt\",\"size\":6}],[{\"name\":\"notes\",\"size\":12}]]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_records`
--

DROP TABLE IF EXISTS `patient_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_records` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient` int DEFAULT NULL,
  `record_entity` int DEFAULT NULL,
  `staff_entity` int DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_records`
--

LOCK TABLES `patient_records` WRITE;
/*!40000 ALTER TABLE `patient_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `primary_contact` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_entities`
--

DROP TABLE IF EXISTS `record_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record_entities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_entities`
--

LOCK TABLES `record_entities` WRITE;
/*!40000 ALTER TABLE `record_entities` DISABLE KEYS */;
INSERT INTO `record_entities` VALUES (1,'Admission','2021-02-15 03:51:36',1,1,'2021-02-14 22:21:32','2021-02-14 22:21:37'),(2,'Diagnosis','2021-02-15 03:51:53',1,1,'2021-02-14 22:21:50','2021-02-14 22:21:53'),(3,'Medication','2021-02-15 03:52:08',1,1,'2021-02-14 22:22:04','2021-02-14 22:22:08');
/*!40000 ALTER TABLE `record_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_categories`
--

DROP TABLE IF EXISTS `staff_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `description` longtext,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_categories_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_categories`
--

LOCK TABLES `staff_categories` WRITE;
/*!40000 ALTER TABLE `staff_categories` DISABLE KEYS */;
INSERT INTO `staff_categories` VALUES (1,'Doctor',NULL,'2021-02-13 11:50:54',1,1,'2021-02-13 06:20:51','2021-02-13 06:20:54'),(2,'Nurse',NULL,'2021-02-13 11:51:10',1,1,'2021-02-13 06:21:07','2021-02-13 06:21:10'),(3,'Mid-wife',NULL,'2021-02-13 11:51:35',1,1,'2021-02-13 06:21:26','2021-02-13 06:21:35');
/*!40000 ALTER TABLE `staff_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_patient_associations`
--

DROP TABLE IF EXISTS `staff_patient_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_patient_associations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `staff_entity` int DEFAULT NULL,
  `patient` int DEFAULT NULL,
  `start_dt` date DEFAULT NULL,
  `end_dt` date DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_patient_associations`
--

LOCK TABLES `staff_patient_associations` WRITE;
/*!40000 ALTER TABLE `staff_patient_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_patient_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffentities`
--

DROP TABLE IF EXISTS `staffentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffentities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `staff_category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffentities`
--

LOCK TABLES `staffentities` WRITE;
/*!40000 ALTER TABLE `staffentities` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Team','Forward',NULL,'teamforward.in@gmail.com','$2a$10$Rcy4GJU2NLNSKFV7QvYOTu2QGeBZQLgt6lUZJ6oREKh1xGve7CjZC','7abd70a18f361fe78c0d28c9943e556b19896d25',NULL,1,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,NULL,'[]',2,'2021-02-05 00:33:03','2021-02-05 00:33:03'),(2,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2021-02-05 00:33:03','2021-02-05 00:33:03'),(3,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2021-02-05 00:33:03','2021-02-05 00:33:03'),(4,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2021-02-05 00:33:03','2021-02-05 00:33:03'),(5,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2021-02-05 00:33:03','2021-02-05 00:33:03'),(6,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(7,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(8,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(9,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(10,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(11,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(12,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(13,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(14,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(15,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(16,'plugins::upload.read',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(17,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(18,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(19,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(20,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:04'),(21,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(22,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(23,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(24,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(25,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(26,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(27,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(28,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(29,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(30,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2021-02-05 00:33:04','2021-02-05 00:33:05'),(31,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(32,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(33,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(34,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(35,'admin::marketplace.read',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(36,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(37,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(38,'admin::webhooks.create',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(39,'admin::webhooks.read',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(40,'admin::webhooks.update',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(41,'admin::webhooks.delete',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(42,'admin::users.create',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:05'),(43,'admin::users.read',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:06'),(44,'admin::users.update',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:06'),(45,'admin::users.delete',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:06'),(46,'admin::roles.create',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:06'),(47,'admin::roles.read',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:06'),(48,'admin::roles.update',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:06'),(49,'admin::roles.delete',NULL,NULL,'[]',1,'2021-02-05 00:33:05','2021-02-05 00:33:06'),(50,'plugins::content-manager.explorer.create','application::staff-category.staff-category','[\"code\",\"description\"]','[]',1,'2021-02-05 03:35:11','2021-02-05 03:35:11'),(51,'plugins::content-manager.explorer.read','application::staff-category.staff-category','[\"code\",\"description\"]','[]',1,'2021-02-05 03:35:11','2021-02-05 03:35:11'),(52,'plugins::content-manager.explorer.update','application::staff-category.staff-category','[\"code\",\"description\"]','[]',1,'2021-02-05 03:35:11','2021-02-05 03:35:11'),(53,'plugins::content-manager.explorer.delete','application::staff-category.staff-category',NULL,'[]',1,'2021-02-05 03:35:11','2021-02-05 03:35:11'),(54,'plugins::content-manager.explorer.publish','application::staff-category.staff-category',NULL,'[]',1,'2021-02-05 03:35:11','2021-02-05 03:35:11'),(58,'plugins::content-manager.explorer.delete','application::staffentity.staffentity',NULL,'[]',1,'2021-02-13 06:51:34','2021-02-13 06:51:34'),(59,'plugins::content-manager.explorer.publish','application::staffentity.staffentity',NULL,'[]',1,'2021-02-13 06:51:34','2021-02-13 06:51:34'),(66,'plugins::content-manager.explorer.delete','application::patient.patient',NULL,'[]',1,'2021-02-14 22:02:42','2021-02-14 22:02:42'),(67,'plugins::content-manager.explorer.publish','application::patient.patient',NULL,'[]',1,'2021-02-14 22:02:42','2021-02-14 22:02:42'),(69,'plugins::content-manager.explorer.create','application::staff-patient-association.staff-patient-association','[\"staff_entity\",\"patient\",\"start_dt\",\"end_dt\"]','[]',1,'2021-02-14 22:10:43','2021-02-14 22:10:43'),(70,'plugins::content-manager.explorer.create','application::staffentity.staffentity','[\"first_name\",\"middle_name\",\"last_name\",\"gender\",\"staff_category\",\"staff_patient_associations\"]','[]',1,'2021-02-14 22:10:43','2021-02-14 22:10:43'),(72,'plugins::content-manager.explorer.read','application::staff-patient-association.staff-patient-association','[\"staff_entity\",\"patient\",\"start_dt\",\"end_dt\"]','[]',1,'2021-02-14 22:10:43','2021-02-14 22:10:43'),(73,'plugins::content-manager.explorer.read','application::staffentity.staffentity','[\"first_name\",\"middle_name\",\"last_name\",\"gender\",\"staff_category\",\"staff_patient_associations\"]','[]',1,'2021-02-14 22:10:43','2021-02-14 22:10:43'),(75,'plugins::content-manager.explorer.update','application::staff-patient-association.staff-patient-association','[\"staff_entity\",\"patient\",\"start_dt\",\"end_dt\"]','[]',1,'2021-02-14 22:10:43','2021-02-14 22:10:43'),(76,'plugins::content-manager.explorer.update','application::staffentity.staffentity','[\"first_name\",\"middle_name\",\"last_name\",\"gender\",\"staff_category\",\"staff_patient_associations\"]','[]',1,'2021-02-14 22:10:43','2021-02-14 22:10:43'),(77,'plugins::content-manager.explorer.delete','application::staff-patient-association.staff-patient-association',NULL,'[]',1,'2021-02-14 22:10:43','2021-02-14 22:10:43'),(78,'plugins::content-manager.explorer.publish','application::staff-patient-association.staff-patient-association',NULL,'[]',1,'2021-02-14 22:10:44','2021-02-14 22:10:44'),(82,'plugins::content-manager.explorer.delete','application::record-entity.record-entity',NULL,'[]',1,'2021-02-14 22:20:59','2021-02-14 22:20:59'),(83,'plugins::content-manager.explorer.publish','application::record-entity.record-entity',NULL,'[]',1,'2021-02-14 22:20:59','2021-02-14 22:20:59'),(84,'plugins::content-manager.explorer.create','application::patient-record.patient-record','[\"patient\",\"record_entity\",\"staff_entity\",\"updated_dt\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(85,'plugins::content-manager.explorer.create','application::patient.patient','[\"first_name\",\"primary_contact\",\"middle_name\",\"last_name\",\"gender\",\"dob\",\"staff_patient_associations\",\"patient_records\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(86,'plugins::content-manager.explorer.create','application::record-entity.record-entity','[\"code\",\"patient_records\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(87,'plugins::content-manager.explorer.read','application::patient-record.patient-record','[\"patient\",\"record_entity\",\"staff_entity\",\"updated_dt\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(88,'plugins::content-manager.explorer.read','application::patient.patient','[\"first_name\",\"primary_contact\",\"middle_name\",\"last_name\",\"gender\",\"dob\",\"staff_patient_associations\",\"patient_records\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(89,'plugins::content-manager.explorer.read','application::record-entity.record-entity','[\"code\",\"patient_records\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(90,'plugins::content-manager.explorer.update','application::patient-record.patient-record','[\"patient\",\"record_entity\",\"staff_entity\",\"updated_dt\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(91,'plugins::content-manager.explorer.update','application::patient.patient','[\"first_name\",\"primary_contact\",\"middle_name\",\"last_name\",\"gender\",\"dob\",\"staff_patient_associations\",\"patient_records\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(92,'plugins::content-manager.explorer.update','application::record-entity.record-entity','[\"code\",\"patient_records\"]','[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(93,'plugins::content-manager.explorer.delete','application::patient-record.patient-record',NULL,'[]',1,'2021-02-14 22:48:37','2021-02-14 22:48:37'),(94,'plugins::content-manager.explorer.publish','application::patient-record.patient-record',NULL,'[]',1,'2021-02-14 22:48:38','2021-02-14 22:48:38'),(98,'plugins::content-manager.explorer.delete','application::appointment-status.appointment-status',NULL,'[]',1,'2021-02-14 22:50:38','2021-02-14 22:50:38'),(99,'plugins::content-manager.explorer.publish','application::appointment-status.appointment-status',NULL,'[]',1,'2021-02-14 22:50:38','2021-02-14 22:50:38'),(100,'plugins::content-manager.explorer.create','application::appointment-status.appointment-status','[\"code\"]','[]',1,'2021-02-14 22:52:05','2021-02-14 22:52:05'),(101,'plugins::content-manager.explorer.read','application::appointment-status.appointment-status','[\"code\"]','[]',1,'2021-02-14 22:52:05','2021-02-14 22:52:05'),(102,'plugins::content-manager.explorer.update','application::appointment-status.appointment-status','[\"code\"]','[]',1,'2021-02-14 22:52:05','2021-02-14 22:52:05'),(103,'plugins::content-manager.explorer.create','application::appointment.appointment','[\"appointment_status\",\"patient\",\"staff_entity\",\"start_dt\",\"end_dt\",\"notes\"]','[]',1,'2021-02-14 22:55:16','2021-02-14 22:55:16'),(104,'plugins::content-manager.explorer.read','application::appointment.appointment','[\"appointment_status\",\"patient\",\"staff_entity\",\"start_dt\",\"end_dt\",\"notes\"]','[]',1,'2021-02-14 22:55:16','2021-02-14 22:55:16'),(105,'plugins::content-manager.explorer.update','application::appointment.appointment','[\"appointment_status\",\"patient\",\"staff_entity\",\"start_dt\",\"end_dt\",\"notes\"]','[]',1,'2021-02-14 22:55:16','2021-02-14 22:55:16'),(106,'plugins::content-manager.explorer.delete','application::appointment.appointment',NULL,'[]',1,'2021-02-14 22:55:16','2021-02-14 22:55:16'),(107,'plugins::content-manager.explorer.publish','application::appointment.appointment',NULL,'[]',1,'2021-02-14 22:55:16','2021-02-14 22:55:16');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-02-05 00:33:03','2021-02-05 00:33:03'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-02-05 00:33:03','2021-02-05 00:33:03'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-02-05 00:33:03','2021-02-05 00:33:03');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(3,'content-manager','collection-types','create',0,'',1,NULL,NULL),(4,'content-manager','collection-types','create',0,'',2,NULL,NULL),(5,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(6,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(7,'content-manager','collection-types','find',0,'',1,NULL,NULL),(8,'content-manager','collection-types','find',0,'',2,NULL,NULL),(9,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(10,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(29,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(30,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(31,'content-manager','relations','find',0,'',1,NULL,NULL),(32,'content-manager','relations','find',0,'',2,NULL,NULL),(33,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(34,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(35,'content-manager','single-types','delete',0,'',1,NULL,NULL),(36,'content-manager','single-types','delete',0,'',2,NULL,NULL),(37,'content-manager','single-types','find',0,'',1,NULL,NULL),(38,'content-manager','single-types','find',0,'',2,NULL,NULL),(39,'content-manager','single-types','publish',0,'',1,NULL,NULL),(40,'content-manager','single-types','publish',0,'',2,NULL,NULL),(41,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(42,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(43,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(44,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(45,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(46,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(47,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(48,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(49,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(50,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(51,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(52,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(53,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(54,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(55,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(56,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(57,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(58,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(59,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(60,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(61,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(62,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(63,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(64,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(65,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(66,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(67,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(68,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(69,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(70,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(71,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(72,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(73,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(74,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(75,'email','email','send',0,'',1,NULL,NULL),(76,'email','email','send',0,'',2,NULL,NULL),(77,'upload','upload','count',0,'',1,NULL,NULL),(78,'upload','upload','count',0,'',2,NULL,NULL),(79,'upload','upload','destroy',0,'',1,NULL,NULL),(80,'upload','upload','destroy',0,'',2,NULL,NULL),(81,'upload','upload','find',0,'',1,NULL,NULL),(82,'upload','upload','find',0,'',2,NULL,NULL),(83,'upload','upload','findone',0,'',1,NULL,NULL),(84,'upload','upload','findone',0,'',2,NULL,NULL),(85,'upload','upload','getsettings',0,'',1,NULL,NULL),(86,'upload','upload','getsettings',0,'',2,NULL,NULL),(87,'upload','upload','search',0,'',1,NULL,NULL),(88,'upload','upload','search',0,'',2,NULL,NULL),(89,'upload','upload','updatesettings',0,'',1,NULL,NULL),(90,'upload','upload','updatesettings',0,'',2,NULL,NULL),(91,'upload','upload','upload',0,'',1,NULL,NULL),(92,'upload','upload','upload',0,'',2,NULL,NULL),(93,'users-permissions','auth','callback',0,'',1,NULL,NULL),(94,'users-permissions','auth','callback',1,'',2,NULL,NULL),(95,'users-permissions','auth','connect',1,'',1,NULL,NULL),(96,'users-permissions','auth','connect',1,'',2,NULL,NULL),(97,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(98,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(99,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(100,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(101,'users-permissions','auth','register',0,'',1,NULL,NULL),(102,'users-permissions','auth','register',1,'',2,NULL,NULL),(103,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(104,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(105,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(106,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(107,'users-permissions','user','count',0,'',1,NULL,NULL),(108,'users-permissions','user','count',0,'',2,NULL,NULL),(109,'users-permissions','user','create',0,'',1,NULL,NULL),(110,'users-permissions','user','create',0,'',2,NULL,NULL),(111,'users-permissions','user','destroy',0,'',1,NULL,NULL),(112,'users-permissions','user','destroy',0,'',2,NULL,NULL),(113,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(114,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(115,'users-permissions','user','find',0,'',1,NULL,NULL),(116,'users-permissions','user','find',0,'',2,NULL,NULL),(117,'users-permissions','user','findone',0,'',1,NULL,NULL),(118,'users-permissions','user','findone',0,'',2,NULL,NULL),(119,'users-permissions','user','me',1,'',1,NULL,NULL),(120,'users-permissions','user','me',1,'',2,NULL,NULL),(121,'users-permissions','user','update',0,'',1,NULL,NULL),(122,'users-permissions','user','update',0,'',2,NULL,NULL),(123,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(124,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(125,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(126,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(127,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(128,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(129,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(130,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(131,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(132,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(133,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(134,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(135,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(136,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(139,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(140,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(149,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(150,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(155,'application','staff-category','count',0,'',1,NULL,NULL),(156,'application','staff-category','count',0,'',2,NULL,NULL),(157,'application','staff-category','create',0,'',1,NULL,NULL),(158,'application','staff-category','create',0,'',2,NULL,NULL),(159,'application','staff-category','delete',0,'',1,NULL,NULL),(160,'application','staff-category','delete',0,'',2,NULL,NULL),(161,'application','staff-category','find',0,'',1,NULL,NULL),(162,'application','staff-category','find',0,'',2,NULL,NULL),(163,'application','staff-category','findone',0,'',1,NULL,NULL),(164,'application','staff-category','findone',0,'',2,NULL,NULL),(165,'application','staff-category','update',0,'',1,NULL,NULL),(166,'application','staff-category','update',0,'',2,NULL,NULL),(167,'application','staffentity','count',0,'',1,NULL,NULL),(168,'application','staffentity','count',0,'',2,NULL,NULL),(169,'application','staffentity','create',0,'',1,NULL,NULL),(170,'application','staffentity','create',0,'',2,NULL,NULL),(171,'application','staffentity','delete',0,'',1,NULL,NULL),(172,'application','staffentity','delete',0,'',2,NULL,NULL),(173,'application','staffentity','find',0,'',1,NULL,NULL),(174,'application','staffentity','find',0,'',2,NULL,NULL),(175,'application','staffentity','findone',0,'',1,NULL,NULL),(176,'application','staffentity','findone',0,'',2,NULL,NULL),(177,'application','staffentity','update',0,'',1,NULL,NULL),(178,'application','staffentity','update',0,'',2,NULL,NULL),(179,'application','patient','count',0,'',1,NULL,NULL),(180,'application','patient','count',0,'',2,NULL,NULL),(181,'application','patient','create',0,'',1,NULL,NULL),(182,'application','patient','create',0,'',2,NULL,NULL),(183,'application','patient','delete',0,'',1,NULL,NULL),(184,'application','patient','delete',0,'',2,NULL,NULL),(185,'application','patient','find',0,'',1,NULL,NULL),(186,'application','patient','find',0,'',2,NULL,NULL),(187,'application','patient','findone',0,'',1,NULL,NULL),(188,'application','patient','findone',0,'',2,NULL,NULL),(189,'application','patient','update',0,'',1,NULL,NULL),(190,'application','patient','update',0,'',2,NULL,NULL),(191,'application','staff-patient-association','count',0,'',1,NULL,NULL),(192,'application','staff-patient-association','count',0,'',2,NULL,NULL),(193,'application','staff-patient-association','create',0,'',1,NULL,NULL),(194,'application','staff-patient-association','create',0,'',2,NULL,NULL),(195,'application','staff-patient-association','delete',0,'',1,NULL,NULL),(196,'application','staff-patient-association','delete',0,'',2,NULL,NULL),(197,'application','staff-patient-association','find',0,'',1,NULL,NULL),(198,'application','staff-patient-association','find',0,'',2,NULL,NULL),(199,'application','staff-patient-association','findone',0,'',1,NULL,NULL),(200,'application','staff-patient-association','findone',0,'',2,NULL,NULL),(201,'application','staff-patient-association','update',0,'',1,NULL,NULL),(202,'application','staff-patient-association','update',0,'',2,NULL,NULL),(203,'application','record-entity','count',0,'',1,NULL,NULL),(204,'application','record-entity','count',0,'',2,NULL,NULL),(205,'application','record-entity','create',0,'',1,NULL,NULL),(206,'application','record-entity','create',0,'',2,NULL,NULL),(207,'application','record-entity','delete',0,'',1,NULL,NULL),(208,'application','record-entity','delete',0,'',2,NULL,NULL),(209,'application','record-entity','find',0,'',1,NULL,NULL),(210,'application','record-entity','find',0,'',2,NULL,NULL),(211,'application','record-entity','findone',0,'',1,NULL,NULL),(212,'application','record-entity','findone',0,'',2,NULL,NULL),(213,'application','record-entity','update',0,'',1,NULL,NULL),(214,'application','record-entity','update',0,'',2,NULL,NULL),(215,'application','patient-record','count',0,'',1,NULL,NULL),(216,'application','patient-record','count',0,'',2,NULL,NULL),(217,'application','patient-record','create',0,'',1,NULL,NULL),(218,'application','patient-record','create',0,'',2,NULL,NULL),(219,'application','patient-record','delete',0,'',1,NULL,NULL),(220,'application','patient-record','delete',0,'',2,NULL,NULL),(221,'application','patient-record','find',0,'',1,NULL,NULL),(222,'application','patient-record','find',0,'',2,NULL,NULL),(223,'application','patient-record','findone',0,'',1,NULL,NULL),(224,'application','patient-record','findone',0,'',2,NULL,NULL),(225,'application','patient-record','update',0,'',1,NULL,NULL),(226,'application','patient-record','update',0,'',2,NULL,NULL),(227,'application','appointment-status','count',0,'',1,NULL,NULL),(228,'application','appointment-status','count',0,'',2,NULL,NULL),(229,'application','appointment-status','create',0,'',1,NULL,NULL),(230,'application','appointment-status','create',0,'',2,NULL,NULL),(231,'application','appointment-status','delete',0,'',1,NULL,NULL),(232,'application','appointment-status','delete',0,'',2,NULL,NULL),(233,'application','appointment-status','find',0,'',1,NULL,NULL),(234,'application','appointment-status','find',0,'',2,NULL,NULL),(235,'application','appointment-status','findone',0,'',1,NULL,NULL),(236,'application','appointment-status','findone',0,'',2,NULL,NULL),(237,'application','appointment-status','update',0,'',1,NULL,NULL),(238,'application','appointment-status','update',0,'',2,NULL,NULL),(239,'application','appointment','count',0,'',1,NULL,NULL),(240,'application','appointment','count',0,'',2,NULL,NULL),(241,'application','appointment','create',0,'',1,NULL,NULL),(242,'application','appointment','create',0,'',2,NULL,NULL),(243,'application','appointment','delete',0,'',1,NULL,NULL),(244,'application','appointment','delete',0,'',2,NULL,NULL),(245,'application','appointment','find',0,'',1,NULL,NULL),(246,'application','appointment','find',0,'',2,NULL,NULL),(247,'application','appointment','findone',0,'',1,NULL,NULL),(248,'application','appointment','findone',0,'',2,NULL,NULL),(249,'application','appointment','update',0,'',1,NULL,NULL),(250,'application','appointment','update',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tfsolutions_quickglance'
--

--
-- Dumping routines for database 'tfsolutions_quickglance'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19  9:48:18
