-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: carrilana
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Current Database: `carrilana`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `carrilana` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `carrilana`;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `circuito` text COLLATE utf8_spanish_ci,
  `distancia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'2011-12-12 12:00:00','arrabaldo','santa cruz',500),(2,'2012-01-01 10:00:00','castro de beiro','costiÃ±a de canedo',750);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compraventa`
--

DROP TABLE IF EXISTS `compraventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compraventa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precio` decimal(2,0) NOT NULL,
  `categoria` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `foto` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_compraVenta_usuario1` (`usuario_id`),
  CONSTRAINT `fk_compraVenta_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compraventa`
--

LOCK TABLES `compraventa` WRITE;
/*!40000 ALTER TABLE `compraventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `compraventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `vehiculo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo_has_carrera`
--

DROP TABLE IF EXISTS `equipo_has_carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipo_has_carrera` (
  `equipo_id` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_equipo_has_carrera_carrera1` (`carrera_id`),
  KEY `fk_equipo_has_carrera_equipo1` (`equipo_id`),
  KEY `fk_equipo_has_carrera_categoria1` (`categoria_id`),
  CONSTRAINT `fk_equipo_has_carrera_carrera1` FOREIGN KEY (`carrera_id`) REFERENCES `carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipo_has_carrera_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipo_has_carrera_equipo1` FOREIGN KEY (`equipo_id`) REFERENCES `equipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo_has_carrera`
--

LOCK TABLES `equipo_has_carrera` WRITE;
/*!40000 ALTER TABLE `equipo_has_carrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo_has_carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archivo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_has_carrera`
--

DROP TABLE IF EXISTS `foto_has_carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto_has_carrera` (
  `foto_id` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  PRIMARY KEY (`foto_id`,`carrera_id`),
  KEY `fk_foto_has_carrera_carrera1` (`carrera_id`),
  KEY `fk_foto_has_carrera_foto1` (`foto_id`),
  CONSTRAINT `fk_foto_has_carrera_carrera1` FOREIGN KEY (`carrera_id`) REFERENCES `carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_foto_has_carrera_foto1` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_has_carrera`
--

LOCK TABLES `foto_has_carrera` WRITE;
/*!40000 ALTER TABLE `foto_has_carrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto_has_carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_has_noticia`
--

DROP TABLE IF EXISTS `foto_has_noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto_has_noticia` (
  `foto_id` int(11) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  PRIMARY KEY (`foto_id`,`noticia_id`),
  KEY `fk_foto_has_noticia_noticia1` (`noticia_id`),
  KEY `fk_foto_has_noticia_foto1` (`foto_id`),
  CONSTRAINT `fk_foto_has_noticia_foto1` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_foto_has_noticia_noticia1` FOREIGN KEY (`noticia_id`) REFERENCES `noticia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_has_noticia`
--

LOCK TABLES `foto_has_noticia` WRITE;
/*!40000 ALTER TABLE `foto_has_noticia` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto_has_noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_has_piloto`
--

DROP TABLE IF EXISTS `foto_has_piloto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto_has_piloto` (
  `foto_id` int(11) NOT NULL,
  `piloto_id` int(11) NOT NULL,
  PRIMARY KEY (`foto_id`,`piloto_id`),
  KEY `fk_foto_has_piloto_piloto1` (`piloto_id`),
  KEY `fk_foto_has_piloto_foto1` (`foto_id`),
  CONSTRAINT `fk_foto_has_piloto_foto1` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_foto_has_piloto_piloto1` FOREIGN KEY (`piloto_id`) REFERENCES `piloto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_has_piloto`
--

LOCK TABLES `foto_has_piloto` WRITE;
/*!40000 ALTER TABLE `foto_has_piloto` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto_has_piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llegada`
--

DROP TABLE IF EXISTS `llegada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `llegada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tiempo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `puesto` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `equipo_has_carrera_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`carrera_id`),
  KEY `fk_llegada_carrera1` (`carrera_id`),
  KEY `fk_llegada_equipo_has_carrera1` (`equipo_has_carrera_id`),
  CONSTRAINT `fk_llegada_carrera1` FOREIGN KEY (`carrera_id`) REFERENCES `carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_llegada_equipo_has_carrera1` FOREIGN KEY (`equipo_has_carrera_id`) REFERENCES `equipo_has_carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llegada`
--

LOCK TABLES `llegada` WRITE;
/*!40000 ALTER TABLE `llegada` DISABLE KEYS */;
/*!40000 ALTER TABLE `llegada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titular` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `texto` text COLLATE utf8_spanish_ci NOT NULL,
  `carrera_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_noticia_carrera` (`carrera_id`),
  CONSTRAINT `fk_noticia_carrera` FOREIGN KEY (`carrera_id`) REFERENCES `carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` VALUES (1,'Gran afluencia de aficion',' \r\nPues sÃ­ que fuÃ© gente al mogollÃ³n\r\n \r\n   \r\n  ',1),(2,'Yo tambiÃ©n fuÃ­','Pues sÃ­.',1),(3,'Nos vamos a comer','Que es viernes y es tarde',2),(4,'Carrera de Ourense.','El prÃ³ximo 29 de Octubre se celebrarÃ¡ la carrera de Ourense. ',1);
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `noticiaconcarrera`
--

DROP TABLE IF EXISTS `noticiaconcarrera`;
/*!50001 DROP VIEW IF EXISTS `noticiaconcarrera`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `noticiaconcarrera` (
  `id` int(11),
  `titular` varchar(45),
  `texto` text,
  `fecha` datetime,
  `nombre` varchar(45),
  `circuito` text,
  `distancia` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `piloto`
--

DROP TABLE IF EXISTS `piloto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piloto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nfederado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_piloto_equipo1` (`equipo_id`),
  CONSTRAINT `fk_piloto_equipo1` FOREIGN KEY (`equipo_id`) REFERENCES `equipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piloto`
--

LOCK TABLES `piloto` WRITE;
/*!40000 ALTER TABLE `piloto` DISABLE KEYS */;
/*!40000 ALTER TABLE `piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `foto` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `archivo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_has_carrera`
--

DROP TABLE IF EXISTS `video_has_carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_has_carrera` (
  `video_id` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  PRIMARY KEY (`video_id`,`carrera_id`),
  KEY `fk_video_has_carrera_carrera1` (`carrera_id`),
  KEY `fk_video_has_carrera_video1` (`video_id`),
  CONSTRAINT `fk_video_has_carrera_carrera1` FOREIGN KEY (`carrera_id`) REFERENCES `carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_has_carrera_video1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_has_carrera`
--

LOCK TABLES `video_has_carrera` WRITE;
/*!40000 ALTER TABLE `video_has_carrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_has_carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_has_piloto`
--

DROP TABLE IF EXISTS `video_has_piloto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_has_piloto` (
  `video_id` int(11) NOT NULL,
  `piloto_id` int(11) NOT NULL,
  PRIMARY KEY (`video_id`,`piloto_id`),
  KEY `fk_video_has_piloto_piloto1` (`piloto_id`),
  KEY `fk_video_has_piloto_video1` (`video_id`),
  CONSTRAINT `fk_video_has_piloto_piloto1` FOREIGN KEY (`piloto_id`) REFERENCES `piloto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_has_piloto_video1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_has_piloto`
--

LOCK TABLES `video_has_piloto` WRITE;
/*!40000 ALTER TABLE `video_has_piloto` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_has_piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `carrilana`
--

USE `carrilana`;

--
-- Final view structure for view `noticiaconcarrera`
--

/*!50001 DROP TABLE IF EXISTS `noticiaconcarrera`*/;
/*!50001 DROP VIEW IF EXISTS `noticiaconcarrera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `noticiaconcarrera` AS select `noticia`.`id` AS `id`,`noticia`.`titular` AS `titular`,`noticia`.`texto` AS `texto`,`carrera`.`fecha` AS `fecha`,`carrera`.`nombre` AS `nombre`,`carrera`.`circuito` AS `circuito`,`carrera`.`distancia` AS `distancia` from (`noticia` join `carrera`) where (`noticia`.`carrera_id` = `carrera`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-03  8:51:26
