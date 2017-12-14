-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: hospitales
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
  `id_documento` int(11) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
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
  `barrio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_domicilio`),
  UNIQUE KEY `id_domicilio_UNIQUE` (`id_domicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilios`
--

LOCK TABLES `domicilios` WRITE;
/*!40000 ALTER TABLE `domicilios` DISABLE KEYS */;
INSERT INTO `domicilios` VALUES (1,NULL,NULL,NULL,'CABALLITO'),(2,NULL,NULL,NULL,'BOEDO');
/*!40000 ALTER TABLE `domicilios` ENABLE KEYS */;
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
  PRIMARY KEY (`id_estado_civil`),
  UNIQUE KEY `id_estado_civil_UNIQUE` (`id_estado_civil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_civil`
--

LOCK TABLES `estados_civil` WRITE;
/*!40000 ALTER TABLE `estados_civil` DISABLE KEYS */;
INSERT INTO `estados_civil` VALUES (1,'CASADO'),(2,'SOLTERO'),(3,'NO CONTESTA');
/*!40000 ALTER TABLE `estados_civil` ENABLE KEYS */;
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
-- Table structure for table `obra_social`
--

DROP TABLE IF EXISTS `obra_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obra_social` (
  `id_obra_social` int(11) NOT NULL,
  `obra_social` varchar(45) NOT NULL,
  PRIMARY KEY (`id_obra_social`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra_social`
--

LOCK TABLES `obra_social` WRITE;
/*!40000 ALTER TABLE `obra_social` DISABLE KEYS */;
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
  `id_documento` int(11) DEFAULT NULL,
  `numero_historia_clinica` int(11) NOT NULL,
  `id_domicilio` int(11) DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_nacionalidad` int(11) DEFAULT NULL,
  `hora_nacimiento` time DEFAULT NULL,
  `id_estado_civil` int(11) NOT NULL,
  `esta_fallecido` bit(1) DEFAULT NULL,
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
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `id_paciente_UNIQUE` (`id_paciente`),
  UNIQUE KEY `numero_historia_clinica_UNIQUE` (`numero_historia_clinica`),
  UNIQUE KEY `id_dni_UNIQUE` (`id_documento`),
  KEY `persona_responsable_idx` (`id_persona_responsable`),
  KEY `paciente_obra_social_idx` (`id_obra_social`),
  KEY `paciente_nacionalidad_idx` (`id_nacionalidad`),
  KEY `persona_sexo_idx` (`id_sexo`),
  KEY `persona_usuario_idx` (`id_usuario`),
  KEY `paciente_estado_civil_idx` (`id_estado_civil`),
  CONSTRAINT `paciente_documento` FOREIGN KEY (`id_documento`) REFERENCES `documentos` (`id_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paciente_estado_civil` FOREIGN KEY (`id_estado_civil`) REFERENCES `estados_civil` (`id_estado_civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paciente_nacionalidad` FOREIGN KEY (`id_nacionalidad`) REFERENCES `paises` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paciente_obra_social` FOREIGN KEY (`id_obra_social`) REFERENCES `obra_social` (`id_obra_social`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `persona_responsable` FOREIGN KEY (`id_persona_responsable`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `persona_sexo` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `persona_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,NULL,1,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'massa',NULL),(2,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'paz',NULL),(3,NULL,3,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'el demo',NULL);
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
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `descripcion_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexo` (
  `id_sexo` int(11) NOT NULL,
  `descripcion_sexo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `usuario_rol_idx` (`id_rol`),
  CONSTRAINT `usuario_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hospitales'
--
/*!50003 DROP PROCEDURE IF EXISTS `log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `log`(msg VARCHAR(255))
BEGIN
    insert into logtable select 0, msg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `log_msg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `log_msg`(msg VARCHAR(255))
BEGIN
    insert into logtable select 0, msg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrarTurnosDisponibles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarTurnosDisponibles`(especialidad_p int, especialista_p int, inicio_p DATETIME, fin_p DATETIME, oficina_p INT)
BEGIN

	DECLARE done INT DEFAULT FALSE;

	DECLARE c_id_horario_atencion INT;
    DECLARE c_id_especialista, c_id_oficina,c_id_dia,c_id_especialidad INT;
    DECLARE c_horario_inicio, c_horario_fin,c_duracion_turnos TIME;
    
	DECLARE cur1 CURSOR FOR 
		SELECT id_horario_atencion,id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad
		FROM horarios_atencion 
		WHERE (horario_inicio < TIME(fin_p) OR horario_fin > TIME(inicio_p))
            AND id_especialidad = especialidad_p;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
	call log_msg( concat('cant h_a: ', (SELECT COUNT( DISTINCT id_horario_atencion)
										FROM horarios_atencion 
										WHERE (horario_inicio < TIME(fin_p) OR horario_fin > TIME(inicio_p))
										AND id_especialidad = especialidad_p)
    ));
    
    DROP TABLE IF EXISTS turnos_pedidos;
	CREATE TEMPORARY TABLE turnos_pedidos (
	  `id_turno` INT NOT NULL,
	  `id_consultorio` INT NOT NULL,
	  `id_especialidad` INT NOT NULL,
	  `id_especialista` INT NOT NULL,
	  `id_paciente` INT NOT NULL,
	  `fecha_comienzo` DATETIME NOT NULL,
	  `fecha_finalizacion` DATETIME NOT NULL,
      `id_oficina` INT NOT NULL,
	  PRIMARY KEY (`id_turno`))
	ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8;

	DROP TABLE IF EXISTS turnos_disponibles;
	CREATE TEMPORARY TABLE turnos_disponibles (
	  `id_turno` INT NOT NULL,
	  `id_consultorio` INT NOT NULL,
	  `id_especialidad` INT NOT NULL,
	  `id_especialista` INT NOT NULL,
	  `fecha_comienzo` DATETIME NOT NULL,
	  `fecha_finalizacion` DATETIME NOT NULL,
	  PRIMARY KEY (`id_turno`))
	ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8;

	INSERT INTO turnos_pedidos
	SELECT t.id_turno, t.id_consultorio, t.id_especialidad, t.id_especialista, t.id_paciente, t.fecha_comienzo, t.fecha_finalizacion, c.id_oficina
    FROM turnos t JOIN consultorios c ON (c.id_consultorio = t.id_consultorio)
	WHERE 
		t.id_especialidad = especialidad_p
        AND (
			(t.fecha_comienzo BETWEEN inicio_p AND fin_p) OR
			(t.fecha_finalizacion BETWEEN inicio_p AND fin_p) OR
            (t.fecha_comienzo < inicio_p AND t.fecha_finalizacion > fin_p)
        );

    IF especialista_p IS NOT NULL THEN
    
		DELETE FROM turnos_pedidos
        WHERE turnos_pedidos.id_especialista != especialista_p;
		
    END IF;

	SET @id_turno = 1;

	OPEN cur1;
	read_loop: LOOP    
    FETCH cur1 INTO c_id_horario_atencion,c_id_especialista,c_id_oficina,c_horario_inicio,c_horario_fin,c_id_dia,c_duracion_turnos,c_id_especialidad ;
		
        IF done THEN
		  LEAVE read_loop;
		END IF;
        
        IF ( TIME(inicio_p) > c_horario_inicio ) THEN
			SET @horario_actual = c_horario_inicio;
            WHILE ( TIME(inicio_p) > @horario_actual )
            DO
				SET @horario_actual = ADDTIME(@horario_actual,c_duracion_turnos);
            END WHILE;
            
        ELSE
            SET @horario_actual = c_horario_inicio;
        END IF;
                
        SET @fecha_actual = DATE(inicio_p);
        
        WHILE ( (SELECT dayofweek(@fecha_actual)) != c_id_dia )
        DO
        
			SET @fecha_actual =  DATE_ADD(@fecha_actual, INTERVAL 1 DAY);
            
        END WHILE;
        
        WHILE ( @fecha_actual <= DATE(fin_p))
        DO
        
			WHILE ( LEAST(c_horario_fin,TIME(fin_p)) > @horario_actual  )
			DO
				
                call log_msg( concat('c_horario_fin : ', c_horario_fin, '@horario_actual: ',@horario_actual) );

				SET @cantidad_consultorios_totales = (SELECT COUNT(id_consultorio) 
														FROM consultorios 
                                                        WHERE id_oficina = c_id_oficina);
			
				SET @fecha_y_horario_actual = STR_TO_DATE(CONCAT(@fecha_actual, ' ', @horario_actual), '%Y-%m-%d %H:%i:%s');
                SET @fecha_y_horario_fin_turno = STR_TO_DATE(CONCAT(@fecha_actual, ' ', ADDTIME(@horario_actual,c_duracion_turnos)), '%Y-%m-%d %H:%i:%s');
     
				SET @cantidad_consultorios_ocupados_ese_intervalo = ( 

					SELECT COUNT( DISTINCT t.id_consultorio)
					FROM turnos_pedidos t
                    WHERE 						
						#(t.fecha_comienzo BETWEEN @fecha_y_horario_actual  AND @fecha_y_horario_fin_turno ) OR
                        #(t.fecha_finalizacion BETWEEN @fecha_y_horario_actual  AND @fecha_y_horario_fin_turno ) OR
                        
                        (t.fecha_comienzo = @fecha_y_horario_actual ) 
                        #(t.fecha_comienzo <= @fecha_y_horario_actual AND t.fecha_finalizacion  > @fecha_y_horario_actual ) OR
                        #(t.fecha_comienzo > @fecha_y_horario_actual AND t.fecha_comienzo > @fecha_y_horario_fin_turno  )
                        #(t.fecha_comienzo < @fecha_y_horario_actual AND t.fecha_finalizacion >= @fecha_y_horario_fin_turno ) OR
                        #(t.fecha_comienzo > @fecha_y_horario_actual AND t.fecha_comienzo < @fecha_y_horario_fin_turno ) 
						#(t.fecha_finalizacion > @fecha_y_horario_actual AND t.fecha_finalizacion < @fecha_y_horario_fin_turno) OR
						#(t.fecha_comienzo < @fecha_y_horario_actual  AND t.fecha_finalizacion >= @fecha_y_horario_actual) OR 
                        #(t.fecha_comienzo >= @fecha_y_horario_actual  AND t.fecha_comienzo < @fecha_y_horario_fin_turno ) 
                        #(t.fecha_comienzo <= @fecha_y_horario_actual  AND t.fecha_finalizacion >= @fecha_y_horario_fin_turno )
				);
    
						
                call log_msg( concat(' cant consultorio ocupados ese intervalo: ', @cantidad_consultorios_ocupados_ese_intervalo, 
									 ' @fecha_actual: ', @fecha_actual,
									 ' @horario_actual: ',@horario_actual) );
    
                    #WHERE  DATE(t.fecha_comienzo) = @fecha_actual
                        #AND TIME(t.fecha_comienzo) >= @horario_actual
						#AND TIME(t.fecha_finalizacion) < ADDTIME( TIME(t.fecha_comienzo), c_duracion_turnos)
                
                
				IF (@cantidad_consultorios_totales > @cantidad_consultorios_ocupados_ese_intervalo AND c_id_especialista NOT IN (SELECT DISTINCT t.id_especialista FROM turnos_pedidos t WHERE (t.fecha_comienzo = @fecha_y_horario_actual ) )) THEN
                    
                    SET @fecha_comienzo = STR_TO_DATE(CONCAT(@fecha_actual, ' ', @horario_actual), '%Y-%m-%d %H:%i:%s');#ADDTIME(@fecha_actual,@horario_actual );
                    SET @fecha_finalizacion = ADDTIME(@fecha_comienzo,c_duracion_turnos);#STR_TO_DATE(CONCAT(@fecha_comienzo, ' ', c_duracion_turnos), '%Y-%m-%d %H:%i:%s');#ADDTIME(@fecha_comienzo , c_duracion_turnos );
                    
                    
                    SET @consultorio_libre = (
							SELECT c.id_consultorio
							FROM consultorios c
                            WHERE c.id_oficina = c_id_oficina 
								AND c.id_consultorio NOT IN (
									SELECT DISTINCT t.id_consultorio
									FROM turnos_pedidos t
									WHERE (
                                    #t.fecha_comienzo = @fecha_y_horario_actual AND t.fecha_finalizacion = @fecha_y_horario_fin_turno 
										(t.fecha_comienzo = @fecha_y_horario_actual ) 
                                    )
                                )
                            LIMIT 1				
					);
    
					call log_msg( concat(
                        ' @horario_actual: ', @horario_actual,
                        ' @fecha_actual: ',@fecha_actual,
                        ' @fecha_y_horario_actual: ', @fecha_y_horario_actual,
                        ' @fecha_y_horario_fin_turno: ', @fecha_y_horario_fin_turno,
                        ' @fecha_comienzo: ',@fecha_comienzo,
                        ' @fecha_finalizacion: ',@fecha_finalizacion,
                        ' @consultorio_libre: ',@consultorio_libre 
                    ));
    
					INSERT INTO turnos_disponibles (id_turno, id_consultorio, id_especialidad, id_especialista, fecha_comienzo, fecha_finalizacion)
					VALUES (@id_turno, @consultorio_libre, c_id_especialidad, c_id_especialista, @fecha_comienzo , @fecha_finalizacion );

                END IF;
                
                SET @horario_actual = ADDTIME(@horario_actual , c_duracion_turnos);
				SET @id_turno = @id_turno + 1; 
			
			END WHILE;
		
			SET @fecha_actual = DATE_ADD(@fecha_actual, INTERVAL 7 DAY);
        
        END WHILE;
        
	END LOOP;

	CLOSE cur1;

	IF ( especialista_p IS NOT NULL) THEN
		DELETE FROM turnos_disponibles WHERE id_especialista != especialista_p;
    END IF;

  
	IF ( oficina_p IS NOT NULL) THEN
		DELETE FROM turnos_disponibles WHERE id_consultorio NOT IN (SELECT distinct id_consultorio FROM consultorios WHERE id_oficina = oficina_p);
    END IF;
  
	SELECT * FROM turnos_disponibles order by fecha_comienzo;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14 11:45:11
