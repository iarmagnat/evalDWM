-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Current Database: `shop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `shop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shop`;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(45) NOT NULL,
  `content` mediumtext NOT NULL,
  `read` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (11,'dgryey','<p style=\'text-align:center\'>Topic: trytrujgfdj</p> oyufblihzreapgtu',1,'2017-02-10 10:46:19','2017-02-10 10:46:28'),(14,'reg','<p style=\'text-align:center\'>Topic: fdgfdh</p> hfdshgfhf',1,'2017-02-10 11:03:33','2017-02-10 11:03:37'),(16,'plop ploup plopy','<p style=\'text-align:center\'>Topic: plop ploup plopy</p> plop ploup plopy',1,'2017-02-10 11:08:24','2017-02-10 11:08:28'),(18,'lehbfh','<p style=\'text-align:center\'>Topic: topic</p> line 1<br>line2<br>line3',0,'2017-02-10 13:22:32','2017-02-10 13:22:32'),(19,'hfvzlo','<p style=\'text-align:center\'>Topic: LEEK SOUP</p> Ah non attention, si vraiment tu veux te rappeler des souvenirs de ton perroquet, entre penser et dire, il y a un monde de différence puisque the final conclusion of the spirit is perfection Mais ça, c\'est uniquement lié au spirit.<br><br>Tu vois, tu vois au passage qu\'il n\'y a rien de concret car entre penser et dire, il y a un monde de différence puisque the final conclusion of the spirit is perfection Et tu as envie de le dire au monde entier, including yourself.',0,'2017-02-10 13:23:22','2017-02-10 13:23:22');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` tinytext NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'storage/img/products/impala_car.jpg','A car type impala','High quality joke potential!'),(3,'storage/img/products/impala_not_car.jpeg','A non-car type Impala','High quality joke potential!'),(4,'storage/img/products/impala_not_car.jpeg','A non-car type Impala','High quality joke potential!'),(5,'storage/img/products/HCR0sqneSeYrXu2L1cHlutJpAw75663BBh6YJjNR.jpeg','car right','A good car<br>That\'s right'),(6,'storage/img/products/hUZTnGp9F2syuyRqLlEnbsf2VAJIUsrxNrU6VSW7.jpeg','kitty cat','That cat<br>is a kitten');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','adimn@admin.com','$2y$10$5fP6T5dO8czulba48VQAEeQf5kOOGeTB9fK8T4VI0DZtJR6od76z6','b9Ok2dW3J1f1qWSxE3TPD7EZtkMmEKkr2lsW7jsoduV35dAGYMFt4KrZH9Ua','2017-02-09 10:31:36','2017-02-09 10:31:36',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-10 14:59:52
