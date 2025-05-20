CREATE DATABASE  IF NOT EXISTS `dbmusicas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `dbmusicas`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbmusicas
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `tbcds`
--

DROP TABLE IF EXISTS `tbcds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcds` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_cd` varchar(100) DEFAULT NULL,
  `DataCompra` date DEFAULT NULL,
  `ValorPago` decimal(8,2) DEFAULT NULL,
  `LocalCompra` varchar(100) DEFAULT NULL,
  `Album` enum('Sim','Não') DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcds`
--

LOCK TABLES `tbcds` WRITE;
/*!40000 ALTER TABLE `tbcds` DISABLE KEYS */;
INSERT INTO `tbcds` VALUES (1,'Melhores do Rock','2023-01-10',39.90,'Submarino','Sim'),(2,'Pop Hits','2023-03-15',29.90,'Amazon','Não'),(3,'Sertanejo Raiz','2023-05-12',25.00,'Submarino','Sim'),(4,'Jazz Classics','2023-07-01',34.50,'Americanas','Sim'),(5,'MPB Especial','2023-08-20',42.00,'Submarino','Sim');
/*!40000 ALTER TABLE `tbcds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbmusicas`
--

DROP TABLE IF EXISTS `tbmusicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbmusicas` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoCD` int(11) DEFAULT NULL,
  `Numero_musica` int(11) DEFAULT NULL,
  `Nome_musica` varchar(100) DEFAULT NULL,
  `Artista` varchar(100) DEFAULT NULL,
  `Tempo` time DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodigoCD` (`CodigoCD`),
  CONSTRAINT `tbmusicas_ibfk_1` FOREIGN KEY (`CodigoCD`) REFERENCES `tbcds` (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmusicas`
--

LOCK TABLES `tbmusicas` WRITE;
/*!40000 ALTER TABLE `tbmusicas` DISABLE KEYS */;
INSERT INTO `tbmusicas` VALUES (1,1,1,'Back in Black','AC/DC','00:04:15'),(2,1,2,'Smoke on the Water','Deep Purple','00:05:40'),(3,1,3,'Highway to Hell','AC/DC','00:03:28'),(4,2,1,'Levitating','Dua Lipa','00:03:23'),(5,2,2,'Blinding Lights','The Weeknd','00:03:20'),(6,2,3,'Watermelon Sugar','Harry Styles','00:02:53'),(7,3,1,'Evidências','Chitãozinho & Xororó','00:04:50'),(8,3,2,'Fio de Cabelo','Zezé Di Camargo & Luciano','00:03:55'),(9,3,3,'Boate Azul','José Pedro','00:05:10'),(10,4,1,'Take Five','Dave Brubeck','00:05:25'),(11,4,2,'So What','Miles Davis','00:09:22'),(12,4,3,'Blue in Green','Bill Evans','00:05:38'),(13,5,1,'Tocando em Frente','Almir Sater','00:04:10'),(14,5,2,'Aquarela','Toquinho','00:04:23'),(15,5,3,'Canção da América','Milton Nascimento','00:03:58');
/*!40000 ALTER TABLE `tbmusicas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-20 18:05:21
