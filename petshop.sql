-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: petshop
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admininfo`
--

DROP TABLE IF EXISTS `admininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admininfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admininfo`
--

LOCK TABLES `admininfo` WRITE;
/*!40000 ALTER TABLE `admininfo` DISABLE KEYS */;
INSERT INTO `admininfo` VALUES (1,'Maria Flores','09074985072','floresmd3@gmail.com','petshop','admin123');
/*!40000 ALTER TABLE `admininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animalfood`
--

DROP TABLE IF EXISTS `animalfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animalfood` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `prize` float NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animalfood`
--

LOCK TABLES `animalfood` WRITE;
/*!40000 ALTER TABLE `animalfood` DISABLE KEYS */;
INSERT INTO `animalfood` VALUES (1,'bold',20,'makanan kucing','bolt.jpg','available');
/*!40000 ALTER TABLE `animalfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcnp`
--

DROP TABLE IF EXISTS `tblcnp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcnp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `prize` float DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcnp`
--

LOCK TABLES `tblcnp` WRITE;
/*!40000 ALTER TABLE `tblcnp` DISABLE KEYS */;
INSERT INTO `tblcnp` VALUES (1,'Baltimore Oriole',350,'The rich, whistling song of the Baltimore Oriole, ','images/e.jpg','Available'),(2,'Maltese',500,'A dog breed whoâ€™s gentle and fearless, the Malte','images/2.jpg','Available'),(3,'Bulldog',550,'Bulldogs originally were used to drive cattle to m','images/3.jpg','Available'),(4,'Gordon Setter',600,'The Gordon Setter, the black avenger of the Highla','images/5.jpg','Available'),(5,'Bedlington Terrier',500,'Bedlingtons are lithe, energetic Englishmen. The c','images/9.JPG','Available'),(6,'MOY',100,'Kucing Kampung warna abu monyet','images/2.jpg','Available'),(9,'anjing',5000,'anjing dewasa','upload/3.jpg','Available'),(10,'anjing',300,'anjing putih','images/2.jpg','Available'),(11,'kucing',10,'kucing ','images/c5.jpg','Available'),(12,'burung',1,'burung lucu','images/b11.jpg','Available');
/*!40000 ALTER TABLE `tblcnp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `cnpoid` int(11) DEFAULT NULL,
  `oqty` int(11) DEFAULT NULL,
  `ostatus` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otype` varchar(50) DEFAULT NULL,
  `datepickup` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
INSERT INTO `tblorders` VALUES (10,'Jeancen Sayoc','Tacloban City','09369420867',4,1,'Cancel','2022-06-21 03:16:43','Pick-up','2016-10-14'),(11,'Jhazel Dela Cruz','Kabankalan City','09095744586',3,3,'Cancel','2022-06-21 03:19:03','Pick-up','2019-03-18'),(12,'Jhazel Dela Cruz','kabfsheth','14253',5,3,'Completed','2022-06-14 01:55:25','Pick-up','0000-00-00'),(13,'dsgreer','xghre','45744',5,4,'Cancel','2022-06-14 01:55:02','Deliver','0000-00-00'),(15,'tita','blitar','08111111111',5,1,'Completed','2022-06-14 01:45:38','Pick-up','2022-06-14'),(16,'tita','blitar','0812345678',1,1,'Completed','2022-06-27 05:02:11','Deliver','2022-06-21'),(17,'tita','blitar','0812345678',1,1,'Cancel','2022-06-27 10:43:58','Deliver','2022-06-21'),(18,'Valentia Nikma Prastita','blitar','08111111111',1,1,'Cancel','2022-06-21 03:53:23','Deliver','2022-06-22'),(19,'Valentia Nikma Prastita','blitar','08111111111',1,1,'new','2022-06-21 02:49:47','Deliver','2022-06-22'),(20,'tita','kota blitar','0822222222',1,1,'new','2022-06-21 02:51:43','Deliver','2022-06-20'),(21,'tita','kota blitar','0822222222',1,1,'new','2022-06-21 02:51:43','Deliver','2022-06-20'),(22,'ani','blitar','08111111111',10,1,'new','2022-06-21 02:58:29','Pick-up','2022-06-21'),(23,'ani','blitar','08111111111',10,1,'Cancel','2022-06-27 10:45:36','Pick-up','2022-06-21'),(24,'ana','blitar','0812345678',10,1,'Completed','2022-06-21 03:52:31','Pick-up','2022-06-21'),(25,'ana','blitar','0812345678',10,1,'Completed','2022-06-21 03:15:13','Pick-up','2022-06-21'),(26,'liana','blitar','08111111111',10,1,'Cancel','2022-06-21 03:15:24','Pick-up','2022-06-22'),(27,'pak fuad','blitar','12345678910',11,2,'Completed','2022-06-27 10:40:19','Deliver','0000-00-00'),(28,'pak fuad','blitar','12345678910',11,4,'Completed','2022-06-21 04:07:14','Deliver','0000-00-00'),(29,'titatita','blitar','123',11,1,'Completed','2022-06-27 10:39:29','Deliver','0000-00-00'),(30,'titatita','blitar','0808080808',11,1,'Completed','2022-06-27 10:36:28','Deliver','0000-00-00'),(31,'liana','blitar','12345678910',11,0,'new','2022-06-27 10:55:26','Deliver','0000-00-00'),(32,'anii','blitar','12345678910',12,1,'new','2022-06-27 11:16:58','Pick-up','2022-06-28'),(33,'titaa','blitar','123',12,0,'new','2022-06-28 02:12:03','Deliver','0000-00-00');
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-07 14:50:26
