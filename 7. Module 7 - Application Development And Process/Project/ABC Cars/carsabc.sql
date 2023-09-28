CREATE DATABASE  IF NOT EXISTS `carsabc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carsabc`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carsabc
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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo_image_path` varchar(64) DEFAULT NULL,
  `photos` varchar(64) DEFAULT NULL,
  `post_date` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `registeration` varchar(255) DEFAULT NULL,
  `sell_status` varchar(255) DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'1987','AE86','Toyota','/images/car-photo/1/ToyotaAE86 (1).png','ToyotaAE86 (1).png','Jumat 28 April 2023','473','25-Nov-1987',NULL,3),(2,'1993','Supra MK-4','Toyota','/images/car-photo/2/toyota-supra-mk4.jpg','toyota-supra-mk4.jpg','Jumat 28 April 2023','792','31-Mar-1993',NULL,2),(3,'2015','Mustang GT-500','Ford','/images/car-photo/3/mustang-gt500.jpg','mustang-gt500.jpg','Sabtu 29 April 2023','882','29-04-2015',NULL,4),(4,'2022','Civic-R','Honda','/images/car-photo/4/honda-civic.jpg','honda-civic.jpg','Sabtu 29 April 2023','492','21-05-2022',NULL,4),(5,'2022','Corvette Z06','Chevrolet','/images/car-photo/5/corvette-z06.jpg','corvette-z06.jpg','Sabtu 29 April 2023','1724','26-10-2022',NULL,6),(6,'1970','Charger','Dodge','/images/car-photo/6/dodge-charger-1970.jpg','dodge-charger-1970.jpg','Minggu 30 April 2023','892','11-09-1970',NULL,6),(7,'2009','Carrera Cabriole','Porsche 911','/images/car-photo/7/porsche-911-carrera-s-cabriolet.jpg','porsche-911-carrera-s-cabriolet.jpg','Minggu 30 April 2023','1002','26-Dec-2009',NULL,6);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_bidding`
--

DROP TABLE IF EXISTS `car_bidding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_bidding` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bid_date` varchar(255) DEFAULT NULL,
  `bidder_name` varchar(255) DEFAULT NULL,
  `bidder_price` double NOT NULL,
  `book_date` varchar(255) DEFAULT NULL,
  `book_status` varchar(255) DEFAULT NULL,
  `car_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh8munwvvygymn7doimemeoh57` (`car_id`),
  KEY `FK7dr2kabe0rcckor1bep0464j5` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_bidding`
--

LOCK TABLES `car_bidding` WRITE;
/*!40000 ALTER TABLE `car_bidding` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_bidding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'for Admin','Administrator'),(2,'for User','Users');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Baleendah','admin@gmail.com','08163028782','Agung Yuda','$2a$10$oWSX/Iar5fvEpGlue7nmDec6LafhZ6tBSIOiJADiRTmv6PuaJbhZy','admin'),(2,'Los Angeles, United States','Eaton@gmail.com','918237018263','Eaton Joyle','$2a$10$IArBw23ooanbmZhkv.zzp.p1yZIv5wvzF/wMG0GW9xhxDH5b85y.q','Eaton'),(3,'Portland, United States','barrett@gmail.com','082976393682','Barrett Doyle','$2a$10$tXuS4HTqesvQ8ZaMqhrT8.pMVnuE0wmP0kLtzGgVg8gQ4iYR6Cqe2','barrett'),(4,'Bandung','farzan@gmail.com','0812388186893','Farzan Wijaya','$2a$10$9tCdCuiBz3Svi5lkWWPC/eHtqctt1YeVHBR0VSO4s1O1WoYHXPrYy','farzan'),(5,'Galih Pawarti','demara@gmail.com','0812479639273','Demara Restafa','$2a$10$dZh2PA.6Qa26O2YhwpQbluuPAbh0pdgdJyzSTpdCVM0pFKZQHO4AK','demara'),(6,'Manggar','angga@gmail.com','08123888032','Diva Angga','$2a$10$WDj8uX6Z7AVyUzdsWx0j.etReTh8kxoUnXrqvim223.e/qkRyLjPK','angga'),(7,NULL,'curry@gmail.com',NULL,'Stephen Curry','$2a$10$u5ocssK6MfG1dTj5s63fr.dfrfVDSkoJpxzzcOXejjjSOpo/gXsCi','curry');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-07  3:49:11
