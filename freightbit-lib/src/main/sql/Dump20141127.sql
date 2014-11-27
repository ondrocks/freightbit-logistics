CREATE DATABASE  IF NOT EXISTS `freightbit` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `freightbit`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: freightbit
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `referenceTable` varchar(50) NOT NULL,
  `referenceId` int(11) NOT NULL,
  `addressType` varchar(10) NOT NULL,
  `addressLine1` varchar(50) DEFAULT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  `contactReferenceId` int(11) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `clientId` (`clientId`),
  KEY `referenceTable` (`referenceTable`),
  KEY `referenceId` (`referenceId`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'VENDOR',29,'main','Caloocan City','Quezon City','Manila','NCR','a','2014-06-16 10:27:57','TEST','2014-08-07 02:30:45','TEST',NULL),(34,1,'VENDOR',29,'main','testasdasfa','testafas','testasfeafa','testafaef','a','2014-06-16 10:54:06','TEST','2014-06-16 11:48:54','TEST',NULL),(35,1,'VENDOR',29,'main','q','q','q','q','a','2014-06-16 11:11:45','TEST','2014-06-16 11:48:55','TEST',NULL),(36,1,'VENDOR',29,'main','test','test','test','test','test','2014-06-16 11:52:17','TEST','2014-06-16 11:52:17','TEST',NULL),(40,1,'CUSTOMERS',4,'main','Diliman, Quezon City','Ayala TechnoPark','Quezon City','Philippines','1234','2014-06-24 10:12:49','admin','2014-08-08 06:30:58','admin',NULL),(42,1,'CUSTOMERS',4,'main','Diliman, Quezon City','Ayala TechnoPark','Quezon City','Philippines','!@#$','2014-06-24 10:21:29','admin','2014-08-08 06:30:57','admin',NULL),(43,1,'VENDOR',58,'branch1','345 Address','Address2','Quezon','MM','89076','2014-06-24 17:09:24','admin','2014-06-24 17:09:24','admin',NULL),(53,1,'CUSTOMERS',3,'CONSIGNEE','Address 1','Address 2','Marilao','Bulacan','1039','2014-06-27 16:46:28','admin','2014-08-13 23:14:19','admin',64),(54,1,'CUSTOMERS',1,'branch2','asdafs','asfafafa','asdfaf','adfafads','dsdfsdfd','2014-06-30 15:32:36','admin','2014-08-08 06:30:57','admin',NULL),(55,1,'CUSTOMERS',1,'branch2','asdafs','asfafafa','asdfaf','adfafads','dsdfsdfd','2014-06-30 15:33:11','admin','2014-08-08 06:30:55','admin',NULL),(56,1,'CUSTOMERS',1,'branch1','Quezon City','ASDASDADD','Quezon','A.Luna','SDFDSFFFSF','2014-06-30 16:18:12','admin','2014-08-08 06:30:54','admin',NULL),(57,1,'CUSTOMERS',1,'main','Quezon City','asdadasdas','Quezon','A.Luna','sddasdasdasdas','2014-06-30 16:27:39','admin','2014-08-08 06:30:54','admin',NULL),(58,1,'CUSTOMERS',1,'branch1','Quezon City','asdadasdad','Quezon','A.Luna','adadadadasfdfgdfgdf','2014-06-30 16:47:17','admin','2014-08-08 06:30:53','admin',NULL),(60,1,'CUSTOMERS',4,'CONSIGNEE','Address 1','Address 2','Marilao','Bulacan','1039','2014-07-02 10:37:27','admin','2014-08-13 18:46:29','admin',64),(61,1,'CUSTOMERS',4,'CONSIGNEE','asd','asd','asd','asd','2323','2014-07-03 13:18:10','admin','2014-07-03 13:18:10','admin',52),(62,1,'CUSTOMERS',4,'CONSIGNEE','asd','asd','asd','asd','2323','2014-07-03 13:18:24','admin','2014-07-21 11:57:09','admin',NULL),(64,1,'CUSTOMERS',4,'main','dfg','dfg','dfg','dfg','1111','2014-07-04 10:57:07','1','2014-08-08 06:30:52','1',NULL),(65,1,'VENDOR',56,'main','aa','aa','aa','aa','1111','2014-07-04 11:48:49','admin','2014-07-04 11:48:49','admin',NULL),(66,1,'VENDOR',56,'main','sa','a','ss','ss','asdz2@@@','2014-07-04 11:49:58','admin','2014-07-04 11:49:58','admin',NULL),(67,1,'CUSTOMERS',4,'CONSIGNEE','Address 1','Address 2','Marilao','Bulacan','1223','2014-07-04 13:52:30','admin','2014-07-04 13:52:30','admin',56),(68,1,'VENDOR',60,'main','asd','asd','asd','assd','1212','2014-07-07 10:35:32','admin','2014-07-07 02:35:33','admin',NULL),(69,1,'VENDOR',56,'main','asd','asd','asd','sad','1231','2014-07-08 14:05:55','admin','2014-07-08 06:05:57','admin',NULL),(70,1,'VENDOR',56,'main','asd','asd','asd','asd','1231','2014-07-15 11:28:58','admin','2014-07-15 03:29:03','admin',NULL),(71,1,'CUSTOMERS',4,'CONSIGNEE','24d','234','dfg','dg','234','2014-07-21 11:27:36','admin','2014-07-21 03:27:37','admin',58),(72,1,'VENDOR',31,'main','Lardizabal St.','Try','Pasig','NCR','1234','2014-07-31 02:45:12','admin','2014-07-31 02:45:12','admin',NULL),(77,1,'CUSTOMERS',2,'CONSIGNEE','Test','Test','Test','Test','1234','2014-08-07 21:29:07','admin','2014-08-08 04:29:07','admin',63),(78,1,'CUSTOMERS',1,'CONSIGNEE','65 Jupiter St. Rancho 5','65 Jupiter St. Rancho 5','Malabon','NCR','1454','2014-08-14 02:33:12','admin','2014-08-13 18:40:52','admin',64),(80,1,'CUSTOMERS',1,'main','asdasdasd','','adasda','1','2322','2014-09-04 06:29:02','admin','2014-09-04 06:29:02','admin',NULL),(81,1,'CUSTOMERS',2,'branch3','asdjs','','adasda','1','2322','2014-09-04 08:44:30','admin','2014-09-04 08:44:30','admin',NULL),(82,1,'CUSTOMERS',16,'main','West','','Quezon','NCR','4565','2014-09-04 08:47:01','admin','2014-09-04 08:47:01','admin',NULL),(83,1,'CUSTOMERS',2,'CONSIGNEE','Prime block towers','','Quezon','NCR','1660','2014-09-04 09:30:06','admin','2014-09-04 09:30:06','admin',90),(84,1,'CUSTOMERS',1,'CONSIGNEE','Prime block towers','','Quezon','','1660','2014-09-04 09:33:37','admin','2014-09-04 09:33:37','admin',91),(85,1,'CUSTOMERS',16,'branch1','Prime block towers II Floor 24 Quezon Avenue ','Scout Gandia Tomas Morato Ext. Flight','Quezon City','Region 5','2324','2014-09-04 09:35:14','admin','2014-09-17 02:31:01','admin',NULL),(86,1,'VENDOR',31,'main','123 Diliman','','Quezon City','','1234','2014-09-09 03:33:35','admin','2014-09-09 03:33:35','admin',NULL),(87,1,'CUSTOMERS',17,'main','Diliman','','Quezon','','0908','2014-09-09 06:31:23','admin','2014-09-10 06:35:36','admin',NULL),(88,1,'CUSTOMERS',17,'main','hay','','makati','','9890','2014-09-09 06:32:10','admin','2014-09-10 06:35:36','admin',NULL),(89,1,'CUSTOMERS',17,'main','asdasda','','marikina','','2343','2014-09-09 06:38:29','admin','2014-09-10 06:35:36','admin',NULL),(90,1,'CUSTOMERS',17,'CONSIGNEE','ashgajhsgdas','','laguna','','4252','2014-09-09 06:58:25','admin','2014-09-09 06:58:25','admin',95),(91,1,'CUSTOMERS',17,'branch2','Balara','','Quezon','','1234','2014-09-10 02:18:46','admin','2014-09-10 02:18:46','admin',NULL),(92,1,'VENDOR',81,'main','Sitio Ibaba','Manggahan','Quezon City','','8787','2014-09-18 05:49:52','admin','2014-09-18 06:00:18','admin',NULL),(93,1,'CUSTOMERS',16,'branch1','cainta','','Quezon City','','6565','2014-09-24 05:37:10','admin','2014-09-24 05:37:10','admin',NULL),(94,1,'CUSTOMERS',16,'branch1','Haou','','Quezon City','Rizal','7335','2014-09-24 05:42:41','admin','2014-09-24 05:42:41','admin',NULL),(95,1,'CUSTOMERS',16,'main','lklagh','','Quezon City','Rizal','7335','2014-09-24 05:44:23','admin','2014-09-24 05:44:23','admin',NULL),(96,1,'CUSTOMERS',16,'main','advkjahgfd','','cebu','','6565','2014-09-24 05:57:28','admin','2014-09-24 05:57:28','admin',NULL),(97,1,'CUSTOMERS',16,'branch1','asdasdasd','','Hanoi','','7676','2014-09-24 06:08:24','admin','2014-09-24 06:08:24','admin',NULL),(98,1,'CUSTOMERS',16,'main','akgdjhagdjaghsjdgaj','','hadou','','2322','2014-09-24 06:11:06','admin','2014-09-24 06:11:06','admin',NULL),(99,1,'CUSTOMERS',32,'main','asdasdwfcsasa','','coronadal','','7672','2014-09-24 06:20:06','admin','2014-09-24 06:20:06','admin',NULL),(100,1,'CUSTOMERS',24,'branch3','poli','','POli','','2323','2014-09-24 06:22:47','admin','2014-09-24 06:22:47','admin',NULL),(101,1,'VENDOR',68,'Main','AADASDA','ada','ajkhdkjahskd','','2323','2014-09-24 09:08:34','admin','2014-09-24 09:08:34','admin',NULL),(102,1,'CUSTOMERS',16,'CONSIGNEE','65 Jupiter St. Rancho 5','','Cainta','Rizal','7335','2014-09-25 07:48:44','admin','2014-09-25 07:48:45','admin',97),(103,1,'VENDOR',81,'Main','asdf','asdf','asdf','1','1233','2014-10-01 02:54:17','admin','2014-10-01 02:54:17','admin',NULL),(104,1,'CUSTOMERS',41,'CONSIGNEE','857 Llano Rd. Bo. Llano','','Caloocan','','1420','2014-11-06 09:16:08','admin','2014-11-06 09:16:09','admin',103);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `clientId` int(11) NOT NULL AUTO_INCREMENT,
  `addressLine1` varchar(50) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `clientName` varchar(50) NOT NULL,
  `createdBy` varchar(25) NOT NULL,
  `createdTimestamp` datetime NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `modifiedBy` varchar(25) NOT NULL,
  `modifiedTimestamp` datetime NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Quezon City','10',NULL,'Ernest','admin','2014-05-22 04:01:47','admin@test.com','1234567','1234567','2014-05-22','2014-05-22 04:01:47','1234567','NA','www.website.com','1200');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `referenceTable` varchar(50) NOT NULL,
  `referenceId` int(11) NOT NULL,
  `contactType` varchar(10) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `middleName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createdTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `clientId` (`clientId`),
  KEY `referenceTable` (`referenceTable`),
  KEY `referenceId` (`referenceId`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,1,'vendor',29,'vendor','Vincent','vgukvguk','Gilreath','46579576467','46579576467','46579576467','RebeccaSHalliday@dayrep.com','2014-06-13 18:07:57','Admin','2014-08-13 18:03:16','Admin',NULL),(10,1,'vendor',29,'vendor','Mary','fgjlfgilfhli','Mattern','57895678','46579576467','46579576467','RebeccaSHalliday@dayrep.com','2014-06-16 10:24:16','Admin','2014-08-13 18:03:16','Admin',NULL),(11,1,'CUSTOMERS',1,'shipper','Nancy','sdgbsdgbn','Watson','(987) 654-3666','(+63578)(457-6777)','(578) 457-6655','RebeccaSHalliday@dayrep.com','2014-06-27 15:57:52','admin','2014-09-11 06:58:37','admin','E'),(12,1,'CUSTOMERS',1,'shipper','Donald','sdfhjdfhj','Hamilton','5784576','45784567456','5784576','RebeccaSHalliday@dayrep.com','2014-06-16 14:49:06','Admin','2014-08-13 18:27:41','Admin',NULL),(13,1,'CUSTOMERS',1,'shipper','David','dfhkdfhjdfh','Thompson','57789578568','45784567456','5784576','RebeccaSHalliday@dayrep.com','2014-06-16 14:54:49','Admin','2014-08-13 18:27:42','Admin',NULL),(14,1,'CUSTOMERS',1,'shipper','Catherine','fhkdfjh','King','6589079689','45784567456','5784576','RebeccaSHalliday@dayrep.com','2014-06-16 14:56:44','Admin','2014-08-13 18:27:42','Admin',NULL),(15,1,'vendor',29,'vendor','Earl','rydryj','Briseno','58678','45784567456','5784576','RebeccaSHalliday@dayrep.com','2014-06-16 15:18:04','Admin','2014-08-13 18:03:21','Admin',NULL),(16,1,'vendor',29,'vendor','Denise','dsgjsdfghsdgj','Henderson','45784567456','45784567456','45784567456','RebeccaSHalliday@dayrep.com','2014-06-16 15:19:30','Admin','2014-08-13 18:03:22','Admin',NULL),(17,1,'vendor',29,'vendor','Ruth','dfhjdfjdfj','Lapan','7577578','45784567456','45784567456','RebeccaSHalliday@dayrep.com','2014-06-16 15:27:06','Admin','2014-08-13 18:03:22','Admin',NULL),(18,1,'vendor',29,'vendor','Andrea','dgjsdfjhdfjh','Jenkins','45784567456','45784567456','45784567456','RebeccaSHalliday@dayrep.com','2014-06-16 16:39:24','Admin','2014-08-13 18:03:23','Admin',NULL),(19,1,'vendor',29,'vendor','Robin','etjertjertjy','Kilburn','09876543211','09876543211','09876543211','JoannSRiffle@teleworm.us','2014-06-16 16:44:43','Admin','2014-08-13 18:03:24','Admin',NULL),(21,1,'VENDOR',33,'CONSIGNEE','Warren','z','Walsh','09876543211','09876543211','09876543211','JoannSRiffle@teleworm.us','2014-06-19 15:16:26','Admin','2014-08-13 18:03:24','Admin',NULL),(22,1,'VENDOR',33,'shipper','Kenneth','F','Todd','12345678901','12345678901','12345678901','JoannSRiffle@teleworm.us','2014-06-19 15:26:56','Admin','2014-08-13 18:03:25','Admin',NULL),(23,1,'VENDOR',33,'CONSIGNEE','Peter','Mayo','Griffin','09876543211','09876543211','09876543211','JoannSRiffle@teleworm.us','2014-06-19 15:25:54','Admin','2014-08-13 18:03:26','Admin',NULL),(24,1,'VENDOR',33,'CONSIGNEE','Palmares','Mayo','Steph','09876543211','09876543211','09876543211','JoannSRiffle@teleworm.us','2014-06-19 15:28:03','Admin','2014-08-13 18:03:26','Admin',NULL),(27,1,'VENDOR',56,'consignee','Marvin','Pinoy','Hurst','815-5555','12345678901','12345678901','JoannSRiffle@teleworm.us','2014-06-20 10:24:49','Admin','2014-08-13 18:03:27','Admin',NULL),(64,1,'CUSTOMERS',1,'CONSIGNEE','Pearl','Edora','Simpson','1234567','12345678999','09876543211','PearlESimpson@rhyta.com','2014-08-14 02:33:11','admin','2014-08-13 18:33:14','admin',NULL),(65,1,'CUSTOMERS',16,'shipper','Naomi','','Watts','(909) 098-0987','(+63905) (989-9876)','','naomi@yahoo.com','2014-09-02 06:27:44','admin','2014-09-02 06:32:15','admin','Manager'),(66,1,'CUSTOMERS',16,'solicitor','Naomia','','Wattso','(909) 098-0990','(+63905) (989-9776)','','naomi@yahoo.com.ph','2014-09-02 07:12:46','admin','2014-09-02 07:12:46','admin','Manager'),(67,1,'CUSTOMERS',16,'billTo','Naomias','','Wattso','(909) 098-0990','(+63905) (965-9776)','','namiai@yahoo.com.ph','2014-09-02 07:38:33','admin','2014-09-02 07:38:33','admin','Manager'),(68,1,'CUSTOMERS',16,'shipper','Matt','','Damon','(909) 098-7675','(+63905) (989-9826)','','matt@yahoo.com','2014-09-02 07:57:57','admin','2014-09-02 07:57:57','admin','Supervisor'),(69,1,'CUSTOMERS',15,'billTo','proince','','ghoi','(909) 098-0990','(+63905) (965-9776)','','ghilo@yahoo.com','2014-09-02 08:01:30','admin','2014-09-02 08:01:30','admin','Manager'),(70,1,'CUSTOMERS',6,'solicitor','holmes','','camella','(909) 098-7675','(+63905) (965-9776)','','camella@gmail.com','2014-09-02 08:03:55','admin','2014-09-02 08:03:55','admin','Employee'),(71,1,'CUSTOMERS',14,'solicitor','lsdjfak','','joasd','(909) 098-0990','(+63905) (989-9876)','','jokw@yahoo.com','2014-09-02 08:12:20','admin','2014-09-02 08:12:20','admin','manage'),(72,1,'CUSTOMERS',15,'solicitor','no result','','still','(909) 098-7675','(+63905) (989-9776)','','akosidelio@yahoo.com.ph','2014-09-02 08:16:33','admin','2014-09-02 08:16:33','admin','Manager'),(73,1,'CUSTOMERS',11,'shipper','No','Result','Still','(909) 098-0987','(+63905) (989-9876)','','noresult@yahoo.com','2014-09-02 08:20:51','admin','2014-09-02 08:20:51','admin','Manager'),(74,1,'CUSTOMERS',10,'shipper','What Happened','Here','Dunno','(909) 098-0987','(+63905) (989-9776)','','dunno@yahoo.com','2014-09-02 08:24:47','admin','2014-09-02 08:24:47','admin','Employee'),(75,1,'CUSTOMERS',16,'shipper','cant','Go','Still','(909) 098-0990','(+63905) (989-9876)','','Stillgo@yahoo.com','2014-09-02 08:29:21','admin','2014-09-02 08:29:21','admin','Manager'),(76,1,'CUSTOMERS',16,'solicitor','Husi','','Gou','(909) 098-0990','(+63905) (989-9776)','','ahsidgjkha@yahoo.com','2014-09-02 09:23:04','admin','2014-09-02 09:23:05','admin','Manager'),(77,1,'CUSTOMERS',16,'billTo','three','','IN','(909) 098-0990','(+63905) (989-9776)','','ahsidgjkha@yahoo.com','2014-09-02 09:36:03','admin','2014-09-02 09:36:03','admin','Manager'),(78,1,'CUSTOMERS',16,'solicitor','john','','ghoul','(909) 098-0990','(+63905) (989-9776)','','ahsidgjkha@yahoo.com','2014-09-02 09:40:43','admin','2014-09-02 09:40:43','admin','Employee'),(79,1,'CUSTOMERS',16,'solicitor','motor','','loko','(909) 098-0990','(+63905) (989-9826)','','loko@yahoo.com','2014-09-02 09:49:07','admin','2014-09-02 09:49:07','admin','Employee'),(81,1,'CUSTOMERS',1,'shipper','Test','','Subject','(909) 098-0990','(+63905) (989-9776)','','test@yahoo.com','2014-09-03 09:25:00','admin','2014-09-03 09:25:00','admin','Manager'),(82,1,'CUSTOMERS',1,'shipper','Subject','','Test','(909) 098-0990','(+63905) (989-9776)','','test@yahoo.com','2014-09-03 09:27:13','admin','2014-09-03 09:27:13','admin','Employee'),(83,1,'CUSTOMERS',1,'','First','','Last','(909) 098-0990','(+63905) (989-9776)','','last@yahoo.com','2014-09-03 09:28:00','admin','2014-09-03 09:28:00','admin','Manager'),(84,1,'CUSTOMERS',16,'','Last ','','Very ','(909) 098-0987','(+63905) (965-9776)','','Later@yahoo.com','2014-09-03 09:30:59','admin','2014-09-03 09:30:59','admin','Manager'),(85,1,'CUSTOMERS',16,'shipper','cant','','camella','(909) 098-0990','(+63905) (989-9876)','','fattso@yahoo.com','2014-09-03 09:49:58','admin','2014-09-03 09:49:58','admin','Manager'),(86,1,'CUSTOMERS',1,'shipper','Maita Angelica','','Manipol','(909) 098-0990','(+63905) (989-9876)','','maita@yahoo.com','2014-09-04 01:59:41','admin','2014-09-04 01:59:42','admin','Employee'),(87,1,'CUSTOMERS',16,'shipper','Bin laden','','Osama','(909) 098-0987','(+63905) (989-9876)','','ajhdija@yahoo.com','2014-09-04 02:03:27','admin','2014-09-04 02:03:27','admin','Employee'),(88,1,'CUSTOMERS',6,'shipper','Go','','Let It','(909) 098-0990','(+63905) (989-9776)','','let@yahoo.com','2014-09-04 02:35:46','admin','2014-09-04 02:35:46','admin','Employee'),(89,1,'CUSTOMERS',1,'shipper','Kennedy','','JOhn','(909) 098-0987','(+63905) (965-9776)','','sjahkag@yahoo.com','2014-09-04 02:52:57','admin','2014-09-04 02:52:57','admin','Manager'),(90,1,'CUSTOMERS',2,'CONSIGNEE','Vanessa','','Prado','(898) 989-9999','(+63990) (789-9800)','','vanessa@yahoo.com','2014-09-04 09:30:04','admin','2014-09-04 09:30:06','admin',NULL),(91,1,'CUSTOMERS',1,'CONSIGNEE','delio','dominguez','Prado','(898) 989-9999','(+63990) (789-9800)','','akosidelio@yahoo.com','2014-09-04 09:33:37','admin','2014-09-04 09:33:37','admin',NULL),(92,1,'CUSTOMERS',16,'CONSIGNEE','Vanessa','','Rillon','(898) 989-9999','(+63990) (789-9800)','','vanessa@yahoo.com','2014-09-04 09:35:14','admin','2014-09-04 09:35:14','admin',NULL),(93,1,'CUSTOMERS',17,'shipper','alajhda','','Wattso','(909) 098-0990','(+63905) (965-9776)','','akosidelio@yahoo.com.ph','2014-09-09 06:36:02','admin','2014-09-09 06:36:02','admin','haha'),(94,1,'CUSTOMERS',17,'shipper','hsadkjakjha','','camella','(909) 098-0990','(+63905) (989-9776)','','akosidelio@yahoo.com.ph','2014-09-09 06:52:22','admin','2014-09-09 06:52:22','admin','hah'),(95,1,'CUSTOMERS',17,'CONSIGNEE','hahahahahah','','ababdasmdba','(898) 989-9999','(+63990) (789-9800)','','akosidelio@yahoo.com','2014-09-09 06:58:25','admin','2014-09-09 06:58:25','admin',NULL),(96,1,'VENDOR',31,'shipper','Howard','','Prado','(987) 786-5765','(+63906)(721-7335)','(777) 777-7777','vanessa_rillon@yahoo.com','2014-09-11 04:57:51','admin','2014-09-11 05:14:26','admin','Employee'),(97,1,'CUSTOMERS',16,'CONSIGNEE','Vanessa','Edora','Prado','(324) 567-8976','(+63465)(667-6767)','','vanessa@yahoo.com','2014-09-25 07:48:44','admin','2014-09-25 07:48:44','admin',NULL),(98,1,'CUSTOMERS',2,'shipper','doe','','john','(123) 132-1313','(+63123)(123-1231)','','johnpelquingua@gmail.com','2014-10-23 02:57:50','admin','2014-10-23 02:57:51','admin','Dev'),(99,1,'CUSTOMERS',2,'shipper','me','','mary','(123) 131-3321','(+63123)(131-2312)','(123) 132-13','mary@gmail.com','2014-10-23 03:04:11','admin','2014-10-23 03:04:11','admin','Dev'),(100,1,'CUSTOMERS',2,'shipper','mee','','mee','(123) 131-2313','(+63123)(213-1232)','','jhon@gmailc.om','2014-10-23 03:04:32','admin','2014-10-23 03:04:32','admin','as'),(101,1,'CUSTOMERS',10,'shipper','nkbk','ybk','kb','(234) 444-4444','(+63234)(324-2424)','() -b','ybk@d.com','2014-11-04 06:45:46','admin','2014-11-04 06:45:46','admin','trfcy'),(102,1,'CUSTOMERS',10,'shipper','sdf','d','sdf','(222) 222-2222','(+63222)(222-2222)','','asdsad@hgfh.com','2014-11-04 06:48:18','admin','2014-11-04 06:48:18','admin','sdfdsf'),(103,1,'CUSTOMERS',41,'CONSIGNEE','Clarence','Columna','Victoria','(132) 131-2321','(+63909)(344-0940)','','clarence.victoria@novaliches.sti.edu','2014-11-06 09:16:08','admin','2014-11-06 09:16:08','admin',NULL),(104,1,'CONTACTS',103,'C_CONTACT','Clarence','','VictoriaAAAA','(123) 213-2333','(+63123)(213-2132)','','asd@y.com','2014-11-06 09:16:43','admin','2014-11-06 09:16:43','admin','DEV');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `container`
--

DROP TABLE IF EXISTS `container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `container` (
  `containerId` int(11) NOT NULL AUTO_INCREMENT,
  `eirNumber` varchar(45) DEFAULT NULL,
  `eirType` varchar(45) DEFAULT NULL,
  `sealNumber` varchar(45) DEFAULT NULL,
  `containerNumber` varchar(45) DEFAULT NULL,
  `containerSize` varchar(45) DEFAULT NULL,
  `containerType` varchar(45) DEFAULT NULL,
  `dateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `shipping` varchar(45) DEFAULT NULL,
  `trucking` varchar(45) DEFAULT NULL,
  `plateNumber` varchar(45) DEFAULT NULL,
  `vanNumber` varchar(45) DEFAULT NULL,
  `driver` varchar(45) DEFAULT NULL,
  `vanLocation` varchar(45) DEFAULT NULL,
  `orderNumber` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `vanTo` varchar(45) DEFAULT NULL,
  `vanFrom` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `createdTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(45) DEFAULT NULL,
  `modifiedTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ladenEmpty` varchar(45) DEFAULT NULL,
  `containerStatus` varchar(45) DEFAULT NULL,
  `bookingNum` varchar(45) DEFAULT NULL,
  `forkliftOperator` varchar(45) DEFAULT NULL,
  `operationsDept` varchar(45) DEFAULT NULL,
  `receiptNumber` varchar(45) DEFAULT NULL,
  `portCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`containerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `container`
--

LOCK TABLES `container` WRITE;
/*!40000 ALTER TABLE `container` DISABLE KEYS */;
INSERT INTO `container` VALUES (1,'1','2','123','ABC123','10 FOOTER','FINAL','2014-11-13 03:11:50','ABC','ZXC','ABC123','ABC123','Juan Dela Cruz','MNL','ABC','FRAGILE','MNL','MNL','admin','2014-11-13 03:11:50','admin','2014-11-13 03:11:50','LADEN','CONSOLIDATED',NULL,NULL,NULL,NULL,NULL),(2,'123','1','123',NULL,NULL,NULL,NULL,'123123','123','123','123','123','123',NULL,'123123','123','123123',NULL,NULL,NULL,NULL,'123',NULL,'123','123','123','123',NULL);
/*!40000 ALTER TABLE `container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeritems`
--

DROP TABLE IF EXISTS `customeritems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customeritems` (
  `customerItemsId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  `itemCode` varchar(10) NOT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `srp` float DEFAULT NULL,
  `criticalQuality` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  PRIMARY KEY (`customerItemsId`),
  KEY `clientId` (`clientId`),
  KEY `customerId` (`customerId`),
  KEY `itemCode` (`itemCode`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeritems`
--

LOCK TABLES `customeritems` WRITE;
/*!40000 ALTER TABLE `customeritems` DISABLE KEYS */;
INSERT INTO `customeritems` VALUES (0,1,4,'PS3','DEFG',34,10,34,4,34,10,'Test Note','Sample Description','2014-07-24 11:31:20','admin','2014-07-24 11:31:20','admin'),(2,2,2,'Cigarettes','DEFG',2,2,2,2,2,2,'Test Note','Sample Description','2014-07-24 11:31:20','admin','2014-07-24 11:31:20','admin'),(3,1,1,'Soft Drinks','DEF',10,10,10,10,NULL,450000,'Sample Note','Sample Description','2014-06-24 05:20:11','admin','2014-09-11 05:07:33','admin'),(4,1,1,'Canned Goods','ABCD',10,10,10,10,10,10,'Sample Note','Sample Description','2014-06-24 05:24:13','admin','2014-08-14 00:00:45','admin'),(5,1,1,'Food','ABCD',10,10,10,10,10,10,'Test Note','Sample Description','2014-07-02 02:23:29','admin','2014-08-14 00:00:46','admin'),(6,1,1,'Car','ABCD',10,10,10,10,10,10,'Test Note','Sample Description','2014-07-02 00:00:00','admin','2014-08-14 00:00:46','admin'),(7,1,1,'Appliances','ABCD',34,4,34,4,34,34,'Test Note','Sample Description','2014-07-24 11:47:43','admin','2014-08-14 00:00:47','admin'),(8,1,1,'Lampshade','ABCD',34,4,34,4,34,34,'Test Note','Sample Description','2014-07-24 11:48:24','admin','2014-08-14 00:00:48','admin'),(9,1,11,'item try','ASD',12,12,12,12,12,34,'sdfd','dsfh','2014-08-15 13:50:50','admin','2014-08-15 05:50:54','admin'),(14,1,1,'Chips','CHP',10.2,15.7,5.9,100,NULL,90,'sample','sample','2014-08-28 01:52:39','admin','2014-09-03 03:53:52','admin'),(15,1,1,'wowow','POU',454,454,5454,5454,5454,4545,'sjkdgfksjf','as,agdsa','2014-08-27 16:00:00','admin','2014-08-28 02:11:50','admin'),(16,1,1,'wdasda','DDD',5,90,23.55,87,NULL,87,'sdfgdsfg','fgdsfgds','2014-09-03 03:39:50','admin','2014-09-03 03:39:51','admin'),(17,1,1,'Bone ahaha','BNE',5,0.5,0.2,100.99,NULL,90.5,'and for evrybody','Bone for you','2014-09-03 05:32:59','admin','2014-09-03 05:33:14','admin'),(18,1,1,'Car wash','ABC',10,10,10,10,NULL,10,'Test Note','Sample Description','2014-07-01 16:00:00','admin','2014-09-04 01:09:56','admin'),(19,1,1,'Hand Bag','HBG',0.09,0.5,0.2,1500,NULL,900,'Very wow','such Bag','2014-09-04 01:12:20','admin','2014-09-04 01:12:20','admin'),(20,1,1,'Sugpo','SUG',15,20,30,600000,NULL,120000,'Hipon','Big ','2014-09-09 05:07:30','admin','2014-09-09 05:07:30','admin'),(21,1,24,'Tshirt','THS',2,2,2,500,NULL,250,'Soft <3','Round-neck Tshirt','2014-09-16 03:48:31','admin','2014-09-16 03:48:32','admin'),(25,1,35,'Awtsu','BEL',87878,87878,87878,87878,NULL,87878,'hsjjoagsdjkagskaskhj','ashteru spon','2014-09-17 03:40:46','admin','2014-09-17 03:41:25','admin'),(26,1,39,'Bone Stacks','BNS',10,10,10,250,NULL,9,'Stacking!','Bones Bones Bones','2014-09-18 03:14:04','admin','2014-09-18 03:14:05','admin'),(27,1,17,'EEE','EEE',123,123,123,123,NULL,123,'123','123','2014-10-15 03:13:31','admin','2014-10-15 03:13:31','admin'),(28,1,16,'asdf','ASD',123,123,123,123,NULL,123,'asd','asdf','2014-10-17 02:03:38','admin','2014-10-17 02:03:38','admin'),(29,1,2,'Cocaine','COC',100,100,100,20000000,NULL,2000,'','','2014-10-23 03:16:20','admin','2014-10-23 03:16:20','admin'),(30,1,41,'Tobacco','TOB',1,1,1,4,NULL,1,'This is Tobacco','This is Tobacco','2014-10-29 04:32:39','admin','2014-10-29 04:32:39','admin');
/*!40000 ALTER TABLE `customeritems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerrates`
--

DROP TABLE IF EXISTS `customerrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerrates` (
  `customerRateId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `origin` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `rateType` varchar(10) DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  PRIMARY KEY (`customerRateId`),
  KEY `clientId` (`clientId`),
  KEY `customerId` (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerrates`
--

LOCK TABLES `customerrates` WRITE;
/*!40000 ALTER TABLE `customerrates` DISABLE KEYS */;
INSERT INTO `customerrates` VALUES (1,1,4,'Bulacan','Manila',800.75,'','2014-06-24 11:57:33','admin','2014-06-24 11:57:33','admin'),(2,1,4,'Bulacan','Manila',800.75,'','2014-06-24 11:58:24','admin','2014-06-24 11:58:24','admin'),(3,1,4,'123@@','123@@',89,'','2014-06-24 12:00:28','admin','2014-06-24 12:00:28','admin'),(4,1,4,'sdf','sdf',80,'','2014-07-04 11:06:21','1','2014-07-04 11:06:21','1'),(5,1,4,'sdfxx','sdfxx',80,'','2014-07-04 11:06:21','1','2014-07-07 10:22:18','admin'),(6,1,1,'MANILA','DAVAO',2,'','2014-08-27 16:00:00','admin','2014-08-29 01:52:11','admin'),(7,1,1,'MANILA','BACOLOD',200,'','2014-08-28 09:45:17','admin','2014-08-28 09:45:18','admin'),(8,1,1,'MANILA','BACOLOD',400,'','2014-08-28 10:01:41','admin','2014-08-28 10:01:41','admin'),(9,1,1,'MANILA','BACOLOD',2323,'','2014-09-16 02:34:39','admin','2014-09-16 02:34:39','admin');
/*!40000 ALTER TABLE `customerrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `customerCode` varchar(10) NOT NULL,
  `customerName` varchar(50) DEFAULT NULL,
  `customerType` varchar(100) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dti` varchar(30) DEFAULT NULL,
  `mayorsPermit` varchar(30) DEFAULT NULL,
  `aaf` varchar(30) DEFAULT NULL,
  `signatureCard` varchar(30) DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  PRIMARY KEY (`customerId`),
  UNIQUE KEY `customerCode` (`customerCode`),
  KEY `clientId` (`clientId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,1,'JMX','Brian Ramirez','C','jmx.com.ph.a','(123) 454-3','(+63123)(334-3344)','(123) 344-4444','jmxpsx@yahoo.com','0','0','0','0','2014-06-11 08:43:43','sales','2014-09-09 03:47:34','admin'),(2,1,'JBC','Jimmy Batuhan','B','jimmy.com','(352) 359-2','(+63495)(027-9205','(312) 312-3123','jimmybatuhan@gmail.com','0','0','0','0','2014-06-13 03:36:48','sales','2014-09-09 03:47:58','admin'),(3,1,'PJC','Paul J. Gordon','B','testing.com','(711) 111-1','(+63495)(027-9205','(312) 312-3123','testn@gmail.com','0','0','0','0','2014-06-24 02:23:31','sales','2014-09-09 03:48:28','admin'),(4,1,'SDG','Susie D. Gaffney','A','www.try.com','(711) 111-1','(+63099)(912-3456)','(312) 312-3123','a@yahoo.com','0','0','08788666776','07778787866846456','2014-06-17 03:06:28','sales','2014-09-16 02:03:21','admin'),(6,1,'VFB','Vernon F. Briese','A','belinda.com','123123','123123','31231231231','12312@gmail.com','0','0','0','0','2014-06-20 03:22:30','sales','2014-08-13 17:52:15','sales'),(8,1,'GCH','Gilda C. Harvey','A','company.com','7111111','09991234567','09991234567','a@yahoo.com','0','0','0','0','2014-06-24 02:38:22','sales','2014-08-13 17:52:14','sales'),(9,1,'JCB','James C. Bingham','A','adadasda.com','7111111','09991234567','31231231231','adadasd@asd.com','0','0','0','0','2014-07-03 02:48:08','sales','2014-08-13 17:52:13','sales'),(10,1,'GLV','George L. Veith','B','customer.test.com','2345621','09991234567','3232323','customer@test.com','0','0','0','0','2014-07-24 14:44:09','sales','2014-08-13 17:52:20','sales'),(11,1,'JRN','Jeannie R. Nguyen','A','test.com','1123131','12313123131','13131312313','test@gmail.com','1','0','0','0','2014-08-13 02:14:37','admin','2014-08-13 17:52:21','admin'),(13,1,'MMM','MMM','A','','1234567','23456786432','','YEAH@YAHOO.COM','0','1','0','0','2014-08-26 06:57:40','admin','2014-08-26 06:57:42','admin'),(14,1,'HHH','MMM','A','ww.ahs.com','(426) 657-2999','(+63906) (721-7335)','','akosidelio@yahoo.com','0','1','0','0','2014-08-28 05:08:48','admin','2014-08-28 05:08:48','admin'),(15,1,'POP','Solutions Resource','A','www.any.com','(426) 657-2999','(+63906) (721-7335)','','akosidelio@yahoo.com','0','1','0','0','2014-08-28 05:19:30','admin','2014-08-28 05:19:30','admin'),(16,1,'MSI','MSI-ECS','C','','(426) 657-2999','(+63906) (721-7335)','','msi@msi.com','0','0','1','0','2014-09-01 08:15:44','admin','2014-09-01 08:15:44','admin'),(17,1,'MVT','Movers Trucking','A','','(427) 890-9776','(+63906)(721-7335)','(721) 546-6799','Movers@yahoo.com','0','0','0','0','2014-09-09 03:40:13','admin','2014-09-09 03:40:13','admin'),(18,1,'GLB','Globe Telecom','A','','(989) 898-9898','(+63989)(898-9898)','(654) 576-4676','globetelecom@globe.com','87878787','87-878787','7777887','878787878','2014-09-12 08:55:00','admin','2014-09-12 08:55:01','admin'),(24,1,'UNQ','Uniqlo','A','www.uniqlo.om','(298) 273-2782','(+63832)(837-8273)','','uniqlo@google.com','323232','','','','2014-09-16 03:16:49','admin','2014-09-16 03:16:49','admin'),(25,1,'PEN','Penshoppe','A','www.penshoppe.com','(878) 878-7878','(+63556)(565-6565)','(878) 978-6876','penshoppe@yahoo.com','78978798','','','','2014-09-16 03:57:48','admin','2014-09-16 03:57:48','admin'),(32,1,'AWK','Artwork','A','','(986) 758-7658','(+63875)(875-8787)','(876) 666-6767','akosidelio@yahoo.com','769686','','','','2014-09-16 06:00:14','admin','2014-09-16 06:00:15','admin'),(35,1,'ern','Ernest','A','','(767) 676-7766','(+63876)(886-6867)','(686) 868-8787','akosidelio@yahoo.com','767676','','','','2014-09-16 07:38:20','admin','2014-09-16 07:38:21','admin'),(38,1,'jhh','dumyy','A','','(989) 898-9899','(+63989)(898-9898)','(989) 898-9898','akosidelio@yahoo.com','','','','','2014-09-17 09:50:19','admin','2014-09-17 09:50:19','admin'),(39,1,'hjh','huuhuhu','A','','(657) 757-6567','(+63575)(765-7657)','(675) 757-6576','akosidelio@yahoo.com','','','','','2014-09-17 09:57:15','admin','2014-09-17 09:57:15','admin'),(40,1,'hgo','hugo','A','','(232) 323-2323','(+63231)(232-3232)','(232) 323-2323','akosidelio@yahoo.com','','','','','2014-09-22 02:23:42','admin','2014-09-22 02:23:43','admin'),(41,1,'hnt','Hunter Inc.','PREMIUM A/B','','(989) 898-9898','(+63090)(909-0909)','(090) 909-0909','akosipj@yahoo.com','','','','','2014-09-22 02:36:39','admin','2014-09-22 02:36:39','admin');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `documentId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `documentName` varchar(50) NOT NULL,
  `referenceId` int(11) NOT NULL,
  `referenceTable` varchar(50) NOT NULL,
  `orderNumber` varchar(10) NOT NULL,
  `createdDate` date NOT NULL,
  `documentStatus` varchar(45) DEFAULT NULL,
  `documentProcessed` int(11) DEFAULT NULL,
  `referenceNumber` varchar(45) DEFAULT NULL,
  `outboundStage` int(11) DEFAULT NULL,
  `inboundStage` int(11) DEFAULT NULL,
  `finalOutboundStage` int(11) DEFAULT NULL,
  `finalInboundStage` int(11) DEFAULT NULL,
  `archiveStage` int(11) DEFAULT NULL,
  `billingStage` int(11) DEFAULT NULL,
  `inboundReturned` datetime DEFAULT CURRENT_TIMESTAMP,
  `finalOutboundSent` datetime DEFAULT CURRENT_TIMESTAMP,
  `finalInboundReturned` datetime DEFAULT CURRENT_TIMESTAMP,
  `finalOutboundLbc` varchar(15) DEFAULT NULL,
  `finalInboundReceivedBy` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `documentComments` varchar(100) DEFAULT NULL,
  `vendorCode` varchar(45) DEFAULT NULL,
  `orderItemId` int(11) DEFAULT NULL,
  PRIMARY KEY (`documentId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,1,'BOOKING REQUEST FORM',39,'ORDERS','MSI-0003','2014-10-13','PENDING',0,'MSI-0003',NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(10,1,'PROFORMA BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-16','FROM OUTBOUND',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(11,1,'HOUSE BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-16','FROM OUTBOUND',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(12,1,'BOOKING REQUEST FORM',41,'ORDERS','MSI-0005','2014-10-17','PENDING',0,'MSI-0005',NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(13,1,'PROFORMA BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-21','PENDING',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(14,1,'HOUSE BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-21','PENDING',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(15,1,'PROFORMA BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-21','PENDING',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(16,1,'PROFORMA BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-21','PENDING',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-23 09:34:55','2014-10-23 09:34:55','2014-10-23 09:34:55',NULL,NULL,NULL,NULL,NULL,NULL),(17,1,'BOOKING REQUEST FORM',42,'ORDERS','JBC-0000','2014-10-23','FOR PRINTING',0,'JBC-0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,1,'BOOKING REQUEST FORM',43,'ORDERS','JBC-0001','2014-10-23','FOR PRINTING',0,'JBC-0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,1,'HOUSE WAYBILL DESTINATION',43,'ORDERS','JBC-0001','2014-10-23','FOR PRINTING',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ATG',NULL),(20,1,'HOUSE WAYBILL DESTINATION',43,'ORDERS','JBC-0001','2014-10-23','FOR PRINTING',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JT',NULL),(21,1,'PROFORMA BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-23','INPUT #',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SRI-003',NULL),(22,1,'HOUSE BILL OF LADING',40,'ORDERS','MSI-0004','2014-10-23','FOR PRINTING',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SRI-003',NULL),(23,1,'BOOKING REQUEST FORM',44,'ORDERS','MSI-0006','2014-10-29','FOR PRINTING',0,'MSI-0006',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL),(24,1,'PROFORMA BILL OF LADING',44,'ORDERS','MSI-0006','2014-10-29','INPUT REFERENCE NUMBER',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,'BOOKING REQUEST FORM',45,'ORDERS','MSI-0007','2014-10-29','FOR PRINTING',0,'MSI-0007',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL),(26,1,'BOOKING REQUEST FORM',46,'ORDERS','MSI-0008','2014-10-29','FOR PRINTING',0,'MSI-0008',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL),(31,1,'BOOKING REQUEST FORM',47,'ORDERS','MSI-0009','2014-10-29','FOR PRINTING',0,'MSI-0009',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL),(32,1,'PROFORMA BILL OF LADING',47,'ORDERS','MSI-0009','2014-10-29','INPUT REFERENCE NUMBER',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,1,'HOUSE WAYBILL ORIGIN',47,'ORDERS','MSI-0009','2014-10-29','FOR PRINTING',0,'MSI-0009',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38),(34,1,'HOUSE WAYBILL DESTINATION',47,'ORDERS','MSI-0009','2014-10-29','FOR PRINTING',0,'MSI-0009',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38),(41,1,'HOUSE WAYBILL DESTINATION',45,'ORDERS','MSI-0007','2014-11-06','FOR PRINTING',0,'45',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'58',NULL),(42,1,'HOUSE WAYBILL ORIGIN',45,'ORDERS','MSI-0007','2014-11-06','FOR PRINTING',0,'45',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JT',NULL),(44,1,'PROFORMA BILL OF LADING',45,'ORDERS','MSI-0007','2014-11-07','INPUT REFERENCE NUMBER',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45',NULL),(45,1,'HOUSE BILL OF LADING',45,'ORDERS','MSI-0007','2014-11-07','FOR PRINTING',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ERNEST',NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `driverId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `vendorId` int(10) NOT NULL,
  `driverCode` varchar(10) DEFAULT NULL,
  `licenseNumber` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `dateHired` date DEFAULT NULL,
  `dateTerminated` date DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) DEFAULT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`driverId`),
  KEY `clientId` (`clientId`),
  KEY `vendorId` (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (11,1,58,'012','1234567890','Admin','Admin','Test','Mr','ACTIVE',NULL,NULL,'2014-06-24 04:19:33',NULL,'2014-06-24 04:19:33',NULL),(14,1,31,'1334','1234asdf','Try','','Try','title','ACTIVE','2014-08-20',NULL,'2014-08-20 16:28:37','admin','2014-08-20 16:29:37','admin'),(15,1,31,'878','R56-74-7474465','Manuel','','Besana','Mr.','ACTIVE','2014-09-11',NULL,'2014-09-11 05:55:46','admin','2014-09-17 06:57:07','admin'),(18,1,54,'78687','897-98-7989879','kjhasdka','','kol','Mr.','ACTIVE','2014-09-17',NULL,'2014-09-17 06:39:46','admin','2014-09-17 06:57:08','admin'),(19,1,80,NULL,'a75-76-5677767','Aldrick','','Montemayor','Mr.','ACTIVE','2014-09-24',NULL,'2014-09-24 06:56:10','admin','2014-09-24 08:40:04','admin'),(25,1,80,NULL,'a89-00','adasdas','','adasdasd','assds','ACTIVE','2014-09-24',NULL,'2014-09-24 08:53:03','admin','2014-09-24 08:59:21','admin'),(26,1,77,NULL,'A12-31-2312312','Clarence','','Victoria','Dev','ACTIVE','2014-10-24',NULL,'2014-10-24 05:50:57','admin','2014-10-24 05:50:58','admin'),(27,1,79,NULL,'A13-21-2312312','ACV','','ACV','DEV','ACTIVE','2014-10-24',NULL,'2014-10-24 07:51:45','admin','2014-10-24 07:51:45','admin'),(28,1,96,NULL,'A13-12-3123213','BB','','CC','DEV','ACTIVE','2014-10-27',NULL,'2014-10-27 03:31:20','admin','2014-10-27 03:31:20','admin'),(29,1,97,NULL,'A13-12-3131231','VBN','','VBN','DeV','ACTIVE','2014-10-27',NULL,'2014-10-27 03:50:00','admin','2014-10-27 03:50:00','admin'),(30,1,100,NULL,'A13-12-3123123','KLL','','SKLLL','DEV','ACTIVE','2014-10-27',NULL,'2014-10-27 05:41:04','admin','2014-10-27 05:41:04','admin'),(31,1,105,NULL,'A12-31-2311231','AVC','','Victoria','DEV','ACTIVE','2014-10-28',NULL,'2014-10-28 05:35:41','admin','2014-10-28 05:35:41','admin'),(32,1,106,NULL,'A13-32-3233333','Clarence','','Victoria','DEV','ACTIVE','2014-10-28',NULL,'2014-10-28 05:41:11','admin','2014-10-28 05:41:11','admin');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `groupId` bigint(20) NOT NULL AUTO_INCREMENT,
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `CLIENTID` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `UK_oy92ak6u4rmbq75jgb14npht7` (`name`),
  KEY `FK_macyd219b60yqhb7oo4u2ihg0` (`CLIENTID`),
  CONSTRAINT `FK_macyd219b60yqhb7oo4u2ihg0` FOREIGN KEY (`CLIENTID`) REFERENCES `clients` (`clientId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,NULL,'',NULL,'Operations',1,'OPS'),(2,NULL,'',NULL,'Admin',1,'ADM'),(3,'2014-06-04 05:17:14',NULL,'2014-06-04 05:17:14','CRD',1,'CRD'),(4,'2014-06-04 05:17:15',NULL,'2014-06-04 05:17:15','Planning',1,'PLN'),(5,NULL,'',NULL,'Customer',1,'CUS'),(6,NULL,'Solution Resoource Incorporated',NULL,'Solutions Resource',1,'SRI'),(17,NULL,'Apex',NULL,'Apex',1,'APX');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_user` (
  `groupUserId` bigint(20) NOT NULL AUTO_INCREMENT,
  `clientId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES (13,1,2,17),(14,1,2,9),(15,1,5,10),(16,1,5,11),(17,1,5,14),(20,1,1,13),(21,1,1,12);
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notificationId` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `notificationType` varchar(45) NOT NULL,
  `referenceId` int(11) DEFAULT NULL,
  `referenceTable` varchar(45) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`notificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'USER','Email',1,'User',1),(2,'USER','Email',1,'User',1),(3,'USER','Email',1,'User',1),(4,'USER','Email',1,'User',1),(5,'USER','Email',1,'User',1),(6,'USER','Email',1,'User',1),(7,'USER','Email',1,'User',1),(8,'USER','Email',1,'User',1),(9,'USER','Email',1,'User',1),(10,'USER','Email',1,'User',1),(11,'USER','Email',1,'User',1),(12,'USER','Email',1,'User',1),(13,'USER','Email',1,'User',1),(14,'USER','Email',1,'User',1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitems` (
  `orderItemId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `classification` varchar(10) DEFAULT NULL,
  `commodity` varchar(100) DEFAULT NULL,
  `declaredValue` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `createdTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  `rate` float NOT NULL,
  `nameSize` varchar(45) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `vesselScheduleId` varchar(25) DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `finalDeliveryDate` date DEFAULT NULL,
  `driverOrigin` varchar(45) DEFAULT NULL,
  `driverDestination` varchar(45) DEFAULT NULL,
  `truckOrigin` varchar(45) DEFAULT NULL,
  `truckDestination` varchar(45) DEFAULT NULL,
  `finalPickupDate` date DEFAULT NULL,
  `vendorDestination` varchar(45) DEFAULT NULL,
  `vendorOrigin` varchar(45) DEFAULT NULL,
  `vendorSea` varchar(45) DEFAULT NULL,
  `containerId` int(11) DEFAULT NULL,
  `serviceRequirement` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `clientId` (`clientId`,`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,1,3,1,'1','1',1,1,'1','2014-07-08 15:46:02','admin','2014-08-07 11:36:37','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,3,1,'1','1',1,1,'1','2014-07-09 09:57:38','admin','2014-08-07 11:36:37','',0,'','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,1,1,'2','2',2,1,'2','2014-08-06 10:37:27','admin','2014-08-07 11:36:37','',0,'','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,1,1,2,'A','REGULAR',10000,35,'Heavy','2014-08-14 07:37:07','admin','2014-08-15 07:24:07','admin',34,'40 FOOTER','APPROVED',NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,1,1,7,'F','Sample Description',10,12,'Light','2014-08-14 08:20:31','admin','2014-08-15 07:24:07','admin',56,'4','PENDING',NULL,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,1,34,1,'fsgd','6',67,8,'hghfh',NULL,'admin','2014-09-29 04:06:08','admin',9,'20 FOOTER','ON GOING','0',NULL,'2014-09-30','','Admin Test','','Code Test','2014-10-02','JT','','',NULL,NULL),(17,1,25,2,'','',100,7,'',NULL,'admin',NULL,'admin',76,'20 FOOTER','TRUCK AT PORT FOR TURNOVER OF LADEN','22',NULL,'2014-10-25','Admin Test','Admin Test','Code Test','Code Test','2014-10-10','JT','JT','SRR',NULL,NULL),(18,1,24,4,'','',2,3,'',NULL,'admin',NULL,'admin',2,'20 FOOTER','ON GOING','22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SRR',NULL,NULL),(19,1,26,2,'','',4,3,'',NULL,'admin','2014-09-29 03:49:09','admin',3,'20 FOOTER','ON GOING','0',NULL,NULL,'Admin Test',NULL,'Code Test',NULL,'2014-10-02',NULL,'JT','',NULL,NULL),(20,1,27,2,'','',NULL,NULL,'',NULL,'admin',NULL,'admin',23,'20 FOOTER','PLANNING 3','22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SRR',NULL,NULL),(21,1,28,5,'','',900,88,'',NULL,'admin','2014-11-17 06:37:55','admin',78,'20 FOOTER','ON GOING','6742',14,NULL,'Admin Test',NULL,'Code Test',NULL,'2014-10-02',NULL,'JT','SRI-003',NULL,'LESS CONTAINER LOAD'),(22,1,39,1,NULL,'',123123,123123,'','2014-10-13 07:37:53','admin','2014-10-13 07:37:53','admin',123123,'10 FOOTER','PLANNING 1',NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,1,34,2,NULL,'Bone for you',181,123,'','2014-10-15 03:12:14','admin','2014-10-15 03:12:14','admin',123,'Bone ahaha','PLANNING 3',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,1,27,2,NULL,'123',246,123,'123','2014-10-15 03:13:47','admin','2014-10-15 03:13:47','admin',123,'EEE','PLANNING 1',NULL,3721730,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,28,2,NULL,'123',246,123,'123','2014-10-15 03:14:42','admin','2014-11-13 04:58:31','admin',123,'EEE','PLANNING 2',NULL,3721730,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LESS CONTAINER LOAD'),(26,1,40,1,'','',123,123,'',NULL,'admin','2014-10-24 08:50:59','admin',123,'20 FOOTER','ON GOING','6742',NULL,'2014-10-31','Admin Test','Admin Test','Code Test','Code Test','2014-10-31','58','58','SRI-003',NULL,NULL),(27,1,40,2,'','',123,123,'',NULL,'admin','2014-10-21 06:09:54','admin',123,'10 FOOTER','ON GOING','022',NULL,'2014-10-31','Admin Test','Admin Test','Code Test','Code Test','2014-10-31','58','58','45',NULL,NULL),(28,1,41,1,NULL,'asdf',123,123,'asdf','2014-10-17 02:03:49','admin','2014-10-21 06:14:40','admin',123,'asdf','ON GOING',NULL,1860870,NULL,'Admin Test',NULL,'Code Test',NULL,'2014-10-30',NULL,'58',NULL,NULL,NULL),(29,1,41,2,NULL,'asdf',246,123,'123','2014-10-17 02:04:25','admin','2014-10-21 06:14:40','admin',123,'asdf','PLANNING 2',NULL,3721730,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,1,43,10,'','',20000,100,'',NULL,'admin','2014-11-05 03:48:06','admin',1000,'Cocaine','ON GOING','',NULL,NULL,'Aldrick Montemayor',NULL,'8767866676',NULL,'2014-10-23','ATG','','',NULL,NULL),(31,1,43,240,'','Sample Description',480,1211,'',NULL,'admin','2014-11-05 03:48:06','admin',200,'Cigarettes','ON GOING','',NULL,NULL,'Admin Test',NULL,'Code Test',NULL,'2014-10-24','JT','','',NULL,NULL),(32,1,44,1,NULL,'asdf',123,45,'','2014-10-29 02:51:04','admin','2014-10-29 02:53:54','admin',5000,'asdf','PLANNING 1','',1860870,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL),(33,1,44,3,NULL,'asdf',369,50,'','2014-10-29 02:51:21','admin','2014-10-29 02:53:54','admin',4000,'asdf','PLANNING 1','',5582600,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL),(34,1,46,1,NULL,'asdf',123,500,'','2014-10-29 03:09:11','admin','2014-10-29 03:09:11','admin',5000,'asdf','PLANNING 1',NULL,1860870,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,1,46,2,NULL,'asdf',246,50,'','2014-10-29 03:09:31','admin','2014-10-29 03:09:31','admin',5000,'asdf','PLANNING 1',NULL,3721730,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,1,45,1,'','asdf',123,50,'',NULL,'admin','2014-11-07 03:01:32','admin',5000,'asdf','ON GOING','asd',NULL,'2014-11-27','Admin Test','Admin Test','1111111111','1111111111','2014-10-29','JT','JT','45',NULL,NULL),(37,1,45,1,'','asdf',123,50,'',NULL,'admin','2014-11-07 03:01:32','admin',5000,'asdf','ON GOING','asd',NULL,'2014-11-27','Admin Test','Admin Test','Code Test','1111111111','2014-10-30','JT','JT','45',NULL,NULL),(38,1,47,1,'','asdf',123,86868,'',NULL,'admin',NULL,'admin',68.68,'asdf','ON GOING','022',NULL,'2014-10-30','Admin Test','Admin Test','1111111111','1111111111','2014-10-30','JT','JT','SRR',NULL,NULL);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `orderNumber` varchar(10) NOT NULL,
  `serviceType` varchar(25) NOT NULL,
  `serviceMode` varchar(25) NOT NULL,
  `notificationType` varchar(30) DEFAULT NULL,
  `orderDate` date NOT NULL,
  `paymentMode` varchar(25) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `orderStatus` varchar(25) NOT NULL,
  `vendorCode` varchar(10) DEFAULT NULL,
  `truckCode` varchar(10) DEFAULT NULL,
  `trailerCode` varchar(10) DEFAULT NULL,
  `driverCode` varchar(10) DEFAULT NULL,
  `vesselNumber` varchar(50) DEFAULT NULL,
  `shipperCode` varchar(10) DEFAULT NULL,
  `shipperAddressId` int(11) DEFAULT NULL,
  `shipperContactId` int(11) NOT NULL,
  `consigneeCode` varchar(10) DEFAULT NULL,
  `consigneeAddressId` int(11) DEFAULT NULL,
  `consigneeContactId` int(11) DEFAULT NULL,
  `accountRep` varchar(25) DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  `pickupDate` date DEFAULT NULL,
  `originationPort` varchar(25) DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `destinationPort` varchar(25) DEFAULT NULL,
  `rates` float DEFAULT NULL,
  `serviceRequirement` varchar(25) DEFAULT NULL,
  `deliveryTime` time DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `consigneeContactPersonId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `orderNumber` (`orderNumber`),
  KEY `clientId` (`clientId`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (24,1,'JMX-0014','SHIPPING','PIER TO PIER','PHONE','2014-09-05','FREIGHT PREPAID','test','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,54,11,NULL,78,64,'admin','2014-09-05 06:05:59','admin','2014-09-29 02:13:46','admin','2014-09-24','MANILA','2014-09-30','CAGAYAN',99.99,'FULL CARGO LOAD',NULL,NULL,NULL),(25,1,'JMX-0015','SHIPPING AND TRUCKING','DOOR TO DOOR','MOBILE','2014-09-05','FREIGHT PREPAID','','ON GOING',NULL,NULL,NULL,NULL,NULL,NULL,54,11,NULL,84,91,'admin','2014-09-05 03:24:45','admin','2014-10-01 05:57:59','admin','2014-09-29','MANILA','2014-09-29','BACOLOD',99.99,'FULL CARGO LOAD',NULL,NULL,NULL),(26,1,'MSI-0000','SHIPPING AND TRUCKING','DOOR TO PIER','MOBILE','2014-09-05','FREIGHT PREPAID','','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,85,92,'admin','2014-09-05 07:13:27','admin','2014-09-29 02:32:05','admin','2014-09-10','CAGAYAN','2014-09-18','CEBU',99.99,'FULL CARGO LOAD',NULL,NULL,NULL),(27,1,'MVT-0000','SHIPPING AND TRUCKING','DOOR TO DOOR','SMS','2014-11-04','ACCOUNT DESTINATION','','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,87,93,NULL,90,95,'admin','2014-11-04 06:42:43','admin','2014-11-04 07:40:46','admin','2014-09-10',NULL,'2014-09-11',NULL,0,'LCU',NULL,17,NULL),(28,1,'MVT-0001','TRUCKING','PICKUP','PHONE','2014-10-15','FREIGHT PREPAID','','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,87,93,NULL,90,95,'admin','2014-10-15 03:14:32','admin','2014-11-13 03:13:10','admin','2014-09-10','MANILA','2014-09-11','BACOLOD',99.99,'LESS CONTAINER LOAD',NULL,17,NULL),(34,1,'JMX-0016','TRUCKING','DELIVERY','SMS','2014-10-15','FREIGHT COLLECT','','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,54,11,NULL,78,64,'admin','2014-10-15 03:11:52','admin','2014-10-15 03:11:52','admin','2014-09-25','COTABATO','2014-09-25','BACOLOD',99.99,'FULL TRUCK LOAD',NULL,1,NULL),(35,1,'JMX-0017','TRUCKING','PICKUP','SMS','2014-09-25','FREIGHT COLLECT','','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,54,11,NULL,NULL,64,'admin','2014-09-25 03:11:35','admin','2014-09-25 03:11:35','admin','2014-09-26','OZAMIS','2014-09-26','PALAWAN',99.99,'FULL TRUCK LOAD',NULL,1,NULL),(36,1,'JMX-0018','SHIPPING AND TRUCKING','DOOR TO DOOR','SMS','2014-09-25','FREIGHT PREPAID','','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,54,11,NULL,78,64,'admin','2014-09-25 07:14:27','admin','2014-09-25 07:14:27','admin','2014-09-25','BUTUAN','2014-09-25','DAVAO',99.99,'FULL CARGO LOAD',NULL,1,NULL),(37,1,'MSI-0001','SHIPPING AND TRUCKING','DOOR TO DOOR','PHONE','2014-09-25','FREIGHT PREPAID','','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-09-25 07:50:11','admin','2014-09-25 07:50:11','admin','2014-09-25','ZAMBOANGA','2014-09-25','TACLOBAN',99.99,'FULL CARGO LOAD',NULL,16,NULL),(38,1,'MSI-0002','SHIPPING AND TRUCKING','DOOR TO PIER','E-MAIL','2014-09-30','FREIGHT PREPAID','','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,NULL,92,'admin','2014-09-30 06:53:13','admin','2014-09-30 06:53:13','admin','2014-10-16','BUTUAN','2014-10-31','BACOLOD',99.99,'FULL CARGO LOAD',NULL,16,NULL),(39,1,'MSI-0003','SHIPPING AND TRUCKING','DOOR TO DOOR','MOBILE','2014-10-13','FREIGHT PREPAID','asdf','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-10-13 07:37:35','admin','2014-10-13 07:37:35','admin','2014-10-22','BACOLOD','2014-10-29','COTABATO',99.99,'FULL CARGO LOAD',NULL,16,NULL),(40,1,'MSI-0004','SHIPPING AND TRUCKING','DOOR TO DOOR','MOBILE','2014-10-15','FREIGHT PREPAID','asdf','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-10-15 07:40:05','admin','2014-10-15 07:40:05','admin','2014-10-22','TACLOBAN','2014-10-30','ZAMBOANGA',99.99,'FULL CARGO LOAD',NULL,16,NULL),(41,1,'MSI-0005','TRUCKING','PICKUP','MOBILE','2014-10-23','FREIGHT PREPAID','asdf','ON GOING',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-10-23 03:22:51','admin','2014-10-23 03:22:51','admin','2014-10-23',NULL,'2014-10-23',NULL,99.99,'FULL TRUCK LOAD',NULL,16,NULL),(42,1,'JBC-0000','TRUCKING','PICKUP','SMS','2014-10-23','FREIGHT PREPAID','','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,81,98,NULL,NULL,90,'admin','2014-10-23 03:02:58','admin','2014-10-23 03:02:58','admin','2014-10-24',NULL,NULL,NULL,99.99,'FULL TRUCK LOAD',NULL,2,NULL),(43,1,'JBC-0001','TRUCKING','DELIVERY',NULL,'2014-10-23','FREIGHT PREPAID','','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,81,98,NULL,NULL,90,'admin','2014-10-23 03:10:59','admin','2014-10-27 03:50:43','admin','2014-10-24',NULL,NULL,NULL,99.99,'FULL TRUCK LOAD',NULL,2,NULL),(44,1,'MSI-0006','SHIPPING AND TRUCKING','DOOR TO DOOR','PHONE','2014-11-04','FREIGHT PREPAID','','APPROVED',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-11-04 06:37:19','admin','2014-11-04 07:40:46','admin','2014-10-29',NULL,'2014-11-01',NULL,0,'RCU',NULL,16,NULL),(45,1,'MSI-0007','SHIPPING AND TRUCKING','DOOR TO DOOR','PHONE','2014-11-07','FREIGHT PREPAID','','ON GOING',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-11-07 06:14:58','admin','2014-11-07 06:14:58','admin','2014-10-29','MANILA','2014-11-01','BACOLOD',0,'FULL CARGO LOAD',NULL,16,NULL),(46,1,'MSI-0008','SHIPPING AND TRUCKING','DOOR TO DOOR','PHONE','2014-10-29','FREIGHT PREPAID','','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-10-29 03:07:43','admin','2014-10-29 03:07:43','admin','2014-10-29','MANILA','2014-11-01','BACOLOD',99.99,'FULL CARGO LOAD',NULL,16,NULL),(47,1,'MSI-0009','SHIPPING AND TRUCKING','DOOR TO DOOR','FAX','2014-10-29','FREIGHT PREPAID','','ON GOING',NULL,NULL,NULL,NULL,NULL,NULL,82,65,NULL,102,92,'admin','2014-10-29 03:55:51','admin','2014-10-29 03:55:51','admin','2014-10-30','PALAWAN','2014-10-30','TAGBILARAN',99.99,'FULL CARGO LOAD',NULL,16,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatuslogs`
--

DROP TABLE IF EXISTS `orderstatuslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatuslogs` (
  `statusId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `orderItemId` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `createdBy` varchar(25) NOT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatuslogs`
--

LOCK TABLES `orderstatuslogs` WRITE;
/*!40000 ALTER TABLE `orderstatuslogs` DISABLE KEYS */;
INSERT INTO `orderstatuslogs` VALUES (1,1,3,'APPROVED','admin','2014-08-13 02:36:36'),(2,1,3,'PENDING','admin','2014-08-13 02:36:49'),(3,1,15,'APPROVED','admin','2014-08-15 15:29:36'),(4,1,12,'APPROVED','admin','2014-08-19 11:18:36'),(5,1,3,'PENDING','admin','2014-08-29 08:36:02'),(6,1,3,'PENDING','admin','2014-08-29 08:39:31'),(7,1,3,'PENDING','admin','2014-08-29 08:40:18'),(8,1,3,'PENDING','admin','2014-08-29 08:40:42'),(9,1,3,'PENDING','admin','2014-08-29 08:43:05'),(10,40,17,'TRUCK AT WAREHOUSE FOR PICK UP','admin','2014-10-16 02:18:22'),(11,40,17,'TRUCK FOR WITHDRAWAL OF EMPTY VAN','admin','2014-10-16 02:18:44'),(12,25,17,'TRUCK AT WAREHOUSE FOR PICK UP','admin','2014-10-16 02:25:18'),(13,25,17,'TRUCK AT PORT FOR TURNOVER OF LADEN','admin','2014-10-16 02:29:00');
/*!40000 ALTER TABLE `orderstatuslogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameters`
--

DROP TABLE IF EXISTS `parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parameters` (
  `parameterId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `referenceTable` varchar(50) NOT NULL,
  `referenceColumn` varchar(50) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `createdTimestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`parameterId`),
  KEY `clientId` (`clientId`),
  KEY `referenceTable` (`referenceTable`),
  KEY `referenceColumn` (`referenceColumn`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameters`
--

LOCK TABLES `parameters` WRITE;
/*!40000 ALTER TABLE `parameters` DISABLE KEYS */;
INSERT INTO `parameters` VALUES (1,1,'USER','STATUS','ACTIVE','Active','Active',NULL,'2014-05-10 00:19:28','admin','2014-05-10 00:20:50','admin'),(2,1,'USER','STATUS','INACTIVE','Inactive','Inactive',NULL,'2014-05-10 01:30:44','admin','2014-05-10 01:30:44','admin'),(3,1,'USER','USER_TYPE','ADMIN','Admin','Admin',NULL,'2014-05-10 01:30:44','admin','2014-09-26 13:55:21','admin'),(10,1,'USER','USER_TYPE','CUSTOMER RELATIONS DEPARTMENT','Customer Relations Department','Customer Relations Department',NULL,'2014-05-10 01:30:44','admin','2014-05-13 06:20:33','admin'),(11,1,'USER','USER_TYPE','FREIGHT OPERATIONS OFFICER','Freight Operations Officer','Freight Operations Officer',NULL,'2014-05-10 01:30:44','admin','2014-05-13 06:20:33','admin'),(12,1,'USER','USER_TYPE','FREIGHT OPERATIONS SPECIALIST','Freight Operations Specialist','Freight Operations Specialist',NULL,'2014-05-10 01:30:44','admin','2014-05-13 06:20:33','admin'),(13,1,'USER','USER_TYPE','FREIGHT OPERATIONS MANAGER','Freight Operations Manager','Freight Operations Manager',NULL,'2014-05-10 01:30:44','admin','2014-05-13 06:20:33','admin'),(14,1,'USER','USER_TYPE','FREIGHT DOCUMENTS SPECIALIST','Freight Documents Specialist','Freight Documents Specialist',NULL,'2014-05-10 01:30:44','admin','2014-05-13 06:20:33','admin'),(15,1,'USER','USER_TYPE','INLAND FREIGHT OFFICER','Inland Freight Officer','Inland Freight Officer',NULL,'2014-05-10 01:30:44','admin','2014-05-13 06:20:33','admin'),(16,1,'ORDER','MODE OF SERVICE','DOOR TO DOOR','Door to Door','Door to Door',NULL,'2014-06-06 06:51:35','admin','2014-06-06 06:51:35',NULL),(17,1,'ORDER','MODE OF SERVICE','DOOR TO PIER','Door to Pier','Door to Pier',NULL,'2014-06-06 06:51:36','admin','2014-06-06 06:51:36',NULL),(18,1,'ORDER','MODE OF SERVICE','PIER TO DOOR','Pier to Door','Pier to Door',NULL,'2014-06-06 06:51:36','admin','2014-06-06 06:51:36',NULL),(19,1,'ORDER','MODE OF SERVICE','PIER TO PIER','Pier to Pier','Pier to Pier',NULL,'2014-06-06 06:51:36','admin','2014-06-06 06:51:36',NULL),(20,1,'ORDER','MODE OF PAYMENT','FREIGHT PREPAID','Freight Prepaid','Freight Prepaid',NULL,'2014-06-06 06:51:36','admin','2014-06-06 06:51:36',NULL),(21,1,'ORDER','MODE OF PAYMENT','FREIGHT COLLECT','Freight Collect','Freight Collect',NULL,'2014-06-06 06:51:36','admin','2014-06-06 06:51:36',NULL),(22,1,'ORDER','MODE OF PAYMENT','ACCOUNT ORIGIN','Account Origin','Account Origin',NULL,'2014-06-06 06:51:36','admin','2014-06-06 06:51:36',NULL),(23,1,'ORDER','MODE OF PAYMENT','ACCOUNT DESTINATION','Account Destination','Account Destination',NULL,'2014-06-06 06:51:37','admin','2014-06-06 06:51:37',NULL),(24,1,'ORDER','NOTIFY BY','PHONE','Phone','Phone',NULL,'2014-06-06 06:51:37','admin','2014-06-06 06:51:37',NULL),(25,1,'ORDER','NOTIFY BY','MOBILE','Mobile','Mobile',NULL,'2014-06-06 06:51:37','admin','2014-06-06 06:51:37',NULL),(26,1,'ORDER','NOTIFY BY','SMS','SMS','SMS',NULL,'2014-06-06 06:51:37','admin','2014-06-06 06:51:37',NULL),(27,1,'ORDER','NOTIFY BY','FAX','Fax','Fax',NULL,'2014-06-06 06:51:37','admin','2014-06-06 06:51:37',NULL),(28,1,'ORDER','SERVICE REQUIREMENT','FULL CONTAINER LOAD','Full Container Load','Full Container Load',NULL,'2014-06-06 06:51:37','admin','2014-10-21 03:17:02',NULL),(29,1,'ORDER','SERVICE REQUIREMENT','LESS CONTAINER LOAD','Less Container Load','Less Container Load',NULL,'2014-06-06 06:51:38','admin','2014-10-21 03:17:03',NULL),(30,1,'ORDER','SERVICE REQUIREMENT','LOOSE CARGO LOAD','Loose Cargo Load','Loose Cargo Load',NULL,'2014-06-06 06:51:38','admin','2014-11-03 02:36:30',NULL),(31,1,'ORDER','SERVICE REQUIREMENT','ROLLING CARGO LOAD','Rolling Cargo Load','Rolling Cargo Load',NULL,'2014-06-06 06:51:38','admin','2014-11-03 02:35:38',NULL),(32,1,'ORDER','FREIGHT TYPE','SHIPPING AND TRUCKING','Shipping and Trucking','Shipping and Trucking',NULL,'2014-06-10 07:14:38','admin','2014-08-13 17:41:38',NULL),(33,1,'ORDER','FREIGHT TYPE','TRUCKING','Trucking','Trucking',NULL,'2014-06-10 07:14:38','admin','2014-08-13 17:41:39',NULL),(35,1,'ADDRESS','ADDRESS_TYPE','Main','Main','Main','','2014-06-02 15:23:21','admin','2014-09-24 17:06:31','admin'),(36,1,'ADDRESS','ADDRESS_TYPE','Branch1','Branch 1','Branch 1','','2014-06-02 15:23:21','admin','2014-09-24 17:06:31','admin'),(37,1,'ADDRESS','ADDRESS_TYPE','Branch2','Branch 2','Branch 2','','2014-06-02 15:23:21','admin','2014-09-24 17:06:31','admin'),(38,1,'ADDRESS','ADDRESS_TYPE','Branch3','Branch 3','Branch 3','','2014-06-02 15:23:21','admin','2014-09-24 17:06:31','admin'),(39,1,'ADDRESS','ADDRESS_TYPE','Branch4','Branch 4','Branch 4','','2014-06-02 15:23:21','admin','2014-09-24 17:06:31','admin'),(40,1,'ADDRESS','ADDRESS_TYPE','Branch5','Branch 5','Branch 5','','2014-06-02 15:23:21','admin','2014-09-24 17:06:32','admin'),(41,1,'ADDRESS','ADDRESS_TYPE','Annex1','Annex 1','Annex 1','','2014-06-02 15:23:21','admin','2014-09-24 17:07:02','admin'),(42,1,'ADDRESS','ADDRESS_TYPE','Annex2','Annex 2','Annex 2','','2014-06-02 15:23:21','admin','2014-09-24 17:07:02','admin'),(43,1,'ADDRESS','ADDRESS_TYPE','Annex3','Annex 3','Annex 3','','2014-06-02 15:23:21','admin','2014-09-24 17:07:02','admin'),(44,1,'ADDRESS','ADDRESS_TYPE','Annex4','Annex 4','Annex 4','','2014-06-02 15:23:21','admin','2014-09-24 17:07:03','admin'),(45,1,'ADDRESS','ADDRESS_TYPE','Annex5','Annex 5','Annex 5','','2014-06-02 15:23:21','admin','2014-09-24 17:07:03','admin'),(47,1,'VENDORS','VENDOR_TYPE','TRUCKING','Trucking','Trucking','','2014-05-28 15:04:35','admin','2014-08-21 04:27:47','admin'),(48,1,'VENDORS','VENDOR_TYPE','SHIPPING','Shipping','Shipping','','2014-05-28 15:04:35','admin','2014-08-21 04:27:48','admin'),(49,1,'TRUCKS','TRUCK_TYPE','TRACTOR HEAD','Tractor Head','Tractor Head','','2014-05-29 17:48:36','admin','2014-05-29 17:48:36','admin'),(50,1,'TRUCKS','TRUCK_TYPE','CLOSED VAN','Closed Van','Closed Van','','2014-05-29 17:48:36','admin','2014-05-29 17:48:36','admin'),(51,1,'VENDORS','VENDOR_SEARCH','COMPANY NAME','Company Name','Company Name','','2014-05-30 11:30:24','admin','2014-08-21 04:27:48','admin'),(52,1,'VENDORS','VENDOR_SEARCH','COMPANY CODE','Company Code','Company Code','','2014-05-30 11:30:24','admin','2014-08-21 04:27:48','admin'),(53,1,'VENDORS','VENDOR_SEARCH','VENDOR TYPE','Vendor Type','Vendor Type','','2014-05-30 11:30:24','admin','2014-08-21 04:27:48','admin'),(54,1,'VENDORS','VENDOR_SEARCHA','EMAIL ADDRESS','Email Address','Email Address','','2014-05-30 11:30:24','admin','2014-08-21 04:27:48','admin'),(55,1,'VENDORS','VENDOR_SEARCHA','CONTACT NUMBER','Contact Number','Contact Number','','2014-05-30 11:30:24','admin','2014-08-21 04:27:49','admin'),(56,1,'VENDORS','VENDOR_SEARCH','CLASS','Class','Class','','2014-05-30 11:30:24','admin','2014-08-21 04:27:49','admin'),(57,1,'VENDORS','VENDOR_SEARCHA','CITY','City','City','','2014-05-30 11:30:24','admin','2014-08-21 04:27:49','admin'),(58,1,'VENDORS','VENDOR_CLASS','PREMIUM','Premium','Premium','','2014-06-03 10:58:41','admin','2014-08-21 04:27:49','admin'),(59,1,'VENDORS','VENDOR_CLASS','CLASS A','Class A','Class A','','2014-06-03 10:58:41','admin','2014-08-21 04:27:50','admin'),(60,1,'VENDORS','VENDOR_CLASS','CLASS B','Class B','Class B','','2014-06-03 10:58:41','admin','2014-08-21 04:27:50','admin'),(61,1,'VENDORS','VENDOR_CLASS','CLASS C','Class C','Class C','','2014-06-03 10:58:41','admin','2014-08-21 04:27:50','admin'),(62,1,'VENDORS','VENDOR_CLASS','ECONOMY','Economy','Economy','','2014-06-03 10:58:41','admin','2014-08-21 04:27:50','admin'),(63,1,'VENDORS','VENDOR_SEARCH','STATUS','Status','Status',NULL,'2014-06-11 05:58:18','admin','2014-08-21 04:27:50',NULL),(64,1,'CUSTOMERS','CUSTOMER_TYPE','PREMIUM A','Premium A','Customer Type','','2014-05-30 11:30:24','admin','2014-10-31 04:48:23','admin'),(65,1,'CUSTOMERS','CUSTOMER_TYPE','REGULAR SPECIAL','Regular Special','Customer Type','','2014-05-30 11:30:24','admin','2014-09-22 10:31:49','admin'),(66,1,'CUSTOMERS','CUSTOMER_TYPE','ECONOMY A','Economy A','Customer Type','','2014-05-30 11:30:24','admin','2014-10-31 04:46:14','admin'),(67,1,'CUSTOMERS','CUSTOMER_TYPEs','D','D','Customer Type','','2014-05-30 11:30:24','admin','2014-09-22 10:31:50','admin'),(68,1,'CUSTOMERS','CUSTOMER_SEARCH','customerName','Customer Name','Customer Name',NULL,'2014-06-13 07:28:13','admin','2014-08-21 04:27:47',NULL),(69,1,'CUSTOMERS','CUSTOMER_SEARCH','customerType','Customer Type','Customer Type',NULL,'2014-06-13 07:29:05','admin','2014-08-21 04:27:47',NULL),(70,1,'CUSTOMERS','CUSTOMER_SEARCH','customerId','Customer Id','Customer Id',NULL,'2014-06-13 07:30:45','admin','2014-08-21 04:27:47',NULL),(71,1,'CUSTOMERS','CUSTOMER_SEARCH','email','Email','Email',NULL,'2014-06-13 07:31:23','admin','2014-08-21 04:27:47',NULL),(72,1,'CONTACTS','CONTACT_TYPE','shipper','Shipper','Shipper',NULL,'2014-06-13 07:31:23','admin','2014-08-21 04:27:55',NULL),(73,1,'CONTACTS','CONTACT_TYPE','billTo','Bill To','Bill To',NULL,'2014-06-13 07:31:23','admin','2014-08-21 04:27:55',NULL),(74,1,'CONTACTS','CONTACT_TYPE','solicitor','Solicitor','Solicitor',NULL,'2014-06-13 07:31:23','admin','2014-08-21 04:27:55',NULL),(75,1,'CONTACTS','CONTACT_TYPE_A','consignee','Consignee','Consignee',NULL,'2014-06-13 07:31:23','admin','2014-10-21 01:45:18',NULL),(76,1,'USER','SEARCH_CRITERIA','USER TYPE','User Type','User Type',NULL,'2014-06-02 23:02:44','Juno','2014-06-04 22:43:52',NULL),(77,1,'USER','SEARCH_CRITERIA ','NAME','Name','Name',NULL,'2014-06-02 23:02:44','Juno','2014-06-04 22:43:52',NULL),(78,1,'USER','SEARCH_CRITERIA','USER NAME','User Name','User Name',NULL,'2014-06-02 23:02:44','Juno','2014-06-04 22:43:52',NULL),(79,1,'ORDER','ORDER_SEARCH','BOOKING NUMBER','Booking Number','Booking Number',NULL,'2014-07-03 04:06:08','admin','2014-07-03 04:06:08',NULL),(80,1,'ORDER','ORDER_SEARCH','SHIPPER NAME','SHIPPER NAME','Shipper Name',NULL,'2014-07-03 04:06:09','admin','2014-07-03 04:06:09',NULL),(81,1,'ORDER','ORDER_SEARCH','CONSIGNEE NAME','CONSIGNEE NAME','Consignee Name',NULL,'2014-07-03 04:06:10','admin','2014-07-03 04:06:10',NULL),(82,1,'ORDER','ORDER_SEARCH','SERVICE MODE','SERVICE MODE','Service Mode',NULL,'2014-07-03 04:06:11','admin','2014-07-03 04:06:11',NULL),(83,1,'ORDER','ORDER_SEARCH','SERVICE TYPE','SERVICE TYPE','Service Type',NULL,'2014-07-03 04:06:11','admin','2014-07-03 04:06:11',NULL),(84,1,'ORDER','ORDER_SEARCH','STATUS','STATUS','Status',NULL,'2014-07-03 04:06:12','admin','2014-07-03 04:06:12',NULL),(85,1,'VESSELSCHEDULES','VESSEL_SCHEDULE_SEARCH','ESTIMATED DATE OF DEPARTURE','Estimated Date of Departure','Estimated Date of Departure','','2014-07-23 11:39:12','admin','2014-08-21 04:27:54',''),(86,1,'VESSELSCHEDULES','VESSEL_SCHEDULE_SEARCH','PIER ORIGIN','Pier Origin','Pier Origin','','2014-07-23 11:39:12','admin','2014-08-21 04:27:54',''),(87,1,'VESSELSCHEDULES','VESSEL_SCHEDULE_SEARCH','VOYAGE NUMBER','Voyage Number','Voyage Number','','2014-07-23 11:39:12','admin','2014-08-21 04:27:54',''),(88,1,'VESSELSCHEDULES','VESSEL_SCHEDULE_SEARCH','ESTIMATED DATE OF ARRIVAL','Estimated Date of Arrival','Estimated Date of Arrival','','2014-07-23 11:39:12','admin','2014-08-21 04:27:54',''),(89,1,'VESSELSCHEDULES','VESSEL_SCHEDULE_SEARCH','PIER DESTINATION','Pier Destination','Pier Destination','','2014-07-23 11:39:12','admin','2014-08-21 04:27:55',''),(90,1,'ORDER','PORTS','MANILA','MANILA','Manila','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(91,1,'ORDER','PORTS','BACOLOD','BACOLOD','Bacolod','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(92,1,'ORDER','PORTS','BUTUAN','BUTUAN','Butuan','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(93,1,'ORDER','PORTS','CAGAYAN','CAGAYAN','Cagayan','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(94,1,'ORDER','PORTS','CEBU','CEBU','Cebu','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(95,1,'ORDER','PORTS','COTABATO','COTABATO','Cotabato','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(96,1,'ORDER','PORTS','DAVAO','DAVAO','Davao','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(97,1,'ORDER','PORTS','DUMAGUETE','DUMAGUETE','Dumaguete','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(98,1,'ORDER','PORTS','GEN. SANTOS','GEN. SANTOS','Gen. Santos','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(99,1,'ORDER','PORTS','ILIGAN','ILIGAN','Iligan','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(100,1,'ORDER','PORTS','ILOILO','ILOILO','Iloilo','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(101,1,'ORDER','PORTS','OZAMIS','OZAMIS','Ozamis','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(102,1,'ORDER','PORTS','PALAWAN','PALAWAN','Palawan','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(103,1,'ORDER','PORTS','ROXAS','ROXAS','Roxas','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(104,1,'ORDER','PORTS','TAGBILARAN','TAGBILARAN','Tagbilaran','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(105,1,'ORDER','PORTS','TACLOBAN','TACLOBAN','Tacloban','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(106,1,'ORDER','PORTS','ZAMBOANGA','ZAMBOANGA','Zamboanga','','2014-06-10 15:14:38','admin','2014-06-10 15:14:38',''),(108,1,'ORDER','ORDER_STATUS','DISAPPROVED','Disapproved','Disapproved','','2014-08-05 15:13:42','admin','2014-08-05 15:13:42',''),(109,1,'ORDER','ORDER_STATUS','CANCELLED','Cancelled','Cancelled','','2014-08-05 15:13:42','admin','2014-08-05 15:13:42',''),(110,1,'ORDER','ORDER_STATUS','PENDING','Pending','Pending','','2014-08-05 15:13:42','admin','2014-08-05 15:13:42',''),(197,1,'ORDER','ORDER_STATUS','APPROVED','Approved','Approved','','2014-08-05 15:13:42','admin','2014-08-05 15:13:42',''),(198,1,'USER','USER_TYPE','CUSTOMER','Inland Freight Officer','Inland Freight Officer',NULL,'2014-08-08 05:20:55','admin','2014-08-08 05:20:55','admin'),(199,1,'ORDER','CONTAINER_SIZE','10 FOOTER','10 Footer','10 Footer',NULL,'2014-06-10 15:14:38','admin','2014-07-25 19:49:51','admin'),(200,1,'ORDER','CONTAINER_SIZE','20 FOOTER','20 Footer','20 Footer',NULL,'2014-06-10 15:14:38','admin','2014-07-25 19:49:51','admin'),(201,1,'ORDER','CONTAINER_SIZE','40 STD FOOTER','40 Standard Footer','40 Standard Footer',NULL,'2014-06-10 15:14:38','admin','2014-10-21 03:58:42','admin'),(202,1,'ORDER','FREIGHT TYPE','SHIPPING','Shipping','Shipping',NULL,'2014-06-10 15:14:38','admin','2014-06-10 15:14:38','admin'),(203,1,'CUSTOMERRATES','RATES_TYPE','A','A','A',NULL,'2014-06-10 15:14:38','admin','2014-08-21 04:27:53','admin'),(204,1,'CUSTOMERRATES','RATES_TYPE','B','B','B',NULL,'2014-06-10 15:14:38','admin','2014-08-21 04:27:53','admin'),(205,1,'CUSTOMERRATES','RATES_TYPE','C','C','C',NULL,'2014-06-10 15:14:38','admin','2014-08-21 04:27:53','admin'),(206,1,'CUSTOMERRATES','RATES_TYPE','D','D','D',NULL,'2014-06-10 15:14:38','admin','2014-08-21 04:27:54','admin'),(207,1,'VESSEL_TYPE','VESSEL_TYPE','RO/PAX','RO/PAX','RO/PAX',NULL,'2014-06-10 15:14:38','admin','2014-06-10 15:14:38','admin'),(208,1,'VESSEL_TYPE','VESSEL_TYPE','GENERAL CARGO','GENERAL CARGO','GENERAL CARGO',NULL,'2014-06-10 15:14:38','admin','2014-06-10 15:14:38','admin'),(209,1,'VESSEL_TYPE','VESSEL_TYPE','TANKER','TANKER','TANKER',NULL,'2014-06-10 15:14:38','admin','2014-06-10 15:14:38','admin'),(210,1,'VESSEL_TYPE','VESSEL_TYPE','DRY BULK CARRIERS','DRY BULK CARRIERS','DRY BULK CARRIERS',NULL,'2014-06-10 15:14:38','admin','2014-06-10 15:14:38','admin'),(211,1,'VESSEL_TYPE','VESSEL_TYPE','MULTI-PURPOSE VESSEL','MULTI-PURPOSE VESSEL','MULTI-PURPOSE VESSEL',NULL,'2014-06-10 15:14:38','admin','2014-06-10 15:14:38','admin'),(212,1,'VESSEL_TYPE','VESSEL_TYPE','REEFER VESSEL','REEFER VESSEL','REEFER VESSEL',NULL,'2014-06-10 15:14:38','admin','2014-06-10 15:14:38','admin'),(213,1,'ORDER','MODE OF SERVICE','PICKUP','Pickup','Pickup',NULL,'2014-09-24 11:29:19','admin','2014-09-24 11:30:42','admin'),(214,1,'ORDER','MODE OF SERVICE','DELIVERY','Delivery','Delivery',NULL,'2014-09-24 11:29:19','admin','2014-09-24 11:30:43','admin'),(215,1,'ORDER','MODE OF SERVICE','INTER-WAREHOUSE','Inter-Warehouse','Inter-Warehouse',NULL,'2014-09-24 11:29:19','admin','2014-09-24 11:30:43','admin'),(216,1,'ORDER','SERVICE REQUIREMENT','FULL TRUCK LOAD','Full Truck Load','Full Truck Load',NULL,'2014-09-24 11:29:19','admin','2014-09-24 11:30:43','admin'),(217,1,'ORDER','SERVICE REQUIREMENT','LESS TRUCK LOAD','Less Truck Load','Less Truck Load',NULL,'2014-09-24 11:29:19','admin','2014-09-24 11:30:43','admin'),(218,1,'ORDER','NOTIFY BY','E-MAIL','E-mail','E-mail',NULL,'2014-09-24 11:29:19','admin','2014-09-24 11:31:16','admin'),(219,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK AT PORT FOR TURNOVER OF LADEN','Truck at port for turnover of laden','Truck at port for turnover of laden',NULL,'2014-10-01 14:51:07','admin','2014-10-16 10:18:16','admin'),(220,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK AT WAREHOUSE FOR PICK UP','Truck at warehouse for pick-up','Truck at warehouse for pick-up',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(221,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK FOR WITHDRAWAL OF EMPTY VAN','Truck for withdrawal of empty van','Truck for withdrawal of empty van',NULL,'2014-10-01 14:51:07','admin','2014-10-01 15:40:45','admin'),(222,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK IN TRANSIT TO SHIPPER FOR PICK UP','Truck in transit to shipper for pick up','Truck in transit to shipper for pick up',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(223,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK AT PORT FOR WITHDRAWAL OF LADEN VAN','Truck at port for withdrawal of laden van','Truck at port for withdrawal of laden van',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(224,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK AT WAREHOUSE FOR DELIVERY','Truck at warehouse for delivery','Truck at warehouse for deliver',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(225,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK IN TRANSIT FOR WITHDRAWAL OF LADEN VAN','Truck in transit for withdrawal of laden van','Truck in transit for withdrawal of laden van',NULL,'2014-10-01 14:51:07','admin','2014-10-01 15:40:45','admin'),(226,1,'UPDATE_STATUS','UPDATE_STATUS','TRUCK IN TRANSIT TO CONSIGNEE FOR DELIVERY','Truck in transit to consignee for delivery','Truck in transit to consignee for delivery',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(227,1,'UPDATE_STATUS','UPDATE_STATUS','LADEN VAN AT PORT OF ORIGIN','Laden van at port of origin','Laden van at port of origin',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(228,1,'UPDATE_STATUS','UPDATE_STATUS','LADEN VAN AT PORT OF DESTINATION','Laden van at port of destination','Ladend van at port of destination',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(229,1,'UPDATE_STATUS','UPDATE_STATUS','VESSEL IS LOADING AT PORT OF ORIGIN','Vessel is loading at port of origin','Vessel is loading at port of origin',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(230,1,'UPDATE_STATUS','UPDATE_STATUS','VESSEL IS UNLOADING AT PORT OF DISCHARGE','Vessel is unloading at port of discharge','Vessel is unloading at port of discharge',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(231,1,'UPDATE_STATUS','UPDATE_STATUS','VESSEL IS IN TRANSIT TO PORT OF DISCHARGE','Vessel is in transit to port of discharge','Vessel is in transit to port of discharge',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(232,1,'UPDATE_STATUS','UPDATE_STATUS','VESSEL AT TRANSHIPMENT PORT','Vessel at transhipment port','Vessel at transhipment port',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(233,1,'UPDATE_STATUS','UPDATE_STATUS','VESSEL IS ON HOLD','Vessel is on hold','Vessel is on hold',NULL,'2014-10-01 14:51:07','admin','2014-10-01 14:51:07','admin'),(234,1,'CONTACTS','CONTACT_TYPE','TRUCKER','Trucker','Trucker',NULL,'2014-10-13 11:10:38','admin','2014-10-13 11:10:38','admin'),(235,1,'ORDER','CONTAINER_SIZE','40 HC FOOTER','40 High Capacity Footer','40 High Capacity Footer',NULL,'2014-06-10 15:14:38','admin','2014-10-21 03:58:43','admin'),(236,1,'CUSTOMERS','CUSTOMER_TYPE','PREMIUM B','Premium B','Customer Type','','2014-05-30 11:30:24','admin','2014-09-22 10:31:49','admin'),(237,1,'CUSTOMERS','CUSTOMER_TYPE','ECONOMY B','Economy B','Customer Type','','2014-05-30 11:30:24','admin','2014-09-22 10:31:49','admin'),(238,1,'CONTAINERS','CONTAINER_SEARCH','CONTAINER NUMBER','Container Number','Container Number',NULL,'2014-11-17 13:44:16','admin','2014-11-17 13:49:13','admin'),(239,1,'CONTAINERS','CONTAINER_SEARCH','SIZE','Size','Size',NULL,'2014-11-17 13:44:16','admin','2014-11-17 13:44:16','admin'),(240,1,'CONTAINERS','CONTAINER_SEARCH','STATUS','Status','Status',NULL,'2014-11-17 13:44:16','admin','2014-11-17 13:44:16','admin'),(272,1,'CONTAINERS','CONTAINER_SEARCH','PORT CODE','Port Code','Port Code',NULL,'2014-11-20 10:35:20','admin','2014-11-20 10:35:20','admin'),(273,1,'CONTAINERS','PORT_CODE','MNL','MNL','MNL',NULL,'2014-11-24 16:53:12','admin','2014-11-24 16:53:12','admin'),(274,1,'CONTAINERS','PORT_CODE','BAC','BAC','BAC',NULL,'2014-11-24 16:56:50','admin','2014-11-24 16:56:50','admin'),(275,1,'CONTAINERS','PORT_CODE','BXU','BXU','BXU',NULL,'2014-11-24 16:56:50','admin','2014-11-24 16:56:50','admin'),(276,1,'CONTAINERS','PORT_CODE','CGY','CGY','CGY',NULL,'2014-11-24 16:56:50','admin','2014-11-24 16:56:50','admin'),(277,1,'CONTAINERS','PORT_CODE','CEBU','CEBU','CEBU',NULL,'2014-11-24 16:56:50','admin','2014-11-24 16:56:50','admin'),(278,1,'CONTAINERS','PORT_CODE','CBO','CBO','CBO',NULL,'2014-11-24 16:56:50','admin','2014-11-24 16:56:50','admin'),(279,1,'CONTAINERS','PORT_CODE','DVO','DVO','DVO',NULL,'2014-11-24 17:00:33','admin','2014-11-24 17:00:33','admin'),(280,1,'CONTAINERS','PORT_CODE','DGT','DGT','DGT',NULL,'2014-11-24 17:00:33','admin','2014-11-24 17:00:33','admin'),(281,1,'CONTAINERS','PORT_CODE','DPG','DPG','DPG',NULL,'2014-11-24 17:00:33','admin','2014-11-24 17:00:33','admin'),(282,1,'CONTAINERS','PORT_CODE','GES','GES','GES',NULL,'2014-11-24 17:00:33','admin','2014-11-24 17:00:33','admin'),(283,1,'CONTAINERS','PORT_CODE','ILI','ILI','ILI',NULL,'2014-11-24 17:00:33','admin','2014-11-24 17:00:33','admin'),(284,1,'CONTAINERS','PORT_CODE','ILO','ILO','ILO',NULL,'2014-11-24 17:00:33','admin','2014-11-24 17:00:33','admin'),(285,1,'CONTAINERS','PORT_CODE','OZA','OZA','OZA',NULL,'2014-11-24 17:00:34','admin','2014-11-24 17:00:34','admin'),(286,1,'CONTAINERS','PORT_CODE','PPS','PPS','PPS',NULL,'2014-11-24 17:00:34','admin','2014-11-24 17:00:34','admin'),(287,1,'CONTAINERS','PORT_CODE','RXS','RXS','RXS',NULL,'2014-11-24 17:00:34','admin','2014-11-24 17:00:34','admin'),(288,1,'CONTAINERS','PORT_CODE','TAG','TAG','TAG',NULL,'2014-11-24 17:00:34','admin','2014-11-24 17:00:34','admin'),(289,1,'CONTAINERS','PORT_CODE','TAC','TAC','TAC',NULL,'2014-11-24 17:00:34','admin','2014-11-24 17:00:34','admin'),(290,1,'CONTAINERS','PORT_CODE','ZAM','ZAM','ZAM',NULL,'2014-11-24 17:00:34','admin','2014-11-24 17:00:34','admin');
/*!40000 ALTER TABLE `parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `permissionId` bigint(20) NOT NULL AUTO_INCREMENT,
  `clientId` bigint(20) NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `modifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`permissionId`),
  UNIQUE KEY `UK_2ojme20jpga3r4r79tdso17gi` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,1,'2014-06-01 00:00:00','Admin System','2014-06-01 00:00:00','ROLE_ADMIN'),(2,2,'2014-11-27 00:00:00','Customer','2014-11-27 00:00:00','ROLE_CUSTOMER'),(3,3,'2014-11-27 00:00:00','Customer Relations','2014-11-27 00:00:00','ROLE_CUSTOMER_RELATIONS'),(4,4,'2014-11-27 00:00:00','Inland Freight','2014-11-27 00:00:00','ROLE_INLAND_FREIGHT_OPERATIONS'),(5,5,'2014-11-27 00:00:00','Sea Freight','2014-11-27 00:00:00','ROLE_SEA_FREIGHT_OPERATIONS'),(6,6,'2014-11-27 00:00:00','Sales','2014-11-27 00:00:00','ROLE_SALES'),(7,7,'2014-11-27 00:00:00','Finance','2014-11-27 00:00:00','ROLE_FINANCE'),(8,8,'2014-11-27 00:00:00','Document Specialist','2014-11-27 00:00:00','ROLE_DOC_SPECIALIST');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user_group`
--

DROP TABLE IF EXISTS `permission_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_user_group` (
  `permissionId` bigint(20) DEFAULT NULL,
  `clientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `projectId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user_group`
--

LOCK TABLES `permission_user_group` WRITE;
/*!40000 ALTER TABLE `permission_user_group` DISABLE KEYS */;
INSERT INTO `permission_user_group` VALUES (1,1,1,NULL,17,NULL,22),(5,1,1,NULL,13,NULL,23),(4,1,1,NULL,12,NULL,24),(3,1,1,NULL,11,NULL,27),(6,1,1,NULL,14,NULL,28),(2,1,1,NULL,20,NULL,29),(7,1,1,NULL,15,NULL,30),(1,1,1,NULL,19,NULL,98),(1,1,1,NULL,9,NULL,104),(8,1,1,NULL,16,NULL,109),(1,1,1,NULL,31,NULL,110),(1,1,1,NULL,32,NULL,111),(1,1,1,NULL,39,NULL,112),(1,1,1,NULL,44,NULL,113);
/*!40000 ALTER TABLE `permission_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trailers`
--

DROP TABLE IF EXISTS `trailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trailers` (
  `trailerId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `trailerCode` varchar(10) NOT NULL,
  `trailerType` varchar(10) NOT NULL,
  `trailerLength` int(11) NOT NULL,
  `grossWeight` float NOT NULL,
  `modelName` varchar(30) NOT NULL,
  `modelYear` varchar(10) NOT NULL,
  `axle` int(11) NOT NULL,
  `vin` varchar(50) NOT NULL,
  `plateNumber` varchar(10) NOT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  PRIMARY KEY (`trailerId`),
  KEY `clientId` (`clientId`),
  KEY `vendorId` (`vendorId`),
  KEY `trailerCode` (`trailerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailers`
--

LOCK TABLES `trailers` WRITE;
/*!40000 ALTER TABLE `trailers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trucks` (
  `truckId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(10) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `truckCode` varchar(10) NOT NULL,
  `truckType` varchar(30) DEFAULT NULL,
  `plateNumber` varchar(30) DEFAULT NULL,
  `modelNumber` varchar(30) DEFAULT NULL,
  `modelYear` int(11) DEFAULT NULL,
  `engineNumber` varchar(50) DEFAULT NULL,
  `grossWeight` int(11) DEFAULT NULL,
  `createdTimestamp` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(25) DEFAULT NULL,
  `modifiedTimestamp` timestamp NULL DEFAULT NULL,
  `modifiedBy` varchar(25) DEFAULT NULL,
  `motorVehicleNumber` varchar(45) DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `netWeight` int(11) DEFAULT NULL,
  `netCapacity` int(11) DEFAULT NULL,
  `ownerName` varchar(45) DEFAULT NULL,
  `ownerAddress` varchar(45) DEFAULT NULL,
  `officialReceipt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`truckId`),
  UNIQUE KEY `truckCode` (`truckCode`),
  KEY `clientId` (`clientId`),
  KEY `vendorId` (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trucks`
--

LOCK TABLES `trucks` WRITE;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` VALUES (1,1,43,'1234','TRACTOR HEAD','ABC123','1994',1995,'123456789',80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,31,'TCT','TRACTOR HEAD','AHA-123','1994',1993,'V9',12,NULL,'','2014-09-03 03:01:28','admin','9000','2015-09-08',900,900,'peejoy','cainta','900'),(7,1,58,'Code Test','TRACTOR HEAD','XYZ123','Model Test',1980,'V6',245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,1,31,'CDE','TRACTOR HEAD','ABC-909','Silverado',1998,'V9',6,NULL,'','2014-09-01 02:14:02','admin','43242222223423423','2015-09-09',900,900,'peejoy','cainta','232323'),(12,1,31,'ILM','TRACTOR HEAD','ILM-116','1995',1995,'1234567',123,'2014-07-31 02:59:45','admin',NULL,'admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,1,31,'LOL','TRACTOR HEAD','ODR-008','Silverado',2005,'Chevrolet',200,'2014-09-03 02:54:49','admin',NULL,'admin','43242222223423423','2015-09-16',900,1000,'peejoy','cainta','1223345435'),(14,1,31,'YOU','TRACTOR HEAD','XYA-098','Yukon',1999,'GMC',900,'2014-09-03 02:56:35','admin',NULL,'admin','6757643','2014-06-16',9000,900,'Jerome','Makati','84576'),(15,1,31,'546464663','TRACTOR HEAD','AHA-123','Yukon',1993,'Toyota',900,'2014-09-11 05:28:18','admin',NULL,'admin','7657-46474647464','2014-09-11',900,900,'Van','Reyes','98798696768'),(16,1,80,'8767866676','TRACTOR HEAD','GAY-909','Silverado',1993,'GMC',900,'2014-09-18 06:30:22','admin','2014-09-18 06:35:05','admin','6767-67676767676','2014-04-15',900,900,'Obet','cainta','78687687687'),(17,1,79,'1231232131','TRACTOR HEAD','AVC-123','Truck',1231,'Toyota',123,'2014-10-24 06:50:46','admin',NULL,'admin','1312-31231231231','2014-10-31',123123,123,'Clarence','Llano','12312312'),(18,1,77,'1323123123','TRACTOR HEAD','AVC-123','Truck',1231,'Toyota',123,'2014-10-24 07:52:13','admin',NULL,'admin','1312-31231231231','2014-10-31',123123,123,'Clarence','Llano','12312312'),(19,1,96,'1231231232','TRACTOR HEAD','ABC-123','Toyota',1231,'Toyota',123,'2014-10-27 03:31:55','admin',NULL,'admin','1313-12312313123','2014-10-11',123123,123,'Clarence','Llano','12312312'),(20,1,97,'1312321321','TRACTOR HEAD','ABC-123','Truck',1231,'Toyota',123,'2014-10-27 03:50:27','admin',NULL,'admin','1312-31231231231','2014-10-30',123123,123,'Clarence','Llano','12312312'),(21,1,100,'1312312312','TRACTOR HEAD','ABC-123','Truck',1994,'Toyota',123,'2014-10-27 05:49:14','admin',NULL,'admin','1231-23123123213','2014-10-30',123123,123,'Clarence','Llano','12312312'),(22,1,105,'1312312313','TRACTOR HEAD','ABC-122','Truck',1231,'Toyota',123,'2014-10-28 05:36:35','admin',NULL,'admin','1321-31321321312','2014-10-30',123123,123,'Clarence','Llano','12312312'),(23,1,106,'1321312323','TRACTOR HEAD','ZXC-123','Truck',1994,'Toyota',123,'2014-10-28 05:41:38','admin',NULL,'admin','1231-23232132131','2014-10-30',123123,123,'Clarence','Llano','12312312'),(24,1,58,'1111111111','TRACTOR HEAD','XYZ-123','Toyota',1231,'Toyota',123,'2014-10-29 03:35:04','admin',NULL,'admin','1111-11111111111','2014-10-02',123123,123,'Clarence','Llano','12312312');
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `contactNo` varchar(20) DEFAULT NULL,
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `lastVisitDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `status` varchar(8) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `userType` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `CLIENTID` int(11) NOT NULL,
  `passwordResetToken` varchar(45) DEFAULT NULL,
  `passwordResetTime` datetime DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`),
  KEY `FK_7vi963g3tk5kkl61jy028somd` (`CLIENTID`),
  CONSTRAINT `FK_7vi963g3tk5kkl61jy028somd` FOREIGN KEY (`CLIENTID`) REFERENCES `clients` (`clientId`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'(233)333-7775',NULL,'admin@test.com','SuperAdmin','User',NULL,'2014-09-26 13:55:29','$2a$10$0BMV8kV6iE0g359gdmZrH.7aqM9AVYcNzR4pmkrH2cVDZfShIv4Y6','ACTIVE','Admin','ADMIN','adminUser',1,NULL,NULL,NULL),(11,'1234567',NULL,'customer@test.com','Customer','Relations',NULL,'2014-08-15 06:31:02','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','Customer','CUSTOMER RELATIONS DEPARTMENT','customerrelations',1,NULL,NULL,NULL),(12,'1234567',NULL,'freight@test.com','Inland','Freight',NULL,'2014-08-15 06:31:02','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','Inland Freight','INLAND FREIGHT OFFICER','inlandfreight',1,NULL,NULL,NULL),(13,'1234567',NULL,'freight@test.com','Sea','Freight',NULL,'2014-08-15 06:31:02','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','Sea Freight','REGISTERED USER','seafreight',1,NULL,NULL,NULL),(14,'12345678899',NULL,'sales@test.com','Sales','Sales',NULL,'2014-08-15 06:31:03','$2a$10$5IX66sdASDCSc3638Et2ie0iakLv7v7h0rKrPDDjt8vFq065wMani','ACTIVE','Sales','REGISTERED USER','sales',1,NULL,NULL,NULL),(15,'1234567',NULL,'finance@test.com','Finance','Finance',NULL,'2014-08-15 06:31:03','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','Finance','REGISTERED USER','finance',1,NULL,NULL,NULL),(16,'1234567',NULL,'document@test.com','Documents','Specialist',NULL,'2014-08-15 06:31:03','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','Doc Specialist','FREIGHT DOCUMENTS SPECIALIST','documentsspecialist',1,NULL,NULL,NULL),(17,'1234567',NULL,'admin@test.com','Super','User','2014-11-27 15:13:57','2014-08-15 06:28:59','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','Admin','REGISTERED USER','admin',1,NULL,NULL,NULL),(19,'09123456789',NULL,'janernest@gmail.com','Jan Ernest','Go',NULL,'2014-08-15 06:31:03','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','CEO','REGISTERED USER','janernest',1,NULL,NULL,NULL),(20,'12212121',NULL,'customer@test.com','Customer','Customer',NULL,'2014-09-26 13:31:34','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','Customer','CUSTOMER','customer',1,NULL,NULL,2),(21,'+63 917 814',NULL,'myaccount@myemail.com','Freight','Operations Manager ',NULL,'2014-08-15 06:31:04','$2a$10$W5c4n8uS3WmUJhaVwuKSmOey5jTQkdoxDHrPE5gPB1Yz0D83v4SOO','ACTIVE','MyTitle','FREIGHT OPERATIONS MANAGER','fom',1,NULL,NULL,NULL),(30,'(112) 313-1312',NULL,'clarence@gmail.com','Clarence','Victoria',NULL,NULL,'$2a$10$VjHJGPxbuF9oS4s40DGhaeqfR72m5/Oj0o1b6AOOee2X4NBf1MDAa','ACTIVE','SD','ADMIN','clarence',1,NULL,NULL,NULL),(34,'(123) 131-2313',NULL,'johnpelquingua@gmail.com','Jan','Sarmiento',NULL,NULL,'$2a$10$jgSIArs.ADSfHtHg2lfbVuVIzONe2jQHJR8oSZq82lfGnMle4IQGi','ACTIVE','DEVELOPER','ADMIN','jnsarmiento1',1,NULL,NULL,NULL),(37,'(123) 131-2131',NULL,'johnpelquingua@gmail.com','Johnpel','Quingua',NULL,NULL,'$2a$10$chcbx9N0SG4SNyxIh7m0N.O.8XD/55MJPMctfFKfvMs1VByCgpqn6','ACTIVE','DEVELOPE','ADMIN','jquingua2',1,NULL,NULL,NULL),(38,'(213) 132-1312',NULL,'johnpelquingua@gmail.com','Johnpel','Quingua',NULL,NULL,'$2a$10$HI4daPEIDdYsOGvxS1ChxukFx5y0noMxtxSwWYpWOKzLNiNjsjDMi','ACTIVE','DEVELOPER','ADMIN','jquingua3',1,NULL,NULL,NULL),(39,'(123) 123-1231',NULL,'johnpelquingua@gmail.com','Johnpel','Quingua','2014-11-25 17:45:59',NULL,'$2a$10$9S9heTyvxiNwMnQtIWMGGeLGjRbPM2E2.pQicVVXJTY855C2fC8fq','ACTIVE','DEVELOPER','ADMIN','jquingua4',1,NULL,NULL,NULL),(40,'(231) 323-1332',NULL,'johnpelquingua@gmail.com','Johnpel','Quingua',NULL,NULL,'$2a$10$aNO01z37C7qj4kbnRZ9cY.oUbmWHMlLshfEs6XGYqUq.zw0mh4yYK','ACTIVE','DEVELOPER','ADMIN','jquingua5',1,NULL,NULL,NULL),(41,'(123) 123-1312',NULL,'johnpelquingua@gmail.com','Jan','Sarmiento',NULL,NULL,'$2a$10$qy.SN3PcjqH2zYKR2LNgb.pQBOGaAC9qPIZ5HWJPTN7j/trFghj1G','ACTIVE','DEVELPER','ADMIN','jnsarmiento2',1,NULL,NULL,NULL),(42,'(123) 131-2313',NULL,'johnpelquingua@gmail.com','Johnpel','Quingua',NULL,NULL,'$2a$10$AodERXhJ48tWKNhX6/xcv.Ri7J.X.aip1/ghxE6TtZqqKcGX6FedS','ACTIVE','DEVELOPER','ADMIN','jquingua7',1,NULL,NULL,NULL),(43,'(123) 313-2313',NULL,'johnpelquingua@gmail.com','Johnpel','Quingua',NULL,NULL,'$2a$10$/zF2AFJCSAwji0l93X5r8e.eNF7PHH5udvA8d2Eq5txpPkL6Pud0a','ACTIVE','DEVELOPER','ADMIN','jquingua8',1,NULL,NULL,NULL),(44,'(132) 123-1331',NULL,'johnpelquingua@gmail.com','Johnpel','Quingua','2014-11-25 17:56:50',NULL,'$2a$10$beYh4/JrEpDdvFY5aYauJeM9J6Nu3dTDgImNHU5Qh362VEr9csZFq','ACTIVE','DEVELOPER','ADMIN','jquingua9',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `vendorId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `vendorCode` varchar(30) NOT NULL,
  `vendorName` varchar(50) DEFAULT NULL,
  `vendorType` varchar(10) DEFAULT NULL,
  `vendorClass` varchar(30) DEFAULT NULL,
  `vendorStatus` varchar(10) DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) DEFAULT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`vendorId`),
  KEY `clientId` (`clientId`),
  KEY `vendorCode` (`vendorCode`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (45,1,'SRR','Solutions Resource Inc','SHIPPING','PREMIUM','ACTIVE','2014-06-18 16:00:00','','2014-09-17 03:48:43','admin'),(54,1,'SRI','Solutions Resource Inc','TRUCKING','PREMIUM','ACTIVE','2014-06-18 09:33:50','','2014-07-15 13:46:07','admin'),(56,1,'SRI-003','Solutions Resource Inc','SHIPPING','PREMIUM','ACTIVE','2014-06-19 01:51:02',NULL,'2014-06-19 01:51:02',NULL),(57,1,'qwerty','qwery','TRUCKING','PREMIUM','ACTIVE','2014-06-23 03:03:29',NULL,'2014-06-23 03:03:29',NULL),(58,1,'JT','Juno Test','TRUCKING','PREMIUM','ACTIVE','2014-06-24 04:14:11',NULL,'2014-06-24 04:14:11',NULL),(59,1,'JT 3','Juno Test 2','TRUCKING','PREMIUM','ACTIVE','2014-06-25 00:59:09',NULL,'2014-06-25 00:59:09',NULL),(60,1,'JT 4','Juno Test Edit','TRUCKING','PREMIUM','ACTIVE','2014-06-25 05:32:12','admin','2014-06-25 05:32:12',NULL),(61,1,'JT 5','Juno Test Edit 2','TRUCKING','PREMIUM','ACTIVE','2014-06-25 05:40:04','admin','2014-06-25 05:40:04','admin'),(62,1,'bgh','bgh','TRUCKING','PREMIUM','ACTIVE','2014-06-30 01:55:49','admin','2014-06-30 01:55:49',NULL),(63,1,'pp','kkkk','SHIPPING','PREMIUM','ACTIVE','2014-06-30 03:41:47','admin','2014-06-30 03:41:47',NULL),(64,1,'asdad','asdsa','TRUCKING','PREMIUM','ACTIVE','2014-07-02 07:40:30','admin','2014-07-02 07:40:30',NULL),(65,1,'sdfsfs','dfdsfdsfs','TRUCKING','PREMIUM','ACTIVE','2014-07-02 07:43:26','admin','2014-07-02 07:43:26',NULL),(66,1,'@@','@@','TRUCKING','PREMIUM','ACTIVE','2014-07-03 02:57:38','admin','2014-07-03 02:57:38',NULL),(67,1,'sadad','asdad','TRUCKING','PREMIUM','ACTIVE','2014-07-03 06:12:31','admin','2014-07-03 06:12:31',NULL),(68,1,'ABC','Solutions Resource Inc','TRUCKING','PREMIUM','ACTIVE','2014-07-04 05:57:38','admin','2014-07-04 05:57:38','admin'),(69,1,'CMD','sdrggr','TRUCKING','PREMIUM','ACTIVE','2014-07-15 10:11:14','admin','2014-07-15 02:11:19','admin'),(70,1,'AEL','August Eleven','TRUCKING','PREMIUM','ACTIVE','2014-08-11 14:08:15','admin','2014-08-11 06:08:16','admin'),(71,1,'AES','August Eleven Shipping','SHIPPING','PREMIUM','ACTIVE','2014-08-11 14:12:02','admin','2014-08-11 06:12:03','admin'),(72,1,'VIC','Victory Trucking','TRUCKING','ECONOMY','ACTIVE','2014-08-13 01:39:33','admin','2014-08-13 01:39:33','admin'),(73,1,'CVC','Victory Trucking','SHIPPING','CLASS C','ACTIVE','2014-08-13 02:20:52','admin','2014-08-13 02:20:52','admin'),(74,1,'ELC','Ernest Logistics Corporation','TRUCKING','PREMIUM','ACTIVE','2014-08-15 13:03:44','admin','2014-08-15 13:03:44','admin'),(75,1,'ESC','Ernest Shipping Corporation','SHIPPING','ECONOMY','ACTIVE','2014-08-15 13:39:25','admin','2014-08-15 13:39:25','admin'),(76,1,'DIE','Dejlas','TRUCKING','PREMIUM','ACTIVE','2014-08-29 03:12:50','admin','2014-08-29 03:12:50','admin'),(77,1,'TRP','Its-a-tarp','TRUCKING','PREMIUM','ACTIVE','2014-09-18 05:09:01','admin','2014-09-18 05:09:01','admin'),(78,1,'CHR','Cherries','SHIPPING','PREMIUM','ACTIVE','2014-09-18 05:23:34','admin','2014-09-18 05:23:34','admin'),(79,1,'YHA','yeah','TRUCKING','PREMIUM','ACTIVE','2014-09-18 05:30:42','admin','2014-09-18 05:30:42','admin'),(80,1,'ATG','Astig Trucking Co.','TRUCKING','PREMIUM','ACTIVE','2014-09-18 05:47:03','admin','2014-09-18 05:47:03','admin'),(81,1,'BRK','Barkuhan na','SHIPPING','PREMIUM','ACTIVE','2014-09-18 05:48:15','admin','2014-09-18 05:59:40','admin'),(89,1,'CCV','ClarenceVictoria','TRUCKING','PREMIUM','ACTIVE','2014-10-24 03:55:21','admin','2014-10-24 03:55:21','admin'),(90,1,'VCC','Victoria','TRUCKING','PREMIUM','ACTIVE','2014-10-24 05:17:34','admin','2014-10-24 05:17:34','admin'),(91,1,'ADD','ASD',NULL,'PREMIUM','ACTIVE','2014-10-24 05:52:31','admin','2014-10-24 05:52:31','admin'),(92,1,'VCZ','ACX','TRUCKING','PREMIUM','ACTIVE','2014-10-24 07:46:37','admin','2014-10-24 07:46:37','admin'),(95,1,'FGH','FGH','TRUCKING','PREMIUM','ACTIVE','2014-10-24 09:18:20','admin','2014-10-24 09:18:20','admin'),(96,1,'DFG','DFG','TRUCKING','PREMIUM','ACTIVE','2014-10-27 03:30:56','admin','2014-10-27 03:30:56','admin'),(97,1,'VBN','CVB','TRUCKING','PREMIUM','ACTIVE','2014-10-27 03:49:43','admin','2014-10-27 03:49:43','admin'),(98,1,'KJK','JKL','TRUCKING','PREMIUM','ACTIVE','2014-10-27 05:25:41','admin','2014-10-27 05:25:41','admin'),(99,1,'JKS','JKS','TRUCKING','PREMIUM','ACTIVE','2014-10-27 05:34:41','admin','2014-10-27 05:34:41','admin'),(100,1,'KLL','KLLL','TRUCKING','PREMIUM','ACTIVE','2014-10-27 05:40:47','admin','2014-10-27 05:40:47','admin'),(101,1,'GGH','FGH','TRUCKING','PREMIUM','ACTIVE','2014-10-28 03:16:14','admin','2014-10-28 03:16:14','admin'),(102,1,'JHJ','jhj','TRUCKING','PREMIUM','ACTIVE','2014-10-28 03:25:18','admin','2014-10-28 03:25:18','admin'),(103,1,'KLK','HJK','TRUCKING','PREMIUM','ACTIVE','2014-10-28 03:29:41','admin','2014-10-28 03:29:41','admin'),(104,1,'HGF','FGHHH','SHIPPING','PREMIUM','ACTIVE','2014-10-28 03:29:54','admin','2014-10-28 03:29:54','admin'),(105,1,'SGH','SGH','TRUCKING','PREMIUM','ACTIVE','2014-10-28 03:36:40','admin','2014-10-28 03:36:40','admin'),(106,1,'ZXC','ZXC','TRUCKING','PREMIUM','ACTIVE','2014-10-28 05:40:54','admin','2014-10-28 05:40:54','admin');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vessels`
--

DROP TABLE IF EXISTS `vessels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vessels` (
  `vesselId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `vesselNumber` varchar(50) DEFAULT NULL,
  `vesselName` varchar(50) NOT NULL,
  `modelNumber` varchar(50) DEFAULT NULL,
  `modelYear` int(11) DEFAULT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  `vesselType` varchar(45) NOT NULL,
  PRIMARY KEY (`vesselId`),
  KEY `clientId` (`clientId`),
  KEY `vendorId` (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vessels`
--

LOCK TABLES `vessels` WRITE;
/*!40000 ALTER TABLE `vessels` DISABLE KEYS */;
INSERT INTO `vessels` VALUES (1,1,42,'100','Vessel Test','Model test',1990,'2014-06-18 09:22:34','admin','2014-06-18 09:22:34','admin',''),(2,1,56,'100','Vessel Name','Model Number',1990,'2014-06-19 02:55:16','admin','2014-06-19 02:55:16','admin',''),(10,1,42,'455','gh','dg',1995,'2014-06-19 07:43:51','admin','2014-06-19 07:43:51','admin',''),(12,1,56,'234','sdr','sre',1998,'2014-06-24 06:35:58','admin','2014-06-24 06:35:58','admin',''),(13,1,56,'@s','~~vessel 123','wer123',11111,'2014-07-04 03:30:55','admin','2014-07-04 03:30:55','admin',''),(14,1,56,'y','354','brb',1234,'2014-07-07 10:48:05','admin','2014-07-07 02:48:07','admin',''),(15,1,45,NULL,'ivan vessel',NULL,NULL,'2014-09-02 05:38:49','admin','2014-09-02 05:38:49','admin','RO/PAX'),(16,1,45,NULL,'Sample with Spaces',NULL,NULL,'2014-09-04 01:08:41','admin','2014-09-04 01:08:41','admin','MULTI-PURPOSE VESSEL'),(17,1,81,NULL,'Going Merry',NULL,NULL,'2014-09-18 06:08:34','admin','2014-09-18 06:08:35','admin','RO/PAX'),(18,1,78,NULL,'abc',NULL,NULL,'2014-10-14 06:34:08','admin','2014-10-14 06:34:08','admin','RO/PAX');
/*!40000 ALTER TABLE `vessels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vesselschedules`
--

DROP TABLE IF EXISTS `vesselschedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vesselschedules` (
  `vesselScheduleId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `originPort` varchar(30) NOT NULL,
  `departureDate` varchar(45) NOT NULL,
  `departureTime` varchar(45) NOT NULL,
  `destinationPort` varchar(30) NOT NULL,
  `arrivalDate` varchar(45) NOT NULL,
  `arrivalTime` varchar(45) NOT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  `voyageNumber` varchar(45) DEFAULT NULL,
  `vendorCode` varchar(45) DEFAULT NULL,
  `vesselName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vesselScheduleId`),
  KEY `clientID` (`clientId`),
  KEY `vendorId` (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vesselschedules`
--

LOCK TABLES `vesselschedules` WRITE;
/*!40000 ALTER TABLE `vesselschedules` DISABLE KEYS */;
INSERT INTO `vesselschedules` VALUES (2,1,33,'MANILA','2014-12-07','17:00:00','PALAWAN','2014-30-07','15:00:00','2014-07-30 11:49:42','admin','2014-08-14 05:23:05','admin','0009',NULL,NULL),(3,1,31,'MANILA','2014-30-07','15:00:00','BACOLOD','2014-31-07','15:00:00','2014-07-30 13:28:37','admin','2014-07-30 13:28:37','admin','0003',NULL,NULL),(4,1,33,'TAGBILARAN','2014-01-07','04:00:00','TACLOBAN','2014-01-07','07:00:00','2014-07-30 13:31:03','admin','2014-07-30 13:31:03','admin','efds',NULL,NULL),(5,1,45,'TACLOBAN','2014-30-07','15:00:00','ZAMBOANGA','2014-31-07','15:00:00','2014-07-30 14:09:04','admin','2014-07-30 14:09:04','admin','022',NULL,NULL),(6,1,33,'TACLOBAN','2014-30-07','15:00:00','ILIGAN','2014-31-07','14:00:00','2014-07-30 14:14:11','admin','2014-07-30 14:14:11','admin','sd',NULL,NULL),(8,1,45,'MANILA','2014-30-07','15:00:00','PALAWAN','2014-31-07','14:00:00','2014-08-01 15:44:14','admin','2014-08-14 05:23:02','admin','asd',NULL,NULL),(9,1,45,'PALAWAN','2014-12-08','04:13:14','PALAWAN','2014-12-08','15:46:09','2014-08-01 15:46:47','admin','2014-08-01 15:46:47','admin','v123',NULL,NULL),(10,1,31,'MANILA','2014-13-08','16:40:00','BACOLOD','2014-13-08','22:56:55','2014-08-13 16:12:38','admin','2014-08-13 16:12:38','admin','0011',NULL,NULL),(11,1,31,'ZAMBOANGA','2014-01-08','15:00:00','TACLOBAN','2014-05-08','14:00:00','2014-08-13 16:16:23','admin','2014-08-14 05:23:03','admin','fgd',NULL,NULL),(13,1,51,'ZAMBOANGA','08-26-2014','1:00 AM','TAGBILARAN','08-24-2014','11:00 AM','2014-08-26 08:15:33','admin','2014-08-26 08:15:33','admin','23243',NULL,NULL),(14,1,56,'BACOLOD','09-02-2014','5:00 AM','TACLOBAN','09-02-2014','10:43 AM','2014-09-02 02:43:45','admin','2014-09-02 02:43:45','admin','6742','SRI-003',NULL),(15,1,78,'ILOILO','10-22-2014','9:30 AM','TAGBILARAN','10-31-2014','5:38 AM','2014-10-14 06:46:41','admin','2014-10-14 06:46:41','admin','123456','CHR','abc'),(16,1,56,'ZAMBOANGA','10-25-2014','8:50 AM','TAGBILARAN','10-30-2014','4:37 AM','2014-10-24 09:24:34','admin','2014-10-24 09:24:34','admin','SRR123','SRI-003',NULL),(17,1,45,'ZAMBOANGA','10-31-2014','11:51 AM','TAGBILARAN','11-13-2014','2:34 AM','2014-10-24 09:34:19','admin','2014-10-24 09:34:19','admin','SRR1234','SRR',NULL),(18,1,104,'ZAMBOANGA','10-30-2014','11:36 AM','TAGBILARAN','10-30-2014','10:43 AM','2014-10-28 03:30:14','admin','2014-10-28 03:30:14','admin','123312','HGF',NULL),(19,1,104,'TACLOBAN','10-30-2014','6:22 AM','ZAMBOANGA','10-30-2014','10:50 AM','2014-10-28 03:35:03','admin','2014-10-28 03:35:03','admin','123123','HGF',NULL),(20,1,104,'TAGBILARAN','10-30-2014','11:37 AM','ZAMBOANGA','10-30-2014','1:52 PM','2014-10-28 03:36:29','admin','2014-10-28 03:36:29','admin','12321321123','HGF',NULL);
/*!40000 ALTER TABLE `vesselschedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yardlogs`
--

DROP TABLE IF EXISTS `yardlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yardlogs` (
  `yardLogsId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `addressId` int(11) NOT NULL,
  `gateInDate` date NOT NULL,
  `gateInTime` time NOT NULL,
  `gateOutDate` date NOT NULL,
  `gateOutTime` time NOT NULL,
  `truckCode` varchar(10) NOT NULL,
  `trailerCode` varchar(10) NOT NULL,
  `driverCode` varchar(10) NOT NULL,
  `bayNumber` int(11) NOT NULL,
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(25) NOT NULL,
  `modifiedTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` varchar(25) NOT NULL,
  PRIMARY KEY (`yardLogsId`),
  KEY `clientId` (`clientId`),
  KEY `addressId` (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yardlogs`
--

LOCK TABLES `yardlogs` WRITE;
/*!40000 ALTER TABLE `yardlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `yardlogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-27 17:18:19
