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
  `id_consultorio` int(11) NOT NULL,
  `id_oficina` int(11) NOT NULL,
  `descripcion_consultorio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_consultorio`),
  KEY `oficinas_idx` (`id_oficina`),
  CONSTRAINT `oficinas` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultorios`
--

LOCK TABLES `consultorios` WRITE;
/*!40000 ALTER TABLE `consultorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dias_semana`
--

DROP TABLE IF EXISTS `dias_semana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dias_semana` (
  `id_dia_semana` int(11) NOT NULL,
  `dia` varchar(45) NOT NULL,
  PRIMARY KEY (`id_dia_semana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias_semana`
--

LOCK TABLES `dias_semana` WRITE;
/*!40000 ALTER TABLE `dias_semana` DISABLE KEYS */;
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
  `numero_documento` varchar(45) NOT NULL,
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
  `id_domicilio` int(11) NOT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `altura` varchar(45) DEFAULT NULL,
  `distrito` varchar(45) DEFAULT NULL,
  `barrio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_domicilio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilios`
--

LOCK TABLES `domicilios` WRITE;
/*!40000 ALTER TABLE `domicilios` DISABLE KEYS */;
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
  `id_especialidad_x_especialista` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `id_especialista` int(11) NOT NULL,
  PRIMARY KEY (`id_especialidad_x_especialista`),
  KEY `a_idx` (`id_especialidad`),
  KEY `b_idx` (`id_especialista`),
  KEY `fk_especialidades_idx` (`id_especialidad`),
  KEY `fk_especialista_idx` (`id_especialista`),
  CONSTRAINT `fk_especialidades` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especialista` FOREIGN KEY (`id_especialista`) REFERENCES `especialistas` (`id_especialista`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades_x_especialista`
--

LOCK TABLES `especialidades_x_especialista` WRITE;
/*!40000 ALTER TABLE `especialidades_x_especialista` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialistas`
--

LOCK TABLES `especialistas` WRITE;
/*!40000 ALTER TABLE `especialistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_civil`
--

DROP TABLE IF EXISTS `estados_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_civil` (
  `id_estado_civil` int(11) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_civil`
--

LOCK TABLES `estados_civil` WRITE;
/*!40000 ALTER TABLE `estados_civil` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios_atencion`
--

DROP TABLE IF EXISTS `horarios_atencion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios_atencion` (
  `id_horario_atencion` int(11) NOT NULL,
  `id_especialista` int(11) NOT NULL,
  `id_oficina` int(11) NOT NULL,
  `horario_inicio` date NOT NULL,
  `horario_fin` date NOT NULL,
  `id_dia` int(11) NOT NULL,
  `duracion_turnos` time NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  PRIMARY KEY (`id_horario_atencion`),
  KEY `fk_especialista_en_ha_idx` (`id_especialista`),
  KEY `fk_dia_idx` (`id_dia`),
  KEY `fk_especialidad_ha_idx` (`id_especialidad`),
  KEY `fk_oficina_ha_idx` (`id_oficina`),
  CONSTRAINT `fk_dia` FOREIGN KEY (`id_dia`) REFERENCES `dias_semana` (`id_dia_semana`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especialidad_ha` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especialista_ha` FOREIGN KEY (`id_especialista`) REFERENCES `especialistas` (`id_especialista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_oficina_ha` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios_atencion`
--

LOCK TABLES `horarios_atencion` WRITE;
/*!40000 ALTER TABLE `horarios_atencion` DISABLE KEYS */;
/*!40000 ALTER TABLE `horarios_atencion` ENABLE KEYS */;
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
  `identificador` varchar(45) DEFAULT NULL,
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
  `id_oficina` int(11) NOT NULL,
  `id_domicilio` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_oficina`),
  KEY `domicilio_oficina_idx` (`id_domicilio`),
  CONSTRAINT `oficinas_ha` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilios` (`id_domicilio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
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
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `id_paciente_UNIQUE` (`id_paciente`),
  UNIQUE KEY `numero_historia_clinica_UNIQUE` (`numero_historia_clinica`),
  UNIQUE KEY `id_dni_UNIQUE` (`id_documento`),
  KEY `persona_responsable_idx` (`id_persona_responsable`),
  CONSTRAINT `persona_responsable` FOREIGN KEY (`id_persona_responsable`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
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
  `id_turno` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_especialista` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `fecha_comienzo` datetime NOT NULL,
  `fecha_finalizacion` datetime NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-28 17:05:44
