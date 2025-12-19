/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: actori
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `actori`
--

DROP TABLE IF EXISTS `actori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `actori` (
  `idactor` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idteatru` bigint(20) unsigned NOT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `rol` varchar(45) DEFAULT NULL,
  `piesa` varchar(45) DEFAULT NULL,
  `salariu` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`idactor`),
  KEY `fk_actori_teatru` (`idteatru`),
  CONSTRAINT `fk_actori_teatru` FOREIGN KEY (`idteatru`) REFERENCES `teatre` (`idteatru`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actori`
--

LOCK TABLES `actori` WRITE;
/*!40000 ALTER TABLE `actori` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `actori` VALUES
(4,1,'c','decaca','Copac','Hamlet',666.0000);
/*!40000 ALTER TABLE `actori` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `orase`
--

DROP TABLE IF EXISTS `orase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orase` (
  `idoras` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) DEFAULT NULL,
  `tara` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idoras`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orase`
--

LOCK TABLES `orase` WRITE;
/*!40000 ALTER TABLE `orase` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `orase` VALUES
(1,'Bucharest','Romania'),
(2,'Cluj Napoca','Romania');
/*!40000 ALTER TABLE `orase` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `teatre`
--

DROP TABLE IF EXISTS `teatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `teatre` (
  `idteatru` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idoras` bigint(20) unsigned NOT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `descriere` varchar(45) DEFAULT NULL,
  `adresa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idteatru`),
  KEY `fk_teatre_oras` (`idoras`),
  CONSTRAINT `fk_teatre_oras` FOREIGN KEY (`idoras`) REFERENCES `orase` (`idoras`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teatre`
--

LOCK TABLES `teatre` WRITE;
/*!40000 ALTER TABLE `teatre` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `teatre` VALUES
(1,1,'Bulandra','teatru de teatru','str. caca'),
(2,2,'Excelsior','Its quite nice','Str. MMNG');
/*!40000 ALTER TABLE `teatre` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-12-18 16:30:24
