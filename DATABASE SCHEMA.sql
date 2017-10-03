-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: star-wars
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `droid_fight_data`
--

DROP TABLE IF EXISTS `droid_fight_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droid_fight_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fight_intensity` float DEFAULT NULL,
  `damage_done` int(11) DEFAULT NULL,
  `droid_id` int(11) DEFAULT NULL,
  `last_fought_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `droid_id_data_idx` (`droid_id`),
  KEY `uploader_idx` (`last_fought_by`),
  CONSTRAINT `droid_id_data` FOREIGN KEY (`droid_id`) REFERENCES `droids` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `uploader` FOREIGN KEY (`last_fought_by`) REFERENCES `droids` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droid_fight_data`
--

LOCK TABLES `droid_fight_data` WRITE;
/*!40000 ALTER TABLE `droid_fight_data` DISABLE KEYS */;
INSERT INTO `droid_fight_data` VALUES (1,1.7,17,1,5),(2,1,10,2,1),(3,1.7,17,3,5),(4,5.1,51,4,5),(5,3,30,5,2),(6,5.1,51,6,5),(7,4,40,7,3),(8,5,50,8,3),(9,6,60,9,3),(10,9,90,10,4),(11,4.2,42,11,5),(12,1,10,12,4),(13,2.6,26,13,5),(14,3,30,14,5),(15,2,20,15,5),(16,3.4,34,16,5),(17,6,60,17,6),(18,3.5,35,18,5),(19,0.6,6,19,5),(20,3.6,36,20,5);
/*!40000 ALTER TABLE `droid_fight_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `droids`
--

DROP TABLE IF EXISTS `droids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `droid_class` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droids`
--

LOCK TABLES `droids` WRITE;
/*!40000 ALTER TABLE `droids` DISABLE KEYS */;
INSERT INTO `droids` VALUES (1,'Medical Droids'),(2,'Biological Science Droids'),(3,'Physical Science Droids'),(4,'Mathematics Droids'),(5,'Astromech Droids'),(6,'Exploration Droids'),(7,'Environmental Droids'),(8,'Engineering Droids'),(9,'Maintenance Droids'),(10,'Protocol Droids'),(11,'Servant Droids'),(12,'Tutor Droids'),(13,'Child Care Droids'),(14,'Security Droids'),(15,'Gladiator Droids'),(16,'Battle Droids'),(17,'Assassin Droids'),(18,'General Labour Droids'),(19,'Labour-specialist Droids'),(20,'Hazardous-service Droids');
/*!40000 ALTER TABLE `droids` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-03 17:13:05
