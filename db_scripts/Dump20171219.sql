-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospitales
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.28-MariaDB

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
-- Table structure for table `consultorios`
--

DROP TABLE IF EXISTS `consultorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultorios` (
  `id_consultorio` int(11) NOT NULL AUTO_INCREMENT,
  `id_oficina` int(11) NOT NULL,
  `descripcion_consultorio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_consultorio`),
  UNIQUE KEY `id_consultorio_UNIQUE` (`id_consultorio`),
  KEY `consultorio_oficina_idx` (`id_oficina`),
  CONSTRAINT `consultorio_oficina` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultorios`
--

LOCK TABLES `consultorios` WRITE;
/*!40000 ALTER TABLE `consultorios` DISABLE KEYS */;
INSERT INTO `consultorios` VALUES (1,1,'OFI_1_C1'),(2,1,'OFI_1_C2'),(3,1,'OFI_1_C3'),(4,2,'OFI_2_C1'),(5,2,'OFI_2_C2');
/*!40000 ALTER TABLE `consultorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dias_semana`
--

DROP TABLE IF EXISTS `dias_semana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dias_semana` (
  `id_dia_semana` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(45) NOT NULL,
  PRIMARY KEY (`id_dia_semana`),
  UNIQUE KEY `id_dia_semana_UNIQUE` (`id_dia_semana`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias_semana`
--

LOCK TABLES `dias_semana` WRITE;
/*!40000 ALTER TABLE `dias_semana` DISABLE KEYS */;
INSERT INTO `dias_semana` VALUES (1,'DOMINGO'),(2,'LUNES'),(3,'MARTES'),(4,'MIERCOLES'),(5,'JUEVES'),(6,'VIERNES'),(7,'SABADO');
/*!40000 ALTER TABLE `dias_semana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(45) NOT NULL,
  `creado` datetime NOT NULL,
  `ultima_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_documento`),
  UNIQUE KEY `id_documento_UNIQUE` (`id_documento`),
  UNIQUE KEY `tipo_documento_UNIQUE` (`tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (1,'DNI','2017-12-14 16:38:16','2017-12-14 16:38:16'),(2,'CUIT','2017-12-14 16:38:25','2017-12-14 16:38:25'),(3,'RAD','2017-12-15 05:06:37','2017-12-15 05:06:37'),(4,'Libreta de Enrolamiento','2017-12-15 05:08:07','2017-12-15 05:08:07'),(5,'Required','2017-12-15 05:12:44','2017-12-15 05:12:44'),(6,'Super Documento','2017-12-17 23:22:18','2017-12-17 23:22:18'),(7,'Otro documento','2017-12-17 23:23:18','2017-12-17 23:23:18');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilios`
--

DROP TABLE IF EXISTS `domicilios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domicilios` (
  `id_domicilio` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(45) DEFAULT NULL,
  `altura` varchar(45) DEFAULT NULL,
  `distrito` varchar(45) DEFAULT NULL,
  `barrio` varchar(45) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `ultima_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_domicilio`),
  UNIQUE KEY `id_domicilio_UNIQUE` (`id_domicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilios`
--

LOCK TABLES `domicilios` WRITE;
/*!40000 ALTER TABLE `domicilios` DISABLE KEYS */;
INSERT INTO `domicilios` VALUES (1,NULL,NULL,NULL,'CABALLITO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,NULL,NULL,NULL,'BOEDO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,NULL,NULL,NULL,NULL,'2017-12-19 01:59:28','2017-12-19 01:59:28'),(4,NULL,NULL,NULL,NULL,'2017-12-19 02:01:41','2017-12-19 02:01:41'),(5,NULL,NULL,NULL,NULL,'2017-12-19 02:11:56','2017-12-19 02:11:56'),(6,NULL,NULL,NULL,NULL,'2017-12-19 02:12:18','2017-12-19 02:12:18'),(7,NULL,NULL,NULL,NULL,'2017-12-19 02:14:50','2017-12-19 02:14:50'),(8,NULL,NULL,NULL,NULL,'2017-12-19 02:15:38','2017-12-19 02:15:38');
/*!40000 ALTER TABLE `domicilios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enfermedad` varchar(45) NOT NULL,
  `creado` datetime NOT NULL,
  `ultima_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `enfermedad_UNIQUE` (`enfermedad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedades`
--

LOCK TABLES `enfermedades` WRITE;
/*!40000 ALTER TABLE `enfermedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidades` (
  `id_especialidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_especialidad` varchar(45) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_especialidad`),
  UNIQUE KEY `descripcion` (`descripcion_especialidad`),
  UNIQUE KEY `id_especialidad_UNIQUE` (`id_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'ESP_1'),(2,'ESP_2');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades_x_especialista`
--

DROP TABLE IF EXISTS `especialidades_x_especialista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidades_x_especialista` (
  `id_especialidad_x_especialista` int(11) NOT NULL AUTO_INCREMENT,
  `id_especialidad` int(11) NOT NULL,
  `id_especialista` int(11) NOT NULL,
  PRIMARY KEY (`id_especialidad_x_especialista`),
  UNIQUE KEY `id_especialidad_x_especialista_UNIQUE` (`id_especialidad_x_especialista`),
  KEY `a_idx` (`id_especialidad`),
  KEY `b_idx` (`id_especialista`),
  KEY `fk_especialidades_idx` (`id_especialidad`),
  KEY `fk_especialista_idx` (`id_especialista`),
  CONSTRAINT `fk_especialidades` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especialista` FOREIGN KEY (`id_especialista`) REFERENCES `especialistas` (`id_especialista`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades_x_especialista`
--

LOCK TABLES `especialidades_x_especialista` WRITE;
/*!40000 ALTER TABLE `especialidades_x_especialista` DISABLE KEYS */;
INSERT INTO `especialidades_x_especialista` VALUES (1,1,1),(2,2,1),(3,1,2);
/*!40000 ALTER TABLE `especialidades_x_especialista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialistas`
--

DROP TABLE IF EXISTS `especialistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialistas` (
  `id_especialista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_especialista`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialistas`
--

LOCK TABLES `especialistas` WRITE;
/*!40000 ALTER TABLE `especialistas` DISABLE KEYS */;
INSERT INTO `especialistas` VALUES (1,'especialista 1',NULL,NULL),(2,'especialista 2',NULL,NULL);
/*!40000 ALTER TABLE `especialistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_civil`
--

DROP TABLE IF EXISTS `estados_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_civil` (
  `id_estado_civil` int(11) NOT NULL AUTO_INCREMENT,
  `estado_civil` varchar(45) NOT NULL,
  `creado` datetime NOT NULL,
  `ultima_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_estado_civil`),
  UNIQUE KEY `id_estado_civil_UNIQUE` (`id_estado_civil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_civil`
--

LOCK TABLES `estados_civil` WRITE;
/*!40000 ALTER TABLE `estados_civil` DISABLE KEYS */;
INSERT INTO `estados_civil` VALUES (1,'CASADO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'SOLTERO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'NO CONTESTA','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `estados_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historias_clinicas`
--

DROP TABLE IF EXISTS `historias_clinicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historias_clinicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_historia_clinica` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `numero_historia_clinica_UNIQUE` (`numero_historia_clinica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historias_clinicas`
--

LOCK TABLES `historias_clinicas` WRITE;
/*!40000 ALTER TABLE `historias_clinicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `historias_clinicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios_atencion`
--

DROP TABLE IF EXISTS `horarios_atencion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios_atencion` (
  `id_horario_atencion` int(11) NOT NULL AUTO_INCREMENT,
  `id_especialista` int(11) NOT NULL,
  `id_oficina` int(11) NOT NULL,
  `horario_inicio` time NOT NULL,
  `horario_fin` time NOT NULL,
  `id_dia` int(11) NOT NULL,
  `duracion_turnos` time NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  PRIMARY KEY (`id_horario_atencion`),
  UNIQUE KEY `id_horario_atencion_UNIQUE` (`id_horario_atencion`),
  KEY `fk_especialista_en_ha_idx` (`id_especialista`),
  KEY `fk_especialidad_ha_idx` (`id_especialidad`),
  KEY `ha_oficina_idx` (`id_oficina`),
  KEY `ha_dia_idx` (`id_dia`),
  CONSTRAINT `fk_especialidad_ha` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especialista_ha` FOREIGN KEY (`id_especialista`) REFERENCES `especialistas` (`id_especialista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ha_dia` FOREIGN KEY (`id_dia`) REFERENCES `dias_semana` (`id_dia_semana`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ha_oficina` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios_atencion`
--

LOCK TABLES `horarios_atencion` WRITE;
/*!40000 ALTER TABLE `horarios_atencion` DISABLE KEYS */;
INSERT INTO `horarios_atencion` VALUES (9,1,1,'13:00:00','14:30:00',2,'00:20:00',1),(10,2,1,'13:00:00','14:30:00',2,'00:20:00',1);
/*!40000 ALTER TABLE `horarios_atencion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logtable`
--

DROP TABLE IF EXISTS `logtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_msg` varchar(245) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2570 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logtable`
--

LOCK TABLES `logtable` WRITE;
/*!40000 ALTER TABLE `logtable` DISABLE KEYS */;
INSERT INTO `logtable` VALUES (2534,'cant h_a: 2'),(2535,'c_horario_fin : 14:30:00@horario_actual: 13:00:00'),(2536,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 13:00:00'),(2537,' @horario_actual: 13:00:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 13:00:00 @fecha_y_horario_fin_turno: 2017-12-11 13:20:00 @fecha_comienzo: 2017-12-11 13:00:00 @fecha_finalizacion: 2017-12-11 13:20:00 @consultorio_libre: 1'),(2538,'c_horario_fin : 14:30:00@horario_actual: 13:20:00'),(2539,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 13:20:00'),(2540,' @horario_actual: 13:20:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 13:20:00 @fecha_y_horario_fin_turno: 2017-12-11 13:40:00 @fecha_comienzo: 2017-12-11 13:20:00 @fecha_finalizacion: 2017-12-11 13:40:00 @consultorio_libre: 1'),(2541,'c_horario_fin : 14:30:00@horario_actual: 13:40:00'),(2542,' cant consultorio ocupados ese intervalo: 1 @fecha_actual: 2017-12-11 @horario_actual: 13:40:00'),(2543,'c_horario_fin : 14:30:00@horario_actual: 14:00:00'),(2544,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 14:00:00'),(2545,' @horario_actual: 14:00:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 14:00:00 @fecha_y_horario_fin_turno: 2017-12-11 14:20:00 @fecha_comienzo: 2017-12-11 14:00:00 @fecha_finalizacion: 2017-12-11 14:20:00 @consultorio_libre: 1'),(2546,'c_horario_fin : 14:30:00@horario_actual: 14:20:00'),(2547,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 14:20:00'),(2548,' @horario_actual: 14:20:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 14:20:00 @fecha_y_horario_fin_turno: 2017-12-11 14:40:00 @fecha_comienzo: 2017-12-11 14:20:00 @fecha_finalizacion: 2017-12-11 14:40:00 @consultorio_libre: 1'),(2549,'c_horario_fin : 14:30:00@horario_actual: 14:40:00'),(2550,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 14:40:00'),(2551,' @horario_actual: 14:40:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 14:40:00 @fecha_y_horario_fin_turno: 2017-12-11 15:00:00 @fecha_comienzo: 2017-12-11 14:40:00 @fecha_finalizacion: 2017-12-11 15:00:00 @consultorio_libre: 1'),(2552,'c_horario_fin : 14:30:00@horario_actual: 13:00:00'),(2553,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 13:00:00'),(2554,' @horario_actual: 13:00:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 13:00:00 @fecha_y_horario_fin_turno: 2017-12-11 13:20:00 @fecha_comienzo: 2017-12-11 13:00:00 @fecha_finalizacion: 2017-12-11 13:20:00 @consultorio_libre: 1'),(2555,'c_horario_fin : 14:30:00@horario_actual: 13:20:00'),(2556,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 13:20:00'),(2557,' @horario_actual: 13:20:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 13:20:00 @fecha_y_horario_fin_turno: 2017-12-11 13:40:00 @fecha_comienzo: 2017-12-11 13:20:00 @fecha_finalizacion: 2017-12-11 13:40:00 @consultorio_libre: 1'),(2558,'c_horario_fin : 14:30:00@horario_actual: 13:40:00'),(2559,' cant consultorio ocupados ese intervalo: 1 @fecha_actual: 2017-12-11 @horario_actual: 13:40:00'),(2560,' @horario_actual: 13:40:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 13:40:00 @fecha_y_horario_fin_turno: 2017-12-11 14:00:00 @fecha_comienzo: 2017-12-11 13:40:00 @fecha_finalizacion: 2017-12-11 14:00:00 @consultorio_libre: 2'),(2561,'c_horario_fin : 14:30:00@horario_actual: 14:00:00'),(2562,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 14:00:00'),(2563,' @horario_actual: 14:00:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 14:00:00 @fecha_y_horario_fin_turno: 2017-12-11 14:20:00 @fecha_comienzo: 2017-12-11 14:00:00 @fecha_finalizacion: 2017-12-11 14:20:00 @consultorio_libre: 1'),(2564,'c_horario_fin : 14:30:00@horario_actual: 14:20:00'),(2565,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 14:20:00'),(2566,' @horario_actual: 14:20:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 14:20:00 @fecha_y_horario_fin_turno: 2017-12-11 14:40:00 @fecha_comienzo: 2017-12-11 14:20:00 @fecha_finalizacion: 2017-12-11 14:40:00 @consultorio_libre: 1'),(2567,'c_horario_fin : 14:30:00@horario_actual: 14:40:00'),(2568,' cant consultorio ocupados ese intervalo: 0 @fecha_actual: 2017-12-11 @horario_actual: 14:40:00'),(2569,' @horario_actual: 14:40:00 @fecha_actual: 2017-12-11 @fecha_y_horario_actual: 2017-12-11 14:40:00 @fecha_y_horario_fin_turno: 2017-12-11 15:00:00 @fecha_comienzo: 2017-12-11 14:40:00 @fecha_finalizacion: 2017-12-11 15:00:00 @consultorio_libre: 1');
/*!40000 ALTER TABLE `logtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2017_12_13_195450_create_tasks_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obra_social`
--

DROP TABLE IF EXISTS `obra_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obra_social` (
  `id_obra_social` int(11) NOT NULL AUTO_INCREMENT,
  `obra_social` varchar(45) NOT NULL,
  `creado` datetime NOT NULL,
  `ultima_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_obra_social`),
  UNIQUE KEY `id_obra_social_UNIQUE` (`id_obra_social`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra_social`
--

LOCK TABLES `obra_social` WRITE;
/*!40000 ALTER TABLE `obra_social` DISABLE KEYS */;
INSERT INTO `obra_social` VALUES (1,'PAMI','2017-12-18 02:25:29','2017-12-18 02:25:29'),(2,'PAMO','2017-12-18 02:27:29','2017-12-18 02:27:29'),(3,'GALENO','2017-12-18 02:40:53','2017-12-18 02:40:53');
/*!40000 ALTER TABLE `obra_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oficinas` (
  `id_oficina` int(11) NOT NULL AUTO_INCREMENT,
  `id_domicilio` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_oficina`),
  UNIQUE KEY `id_oficina_UNIQUE` (`id_oficina`),
  KEY `oficina_domicilio_idx` (`id_domicilio`),
  CONSTRAINT `oficina_domicilio` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilios` (`id_domicilio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` VALUES (1,1,'OFI_1'),(2,2,'OFI_2');
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) NOT NULL,
  `numero_historia_clinica` int(11) DEFAULT NULL,
  `id_domicilio` int(11) DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `hora_nacimiento` time DEFAULT NULL,
  `id_estado_civil` int(11) NOT NULL,
  `esta_vivo` bit(1) DEFAULT NULL,
  `fecha_fallecimiento` datetime DEFAULT NULL,
  `telefono_fijo` varchar(25) DEFAULT NULL,
  `telefono_celular` varchar(25) DEFAULT NULL,
  `id_persona_responsable` int(11) DEFAULT NULL,
  `id_obra_social` int(11) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `red_social` varchar(60) DEFAULT NULL,
  `id_enfermedad` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `valor_obra_social` varchar(45) DEFAULT NULL,
  `valor_documento` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `ultima_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `id_paciente_UNIQUE` (`id_paciente`),
  UNIQUE KEY `numero_historia_clinica_UNIQUE` (`numero_historia_clinica`),
  KEY `persona_responsable_idx` (`id_persona_responsable`),
  KEY `paciente_nacionalidad_idx` (`id_pais`),
  KEY `persona_usuario_idx` (`id_usuario`),
  KEY `paciente_estado_civil_idx` (`id_estado_civil`),
  KEY `persona_tipo_documento_idx` (`id_documento`),
  KEY `persona_obra_social_idx` (`id_obra_social`),
  KEY `persona_sexo_idx` (`id_sexo`),
  KEY `paciente_enfermedad_idx` (`id_enfermedad`),
  CONSTRAINT `paciente_enfermedad` FOREIGN KEY (`id_enfermedad`) REFERENCES `enfermedades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paciente_estado_civil` FOREIGN KEY (`id_estado_civil`) REFERENCES `estados_civil` (`id_estado_civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paciente_nacionalidad` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `persona_obra_social` FOREIGN KEY (`id_obra_social`) REFERENCES `obra_social` (`id_obra_social`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `persona_responsable` FOREIGN KEY (`id_persona_responsable`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `persona_sexo` FOREIGN KEY (`id_sexo`) REFERENCES `sexos` (`id_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `persona_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,0,1,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'massa',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,0,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-18 07:10:04','2017-12-18 07:10:04'),(6,0,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-18 07:11:15','2017-12-18 07:11:15'),(7,0,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-18 07:13:03','2017-12-18 07:13:03'),(8,0,NULL,NULL,NULL,NULL,245,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-18 07:23:35','2017-12-18 07:23:35'),(9,0,NULL,NULL,NULL,NULL,1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-18 07:25:12','2017-12-18 07:25:12'),(10,0,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-18 07:26:29','2017-12-18 07:26:29'),(11,0,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-18 17:40:01','2017-12-18 17:40:01'),(12,2,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nombrex','apellidox','2017-12-19 02:15:38','2017-12-19 02:15:38');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoNumerico` int(4) NOT NULL DEFAULT '0',
  `codigo2` char(2) NOT NULL DEFAULT '',
  `codigo3` char(3) NOT NULL DEFAULT '',
  `nombre` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `codigoNumericoCodigo2Codigo3` (`codigoNumerico`,`codigo2`,`codigo3`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,4,'AF','AFG','Afganistán'),(2,248,'AX','ALA','Åland'),(3,8,'AL','ALB','Albania'),(4,276,'DE','DEU','Alemania'),(5,20,'AD','AND','Andorra'),(6,24,'AO','AGO','Angola'),(7,660,'AI','AIA','Anguila'),(8,10,'AQ','ATA','Antártida'),(9,28,'AG','ATG','Antigua y Barbuda'),(10,530,'AN','ANT','Antillas Neerlandesas'),(11,682,'SA','SAU','Arabia Saudita'),(12,12,'DZ','DZA','Argelia'),(13,32,'AR','ARG','Argentina'),(14,51,'AM','ARM','Armenia'),(15,533,'AW','ABW','Aruba'),(16,36,'AU','AUS','Australia'),(17,40,'AT','AUT','Austria'),(18,31,'AZ','AZE','Azerbaiyán'),(19,44,'BS','BHS','Bahamas'),(20,48,'BH','BHR','Bahréin'),(21,50,'BD','BGD','Bangladesh'),(22,52,'BB','BRB','Barbados'),(23,112,'BY','BLR','Bielorrusia'),(24,56,'BE','BEL','Bélgica'),(25,84,'BZ','BLZ','Belice'),(26,204,'BJ','BEN','Benín'),(27,60,'BM','BMU','Bermudas'),(28,64,'BT','BTN','Bután'),(29,68,'BO','BOL','Bolivia'),(30,70,'BA','BIH','Bosnia y Herzegovina'),(31,72,'BW','BWA','Botsuana'),(32,74,'BV','BVT','Isla Bouvet'),(33,76,'BR','BRA','Brasil'),(34,96,'BN','BRN','Brunéi'),(35,100,'BG','BGR','Bulgaria'),(36,854,'BF','BFA','Burkina Faso'),(37,108,'BI','BDI','Burundi'),(38,132,'CV','CPV','Cabo Verde'),(39,136,'KY','CYM','Islas Caimán'),(40,116,'KH','KHM','Camboya'),(41,120,'CM','CMR','Camerún'),(42,124,'CA','CAN','Canadá'),(43,140,'CF','CAF','República Centroafricana'),(44,148,'TD','TCD','Chad'),(45,203,'CZ','CZE','República Checa'),(46,152,'CL','CHL','Chile'),(47,156,'CN','CHN','China'),(48,196,'CY','CYP','Chipre'),(49,166,'CC','CCK','Islas Cocos'),(50,170,'CO','COL','Colombia'),(51,174,'KM','COM','Comoras'),(52,178,'CG','COG','República del Congo'),(53,180,'CD','COD','República Democrática del Congo'),(54,184,'CK','COK','Islas Cook'),(55,408,'KP','PRK','Corea del Norte'),(56,410,'KR','KOR','Corea del Sur'),(57,384,'CI','CIV','Costa de Marfil'),(58,188,'CR','CRI','Costa Rica'),(59,191,'HR','HRV','Croacia'),(60,192,'CU','CUB','Cuba'),(61,208,'DK','DNK','Dinamarca'),(62,212,'DM','DMA','Dominica'),(63,214,'DO','DOM','República Dominicana'),(64,218,'EC','ECU','Ecuador'),(65,818,'EG','EGY','Egipto'),(66,222,'SV','SLV','El Salvador'),(67,784,'AE','ARE','Emiratos Árabes Unidos'),(68,232,'ER','ERI','Eritrea'),(69,703,'SK','SVK','Eslovaquia'),(70,705,'SI','SVN','Eslovenia'),(71,724,'ES','ESP','España'),(73,840,'US','USA','Estados Unidos'),(74,581,'UM','UMI','Islas ultramarinas de Estados Unidos'),(75,233,'EE','EST','Estonia'),(76,231,'ET','ETH','Etiopía'),(77,234,'FO','FRO','Islas Feroe'),(78,608,'PH','PHL','Filipinas'),(79,246,'FI','FIN','Finlandia'),(80,242,'FJ','FJI','Fiyi'),(81,250,'FR','FRA','Francia'),(82,266,'GA','GAB','Gabón'),(83,270,'GM','GMB','Gambia'),(84,268,'GE','GEO','Georgia'),(85,239,'GS','SGS','Islas Georgias del Sur y Sandwich del Sur'),(86,288,'GH','GHA','Ghana'),(87,292,'GI','GIB','Gibraltar'),(88,308,'GD','GRD','Granada'),(89,300,'GR','GRC','Grecia'),(90,304,'GL','GRL','Groenlandia'),(91,312,'GP','GLP','Guadalupe'),(92,316,'GU','GUM','Guam'),(93,320,'GT','GTM','Guatemala'),(94,254,'GF','GUF','Guayana Francesa'),(95,831,'GG','GGY','Guernsey'),(96,324,'GN','GIN','Guinea'),(97,226,'GQ','GNQ','Guinea Ecuatorial'),(98,624,'GW','GNB','Guinea-Bissau'),(99,328,'GY','GUY','Guyana'),(100,332,'HT','HTI','Haití'),(101,334,'HM','HMD','Islas Heard y McDonald'),(102,340,'HN','HND','Honduras'),(103,344,'HK','HKG','Hong Kong'),(104,348,'HU','HUN','Hungría'),(105,356,'IN','IND','India'),(106,360,'ID','IDN','Indonesia'),(107,364,'IR','IRN','Irán'),(108,368,'IQ','IRQ','Iraq'),(109,372,'IE','IRL','Irlanda'),(110,352,'IS','ISL','Islandia'),(111,376,'IL','ISR','Israel'),(112,380,'IT','ITA','Italia'),(113,388,'JM','JAM','Jamaica'),(114,392,'JP','JPN','Japón'),(115,832,'JE','JEY','Jersey'),(116,400,'JO','JOR','Jordania'),(117,398,'KZ','KAZ','Kazajistán'),(118,404,'KE','KEN','Kenia'),(119,417,'KG','KGZ','Kirguistán'),(120,296,'KI','KIR','Kiribati'),(121,414,'KW','KWT','Kuwait'),(122,418,'LA','LAO','Laos'),(123,426,'LS','LSO','Lesoto'),(124,428,'LV','LVA','Letonia'),(125,422,'LB','LBN','Líbano'),(126,430,'LR','LBR','Liberia'),(127,434,'LY','LBY','Libia'),(128,438,'LI','LIE','Liechtenstein'),(129,440,'LT','LTU','Lituania'),(130,442,'LU','LUX','Luxemburgo'),(131,446,'MO','MAC','Macao'),(132,807,'MK','MKD','ARY Macedonia'),(133,450,'MG','MDG','Madagascar'),(134,458,'MY','MYS','Malasia'),(135,454,'MW','MWI','Malawi'),(136,462,'MV','MDV','Maldivas'),(137,466,'ML','MLI','Malí'),(138,470,'MT','MLT','Malta'),(139,238,'FK','FLK','Islas Malvinas'),(140,833,'IM','IMN','Isla de Man'),(141,580,'MP','MNP','Islas Marianas del Norte'),(142,504,'MA','MAR','Marruecos'),(143,584,'MH','MHL','Islas Marshall'),(144,474,'MQ','MTQ','Martinica'),(145,480,'MU','MUS','Mauricio'),(146,478,'MR','MRT','Mauritania'),(147,175,'YT','MYT','Mayotte'),(148,484,'MX','MEX','México'),(149,583,'FM','FSM','Micronesia'),(150,498,'MD','MDA','Moldavia'),(151,492,'MC','MCO','Mónaco'),(152,496,'MN','MNG','Mongolia'),(153,499,'ME','MNE','Montenegro'),(154,500,'MS','MSR','Montserrat'),(155,508,'MZ','MOZ','Mozambique'),(156,104,'MM','MMR','Myanmar'),(157,516,'NA','NAM','Namibia'),(158,520,'NR','NRU','Nauru'),(159,162,'CX','CXR','Isla de Navidad'),(160,524,'NP','NPL','Nepal'),(161,558,'NI','NIC','Nicaragua'),(162,562,'NE','NER','Níger'),(163,566,'NG','NGA','Nigeria'),(164,570,'NU','NIU','Niue'),(165,574,'NF','NFK','Norfolk'),(166,578,'NO','NOR','Noruega'),(167,540,'NC','NCL','Nueva Caledonia'),(168,554,'NZ','NZL','Nueva Zelanda'),(169,512,'OM','OMN','Omán'),(170,528,'NL','NLD','Países Bajos'),(171,586,'PK','PAK','Pakistán'),(172,585,'PW','PLW','Palaos'),(173,275,'PS','PSE','Palestina (ANP)'),(174,591,'PA','PAN','Panamá'),(175,598,'PG','PNG','Papúa Nueva Guinea'),(176,600,'PY','PRY','Paraguay'),(177,604,'PE','PER','Perú'),(178,612,'PN','PCN','Islas Pitcairn'),(179,258,'PF','PYF','Polinesia Francesa'),(180,616,'PL','POL','Polonia'),(181,620,'PT','PRT','Portugal'),(182,630,'PR','PRI','Puerto Rico'),(183,634,'QA','QAT','Qatar'),(184,826,'GB','GBR','Reino Unido'),(185,638,'RE','REU','Reunión'),(186,646,'RW','RWA','Ruanda'),(187,642,'RO','ROU','Rumania'),(188,643,'RU','RUS','Rusia'),(189,732,'EH','ESH','Sahara Occidental'),(190,90,'SB','SLB','Islas Salomón'),(191,882,'WS','WSM','Samoa'),(192,16,'AS','ASM','Samoa Americana'),(193,659,'KN','KNA','San Cristóbal y Nieves'),(194,674,'SM','SMR','San Marino'),(195,666,'PM','SPM','San Pedro y Miquelón'),(196,670,'VC','VCT','San Vicente y las Granadinas'),(197,654,'SH','SHN','Santa Helena'),(198,662,'LC','LCA','Santa Lucía'),(199,678,'ST','STP','Santo Tomé y Príncipe'),(200,686,'SN','SEN','Senegal'),(201,688,'RS','SRB','Serbia'),(202,690,'SC','SYC','Seychelles'),(203,694,'SL','SLE','Sierra Leona'),(204,702,'SG','SGP','Singapur'),(205,760,'SY','SYR','Siria'),(206,706,'SO','SOM','Somalia'),(207,144,'LK','LKA','Sri Lanka5'),(208,748,'SZ','SWZ','Suazilandia'),(209,710,'ZA','ZAF','Sudáfrica'),(210,736,'SD','SDN','Sudán'),(211,752,'SE','SWE','Suecia'),(212,756,'CH','CHE','Suiza'),(213,740,'SR','SUR','Surinam'),(214,744,'SJ','SJM','Svalbard y Jan Mayen'),(215,764,'TH','THA','Tailandia'),(216,158,'TW','TWN','Taiwán'),(217,834,'TZ','TZA','Tanzania'),(218,762,'TJ','TJK','Tayikistán'),(219,86,'IO','IOT','Territorio Británico del Océano Índico'),(220,260,'TF','ATF','Territorios Australes Franceses'),(221,626,'TL','TLS','Timor Oriental'),(222,768,'TG','TGO','Togo'),(223,772,'TK','TKL','Tokelau'),(224,776,'TO','TON','Tonga'),(225,780,'TT','TTO','Trinidad y Tobago'),(226,788,'TN','TUN','Túnez'),(227,796,'TC','TCA','Islas Turcas y Caicos'),(228,795,'TM','TKM','Turkmenistán'),(229,792,'TR','TUR','Turquía'),(230,798,'TV','TUV','Tuvalu'),(231,804,'UA','UKR','Ucrania'),(232,800,'UG','UGA','Uganda'),(233,858,'UY','URY','Uruguay'),(234,860,'UZ','UZB','Uzbekistán'),(235,548,'VU','VUT','Vanuatu'),(236,336,'VA','VAT','Ciudad del Vaticano'),(237,862,'VE','VEN','Venezuela'),(238,704,'VN','VNM','Vietnam'),(239,92,'VG','VGB','Islas Vírgenes Británicas'),(240,850,'VI','VIR','Islas Vírgenes Estadounidenses'),(241,876,'WF','WLF','Wallis y Futuna'),(242,887,'YE','YEM','Yemen'),(243,262,'DJ','DJI','Yibuti'),(244,894,'ZM','ZMB','Zambia'),(245,716,'ZW','ZWE','Zimbabue');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `id_rol_UNIQUE` (`id_rol`),
  UNIQUE KEY `descripcion_rol_UNIQUE` (`descripcion_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'PACIENTE');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexos` (
  `id_sexo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_sexo` varchar(45) NOT NULL,
  `creado` datetime DEFAULT NULL,
  `ultima_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_sexo`),
  UNIQUE KEY `id_sexo_UNIQUE` (`id_sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
INSERT INTO `sexos` VALUES (2,'MASCULINO',NULL,NULL),(3,'FEMENINO',NULL,NULL),(4,'NO CONTESTA',NULL,NULL);
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Go to the store','2017-12-13 20:03:42','2017-12-13 20:03:42'),(2,'Finish screencast','2017-12-13 20:04:03','2017-12-13 20:04:03'),(3,'Clean da house','2017-12-13 21:55:57','2017-12-13 21:55:57');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turnos` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `id_especialista` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `fecha_comienzo` datetime NOT NULL,
  `fecha_finalizacion` datetime NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  PRIMARY KEY (`id_turno`),
  UNIQUE KEY `id_turno_UNIQUE` (`id_turno`),
  KEY `turno_paciente_idx` (`id_paciente`),
  KEY `turno_especialista_idx` (`id_especialista`),
  KEY `turno_especialidad_idx` (`id_especialidad`),
  KEY `turno_consultorio_idx` (`id_consultorio`),
  CONSTRAINT `turno_consultorio` FOREIGN KEY (`id_consultorio`) REFERENCES `consultorios` (`id_consultorio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `turno_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `turno_especialista` FOREIGN KEY (`id_especialista`) REFERENCES `especialistas` (`id_especialista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `turno_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (7,1,1,1,'2017-12-11 13:40:00','2017-12-11 14:00:00',1);
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_rol` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `user_rol_idx` (`id_rol`),
  CONSTRAINT `user_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','john@example.com','$2y$10$9tGsxvP3IVACyA5v/jbNGeQtBKqyEMwFfJoKHUmJHv1R9tuYw.qt2',NULL,'2017-12-17 06:29:37','2017-12-17 06:29:37',1),(12,'Mario Martinez','mario1@gmail.com','$2y$10$gFuR2g.wyiVdqLay15zxkee7AAvM1SWAF5fv5yMpDtuj.EzehOzky','6toyQic69sl3HWINzsidfbCbBCYpCuZNhnqViFTZdVGSY1aVMuH8bzRpvvEi','2017-12-17 11:13:37','2017-12-17 11:13:37',1),(13,'Mario Kart','mario4@gmail.com','$2y$10$MMEzilXCw6HpnaMOGL5gBuhqdTm17Wj7awKQdl97ARagtcKAowoSu','qngVWnN2RDBvggq3EC1x2yBnW17jYocdAiIBraFUCelVHzII9IYjaBRBof1X','2017-12-17 21:20:47','2017-12-17 21:20:47',1),(14,'Mario Martinez','mario5@gmail.com','$2y$10$ALhubA1zykZ6sLfhY.R.ke/cHDWBvVBN5GFwhknkCD.DECSl.FcXi',NULL,'2017-12-17 21:42:57','2017-12-17 21:42:57',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-19  0:18:06
