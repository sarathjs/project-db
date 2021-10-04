-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: moviemannia
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_details` (
  `cus_id` varchar(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_details`
--

LOCK TABLES `customer_details` WRITE;
/*!40000 ALTER TABLE `customer_details` DISABLE KEYS */;
INSERT INTO `customer_details` VALUES ('cus1','saea',23333),('cus15','jithin',12456974),('cus2','ramu',466789321),('cus3','keju',456746321),('cus4','raju',454689321),('cus5','nero',547963217),('cus6','reethu',987654345);
/*!40000 ALTER TABLE `customer_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_details`
--

DROP TABLE IF EXISTS `language_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_details` (
  `lang_no` int NOT NULL,
  `language_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lang_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_details`
--

LOCK TABLES `language_details` WRITE;
/*!40000 ALTER TABLE `language_details` DISABLE KEYS */;
INSERT INTO `language_details` VALUES (1,'malayalam'),(2,'english'),(3,'hindi'),(4,'tamil'),(5,'telugu');
/*!40000 ALTER TABLE `language_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_catagory`
--

DROP TABLE IF EXISTS `movie_catagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_catagory` (
  `cata_no` int NOT NULL,
  `catagory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cata_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_catagory`
--

LOCK TABLES `movie_catagory` WRITE;
/*!40000 ALTER TABLE `movie_catagory` DISABLE KEYS */;
INSERT INTO `movie_catagory` VALUES (1,'drama'),(2,'thriller'),(3,'romantic'),(4,'fantasy'),(5,'horror');
/*!40000 ALTER TABLE `movie_catagory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_details`
--

DROP TABLE IF EXISTS `movie_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_details` (
  `mov_id` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(45) DEFAULT NULL,
  `language_type` int DEFAULT NULL,
  `catagory` int DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `total_seat` int DEFAULT '50',
  `remaining_seat` int DEFAULT '50',
  `screen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mov_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_details`
--

LOCK TABLES `movie_details` WRITE;
/*!40000 ALTER TABLE `movie_details` DISABLE KEYS */;
INSERT INTO `movie_details` VALUES (1,'kurup',1,2,'2.15hr',50,47,'screen1'),(2,'abcd',2,1,'2.15hr',50,50,'screen2'),(3,'lal',1,3,'2.15hr',50,50,'screen3'),(4,'minnal',1,4,'2.15hr',50,47,'screen4'),(5,'data',3,5,'2.15hr',50,47,'screen5'),(6,'tree',2,1,'2.30hr',50,50,'screen6'),(7,'theertheee',2,2,'2.15hr',50,50,'screen1'),(15,'sara',2,2,'2.15hr',50,51,'screen2'),(16,'Home',1,1,'2.15hr',50,50,'screen4');
/*!40000 ALTER TABLE `movie_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_duration`
--

DROP TABLE IF EXISTS `movie_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_duration` (
  `screen` varchar(10) DEFAULT NULL,
  `movie` varchar(45) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_duration`
--

LOCK TABLES `movie_duration` WRITE;
/*!40000 ALTER TABLE `movie_duration` DISABLE KEYS */;
INSERT INTO `movie_duration` VALUES ('screen1','abcd','2021-04-20','2021-06-20'),('screen1','abcd','2021-04-20','2021-06-20'),('screen2','kurup','2021-05-20','2021-06-20'),('screen3','lal','2021-05-10','2021-06-20'),('screen4','minnal','2021-04-20','2021-07-20'),('screen5','data','2021-04-20','2021-06-20');
/*!40000 ALTER TABLE `movie_duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_details`
--

DROP TABLE IF EXISTS `reservation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_details` (
  `cus_id` varchar(10) DEFAULT NULL,
  `mov_id` int DEFAULT NULL,
  `booked_seats` varchar(45) DEFAULT NULL,
  `mov_date` date DEFAULT NULL,
  `book_status` int DEFAULT NULL,
  `show_time` int DEFAULT NULL,
  `res_id` varchar(45) NOT NULL,
  `no_of_booking` int DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_details`
--

LOCK TABLES `reservation_details` WRITE;
/*!40000 ALTER TABLE `reservation_details` DISABLE KEYS */;
INSERT INTO `reservation_details` VALUES ('cus6',1,'scr7001','2021-02-20',1,1,'sce8I',1),('cus6',1,'scr04','2021-02-20',0,NULL,'scr00M',1),('cus15',2,'scr003','2026-02-12',1,3,'scr045',1),('cus1',1,'scr1001,scr1002','2021-02-20',0,NULL,'scr1A',2),('cus2',5,'scr1006,scr1007,scr1008,scr1009','2021-02-21',1,2,'scr1B',4),('cus5',4,'scr1006','2021-02-22',1,1,'scr1D',2),('cus3',2,'scr3007,scr3008','2021-02-20',1,NULL,'scr3A',3),('cus1',2,'scr001','2021-02-11',1,NULL,'scr3W',1),('cus1',1,'scr006','2021-02-20',1,NULL,'scr3X',1),('cus4',2,'scr45','2021-02-11',0,2,'scr43V',1),('cus4',NULL,'',NULL,0,NULL,'scr4A',NULL),('cus5',3,'scr5020','2021-02-21',1,NULL,'scr5A',1),('cus5',1,'scr009','2021-02-12',1,NULL,'scr5G',1),('cus5',1,'scr001','2021-02-21',1,NULL,'scr5L',1),('cus15',15,'scro4','2021-02-12',1,2,'scr6B',1),('cus15',15,'scr002,scr006','2021-02-10',0,2,'scr6N',2),('cus6',1,'scr98','2021-02-11',0,NULL,'scr88B',1),('cus4',2,'scr09','2021-02-01',0,1,'scr88F',1),('cus1',1,'scr001','2021-02-21',0,NULL,'scr8V',1),('cus2',2,'scr008','2021-02-10',0,NULL,'scr9K',1),('cus15',1,'scr002,scr008','2021-02-10',0,NULL,'scr9Z',2);
/*!40000 ALTER TABLE `reservation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_time`
--

DROP TABLE IF EXISTS `show_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_time` (
  `show_no` int NOT NULL,
  `show_type` varchar(45) DEFAULT NULL,
  `show_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`show_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_time`
--

LOCK TABLES `show_time` WRITE;
/*!40000 ALTER TABLE `show_time` DISABLE KEYS */;
INSERT INTO `show_time` VALUES (1,'matinee','10.00am'),(2,'noon','1.00pm'),(3,'first','6.00pm'),(4,'second','9.00pm');
/*!40000 ALTER TABLE `show_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_booking`
--

DROP TABLE IF EXISTS `status_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_booking` (
  `status_no` int NOT NULL,
  `book_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`status_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_booking`
--

LOCK TABLES `status_booking` WRITE;
/*!40000 ALTER TABLE `status_booking` DISABLE KEYS */;
INSERT INTO `status_booking` VALUES (0,'canceled'),(1,'booked');
/*!40000 ALTER TABLE `status_booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 11:05:05
