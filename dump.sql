-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `arts`
--

DROP TABLE IF EXISTS `arts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arts` (
  `artid` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `year_of_creation` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `genre` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `description` longtext,
  `material` int(11) DEFAULT NULL,
  `prew_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`artid`),
  KEY `TYPE_OF_ART` (`type`),
  KEY `GENRE_OF_ART` (`genre`),
  KEY `AUTHOR_OF_ART` (`author`),
  KEY `art_to_material_idx` (`material`),
  CONSTRAINT `art_to_author` FOREIGN KEY (`author`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `art_to_genre` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `art_to_material` FOREIGN KEY (`material`) REFERENCES `materials` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `art_to_type` FOREIGN KEY (`type`) REFERENCES `types_of_art` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arts`
--

LOCK TABLES `arts` WRITE;
/*!40000 ALTER TABLE `arts` DISABLE KEYS */;
INSERT INTO `arts` VALUES (1,'Корабельная роща',NULL,1898,1,3,4,'что-то',1,NULL),(2,'Мужичок из робких',NULL,1877,1,2,3,' Один из интереснейших портретов работы Репина, в котором удивительно все, начиная с самого названия. Перед нами худощавый мужичок, взлохмаченный, с окладистой бородой. Его позу можно принять за выражение некой неуверенности, скованности. Но лишь позу. Глаза выдают в герое бурю страстей, волю, бесстрашие и энергию. Так может выглядеть разбойник, бунтовщик. Робость мужичка напускная, ложная. Он словно сжатая пружина, которая вот-вот распрямиться...',1,NULL),(3,'Корабль среди бурного моря',NULL,1887,1,3,6,NULL,1,NULL),(4,'Девятый вал',NULL,1850,1,3,6,NULL,1,NULL),(5,'Портрет Мусоргского',NULL,1881,1,2,6,NULL,1,NULL),(6,'Золотая осень. Слободка',NULL,1889,1,3,5,NULL,1,NULL),(7,'Озеро. Русь',NULL,1900,1,3,5,NULL,1,NULL),(8,'Богатыри',NULL,1898,1,4,7,NULL,1,NULL);
/*!40000 ALTER TABLE `arts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `desription` longtext,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `img` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `COUNTRY` (`country`),
  CONSTRAINT `author_to_country` FOREIGN KEY (`country`) REFERENCES `countries` (`country_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Вася Пупкин',NULL,NULL,NULL,1,'2'),(2,'Вася Пупкин',NULL,NULL,NULL,1,'2'),(3,'Илья Ефимович Репин ',NULL,'1844-08-05','1930-09-29',1,'1'),(4,'Иван Васильевич Шишкин',NULL,'1832-01-25','1898-03-20',1,'1'),(5,'Исаак Ильич Левитан',NULL,'1860-08-30','1900-08-04',1,'1'),(6,'Айвазовский Иван Константинович ',NULL,'1817-07-29','2017-05-05',1,'1'),(7,'Виктор Михайлович Васнецов  ',NULL,'2017-05-15','2017-06-23',1,'1'),(8,'Микеланджело Караваджо',NULL,'1571-09-29','1610-07-18',2,'1'),(9,'Леонардо да Винчи',NULL,'1452-04-15','1519-05-02',2,'1'),(10,'Паоло Веронезе',NULL,'1528-06-02','1588-04-19',2,'1'),(11,'Пабло Пикассо ',NULL,'1881-10-25','1973-04-08',5,'1'),(12,'Сальвадора Дали',NULL,'1904-05-11','1989-01-23',5,'1'),(13,'Клод Моне',NULL,'1840-11-14','1926-12-05',8,'1'),(14,'Эдгар Дега',NULL,'1834-07-19','1917-09-27',8,'1');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections_to_art`
--

DROP TABLE IF EXISTS `collections_to_art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections_to_art` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_coll` int(11) NOT NULL,
  `id_art` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `COLL` (`id_coll`),
  KEY `ART2` (`id_art`),
  KEY `unik2` (`id_coll`,`id_art`),
  CONSTRAINT `to_art1` FOREIGN KEY (`id_art`) REFERENCES `arts` (`artid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `to_coll1` FOREIGN KEY (`id_coll`) REFERENCES `collections` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections_to_art`
--

LOCK TABLES `collections_to_art` WRITE;
/*!40000 ALTER TABLE `collections_to_art` DISABLE KEYS */;
/*!40000 ALTER TABLE `collections_to_art` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (6,'Англия'),(5,'Испания'),(2,'Италия'),(4,'Китай'),(1,'Россия'),(7,'США'),(8,'Франция'),(3,'Япония');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exposition_to_arts`
--

DROP TABLE IF EXISTS `exposition_to_arts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exposition_to_arts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_expos` int(11) NOT NULL,
  `id_art` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EXPOS` (`id_expos`),
  KEY `ART1` (`id_art`),
  KEY `unik1` (`id_expos`,`id_art`),
  CONSTRAINT `to_art2` FOREIGN KEY (`id_art`) REFERENCES `arts` (`artid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `to_expose2` FOREIGN KEY (`id_expos`) REFERENCES `expositions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposition_to_arts`
--

LOCK TABLES `exposition_to_arts` WRITE;
/*!40000 ALTER TABLE `exposition_to_arts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exposition_to_arts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expositions`
--

DROP TABLE IF EXISTS `expositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date_of_begining` date DEFAULT NULL,
  `date_of_end` date DEFAULT NULL,
  `description` longtext,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expositions`
--

LOCK TABLES `expositions` WRITE;
/*!40000 ALTER TABLE `expositions` DISABLE KEYS */;
/*!40000 ALTER TABLE `expositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Натюрморт'),(2,'Портрет'),(3,'Пейзаж'),(4,'NoGenre');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'Масло'),(2,'Акварель');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_of_art`
--

DROP TABLE IF EXISTS `types_of_art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_of_art` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_of_art`
--

LOCK TABLES `types_of_art` WRITE;
/*!40000 ALTER TABLE `types_of_art` DISABLE KEYS */;
INSERT INTO `types_of_art` VALUES (1,'Картина'),(2,'Скульптура');
/*!40000 ALTER TABLE `types_of_art` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `Ugroup` int(11) DEFAULT NULL,
  `last_log` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'alecs',NULL,'yatsuk','2017-05-22 22:05:14',NULL,NULL),(2,'pizduk',NULL,'yatsuk','2017-05-22 22:05:28',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19  1:35:09
