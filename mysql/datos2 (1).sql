-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: musica
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'A Night at the Opera','1975-11-21','portada1.jpg',1,1),(2,'Parachutes','2000-07-10','portada2.jpg',2,1),(3,'Abbey Road','1969-09-26','portada3.jpg',3,2),(4,'Songs About Jane','2002-06-25','portada4.jpg',4,3),(5,'Appetite for Destruction','1987-07-21','portada5.jpg',5,1),(6,'24K Magic','2016-11-18','portada6.jpg',6,2),(7,'Hozier','2014-09-19','portada7.jpg',7,2),(8,'In the Wee Small Hours','1955-04-25','portada8.jpg',8,3);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Freddie','Mercury','Mercury','1946-09-05','1991-11-24'),(2,'Chris','Martin','Martin','1977-03-02',NULL),(3,'Paul','McCartney','McCartney','1942-06-18',NULL),(4,'Adam','Levine','Levine','1979-03-18',NULL),(5,'Axl','Rose','Rose','1962-02-06',NULL),(6,'Peter','Hernandez','Mars','1985-10-08',NULL),(7,'Andrew','Hozier-Byrne','Hozier','1990-03-17',NULL),(8,'Frank','Sinatra','Sinatra','1915-12-12','1998-05-14');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (4,'Three Little Birds',183,4),(5,'Sweet Child O\' Mine',356,1),(6,'Uptown Funk',270,2),(7,'Take Me to Church',241,3),(8,'Fly Me to the Moon',174,4),(9,'cancion popular',1234,1),(10,'applecar',1234,3),(11,'applecar',1234,3),(12,'algo',9879,5),(13,'cancion larga',4687,5);
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cancion_has_album`
--

LOCK TABLES `cancion_has_album` WRITE;
/*!40000 ALTER TABLE `cancion_has_album` DISABLE KEYS */;
INSERT INTO `cancion_has_album` VALUES (4,4),(5,5),(6,5),(6,6),(7,7),(8,8);
/*!40000 ALTER TABLE `cancion_has_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discografica`
--

LOCK TABLES `discografica` WRITE;
/*!40000 ALTER TABLE `discografica` DISABLE KEYS */;
INSERT INTO `discografica` VALUES (1,'Universal Music',_binary ''),(2,'Sony Music',_binary ''),(3,'Warner Music',_binary '\0'),(4,'EMI',_binary ''),(5,'Warner Bros. Records',_binary ''),(6,'Columbia Records',_binary '\0');
/*!40000 ALTER TABLE `discografica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (7,'Country'),(5,'ElectrÃ³nica'),(3,'Hip Hop'),(8,'Jazz'),(2,'Pop'),(6,'R&B'),(4,'Reggae'),(1,'Rock');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'Queen','1970-06-27',NULL),(2,'Coldplay','1996-09-19',NULL),(3,'The Beatles','1960-08-01','1970-04-10'),(4,'Maroon 5','1994-09-01',NULL),(5,'Guns N\' Roses','1985-03-01',NULL),(6,'Bruno Mars','2004-01-01',NULL),(7,'Hozier','2008-01-01',NULL),(8,'Frank Sinatra','1935-01-01','1998-05-14');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grupo_has_artista`
--

LOCK TABLES `grupo_has_artista` WRITE;
/*!40000 ALTER TABLE `grupo_has_artista` DISABLE KEYS */;
INSERT INTO `grupo_has_artista` VALUES (1,1,1),(2,2,1),(3,2,1),(3,3,2),(3,3,3),(3,3,4),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(8,8,6);
/*!40000 ALTER TABLE `grupo_has_artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (3,'Bajista'),(4,'Baterista'),(2,'Guitarrista'),(8,'Pianista'),(7,'Saxofonista'),(5,'Teclista'),(6,'Violinista'),(1,'Vocalista');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'pepa','$2b$10$U85iyHn80V9ZPnPbOS/9J.BVdby6x/C11cMEq5OkvmNJ5vpV7Zuje'),(6,'f32wefw32','$2b$10$1XgIwxvf0lC8S1Rp/ettwe0tB8VgvtBKU0xw6lDmz1IM0SCE6NtDa'),(7,'sf','$2b$10$ZyjCdKGkZAnlXWlw6AX0HO9iczp24CTNnHERNyXpH1elLhgMzkrU6'),(8,'fwsefw','$2b$20$W4sFuznsVaij6KFoGHYBmO04EaSLZl8a4W0yDOU2dKknuan.qupkS'),(9,'admin','$2b$11$d8kbgTI8M1mRVieRCVv/leSPCIlzQNTaj.ZrQMju/TfgRe1N5TK82');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12 17:16:41
