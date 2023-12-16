-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin_admin_role`
--

DROP TABLE IF EXISTS `admin_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_admin_role` (
  `admin_id` bigint unsigned NOT NULL,
  `admin_role_id` bigint unsigned NOT NULL,
  KEY `admin_admin_role_admin_id_foreign` (`admin_id`),
  KEY `admin_admin_role_admin_role_id_foreign` (`admin_role_id`),
  CONSTRAINT `admin_admin_role_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_admin_role_admin_role_id_foreign` FOREIGN KEY (`admin_role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_admin_role`
--

LOCK TABLES `admin_admin_role` WRITE;
/*!40000 ALTER TABLE `admin_admin_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_course`
--

DROP TABLE IF EXISTS `admin_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_course` (
  `admin_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  KEY `admin_course_admin_id_foreign` (`admin_id`),
  KEY `admin_course_course_id_foreign` (`course_id`),
  CONSTRAINT `admin_course_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_course_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_course`
--

LOCK TABLES `admin_course` WRITE;
/*!40000 ALTER TABLE `admin_course` DISABLE KEYS */;
INSERT INTO `admin_course` VALUES (1,10),(2,11);
/*!40000 ALTER TABLE `admin_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_discussion`
--

DROP TABLE IF EXISTS `admin_discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_discussion` (
  `admin_id` bigint unsigned NOT NULL,
  `discussion_id` bigint unsigned NOT NULL,
  KEY `admin_discussion_admin_id_foreign` (`admin_id`),
  KEY `admin_discussion_discussion_id_foreign` (`discussion_id`),
  CONSTRAINT `admin_discussion_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_discussion_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_discussion`
--

LOCK TABLES `admin_discussion` WRITE;
/*!40000 ALTER TABLE `admin_discussion` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_discussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permission`
--

DROP TABLE IF EXISTS `admin_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_permission` (
  `admin_role_id` bigint unsigned NOT NULL,
  `permission_id` bigint unsigned NOT NULL,
  KEY `admin_role_permission_admin_role_id_foreign` (`admin_role_id`),
  KEY `admin_role_permission_permission_id_foreign` (`permission_id`),
  CONSTRAINT `admin_role_permission_admin_role_id_foreign` FOREIGN KEY (`admin_role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permission`
--

LOCK TABLES `admin_role_permission` WRITE;
/*!40000 ALTER TABLE `admin_role_permission` DISABLE KEYS */;
INSERT INTO `admin_role_permission` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,127),(1,128),(1,129),(1,130),(1,131),(1,132),(1,133),(1,134),(1,135),(1,136),(1,137),(1,138),(1,139),(1,140),(1,141),(1,142),(1,143),(1,144),(1,145),(1,146),(1,147),(1,148),(1,149),(1,150),(1,151),(1,152),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(2,71),(2,72),(2,73),(2,74),(2,76),(2,77),(2,78),(2,79),(2,80),(2,81),(2,82),(2,83),(2,84),(2,85),(2,86),(2,87),(2,88),(2,89),(2,90),(2,91),(2,92),(2,93),(2,94),(2,95),(2,96),(2,97),(2,98),(2,99),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,116),(2,117),(2,118),(2,119),(2,120),(2,125),(2,126),(2,127),(2,128),(2,129),(2,140),(2,141),(2,142),(2,143),(2,144),(2,145),(2,146),(2,147),(2,148),(2,149),(2,150),(2,151),(2,152),(1,153),(1,154),(1,155),(1,156),(1,157),(1,158),(1,159),(3,1),(3,2),(3,3),(3,4),(3,5),(3,153),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,54),(3,68),(3,73),(3,74),(3,85),(3,86),(3,87),(3,88),(3,89),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,90),(3,91),(3,92),(3,93),(3,94),(3,95),(3,96),(3,97),(3,98),(3,99),(3,100);
/*!40000 ALTER TABLE `admin_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'2023-05-11 02:51:08','2023-05-11 02:51:08','Super Administrator'),(2,'2023-05-11 02:51:08','2023-05-11 02:51:08','Administrator'),(3,'2023-05-16 04:11:44','2023-05-16 04:11:44','Trainer');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_role_id` bigint unsigned NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '1',
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `public` tinyint(1) DEFAULT '1',
  `social_facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admins_admin_role_id_foreign` (`admin_role_id`),
  KEY `admins_user_id_foreign` (`user_id`),
  CONSTRAINT `admins_admin_role_id_foreign` FOREIGN KEY (`admin_role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'2023-05-11 02:51:13','2023-05-11 02:51:13',1,1,'I am a skilled an qualified instructor',1,1,NULL,NULL,NULL,NULL,NULL),(2,'2023-05-16 04:13:37','2023-05-16 04:13:37',3,1,NULL,4,1,NULL,NULL,NULL,NULL,NULL),(3,'2023-05-16 06:01:50','2023-05-16 06:01:50',3,1,'gfdgfdg',6,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`),
  FULLTEXT KEY `full` (`title`,`content`,`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,NULL,NULL,'Who We Are','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','who-we-are',1,'Who We Are',NULL,0),(2,NULL,NULL,'Our Services','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','our-services',1,'Our Services',NULL,0),(3,NULL,NULL,'FAQ','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','faq',1,'FAQs',NULL,0);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_certificate`
--

DROP TABLE IF EXISTS `assignment_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_certificate` (
  `certificate_id` bigint unsigned NOT NULL,
  `assignment_id` bigint unsigned NOT NULL,
  KEY `assignment_certificate_certificate_id_foreign` (`certificate_id`),
  KEY `assignment_certificate_assignment_id_foreign` (`assignment_id`),
  CONSTRAINT `assignment_certificate_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assignment_certificate_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_certificate`
--

LOCK TABLES `assignment_certificate` WRITE;
/*!40000 ALTER TABLE `assignment_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_submissions`
--

DROP TABLE IF EXISTS `assignment_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_submissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assignment_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `grade` double(8,2) DEFAULT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submitted` tinyint(1) NOT NULL DEFAULT '0',
  `student_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `assignment_submissions_assignment_id_foreign` (`assignment_id`),
  KEY `assignment_submissions_student_id_foreign` (`student_id`),
  CONSTRAINT `assignment_submissions_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assignment_submissions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_submissions`
--

LOCK TABLES `assignment_submissions` WRITE;
/*!40000 ALTER TABLE `assignment_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  `lesson_id` bigint unsigned DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `passmark` double(8,2) DEFAULT NULL,
  `notify` tinyint(1) DEFAULT NULL,
  `allow_late` tinyint(1) DEFAULT '0',
  `opening_date` timestamp NULL DEFAULT NULL,
  `schedule_type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_course_id_foreign` (`course_id`),
  KEY `assignments_lesson_id_foreign` (`lesson_id`),
  KEY `assignments_admin_id_foreign` (`admin_id`),
  CONSTRAINT `assignments_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `assignments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assignments_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lesson_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  `attendance_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendances_lesson_id_foreign` (`lesson_id`),
  KEY `attendances_student_id_foreign` (`student_id`),
  KEY `attendances_course_id_foreign` (`course_id`),
  CONSTRAINT `attendances_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attendances_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (9,'2023-08-21 04:19:40','2023-08-21 04:19:40',16,5,10,'2023-08-20 18:30:00');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category_blog_post`
--

DROP TABLE IF EXISTS `blog_category_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_category_blog_post` (
  `blog_category_id` bigint unsigned NOT NULL,
  `blog_post_id` bigint unsigned NOT NULL,
  KEY `blog_category_blog_post_blog_category_id_foreign` (`blog_category_id`),
  KEY `blog_category_blog_post_blog_post_id_foreign` (`blog_post_id`),
  CONSTRAINT `blog_category_blog_post_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blog_category_blog_post_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category_blog_post`
--

LOCK TABLES `blog_category_blog_post` WRITE;
/*!40000 ALTER TABLE `blog_category_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_category_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` timestamp NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_posts_admin_id_foreign` (`admin_id`),
  FULLTEXT KEY `full` (`title`,`content`,`meta_title`,`meta_description`),
  CONSTRAINT `blog_posts_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_posts`
--

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` VALUES (1,'2023-05-25 06:15:14','2023-05-25 06:15:14','Z Black King Cobra','<p>Z Black King Cobra have very dangers poison</p>','uploads/blog_files/ERndV5TL7nFGHqEehQ2TAurQ5HJQEfM4zGtjx16k.png','2023-05-24 18:30:00',1,'cobra','Z Black King Cobra have very dangers poison',1);
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `lecture_page_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmarks_course_id_foreign` (`course_id`),
  KEY `bookmarks_student_id_foreign` (`student_id`),
  KEY `bookmarks_lecture_page_id_foreign` (`lecture_page_id`),
  CONSTRAINT `bookmarks_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmarks_lecture_page_id_foreign` FOREIGN KEY (`lecture_page_id`) REFERENCES `lecture_pages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmarks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate_lesson`
--

DROP TABLE IF EXISTS `certificate_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificate_lesson` (
  `certificate_id` bigint unsigned NOT NULL,
  `lesson_id` bigint unsigned NOT NULL,
  KEY `certificate_lesson_certificate_id_foreign` (`certificate_id`),
  KEY `certificate_lesson_lesson_id_foreign` (`lesson_id`),
  CONSTRAINT `certificate_lesson_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `certificate_lesson_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_lesson`
--

LOCK TABLES `certificate_lesson` WRITE;
/*!40000 ALTER TABLE `certificate_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificate_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate_payments`
--

DROP TABLE IF EXISTS `certificate_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificate_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `certificate_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `certificate_payments_user_id_foreign` (`user_id`),
  KEY `certificate_payments_certificate_id_foreign` (`certificate_id`),
  CONSTRAINT `certificate_payments_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `certificate_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_payments`
--

LOCK TABLES `certificate_payments` WRITE;
/*!40000 ALTER TABLE `certificate_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificate_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate_test`
--

DROP TABLE IF EXISTS `certificate_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificate_test` (
  `certificate_id` bigint unsigned NOT NULL,
  `test_id` bigint unsigned NOT NULL,
  KEY `certificate_test_certificate_id_foreign` (`certificate_id`),
  KEY `certificate_test_test_id_foreign` (`test_id`),
  CONSTRAINT `certificate_test_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `certificate_test_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_test`
--

LOCK TABLES `certificate_test` WRITE;
/*!40000 ALTER TABLE `certificate_test` DISABLE KEYS */;
INSERT INTO `certificate_test` VALUES (4,4);
/*!40000 ALTER TABLE `certificate_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint unsigned NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `orientation` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `any_session` tinyint(1) DEFAULT '0',
  `max_downloads` int DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `payment_required` tinyint(1) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certificates_course_id_foreign` (`course_id`),
  KEY `certificates_admin_id_foreign` (`admin_id`),
  CONSTRAINT `certificates_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `certificates_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (4,'2023-08-21 04:15:41','2023-08-21 04:18:08',10,1,'Certificate Of Completion','usermedia/user_editor_images/05_2023/f3c7c038031388272eb4b5fc1cc99d3c.jpg','l','<p>Certificate Of Completion for Demo Online Course&nbsp;Description&nbsp;</p>','<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><head><style type=\"text/css\">* { font-family: DejaVu Sans, sans-serif; }</style></head><body><div id=\"canvas\" style=\" font-size: 14px; margin:0px auto; position: relative; width: 842px; height: 595px; overflow: hidden \">\r\n                       <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_student_name\" style=\"position: absolute; top: 343px; left: 408px; width: 20px; height: 20px; white-space: nowrap;\">\r\n                           [STUDENT_NAME]\r\n                       </div>\r\n\r\n                       <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_session_name\" style=\"position: absolute; top: 237px; left: 425px; width: 20px; height: 20px; white-space: nowrap;\">\r\n                           [SESSION_NAME]\r\n                       </div>\r\n\r\n                       <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_session_start_date\" style=\"position: absolute; top: 286px; left: 288px; width: 20px; height: 20px; white-space: nowrap;\">\r\n                           [SESSION_START_DATE]\r\n                       </div>\r\n\r\n                       <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_session_end_date\" style=\"position: absolute; top: 283px; left: 520px; width: 20px; height: 20px; white-space: nowrap;\">\r\n                           [SESSION_END_DATE]\r\n                       </div>\r\n\r\n                       <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_date_generated\" style=\"position: absolute; top: 141px; left: 608px; width: 20px; height: 20px; white-space: nowrap;\">\r\n                           [DATE_GENERATED]\r\n                       </div>\r\n\r\n                       <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_company_name\" style=\"position: absolute; top: 182px; left: 417px; width: 20px; height: 20px; white-space: nowrap;\">\r\n                           [COMPANY_NAME]\r\n                       </div>\r\n\r\n                       <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_certificate_number\" style=\"position: absolute; top: 138px; left: 134px; width: 20px; height: 20px; white-space: nowrap;\">\r\n                           [CERTIFICATE_NUMBER]\r\n                       </div>\r\n\r\n                                                  <div class=\"canvas_item ui-draggable ui-draggable-handle\" id=\"box_class_date_16_CLASS-1\" style=\"position: absolute; top: 230px; left: 20px; width: 20px; height: 20px; white-space: nowrap; display: none;\">\r\n                               [CLASS_DATE_16_CLASS-1]\r\n                           </div>\r\n                                                  \r\n                       \r\n                       \r\n\r\n                       <img src=\"http://localhost/lms/public/usermedia/user_editor_images/05_2023/f3c7c038031388272eb4b5fc1cc99d3c.jpg\" style=\"width: 100%; height: 100%\" alt=\"\">\r\n\r\n\r\n                   </div></body></html>\n',0,0,1,0,NULL);
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_ack`
--

DROP TABLE IF EXISTS `class_ack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_ack` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `students_id` bigint unsigned NOT NULL,
  `lessons_id` bigint unsigned NOT NULL,
  `courses_id` bigint unsigned NOT NULL,
  `is_acknowledge` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_ack`
--

LOCK TABLES `class_ack` WRITE;
/*!40000 ALTER TABLE `class_ack` DISABLE KEYS */;
INSERT INTO `class_ack` VALUES (22,5,6,5,0,'2023-06-04 19:36:55','2023-06-04 19:36:55'),(23,5,12,5,0,'2023-06-04 19:36:13','2023-06-04 19:36:13'),(26,5,4,4,1,'2023-06-25 19:36:13','2023-08-12 01:07:32'),(27,5,5,4,1,'2023-06-25 19:36:42','2023-08-12 01:07:51'),(28,5,10,5,0,'2023-08-19 06:38:44','2023-08-19 06:38:44'),(29,5,11,5,0,'2023-08-19 06:38:55','2023-08-19 06:38:55'),(31,5,16,10,0,'2023-08-21 00:38:40','2023-08-21 00:38:40');
/*!40000 ALTER TABLE `class_ack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code_2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code_3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_right` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,NULL,NULL,'Aaland Islands','AX','ALA','Euro','EUR','€',''),(2,NULL,NULL,'Afghanistan','AF','AFG','Afghani','AFN','?',''),(3,NULL,NULL,'Albania','AL','ALB','Lek','ALL','L',''),(4,NULL,NULL,'Algeria','DZ','DZA','Algerian Dinar','DZD','?.?',''),(5,NULL,NULL,'American Samoa','AS','ASM','Euros','EUR','$',''),(6,NULL,NULL,'Andorra','AD','AND','Euros','EUR','€',''),(7,NULL,NULL,'Angola','AO','AGO','Angolan kwanza','AOA','Kz',''),(8,NULL,NULL,'Anguilla','AI','AIA','East Caribbean Dollar','XCD','$',''),(9,NULL,NULL,'Antarctica','AQ','ATA','Antarctican dollar','AQD','$',''),(10,NULL,NULL,'Antigua and Barbuda','AG','ATG','East Caribbean Dollar','XCD','$',''),(11,NULL,NULL,'Argentina','AR','ARG','Peso','ARS','$',''),(12,NULL,NULL,'Armenia','AM','ARM','Dram','AMD','',''),(13,NULL,NULL,'Aruba','AW','ABW','Netherlands Antilles Guilder','ANG','ƒ',''),(14,NULL,NULL,'Australia','AU','AUS','Australian Dollars','AUD','$',''),(15,NULL,NULL,'Austria','AT','AUT','Euros','EUR','€',''),(16,NULL,NULL,'Azerbaijan','AZ','AZE','Manat','AZN','',''),(17,NULL,NULL,'Bahamas','BS','BHS','Bahamian Dollar','BSD','$',''),(18,NULL,NULL,'Bahrain','BH','BHR','Bahraini Dinar','BHD','.?.?',''),(19,NULL,NULL,'Bangladesh','BD','BGD','Taka','BDT','?',''),(20,NULL,NULL,'Barbados','BB','BRB','Barbadian Dollar','BBD','$',''),(21,NULL,NULL,'Belarus','BY','BLR','Belarus Ruble','BYR','Br',''),(22,NULL,NULL,'Belgium','BE','BEL','Euros','EUR','€',''),(23,NULL,NULL,'Belize','BZ','BLZ','Belizean Dollar','BZD','$',''),(24,NULL,NULL,'Benin','BJ','BEN','CFA Franc BCEAO','XOF','Fr',''),(25,NULL,NULL,'Bermuda','BM','BMU','Bermudian Dollar','BMD','$',''),(26,NULL,NULL,'Bhutan','BT','BTN','Indian Rupee','INR','₹',''),(27,NULL,NULL,'Bolivia','BO','BOL','Boliviano','BOB','Bs.',''),(28,NULL,NULL,'Bonaire, Sint Eustatius and Saba','BQ','BES','United States Dollar','USD','$',''),(29,NULL,NULL,'Bosnia and Herzegovina','BA','BIH','Bosnia and Herzegovina convertible mark','BAM','',''),(30,NULL,NULL,'Botswana','BW','BWA','Pula','BWP','P',''),(31,NULL,NULL,'Bouvet Island','BV','BVT','Norwegian Krone','NOK','kr',''),(32,NULL,NULL,'Brazil','BR','BRA','Brazil','BRL','R$',''),(33,NULL,NULL,'British Indian Ocean Territory','IO','IOT','United States Dollar','USD','$',''),(34,NULL,NULL,'Brunei Darussalam','BN','BRN','Bruneian Dollar','BND','$',''),(35,NULL,NULL,'Bulgaria','BG','BGR','Lev','BGN','??',''),(36,NULL,NULL,'Burkina Faso','BF','BFA','CFA Franc BCEAO','XOF','Fr',''),(37,NULL,NULL,'Burundi','BI','BDI','Burundi Franc','BIF','Fr',''),(38,NULL,NULL,'Cambodia','KH','KHM','Riel','KHR','?',''),(39,NULL,NULL,'Cameroon','CM','CMR','CFA Franc BEAC','XAF','Fr',''),(40,NULL,NULL,'Canada','CA','CAN','Canadian Dollar','CAD','$',''),(41,NULL,NULL,'Canary Islands','IC','ICA','Euro','EUR','',''),(42,NULL,NULL,'Cape Verde','CV','CPV','Escudo','CVE','Esc',''),(43,NULL,NULL,'Cayman Islands','KY','CYM','Caymanian Dollar','KYD','$',''),(44,NULL,NULL,'Central African Republic','CF','CAF','CFA Franc BEAC','XAF','Fr',''),(45,NULL,NULL,'Chad','TD','TCD','CFA Franc BEAC','XAF','Fr',''),(46,NULL,NULL,'Chile','CL','CHL','Chilean Peso','CLP','$',''),(47,NULL,NULL,'China','CN','CHN','Yuan Renminbi','CNY','¥',''),(48,NULL,NULL,'Christmas Island','CX','CXR','Australian Dollars','AUD','$',''),(49,NULL,NULL,'Cocos (Keeling) Islands','CC','CCK','Australian Dollars','AUD','$',''),(50,NULL,NULL,'Colombia','CO','COL','Peso','COP','$',''),(51,NULL,NULL,'Comoros','KM','COM','Comoran Franc','KMF','Fr',''),(52,NULL,NULL,'Congo','CG','COG','CFA Franc BEAC','XAF','Fr',''),(53,NULL,NULL,'Cook Islands','CK','COK','New Zealand Dollars','NZD','$',''),(54,NULL,NULL,'Costa Rica','CR','CRI','Costa Rican Colon','CRC','?',''),(55,NULL,NULL,'Cote D\'Ivoire','CI','CIV','CFA Franc BCEAO','XOF','Fr',''),(56,NULL,NULL,'Croatia','HR','HRV','Croatian Dinar','HRK','kn',''),(57,NULL,NULL,'Cuba','CU','CUB','Cuban Peso','CUP','$',''),(58,NULL,NULL,'Curacao','CW','CUW','Netherlands Antillean guilder','NAF','ƒ',''),(59,NULL,NULL,'Cyprus','CY','CYP','Cypriot Pound','CYP','€',''),(60,NULL,NULL,'Czech Republic','CZ','CZE','Koruna','CZK','K?',''),(61,NULL,NULL,'Democratic Republic of Congo','CD','COD','Congolese Frank','CDF','Fr',''),(62,NULL,NULL,'Denmark','DK','DNK','Danish Krone','DKK','kr',''),(63,NULL,NULL,'Djibouti','DJ','DJI','Djiboutian Franc','DJF','Fr',''),(64,NULL,NULL,'Dominica','DM','DMA','East Caribbean Dollar','XCD','$',''),(65,NULL,NULL,'Dominican Republic','DO','DOM','Dominican Peso','DOP','$',''),(66,NULL,NULL,'East Timor','TL','TLS','United States Dollar','USD','$',''),(67,NULL,NULL,'Ecuador','EC','ECU','Sucre','ECS','$',''),(68,NULL,NULL,'Egypt','EG','EGY','Egyptian Pound','EGP','£',''),(69,NULL,NULL,'El Salvador','SV','SLV','Salvadoran Colon','SVC','$',''),(70,NULL,NULL,'Equatorial Guinea','GQ','GNQ','CFA Franc BEAC','XAF','Fr',''),(71,NULL,NULL,'Eritrea','ER','ERI','Ethiopian Birr','ETB','Nfk',''),(72,NULL,NULL,'Estonia','EE','EST','Estonian Kroon','EEK','€',''),(73,NULL,NULL,'Ethiopia','ET','ETH','Ethiopian Birr','ETB','Br',''),(74,NULL,NULL,'Falkland Islands (Malvinas)','FK','FLK','Falkland Pound','FKP','£',''),(75,NULL,NULL,'Faroe Islands','FO','FRO','Danish Krone','DKK','kr',''),(76,NULL,NULL,'Fiji','FJ','FJI','Fijian Dollar','FJD','$',''),(77,NULL,NULL,'Finland','FI','FIN','Euros','EUR','€',''),(78,NULL,NULL,'France, Metropolitan','FR','FRA','Euros','EUR','€',''),(79,NULL,NULL,'French Guiana','GF','GUF','Euros','EUR','€',''),(80,NULL,NULL,'French Polynesia','PF','PYF','CFP Franc','XPF','Fr',''),(81,NULL,NULL,'French Southern Territories','TF','ATF','Euros','EUR','€',''),(82,NULL,NULL,'FYROM','MK','MKD','Denar','MKD','???',''),(83,NULL,NULL,'Gabon','GA','GAB','CFA Franc BEAC','XAF','Fr',''),(84,NULL,NULL,'Gambia','GM','GMB','Dalasi','GMD','D',''),(85,NULL,NULL,'Georgia','GE','GEO','Lari','GEL','?',''),(86,NULL,NULL,'Germany','DE','DEU','Euros','EUR','€',''),(87,NULL,NULL,'Ghana','GH','GHA','Ghana cedi','GHS','GH¢',''),(88,NULL,NULL,'Gibraltar','GI','GIB','Gibraltar Pound','GIP','£',''),(89,NULL,NULL,'Greece','GR','GRC','Euros','EUR','€',''),(90,NULL,NULL,'Greenland','GL','GRL','Danish Krone','DKK','kr',''),(91,NULL,NULL,'Grenada','GD','GRD','East Caribbean Dollar','XCD','$',''),(92,NULL,NULL,'Guadeloupe','GP','GLP','Euros','EUR','€',''),(93,NULL,NULL,'Guam','GU','GUM','United States Dollar','USD','$',''),(94,NULL,NULL,'Guatemala','GT','GTM','Quetzal','GTQ','Q',''),(95,NULL,NULL,'Guernsey','GG','GGY','Guernsey pound','GGP','£',''),(96,NULL,NULL,'Guinea','GN','GIN','Guinean Franc','GNF','Fr',''),(97,NULL,NULL,'Guinea-Bissau','GW','GNB','CFA Franc BCEAO','XOF','Fr',''),(98,NULL,NULL,'Guyana','GY','GUY','Guyanaese Dollar','GYD','$',''),(99,NULL,NULL,'Haiti','HT','HTI','Gourde','HTG','G',''),(100,NULL,NULL,'Heard and Mc Donald Islands','HM','HMD','Australian Dollars','AUD','$',''),(101,NULL,NULL,'Honduras','HN','HND','Lempira','HNL','L',''),(102,NULL,NULL,'Hong Kong','HK','HKG','HKD','HKD','$',''),(103,NULL,NULL,'Hungary','HU','HUN','Forint','HUF','Ft',''),(104,NULL,NULL,'Iceland','IS','ISL','Icelandic Krona','ISK','kr',''),(105,NULL,NULL,'India','IN','IND','Indian Rupee','INR','₹',''),(106,NULL,NULL,'Indonesia','ID','IDN','Indonesian Rupiah','IDR','Rp',''),(107,NULL,NULL,'Iran (Islamic Republic of)','IR','IRN','Iranian Rial','IRR','?',''),(108,NULL,NULL,'Iraq','IQ','IRQ','Iraqi Dinar','IQD','?.?',''),(109,NULL,NULL,'Ireland','IE','IRL','Euros','EUR','€',''),(110,NULL,NULL,'Israel','IL','ISR','Shekel','ILS','?',''),(111,NULL,NULL,'Italy','IT','ITA','Euros','EUR','€',''),(112,NULL,NULL,'Jamaica','JM','JAM','Jamaican Dollar','JMD','$',''),(113,NULL,NULL,'Japan','JP','JPN','Japanese Yen','JPY','¥',''),(114,NULL,NULL,'Jersey','JE','JEY','Pound Sterling','GBP','£',''),(115,NULL,NULL,'Jordan','JO','JOR','Jordanian Dinar','JOD','?.?',''),(116,NULL,NULL,'Kazakhstan','KZ','KAZ','Tenge','KZT','',''),(117,NULL,NULL,'Kenya','KE','KEN','Kenyan Shilling','KES','Sh',''),(118,NULL,NULL,'Kiribati','KI','KIR','Australian Dollars','AUD','$',''),(119,NULL,NULL,'Korea, Republic of','KR','KOR','Won','KRW','?',''),(120,NULL,NULL,'Kuwait','KW','KWT','Kuwaiti Dinar','KWD','?.?',''),(121,NULL,NULL,'Kyrgyzstan','KG','KGZ','Som','KGS','?',''),(122,NULL,NULL,'Lao People\'s Democratic Republic','LA','LAO','Kip','LAK','?',''),(123,NULL,NULL,'Latvia','LV','LVA','Lat','LVL','€',''),(124,NULL,NULL,'Lebanon','LB','LBN','Lebanese Pound','LBP','?.?',''),(125,NULL,NULL,'Lesotho','LS','LSO','Loti','LSL','L',''),(126,NULL,NULL,'Liberia','LR','LBR','Liberian Dollar','LRD','$',''),(127,NULL,NULL,'Libyan Arab Jamahiriya','LY','LBY','Libyan Dinar','LYD','?.?',''),(128,NULL,NULL,'Liechtenstein','LI','LIE','Swiss Franc','CHF','Fr',''),(129,NULL,NULL,'Lithuania','LT','LTU','Lita','LTL','€',''),(130,NULL,NULL,'Luxembourg','LU','LUX','Euros','EUR','€',''),(131,NULL,NULL,'Macau','MO','MAC','Pataca','MOP','P',''),(132,NULL,NULL,'Madagascar','MG','MDG','Malagasy Franc','MGA','Ar',''),(133,NULL,NULL,'Malawi','MW','MWI','Malawian Kwacha','MWK','MK',''),(134,NULL,NULL,'Malaysia','MY','MYS','Ringgit','MYR','RM',''),(135,NULL,NULL,'Maldives','MV','MDV','Rufiyaa','MVR','.?',''),(136,NULL,NULL,'Mali','ML','MLI','CFA Franc BCEAO','XOF','Fr',''),(137,NULL,NULL,'Malta','MT','MLT','Maltese Lira','MTL','€',''),(138,NULL,NULL,'Marshall Islands','MH','MHL','United States Dollar','USD','$',''),(139,NULL,NULL,'Martinique','MQ','MTQ','Euros','EUR','€',''),(140,NULL,NULL,'Mauritania','MR','MRT','Ouguiya','MRO','UM',''),(141,NULL,NULL,'Mauritius','MU','MUS','Mauritian Rupee','MUR','?',''),(142,NULL,NULL,'Mayotte','YT','MYT','Euros','EUR','€',''),(143,NULL,NULL,'Mexico','MX','MEX','Peso','MXN','$',''),(144,NULL,NULL,'Micronesia, Federated States of','FM','FSM','United States Dollar','USD','$',''),(145,NULL,NULL,'Moldova, Republic of','MD','MDA','Leu','MDL','L',''),(146,NULL,NULL,'Monaco','MC','MCO','Euros','EUR','€',''),(147,NULL,NULL,'Mongolia','MN','MNG','Tugrik','MNT','?',''),(148,NULL,NULL,'Montenegro','ME','MNE','Euro','EUR','€',''),(149,NULL,NULL,'Montserrat','MS','MSR','East Caribbean Dollar','XCD','$',''),(150,NULL,NULL,'Morocco','MA','MAR','Dirham','MAD','?.?.',''),(151,NULL,NULL,'Mozambique','MZ','MOZ','Metical','MZN','MT',''),(152,NULL,NULL,'Myanmar','MM','MMR','Kyat','MMK','Ks',''),(153,NULL,NULL,'Namibia','NA','NAM','Dollar','NAD','$',''),(154,NULL,NULL,'Nauru','NR','NRU','Australian Dollars','AUD','$',''),(155,NULL,NULL,'Nepal','NP','NPL','Nepalese Rupee','NPR','?',''),(156,NULL,NULL,'Netherlands','NL','NLD','Euros','EUR','€',''),(157,NULL,NULL,'Netherlands Antilles','AN','ANT','Netherlands Antilles Guilder','ANG','',''),(158,NULL,NULL,'New Caledonia','NC','NCL','CFP Franc','XPF','Fr',''),(159,NULL,NULL,'New Zealand','NZ','NZL','New Zealand Dollars','NZD','$',''),(160,NULL,NULL,'Nicaragua','NI','NIC','Cordoba Oro','NIO','C$',''),(161,NULL,NULL,'Niger','NE','NER','CFA Franc BCEAO','XOF','Fr',''),(162,NULL,NULL,'Nigeria','NG','NGA','Naira','NGN','₦',''),(163,NULL,NULL,'Niue','NU','NIU','New Zealand Dollars','NZD','$',''),(164,NULL,NULL,'Norfolk Island','NF','NFK','Australian Dollars','AUD','$',''),(165,NULL,NULL,'North Korea','KP','PRK','Won','KPW','?',''),(166,NULL,NULL,'Northern Mariana Islands','MP','MNP','United States Dollar','USD','$',''),(167,NULL,NULL,'Norway','NO','NOR','Norwegian Krone','NOK','kr',''),(168,NULL,NULL,'Oman','OM','OMN','Sul Rial','OMR','?.?.',''),(169,NULL,NULL,'Pakistan','PK','PAK','Rupee','PKR','?',''),(170,NULL,NULL,'Palau','PW','PLW','United States Dollar','USD','$',''),(171,NULL,NULL,'Palestinian Territory, Occupied','PS','PSE','Jordanian dinar','JOD','?',''),(172,NULL,NULL,'Panama','PA','PAN','Balboa','PAB','B/.',''),(173,NULL,NULL,'Papua New Guinea','PG','PNG','Kina','PGK','K',''),(174,NULL,NULL,'Paraguay','PY','PRY','Guarani','PYG','?',''),(175,NULL,NULL,'Peru','PE','PER','Nuevo Sol','PEN','S/.',''),(176,NULL,NULL,'Philippines','PH','PHL','Peso','PHP','?',''),(177,NULL,NULL,'Pitcairn','PN','PCN','New Zealand Dollars','NZD','$',''),(178,NULL,NULL,'Poland','PL','POL','Zloty','PLN','z?',''),(179,NULL,NULL,'Portugal','PT','PRT','Euros','EUR','€',''),(180,NULL,NULL,'Puerto Rico','PR','PRI','United States Dollar','USD','$',''),(181,NULL,NULL,'Qatar','QA','QAT','Rial','QAR','?.?',''),(182,NULL,NULL,'Reunion','RE','REU','Euros','EUR','€',''),(183,NULL,NULL,'Romania','RO','ROM','Leu','RON','lei',''),(184,NULL,NULL,'Russian Federation','RU','RUS','Ruble','RUB','?',''),(185,NULL,NULL,'Rwanda','RW','RWA','Rwanda Franc','RWF','Fr',''),(186,NULL,NULL,'Saint Kitts and Nevis','KN','KNA','East Caribbean Dollar','XCD','$',''),(187,NULL,NULL,'Saint Lucia','LC','LCA','East Caribbean Dollar','XCD','$',''),(188,NULL,NULL,'Saint Vincent and the Grenadines','VC','VCT','East Caribbean Dollar','XCD','$',''),(189,NULL,NULL,'Samoa','WS','WSM','Euros','EUR','T',''),(190,NULL,NULL,'San Marino','SM','SMR','Euros','EUR','€',''),(191,NULL,NULL,'Sao Tome and Principe','ST','STP','Dobra','STD','Db',''),(192,NULL,NULL,'Saudi Arabia','SA','SAU','Riyal','SAR','?.?',''),(193,NULL,NULL,'Senegal','SN','SEN','CFA Franc BCEAO','XOF','Fr',''),(194,NULL,NULL,'Serbia','RS','SRB','Serbian dinar','RSD','???.',''),(195,NULL,NULL,'Seychelles','SC','SYC','Rupee','SCR','?',''),(196,NULL,NULL,'Sierra Leone','SL','SLE','Leone','SLL','Le',''),(197,NULL,NULL,'Singapore','SG','SGP','Dollar','SGD','$',''),(198,NULL,NULL,'Slovak Republic','SK','SVK','Koruna','SKK','€',''),(199,NULL,NULL,'Slovenia','SI','SVN','Euros','EUR','€',''),(200,NULL,NULL,'Solomon Islands','SB','SLB','Solomon Islands Dollar','SBD','$',''),(201,NULL,NULL,'Somalia','SO','SOM','Shilling','SOS','Sh',''),(202,NULL,NULL,'South Africa','ZA','ZAF','Rand','ZAR','R',''),(203,NULL,NULL,'South Georgia & South Sandwich Islands','GS','SGS','Pound Sterling','GBP','£',''),(204,NULL,NULL,'South Sudan','SS','SSD','South Sudanese Pound','SSP','£',''),(205,NULL,NULL,'Spain','ES','ESP','Euros','EUR','€',''),(206,NULL,NULL,'Sri Lanka','LK','LKA','Rupee','LKR','Rs',''),(207,NULL,NULL,'St. Barthelemy','BL','BLM','Euro','EUR','€',''),(208,NULL,NULL,'St. Helena','SH','SHN','Pound Sterling','GBP','£',''),(209,NULL,NULL,'St. Martin (French part)','MF','MAF','Netherlands Antillean guilder','ANG','€',''),(210,NULL,NULL,'St. Pierre and Miquelon','PM','SPM','Euro','EUR','€',''),(211,NULL,NULL,'Sudan','SD','SDN','Dinar','SDG','?.?.',''),(212,NULL,NULL,'Suriname','SR','SUR','Surinamese Guilder','SRD','$',''),(213,NULL,NULL,'Svalbard and Jan Mayen Islands','SJ','SJM','Norwegian Krone','NOK','kr',''),(214,NULL,NULL,'Swaziland','SZ','SWZ','Lilangeni','SZL','L',''),(215,NULL,NULL,'Sweden','SE','SWE','Krona','SEK','kr',''),(216,NULL,NULL,'Switzerland','CH','CHE','Swiss Franc','CHF','Fr',''),(217,NULL,NULL,'Syrian Arab Republic','SY','SYR','Syrian Pound','SYP','£',''),(218,NULL,NULL,'Taiwan','TW','TWN','Dollar','TWD','$',''),(219,NULL,NULL,'Tajikistan','TJ','TJK','Tajikistan Ruble','TJS','??',''),(220,NULL,NULL,'Tanzania, United Republic of','TZ','TZA','Shilling','TZS','Sh',''),(221,NULL,NULL,'Thailand','TH','THA','Baht','THB','?',''),(222,NULL,NULL,'Togo','TG','TGO','CFA Franc BCEAO','XOF','Fr',''),(223,NULL,NULL,'Tokelau','TK','TKL','New Zealand Dollars','NZD','$',''),(224,NULL,NULL,'Tonga','TO','TON','PaÕanga','TOP','T$',''),(225,NULL,NULL,'Trinidad and Tobago','TT','TTO','Trinidad and Tobago Dollar','TTD','$',''),(226,NULL,NULL,'Tunisia','TN','TUN','Tunisian Dinar','TND','?.?',''),(227,NULL,NULL,'Turkey','TR','TUR','Lira','TRY','',''),(228,NULL,NULL,'Turkmenistan','TM','TKM','Manat','TMT','m',''),(229,NULL,NULL,'Turks and Caicos Islands','TC','TCA','United States Dollar','USD','$',''),(230,NULL,NULL,'Tuvalu','TV','TUV','Australian Dollars','AUD','$',''),(231,NULL,NULL,'Uganda','UG','UGA','Shilling','UGX','Sh',''),(232,NULL,NULL,'Ukraine','UA','UKR','Hryvnia','UAH','?',''),(233,NULL,NULL,'United Arab Emirates','AE','ARE','Dirham','AED','?.?',''),(234,NULL,NULL,'United Kingdom','GB','GBR','Pound Sterling','GBP','£',''),(235,NULL,NULL,'United States','US','USA','United States Dollar','USD','$',''),(236,NULL,NULL,'United States Minor Outlying Islands','UM','UMI','United States Dollar','USD','$',''),(237,NULL,NULL,'Uruguay','UY','URY','Peso','UYU','$',''),(238,NULL,NULL,'Uzbekistan','UZ','UZB','Som','UZS','',''),(239,NULL,NULL,'Vanuatu','VU','VUT','Vatu','VUV','Vt',''),(240,NULL,NULL,'Vatican City State (Holy See)','VA','VAT','Euros','EUR','€',''),(241,NULL,NULL,'Venezuela','VE','VEN','Bolivar','VEF','Bs F',''),(242,NULL,NULL,'Viet Nam','VN','VNM','Dong','VND','?',''),(243,NULL,NULL,'Virgin Islands (British)','VG','VGB','United States Dollar','USD','$',''),(244,NULL,NULL,'Virgin Islands (U.S.)','VI','VIR','United States Dollar','USD','$',''),(245,NULL,NULL,'Wallis and Futuna Islands','WF','WLF','CFP Franc','XPF','Fr',''),(246,NULL,NULL,'Western Sahara','EH','ESH','Dirham','MAD','?.?.',''),(247,NULL,NULL,'Yemen','YE','YEM','Rial','YER','?',''),(248,NULL,NULL,'Zambia','ZM','ZMB','Kwacha','ZMK','ZK',''),(249,NULL,NULL,'Zimbabwe','ZW','ZWE','Zimbabwe Dollar','ZWD','P','');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_course`
--

DROP TABLE IF EXISTS `coupon_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_course` (
  `coupon_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  KEY `coupon_course_coupon_id_foreign` (`coupon_id`),
  KEY `coupon_course_course_id_foreign` (`course_id`),
  CONSTRAINT `coupon_course_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `coupon_course_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_course`
--

LOCK TABLES `coupon_course` WRITE;
/*!40000 ALTER TABLE `coupon_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_course_category`
--

DROP TABLE IF EXISTS `coupon_course_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_course_category` (
  `coupon_id` bigint unsigned NOT NULL,
  `course_category_id` bigint unsigned NOT NULL,
  KEY `coupon_course_category_coupon_id_foreign` (`coupon_id`),
  KEY `coupon_course_category_course_category_id_foreign` (`course_category_id`),
  CONSTRAINT `coupon_course_category_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `coupon_course_category_course_category_id_foreign` FOREIGN KEY (`course_category_id`) REFERENCES `course_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_course_category`
--

LOCK TABLES `coupon_course_category` WRITE;
/*!40000 ALTER TABLE `coupon_course_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_course_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_invoice`
--

DROP TABLE IF EXISTS `coupon_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_invoice` (
  `coupon_id` bigint unsigned NOT NULL,
  `invoice_id` bigint unsigned NOT NULL,
  KEY `coupon_invoice_coupon_id_foreign` (`coupon_id`),
  KEY `coupon_invoice_invoice_id_foreign` (`invoice_id`),
  CONSTRAINT `coupon_invoice_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `coupon_invoice_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_invoice`
--

LOCK TABLES `coupon_invoice` WRITE;
/*!40000 ALTER TABLE `coupon_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `expires_on` timestamp NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double DEFAULT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `uses_total` int DEFAULT NULL,
  `uses_customer` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_categories`
--

DROP TABLE IF EXISTS `course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `course_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `course_categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_categories`
--

LOCK TABLES `course_categories` WRITE;
/*!40000 ALTER TABLE `course_categories` DISABLE KEYS */;
INSERT INTO `course_categories` VALUES (1,NULL,NULL,'Category 1',1,1,'Description of first category',NULL),(2,NULL,NULL,'Category 2',1,2,'Description of second category',NULL);
/*!40000 ALTER TABLE `course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_course_category`
--

DROP TABLE IF EXISTS `course_course_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_course_category` (
  `course_id` bigint unsigned NOT NULL,
  `course_category_id` bigint unsigned NOT NULL,
  KEY `course_course_category_course_id_foreign` (`course_id`),
  KEY `course_course_category_course_category_id_foreign` (`course_category_id`),
  CONSTRAINT `course_course_category_course_category_id_foreign` FOREIGN KEY (`course_category_id`) REFERENCES `course_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_course_category_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_course_category`
--

LOCK TABLES `course_course_category` WRITE;
/*!40000 ALTER TABLE `course_course_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_course_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_download`
--

DROP TABLE IF EXISTS `course_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_download` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `download_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_download_course_id_foreign` (`course_id`),
  KEY `course_download_download_id_foreign` (`download_id`),
  CONSTRAINT `course_download_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_download_download_id_foreign` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_download`
--

LOCK TABLES `course_download` WRITE;
/*!40000 ALTER TABLE `course_download` DISABLE KEYS */;
INSERT INTO `course_download` VALUES (1,10,1);
/*!40000 ALTER TABLE `course_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lesson`
--

DROP TABLE IF EXISTS `course_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_lesson` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `lesson_id` bigint unsigned NOT NULL,
  `lesson_date` timestamp NULL DEFAULT NULL,
  `lesson_venue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lesson_start` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_end` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_lessons_course_id_foreign` (`course_id`),
  KEY `course_lessons_lesson_id_foreign` (`lesson_id`),
  CONSTRAINT `course_lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_lessons_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lesson`
--

LOCK TABLES `course_lesson` WRITE;
/*!40000 ALTER TABLE `course_lesson` DISABLE KEYS */;
INSERT INTO `course_lesson` VALUES (53,10,16,'2023-08-20 18:30:00',NULL,NULL,NULL,1),(54,11,17,'2023-08-19 18:30:00','noida','12:45 PM','3:30 PM',1);
/*!40000 ALTER TABLE `course_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lesson_admins`
--

DROP TABLE IF EXISTS `course_lesson_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_lesson_admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint unsigned NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `lesson_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_lesson_admins_course_id_foreign` (`course_id`),
  KEY `course_lesson_admins_admin_id_foreign` (`admin_id`),
  KEY `course_lesson_admins_lesson_id_foreign` (`lesson_id`),
  CONSTRAINT `course_lesson_admins_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_lesson_admins_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_lesson_admins_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lesson_admins`
--

LOCK TABLES `course_lesson_admins` WRITE;
/*!40000 ALTER TABLE `course_lesson_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_lesson_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_survey`
--

DROP TABLE IF EXISTS `course_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_survey` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `survey_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_survey_course_id_foreign` (`course_id`),
  KEY `course_survey_survey_id_foreign` (`survey_id`),
  CONSTRAINT `course_survey_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_survey_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_survey`
--

LOCK TABLES `course_survey` WRITE;
/*!40000 ALTER TABLE `course_survey` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_test`
--

DROP TABLE IF EXISTS `course_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_test` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `test_id` bigint unsigned NOT NULL,
  `opening_date` timestamp NULL DEFAULT NULL,
  `closing_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_tests_course_id_foreign` (`course_id`),
  KEY `course_tests_test_id_foreign` (`test_id`),
  CONSTRAINT `course_tests_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_tests_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_test`
--

LOCK TABLES `course_test` WRITE;
/*!40000 ALTER TABLE `course_test` DISABLE KEYS */;
INSERT INTO `course_test` VALUES (6,11,4,'2023-08-20 18:30:00','2023-08-20 18:30:00'),(7,11,6,'2023-08-20 18:30:00','2023-08-20 18:30:00');
/*!40000 ALTER TABLE `course_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint unsigned DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `enrollment_closes` timestamp NULL DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `payment_required` tinyint(1) NOT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `venue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_discussion` tinyint(1) NOT NULL DEFAULT '1',
  `enable_chat` tinyint(1) NOT NULL DEFAULT '1',
  `enforce_order` tinyint(1) NOT NULL DEFAULT '1',
  `effort` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enable_forum` tinyint(1) NOT NULL DEFAULT '1',
  `enforce_capacity` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `courses_admin_id_foreign` (`admin_id`),
  FULLTEXT KEY `full` (`name`,`description`,`short_description`,`introduction`,`venue`),
  CONSTRAINT `courses_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (10,'2023-08-20 23:09:19','2023-08-20 23:50:17','Demo Online Course',1,1,'2023-08-20 18:30:00','2023-09-30 18:30:00','2023-08-20 18:30:00',NULL,0,NULL,'<p>Demo Online Course Description</p>',NULL,'c','usermedia/user_editor_images/05_2023/Free-Online-Courses-with-Certificates.jpg',1,1,1,NULL,NULL,'Demo Online Course Short Description','<ul>\r\n	<li>Complete all the Classes to be able to access the Test.</li>\r\n</ul>',1,0),(11,'2023-08-21 01:33:27','2023-08-21 01:51:26','demo session',1,1,'2023-08-20 18:30:00','2023-09-30 18:30:00','2023-08-20 18:30:00',NULL,0,NULL,'<p>demo session Description&nbsp;</p>',NULL,'s','usermedia/student_uploads/2023_05/top11.png',1,1,1,NULL,NULL,'demo session Short Description',NULL,1,0);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` bigint unsigned NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `currencies_country_id_foreign` (`country_id`),
  CONSTRAINT `currencies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,NULL,'2023-05-18 02:44:22',235,1.00),(2,'2023-08-17 04:25:05','2023-08-17 04:25:05',105,1.00);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_payment_method`
--

DROP TABLE IF EXISTS `currency_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_payment_method` (
  `currency_id` bigint unsigned NOT NULL,
  `payment_method_id` bigint unsigned NOT NULL,
  KEY `currency_payment_method_currency_id_foreign` (`currency_id`),
  KEY `currency_payment_method_payment_method_id_foreign` (`payment_method_id`),
  CONSTRAINT `currency_payment_method_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `currency_payment_method_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_payment_method`
--

LOCK TABLES `currency_payment_method` WRITE;
/*!40000 ALTER TABLE `currency_payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_replies`
--

DROP TABLE IF EXISTS `discussion_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussion_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discussion_id` bigint unsigned NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_replies_user_id_foreign` (`user_id`),
  CONSTRAINT `discussion_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_replies`
--

LOCK TABLES `discussion_replies` WRITE;
/*!40000 ALTER TABLE `discussion_replies` DISABLE KEYS */;
INSERT INTO `discussion_replies` VALUES (1,'2023-05-18 02:07:12','2023-05-18 02:07:12',1,'ok dev',1),(2,'2023-08-11 07:36:30','2023-08-11 07:36:30',3,'Hi dev i know very well',1),(3,'2023-08-21 05:33:23','2023-08-21 05:33:23',5,'yes',1),(4,'2023-08-21 05:34:24','2023-08-21 05:34:24',5,'yes it is',1);
/*!40000 ALTER TABLE `discussion_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `replied` tinyint(1) NOT NULL DEFAULT '0',
  `course_id` bigint unsigned DEFAULT NULL,
  `lecture_id` bigint unsigned DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussions_student_id_foreign` (`student_id`),
  KEY `discussions_course_id_foreign` (`course_id`),
  KEY `discussions_lecture_id_foreign` (`lecture_id`),
  CONSTRAINT `discussions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussions_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`),
  CONSTRAINT `discussions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
INSERT INTO `discussions` VALUES (3,'2023-08-11 07:35:17','2023-08-11 07:36:30',5,'due to unknown market','Hi Sir i am stuck on ppaisa bazar policy bazar',1,NULL,NULL,1),(5,'2023-08-21 05:30:06','2023-08-21 05:34:24',5,'msg check','is it working ?',1,10,NULL,1);
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_files`
--

DROP TABLE IF EXISTS `download_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `download_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `download_id` bigint unsigned NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `download_files_download_id_foreign` (`download_id`),
  CONSTRAINT `download_files_download_id_foreign` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_files`
--

LOCK TABLES `download_files` WRITE;
/*!40000 ALTER TABLE `download_files` DISABLE KEYS */;
INSERT INTO `download_files` VALUES (1,'2023-08-21 01:04:49','2023-08-21 01:04:49',1,'user_editor_images/dummy.pdf',1);
/*!40000 ALTER TABLE `download_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `downloads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `downloads_admin_id_foreign` (`admin_id`),
  CONSTRAINT `downloads_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloads`
--

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` VALUES (1,'2023-08-21 01:02:10','2023-08-21 01:02:10','syllabus pdf',1,'<p>syllabus pdf for the course</p>',1);
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `placeholders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,NULL,NULL,'Upcoming class reminder (physical location)','This message is sent to students to remind them when a class is scheduled to hold.','\n                Please be reminded that the class <strong>\'[CLASS_NAME]\'</strong> is scheduled to hold as follows: <br/>\n\n<div><strong>Date:</strong> [CLASS_DATE]</div>\n<div><strong>Session:</strong> [SESSION_NAME]</div>\n<div><strong>Venue:</strong> [CLASS_VENUE] </div>\n<div><strong>Starts:</strong> [CLASS_START_TIME]</div>\n<div><strong>Ends:</strong> [CLASS_END_TIME]</div>\n                ','\n   Please be reminded that the class <strong>\'[CLASS_NAME]\'</strong> is scheduled to hold as follows: <br/>\n\n<div><strong>Date:</strong> [CLASS_DATE]</div>\n<div><strong>Session:</strong> [SESSION_NAME]</div>\n<div><strong>Venue:</strong> [CLASS_VENUE] </div>\n<div><strong>Starts:</strong> [CLASS_START_TIME]</div>\n<div><strong>Ends:</strong> [CLASS_END_TIME]</div>\n                ','\n                <ul>\n                <li>[CLASS_NAME] : The name of the class</li>\n                <li>[CLASS_DATE] : The class date</li>\n                <li>[SESSION_NAME] : The name of the session the class is attached to</li>\n                <li>[CLASS_VENUE] : The venue of the class</li>\n                <li>[CLASS_START_TIME] : The start time for the class</li>\n                <li>[CLASS_END_TIME] : The end time for the class</li>\n                <li>[RECIPIENT_FIRST_NAME] : The first name of the recipient </li>\n                <li>[RECIPIENT_LAST_NAME] : The last name of the recipient </li>\n                </ul>\n                ','Upcoming Class: [CLASS_NAME]','Upcoming Class: [CLASS_NAME]'),(2,NULL,NULL,'Upcoming class reminder (online class)','This message is sent to students to remind them when an online class is scheduled to open.','\n                Please be reminded that the class <strong>\'[CLASS_NAME]\'</strong> is scheduled as follows: <br/>\n\n<div><strong>Course:</strong> [COURSE_NAME]</div>\n<div><strong>Starts:</strong> [CLASS_DATE]</div>\n                ','\n   Please be reminded that the class <strong>\'[CLASS_NAME]\'</strong> is scheduled as follows: <br/>\n\n<div><strong>Course:</strong> [COURSE_NAME]</div>\n<div><strong>Starts:</strong> [CLASS_DATE]</div>\n                ','\n                <ul>\n                <li>[CLASS_NAME] : The name of the class</li>\n                <li>[CLASS_DATE] : The class date</li>\n                <li>[COURSE_NAME] : The name of the session the class is attached to</li>\n                <li>[RECIPIENT_FIRST_NAME] : The first name of the recipient </li>\n                <li>[RECIPIENT_LAST_NAME] : The last name of the recipient </li>\n                </ul>\n                ','Upcoming Class: [CLASS_NAME]','Upcoming Class: [CLASS_NAME]'),(3,NULL,NULL,'Upcoming Test reminder','This message is sent to users when there is an upcoming test in a session/course they are enrolled in','\n                    Please be reminded that the test <strong>\'[TEST_NAME]\'</strong> is scheduled as follows: <br/>\n<div><strong>Session/Course:</strong> [SESSION_NAME] </div>\n<div><strong>Opens:</strong> [OPENING_DATE]</div>\n<div><strong>Closes:</strong> [CLOSING_DATE]</div>\n<div>Please ensure you take the test before the closing date.</div>\n                ','\n                    Please be reminded that the test <strong>\'[TEST_NAME]\'</strong> is scheduled as follows: <br/>\n<div><strong>Session/Course:</strong> [SESSION_NAME] </div>\n<div><strong>Opens:</strong> [OPENING_DATE]</div>\n<div><strong>Closes:</strong> [CLOSING_DATE]</div>\n<div>Please ensure you take the test before the closing date.</div>\n                ','\n                <ul>\n                <li>[TEST_NAME] : The name of the test</li>\n                <li>[TEST_DESCRIPTION] : The description of the test</li>\n                <li>[SESSION_NAME] : The name of the session or course the test is attached to</li>\n                <li>[OPENING_DATE] : The opening date of the test</li>\n                <li>[CLOSING_DATE] : The closing date of the test</li>\n                <li>[PASSMARK] : The test passmark e.g. 50%</li>\n                <li>[MINUTES_ALLOWED]: The number of minutes allowed for the test</li>\n                <li>[RECIPIENT_FIRST_NAME] : The first name of the recipient </li>\n                <li>[RECIPIENT_LAST_NAME] : The last name of the recipient </li>\n                </ul>\n                ','Upcoming Test: [TEST_NAME]','Upcoming Test: [TEST_NAME]'),(4,NULL,NULL,'Online Class start notification','This message is sent to students when a scheduled online class opens','\n                Please be reminded that the class <strong>\'[CLASS_NAME]\'</strong> for the course \'[COURSE_NAME]\' has started. <br/>\nClick this link to take this class now: <a href=\\\"[CLASS_URL]\\\">[CLASS_URL]</a><br/>\n                ','\n               Please be reminded that the class <strong>\'[CLASS_NAME]\'</strong> for the course \'[COURSE_NAME]\' has started. <br/>\nClick this link to take this class now: <a href=\\\"[CLASS_URL]\\\">[CLASS_URL]</a><br/>\n                ','\n                <ul>\n                <li>[CLASS_NAME] : The name of the class</li>\n                <li>[CLASS_URL] : The url of the class</li>\n                <li>[COURSE_NAME] : The name of the course the class belongs to</li>\n                <li>[RECIPIENT_FIRST_NAME] : The first name of the recipient </li>\n                <li>[RECIPIENT_LAST_NAME] : The last name of the recipient </li>\n                </ul>\n                ','Class [CLASS_NAME] is open','Class [CLASS_NAME] is open'),(5,NULL,NULL,'Homework reminder','This message is sent to students reminding them when a homework is due','\n                Please be reminded that the homework <strong>\'[HOMEWORK_NAME]\'</strong> is due on [DUE_DATE]. <br/>\nPlease click this link to submit your homework now: <a href=\\\"[HOMEWORK_URL]\\\">[HOMEWORK_URL]</a>\n                ','\n                Please be reminded that the homework <strong>\'[HOMEWORK_NAME]\'</strong> is due on [DUE_DATE]. <br/>\nPlease click this link to submit your homework now: <a href=\\\"[HOMEWORK_URL]\\\">[HOMEWORK_URL]</a>\n                ','\n                <ul>\n                <li>[NUMBER_OF_DAYS] : The number of days remaining till the homework due date e.g. 1,2,3</li>\n                <li>[DAY_TEXT] : The \'day\' text. Defaults to \'day\' if [NUMBER_OF_DAYS] is 1 and \'days\' if greater than 1.</li>\n                <li>[HOMEWORK_NAME] : The name of the homework</li>\n                <li>[HOMEWORK_URL] : The homework url</li>\n                <li>[HOMEWORK_INSTRUCTION] : The instructions for the homework</li>\n                <li>[PASSMARK] : The passmark for the homework</li>\n                 <li>[RECIPIENT_FIRST_NAME] : The first name of the recipient </li>\n                <li>[RECIPIENT_LAST_NAME] : The last name of the recipient </li>\n                <li>[DUE_DATE] : The homework due date</li>\n                <li>[OPENING_DATE] : The homework opening date</li>\n                </ul>\n                ','Homework due in [NUMBER_OF_DAYS] [DAY_TEXT]','Homework due in [NUMBER_OF_DAYS] [DAY_TEXT]'),(6,NULL,NULL,'Course closing reminder','Warning email sent to enrolled students about a course that will close soon.','\n                Please be reminded that the course <strong>\'[COURSE_NAME]\'</strong> closes on [CLOSING_DATE]. <br/>\nPlease click this link to complete the course now: <a href=\\\"[COURSE_URL]\\\">[COURSE_URL]</a>\n                ','\n                Please be reminded that the course <strong>\'[COURSE_NAME]\'</strong> closes on [CLOSING_DATE]. <br/>\nPlease click this link to complete the course now: <a href=\\\"[COURSE_URL]\\\">[COURSE_URL]</a>\n                ','\n                <ul>\n                <li>[COURSE_NAME] : The name of the course</li>\n                <li>[COURSE_URL] : The course URL</li>\n                <li>[CLOSING_DATE] : The closing date for the course</li>\n                 <li>[NUMBER_OF_DAYS] : The number of days remaining till the closing date e.g. 1,2,3</li>\n                <li>[DAY_TEXT] : The \'day\' text. Defaults to \'day\' if [NUMBER_OF_DAYS] is 1 and \'days\' if greater than 1.</li>\n\n                <li>[RECIPIENT_FIRST_NAME] : The first name of the recipient </li>\n                <li>[RECIPIENT_LAST_NAME] : The last name of the recipient </li>\n                </ul>\n                ','Course ends in [NUMBER_OF_DAYS] [DAY_TEXT]','Course ends in [NUMBER_OF_DAYS] [DAY_TEXT]');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_menus`
--

DROP TABLE IF EXISTS `footer_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `parent_id` int NOT NULL DEFAULT '0',
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_menus`
--

LOCK TABLES `footer_menus` WRITE;
/*!40000 ALTER TABLE `footer_menus` DISABLE KEYS */;
INSERT INTO `footer_menus` VALUES (1,NULL,NULL,'Custom','Quick Links','#','c',1,0,0),(2,NULL,NULL,'Courses','Online Courses','/courses','p',1,1,0),(3,NULL,NULL,'Sessions','Upcoming Sessions','/sessions','p',2,1,0),(4,NULL,NULL,'Blog','Blog','/blog','p',3,1,0),(5,NULL,NULL,'Contact','Contact','/contact','p',4,1,0);
/*!40000 ALTER TABLE `footer_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_participants`
--

DROP TABLE IF EXISTS `forum_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_participants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `forum_topic_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `notify` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_participants_forum_topic_id_foreign` (`forum_topic_id`),
  KEY `forum_participants_user_id_foreign` (`user_id`),
  CONSTRAINT `forum_participants_forum_topic_id_foreign` FOREIGN KEY (`forum_topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `forum_participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_participants`
--

LOCK TABLES `forum_participants` WRITE;
/*!40000 ALTER TABLE `forum_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_posts`
--

DROP TABLE IF EXISTS `forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `forum_topic_id` bigint unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `post_reply_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_posts_forum_topic_id_foreign` (`forum_topic_id`),
  KEY `forum_posts_user_id_foreign` (`user_id`),
  KEY `forum_posts_post_reply_id_foreign` (`post_reply_id`),
  CONSTRAINT `forum_posts_forum_topic_id_foreign` FOREIGN KEY (`forum_topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `forum_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_posts`
--

LOCK TABLES `forum_posts` WRITE;
/*!40000 ALTER TABLE `forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_topics`
--

DROP TABLE IF EXISTS `forum_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_topics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  `lecture_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_topics_user_id_foreign` (`user_id`),
  KEY `forum_topics_course_id_foreign` (`course_id`),
  KEY `forum_topics_lecture_id_foreign` (`lecture_id`),
  CONSTRAINT `forum_topics_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `forum_topics_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `forum_topics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_topics`
--

LOCK TABLES `forum_topics` WRITE;
/*!40000 ALTER TABLE `forum_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_menus`
--

DROP TABLE IF EXISTS `header_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `parent_id` int NOT NULL DEFAULT '0',
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_menus`
--

LOCK TABLES `header_menus` WRITE;
/*!40000 ALTER TABLE `header_menus` DISABLE KEYS */;
INSERT INTO `header_menus` VALUES (1,NULL,NULL,'Home Page','Home','/','p',1,0,0),(2,NULL,NULL,'Custom','Info','#','c',2,0,0),(3,NULL,NULL,'Article: Who We Are','Who We Are','/who-we-are','a',1,2,0),(4,NULL,NULL,'Article: Our Services','Our Services','/our-services','a',2,2,0),(5,NULL,NULL,'Article: FAQ','FAQ','/faq','a',3,2,0),(6,NULL,NULL,'Courses','Courses','/courses','p',3,0,0),(7,NULL,NULL,'Sessions','Sessions','/sessions','p',4,0,0),(8,NULL,NULL,'Blog','Blog','/blog','p',5,0,0),(9,NULL,NULL,'Contact','Contact','/contact','p',6,0,0);
/*!40000 ALTER TABLE `header_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_transactions`
--

DROP TABLE IF EXISTS `invoice_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_id` bigint unsigned NOT NULL,
  `status` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `amount` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_transactions_invoice_id_foreign` (`invoice_id`),
  CONSTRAINT `invoice_transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_transactions`
--

LOCK TABLES `invoice_transactions` WRITE;
/*!40000 ALTER TABLE `invoice_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `amount` double(8,2) NOT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment_method_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_currency_id_foreign` (`currency_id`),
  KEY `invoices_payment_method_id_foreign` (`payment_method_id`),
  KEY `invoices_user_id_foreign` (`user_id`),
  CONSTRAINT `invoices_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invoices_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1000,'2023-05-18 03:35:04','2023-05-18 03:35:04',NULL,1,25.00,'O:12:\"App\\Lib\\Cart\":11:{s:22:\"\0App\\Lib\\Cart\0sessions\";a:1:{i:3;s:1:\"3\";}s:24:\"\0App\\Lib\\Cart\0isDiscount\";b:0;s:22:\"\0App\\Lib\\Cart\0couponId\";N;s:29:\"\0App\\Lib\\Cart\0discountApplied\";N;s:29:\"\0App\\Lib\\Cart\0paymentMethodId\";N;s:19:\"\0App\\Lib\\Cart\0total\";d:252;s:23:\"\0App\\Lib\\Cart\0invoiceId\";N;s:20:\"\0App\\Lib\\Cart\0userId\";s:1:\"3\";s:21:\"\0App\\Lib\\Cart\0persist\";b:0;s:18:\"\0App\\Lib\\Cart\0type\";s:1:\"s\";s:26:\"\0App\\Lib\\Cart\0certificates\";a:0:{}}',1,NULL),(1001,'2023-05-18 03:35:50','2023-05-18 03:35:50',NULL,1,25.00,'O:12:\"App\\Lib\\Cart\":11:{s:22:\"\0App\\Lib\\Cart\0sessions\";a:1:{i:2;s:1:\"2\";}s:24:\"\0App\\Lib\\Cart\0isDiscount\";b:0;s:22:\"\0App\\Lib\\Cart\0couponId\";N;s:29:\"\0App\\Lib\\Cart\0discountApplied\";N;s:29:\"\0App\\Lib\\Cart\0paymentMethodId\";N;s:19:\"\0App\\Lib\\Cart\0total\";d:2500;s:23:\"\0App\\Lib\\Cart\0invoiceId\";N;s:20:\"\0App\\Lib\\Cart\0userId\";s:1:\"7\";s:21:\"\0App\\Lib\\Cart\0persist\";b:0;s:18:\"\0App\\Lib\\Cart\0type\";s:1:\"s\";s:26:\"\0App\\Lib\\Cart\0certificates\";a:0:{}}',1,NULL);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ips`
--

DROP TABLE IF EXISTS `ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ips` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ips_ip_unique` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ips`
--

LOCK TABLES `ips` WRITE;
/*!40000 ALTER TABLE `ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_files`
--

DROP TABLE IF EXISTS `lecture_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lecture_id` bigint unsigned NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `lecture_files_lecture_id_foreign` (`lecture_id`),
  CONSTRAINT `lecture_files_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_files`
--

LOCK TABLES `lecture_files` WRITE;
/*!40000 ALTER TABLE `lecture_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `lecture_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_notes`
--

DROP TABLE IF EXISTS `lecture_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `lecture_id` bigint unsigned NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lecture_notes_student_id_foreign` (`student_id`),
  KEY `lecture_notes_lecture_id_foreign` (`lecture_id`),
  CONSTRAINT `lecture_notes_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lecture_notes_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_notes`
--

LOCK TABLES `lecture_notes` WRITE;
/*!40000 ALTER TABLE `lecture_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `lecture_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_pages`
--

DROP TABLE IF EXISTS `lecture_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lecture_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  `audio_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lecture_pages_lecture_id_foreign` (`lecture_id`),
  CONSTRAINT `lecture_pages_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_pages`
--

LOCK TABLES `lecture_pages` WRITE;
/*!40000 ALTER TABLE `lecture_pages` DISABLE KEYS */;
INSERT INTO `lecture_pages` VALUES (14,'2023-08-20 23:14:32','2023-08-21 01:16:35',9,'Notes','usermedia/user_editor_images/05_2023/note-taking.png','i',1,NULL);
/*!40000 ALTER TABLE `lecture_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lectures` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lesson_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lectures_lesson_id_foreign` (`lesson_id`),
  CONSTRAINT `lectures_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectures`
--

LOCK TABLES `lectures` WRITE;
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures` VALUES (9,'2023-08-20 23:12:35','2023-08-20 23:12:35',16,'Introduction',1);
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_files`
--

DROP TABLE IF EXISTS `lesson_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lesson_id` bigint unsigned NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `lesson_files_lesson_id_foreign` (`lesson_id`),
  CONSTRAINT `lesson_files_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_files`
--

LOCK TABLES `lesson_files` WRITE;
/*!40000 ALTER TABLE `lesson_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_groups`
--

DROP TABLE IF EXISTS `lesson_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_groups`
--

LOCK TABLES `lesson_groups` WRITE;
/*!40000 ALTER TABLE `lesson_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_lesson_group`
--

DROP TABLE IF EXISTS `lesson_lesson_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_lesson_group` (
  `lesson_group_id` bigint unsigned NOT NULL,
  `lesson_id` bigint unsigned NOT NULL,
  KEY `lesson_lesson_group_lesson_group_id_foreign` (`lesson_group_id`),
  KEY `lesson_lesson_group_lesson_id_foreign` (`lesson_id`),
  CONSTRAINT `lesson_lesson_group_lesson_group_id_foreign` FOREIGN KEY (`lesson_group_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_lesson_group_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_lesson_group`
--

LOCK TABLES `lesson_lesson_group` WRITE;
/*!40000 ALTER TABLE `lesson_lesson_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_lesson_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_order` int DEFAULT NULL,
  `test_required` tinyint(1) DEFAULT NULL,
  `test_id` bigint unsigned DEFAULT NULL,
  `type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enforce_lecture_order` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lessons_admin_id_foreign` (`admin_id`),
  KEY `lessons_test_id_foreign` (`test_id`),
  FULLTEXT KEY `full` (`name`,`description`,`introduction`),
  CONSTRAINT `lessons_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `lessons_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (4,'2023-05-18 05:22:09','2023-05-18 05:23:04','Aimed To Prepare You From A Beginner to the Advance Level JOBS',1,NULL,'<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;One Major Project will be assigned to everyone attending this course with us.</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The trainees you required to submit the final projects assigned to the for evaluation.</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We will also provide weekly assignments to practice practical aspects of the training</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There will be case-studies given to every participant to make entire learning process easier</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Assignments, Case-Studies &amp; Projects performance will affect the gradings during certifications</p>',1,NULL,NULL,'s',NULL,1),(16,'2023-08-20 23:11:44','2023-08-21 00:53:09','Class 1',1,'usermedia/user_editor_images/05_2023/class.jpg','<p>Class 1st for Online Course</p>',1,1,4,'c',NULL,1),(17,'2023-08-21 01:34:56','2023-08-21 01:34:56','demo 1',1,'usermedia/user_editor_images/05_2023/class.jpg','<p>training session demo class 1&nbsp;Brief Description</p>',1,NULL,NULL,'s',NULL,1);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_04_07_171722_create_students_table',1),(5,'2020_04_10_144311_create_admins_table',1),(6,'2020_04_10_144327_create_articles_table',1),(7,'2020_04_10_144335_create_courses_table',1),(8,'2020_04_10_144445_create_lessons_table',1),(9,'2020_04_10_144504_create_lectures_table',1),(10,'2020_04_10_144517_create_assignments_table',1),(11,'2020_04_10_144537_create_assignment_submissions_table',1),(12,'2020_04_10_144547_create_attendances_table',1),(13,'2020_04_10_144557_create_bookmarks_table',1),(14,'2020_04_10_144609_create_certificates_table',1),(15,'2020_04_10_144617_create_certificate_assignments_table',1),(16,'2020_04_10_144632_create_certificate_lessons_table',1),(17,'2020_04_10_144714_create_tests_table',1),(18,'2020_04_10_144723_create_certificate_tests_table',1),(19,'2020_04_10_144741_create_countries_table',1),(20,'2020_04_10_144818_create_coupons_table',1),(21,'2020_04_10_144854_create_course_categories_table',1),(22,'2020_04_10_144958_create_coupon_categories_table',1),(23,'2020_04_10_150647_create_currencies_table',1),(24,'2020_04_10_150716_create_payment_methods_table',1),(25,'2020_04_10_150731_create_invoices_table',1),(26,'2020_04_10_150802_create_coupon_invoices_table',1),(27,'2020_04_10_153758_create_coupon_courses_table',1),(28,'2020_04_10_153826_create_discussions_table',1),(29,'2020_04_10_153849_create_discussion_admins_table',1),(30,'2020_04_10_154910_create_discussion_replies_table',1),(31,'2020_04_10_154934_create_downloads_table',1),(32,'2020_04_10_155002_create_download_files_table',1),(33,'2020_04_10_155014_create_download_courses_table',1),(34,'2020_04_10_155051_create_email_templates_table',1),(35,'2020_04_10_155114_create_forum_topics_table',1),(36,'2020_04_10_155126_create_forum_posts_table',1),(37,'2020_04_10_155138_create_forum_participants_table',1),(38,'2020_04_10_155251_create_revision_notes_table',1),(39,'2020_04_10_155309_create_invoice_transactions_table',1),(40,'2020_04_10_155325_create_ips_table',1),(41,'2020_04_10_155352_create_lecture_files_table',1),(42,'2020_04_10_155405_create_lecture_notes_table',1),(43,'2020_04_10_160903_create_lecture_pages_table',1),(44,'2020_04_13_103711_create_lesson_files_table',1),(45,'2020_04_13_103723_create_lesson_groups_table',1),(46,'2020_04_13_104351_lesson_lesson_group_pivot',1),(47,'2020_04_13_104433_create_blog_posts_table',1),(48,'2020_04_13_104445_create_blog_categories_table',1),(49,'2020_04_13_110020_blog_category_pivot',1),(50,'2020_04_13_110506_payment_method_currency_pivot',1),(51,'2020_04_13_110821_create_payment_method_fields_table',1),(52,'2020_04_13_110937_create_permission_groups_table',1),(53,'2020_04_13_122949_create_permissions_table',1),(54,'2020_04_13_123037_create_student_fields_table',1),(55,'2020_04_13_123120_create_related_courses_table',1),(56,'2020_04_13_130436_create_roles_table',1),(57,'2020_04_13_130506_add_role_to_users',1),(58,'2020_04_13_134615_admin_permission_pivot',1),(59,'2020_04_13_142536_add_role_user_pivot',1),(60,'2020_04_13_142737_create_course_category_pivot',1),(61,'2020_04_13_142836_admin_course_pivot',1),(62,'2020_04_13_175310_create_course_lessons_table',1),(63,'2020_04_14_121252_create_course_lesson_admins_table',1),(64,'2020_04_14_121954_create_surveys_table',1),(65,'2020_04_14_122043_add_course_survey_pivot',1),(66,'2020_04_14_122132_create_course_tests_table',1),(67,'2020_04_14_122557_create_settings_table',1),(68,'2020_04_14_122642_create_sms_gateways_table',1),(69,'2020_04_14_122704_create_sms_gateway_fields_table',1),(70,'2020_04_14_122725_create_sms_templates_table',1),(71,'2020_04_14_122905_create_student_certificates_table',1),(72,'2020_04_15_125950_create_student_certificate_downloads_table',1),(73,'2020_04_15_130241_student_field_pivot',1),(74,'2020_04_15_130411_create_student_lectures_table',1),(75,'2020_04_15_130546_create_pending_students_table',1),(76,'2020_04_15_130650_create_student_courses_table',1),(77,'2020_04_15_130709_create_student_course_logs_table',1),(78,'2020_04_15_130729_create_student_tests_table',1),(79,'2020_04_15_130954_create_survey_questions_table',1),(80,'2020_04_15_131008_create_survey_options_table',1),(81,'2020_04_15_131027_create_survey_responses_table',1),(82,'2020_04_15_131349_create_survey_response_options_table',1),(83,'2020_04_15_131713_create_templates_table',1),(84,'2020_04_15_131726_create_template_options_table',1),(85,'2020_04_15_131740_create_template_colors_table',1),(86,'2020_04_15_131821_create_test_grades_table',1),(87,'2020_04_15_131945_create_test_questions_table',1),(88,'2020_04_15_131949_create_test_options_table',1),(89,'2020_04_15_132020_create_transactions_table',1),(90,'2020_04_15_132049_create_videos_table',1),(91,'2020_04_15_132207_create_student_videos_table',1),(92,'2020_04_15_133642_add_picture_to_users',1),(93,'2020_04_21_105018_create_widgets_table',1),(94,'2020_04_21_105033_create_widget_values_table',1),(95,'2020_04_28_130903_make_lesson_pivot',1),(96,'2020_04_28_145614_make_course_test',1),(97,'2020_05_12_102430_add_settings',1),(98,'2020_05_12_113650_seed_permission_groups',1),(99,'2020_05_12_124843_seed_permissions',1),(100,'2020_05_20_193453_add_user_to_admins',1),(101,'2020_05_20_200723_add_default_admin_roles',1),(102,'2020_08_11_140753_add_parent_to_course_category',1),(103,'2020_08_11_170723_add_ft_to_lessons',1),(104,'2020_08_25_122904_add_message_permission',1),(105,'2020_08_25_124942_add_video_permissions',1),(106,'2020_08_26_124622_add_capacity_display',1),(107,'2020_08_27_112622_seed_countries',1),(108,'2020_08_27_134249_add_default_currency',1),(109,'2020_09_02_135904_fix_lesson_test',1),(110,'2020_09_03_111646_make_intro_nullable',1),(111,'2020_09_03_111802_make_lecture_order_nullable',1),(112,'2020_09_04_170057_add_dates_to_course_test',1),(113,'2020_09_09_105230_add_pk_to_course_tests',1),(114,'2020_09_09_160235_add_last_name_users',1),(115,'2020_09_10_110652_fix_students_userid_fk',1),(116,'2020_09_10_140553_add_ft_to_courses',1),(117,'2020_09_10_140803_add_ft_to_users',1),(118,'2020_09_22_151500_add_video_settings',1),(119,'2020_09_22_160543_add_video_fields',1),(120,'2020_09_22_172335_add_ft_to_videos',1),(121,'2020_09_23_180106_add_id_to_course_lesson',1),(122,'2020_09_24_165641_make_late_nullable',1),(123,'2020_09_25_143442_add_id_to_course_download',1),(124,'2020_09_29_151537_remove_forum_fk',1),(125,'2020_10_05_125959_add_id_to_course_survery',1),(126,'2020_10_05_161754_add_certificate_flag',1),(127,'2020_10_07_112359_add_blog_permission',1),(128,'2020_10_08_121006_add_widget_fields',1),(129,'2020_10_09_160438_set_coupon_total_nullable',1),(130,'2020_10_09_170447_set_notification_messages',1),(131,'2020_10_09_172338_set_sms_notification_messages',1),(132,'2020_10_12_100131_create_header_menus_table',1),(133,'2020_10_12_100144_create_footer_menus_table',1),(134,'2020_10_12_101049_add_default_template',1),(135,'2020_10_13_092538_remove_payment_method_fields',1),(136,'2020_10_13_105815_update_payment_table',1),(137,'2020_10_13_134003_rename_currency_field',1),(138,'2020_10_14_104256_remove_sms_fields_table',1),(139,'2020_10_14_104456_update_sms_table',1),(140,'2020_10_16_124938_change_invoice_fields',1),(141,'2020_10_23_123026_update_setting_menu_values',1),(142,'2020_11_02_093438_fix_admin_discussion_fk',1),(143,'2020_11_04_124333_create_demo_builder',1),(144,'2020_11_10_120724_add_user_login_token',1),(145,'2020_11_10_142950_create_pending_student_files_table',1),(146,'2020_11_11_151858_add_billing_details',1),(147,'2020_11_12_070922_set_invoice_increment',1),(148,'2020_11_13_145240_add_transaction_increment',1),(149,'2020_11_17_122359_add_sms_default',1),(150,'2020_11_17_124231_add_base_url',1),(151,'2020_11_18_115144_add_mobile_to_articles',1),(152,'2020_11_27_091941_add_admin_details',1),(153,'2020_11_27_093838_add_admin_url',1),(154,'2020_12_02_172012_add_admin_account',1),(155,'2020_12_03_154614_modify_certificate',1),(156,'2020_12_04_124356_remove_auto_enroll',1),(157,'2021_01_11_104057_enable_registration',1),(158,'2021_01_15_141233_add_enrollment_message',1),(159,'2021_01_22_104902_remove_invalid_menu_settings',1),(160,'2021_02_03_125722_fix_student_course_fk',1),(161,'2021_04_27_102729_make_discussion_course_nullable',1),(162,'2021_05_04_180647_add_zoom_settings',1),(163,'2021_05_12_113706_remove_info_settings',1),(164,'2021_06_14_144605_alter_survey_response',1),(165,'2021_06_14_181722_rename_survey_response_table',1),(166,'2021_07_05_112640_add_info_settings',1),(167,'2021_09_13_122734_update_videos_table',1),(168,'2021_09_30_094714_add_digit_validator_to_video',1),(169,'2021_12_30_131259_add_frontend_setting',1),(170,'2021_12_30_150707_add_dashboard_setting',1),(171,'2023_01_12_124357_create_certificate_payments_table',1),(172,'2023_01_12_125240_add_certificate_payment_fields',1),(173,'2023_03_21_123433_add_video_storage_settings',1),(174,'2023_03_21_133128_add_location_to_videos',1),(175,'2023_03_21_154142_add_mime_type_to_videos',1),(176,'2023_06_02_085839_create_class_ack_table',2),(177,'2023_06_03_051755_add_courses_id_to_class_ack_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('student@gmail.com','$2y$10$toacd0aC/jXmHnzNYkZnaecZHm9kwvctoJoehjvMDHcNQtWP43IAa','2023-05-21 23:24:54'),('dev@gmail.com','$2y$10$/AprgDEmO3yfItVRG4Ta7.tko4a2vHD3a3H09WQpk1RR9v0U7al.C','2023-05-30 04:55:48'),('dev65143@gmail.com','$2y$10$2FpDVVCxCzRVVhst6CQVheuzvmpFvc6tb9jMEpTWXaaCquCU1ZMe.','2023-08-09 07:33:58');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int DEFAULT NULL,
  `directory` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supported_currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_global` tinyint(1) NOT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_student_files`
--

DROP TABLE IF EXISTS `pending_student_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_student_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pending_student_id` bigint unsigned NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pending_student_files_pending_student_id_foreign` (`pending_student_id`),
  CONSTRAINT `pending_student_files_pending_student_id_foreign` FOREIGN KEY (`pending_student_id`) REFERENCES `pending_students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_student_files`
--

LOCK TABLES `pending_student_files` WRITE;
/*!40000 ALTER TABLE `pending_student_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_student_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_students`
--

DROP TABLE IF EXISTS `pending_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_students`
--

LOCK TABLES `pending_students` WRITE;
/*!40000 ALTER TABLE `pending_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
INSERT INTO `permission_groups` VALUES (1,NULL,NULL,'student',1),(2,NULL,NULL,'course',2),(3,NULL,NULL,'attendance',3),(4,NULL,NULL,'classes',4),(5,NULL,NULL,'revision_notes',5),(6,NULL,NULL,'blog',6),(7,NULL,NULL,'files',7),(8,NULL,NULL,'articles',8),(9,NULL,NULL,'settings',9),(10,NULL,NULL,'tests',10),(11,NULL,NULL,'discussions',11),(12,NULL,NULL,'certificates',12),(13,NULL,NULL,'downloads',13),(14,NULL,NULL,'miscellaneous',14),(15,NULL,NULL,'homework',15),(16,NULL,NULL,'reports',16),(17,NULL,NULL,'survey',17),(18,NULL,NULL,'video',18);
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_group_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_permission_group_id_foreign` (`permission_group_id`),
  CONSTRAINT `permissions_permission_group_id_foreign` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,NULL,NULL,'view_students',1),(2,NULL,NULL,'add_student',1),(3,NULL,NULL,'view_student',1),(4,NULL,NULL,'edit_student',1),(5,NULL,NULL,'delete_student',1),(6,NULL,NULL,'bulk_enroll',1),(7,NULL,NULL,'enroll',1),(8,NULL,NULL,'view_sessions',2),(9,NULL,NULL,'add_session',2),(10,NULL,NULL,'edit_session',2),(11,NULL,NULL,'delete_session',2),(12,NULL,NULL,'export_student',2),(13,NULL,NULL,'export_student_attendance',2),(14,NULL,NULL,'view_attendance_sheet',2),(15,NULL,NULL,'set_attendance',3),(16,NULL,NULL,'set_bulk_attendance',3),(17,NULL,NULL,'set_import_attendance',3),(18,NULL,NULL,'create_certificate_list',3),(19,NULL,NULL,'set_attendance_dates',3),(20,NULL,NULL,'view_classes',4),(21,NULL,NULL,'add_class',4),(22,NULL,NULL,'edit_class',4),(23,NULL,NULL,'delete_class',4),(24,NULL,NULL,'view_notes',5),(25,NULL,NULL,'add_note',5),(26,NULL,NULL,'edit_note',5),(27,NULL,NULL,'delete_note',5),(28,NULL,NULL,'view_blog',6),(29,NULL,NULL,'add_blog',6),(30,NULL,NULL,'edit_blog',6),(31,NULL,NULL,'delete_blog',6),(32,NULL,NULL,'manage_files',7),(33,NULL,NULL,'view_articles',8),(34,NULL,NULL,'add_article',8),(35,NULL,NULL,'edit_article',8),(36,NULL,NULL,'delete_article',8),(37,NULL,NULL,'view_widgets',9),(38,NULL,NULL,'create_widget',9),(39,NULL,NULL,'delete_widget',9),(40,NULL,NULL,'view_registration_fields',9),(41,NULL,NULL,'add_registration_field',9),(42,NULL,NULL,'delete_registration_field',9),(43,NULL,NULL,'edit_registration_field',9),(44,NULL,NULL,'edit_site_settings',9),(45,NULL,NULL,'view_roles',9),(46,NULL,NULL,'add_role',9),(47,NULL,NULL,'edit_role',9),(48,NULL,NULL,'delete_role',9),(49,NULL,NULL,'view_payment_methods',9),(50,NULL,NULL,'edit_payment_methods',9),(51,NULL,NULL,'view_admins',9),(52,NULL,NULL,'add_admin',9),(53,NULL,NULL,'edit_admin',9),(54,NULL,NULL,'view_transactions',2),(55,NULL,NULL,'view_tests',10),(56,NULL,NULL,'add_test',10),(57,NULL,NULL,'add_options',10),(58,NULL,NULL,'add_question',10),(59,NULL,NULL,'delete_question',10),(60,NULL,NULL,'delete_option',10),(61,NULL,NULL,'duplicate_question',10),(62,NULL,NULL,'edit_question',10),(63,NULL,NULL,'edit_option',10),(64,NULL,NULL,'export_result',10),(65,NULL,NULL,'manage_questions',10),(66,NULL,NULL,'view_results',10),(67,NULL,NULL,'view_result',10),(68,NULL,NULL,'view_payments',2),(69,NULL,NULL,'view_discussions',11),(70,NULL,NULL,'view_discussion',11),(71,NULL,NULL,'reply_discussion',11),(72,NULL,NULL,'delete_discussion',11),(73,NULL,NULL,'view_instructors',2),(74,NULL,NULL,'set_instructors',2),(75,NULL,NULL,'upgrade_database',9),(76,NULL,NULL,'view_certificates',12),(77,NULL,NULL,'edit_certificate',12),(78,NULL,NULL,'add_certificate',12),(79,NULL,NULL,'delete_certificate',12),(80,NULL,NULL,'view_downloads',13),(81,NULL,NULL,'edit_download',13),(82,NULL,NULL,'add_download',13),(83,NULL,NULL,'delete_download',13),(84,NULL,NULL,'global_resource_access',14),(85,NULL,NULL,'add_course',2),(86,NULL,NULL,'view_course_categories',2),(87,NULL,NULL,'add_course_category',2),(88,NULL,NULL,'edit_course_category',2),(89,NULL,NULL,'delete_course_category',2),(90,NULL,NULL,'view_class_groups',4),(91,NULL,NULL,'add_class_group',4),(92,NULL,NULL,'edit_class_group',4),(93,NULL,NULL,'delete_class_group',4),(94,NULL,NULL,'manage_class_downloads',4),(95,NULL,NULL,'view_lectures',4),(96,NULL,NULL,'add_lecture',4),(97,NULL,NULL,'edit_lecture',4),(98,NULL,NULL,'delete_lecture',4),(99,NULL,NULL,'manage_lecture_downloads',4),(100,NULL,NULL,'manage_lecture_content',4),(101,NULL,NULL,'add_homework',15),(102,NULL,NULL,'view_homework_list',15),(103,NULL,NULL,'edit_homework',15),(104,NULL,NULL,'view_homework',15),(105,NULL,NULL,'delete_homework',15),(106,NULL,NULL,'view_homework_submissions',15),(107,NULL,NULL,'view_homework_submission',15),(108,NULL,NULL,'export_homework_results',15),(109,NULL,NULL,'view_themes',9),(110,NULL,NULL,'customize_theme',9),(111,NULL,NULL,'install_theme',9),(112,NULL,NULL,'configure_sms_gateways',9),(113,NULL,NULL,'edit_sms_gateway',9),(114,NULL,NULL,'install_gateway',9),(115,NULL,NULL,'uninstall_gateway',9),(116,NULL,NULL,'view_forum_topics',11),(117,NULL,NULL,'add_forum_topic',11),(118,NULL,NULL,'view_forum_topic',11),(119,NULL,NULL,'reply_forum_topic',11),(120,NULL,NULL,'delete_forum_topic',11),(121,NULL,NULL,'view_test_grades',9),(122,NULL,NULL,'add_test_grade',9),(123,NULL,NULL,'edit_test_grade',9),(124,NULL,NULL,'delete_test_grade',9),(125,NULL,NULL,'view_report_page',16),(126,NULL,NULL,'view_class_report',16),(127,NULL,NULL,'view_students_report',16),(128,NULL,NULL,'view_tests_report',16),(129,NULL,NULL,'view_homework_report',16),(130,NULL,NULL,'view_email_notifications',9),(131,NULL,NULL,'edit_email_notification',9),(132,NULL,NULL,'view_sms_notifications',9),(133,NULL,NULL,'edit_sms_notification',9),(134,NULL,NULL,'view_coupons',9),(135,NULL,NULL,'add_coupon',9),(136,NULL,NULL,'edit_coupon',9),(137,NULL,NULL,'delete_coupon',9),(138,NULL,NULL,'manage_currencies',9),(139,NULL,NULL,'delete_currencies',9),(140,NULL,NULL,'view_surveys',17),(141,NULL,NULL,'add_survey',17),(142,NULL,NULL,'add_survey_options',17),(143,NULL,NULL,'add_survey_question',17),(144,NULL,NULL,'delete_survey_question',17),(145,NULL,NULL,'delete_survey_option',17),(146,NULL,NULL,'duplicate_survey_question',17),(147,NULL,NULL,'edit_survey_question',17),(148,NULL,NULL,'edit_survey_option',17),(149,NULL,NULL,'export_survey_result',17),(150,NULL,NULL,'manage_survey_questions',17),(151,NULL,NULL,'view_survey_results',17),(152,NULL,NULL,'view_survey_result',17),(153,NULL,NULL,'message_students',1),(154,NULL,NULL,'view_videos',18),(155,NULL,NULL,'add_video',18),(156,NULL,NULL,'edit_video',18),(157,NULL,NULL,'delete_video',18),(158,NULL,NULL,'play_video',18),(159,NULL,NULL,'view_video_space',18),(160,'2023-05-11 02:51:11','2023-05-11 02:51:11','manage_blog_categories',6);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_courses`
--

DROP TABLE IF EXISTS `related_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint unsigned NOT NULL,
  `related_course_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `related_courses_course_id_foreign` (`course_id`),
  KEY `related_courses_related_course_id_foreign` (`related_course_id`),
  CONSTRAINT `related_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `related_courses_related_course_id_foreign` FOREIGN KEY (`related_course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_courses`
--

LOCK TABLES `related_courses` WRITE;
/*!40000 ALTER TABLE `related_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `related_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_notes`
--

DROP TABLE IF EXISTS `revision_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `course_id` bigint unsigned NOT NULL,
  `lesson_id` bigint unsigned DEFAULT NULL,
  `admin_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revision_notes_course_id_foreign` (`course_id`),
  KEY `revision_notes_lesson_id_foreign` (`lesson_id`),
  KEY `revision_notes_admin_id_foreign` (`admin_id`),
  CONSTRAINT `revision_notes_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `revision_notes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `revision_notes_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_notes`
--

LOCK TABLES `revision_notes` WRITE;
/*!40000 ALTER TABLE `revision_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `revision_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'2023-05-11 02:51:04','2023-05-11 02:51:04','Admin'),(2,'2023-05-11 02:51:04','2023-05-11 02:51:04','Student');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,NULL,'2023-05-11 02:51:12','general_site_name',NULL,'Cogent LMS','text','','',NULL),(2,NULL,'2023-05-11 02:51:13','regis_enable_registration',NULL,'0','radio','1=Yes,0=No','',NULL),(3,NULL,'2023-05-11 02:51:12','general_homepage_title',NULL,'Cogent','text','','',NULL),(4,NULL,NULL,'general_homepage_meta_desc',NULL,NULL,'textarea','','',NULL),(5,NULL,'2023-05-11 02:51:12','general_admin_email',NULL,'info@email.com','text','','',NULL),(6,NULL,NULL,'color_navbar',NULL,NULL,'text','','',NULL),(7,NULL,NULL,'color_primary_color',NULL,NULL,'text','','',NULL),(8,NULL,NULL,'color_navtext',NULL,NULL,'text','','',NULL),(9,NULL,NULL,'color_footer',NULL,NULL,'text','','',NULL),(10,NULL,NULL,'color_footertext',NULL,NULL,'text','','',NULL),(11,NULL,'2023-05-11 02:51:12','image_logo',NULL,'usermedia/student_uploads/2023_05/logo-1.png','hidden','','',NULL),(12,NULL,NULL,'regis_registration_instructions',NULL,NULL,'textarea','','rte',NULL),(13,NULL,NULL,'footer_about',NULL,NULL,'textarea','','rte',NULL),(14,NULL,NULL,'footer_address',NULL,NULL,'textarea','','',NULL),(15,NULL,NULL,'footer_email',NULL,NULL,'text','','',NULL),(16,NULL,NULL,'footer_tel',NULL,NULL,'text','','',NULL),(17,NULL,'2023-05-11 02:51:12','image_icon',NULL,'usermedia/student_uploads/2023_05/logo-1.png','hidden','','',NULL),(18,NULL,'2023-05-11 02:51:09','country_id',NULL,'105','select','','',NULL),(20,NULL,NULL,'general_ssl',NULL,'0','radio','1=Yes,0=No','',NULL),(21,NULL,NULL,'footer_newsletter_code',NULL,NULL,'textarea','','',NULL),(22,NULL,NULL,'footer_credits',NULL,NULL,'text','','',NULL),(23,NULL,NULL,'general_header_scripts',NULL,NULL,'textarea','','',NULL),(24,NULL,NULL,'general_foot_scripts',NULL,NULL,'textarea','','',NULL),(25,NULL,'2023-05-11 02:51:12','menu_show_courses',NULL,'1','radio','1=Yes,0=No','',NULL),(26,NULL,'2023-05-11 02:51:12','menu_show_sessions',NULL,'1','radio','1=Yes,0=No','',NULL),(30,NULL,NULL,'footer_show_sicons',NULL,NULL,'radio','1=Yes,0=No','',NULL),(31,NULL,NULL,'footer_show_newsletter',NULL,NULL,'radio','1=Yes,0=No','',NULL),(32,NULL,NULL,'footer_show_about',NULL,NULL,'radio','1=Yes,0=No','',NULL),(33,NULL,NULL,'footer_show_contact',NULL,NULL,'radio','1=Yes,0=No','',NULL),(34,NULL,NULL,'regis_email_message',NULL,NULL,'textarea','','rte',NULL),(35,NULL,NULL,'color_page_title',NULL,NULL,'text','','',NULL),(36,NULL,NULL,'color_page_title_text',NULL,NULL,'text','','',NULL),(37,NULL,NULL,'regis_enrollment_alert',NULL,'0','radio','1=Yes,0=No','',NULL),(38,NULL,NULL,'regis_signup_alert',NULL,'0','radio','1=Yes,0=No','',NULL),(39,NULL,NULL,'general_disqus',NULL,NULL,'text','','',NULL),(40,NULL,NULL,'label_enroll',NULL,NULL,'text','','',NULL),(41,NULL,NULL,'label_discussion',NULL,NULL,'text','','',NULL),(42,NULL,NULL,'label_classes_attended',NULL,NULL,'text','','',NULL),(43,NULL,NULL,'label_revision_notes',NULL,NULL,'text','','',NULL),(44,NULL,NULL,'label_take_test',NULL,NULL,'text','','',NULL),(45,NULL,NULL,'label_classes',NULL,NULL,'text','','',NULL),(46,NULL,NULL,'label_sessions',NULL,NULL,'text','','',NULL),(47,NULL,NULL,'label_blog',NULL,NULL,'text','','',NULL),(48,NULL,NULL,'label_contact_us',NULL,NULL,'text','','',NULL),(49,NULL,NULL,'label_about_us',NULL,'About Us-','text','','',NULL),(50,NULL,NULL,'label_follow_us',NULL,NULL,'text','','',NULL),(51,NULL,NULL,'general_discussion_instructions',NULL,NULL,'textarea','','rte',NULL),(52,NULL,NULL,'mail_protocol',NULL,'smtp','select','mail=Mail,smtp=SMTP','',NULL),(53,NULL,NULL,'mail_smtp_host',NULL,'mail.cogenteservices.in','text','','',NULL),(54,NULL,NULL,'mail_smtp_username',NULL,'ems@cogenteservices.in','text','','',NULL),(55,NULL,NULL,'mail_smtp_password',NULL,'cogentems@123','text','','',NULL),(56,NULL,NULL,'mail_smtp_port',NULL,'25','text','','',NULL),(57,NULL,NULL,'mail_smtp_timeout',NULL,NULL,'text','','',NULL),(58,NULL,NULL,'general_show_fee',NULL,'0','radio','1=Yes,0=No','',NULL),(59,NULL,'2023-05-11 02:51:12','menu_show_discussions',NULL,'1','radio','1=Yes,0=No','',NULL),(60,NULL,'2023-05-11 02:51:12','menu_show_tests',NULL,'1','radio','1=Yes,0=No','',NULL),(61,NULL,'2023-05-11 02:51:12','menu_show_notes',NULL,'1','radio','1=Yes,0=No','',NULL),(63,NULL,NULL,'general_site_ip',NULL,NULL,'text','','',NULL),(64,NULL,NULL,'general_send_reminder',NULL,'0','radio','1=Yes,0=No','',NULL),(65,NULL,NULL,'general_reminder_days',NULL,NULL,'text','','number',NULL),(66,NULL,NULL,'general_timezone',NULL,'Australia/Adelaide','select','Australia/Adelaide,Australia/Broken_Hill,Australia/Darwin,Australia/North,Australia/South,Australia/Yancowinna,America/Porto_Acre,Australia/Adelaide,America/Eirunepe,America/Rio_Branco,Brazil/Acre,Asia/Jayapura,Australia/Broken_Hill,Australia/Darwin,Australia/North,Australia/South,Australia/Yancowinna,America/Porto_Acre,America/Eirunepe,America/Rio_Branco,Brazil/Acre,Australia/Eucla,Australia/Eucla,America/Goose_Bay,America/Pangnirtung,America/Halifax,America/Barbados,America/Blanc-Sablon,America/Glace_Bay,America/Goose_Bay,America/Martinique,America/Moncton,America/Pangnirtung,America/Thule,Atlantic/Bermuda,Canada/Atlantic,Asia/Baghdad,Australia/Melbourne,Antarctica/Macquarie,Australia/ACT,Australia/Brisbane,Australia/Canberra,Australia/Currie,Australia/Hobart,Australia/Lindeman,Australia/NSW,Australia/Queensland,Australia/Sydney,Australia/Tasmania,Australia/Victoria,Australia/Melbourne,Antarctica/Macquarie,Australia/ACT,Australia/Brisbane,Australia/Canberra,Australia/Currie,Australia/Hobart,Australia/LHI,Australia/Lindeman,Australia/Lord_Howe,Australia/NSW,Australia/Queensland,Australia/Sydney,Australia/Tasmania,Australia/Victoria,Asia/Kabul,Asia/Kabul,America/Anchorage,America/Anchorage,America/Adak,America/Atka,America/Anchorage,America/Juneau,America/Nome,America/Sitka,America/Yakutat,America/Anchorage,America/Juneau,America/Nome,America/Sitka,America/Yakutat,Asia/Aqtobe,Asia/Aqtobe,Asia/Aqtobe,Asia/Aqtobe,Asia/Almaty,Asia/Almaty,Asia/Almaty,Asia/Yerevan,Asia/Yerevan,America/Boa_Vista,America/Campo_Grande,America/Cuiaba,America/Manaus,America/Porto_Velho,America/Santarem,Brazil/West,Asia/Yerevan,Asia/Yerevan,America/Asuncion,America/Boa_Vista,America/Campo_Grande,America/Cuiaba,America/Eirunepe,America/Manaus,America/Porto_Acre,America/Porto_Velho,America/Rio_Branco,America/Santarem,Brazil/Acre,Brazil/West,Europe/Amsterdam,Europe/Athens,Asia/Anadyr,Asia/Anadyr,Asia/Anadyr,Asia/Anadyr,Asia/Anadyr,Asia/Anadyr,America/Curacao,America/Aruba,America/Kralendijk,America/Lower_Princes,America/Halifax,America/Blanc-Sablon,America/Glace_Bay,America/Moncton,America/Pangnirtung,America/Puerto_Rico,Canada/Atlantic,Asia/Aqtau,Asia/Aqtau,Asia/Aqtobe,Asia/Aqtau,Asia/Aqtau,Asia/Aqtobe,America/Buenos_Aires,America/Buenos_Aires,America/Argentina/Buenos_Aires,America/Argentina/Catamarca,America/Argentina/ComodRivadavia,America/Argentina/Cordoba,America/Argentina/Jujuy,America/Argentina/La_Rioja,America/Argentina/Mendoza,America/Argentina/Rio_Gallegos,America/Argentina/Salta,America/Argentina/San_Juan,America/Argentina/San_Luis,America/Argentina/Tucuman,America/Argentina/Ushuaia,America/Catamarca,America/Cordoba,America/Jujuy,America/Mendoza,America/Rosario,Antarctica/Palmer,America/Argentina/Buenos_Aires,America/Argentina/Catamarca,America/Argentina/ComodRivadavia,America/Argentina/Cordoba,America/Argentina/Jujuy,America/Argentina/La_Rioja,America/Argentina/Mendoza,America/Argentina/Rio_Gallegos,America/Argentina/Salta,America/Argentina/San_Juan,America/Argentina/San_Luis,America/Argentina/Tucuman,America/Argentina/Ushuaia,America/Catamarca,America/Cordoba,America/Jujuy,America/Mendoza,America/Rosario,Antarctica/Palmer,America/Buenos_Aires,America/Buenos_Aires,America/Argentina/Buenos_Aires,America/Argentina/Catamarca,America/Argentina/ComodRivadavia,America/Argentina/Cordoba,America/Argentina/Jujuy,America/Argentina/La_Rioja,America/Argentina/Mendoza,America/Argentina/Rio_Gallegos,America/Argentina/Salta,America/Argentina/San_Juan,America/Argentina/San_Luis,America/Argentina/Tucuman,America/Argentina/Ushuaia,America/Catamarca,America/Cordoba,America/Jujuy,America/Mendoza,America/Rosario,Antarctica/Palmer,America/Argentina/Buenos_Aires,America/Argentina/Catamarca,America/Argentina/ComodRivadavia,America/Argentina/Cordoba,America/Argentina/Jujuy,America/Argentina/La_Rioja,America/Argentina/Mendoza,America/Argentina/Rio_Gallegos,America/Argentina/Salta,America/Argentina/San_Juan,America/Argentina/San_Luis,America/Argentina/Tucuman,America/Argentina/Ushuaia,America/Catamarca,America/Cordoba,America/Jujuy,America/Mendoza,America/Rosario,Antarctica/Palmer,Asia/Ashkhabad,Asia/Ashkhabad,Asia/Ashgabat,Asia/Ashgabat,Asia/Ashkhabad,Asia/Ashkhabad,Asia/Ashgabat,Asia/Ashgabat,Asia/Riyadh,America/Anguilla,America/Antigua,America/Aruba,America/Barbados,America/Blanc-Sablon,America/Curacao,America/Dominica,America/Glace_Bay,America/Goose_Bay,America/Grand_Turk,America/Grenada,America/Guadeloupe,America/Halifax,America/Kralendijk,America/Lower_Princes,America/Marigot,America/Martinique,America/Miquelon,America/Moncton,America/Montserrat,America/Pangnirtung,America/Port_of_Spain,America/Puerto_Rico,America/Santo_Domingo,America/St_Barthelemy,America/St_Kitts,America/St_Lucia,America/St_Thomas,America/St_Vincent,America/Thule,America/Tortola,America/Virgin,Atlantic/Bermuda,Canada/Atlantic,Asia/Aden,Asia/Baghdad,Asia/Bahrain,Asia/Kuwait,Asia/Qatar,Australia/Perth,Australia/West,Australia/Perth,Antarctica/Casey,Australia/West,America/Halifax,America/Blanc-Sablon,America/Glace_Bay,America/Moncton,America/Pangnirtung,America/Puerto_Rico,Canada/Atlantic,Atlantic/Azores,Atlantic/Azores,Atlantic/Azores,Atlantic/Azores,Atlantic/Azores,Asia/Baku,Asia/Baku,Asia/Baku,Asia/Baku,Asia/Baku,Asia/Baku,Asia/Baku,Asia/Baku,Europe/London,Asia/Dacca,Asia/Dhaka,Europe/Belfast,Europe/Gibraltar,Europe/Guernsey,Europe/Isle_of_Man,Europe/Jersey,GB,America/Adak,Asia/Dacca,America/Atka,America/Nome,Asia/Dhaka,Africa/Mogadishu,Africa/Addis_Ababa,Africa/Asmara,Africa/Asmera,Africa/Dar_es_Salaam,Africa/Djibouti,Africa/Kampala,Africa/Nairobi,Indian/Antananarivo,Indian/Comoro,Indian/Mayotte,Africa/Nairobi,Africa/Addis_Ababa,Africa/Asmara,Africa/Asmera,Africa/Dar_es_Salaam,Africa/Djibouti,Africa/Kampala,Africa/Mogadishu,Indian/Antananarivo,Indian/Comoro,Indian/Mayotte,America/Barbados,Europe/Tiraspol,America/Bogota,Asia/Baghdad,Asia/Bangkok,Asia/Phnom_Penh,Asia/Vientiane,Asia/Jakarta,Europe/Bucharest,Europe/Chisinau,Asia/Brunei,Asia/Brunei,Asia/Kuching,Asia/Kuching,Asia/Kuching,America/La_Paz,America/La_Paz,America/Sao_Paulo,America/Araguaina,America/Bahia,America/Belem,America/Fortaleza,America/Maceio,America/Recife,Brazil/East,America/Sao_Paulo,America/Araguaina,America/Bahia,America/Belem,America/Fortaleza,America/Maceio,America/Recife,America/Santarem,Brazil/East,Europe/London,Europe/London,America/Adak,America/Atka,America/Nome,Pacific/Midway,Pacific/Pago_Pago,Pacific/Samoa,Europe/Belfast,Europe/Guernsey,Europe/Isle_of_Man,Europe/Jersey,GB,Europe/Belfast,Europe/Dublin,Europe/Gibraltar,Europe/Guernsey,Europe/Isle_of_Man,Europe/Jersey,GB,Pacific/Bougainville,Asia/Thimbu,Asia/Thimphu,Asia/Kolkata,Asia/Calcutta,Asia/Dacca,Asia/Dhaka,Asia/Rangoon,Atlantic/Canary,America/Anchorage,Australia/Adelaide,Africa/Juba,Africa/Khartoum,Antarctica/Casey,America/Anchorage,Africa/Khartoum,Africa/Blantyre,Africa/Bujumbura,Africa/Gaborone,Africa/Harare,Africa/Juba,Africa/Kigali,Africa/Lubumbashi,Africa/Lusaka,Africa/Maputo,Africa/Windhoek,America/Anchorage,Indian/Cocos,America/Rankin_Inlet,America/Resolute,America/Chicago,Asia/Shanghai,America/Havana,America/Atikokan,America/Bahia_Banderas,America/Belize,America/Cambridge_Bay,America/Cancun,America/Chihuahua,America/Coral_Harbour,America/Costa_Rica,America/El_Salvador,America/Fort_Wayne,America/Guatemala,America/Indiana/Indianapolis,America/Indiana/Knox,America/Indiana/Marengo,America/Indiana/Petersburg,America/Indiana/Tell_City,America/Indiana/Vevay,America/Indiana/Vincennes,America/Indiana/Winamac,America/Indianapolis,America/Iqaluit,America/Kentucky/Louisville,America/Kentucky/Monticello,America/Knox_IN,America/Louisville,America/Managua,America/Matamoros,America/Menominee,America/Merida,America/Mexico_City,America/Monterrey,America/North_Dakota/Beulah,America/North_Dakota/Center,America/North_Dakota/New_Salem,America/Ojinaga,America/Pangnirtung,America/Rainy_River,America/Rankin_Inlet,America/Resolute,America/Tegucigalpa,America/Winnipeg,Canada/Central,Mexico/General,Asia/Chongqing,Asia/Chungking,Asia/Harbin,Asia/Taipei,PRC,ROC,Europe/Berlin,Europe/Berlin,Europe/Kaliningrad,Africa/Algiers,Africa/Ceuta,Africa/Tripoli,Africa/Tunis,Antarctica/Troll,Arctic/Longyearbyen,Atlantic/Jan_Mayen,Europe/Amsterdam,Europe/Andorra,Europe/Athens,Europe/Belgrade,Europe/Bratislava,Europe/Brussels,Europe/Budapest,Europe/Busingen,Europe/Chisinau,Europe/Copenhagen,Europe/Gibraltar,Europe/Kaliningrad,Europe/Kiev,Europe/Lisbon,Europe/Ljubljana,Europe/Luxembourg,Europe/Madrid,Europe/Malta,Europe/Minsk,Europe/Monaco,Europe/Oslo,Europe/Paris,Europe/Podgorica,Europe/Prague,Europe/Riga,Europe/Rome,Europe/San_Marino,Europe/Sarajevo,Europe/Simferopol,Europe/Skopje,Europe/Sofia,Europe/Stockholm,Europe/Tallinn,Europe/Tirane,Europe/Tiraspol,Europe/Uzhgorod,Europe/Vaduz,Europe/Vatican,Europe/Vienna,Europe/Vilnius,Europe/Warsaw,Europe/Zagreb,Europe/Zaporozhye,Europe/Zurich,Europe/Berlin,Europe/Kaliningrad,Africa/Algiers,Africa/Casablanca,Africa/Ceuta,Africa/Tripoli,Africa/Tunis,Arctic/Longyearbyen,Atlantic/Jan_Mayen,Europe/Amsterdam,Europe/Andorra,Europe/Athens,Europe/Belgrade,Europe/Bratislava,Europe/Brussels,Europe/Budapest,Europe/Busingen,Europe/Chisinau,Europe/Copenhagen,Europe/Gibraltar,Europe/Kaliningrad,Europe/Kiev,Europe/Lisbon,Europe/Ljubljana,Europe/Luxembourg,Europe/Madrid,Europe/Malta,Europe/Minsk,Europe/Monaco,Europe/Oslo,Europe/Paris,Europe/Podgorica,Europe/Prague,Europe/Riga,Europe/Rome,Europe/San_Marino,Europe/Sarajevo,Europe/Simferopol,Europe/Skopje,Europe/Sofia,Europe/Stockholm,Europe/Tallinn,Europe/Tirane,Europe/Tiraspol,Europe/Uzhgorod,Europe/Vaduz,Europe/Vatican,Europe/Vienna,Europe/Vilnius,Europe/Warsaw,Europe/Zagreb,Europe/Zaporozhye,Europe/Zurich,America/Scoresbysund,America/Scoresbysund,Pacific/Chatham,Pacific/Chatham,Pacific/Chatham,America/Belize,Asia/Choibalsan,Asia/Choibalsan,Asia/Choibalsan,Asia/Choibalsan,Pacific/Chuuk,Pacific/Truk,Pacific/Yap,Pacific/Rarotonga,Pacific/Rarotonga,Pacific/Rarotonga,America/Santiago,America/Santiago,Antarctica/Palmer,Chile/Continental,Chile/Continental,America/Santiago,America/Santiago,America/Santiago,Antarctica/Palmer,Chile/Continental,Antarctica/Palmer,Chile/Continental,Chile/Continental,America/Argentina/Buenos_Aires,America/Argentina/Catamarca,America/Argentina/ComodRivadavia,America/Argentina/Cordoba,America/Argentina/Jujuy,America/Argentina/La_Rioja,America/Argentina/Mendoza,America/Argentina/Rio_Gallegos,America/Argentina/Salta,America/Argentina/San_Juan,America/Argentina/San_Luis,America/Argentina/Tucuman,America/Argentina/Ushuaia,America/Buenos_Aires,America/Catamarca,America/Cordoba,America/Jujuy,America/Mendoza,America/Rosario,America/Caracas,America/La_Paz,America/Cayman,America/Panama,Europe/Chisinau,Europe/Tiraspol,America/Bogota,America/Bogota,America/Chicago,America/Atikokan,America/Coral_Harbour,America/Fort_Wayne,America/Indiana/Indianapolis,America/Indiana/Knox,America/Indiana/Marengo,America/Indiana/Petersburg,America/Indiana/Tell_City,America/Indiana/Vevay,America/Indiana/Vincennes,America/Indiana/Winamac,America/Indianapolis,America/Kentucky/Louisville,America/Kentucky/Monticello,America/Knox_IN,America/Louisville,America/Menominee,America/Rainy_River,America/Winnipeg,Canada/Central,America/Chicago,America/Havana,America/Atikokan,America/Bahia_Banderas,America/Belize,America/Cambridge_Bay,America/Cancun,America/Chihuahua,America/Coral_Harbour,America/Costa_Rica,America/Detroit,America/El_Salvador,America/Fort_Wayne,America/Guatemala,America/Hermosillo,America/Indiana/Indianapolis,America/Indiana/Knox,America/Indiana/Marengo,America/Indiana/Petersburg,America/Indiana/Tell_City,America/Indiana/Vevay,America/Indiana/Vincennes,America/Indiana/Winamac,America/Indianapolis,America/Iqaluit,America/Kentucky/Louisville,America/Kentucky/Monticello,America/Knox_IN,America/Louisville,America/Managua,America/Matamoros,America/Mazatlan,America/Menominee,America/Merida,America/Mexico_City,America/Monterrey,America/North_Dakota/Beulah,America/North_Dakota/Center,America/North_Dakota/New_Salem,America/Ojinaga,America/Pangnirtung,America/Rainy_River,America/Rankin_Inlet,America/Regina,America/Resolute,America/Swift_Current,America/Tegucigalpa,America/Thunder_Bay,America/Winnipeg,Canada/Central,Canada/East-Saskatchewan,Canada/Saskatchewan,Mexico/BajaSur,Mexico/General,Asia/Chongqing,Asia/Chungking,Asia/Harbin,Asia/Macao,Asia/Macau,Asia/Shanghai,Asia/Taipei,PRC,ROC,Europe/Zaporozhye,Atlantic/Cape_Verde,Atlantic/Cape_Verde,Atlantic/Cape_Verde,America/Chicago,America/Atikokan,America/Coral_Harbour,America/Fort_Wayne,America/Indiana/Indianapolis,America/Indiana/Knox,America/Indiana/Marengo,America/Indiana/Petersburg,America/Indiana/Tell_City,America/Indiana/Vevay,America/Indiana/Vincennes,America/Indiana/Winamac,America/Indianapolis,America/Kentucky/Louisville,America/Kentucky/Monticello,America/Knox_IN,America/Louisville,America/Menominee,America/Mexico_City,America/Rainy_River,America/Winnipeg,Canada/Central,Mexico/General,Indian/Christmas,Pacific/Guam,Pacific/Saipan,Asia/Dacca,Asia/Dhaka,Antarctica/Davis,Antarctica/Davis,Antarctica/DumontDUrville,Europe/Dublin,Asia/Dushanbe,Asia/Dushanbe,Asia/Dushanbe,Asia/Dushanbe,Chile/EasterIsland,Chile/EasterIsland,Pacific/Easter,Pacific/Easter,Chile/EasterIsland,Chile/EasterIsland,Chile/EasterIsland,Pacific/Easter,Pacific/Easter,Pacific/Easter,Africa/Khartoum,Africa/Addis_Ababa,Africa/Asmara,Africa/Asmera,Africa/Dar_es_Salaam,Africa/Djibouti,Africa/Juba,Africa/Kampala,Africa/Mogadishu,Africa/Nairobi,Indian/Antananarivo,Indian/Comoro,Indian/Mayotte,America/Guayaquil,Pacific/Galapagos,America/Iqaluit,America/New_York,America/Cancun,America/Detroit,America/Fort_Wayne,America/Grand_Turk,America/Indiana/Indianapolis,America/Indiana/Marengo,America/Indiana/Petersburg,America/Indiana/Tell_City,America/Indiana/Vevay,America/Indiana/Vincennes,America/Indiana/Winamac,America/Indianapolis,America/Iqaluit,America/Jamaica,America/Kentucky/Louisville,America/Kentucky/Monticello,America/Louisville,America/Montreal,America/Nassau,America/Nipigon,America/Pangnirtung,America/Port-au-Prince,America/Santo_Domingo,America/Thunder_Bay,America/Toronto,Canada/Eastern,Europe/Helsinki,Africa/Cairo,Asia/Amman,Asia/Beirut,Asia/Damascus,Asia/Gaza,Asia/Hebron,Asia/Istanbul,Asia/Nicosia,Europe/Athens,Europe/Bucharest,Europe/Chisinau,Europe/Istanbul,Europe/Kaliningrad,Europe/Kiev,Europe/Mariehamn,Europe/Minsk,Europe/Moscow,Europe/Nicosia,Europe/Riga,Europe/Samara,Europe/Simferopol,Europe/Sofia,Europe/Tallinn,Europe/Tiraspol,Europe/Uzhgorod,Europe/Vilnius,Europe/Warsaw,Europe/Zaporozhye,Europe/Helsinki,Asia/Gaza,Asia/Hebron,Africa/Cairo,Africa/Tripoli,Asia/Amman,Asia/Beirut,Asia/Damascus,Asia/Gaza,Asia/Hebron,Asia/Istanbul,Asia/Nicosia,Europe/Athens,Europe/Bucharest,Europe/Chisinau,Europe/Istanbul,Europe/Kaliningrad,Europe/Kiev,Europe/Mariehamn,Europe/Minsk,Europe/Moscow,Europe/Nicosia,Europe/Riga,Europe/Simferopol,Europe/Sofia,Europe/Tallinn,Europe/Tiraspol,Europe/Uzhgorod,Europe/Vilnius,Europe/Warsaw,Europe/Zaporozhye,America/Scoresbysund,America/Scoresbysund,America/Santo_Domingo,Chile/EasterIsland,Pacific/Easter,America/New_York,America/Detroit,America/Iqaluit,America/Montreal,America/Nipigon,America/Thunder_Bay,America/Toronto,Canada/Eastern,America/New_York,America/Atikokan,America/Cambridge_Bay,America/Cancun,America/Cayman,America/Chicago,America/Coral_Harbour,America/Detroit,America/Fort_Wayne,America/Grand_Turk,America/Indiana/Indianapolis,America/Indiana/Knox,America/Indiana/Marengo,America/Indiana/Petersburg,America/Indiana/Tell_City,America/Indiana/Vevay,America/Indiana/Vincennes,America/Indiana/Winamac,America/Indianapolis,America/Iqaluit,America/Jamaica,America/Kentucky/Louisville,America/Kentucky/Monticello,America/Knox_IN,America/Louisville,America/Managua,America/Menominee,America/Merida,America/Moncton,America/Montreal,America/Nassau,America/Nipigon,America/Panama,America/Pangnirtung,America/Port-au-Prince,America/Rankin_Inlet,America/Resolute,America/Santo_Domingo,America/Thunder_Bay,America/Toronto,Canada/Eastern,America/New_York,America/Detroit,America/Iqaluit,America/Montreal,America/Nipigon,America/Thunder_Bay,America/Toronto,Canada/Eastern,Europe/Kaliningrad,Europe/Minsk,America/Martinique,Pacific/Fiji,Pacific/Fiji,Atlantic/Stanley,Atlantic/Stanley,Atlantic/Stanley,Atlantic/Stanley,Atlantic/Stanley,Atlantic/Madeira,America/Noronha,Brazil/DeNoronha,America/Noronha,Brazil/DeNoronha,Asia/Aqtau,Asia/Aqtau,Asia/Bishkek,Asia/Bishkek,Asia/Bishkek,Asia/Bishkek,Pacific/Galapagos,Pacific/Gambier,America/Guyana,Asia/Tbilisi,Asia/Tbilisi,Asia/Tbilisi,Asia/Tbilisi,America/Cayenne,America/Cayenne,Africa/Accra,Pacific/Tarawa,Africa/Abidjan,Africa/Accra,Africa/Bamako,Africa/Banjul,Africa/Bissau,Africa/Conakry,Africa/Dakar,Africa/Freetown,Africa/Lome,Africa/Monrovia,Africa/Nouakchott,Africa/Ouagadougou,Africa/Sao_Tome,Africa/Timbuktu,America/Danmarkshavn,Atlantic/Reykjavik,Atlantic/St_Helena,Etc/GMT,Etc/Greenwich,Europe/Belfast,Europe/Dublin,Europe/Gibraltar,Europe/Guernsey,Europe/Isle_of_Man,Europe/Jersey,Europe/London,GB,Asia/Dubai,Atlantic/South_Georgia,Asia/Bahrain,Asia/Muscat,Asia/Qatar,Pacific/Guam,Pacific/Saipan,America/Guyana,America/Guyana,America/Guyana,America/Adak,America/Atka,America/Adak,America/Atka,Pacific/Honolulu,Pacific/Johnston,Asia/Hong_Kong,Asia/Hong_Kong,America/Havana,Atlantic/Azores,Asia/Calcutta,Asia/Dacca,Asia/Dhaka,Asia/Kolkata,Europe/Helsinki,Europe/Mariehamn,Asia/Hovd,Asia/Hovd,Asia/Hovd,Pacific/Honolulu,Pacific/Honolulu,Pacific/Johnston,Pacific/Johnston,Asia/Bangkok,Asia/Ho_Chi_Minh,Asia/Phnom_Penh,Asia/Saigon,Asia/Vientiane,Asia/Jerusalem,Asia/Tel_Aviv,Asia/Jerusalem,Asia/Gaza,Asia/Hebron,Asia/Tel_Aviv,Asia/Ho_Chi_Minh,Asia/Saigon,Asia/Colombo,Asia/Irkutsk,Asia/Istanbul,Europe/Istanbul,Indian/Chagos,Indian/Chagos,Asia/Tehran,Asia/Tehran,Asia/Irkutsk,Asia/Irkutsk,Asia/Irkutsk,Asia/Irkutsk,Asia/Irkutsk,Asia/Chita,Asia/Tehran,Asia/Tehran,Atlantic/Reykjavik,Asia/Jerusalem,Atlantic/Reykjavik,Asia/Calcutta,Asia/Colombo,Asia/Dacca,Asia/Dhaka,Asia/Karachi,Asia/Kathmandu,Asia/Katmandu,Asia/Kolkata,Asia/Thimbu,Asia/Thimphu,Europe/Dublin,Asia/Calcutta,Asia/Colombo,Asia/Karachi,Asia/Kolkata,Europe/Dublin,Europe/Dublin,Asia/Gaza,Asia/Hebron,Asia/Tel_Aviv,Asia/Jakarta,Asia/Pyongyang,Asia/Sakhalin,Asia/Seoul,Asia/Tokyo,ROK,Asia/Tokyo,Asia/Jerusalem,Asia/Tel_Aviv,Asia/Tokyo,Asia/Dili,Asia/Ho_Chi_Minh,Asia/Hong_Kong,Asia/Jakarta,Asia/Kuala_Lumpur,Asia/Kuching,Asia/Makassar,Asia/Manila,Asia/Pontianak,Asia/Pyongyang,Asia/Rangoon,Asia/Saigon,Asia/Sakhalin,Asia/Seoul,Asia/Singapore,Asia/Taipei,Asia/Ujung_Pandang,Pacific/Bougainville,Pacific/Nauru,ROC,ROK,Asia/Taipei,ROC,Asia/Karachi,Asia/Seoul,Asia/Seoul,ROK,ROK,Asia/Bishkek,Asia/Bishkek,Asia/Bishkek,Asia/Qyzylorda,Asia/Qyzylorda,Asia/Qyzylorda,Asia/Qyzylorda,Europe/Vilnius,America/Grand_Turk,America/Jamaica,Europe/Kiev,Pacific/Kosrae,Pacific/Kosrae,Asia/Krasnoyarsk,Asia/Krasnoyarsk,Asia/Novokuznetsk,Asia/Novokuznetsk,Asia/Krasnoyarsk,Asia/Krasnoyarsk,Asia/Krasnoyarsk,Asia/Novokuznetsk,Asia/Novokuznetsk,Asia/Seoul,Asia/Pyongyang,Asia/Seoul,Asia/Pyongyang,ROK,ROK,Europe/Samara,Europe/Samara,Europe/Samara,Pacific/Kwajalein,Australia/LHI,Australia/Lord_Howe,Australia/LHI,Australia/Lord_Howe,Australia/Lord_Howe,Australia/LHI,Pacific/Kiritimati,Pacific/Kiritimati,Pacific/Kiritimati,Asia/Colombo,Asia/Colombo,Africa/Monrovia,Europe/Riga,Atlantic/Madeira,Atlantic/Madeira,Atlantic/Madeira,Asia/Magadan,Asia/Magadan,Asia/Srednekolymsk,Asia/Ust-Nera,Asia/Srednekolymsk,Asia/Ust-Nera,Asia/Magadan,Asia/Magadan,Asia/Magadan,Asia/Srednekolymsk,Asia/Ust-Nera,Asia/Srednekolymsk,Asia/Ust-Nera,Asia/Srednekolymsk,Asia/Ust-Nera,Asia/Singapore,Asia/Kuala_Lumpur,Asia/Singapore,Asia/Singapore,Asia/Singapore,Asia/Kuala_Lumpur,Asia/Kuala_Lumpur,Asia/Kuala_Lumpur,Pacific/Marquesas,Antarctica/Mawson,Antarctica/Mawson,America/Cambridge_Bay,America/Yellowknife,Europe/Moscow,America/Denver,America/Bahia_Banderas,America/Boise,America/Cambridge_Bay,America/Chihuahua,America/Edmonton,America/Hermosillo,America/Inuvik,America/Mazatlan,America/North_Dakota/Beulah,America/North_Dakota/Center,America/North_Dakota/New_Salem,America/Ojinaga,America/Phoenix,America/Regina,America/Shiprock,America/Swift_Current,America/Yellowknife,Canada/East-Saskatchewan,Canada/Mountain,Canada/Saskatchewan,Mexico/BajaSur,Pacific/Kwajalein,Pacific/Kwajalein,Pacific/Majuro,Pacific/Majuro,Antarctica/Macquarie,Europe/Moscow,Europe/Moscow,America/Montevideo,America/Managua,Africa/Monrovia,Indian/Maldives,Asia/Colombo,Asia/Rangoon,Asia/Makassar,Asia/Ujung_Pandang,Europe/Minsk,Asia/Macao,Asia/Macau,Asia/Macao,Asia/Macau,America/Denver,America/Boise,America/Cambridge_Bay,America/Edmonton,America/North_Dakota/Beulah,America/North_Dakota/Center,America/North_Dakota/New_Salem,America/Regina,America/Shiprock,America/Swift_Current,America/Yellowknife,Canada/East-Saskatchewan,Canada/Mountain,Canada/Saskatchewan,Europe/Moscow,Europe/Chisinau,Europe/Kaliningrad,Europe/Kiev,Europe/Minsk,Europe/Riga,Europe/Samara,Europe/Simferopol,Europe/Tallinn,Europe/Tiraspol,Europe/Uzhgorod,Europe/Vilnius,Europe/Volgograd,Europe/Zaporozhye,Europe/Moscow,Europe/Moscow,Europe/Chisinau,Europe/Kaliningrad,Europe/Kiev,Europe/Minsk,Europe/Riga,Europe/Samara,Europe/Simferopol,Europe/Tallinn,Europe/Tiraspol,Europe/Uzhgorod,Europe/Vilnius,Europe/Volgograd,Europe/Zaporozhye,Europe/Simferopol,Europe/Volgograd,Europe/Moscow,America/Denver,America/Bahia_Banderas,America/Boise,America/Cambridge_Bay,America/Chihuahua,America/Creston,America/Dawson_Creek,America/Edmonton,America/Ensenada,America/Hermosillo,America/Inuvik,America/Mazatlan,America/Mexico_City,America/North_Dakota/Beulah,America/North_Dakota/Center,America/North_Dakota/New_Salem,America/Ojinaga,America/Phoenix,America/Regina,America/Santa_Isabel,America/Shiprock,America/Swift_Current,America/Tijuana,America/Yellowknife,Canada/East-Saskatchewan,Canada/Mountain,Canada/Saskatchewan,Mexico/BajaNorte,Mexico/BajaSur,Mexico/General,Europe/Moscow,Indian/Mauritius,Indian/Mauritius,Indian/Maldives,America/Denver,America/Boise,America/Cambridge_Bay,America/Edmonton,America/North_Dakota/Beulah,America/North_Dakota/Center,America/North_Dakota/New_Salem,America/Phoenix,America/Regina,America/Shiprock,America/Swift_Current,America/Yellowknife,Canada/East-Saskatchewan,Canada/Mountain,Canada/Saskatchewan,Asia/Kuala_Lumpur,Asia/Kuching,Pacific/Noumea,Pacific/Noumea,America/St_Johns,Canada/Newfoundland,America/St_Johns,America/St_Johns,America/Goose_Bay,Canada/Newfoundland,America/Goose_Bay,Canada/Newfoundland,America/Paramaribo,Europe/Amsterdam,Europe/Amsterdam,Pacific/Norfolk,Pacific/Norfolk,Asia/Novosibirsk,Asia/Novosibirsk,Asia/Novokuznetsk,Asia/Novosibirsk,Asia/Novosibirsk,Asia/Novokuznetsk,Asia/Novokuznetsk,America/St_Johns,Asia/Katmandu,America/Adak,America/Atka,America/Nome,America/Goose_Bay,Canada/Newfoundland,Asia/Kathmandu,Pacific/Nauru,Pacific/Nauru,America/St_Johns,America/St_Johns,Europe/Amsterdam,America/Goose_Bay,Canada/Newfoundland,America/Goose_Bay,Canada/Newfoundland,America/Adak,America/Atka,America/Nome,Pacific/Midway,Pacific/Pago_Pago,Pacific/Samoa,Pacific/Niue,Pacific/Niue,Pacific/Niue,America/St_Johns,America/Adak,America/Atka,America/Nome,America/Goose_Bay,Canada/Newfoundland,Pacific/Auckland,Antarctica/McMurdo,Antarctica/South_Pole,NZ,Pacific/Auckland,Antarctica/McMurdo,Antarctica/South_Pole,NZ,Pacific/Auckland,Pacific/Auckland,Pacific/Auckland,Antarctica/McMurdo,Antarctica/South_Pole,NZ,Antarctica/McMurdo,Antarctica/South_Pole,NZ,Antarctica/McMurdo,Antarctica/South_Pole,NZ,Asia/Omsk,Asia/Omsk,Asia/Omsk,Asia/Omsk,Asia/Omsk,Asia/Oral,Asia/Oral,Asia/Oral,America/Inuvik,America/Los_Angeles,America/Boise,America/Dawson,America/Dawson_Creek,America/Ensenada,America/Juneau,America/Metlakatla,America/Santa_Isabel,America/Sitka,America/Tijuana,America/Vancouver,America/Whitehorse,Canada/Pacific,Canada/Yukon,Mexico/BajaNorte,America/Lima,Asia/Kamchatka,Asia/Kamchatka,Asia/Kamchatka,Asia/Kamchatka,America/Lima,Pacific/Bougainville,Pacific/Port_Moresby,Pacific/Enderbury,Pacific/Enderbury,Pacific/Enderbury,Asia/Manila,Asia/Manila,Asia/Karachi,Asia/Karachi,Asia/Ho_Chi_Minh,Asia/Saigon,America/Miquelon,America/Miquelon,America/Paramaribo,America/Paramaribo,Antarctica/DumontDUrville,Asia/Yekaterinburg,Asia/Pontianak,Africa/Algiers,Africa/Tunis,Europe/Monaco,Europe/Paris,Pacific/Pitcairn,Pacific/Pohnpei,Pacific/Ponape,America/Port-au-Prince,America/Los_Angeles,America/Dawson_Creek,America/Ensenada,America/Juneau,America/Metlakatla,America/Santa_Isabel,America/Sitka,America/Tijuana,America/Vancouver,Canada/Pacific,Mexico/BajaNorte,America/Los_Angeles,America/Bahia_Banderas,America/Boise,America/Creston,America/Dawson,America/Dawson_Creek,America/Ensenada,America/Hermosillo,America/Inuvik,America/Juneau,America/Mazatlan,America/Metlakatla,America/Santa_Isabel,America/Sitka,America/Tijuana,America/Vancouver,America/Whitehorse,Canada/Pacific,Canada/Yukon,Mexico/BajaNorte,Mexico/BajaSur,Pacific/Pitcairn,America/Los_Angeles,America/Dawson_Creek,America/Ensenada,America/Juneau,America/Metlakatla,America/Santa_Isabel,America/Sitka,America/Tijuana,America/Vancouver,Canada/Pacific,Mexico/BajaNorte,Pacific/Palau,America/Asuncion,America/Asuncion,America/Asuncion,America/Guayaquil,Asia/Qyzylorda,Asia/Qyzylorda,Asia/Qyzylorda,Indian/Reunion,Europe/Riga,Asia/Rangoon,Antarctica/Rothera,Asia/Sakhalin,Asia/Sakhalin,Asia/Sakhalin,Asia/Sakhalin,Asia/Samarkand,Europe/Samara,Europe/Samara,Asia/Samarkand,Asia/Samarkand,Europe/Samara,Europe/Samara,Africa/Johannesburg,Africa/Johannesburg,Africa/Johannesburg,Africa/Maseru,Africa/Mbabane,Africa/Windhoek,Africa/Maseru,Africa/Mbabane,Africa/Maseru,Africa/Mbabane,Africa/Windhoek,Pacific/Guadalcanal,Indian/Mahe,America/Santo_Domingo,Pacific/Apia,Asia/Singapore,Asia/Singapore,Asia/Aqtau,Asia/Aqtau,Asia/Aqtau,America/Costa_Rica,Atlantic/Stanley,America/Santiago,Chile/Continental,Asia/Kuala_Lumpur,Asia/Singapore,Europe/Simferopol,Asia/Srednekolymsk,America/Paramaribo,America/Paramaribo,Pacific/Samoa,Pacific/Apia,Pacific/Midway,Pacific/Pago_Pago,Europe/Volgograd,Europe/Volgograd,Asia/Yekaterinburg,Asia/Yekaterinburg,Asia/Yekaterinburg,Asia/Yekaterinburg,Africa/Windhoek,Antarctica/Syowa,Pacific/Tahiti,Asia/Samarkand,Asia/Tashkent,Asia/Tashkent,Asia/Samarkand,Asia/Tashkent,Asia/Tashkent,Asia/Tbilisi,Asia/Tbilisi,Asia/Tbilisi,Asia/Tbilisi,Asia/Tbilisi,Indian/Kerguelen,Asia/Dushanbe,Pacific/Fakaofo,Pacific/Fakaofo,Asia/Dili,Asia/Dili,Asia/Tehran,Europe/Tallinn,Asia/Ashgabat,Asia/Ashkhabad,Asia/Ashgabat,Asia/Ashkhabad,Pacific/Tongatapu,Pacific/Tongatapu,Pacific/Tongatapu,Europe/Istanbul,Asia/Istanbul,Europe/Istanbul,Asia/Istanbul,Europe/Volgograd,Pacific/Funafuti,Etc/UCT,Asia/Ulaanbaatar,Asia/Ulan_Bator,Asia/Ulaanbaatar,Asia/Ulaanbaatar,Asia/Choibalsan,Asia/Ulan_Bator,Asia/Choibalsan,Asia/Ulan_Bator,Asia/Oral,Asia/Oral,Asia/Oral,Asia/Oral,Asia/Oral,Antarctica/Troll,Etc/Universal,Etc/UTC,Etc/Zulu,UTC,UTC,America/Montevideo,America/Montevideo,America/Montevideo,America/Montevideo,America/Montevideo,Asia/Samarkand,Asia/Tashkent,Asia/Samarkand,Asia/Tashkent,America/Caracas,America/Caracas,Asia/Vladivostok,Asia/Vladivostok,Asia/Khandyga,Asia/Vladivostok,Asia/Vladivostok,Asia/Vladivostok,Asia/Khandyga,Asia/Ust-Nera,Asia/Khandyga,Asia/Ust-Nera,Europe/Volgograd,Europe/Volgograd,Europe/Volgograd,Europe/Volgograd,Antarctica/Vostok,Pacific/Efate,Pacific/Efate,Pacific/Wake,America/Mendoza,America/Argentina/Jujuy,America/Argentina/Mendoza,America/Argentina/San_Luis,America/Jujuy,America/Mendoza,America/Argentina/Catamarca,America/Argentina/ComodRivadavia,America/Argentina/Cordoba,America/Argentina/Jujuy,America/Argentina/La_Rioja,America/Argentina/Mendoza,America/Argentina/Rio_Gallegos,America/Argentina/Salta,America/Argentina/San_Juan,America/Argentina/San_Luis,America/Argentina/Tucuman,America/Argentina/Ushuaia,America/Catamarca,America/Cordoba,America/Jujuy,America/Rosario,Africa/Windhoek,Africa/Ndjamena,Africa/Brazzaville,Africa/Bissau,Africa/El_Aaiun,Africa/Bangui,Africa/Douala,Africa/Kinshasa,Africa/Lagos,Africa/Libreville,Africa/Luanda,Africa/Malabo,Africa/Ndjamena,Africa/Niamey,Africa/Porto-Novo,Africa/Windhoek,Europe/Lisbon,Europe/Madrid,Europe/Monaco,Europe/Paris,Europe/Paris,Europe/Luxembourg,Africa/Algiers,Africa/Casablanca,Africa/Ceuta,Africa/El_Aaiun,Atlantic/Canary,Atlantic/Faeroe,Atlantic/Faroe,Atlantic/Madeira,Europe/Brussels,Europe/Lisbon,Europe/Luxembourg,Europe/Madrid,Europe/Monaco,Europe/Paris,Europe/Luxembourg,Africa/Algiers,Africa/Casablanca,Africa/Ceuta,Africa/El_Aaiun,Atlantic/Azores,Atlantic/Canary,Atlantic/Faeroe,Atlantic/Faroe,Atlantic/Madeira,Europe/Andorra,Europe/Brussels,Europe/Lisbon,Europe/Luxembourg,Europe/Madrid,Europe/Monaco,Pacific/Wallis,America/Godthab,America/Danmarkshavn,America/Godthab,America/Danmarkshavn,Asia/Jakarta,Asia/Pontianak,Asia/Jakarta,Asia/Pontianak,Asia/Jakarta,Asia/Pontianak,Asia/Dili,Asia/Makassar,Asia/Pontianak,Asia/Ujung_Pandang,Asia/Jayapura,Europe/Vilnius,Europe/Warsaw,Pacific/Apia,Pacific/Apia,Pacific/Apia,Asia/Kashgar,Asia/Urumqi,Asia/Yakutsk,Asia/Yakutsk,Asia/Chita,Asia/Khandyga,Asia/Chita,Asia/Khandyga,Asia/Yakutsk,Asia/Yakutsk,Asia/Yakutsk,Asia/Chita,Asia/Khandyga,Asia/Ust-Nera,Asia/Chita,Asia/Khandyga,Asia/Ust-Nera,Asia/Chita,Asia/Khandyga,America/Dawson,America/Whitehorse,Canada/Yukon,America/Dawson,America/Juneau,America/Whitehorse,America/Yakutat,Canada/Yukon,Asia/Yekaterinburg,Asia/Yekaterinburg,Asia/Yekaterinburg,Asia/Yerevan,Asia/Yerevan,Asia/Yerevan,Asia/Yerevan,America/Dawson,America/Whitehorse,America/Yakutat,Canada/Yukon,America/Anchorage,America/Dawson,America/Juneau,America/Nome,America/Sitka,America/Whitehorse,America/Yakutat,Canada/Yukon,America/Dawson,America/Whitehorse,America/Yakutat,Canada/Yukon,Antarctica/Davis,America/Cambridge_Bay,America/Inuvik,America/Iqaluit,America/Pangnirtung,America/Rankin_Inlet,America/Resolute,America/Yellowknife,Antarctica/Casey,Antarctica/DumontDUrville,Antarctica/Macquarie,Antarctica/Mawson,Antarctica/Palmer,Antarctica/Rothera,Antarctica/Syowa,Antarctica/Troll,Antarctica/Vostok,Indian/Kerguelen','',NULL),(67,NULL,NULL,'general_reminder_hour',NULL,'0','select','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23','',NULL),(68,NULL,NULL,'label_certificates',NULL,NULL,'text','','',NULL),(69,NULL,'2023-05-11 02:51:12','menu_show_certificates',NULL,'1','radio','1=Yes,0=No','',NULL),(70,NULL,'2023-05-11 02:51:12','menu_show_downloads',NULL,'1','radio','1=Yes,0=No','',NULL),(71,NULL,NULL,'label_downloads',NULL,NULL,'text','','',NULL),(72,NULL,NULL,'general_chat_code',NULL,NULL,'textarea','','',NULL),(73,NULL,'2023-05-11 02:51:12','menu_show_homework',NULL,'1','radio','1=Yes,0=No','',NULL),(74,NULL,NULL,'label_courses',NULL,NULL,'text','','',NULL),(75,NULL,NULL,'label_my_sessions',NULL,NULL,'text','','',NULL),(76,NULL,NULL,'label_homework',NULL,NULL,'text','','',NULL),(77,NULL,NULL,'regis_confirm_email',NULL,'0','radio','1=Yes,0=No','',NULL),(78,NULL,NULL,'label_featured',NULL,NULL,'text','','',NULL),(79,NULL,NULL,'label_calendar',NULL,NULL,'text','','',NULL),(80,NULL,NULL,'label_blog_posts',NULL,NULL,'text','','',NULL),(81,NULL,NULL,'label_register',NULL,NULL,'text','','',NULL),(82,NULL,NULL,'info_terms',NULL,NULL,'textarea','','rte',NULL),(83,NULL,NULL,'info_privacy',NULL,NULL,'textarea','','rte',NULL),(84,NULL,'2023-05-11 02:51:12','general_address',NULL,'<p>234, Jersey Road</p>','textarea','','rte',NULL),(85,NULL,'2023-05-11 02:51:12','general_tel',NULL,NULL,'text','','',NULL),(86,NULL,'2023-05-11 02:51:12','general_contact_email',NULL,'info@email.com','text','','',NULL),(87,NULL,NULL,'social_enable_facebook',NULL,'0','radio','1=Yes,0=No','',NULL),(88,NULL,NULL,'social_facebook_secret',NULL,NULL,'text','','',NULL),(89,NULL,NULL,'social_facebook_app_id',NULL,NULL,'text','','',NULL),(90,NULL,NULL,'social_enable_google',NULL,'0','radio','1=Yes,0=No','',NULL),(91,NULL,NULL,'social_google_secret',NULL,NULL,'text','','',NULL),(92,NULL,NULL,'social_google_id',NULL,NULL,'text','','',NULL),(93,NULL,NULL,'sms_enabled',NULL,NULL,'checkbox','','',NULL),(94,NULL,NULL,'sms_sender_name',NULL,NULL,'text','','',NULL),(95,NULL,NULL,'label_sessions_courses',NULL,NULL,'text','','',NULL),(96,NULL,NULL,'label_session_course',NULL,NULL,'text','','',NULL),(97,NULL,NULL,'banner_status',NULL,NULL,'radio','1=Yes,0=No','',NULL),(98,NULL,NULL,'banner_app_name',NULL,NULL,'text','','',NULL),(99,NULL,NULL,'banner_android_id',NULL,NULL,'text','','',NULL),(100,NULL,NULL,'banner_ios_id',NULL,NULL,'text','','',NULL),(101,NULL,NULL,'banner_icon_url',NULL,NULL,'text','','',NULL),(102,NULL,NULL,'regis_captcha_type',NULL,'image','select','image=Image,google=Google reCAPTCHA v3','',NULL),(103,NULL,NULL,'regis_recaptcha_key',NULL,NULL,'text','','',NULL),(104,NULL,NULL,'regis_recaptcha_secret',NULL,NULL,'text','','',NULL),(105,NULL,NULL,'config_language',NULL,'en','text','','',NULL),(106,'2023-05-11 02:51:11','2023-05-11 02:51:14','general_video_max_size','Size in megabytes','200','text',NULL,'form-control digit',NULL),(107,'2023-05-11 02:51:13','2023-08-20 23:01:03','config_baseurl',NULL,'http://localhost/lms/public','text',NULL,NULL,NULL),(108,'2023-05-11 02:51:13','2023-05-11 02:51:13','regis_enroll_mail',NULL,NULL,'textarea',NULL,'rte',NULL),(109,NULL,NULL,'zoom_key',NULL,NULL,'text',NULL,NULL,NULL),(110,NULL,NULL,'zoom_secret',NULL,NULL,'text',NULL,NULL,NULL),(111,NULL,NULL,'frontend_status',NULL,'1','select','1=Enabled,0=Disabled',NULL,NULL),(112,NULL,NULL,'dashboard_color',NULL,'','text',NULL,NULL,NULL),(113,'2023-05-11 02:51:14','2023-05-11 02:51:14','video_driver',NULL,'local','select','local=Local,s3=S3',NULL,NULL),(114,'2023-05-11 02:51:14','2023-05-11 02:51:14','video_s3_key',NULL,NULL,'text',NULL,NULL,NULL),(115,'2023-05-11 02:51:14','2023-05-11 02:51:14','video_s3_secret',NULL,NULL,'text',NULL,NULL,NULL),(116,'2023-05-11 02:51:14','2023-05-11 02:51:14','video_s3_region',NULL,NULL,'text',NULL,NULL,NULL),(117,'2023-05-11 02:51:14','2023-05-11 02:51:14','video_s3_bucket',NULL,NULL,'text',NULL,NULL,NULL),(118,'2023-05-11 02:51:14','2023-05-11 02:51:14','video_s3_endpoint',NULL,NULL,'text',NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_gateways`
--

DROP TABLE IF EXISTS `sms_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_gateways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gateway_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_gateways`
--

LOCK TABLES `sms_gateways` WRITE;
/*!40000 ALTER TABLE `sms_gateways` DISABLE KEYS */;
INSERT INTO `sms_gateways` VALUES (1,'2023-05-18 02:38:12','2023-05-18 03:39:02','Bulksms','bulksms',1,'a:3:{s:8:\"username\";N;s:8:\"password\";N;s:7:\"default\";s:1:\"1\";}',1);
/*!40000 ALTER TABLE `sms_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `placeholders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_templates`
--

LOCK TABLES `sms_templates` WRITE;
/*!40000 ALTER TABLE `sms_templates` DISABLE KEYS */;
INSERT INTO `sms_templates` VALUES (1,NULL,NULL,'Upcoming class reminder (physical location)','This message is sent to students to remind them when a class is scheduled to hold.','Reminder! The [SESSION_NAME] class \'[SESSION_NAME]\' holds on [CLASS_DATE]. Venue: [CLASS_VENUE] . Starts: [CLASS_START_TIME] . Ends: [CLASS_END_TIME]','Reminder! The [SESSION_NAME] class \'[SESSION_NAME]\' holds on [CLASS_DATE]. Venue: [CLASS_VENUE] . Starts: [CLASS_START_TIME] . Ends: [CLASS_END_TIME]','\n                <ul>\n                <li>[CLASS_NAME] : The name of the class</li>\n                <li>[CLASS_DATE] : The class date</li>\n                <li>[SESSION_NAME] : The name of the session the class is attached to</li>\n                <li>[CLASS_VENUE] : The venue of the class</li>\n                <li>[CLASS_START_TIME] : The start time for the class</li>\n                <li>[CLASS_END_TIME] : The end time for the class</li>\n                </ul>\n                '),(2,NULL,NULL,'Upcoming class reminder (online class)','This message is sent to students to remind them when an online class is scheduled to open.','Reminder! The [COURSE_NAME] class \'[CLASS_NAME]\' starts on  [CLASS_DATE]','Reminder! The [COURSE_NAME] class \'[CLASS_NAME]\' starts on  [CLASS_DATE]','\n                <ul>\n                <li>[CLASS_NAME] : The name of the class</li>\n                <li>[CLASS_DATE] : The class date</li>\n                <li>[COURSE_NAME] : The name of the session the class is attached to</li>\n                </ul>\n                '),(3,NULL,NULL,'Upcoming Test reminder','This message is sent to users when there is an upcoming test in a session/course they are enrolled in','Reminder: The \'[SESSION_NAME]\' test \'[TEST_NAME]\' opens on [OPENING_DATE] and closes on [CLOSING_DATE]','Reminder: The \'[SESSION_NAME]\' test \'[TEST_NAME]\' opens on [OPENING_DATE] and closes on [CLOSING_DATE]','\n                <ul>\n                <li>[TEST_NAME] : The name of the test</li>\n                <li>[TEST_DESCRIPTION] : The description of the test</li>\n                <li>[SESSION_NAME] : The name of the session or course the test is attached to</li>\n                <li>[OPENING_DATE] : The opening date of the test</li>\n                <li>[CLOSING_DATE] : The closing date of the test</li>\n                <li>[PASSMARK] : The test passmark e.g. 50%</li>\n                <li>[MINUTES_ALLOWED]: The number of minutes allowed for the test</li>\n                </ul>\n                '),(4,NULL,NULL,'Online Class start notification','This message is sent to students when a scheduled online class opens','Please be reminded that the class \'[CLASS_NAME]\' for the course \'[COURSE_NAME]\' has started. <br/>\nVisit this link to take this class now: [CLASS_URL]','Please be reminded that the class \'[CLASS_NAME]\' for the course \'[COURSE_NAME]\' has started. <br/>\nVisit this link to take this class now: [CLASS_URL]','\n                <ul>\n                <li>[CLASS_NAME] : The name of the class</li>\n                <li>[CLASS_URL] : The url of the class</li>\n                <li>[COURSE_NAME] : The name of the course the class belongs to</li>\n                </ul>\n                '),(5,NULL,NULL,'Homework reminder','This message is sent to students reminding them when a homework is due','Please be reminded that the homework \'[HOMEWORK_NAME]\' is due on [DUE_DATE].\nPlease click this link to submit your homework now: [HOMEWORK_URL]','Please be reminded that the homework \'[HOMEWORK_NAME]\' is due on [DUE_DATE].\nPlease click this link to submit your homework now: [HOMEWORK_URL]','\n                <ul>\n                <li>[NUMBER_OF_DAYS] : The number of days remaining till the homework due date e.g. 1,2,3</li>\n                <li>[DAY_TEXT] : The \'day\' text. Defaults to \'day\' if [NUMBER_OF_DAYS] is 1 and \'days\' if greater than 1.</li>\n                <li>[HOMEWORK_NAME] : The name of the homework</li>\n                <li>[HOMEWORK_URL] : The homework url</li>\n                <li>[HOMEWORK_INSTRUCTION] : The instructions for the homework</li>\n                <li>[PASSMARK] : The passmark for the homework</li>\n                 <li>[DUE_DATE] : The homework due date</li>\n                <li>[OPENING_DATE] : The homework opening date</li>\n\n                </ul>\n                '),(6,NULL,NULL,'Course closing reminder','Warning email sent to enrolled students about a course that will close soon.','Please be reminded that the course \'[COURSE_NAME]\' closes on [CLOSING_DATE].\nPlease click this link to complete the course now: [COURSE_URL]','Please be reminded that the course \'[COURSE_NAME]\' closes on [CLOSING_DATE].\nPlease click this link to complete the course now: [COURSE_URL]','\n                <ul>\n                <li>[COURSE_NAME] : The name of the course</li>\n                <li>[COURSE_URL] : The course URL</li>\n                <li>[CLOSING_DATE] : The closing date for the course</li>\n                 <li>[NUMBER_OF_DAYS] : The number of days remaining till the closing date e.g. 1,2,3</li>\n                <li>[DAY_TEXT] : The \'day\' text. Defaults to \'day\' if [NUMBER_OF_DAYS] is 1 and \'days\' if greater than 1.</li>\n\n                </ul>\n                ');
/*!40000 ALTER TABLE `sms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_certificate_downloads`
--

DROP TABLE IF EXISTS `student_certificate_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_certificate_downloads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `certificate_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_certificate_downloads_student_id_foreign` (`student_id`),
  KEY `student_certificate_downloads_certificate_id_foreign` (`certificate_id`),
  CONSTRAINT `student_certificate_downloads_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_certificate_downloads_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_certificate_downloads`
--

LOCK TABLES `student_certificate_downloads` WRITE;
/*!40000 ALTER TABLE `student_certificate_downloads` DISABLE KEYS */;
INSERT INTO `student_certificate_downloads` VALUES (6,'2023-08-21 04:20:44','2023-08-21 04:20:44',5,4),(7,'2023-08-21 04:20:50','2023-08-21 04:20:50',5,4),(8,'2023-08-21 04:21:12','2023-08-21 04:21:12',5,4),(9,'2023-08-21 04:21:50','2023-08-21 04:21:50',5,4),(10,'2023-08-21 04:26:02','2023-08-21 04:26:02',5,4),(11,'2023-08-21 04:33:37','2023-08-21 04:33:37',5,4);
/*!40000 ALTER TABLE `student_certificate_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_certificates`
--

DROP TABLE IF EXISTS `student_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `certificate_id` bigint unsigned NOT NULL,
  `tracking_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_certificates_tracking_number_unique` (`tracking_number`),
  KEY `student_certificates_student_id_foreign` (`student_id`),
  KEY `student_certificates_certificate_id_foreign` (`certificate_id`),
  CONSTRAINT `student_certificates_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_certificates`
--

LOCK TABLES `student_certificates` WRITE;
/*!40000 ALTER TABLE `student_certificates` DISABLE KEYS */;
INSERT INTO `student_certificates` VALUES (2,'2023-08-21 04:20:44','2023-08-21 04:20:44',5,4,'23-5-4');
/*!40000 ALTER TABLE `student_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course_logs`
--

DROP TABLE IF EXISTS `student_course_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  `lecture_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_course_logs_student_id_foreign` (`student_id`),
  KEY `student_course_logs_course_id_foreign` (`course_id`),
  KEY `student_course_logs_lecture_id_foreign` (`lecture_id`),
  CONSTRAINT `student_course_logs_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_course_logs_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_course_logs_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course_logs`
--

LOCK TABLES `student_course_logs` WRITE;
/*!40000 ALTER TABLE `student_course_logs` DISABLE KEYS */;
INSERT INTO `student_course_logs` VALUES (31,'2023-08-21 01:05:58','2023-08-21 01:05:58',5,10,9),(32,'2023-08-21 01:17:24','2023-08-21 01:17:24',5,10,9);
/*!40000 ALTER TABLE `student_course_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_courses`
--

DROP TABLE IF EXISTS `student_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  `reg_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `student_courses_student_id_foreign` (`student_id`),
  KEY `student_courses_course_id_foreign` (`course_id`),
  CONSTRAINT `student_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_courses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_courses`
--

LOCK TABLES `student_courses` WRITE;
/*!40000 ALTER TABLE `student_courses` DISABLE KEYS */;
INSERT INTO `student_courses` VALUES (12,'2023-08-20 18:30:00','2023-08-20 18:30:00',5,10,'crnpl',1),(13,'2023-08-20 18:30:00','2023-08-20 18:30:00',5,11,'catpn',0);
/*!40000 ALTER TABLE `student_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_fields`
--

DROP TABLE IF EXISTS `student_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `placeholder` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_fields`
--

LOCK TABLES `student_fields` WRITE;
/*!40000 ALTER TABLE `student_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_lectures`
--

DROP TABLE IF EXISTS `student_lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_lectures` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  `lecture_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_lectures_student_id_foreign` (`student_id`),
  KEY `student_lectures_course_id_foreign` (`course_id`),
  KEY `student_lectures_lecture_id_foreign` (`lecture_id`),
  CONSTRAINT `student_lectures_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_lectures_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_lectures_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_lectures`
--

LOCK TABLES `student_lectures` WRITE;
/*!40000 ALTER TABLE `student_lectures` DISABLE KEYS */;
INSERT INTO `student_lectures` VALUES (53,'2023-08-21 01:05:50','2023-08-21 01:05:50',5,10,9);
/*!40000 ALTER TABLE `student_lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_student_field`
--

DROP TABLE IF EXISTS `student_student_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_student_field` (
  `student_id` bigint unsigned NOT NULL,
  `student_field_id` bigint unsigned NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `student_student_field_student_id_foreign` (`student_id`),
  KEY `student_student_field_student_field_id_foreign` (`student_field_id`),
  CONSTRAINT `student_student_field_student_field_id_foreign` FOREIGN KEY (`student_field_id`) REFERENCES `student_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_student_field_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_student_field`
--

LOCK TABLES `student_student_field` WRITE;
/*!40000 ALTER TABLE `student_student_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_student_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_test_test_option`
--

DROP TABLE IF EXISTS `student_test_test_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_test_test_option` (
  `student_test_id` bigint unsigned NOT NULL,
  `test_option_id` bigint unsigned NOT NULL,
  KEY `student_test_test_option_student_test_id_foreign` (`student_test_id`),
  KEY `student_test_test_option_test_option_id_foreign` (`test_option_id`),
  CONSTRAINT `student_test_test_option_student_test_id_foreign` FOREIGN KEY (`student_test_id`) REFERENCES `student_tests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_test_test_option_test_option_id_foreign` FOREIGN KEY (`test_option_id`) REFERENCES `test_options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_test_test_option`
--

LOCK TABLES `student_test_test_option` WRITE;
/*!40000 ALTER TABLE `student_test_test_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_test_test_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_tests`
--

DROP TABLE IF EXISTS `student_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_tests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `test_id` bigint unsigned NOT NULL,
  `score` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_tests_student_id_foreign` (`student_id`),
  KEY `student_tests_test_id_foreign` (`test_id`),
  CONSTRAINT `student_tests_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_tests_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_tests`
--

LOCK TABLES `student_tests` WRITE;
/*!40000 ALTER TABLE `student_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_video`
--

DROP TABLE IF EXISTS `student_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_video` (
  `student_id` bigint unsigned NOT NULL,
  `video_id` bigint unsigned NOT NULL,
  KEY `student_video_student_id_foreign` (`student_id`),
  KEY `student_video_video_id_foreign` (`video_id`),
  CONSTRAINT `student_video_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_video_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_video`
--

LOCK TABLES `student_video` WRITE;
/*!40000 ALTER TABLE `student_video` DISABLE KEYS */;
INSERT INTO `student_video` VALUES (5,1);
/*!40000 ALTER TABLE `student_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `mobile_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_expires` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_user_id_foreign` (`user_id`),
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (5,'2023-05-18 05:11:42','2023-08-15 23:02:35',8,'1234567890',NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_option_survey_response`
--

DROP TABLE IF EXISTS `survey_option_survey_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_option_survey_response` (
  `survey_response_id` bigint unsigned NOT NULL,
  `survey_option_id` bigint unsigned NOT NULL,
  KEY `survey_response_survey_option_survey_response_id_foreign` (`survey_response_id`),
  KEY `survey_response_survey_option_survey_option_id_foreign` (`survey_option_id`),
  CONSTRAINT `survey_response_survey_option_survey_option_id_foreign` FOREIGN KEY (`survey_option_id`) REFERENCES `survey_options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `survey_response_survey_option_survey_response_id_foreign` FOREIGN KEY (`survey_response_id`) REFERENCES `survey_responses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_option_survey_response`
--

LOCK TABLES `survey_option_survey_response` WRITE;
/*!40000 ALTER TABLE `survey_option_survey_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_option_survey_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_options`
--

DROP TABLE IF EXISTS `survey_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `survey_question_id` bigint unsigned NOT NULL,
  `option` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `survey_options_survey_question_id_foreign` (`survey_question_id`),
  CONSTRAINT `survey_options_survey_question_id_foreign` FOREIGN KEY (`survey_question_id`) REFERENCES `survey_questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_options`
--

LOCK TABLES `survey_options` WRITE;
/*!40000 ALTER TABLE `survey_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `survey_id` bigint unsigned NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_questions_survey_id_foreign` (`survey_id`),
  CONSTRAINT `survey_questions_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_questions`
--

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_responses`
--

DROP TABLE IF EXISTS `survey_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `survey_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_responses_survey_id_foreign` (`survey_id`),
  KEY `survey_responses_student_id_foreign` (`student_id`),
  CONSTRAINT `survey_responses_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_responses`
--

LOCK TABLES `survey_responses` WRITE;
/*!40000 ALTER TABLE `survey_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint unsigned DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `surveys_admin_id_foreign` (`admin_id`),
  CONSTRAINT `surveys_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_colors`
--

DROP TABLE IF EXISTS `template_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `template_id` bigint unsigned NOT NULL,
  `original_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_colors_template_id_foreign` (`template_id`),
  CONSTRAINT `template_colors_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_colors`
--

LOCK TABLES `template_colors` WRITE;
/*!40000 ALTER TABLE `template_colors` DISABLE KEYS */;
INSERT INTO `template_colors` VALUES (1,'2023-05-30 06:16:49','2023-05-30 06:16:49',2,'0EDC8D','131010'),(2,'2023-05-30 06:16:49','2023-05-30 06:16:49',2,'081828',NULL);
/*!40000 ALTER TABLE `template_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_options`
--

DROP TABLE IF EXISTS `template_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `template_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template_options_template_id_foreign` (`template_id`),
  CONSTRAINT `template_options_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `template_options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_options`
--

LOCK TABLES `template_options` WRITE;
/*!40000 ALTER TABLE `template_options` DISABLE KEYS */;
INSERT INTO `template_options` VALUES (1,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'top-bar','a:11:{s:6:\"_token\";s:40:\"FJCotq9TzWxE17MEEaYWfJhLXyEwDDMqsF9bglnK\";s:7:\"enabled\";s:1:\"1\";s:14:\"office_address\";s:16:\"234, Jersey Road\";s:5:\"email\";s:14:\"info@email.com\";s:8:\"bg_color\";N;s:10:\"font_color\";N;s:15:\"social_facebook\";s:1:\"#\";s:14:\"social_twitter\";s:1:\"#\";s:16:\"social_instagram\";s:1:\"#\";s:14:\"social_youtube\";s:1:\"#\";s:15:\"social_linkedin\";s:1:\"#\";}',1),(2,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'navigation','a:5:{s:6:\"_token\";s:40:\"FJCotq9TzWxE17MEEaYWfJhLXyEwDDMqsF9bglnK\";s:7:\"enabled\";s:1:\"1\";s:8:\"bg_color\";N;s:10:\"font_color\";N;s:12:\"order_button\";s:1:\"1\";}',1),(3,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'slideshow','a:72:{s:6:\"_token\";s:40:\"gCOeCtTPQaESMEVTShGLb7rbvYf3hAPnbYXSSdm0\";s:7:\"enabled\";s:1:\"1\";s:5:\"file1\";s:68:\"img/demo/slide1.jpg\";s:14:\"slide_heading1\";s:27:\"Professional Courses\";s:19:\"heading_font_color1\";N;s:11:\"slide_text1\";s:33:\"Get the best courses!\";s:16:\"text_font_color1\";N;s:12:\"button_text1\";s:10:\"Learn More\";s:4:\"url1\";s:1:\"#\";s:5:\"file2\";s:68:\"img/demo/slide2.png\";s:14:\"slide_heading2\";s:26:\"Training Sessions\";s:19:\"heading_font_color2\";N;s:11:\"slide_text2\";s:36:\"Get the best training\";s:16:\"text_font_color2\";N;s:12:\"button_text2\";s:10:\"Learn More\";s:4:\"url2\";s:1:\"#\";s:5:\"file3\";N;s:14:\"slide_heading3\";N;s:19:\"heading_font_color3\";N;s:11:\"slide_text3\";N;s:16:\"text_font_color3\";N;s:12:\"button_text3\";N;s:4:\"url3\";N;s:5:\"file4\";N;s:14:\"slide_heading4\";N;s:19:\"heading_font_color4\";N;s:11:\"slide_text4\";N;s:16:\"text_font_color4\";N;s:12:\"button_text4\";N;s:4:\"url4\";N;s:5:\"file5\";N;s:14:\"slide_heading5\";N;s:19:\"heading_font_color5\";N;s:11:\"slide_text5\";N;s:16:\"text_font_color5\";N;s:12:\"button_text5\";N;s:4:\"url5\";N;s:5:\"file6\";N;s:14:\"slide_heading6\";N;s:19:\"heading_font_color6\";N;s:11:\"slide_text6\";N;s:16:\"text_font_color6\";N;s:12:\"button_text6\";N;s:4:\"url6\";N;s:5:\"file7\";N;s:14:\"slide_heading7\";N;s:19:\"heading_font_color7\";N;s:11:\"slide_text7\";N;s:16:\"text_font_color7\";N;s:12:\"button_text7\";N;s:4:\"url7\";N;s:5:\"file8\";N;s:14:\"slide_heading8\";N;s:19:\"heading_font_color8\";N;s:11:\"slide_text8\";N;s:16:\"text_font_color8\";N;s:12:\"button_text8\";N;s:4:\"url8\";N;s:5:\"file9\";N;s:14:\"slide_heading9\";N;s:19:\"heading_font_color9\";N;s:11:\"slide_text9\";N;s:16:\"text_font_color9\";N;s:12:\"button_text9\";N;s:4:\"url9\";N;s:6:\"file10\";N;s:15:\"slide_heading10\";N;s:20:\"heading_font_color10\";N;s:12:\"slide_text10\";N;s:17:\"text_font_color10\";N;s:13:\"button_text10\";N;s:5:\"url10\";N;}',1),(4,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'homepage-services','a:12:{s:6:\"_token\";s:40:\"gCOeCtTPQaESMEVTShGLb7rbvYf3hAPnbYXSSdm0\";s:7:\"enabled\";s:1:\"1\";s:5:\"file1\";s:68:\"img/demo/service1.jpg\";s:8:\"heading1\";s:14:\"Quality Training\";s:5:\"text1\";s:129:\"<p>We provide high quality in person training at all our locations.</p>\";s:5:\"file2\";s:68:\"img/demo/service2.jpg\";s:8:\"heading2\";s:18:\"Online Training\";s:5:\"text2\";s:176:\"Enrol for one of our online courses and learn at your own pace! We have different modules available for all your learning needs!<br>\";s:12:\"info_heading\";s:23:\"The Best Training Company\";s:9:\"info_text\";s:167:\"<p>We are the best training service provider in our Industry! Get quality training now!<br></p>\";s:11:\"button_text\";s:10:\"Learn More\";s:3:\"url\";s:1:\"#\";}',1),(5,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'homepage-about','a:7:{s:6:\"_token\";s:40:\"gCOeCtTPQaESMEVTShGLb7rbvYf3hAPnbYXSSdm0\";s:7:\"enabled\";s:1:\"1\";s:7:\"heading\";s:28:\"1000 Clients and counting...\";s:4:\"text\";s:318:\"<p>Over the years, we are proud to have serviced more than 1000 satisfied clients! Our client list is spread across all states of the federation. </p><p>Some of our clients include:</p><ol><li>Supertech Limited</li><li>Super Schools Limited</li><li>Andre Montessori School</li><li>Kings Elementary School<br></li></ol>\";s:11:\"button_text\";s:9:\"Read more\";s:10:\"button_url\";s:1:\"#\";s:5:\"image\";s:68:\"img/demo/about.jpg\";}',1),(6,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'testimonials','a:28:{s:6:\"_token\";s:40:\"8jnb6kBKNB2moNVBP322DvRN1xDSTpkha0PSlQ6w\";s:7:\"enabled\";s:1:\"1\";s:11:\"sub_heading\";s:12:\"Testimonials\";s:7:\"heading\";s:16:\"What Parents Say\";s:5:\"name1\";s:7:\"Shola A\";s:5:\"role1\";s:3:\"Mom\";s:6:\"image1\";s:67:\"img/demo/tes1.png\";s:5:\"text1\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:5:\"name2\";s:8:\"Tolulope\";s:5:\"role2\";s:3:\"Dad\";s:6:\"image2\";s:67:\"img/demo/tes2.png\";s:5:\"text2\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:5:\"name3\";s:5:\"Bunmi\";s:5:\"role3\";s:3:\"Mom\";s:6:\"image3\";s:67:\"img/demo/tes3.png\";s:5:\"text3\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:5:\"name4\";N;s:5:\"role4\";N;s:6:\"image4\";N;s:5:\"text4\";N;s:5:\"name5\";N;s:5:\"role5\";N;s:6:\"image5\";N;s:5:\"text5\";N;s:5:\"name6\";N;s:5:\"role6\";N;s:6:\"image6\";N;s:5:\"text6\";N;}',1),(7,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'blog','a:5:{s:6:\"_token\";s:40:\"8jnb6kBKNB2moNVBP322DvRN1xDSTpkha0PSlQ6w\";s:7:\"enabled\";s:1:\"1\";s:11:\"sub_heading\";s:4:\"Blog\";s:7:\"heading\";s:12:\"Latest Posts\";s:5:\"limit\";s:1:\"3\";}',0),(8,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'contact-form','a:6:{s:6:\"_token\";s:40:\"gCOeCtTPQaESMEVTShGLb7rbvYf3hAPnbYXSSdm0\";s:7:\"enabled\";s:1:\"1\";s:7:\"heading\";s:12:\"Get in touch\";s:4:\"text\";s:129:\"<p>Do you have any questions about our services? Get in touch with us now and we will be glad to get back to you shortly.<br></p>\";s:8:\"bg_color\";N;s:10:\"font_color\";N;}',1),(9,'2023-05-11 02:51:12','2023-05-11 02:51:12',1,'footer','a:13:{s:6:\"_token\";s:40:\"FJCotq9TzWxE17MEEaYWfJhLXyEwDDMqsF9bglnK\";s:7:\"enabled\";s:1:\"1\";s:4:\"text\";s:60:\"We are the best agency for all your training needs!\";s:15:\"newsletter-code\";N;s:7:\"credits\";s:20:\"© 2020 Training Company\";s:8:\"bg_color\";N;s:10:\"font_color\";N;s:5:\"image\";N;s:15:\"social_facebook\";s:1:\"#\";s:14:\"social_twitter\";s:1:\"#\";s:16:\"social_instagram\";s:1:\"#\";s:14:\"social_youtube\";s:1:\"#\";s:15:\"social_linkedin\";s:1:\"#\";}',1),(10,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'top-bar','a:5:{s:15:\"social_facebook\";s:1:\"#\";s:14:\"social_twitter\";s:1:\"#\";s:16:\"social_instagram\";s:1:\"#\";s:14:\"social_youtube\";s:1:\"#\";s:15:\"social_linkedin\";s:1:\"#\";}',1),(11,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'navigation','a:1:{s:11:\"search_form\";s:1:\"1\";}',1),(12,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'slideshow','a:16:{s:5:\"file1\";s:59:\"templates/edugrids/assets/assets/images/demo/slider-bg1.jpg\";s:14:\"slide_heading1\";s:54:\"The Best Online And Offline Courses. Get Started Today\";s:12:\"sub_heading1\";s:20:\"Start Learning Today\";s:11:\"slide_text1\";s:129:\"Enrol for our courses today and get the best training in the industry. Our courses are self paced and delivered via web or mobile\";s:14:\"button_1_text1\";s:10:\"Learn More\";s:6:\"url_11\";s:1:\"#\";s:14:\"button_2_text1\";s:11:\"Our Courses\";s:6:\"url_21\";s:8:\"/courses\";s:5:\"file2\";s:59:\"templates/edugrids/assets/assets/images/demo/slider-bg2.jpg\";s:14:\"slide_heading2\";s:36:\"Professional World-Class Instructors\";s:12:\"sub_heading2\";s:15:\"Our Instructors\";s:11:\"slide_text2\";s:115:\"Get best training from the best instructors in the industry. Our trainers have years of experience and pre-screened\";s:14:\"button_1_text2\";s:0:\"\";s:6:\"url_12\";s:0:\"\";s:14:\"button_2_text2\";s:15:\"Our Instructors\";s:6:\"url_22\";s:12:\"/instructors\";}',1),(13,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'homepage-services','a:12:{s:8:\"heading1\";s:16:\"Trending Courses\";s:5:\"text1\";s:121:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus sed.\";s:12:\"button_text1\";s:7:\"Explore\";s:4:\"url1\";s:1:\"#\";s:8:\"heading2\";s:18:\"Certified Teachers\";s:5:\"text2\";s:121:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus sed.\";s:12:\"button_text2\";s:7:\"Explore\";s:4:\"url2\";s:1:\"#\";s:8:\"heading3\";s:15:\"Books & Library\";s:5:\"text3\";s:121:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus sed.\";s:12:\"button_text3\";s:7:\"Explore\";s:4:\"url3\";s:1:\"#\";}',1),(14,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'homepage-about','a:6:{s:11:\"sub_heading\";s:8:\"About Us\";s:7:\"heading\";s:21:\"Welcome To Our Portal\";s:4:\"text\";s:351:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eius mod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad min im veniam, quis nostrud exercitati ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, do eius mod tempor incididunt ut labore et dolore magna aliqua.\";s:11:\"button_text\";s:10:\"Learn More\";s:10:\"button_url\";s:11:\"/who-we-are\";s:5:\"image\";s:59:\"templates/edugrids/assets/assets/images/demo/about-img2.png\";}',1),(15,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'featured-courses','a:3:{s:7:\"heading\";s:16:\"Featured Courses\";s:11:\"sub_heading\";s:52:\"Browse our top courses and get high quality training\";s:7:\"courses\";a:0:{}}',1),(16,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'highlights','a:9:{s:5:\"image\";s:63:\"templates/edugrids/assets/assets/images/demo/achievement-bg.jpg\";s:8:\"heading1\";s:5:\"500 +\";s:5:\"text1\";s:13:\"Happy Clients\";s:8:\"heading2\";s:4:\"70 +\";s:5:\"text2\";s:14:\"Online Courses\";s:8:\"heading3\";s:5:\"100 %\";s:5:\"text3\";s:12:\"Satisfaction\";s:8:\"heading4\";s:5:\"100 %\";s:5:\"text4\";s:7:\"Support\";}',1),(17,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'instructors','a:2:{s:7:\"heading\";s:27:\"Our Experienced Instructors\";s:11:\"sub_heading\";s:52:\"Get training from the best Instructors in the world!\";}',1),(18,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'testimonials','a:26:{s:7:\"heading\";s:21:\"What Our Students Say\";s:11:\"sub_heading\";s:119:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.\";s:5:\"name1\";s:10:\"Jane Smith\";s:5:\"role1\";s:7:\"Student\";s:6:\"image1\";s:56:\"templates/edugrids/assets/assets/images/demo/testi-1.jpg\";s:5:\"text1\";s:195:\"It’s amazing how much easier it has been to meet new people and create instant\nconnections. I have the exact same personality, the only thing that has changed is my\nmindset and a few behaviors.\";s:5:\"name2\";s:13:\"Micheal James\";s:5:\"role2\";s:7:\"Student\";s:6:\"image2\";s:56:\"templates/edugrids/assets/assets/images/demo/testi-2.jpg\";s:5:\"text2\";s:195:\"It’s amazing how much easier it has been to meet new people and create instant\nconnections. I have the exact same personality, the only thing that has changed is my\nmindset and a few behaviors.\";s:5:\"name3\";s:10:\"Fred Smart\";s:5:\"role3\";s:7:\"Student\";s:6:\"image3\";s:56:\"templates/edugrids/assets/assets/images/demo/testi-3.jpg\";s:5:\"text3\";s:195:\"It’s amazing how much easier it has been to meet new people and create instant\nconnections. I have the exact same personality, the only thing that has changed is my\nmindset and a few behaviors.\";s:5:\"name4\";s:14:\"Alicia Jackson\";s:5:\"role4\";s:7:\"Student\";s:6:\"image4\";s:56:\"templates/edugrids/assets/assets/images/demo/testi-4.jpg\";s:5:\"text4\";s:195:\"It’s amazing how much easier it has been to meet new people and create instant\nconnections. I have the exact same personality, the only thing that has changed is my\nmindset and a few behaviors.\";s:5:\"name5\";s:10:\"Mary Smith\";s:5:\"role5\";s:7:\"Student\";s:6:\"image5\";s:56:\"templates/edugrids/assets/assets/images/demo/testi-1.jpg\";s:5:\"text5\";s:195:\"It’s amazing how much easier it has been to meet new people and create instant\nconnections. I have the exact same personality, the only thing that has changed is my\nmindset and a few behaviors.\";s:5:\"name6\";s:10:\"Sara Smith\";s:5:\"role6\";s:7:\"Student\";s:6:\"image6\";s:56:\"templates/edugrids/assets/assets/images/demo/testi-2.jpg\";s:5:\"text6\";s:195:\"It’s amazing how much easier it has been to meet new people and create instant\nconnections. I have the exact same personality, the only thing that has changed is my\nmindset and a few behaviors.\";}',1),(19,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'blog','a:3:{s:7:\"heading\";s:18:\"Latest News & Blog\";s:11:\"sub_heading\";s:27:\"Latest posts from our Blog.\";s:5:\"limit\";s:1:\"3\";}',1),(20,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'icons','a:12:{s:6:\"image1\";s:56:\"templates/edugrids/assets/assets/images/demo/client1.svg\";s:6:\"image2\";s:56:\"templates/edugrids/assets/assets/images/demo/client2.svg\";s:6:\"image3\";s:56:\"templates/edugrids/assets/assets/images/demo/client3.svg\";s:6:\"image4\";s:56:\"templates/edugrids/assets/assets/images/demo/client4.svg\";s:6:\"image5\";s:56:\"templates/edugrids/assets/assets/images/demo/client5.svg\";s:6:\"image6\";s:56:\"templates/edugrids/assets/assets/images/demo/client1.svg\";s:6:\"image7\";s:56:\"templates/edugrids/assets/assets/images/demo/client2.svg\";s:6:\"image8\";s:56:\"templates/edugrids/assets/assets/images/demo/client3.svg\";s:6:\"image9\";s:56:\"templates/edugrids/assets/assets/images/demo/client4.svg\";s:7:\"image10\";s:56:\"templates/edugrids/assets/assets/images/demo/client5.svg\";s:7:\"image11\";s:56:\"templates/edugrids/assets/assets/images/demo/client1.svg\";s:7:\"image12\";s:56:\"templates/edugrids/assets/assets/images/demo/client2.svg\";}',1),(21,'2023-05-11 02:51:12','2023-05-11 02:51:12',2,'footer','a:8:{s:4:\"text\";s:122:\"Nemo enim enim voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequ magni dolores eos qui ratione.\";s:15:\"social_facebook\";s:1:\"#\";s:14:\"social_twitter\";s:1:\"#\";s:16:\"social_instagram\";s:1:\"#\";s:14:\"social_youtube\";s:1:\"#\";s:15:\"social_linkedin\";s:1:\"#\";s:7:\"credits\";s:12:\"Company Name\";s:4:\"blog\";s:1:\"1\";}',1);
/*!40000 ALTER TABLE `template_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `directory` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `templates_directory_unique` (`directory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'2023-05-11 02:51:11','2023-08-12 05:20:23','Buson',0,'buson'),(2,'2023-05-11 02:51:12','2023-08-12 05:20:23','EduGrids',1,'edugrids'),(3,'2023-08-12 05:19:27','2023-08-12 05:20:23','Education',0,'education'),(4,'2023-08-12 05:19:56','2023-08-12 05:20:23','Fox',0,'fox');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_grades`
--

DROP TABLE IF EXISTS `test_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_grades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `grade` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` int NOT NULL,
  `max` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_grades`
--

LOCK TABLES `test_grades` WRITE;
/*!40000 ALTER TABLE `test_grades` DISABLE KEYS */;
INSERT INTO `test_grades` VALUES (2,'2023-05-20 03:30:42','2023-05-20 03:30:42','A+',80,100);
/*!40000 ALTER TABLE `test_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_options`
--

DROP TABLE IF EXISTS `test_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_question_id` bigint unsigned NOT NULL,
  `option` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `test_options_test_question_id_foreign` (`test_question_id`),
  CONSTRAINT `test_options_test_question_id_foreign` FOREIGN KEY (`test_question_id`) REFERENCES `test_questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_options`
--

LOCK TABLES `test_options` WRITE;
/*!40000 ALTER TABLE `test_options` DISABLE KEYS */;
INSERT INTO `test_options` VALUES (16,'2023-08-20 23:34:46','2023-08-20 23:34:46',4,'3',0),(17,'2023-08-20 23:34:46','2023-08-20 23:34:46',4,'4',1),(18,'2023-08-20 23:34:46','2023-08-20 23:34:46',4,'None',0),(19,'2023-08-21 05:52:42','2023-08-21 05:52:42',5,'ekta',1),(20,'2023-08-21 05:52:42','2023-08-21 05:52:42',5,'na',0);
/*!40000 ALTER TABLE `test_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_questions`
--

DROP TABLE IF EXISTS `test_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_id` bigint unsigned NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_questions_test_id_foreign` (`test_id`),
  CONSTRAINT `test_questions_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_questions`
--

LOCK TABLES `test_questions` WRITE;
/*!40000 ALTER TABLE `test_questions` DISABLE KEYS */;
INSERT INTO `test_questions` VALUES (4,'2023-08-20 23:34:46','2023-08-20 23:34:46',4,'<p>2 + (4 * 1) / 2 ?</p>',1),(5,'2023-08-21 05:52:42','2023-08-21 05:52:42',6,'<p>what is your name ?</p>',1);
/*!40000 ALTER TABLE `test_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `minutes` int DEFAULT NULL,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT '0',
  `passmark` double(8,2) DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `show_result` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `tests_admin_id_foreign` (`admin_id`),
  CONSTRAINT `tests_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (4,'2023-08-20 23:32:18','2023-08-21 05:48:10',1,'demo Test','<p>demo Test&nbsp;Instructions</p>',1,10,1,50.00,1,1),(6,'2023-08-21 05:52:10','2023-08-21 05:53:04',1,'new test','<p>what is your name ?</p>',1,5,0,50.00,1,1);
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint unsigned NOT NULL,
  `payment_method_id` bigint unsigned NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_student_id_foreign` (`student_id`),
  KEY `transactions_payment_method_id_foreign` (`payment_method_id`),
  CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint unsigned NOT NULL,
  `picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `last_seen` timestamp NULL DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_token_expires` timestamp NULL DEFAULT NULL,
  `billing_firstname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lastname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_id` bigint unsigned DEFAULT NULL,
  `billing_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `billing_address_2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  FULLTEXT KEY `full` (`name`,`email`,`last_name`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@email.com',NULL,'$2y$10$am57RA.ACacBMpyMi3YnE.pYzMWwrXyZSfe7X3RH06pzFf1yuJGCW','jmXYZ2QHxgmb6x0HRtX0MFjdkDbE9GzfPGNK6APppZs69isjyPmOONQSdudd','2023-05-11 02:51:13','2023-05-31 02:31:25',1,'usermedia/student_uploads/2023_05/logo-1.png',1,'2023-05-20 07:25:13','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Dev','trainer@gmail.com',NULL,'$2y$10$am57RA.ACacBMpyMi3YnE.pYzMWwrXyZSfe7X3RH06pzFf1yuJGCW','F2Ean5kRezkRKqdGWjVdUlmj0U3oqJcDOftXulBlVGPCa1kQ6q2QvKqxMFFV','2023-05-16 04:13:37','2023-05-30 05:46:44',1,NULL,1,'2023-05-30 05:46:44','Yadav',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Devendra','dev@email.com',NULL,'$2y$10$am57RA.ACacBMpyMi3YnE.pYzMWwrXyZSfe7X3RH06pzFf1yuJGCW',NULL,'2023-05-16 06:01:50','2023-05-16 06:01:50',1,NULL,1,NULL,'yadav',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Student1','ekta@gmail.com',NULL,'$2y$10$HxqrLunIsoZorfDKvdtQAeDKKv.So1DDKOXfpzCPg1XlJavFusyXO','uHOIWoR8yXSdiGwIV1U0hUUtXNX60NWDJi0uf0WHFCIjzFCd9hitHvVxM1tJ','2023-05-18 05:11:42','2023-10-10 02:22:13',2,'usermedia/student_uploads/2023_08/16925934615_student.png',1,'2023-10-10 02:22:13','Student1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_id` bigint unsigned DEFAULT NULL,
  `length` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ready` tinyint(1) DEFAULT '0',
  `location` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'l',
  `mime_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videos_admin_id_foreign` (`admin_id`),
  FULLTEXT KEY `full` (`name`,`description`),
  CONSTRAINT `videos_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'2023-05-18 01:53:09','2023-05-18 01:53:09','file_example_MP4_480_1_5MG',NULL,1,'00:00:00','6465d25d8eaf1.mp4','1570024',0,'l','video/mp4');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_values`
--

DROP TABLE IF EXISTS `widget_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widget_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int DEFAULT NULL,
  `visibility` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'b',
  PRIMARY KEY (`id`),
  KEY `widget_values_widget_id_foreign` (`widget_id`),
  CONSTRAINT `widget_values_widget_id_foreign` FOREIGN KEY (`widget_id`) REFERENCES `widgets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_values`
--

LOCK TABLES `widget_values` WRITE;
/*!40000 ALTER TABLE `widget_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeat` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,NULL,NULL,'slideshow','slideshow',10),(2,NULL,NULL,'text-and-button','textbtn',0),(3,NULL,NULL,'featured-courses','courses',10),(4,NULL,NULL,'plain-text','text',0),(5,NULL,NULL,'blog','blog',0);
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 15:10:21
