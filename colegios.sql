-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: colegio2
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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_colegio` int(11) DEFAULT NULL,
  `legajo` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `nota` decimal(10,0) DEFAULT NULL,
  `nota_dos` int(11) DEFAULT 0,
  `promedio` int(11) DEFAULT 0,
  `grado` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_colegio` (`id_colegio`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_colegio`) REFERENCES `colegios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (4,1,101,'Juan Perez',10,0,0,3,''),(5,1,105,'Pietra González',9,7,8,3,''),(6,5,190,'Roberto Luis Sánchez',8,0,0,3,'robertoluissanchez@gmail.com'),(7,2,106,'Martín Bossio',NULL,0,0,3,''),(8,4,100,'Paula Remmi',3,0,0,1,'mail@mail.com'),(9,4,1234,'Pedro Gómez',6,0,0,2,''),(12,2,1002,'Juan Test',9,0,0,1,'falso@gmail.com'),(13,2,1002,'Juan Test',9,0,0,1,'falso@gmail.com'),(14,2,1002,'Juan Test',9,0,0,1,'falso@gmail.com'),(26,2,2339,'Pepe',6,9,8,3,'pepe@gmail.com'),(27,2,2119,'Marta',6,9,8,3,'marta@gmail.com'),(29,2,2030,'Pedro',7,7,7,3,'asd@gmail.com'),(30,2,1002,'Juan Test',9,0,5,1,'falso@gmail.com');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos_auditoria`
--

DROP TABLE IF EXISTS `alumnos_auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos_auditoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_colegio` int(11) DEFAULT NULL,
  `legajo` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `nota` decimal(10,0) DEFAULT NULL,
  `nota_dos` decimal(10,0) DEFAULT NULL,
  `promedio` int(11) DEFAULT 0,
  `grado` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_colegio` (`id_colegio`),
  CONSTRAINT `alumnos_auditoria_ibfk_1` FOREIGN KEY (`id_colegio`) REFERENCES `colegios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos_auditoria`
--

LOCK TABLES `alumnos_auditoria` WRITE;
/*!40000 ALTER TABLE `alumnos_auditoria` DISABLE KEYS */;
INSERT INTO `alumnos_auditoria` VALUES (1,2,2030,'Pedro',7,7,7,3,'asd@gmail.com','root@localhost','2025-03-06'),(2,2,1002,'Juan Test',9,0,5,1,'falso@gmail.com','root@localhost','2025-03-17');
/*!40000 ALTER TABLE `alumnos_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colegios`
--

DROP TABLE IF EXISTS `colegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colegios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `disponibilidad` int(11) DEFAULT `capacidad`,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colegios`
--

LOCK TABLES `colegios` WRITE;
/*!40000 ALTER TABLE `colegios` DISABLE KEYS */;
INSERT INTO `colegios` VALUES (1,'Escuela LearnWave','Ramos Mejia','Buenos Aires',250,250),(2,'Academia BrightPath','San Salvador','Jujuy',100,97),(3,'Instituto WisdomLoom','Belgrano','Córdoba',150,150),(4,'Academia Junior de Johnson','Avellaneda','Buenos Aires',500,500),(5,'Escuela Evergreen Hill','Capital Federal','Buenos Aires',250,250);
/*!40000 ALTER TABLE `colegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabaja_en`
--

DROP TABLE IF EXISTS `trabaja_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabaja_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_colegio` int(11) DEFAULT NULL,
  `id_profesor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_colegio` (`id_colegio`),
  KEY `id_profesor` (`id_profesor`),
  CONSTRAINT `trabaja_en_ibfk_1` FOREIGN KEY (`id_colegio`) REFERENCES `colegios` (`id`),
  CONSTRAINT `trabaja_en_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabaja_en`
--

LOCK TABLES `trabaja_en` WRITE;
/*!40000 ALTER TABLE `trabaja_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabaja_en` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25  9:38:07
