-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area` (
  `idarea` varchar(40) NOT NULL,
  PRIMARY KEY (`idarea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `nombrecargo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nomcategoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `idpersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `fkclientepersona_idx` (`idpersona`),
  CONSTRAINT `fkclientepersona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departamento` (
  `iddepartamento` varchar(2) NOT NULL,
  `nomdepartamento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES ('01','Amazonas'),('02','Ancash'),('03','Apurimac'),('04','Arequipa'),('05','Ayacucho'),('06','Cajamarca'),('07','Callao'),('08','Cusco'),('09','Huancavelica'),('10','Huanuco'),('11','Ica'),('12','Junin'),('13','La Libertad'),('14','Lambayeque'),('15','Lima'),('16','Loreto'),('17','Madre de Dios'),('18','Moquegua'),('19','Pasco'),('20','Piura'),('21','Puno'),('22','San Martin'),('23','Tacna'),('24','Tumbes'),('25','Ucayali'),('99','Extranjero');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle` (
  `iddetalle` int(11) NOT NULL,
  `nomdetalle` varchar(100) DEFAULT NULL,
  `idpaginas` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddetalle`),
  KEY `fkdetallepagina_idx` (`idpaginas`),
  CONSTRAINT `fkdetallepagina` FOREIGN KEY (`idpaginas`) REFERENCES `paginas` (`idpaginas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_estado`
--

DROP TABLE IF EXISTS `detalle_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_estado` (
  `iddetalle_estado` varchar(45) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idestado` int(11) DEFAULT NULL,
  `incidencias_idincidencias` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle_estado`,`incidencias_idincidencias`),
  KEY `fk_detalleestadoestado_idx` (`idestado`) /*!80000 INVISIBLE */,
  KEY `fk_detalle_estado_incidencias1_idx` (`incidencias_idincidencias`),
  CONSTRAINT `fk_detalle_estado_incidencias1` FOREIGN KEY (`incidencias_idincidencias`) REFERENCES `incidencias` (`idincidencias`),
  CONSTRAINT `fk_detalleestadoestado` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_estado`
--

LOCK TABLES `detalle_estado` WRITE;
/*!40000 ALTER TABLE `detalle_estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_incidencia`
--

DROP TABLE IF EXISTS `detalle_incidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_incidencia` (
  `iddetalle_incidencia` varchar(45) NOT NULL,
  `nomarea` varchar(50) DEFAULT NULL,
  `incidencias_idincidencias` int(11) NOT NULL,
  `areaorigen` varchar(45) DEFAULT NULL,
  `areadestino` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_incidencia`,`incidencias_idincidencias`),
  KEY `fk_detalle_incidencia_incidencias1_idx` (`incidencias_idincidencias`),
  KEY `fk_dettalle_incidencia_area_idx` (`areaorigen`),
  KEY `fk_detalle_incidencia_area_idx` (`areadestino`),
  CONSTRAINT `fk_detalle_incidencia_area` FOREIGN KEY (`areadestino`) REFERENCES `area` (`idarea`),
  CONSTRAINT `fk_detalle_incidencia_incidencias1` FOREIGN KEY (`incidencias_idincidencias`) REFERENCES `incidencias` (`idincidencias`),
  CONSTRAINT `fk_dettalle_incidencia_area` FOREIGN KEY (`areaorigen`) REFERENCES `area` (`idarea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_incidencia`
--

LOCK TABLES `detalle_incidencia` WRITE;
/*!40000 ALTER TABLE `detalle_incidencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_incidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `distrito` (
  `iddistrito` varchar(2) NOT NULL,
  `idprovincia` varchar(2) NOT NULL,
  `iddepartamento` varchar(2) NOT NULL,
  `nomdistrito` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`iddistrito`,`idprovincia`,`iddepartamento`),
  KEY `fkpersonaprovincia` (`idprovincia`,`iddepartamento`),
  CONSTRAINT `fkpersonaprovincia` FOREIGN KEY (`idprovincia`, `iddepartamento`) REFERENCES `provincia` (`idprovincia`, `iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES ('01','01','01','Chachapoyas'),('01','01','02','Huaraz'),('01','01','03','Abancay'),('01','01','04','Arequipa'),('01','01','05','Ayacucho'),('01','01','06','Cajamarca'),('01','01','07','Callao'),('01','01','08','Cusco'),('01','01','09','Huancavelica'),('01','01','10','Huanuco'),('01','01','11','Ica'),('01','01','12','Huancayo'),('01','01','13','Trujillo'),('01','01','14','Chiclayo'),('01','01','15','Lima'),('01','01','16','Iquitos'),('01','01','17','Tambopata'),('01','01','18','Moquegua'),('01','01','19','Chaupimarca'),('01','01','20','Piura'),('01','01','21','Puno'),('01','01','22','Moyobamba'),('01','01','23','Tacna'),('01','01','24','Tumbes'),('01','01','25','Callaria'),('01','02','01','Bagua'),('01','02','02','Aija'),('01','02','03','Andahuaylas'),('01','02','04','Camana'),('01','02','05','Cangallo'),('01','02','06','Cajabamba'),('01','02','08','Acomayo'),('01','02','09','Acobamba'),('01','02','10','Ambo'),('01','02','11','Chincha Alta'),('01','02','12','Concepcion'),('01','02','13','Ascope'),('01','02','14','Ferre�afe'),('01','02','15','Barranca'),('01','02','16','Yurimaguas'),('01','02','17','Manu'),('01','02','18','Omate'),('01','02','19','Yanahuanca'),('01','02','20','Ayabaca'),('01','02','21','Azangaro'),('01','02','22','Bellavista'),('01','02','23','Candarave'),('01','02','24','Zorritos'),('01','02','25','Raymondi'),('01','03','01','Jumbilla'),('01','03','02','Llamellin'),('01','03','03','Antabamba'),('01','03','04','Caraveli'),('01','03','05','Sancos'),('01','03','06','Celendin'),('01','03','08','Anta'),('01','03','09','Lircay'),('01','03','10','La Union'),('01','03','11','Nazca'),('01','03','12','Chanchamayo'),('01','03','13','Bolivar'),('01','03','14','Lambayeque'),('01','03','15','Cajatambo'),('01','03','16','Nauta'),('01','03','17','I�apari'),('01','03','18','Ilo'),('01','03','19','Oxapampa'),('01','03','20','Huancabamba'),('01','03','21','Macusani'),('01','03','22','San Jose de Sisa'),('01','03','23','Locumba'),('01','03','24','Zarumilla'),('01','03','25','Padre Abad'),('01','04','01','Nieva'),('01','04','02','Chacas'),('01','04','03','Chalhuanca'),('01','04','04','Aplao'),('01','04','05','Huanta'),('01','04','06','Chota'),('01','04','08','Calca'),('01','04','09','Castrovirreyna'),('01','04','10','Huacaybamba'),('01','04','11','Palpa'),('01','04','12','Jauja'),('01','04','13','Chepen'),('01','04','15','Canta'),('01','04','16','Ramon Castilla'),('01','04','20','Chulucanas'),('01','04','21','Juli'),('01','04','22','Saposoa'),('01','04','23','Tarata'),('01','04','25','Purus'),('01','05','01','Lamud'),('01','05','02','Chiquian'),('01','05','03','Tambobamba'),('01','05','04','Chivay'),('01','05','05','San Miguel'),('01','05','06','Contumaza'),('01','05','08','Yanaoca'),('01','05','09','Churcampa'),('01','05','10','Llata'),('01','05','11','Pisco'),('01','05','12','Junin'),('01','05','13','Julcan'),('01','05','15','San Vicente de Ca�ete'),('01','05','16','Requena'),('01','05','20','Paita'),('01','05','21','Ilave'),('01','05','22','Lamas'),('01','06','01','San Nicolas'),('01','06','02','Carhuaz'),('01','06','03','Chincheros'),('01','06','04','Chuquibamba'),('01','06','05','Puquio'),('01','06','06','Cutervo'),('01','06','08','Sicuani'),('01','06','09','Huaytara'),('01','06','10','Rupa-Rupa'),('01','06','12','Satipo'),('01','06','13','Otuzco'),('01','06','15','Huaral'),('01','06','16','Contamana'),('01','06','20','Sullana'),('01','06','21','Huancane'),('01','06','22','Juanjui'),('01','07','01','Bagua Grande'),('01','07','02','San Luis'),('01','07','03','Chuquibambilla'),('01','07','04','Mollendo'),('01','07','05','Coracora'),('01','07','06','Bambamarca'),('01','07','08','Santo Tomas'),('01','07','09','Pampas'),('01','07','10','Huacrachuco'),('01','07','12','Tarma'),('01','07','13','San Pedro de Lloc'),('01','07','15','Matucana'),('01','07','16','Barranca'),('01','07','20','Pari�as'),('01','07','21','Lampa'),('01','07','22','Picota'),('01','08','02','Casma'),('01','08','04','Cotahuasi'),('01','08','05','Pausa'),('01','08','06','Jaen'),('01','08','08','Espinar'),('01','08','10','Panao'),('01','08','12','La Oroya'),('01','08','13','Tayabamba'),('01','08','15','Huacho'),('01','08','16','Putumayo'),('01','08','20','Sechura'),('01','08','21','Ayaviri'),('01','08','22','Rioja'),('01','09','02','Corongo'),('01','09','05','Querobamba'),('01','09','06','San Ignacio'),('01','09','08','Santa Ana'),('01','09','10','Puerto Inca'),('01','09','12','Chupaca'),('01','09','13','Huamachuco'),('01','09','15','Oyon'),('01','09','21','Moho'),('01','09','22','Tarapoto'),('01','10','02','Huari'),('01','10','05','Huancapi'),('01','10','06','Pedro Galvez'),('01','10','08','Paruro'),('01','10','10','Jesus'),('01','10','13','Santiago de Chuco'),('01','10','15','Yauyos'),('01','10','21','Putina'),('01','10','22','Tocache'),('01','11','02','Huarmey'),('01','11','05','Vilcas Huaman'),('01','11','06','San Miguel'),('01','11','08','Paucartambo'),('01','11','10','Chavinillo'),('01','11','13','Cascas'),('01','11','21','Juliaca'),('01','12','02','Caraz'),('01','12','06','San Pablo'),('01','12','08','Urcos'),('01','12','13','Viru'),('01','12','21','Sandia'),('01','13','02','Piscobamba'),('01','13','06','Santa Cruz'),('01','13','08','Urubamba'),('01','13','21','Yunguyo'),('01','14','02','Ocros'),('01','15','02','Cabana'),('01','16','02','Pomabamba'),('01','17','02','Recuay'),('01','18','02','Chimbote'),('01','19','02','Sihuas'),('01','20','02','Yungay'),('02','01','01','Asuncion'),('02','01','02','Cochabamba'),('02','01','03','Chacoche'),('02','01','04','Alto Selva Alegre'),('02','01','05','Acocro'),('02','01','06','Asuncion'),('02','01','07','Bellavista'),('02','01','08','Ccorca'),('02','01','09','Acobambilla'),('02','01','10','Amarilis'),('02','01','11','La Tingui�a'),('02','01','13','El Porvenir'),('02','01','14','Chongoyape'),('02','01','15','Ancon'),('02','01','16','Alto Nanay'),('02','01','17','Inambari'),('02','01','18','Carumas'),('02','01','19','Huachon'),('02','01','21','Acora'),('02','01','22','Calzada'),('02','01','23','Alto de la Alianza'),('02','01','24','Corrales'),('02','01','25','Campoverde'),('02','02','01','Aramango'),('02','02','02','Coris'),('02','02','03','Andarapa'),('02','02','04','Jose Maria Quimper'),('02','02','05','Chuschi'),('02','02','06','Cachachi'),('02','02','08','Acopia'),('02','02','09','Andabamba'),('02','02','10','Cayna'),('02','02','11','Alto Laran'),('02','02','12','Aco'),('02','02','13','Chicama'),('02','02','14','Ca�aris'),('02','02','15','Paramonga'),('02','02','16','Balsapuerto'),('02','02','17','Fitzcarrald'),('02','02','18','Chojata'),('02','02','19','Chacayan'),('02','02','20','Frias'),('02','02','21','Achaya'),('02','02','22','Alto Biavo'),('02','02','23','Cairani'),('02','02','24','Casitas'),('02','02','25','Sepahua'),('02','03','01','Chisquilla'),('02','03','02','Aczo'),('02','03','03','El Oro'),('02','03','04','Acari'),('02','03','05','Carapo'),('02','03','06','Chumuch'),('02','03','08','Ancahuasi'),('02','03','09','Anchonga'),('02','03','11','Changuillo'),('02','03','12','Perene'),('02','03','13','Bambamarca'),('02','03','14','Chochope'),('02','03','15','Copa'),('02','03','16','Parinari'),('02','03','17','Iberia'),('02','03','18','El Algarrobal'),('02','03','19','Chontabamba'),('02','03','20','Canchaque'),('02','03','21','Ajoyani'),('02','03','22','Agua Blanca'),('02','03','23','Ilabaya'),('02','03','24','Aguas Verdes'),('02','03','25','Irazola'),('02','04','01','El Cenepa'),('02','04','02','Acochaca'),('02','04','03','Capaya'),('02','04','04','Andagua'),('02','04','05','Ayahuanco'),('02','04','06','Anguia'),('02','04','08','Coya'),('02','04','09','Arma'),('02','04','10','Canchabamba'),('02','04','11','Llipata'),('02','04','12','Acolla'),('02','04','13','Pacanga'),('02','04','15','Arahuay'),('02','04','16','Pebas'),('02','04','20','Buenos Aires'),('02','04','21','Desaguadero'),('02','04','22','Alto Saposoa'),('02','04','23','Chucatamani'),('02','05','01','Camporredondo'),('02','05','02','Abelardo Pardo Lezameta'),('02','05','03','Cotabambas'),('02','05','04','Achoma'),('02','05','05','Anco'),('02','05','06','Chilete'),('02','05','08','Checca'),('02','05','09','Anco'),('02','05','10','Arancay'),('02','05','11','Huancano'),('02','05','12','Carhuamayo'),('02','05','13','Calamarca'),('02','05','15','Asia'),('02','05','16','Alto Tapiche'),('02','05','20','Amotape'),('02','05','21','Capaso'),('02','05','22','Alonso de Alvarado'),('02','06','01','Chirimoto'),('02','06','02','Acopampa'),('02','06','03','Anco-Huallo'),('02','06','04','Andaray'),('02','06','05','Aucara'),('02','06','06','Callayuc'),('02','06','08','Checacupe'),('02','06','09','Ayavi'),('02','06','10','Daniel Alomias Robles'),('02','06','12','Coviriali'),('02','06','13','Agallpampa'),('02','06','15','Atavillos Alto'),('02','06','16','Inahuaya'),('02','06','20','Bellavista'),('02','06','21','Cojata'),('02','06','22','Campanilla'),('02','07','01','Cajaruro'),('02','07','02','San Nicolas'),('02','07','03','Curpahuasi'),('02','07','04','Cocachacra'),('02','07','05','Chumpi'),('02','07','06','Chugur'),('02','07','08','Capacmarca'),('02','07','09','Acostambo'),('02','07','10','Cholon'),('02','07','12','Acobamba'),('02','07','13','Guadalupe'),('02','07','15','Antioquia'),('02','07','16','Cahuapanas'),('02','07','20','El Alto'),('02','07','21','Cabanilla'),('02','07','22','Buenos Aires'),('02','08','02','Buena Vista Alta'),('02','08','04','Alca'),('02','08','05','Colta'),('02','08','06','Bellavista'),('02','08','08','Condoroma'),('02','08','10','Chaglla'),('02','08','12','Chacapalpa'),('02','08','13','Buldibuyo'),('02','08','15','Ambar'),('02','08','16','Rosa Panduro'),('02','08','20','Bellavista de la Union'),('02','08','21','Antauta'),('02','08','22','Awajun'),('02','09','02','Aco'),('02','09','05','Belen'),('02','09','06','Chirinos'),('02','09','08','Echarate'),('02','09','10','Codo del Pozuzo'),('02','09','12','Ahuac'),('02','09','13','Chugay'),('02','09','15','Andajes'),('02','09','21','Conima'),('02','09','22','Alberto Leveau'),('02','10','02','Anra'),('02','10','05','Alcamenca'),('02','10','06','Chancay'),('02','10','08','Accha'),('02','10','10','Ba�os'),('02','10','13','Angasmarca'),('02','10','15','Alis'),('02','10','21','Ananea'),('02','10','22','Nuevo Progreso'),('02','11','02','Cochapeti'),('02','11','05','Accomarca'),('02','11','06','Bolivar'),('02','11','08','Caicay'),('02','11','10','Cahuac'),('02','11','13','Lucma'),('02','11','21','Cabana'),('02','12','02','Huallanca'),('02','12','06','San Bernardino'),('02','12','08','Andahuaylillas'),('02','12','13','Chao'),('02','12','21','Cuyocuyo'),('02','13','02','Casca'),('02','13','06','Andabamba'),('02','13','08','Chinchero'),('02','13','21','Anapia'),('02','14','02','Acas'),('02','15','02','Bolognesi'),('02','16','02','Huayllan'),('02','17','02','Catac'),('02','18','02','Caceres del Peru'),('02','19','02','Acobamba'),('02','20','02','Cascapara'),('03','01','01','Balsas'),('03','01','02','Colcabamba'),('03','01','03','Circa'),('03','01','04','Cayma'),('03','01','05','Acos Vinchos'),('03','01','06','Chetilla'),('03','01','07','Carmen de la Legua Reynoso'),('03','01','08','Poroy'),('03','01','09','Acoria'),('03','01','10','Chinchao'),('03','01','11','Los Aquijes'),('03','01','13','Florencia de Mora'),('03','01','14','Eten'),('03','01','15','Ate'),('03','01','16','Fernando Lores'),('03','01','17','Las Piedras'),('03','01','18','Cuchumbaya'),('03','01','19','Huariaca'),('03','01','21','Amantani'),('03','01','22','Habana'),('03','01','23','Calana'),('03','01','24','La Cruz'),('03','01','25','Iparia'),('03','02','01','Copallin'),('03','02','02','Huacllan'),('03','02','03','Chiara'),('03','02','04','Mariano Nicolas Valcarcel'),('03','02','05','Los Morochucos'),('03','02','06','Condebamba'),('03','02','08','Acos'),('03','02','09','Anta'),('03','02','10','Colpas'),('03','02','11','Chavin'),('03','02','12','Andamarca'),('03','02','13','Chocope'),('03','02','14','Incahuasi'),('03','02','15','Pativilca'),('03','02','17','Madre de Dios'),('03','02','18','Coalaque'),('03','02','19','Goyllarisquizga'),('03','02','20','Jilili'),('03','02','21','Arapa'),('03','02','22','Bajo Biavo'),('03','02','23','Camilaca'),('03','02','24','Canoas de Punta Sal'),('03','02','25','Tahuania'),('03','03','01','Churuja'),('03','03','02','Chaccho'),('03','03','03','Huaquirca'),('03','03','04','Atico'),('03','03','05','Sacsamarca'),('03','03','06','Cortegana'),('03','03','08','Cachimayo'),('03','03','09','Callanmarca'),('03','03','11','El Ingenio'),('03','03','12','Pichanaqui'),('03','03','13','Condormarca'),('03','03','14','Illimo'),('03','03','15','Gorgor'),('03','03','16','Tigre'),('03','03','17','Tahuamanu'),('03','03','18','Pacocha'),('03','03','19','Huancabamba'),('03','03','20','El Carmen de la Frontera'),('03','03','21','Ayapata'),('03','03','22','San Martin'),('03','03','23','Ite'),('03','03','24','Matapalo'),('03','03','25','Curimana'),('03','04','01','Rio Santiago'),('03','04','03','Caraybamba'),('03','04','04','Ayo'),('03','04','05','Huamanguilla'),('03','04','06','Chadin'),('03','04','08','Lamay'),('03','04','09','Aurahua'),('03','04','10','Cochabamba'),('03','04','11','Rio Grande'),('03','04','12','Apata'),('03','04','13','Pueblo Nuevo'),('03','04','15','Huamantanga'),('03','04','16','Yavari'),('03','04','20','Chalaco'),('03','04','21','Huacullani'),('03','04','22','El Eslabon'),('03','04','23','Estique'),('03','05','01','Cocabamba'),('03','05','02','Antonio Raymondi'),('03','05','03','Coyllurqui'),('03','05','04','Cabanaconde'),('03','05','05','Ayna'),('03','05','06','Cupisnique'),('03','05','08','Kunturkanki'),('03','05','09','Chinchihuasi'),('03','05','10','Chavin de Pariarca'),('03','05','11','Humay'),('03','05','12','Ondores'),('03','05','13','Carabamba'),('03','05','15','Calango'),('03','05','16','Capelo'),('03','05','20','Arenal'),('03','05','21','Pilcuyo'),('03','05','22','Barranquita'),('03','06','01','Cochamal'),('03','06','02','Amashca'),('03','06','03','Cocharcas'),('03','06','04','Cayarani'),('03','06','05','Cabana'),('03','06','06','Choros'),('03','06','08','Combapata'),('03','06','09','Cordova'),('03','06','10','Hermilio Valdizan'),('03','06','12','Llaylla'),('03','06','15','Atavillos Bajo'),('03','06','16','Padre Marquez'),('03','06','20','Ignacio Escudero'),('03','06','21','Huatasani'),('03','06','22','Huicungo'),('03','07','01','Cumba'),('03','07','02','Yauya'),('03','07','03','Gamarra'),('03','07','04','Dean Valdivia'),('03','07','05','Coronel Casta�eda'),('03','07','06','Hualgayoc'),('03','07','08','Chamaca'),('03','07','09','Acraquia'),('03','07','10','San Buenaventura'),('03','07','12','Huaricolca'),('03','07','13','Jequetepeque'),('03','07','15','Callahuanca'),('03','07','16','Manseriche'),('03','07','20','La Brea'),('03','07','21','Calapuja'),('03','07','22','Caspisapa'),('03','08','02','Comandante Noel'),('03','08','04','Charcana'),('03','08','05','Corculla'),('03','08','06','Chontali'),('03','08','08','Coporaque'),('03','08','10','Molino'),('03','08','12','Huay-Huay'),('03','08','13','Chillia'),('03','08','15','Caleta de Carquin'),('03','08','16','Teniente Manuel Clavero'),('03','08','20','Bernal'),('03','08','21','Cupi'),('03','08','22','Elias Soplin Vargas'),('03','09','02','Bambas'),('03','09','05','Chalcos'),('03','09','06','Huarango'),('03','09','08','Huayopata'),('03','09','10','Honoria'),('03','09','12','Chongos Bajo'),('03','09','13','Cochorco'),('03','09','15','Caujul'),('03','09','21','Huayrapata'),('03','09','22','Cacatachi'),('03','10','02','Cajay'),('03','10','05','Apongo'),('03','10','06','Eduardo Villanueva'),('03','10','08','Ccapi'),('03','10','10','Jivia'),('03','10','13','Cachicadan'),('03','10','15','Ayauca'),('03','10','21','Pedro Vilca Apaza'),('03','10','22','Polvora'),('03','11','02','Culebras'),('03','11','05','Carhuanca'),('03','11','06','Calquis'),('03','11','08','Challabamba'),('03','11','10','Chacabamba'),('03','11','13','Marmot'),('03','11','21','Cabanillas'),('03','12','02','Huata'),('03','12','06','San Luis'),('03','12','08','Camanti'),('03','12','13','Guadalupito'),('03','12','21','Limbani'),('03','13','02','Eleazar Guzman Barron'),('03','13','06','Catache'),('03','13','08','Huayllabamba'),('03','13','21','Copani'),('03','14','02','Cajamarquilla'),('03','15','02','Conchucos'),('03','16','02','Parobamba'),('03','17','02','Cotaparaco'),('03','18','02','Coishco'),('03','19','02','Alfonso Ugarte'),('03','20','02','Mancos'),('04','01','01','Cheto'),('04','01','02','Huanchay'),('04','01','03','Curahuasi'),('04','01','04','Cerro Colorado'),('04','01','05','Carmen Alto'),('04','01','06','Cospan'),('04','01','07','La Perla'),('04','01','08','San Jeronimo'),('04','01','09','Conayca'),('04','01','10','Churubamba'),('04','01','11','Ocucaje'),('04','01','12','Carhuacallanga'),('04','01','13','Huanchaco'),('04','01','14','Eten Puerto'),('04','01','15','Barranco'),('04','01','16','Indiana'),('04','01','17','Laberinto'),('04','01','18','Samegua'),('04','01','19','Huayllay'),('04','01','20','Castilla'),('04','01','21','Atuncolla'),('04','01','22','Jepelacio'),('04','01','23','Ciudad Nueva'),('04','01','24','Pampas de Hospital'),('04','01','25','Masisea'),('04','02','01','El Parco'),('04','02','02','La Merced'),('04','02','03','Huancarama'),('04','02','04','Mariscal Caceres'),('04','02','05','Maria Parado de Bellido'),('04','02','06','Sitacocha'),('04','02','08','Mosoc Llacta'),('04','02','09','Caja'),('04','02','10','Conchamarca'),('04','02','11','Chincha Baja'),('04','02','12','Chambara'),('04','02','13','Magdalena de Cao'),('04','02','14','Manuel Antonio Mesones Muro'),('04','02','15','Supe'),('04','02','17','Huepetuhe'),('04','02','18','Ichu�a'),('04','02','19','Paucar'),('04','02','20','Lagunas'),('04','02','21','Asillo'),('04','02','22','Huallaga'),('04','02','23','Curibaya'),('04','02','25','Yurua'),('04','03','01','Corosha'),('04','03','02','Chingas'),('04','03','03','Juan Espinoza Medrano'),('04','03','04','Atiquipa'),('04','03','05','Santiago de Lucanamarca'),('04','03','06','Huasmin'),('04','03','08','Chinchaypujio'),('04','03','09','Ccochaccasa'),('04','03','11','Marcona'),('04','03','12','San Luis de Shuaro'),('04','03','13','Longotea'),('04','03','14','Jayanca'),('04','03','15','Huancapon'),('04','03','16','Trompeteros'),('04','03','19','Palcazu'),('04','03','20','Huarmaca'),('04','03','21','Coasa'),('04','03','22','Santa Rosa'),('04','03','24','Papayal'),('04','04','03','Chapimarca'),('04','04','04','Chachas'),('04','04','05','Iguain'),('04','04','06','Chiguirip'),('04','04','08','Lares'),('04','04','09','Capillas'),('04','04','10','Pinra'),('04','04','11','Santa Cruz'),('04','04','12','Ataura'),('04','04','15','Huaros'),('04','04','16','San Pablo'),('04','04','20','La Matanza'),('04','04','21','Kelluyo'),('04','04','22','Piscoyacu'),('04','04','23','Estique-Pampa'),('04','05','01','Colcamar'),('04','05','02','Aquia'),('04','05','03','Haquira'),('04','05','04','Callalli'),('04','05','05','Chilcas'),('04','05','06','Guzmango'),('04','05','08','Langui'),('04','05','09','El Carmen'),('04','05','10','Jacas Grande'),('04','05','11','Independencia'),('04','05','12','Ulcumayo'),('04','05','13','Huaso'),('04','05','15','Cerro Azul'),('04','05','16','Emilio San Martin'),('04','05','20','Colan'),('04','05','21','Santa Rosa'),('04','05','22','Caynarachi'),('04','06','01','Huambo'),('04','06','02','Anta'),('04','06','03','Huaccana'),('04','06','04','Chichas'),('04','06','05','Carmen Salcedo'),('04','06','06','Cujillo'),('04','06','08','Marangani'),('04','06','09','Huayacundo Arma'),('04','06','10','Jose Crespo y Castillo'),('04','06','12','Mazamari'),('04','06','13','Charat'),('04','06','15','Aucallama'),('04','06','16','Pampa Hermosa'),('04','06','20','Lancones'),('04','06','21','Inchupalla'),('04','06','22','Pachiza'),('04','07','01','El Milagro'),('04','07','03','Huayllati'),('04','07','04','Islay'),('04','07','05','Pacapausa'),('04','07','08','Colquemarca'),('04','07','09','Ahuaycha'),('04','07','12','Huasahuasi'),('04','07','13','Pacasmayo'),('04','07','15','Carampoma'),('04','07','16','Morona'),('04','07','20','Lobitos'),('04','07','21','Nicasio'),('04','07','22','Pilluana'),('04','08','02','Yautan'),('04','08','04','Huaynacotas'),('04','08','05','Lampa'),('04','08','06','Colasay'),('04','08','08','Ocoruro'),('04','08','10','Umari'),('04','08','12','Marcapomacocha'),('04','08','13','Huancaspata'),('04','08','15','Checras'),('04','08','16','Yaguas'),('04','08','20','Cristo Nos Valga'),('04','08','21','Llalli'),('04','08','22','Nueva Cajamarca'),('04','09','02','Cusca'),('04','09','05','Chilcayoc'),('04','09','06','La Coipa'),('04','09','08','Maranura'),('04','09','10','Tournavista'),('04','09','12','Huachac'),('04','09','13','Curgos'),('04','09','15','Cochamarca'),('04','09','21','Tilali'),('04','09','22','Chazuta'),('04','10','02','Chavin de Huantar'),('04','10','05','Asquipata'),('04','10','06','Gregorio Pita'),('04','10','08','Colcha'),('04','10','10','Queropalca'),('04','10','13','Mollebamba'),('04','10','15','Ayaviri'),('04','10','21','Quilcapuncu'),('04','10','22','Shunte'),('04','11','02','Huayan'),('04','11','05','Concepcion'),('04','11','06','Catilluc'),('04','11','08','Colquepata'),('04','11','10','Chupan'),('04','11','13','Sayapullo'),('04','11','21','Caracoto'),('04','12','02','Huaylas'),('04','12','06','Tumbaden'),('04','12','08','Ccarhuayo'),('04','12','21','Patambuco'),('04','13','02','Fidel Olivas Escudero'),('04','13','06','Chancayba�os'),('04','13','08','Machupicchu'),('04','13','21','Cuturapi'),('04','14','02','Carhuapampa'),('04','15','02','Huacaschuque'),('04','16','02','Quinuabamba'),('04','17','02','Huayllapampa'),('04','18','02','Macate'),('04','19','02','Cashapampa'),('04','20','02','Matacoto'),('05','01','01','Chiliquin'),('05','01','02','Independencia'),('05','01','03','Huanipaca'),('05','01','04','Characato'),('05','01','05','Chiara'),('05','01','06','Enca�ada'),('05','01','07','La Punta'),('05','01','08','San Sebastian'),('05','01','09','Cuenca'),('05','01','10','Margos'),('05','01','11','Pachacutec'),('05','01','12','Chacapampa'),('05','01','13','La Esperanza'),('05','01','14','Jose Leonardo Ortiz'),('05','01','15','Bre�a'),('05','01','16','Las Amazonas'),('05','01','18','San Cristobal'),('05','01','19','Ninacaca'),('05','01','20','Catacaos'),('05','01','21','Capachica'),('05','01','22','Soritor'),('05','01','23','Inclan'),('05','01','24','San Jacinto'),('05','01','25','Yarinacocha'),('05','02','01','Imaza'),('05','02','02','Succha'),('05','02','03','Huancaray'),('05','02','04','Nicolas de Pierola'),('05','02','05','Paras'),('05','02','08','Pomacanchi'),('05','02','09','Marcas'),('05','02','10','Huacar'),('05','02','11','El Carmen'),('05','02','12','Cochas'),('05','02','13','Paijan'),('05','02','14','Pitipo'),('05','02','15','Supe Puerto'),('05','02','16','Jeberos'),('05','02','18','La Capilla'),('05','02','19','San Pedro de Pillao'),('05','02','20','Montero'),('05','02','21','Caminaca'),('05','02','22','San Pablo'),('05','02','23','Huanuara'),('05','03','01','Cuispes'),('05','03','02','Mirgas'),('05','03','03','Oropesa'),('05','03','04','Bella Union'),('05','03','06','Jorge Chavez'),('05','03','08','Huarocondo'),('05','03','09','Chincho'),('05','03','11','Vista Alegre'),('05','03','12','San Ramon'),('05','03','13','Uchumarca'),('05','03','14','Mochumi'),('05','03','15','Manas'),('05','03','16','Urarinas'),('05','03','19','Pozuzo'),('05','03','20','Lalaquiz'),('05','03','21','Corani'),('05','03','22','Shatoja'),('05','04','03','Colcabamba'),('05','04','04','Chilcaymarca'),('05','04','05','Luricocha'),('05','04','06','Chimban'),('05','04','08','Pisac'),('05','04','09','Chupamarca'),('05','04','11','Tibillo'),('05','04','12','Canchayllo'),('05','04','15','Lachaqui'),('05','04','20','Morropon'),('05','04','21','Pisacoma'),('05','04','22','Sacanche'),('05','04','23','Sitajara'),('05','05','01','Conila'),('05','05','02','Cajacay'),('05','05','03','Mara'),('05','05','04','Caylloma'),('05','05','05','Chungui'),('05','05','06','San Benito'),('05','05','08','Layo'),('05','05','09','La Merced'),('05','05','10','Jircan'),('05','05','11','Paracas'),('05','05','15','Chilca'),('05','05','16','Maquia'),('05','05','20','La Huaca'),('05','05','21','Conduriri'),('05','05','22','Cu�umbuqui'),('05','06','01','Limabamba'),('05','06','02','Ataquero'),('05','06','03','Ocobamba'),('05','06','04','Iray'),('05','06','05','Chavi�a'),('05','06','06','La Ramada'),('05','06','08','Pitumarca'),('05','06','09','Laramarca'),('05','06','10','Luyando'),('05','06','12','Pampa Hermosa'),('05','06','13','Huaranchal'),('05','06','15','Chancay'),('05','06','16','Sarayacu'),('05','06','20','Marcavelica'),('05','06','21','Pusi'),('05','06','22','Pajarillo'),('05','07','01','Jamalca'),('05','07','03','Mamara'),('05','07','04','Mejia'),('05','07','05','Pullo'),('05','07','08','Livitaca'),('05','07','09','Colcabamba'),('05','07','12','La Union'),('05','07','13','San Jose'),('05','07','15','Chicla'),('05','07','16','Pastaza'),('05','07','20','Los Organos'),('05','07','21','Ocuviri'),('05','07','22','Pucacaca'),('05','08','04','Pampamarca'),('05','08','05','Marcabamba'),('05','08','06','Huabal'),('05','08','08','Pallpata'),('05','08','12','Morococha'),('05','08','13','Huaylillas'),('05','08','15','Hualmay'),('05','08','20','Vice'),('05','08','21','Macari'),('05','08','22','Pardo Miguel'),('05','09','02','La Pampa'),('05','09','05','Huaca�a'),('05','09','06','Namballe'),('05','09','08','Ocobamba'),('05','09','10','Yuyapichis'),('05','09','12','Huamancaca Chico'),('05','09','13','Marcabal'),('05','09','15','Navan'),('05','09','22','Chipurana'),('05','10','02','Huacachi'),('05','10','05','Canaria'),('05','10','06','Ichocan'),('05','10','08','Huanoquite'),('05','10','10','Rondos'),('05','10','13','Mollepata'),('05','10','15','Azangaro'),('05','10','21','Sina'),('05','10','22','Uchiza'),('05','11','02','Malvas'),('05','11','05','Huambalpa'),('05','11','06','El Prado'),('05','11','08','Huancarani'),('05','11','10','Jacas Chico'),('05','12','02','Mato'),('05','12','08','Ccatca'),('05','12','21','Phara'),('05','13','02','Llama'),('05','13','06','La Esperanza'),('05','13','08','Maras'),('05','13','21','Ollaraya'),('05','14','02','Cochas'),('05','15','02','Huandoval'),('05','17','02','Llacllin'),('05','18','02','Moro'),('05','19','02','Chingalpo'),('05','20','02','Quillo'),('06','01','01','Chuquibamba'),('06','01','02','Jangas'),('06','01','03','Lambrama'),('06','01','04','Chiguata'),('06','01','05','Ocros'),('06','01','06','Jesus'),('06','01','07','Ventanilla'),('06','01','08','Santiago'),('06','01','09','Huachocolpa'),('06','01','10','Quisqui'),('06','01','11','Parcona'),('06','01','12','Chicche'),('06','01','13','Laredo'),('06','01','14','La Victoria'),('06','01','15','Carabayllo'),('06','01','16','Mazan'),('06','01','18','Torata'),('06','01','19','Pallanchacra'),('06','01','21','Chucuito'),('06','01','22','Yantalo'),('06','01','23','Pachia'),('06','01','24','San Juan de la Virgen'),('06','01','25','Nueva Requena'),('06','02','01','La Peca'),('06','02','03','Huayana'),('06','02','04','Oco�a'),('06','02','05','Totos'),('06','02','08','Rondocan'),('06','02','09','Paucara'),('06','02','10','San Francisco'),('06','02','11','Grocio Prado'),('06','02','12','Comas'),('06','02','13','Razuri'),('06','02','14','Pueblo Nuevo'),('06','02','16','Lagunas'),('06','02','18','Lloque'),('06','02','19','Santa Ana de Tusi'),('06','02','20','Pacaipampa'),('06','02','21','Chupa'),('06','02','22','San Rafael'),('06','02','23','Quilahuani'),('06','03','01','Florida'),('06','03','02','San Juan de Rontoy'),('06','03','03','Pachaconas'),('06','03','04','Cahuacho'),('06','03','06','Jose Galvez'),('06','03','08','Limatambo'),('06','03','09','Congalla'),('06','03','12','Vitoc'),('06','03','13','Ucuncha'),('06','03','14','Morrope'),('06','03','19','Puerto Bermudez'),('06','03','20','San Miguel de El Faique'),('06','03','21','Crucero'),('06','04','03','Cotaruse'),('06','04','04','Choco'),('06','04','05','Santillana'),('06','04','06','Choropampa'),('06','04','08','San Salvador'),('06','04','09','Cocas'),('06','04','12','Curicaca'),('06','04','15','San Buenaventura'),('06','04','20','Salitral'),('06','04','21','Pomata'),('06','04','22','Tingo de Saposoa'),('06','04','23','Susapaya'),('06','05','01','Inguilpata'),('06','05','02','Canis'),('06','05','03','Challhuahuacho'),('06','05','04','Coporaque'),('06','05','05','Luis Carranza'),('06','05','06','Santa Cruz de Toled'),('06','05','08','Pampamarca'),('06','05','09','Locroja'),('06','05','10','Miraflores'),('06','05','11','San Andres'),('06','05','15','Coayllo'),('06','05','16','Puinahua'),('06','05','20','Tamarindo'),('06','05','22','Pinto Recodo'),('06','06','01','Longar'),('06','06','02','Marcara'),('06','06','03','Ongoy'),('06','06','04','Rio Grande'),('06','06','05','Chipao'),('06','06','06','Pimpingos'),('06','06','08','San Pablo'),('06','06','09','Ocoyo'),('06','06','10','Mariano Damaso Beraun'),('06','06','12','Pangoa'),('06','06','13','La Cuesta'),('06','06','15','Ihuari'),('06','06','16','Vargas Guerra'),('06','06','20','Miguel Checa'),('06','06','21','Rosaspata'),('06','07','01','Lonya Grande'),('06','07','03','Micaela Bastidas'),('06','07','04','Punta de Bombon'),('06','07','05','Puyusca'),('06','07','08','Llusco'),('06','07','09','Daniel Hernandez'),('06','07','12','Palca'),('06','07','15','Cuenca'),('06','07','16','Andoas'),('06','07','20','Mancora'),('06','07','21','Palca'),('06','07','22','San Cristobal'),('06','08','04','Puyca'),('06','08','05','Oyolo'),('06','08','06','Las Pirias'),('06','08','08','Pichigua'),('06','08','12','Paccha'),('06','08','13','Huayo'),('06','08','15','Huaura'),('06','08','20','Rinconada Llicuar'),('06','08','21','Nu�oa'),('06','08','22','Posic'),('06','09','02','Yanac'),('06','09','05','Morcolla'),('06','09','06','San Jose de Lourdes'),('06','09','08','Quellouno'),('06','09','12','San Juan de Iscos'),('06','09','13','Sanagoran'),('06','09','15','Pachangara'),('06','09','22','El Porvenir'),('06','10','02','Huacchis'),('06','10','05','Cayara'),('06','10','06','Jose Manuel Quiroz'),('06','10','08','Omacha'),('06','10','10','San Francisco de Asis'),('06','10','13','Quiruvilca'),('06','10','15','Cacra'),('06','11','05','Independencia'),('06','11','06','La Florida'),('06','11','08','Kos�ipata'),('06','11','10','Obas'),('06','12','02','Pamparomas'),('06','12','08','Cusipata'),('06','12','21','Quiaca'),('06','13','02','Llumpa'),('06','13','06','Ninabamba'),('06','13','08','Ollantaytambo'),('06','13','21','Tinicachi'),('06','14','02','Congas'),('06','15','02','Lacabamba'),('06','17','02','Marca'),('06','18','02','Nepe�a'),('06','19','02','Huayllabamba'),('06','20','02','Ranrahirca'),('07','01','01','Granada'),('07','01','02','La Libertad'),('07','01','03','Pichirhua'),('07','01','04','Jacobo Hunter'),('07','01','05','Pacaycasa'),('07','01','06','Llacanora'),('07','01','07','Mi Per�'),('07','01','08','Saylla'),('07','01','09','Huayllahuara'),('07','01','10','San Francisco de Cayran'),('07','01','11','Pueblo Nuevo'),('07','01','12','Chilca'),('07','01','13','Moche'),('07','01','14','Lagunas'),('07','01','15','Chaclacayo'),('07','01','16','Napo'),('07','01','19','Paucartambo'),('07','01','20','Cura Mori'),('07','01','21','Coata'),('07','01','23','Palca'),('07','01','25','Manantay'),('07','02','03','Kishuara'),('07','02','04','Quilca'),('07','02','08','Sangarara'),('07','02','09','Pomacocha'),('07','02','10','San Rafael'),('07','02','11','Pueblo Nuevo'),('07','02','12','Heroinas Toledo'),('07','02','13','Santiago de Cao'),('07','02','18','Matalaque'),('07','02','19','Tapuc'),('07','02','20','Paimas'),('07','02','21','Jose Domingo Choquehuanca'),('07','03','01','Jaz�n'),('07','03','03','Sabaino'),('07','03','04','Chala'),('07','03','06','Miguel Iglesias'),('07','03','08','Mollepata'),('07','03','09','Huanca-Huanca'),('07','03','10','Chuquis'),('07','03','14','Motupe'),('07','03','19','Villa Rica'),('07','03','20','Sondor'),('07','03','21','Ituata'),('07','04','03','Huayllo'),('07','04','04','Huancarqui'),('07','04','05','Sivia'),('07','04','06','Cochabamba'),('07','04','08','Taray'),('07','04','09','Huachos'),('07','04','12','El Mantaro'),('07','04','15','Santa Rosa de Quives'),('07','04','20','San Juan de Bigote'),('07','04','21','Zepita'),('07','04','23','Tarucachi'),('07','05','01','Longuita'),('07','05','02','Colquioc'),('07','05','04','Huambo'),('07','05','05','Santa Rosa'),('07','05','06','Tantarica'),('07','05','08','Quehue'),('07','05','09','Paucarbamba'),('07','05','10','Monzon'),('07','05','11','San Clemente'),('07','05','15','Imperial'),('07','05','16','Saquena'),('07','05','20','Vichayal'),('07','05','22','Rumisapa'),('07','06','01','Mariscal Benavides'),('07','06','02','Pariahuanca'),('07','06','03','Uranmarca'),('07','06','04','Salamanca'),('07','06','05','Huac-Huas'),('07','06','06','Querocotillo'),('07','06','08','San Pedro'),('07','06','09','Pilpichaca'),('07','06','12','Rio Negro'),('07','06','15','Lampian'),('07','06','20','Querecotillo'),('07','06','21','Taraco'),('07','07','01','Yamon'),('07','07','03','Pataypampa'),('07','07','05','San Francisco de Ravacayco'),('07','07','08','Qui�ota'),('07','07','09','Huachocolpa'),('07','07','12','Palcamayo'),('07','07','15','Huachupampa'),('07','07','21','Paratia'),('07','07','22','San Hilarion'),('07','08','04','Quechualla'),('07','08','05','Pararca'),('07','08','06','Pomahuaca'),('07','08','08','Suyckutambo'),('07','08','12','Santa Barbara de Carhuacayan'),('07','08','13','Ongon'),('07','08','15','Leoncio Prado'),('07','08','21','Orurillo'),('07','08','22','San Fernando'),('07','09','02','Yupan'),('07','09','05','Paico'),('07','09','06','Tabaconas'),('07','09','08','Kimbiri'),('07','09','12','San Juan de Jarpa'),('07','09','13','Sarin'),('07','09','22','Huimbayoc'),('07','10','02','Huachis'),('07','10','05','Colca'),('07','10','06','Jose Sabogal'),('07','10','08','Paccaritambo'),('07','10','10','San Miguel de Cauri'),('07','10','13','Santa Cruz de Chuca'),('07','10','15','Carania'),('07','11','05','Saurama'),('07','11','06','Llapa'),('07','11','10','Pampamarca'),('07','12','02','Pueblo Libre'),('07','12','08','Huaro'),('07','12','21','San Juan del Oro'),('07','13','02','Lucma'),('07','13','06','Pulan'),('07','13','08','Yucay'),('07','13','21','Unicachi'),('07','14','02','Llipa'),('07','15','02','Llapo'),('07','17','02','Pampas Chico'),('07','18','02','Samanco'),('07','19','02','Quiches'),('07','20','02','Shupluy'),('08','01','01','Huancas'),('08','01','02','Olleros'),('08','01','03','San Pedro de Cachora'),('08','01','04','La Joya'),('08','01','05','Quinua'),('08','01','06','Los Ba�os del Inca'),('08','01','08','Wanchaq'),('08','01','09','Izcuchaca'),('08','01','10','San Pedro de Chaulan'),('08','01','11','Salas'),('08','01','12','Chongos Alto'),('08','01','13','Poroto'),('08','01','14','Monsefu'),('08','01','15','Chorrillos'),('08','01','16','Punchana'),('08','01','19','San Fco. de As�s de Yarusyac�n'),('08','01','20','El Tallan'),('08','01','21','Huata'),('08','01','23','Pocollay'),('08','02','03','Pacobamba'),('08','02','04','Samuel Pastor'),('08','02','09','Rosario'),('08','02','10','Tomay Kichwa'),('08','02','11','San Juan de Yanac'),('08','02','12','Manzanares'),('08','02','13','Casa Grande'),('08','02','18','Puquina'),('08','02','19','Vilcabamba'),('08','02','20','Sapillica'),('08','02','21','Mu�ani'),('08','03','01','Recta'),('08','03','04','Chaparra'),('08','03','06','Oxamarca'),('08','03','08','Pucyura'),('08','03','09','Huayllay Grande'),('08','03','14','Olmos'),('08','03','19','Constitucion'),('08','03','20','Sondorillo'),('08','03','21','Ollachea'),('08','04','03','Justo Apu Sahuaraura'),('08','04','04','Machaguay'),('08','04','05','Llochegua'),('08','04','06','Conchan'),('08','04','08','Yanatile'),('08','04','09','Huamatambo'),('08','04','12','Huamali'),('08','04','20','Santa Catalina de Mossa'),('08','04','23','Ticaco'),('08','05','01','Lonya Chico'),('08','05','02','Huallanca'),('08','05','04','Huanca'),('08','05','05','Tambo'),('08','05','06','Yonan'),('08','05','08','Tupac Amaru'),('08','05','09','San Miguel de Mayocc'),('08','05','10','Punchao'),('08','05','11','Tupac Amaru Inca'),('08','05','15','Lunahuana'),('08','05','16','Soplin'),('08','05','22','San Roque de Cumbaza'),('08','06','01','Milpuc'),('08','06','02','San Miguel de Aco'),('08','06','03','Ranracancha'),('08','06','04','Yanaquihua'),('08','06','05','Laramate'),('08','06','06','San Andres de Cutervo'),('08','06','08','Tinta'),('08','06','09','Querco'),('08','06','12','Rio Tambo'),('08','06','13','Mache'),('08','06','15','Pacaraos'),('08','06','20','Salitral'),('08','06','21','Vilque Chico'),('08','07','03','Progreso'),('08','07','05','Upahuacho'),('08','07','08','Velille'),('08','07','12','San Pedro de Cajas'),('08','07','15','Huanza'),('08','07','21','Pucara'),('08','07','22','Shamboyacu'),('08','08','04','Sayla'),('08','08','05','San Javier de Alpabamba'),('08','08','06','Pucara'),('08','08','08','Alto Pichigua'),('08','08','12','Santa Rosa de Sacco'),('08','08','13','Parcoy'),('08','08','15','Paccho'),('08','08','21','Santa Rosa'),('08','08','22','Yorongos'),('08','09','05','San Pedro de Larcay'),('08','09','08','Santa Teresa'),('08','09','12','3 de Diciembre'),('08','09','13','Sartimbamba'),('08','09','22','Juan Guerra'),('08','10','02','Huantar'),('08','10','05','Huamanquiquia'),('08','10','08','Pillpinto'),('08','10','13','Sitabamba'),('08','10','15','Catahuasi'),('08','11','05','Vischongo'),('08','11','06','Nanchoc'),('08','11','10','Choras'),('08','12','02','Santa Cruz'),('08','12','08','Lucre'),('08','12','21','Yanahuaya'),('08','13','02','Musga'),('08','13','06','Saucepampa'),('08','14','02','San Cristobal de Rajan'),('08','15','02','Pallasca'),('08','17','02','Pararin'),('08','18','02','Santa'),('08','19','02','Ragash'),('08','20','02','Yanama'),('09','01','01','La Jalca'),('09','01','02','Pampas'),('09','01','03','Tamburco'),('09','01','04','Mariano Melgar'),('09','01','05','San Jose de Ticllas'),('09','01','06','Magdalena'),('09','01','09','Laria'),('09','01','10','Santa Maria del Valle'),('09','01','11','San Jose de los Molinos'),('09','01','13','Salaverry'),('09','01','14','Nueva Arica'),('09','01','15','Cieneguilla'),('09','01','16','Putumayo'),('09','01','19','Simon Bolivar'),('09','01','20','La Arena'),('09','01','21','Ma�azo'),('09','01','23','Sama'),('09','02','03','Pacucha'),('09','02','11','San Pedro de Huacarpana'),('09','02','12','Mariscal Castilla'),('09','02','18','Quinistaquillas'),('09','02','20','Sicchez'),('09','02','21','Potoni'),('09','03','01','San Carlos'),('09','03','04','Huanuhuanu'),('09','03','06','Sorochuco'),('09','03','08','Zurite'),('09','03','09','Julcamarca'),('09','03','14','Pacora'),('09','03','21','San Gaban'),('09','04','03','Lucre'),('09','04','04','Orcopampa'),('09','04','05','Canayre'),('09','04','06','Huambos'),('09','04','09','Mollepampa'),('09','04','12','Huaripampa'),('09','04','20','Santo Domingo'),('09','05','01','Luya'),('09','05','02','Huasta'),('09','05','04','Ichupampa'),('09','05','05','Samugari'),('09','05','09','San Pedro de Coris'),('09','05','10','Pu�os'),('09','05','15','Mala'),('09','05','16','Tapiche'),('09','05','22','Shanao'),('09','06','01','Omia'),('09','06','02','Shilla'),('09','06','05','Leoncio Prado'),('09','06','06','San Juan de Cutervo'),('09','06','09','Quito-Arma'),('09','06','15','San Miguel de Acos'),('09','07','03','San Antonio'),('09','07','09','Huaribamba'),('09','07','12','Tapo'),('09','07','15','Huarochiri'),('09','07','21','Santa Lucia'),('09','07','22','Tingo de Ponasa'),('09','08','04','Tauria'),('09','08','05','San Jose de Ushua'),('09','08','06','Sallique'),('09','08','12','Suitucancha'),('09','08','13','Pataz'),('09','08','15','Santa Leonor'),('09','08','21','Umachiri'),('09','08','22','Yuracyacu'),('09','09','05','San Salvador de Quije'),('09','09','08','Vilcabamba'),('09','09','12','Yanacancha'),('09','09','22','La Banda de Shilcayo'),('09','10','02','Masin'),('09','10','05','Huancaraylla'),('09','10','08','Yaurisque'),('09','10','15','Chocos'),('09','11','06','Niepos'),('09','12','02','Santo Toribio'),('09','12','08','Marcapata'),('09','12','21','Alto Inambari'),('09','13','06','Sexi'),('09','14','02','San Pedro'),('09','15','02','Pampas'),('09','17','02','Tapacocha'),('09','18','02','Nuevo Chimbote'),('09','19','02','San Juan'),('10','01','01','Leimebamba'),('10','01','02','Pariacoto'),('10','01','04','Miraflores'),('10','01','05','San Juan Bautista'),('10','01','06','Matara'),('10','01','09','Manta'),('10','01','10','Yarumayo'),('10','01','11','San Juan Bautista'),('10','01','13','Simbal'),('10','01','14','Oyotun'),('10','01','15','Comas'),('10','01','16','Torres Causana'),('10','01','19','Ticlacayan'),('10','01','20','La Union'),('10','01','21','Paucarcolla'),('10','01','23','Coronel Gregorio Albarrac�n L'),('10','02','03','Pampachiri'),('10','02','11','Sunampe'),('10','02','12','Matahuasi'),('10','02','16','Santa Cruz'),('10','02','18','Ubinas'),('10','02','20','Suyo'),('10','02','21','Saman'),('10','03','01','Shipasbamba'),('10','03','04','Jaqui'),('10','03','06','Sucre'),('10','03','09','San Antonio de Antaparco'),('10','03','14','Salas'),('10','03','21','Usicayos'),('10','04','03','Pocohuanca'),('10','04','04','Pampacolca'),('10','04','05','Uchuraccay'),('10','04','06','Lajas'),('10','04','09','San Juan'),('10','04','12','Huertas'),('10','04','20','Yamango'),('10','05','01','Luya Viejo'),('10','05','02','Huayllacayan'),('10','05','04','Lari'),('10','05','05','Anchihuay'),('10','05','09','Pachamarca'),('10','05','10','Singa'),('10','05','15','Nuevo Imperial'),('10','05','16','Jenaro Herrera'),('10','05','22','Tabalosos'),('10','06','01','Santa Rosa'),('10','06','02','Tinco'),('10','06','05','Llauta'),('10','06','06','San Luis de Lucma'),('10','06','09','San Antonio de Cusicancha'),('10','06','13','Paranday'),('10','06','15','Santa Cruz de Andamarca'),('10','07','03','Santa Rosa'),('10','07','09','�ahuimpuquio'),('10','07','15','Lahuaytambo'),('10','07','21','Vilavila'),('10','07','22','Tres Unidos'),('10','08','04','Tomepampa'),('10','08','05','Sara Sara'),('10','08','06','San Felipe'),('10','08','12','Yauli'),('10','08','13','Pias'),('10','08','15','Santa Maria'),('10','09','05','Santiago de Paucaray'),('10','09','08','Pichari'),('10','09','22','Morales'),('10','10','02','Paucas'),('10','10','05','Huaya'),('10','10','15','Cochas'),('10','11','06','San Gregorio'),('10','12','02','Yuracmarca'),('10','12','08','Ocongate'),('10','12','21','San Pedro de Putina Punco'),('10','13','06','Uticyacu'),('10','14','02','Santiago de Chilcas'),('10','15','02','Santa Rosa'),('10','17','02','Ticapampa'),('10','19','02','Sicsibamba'),('11','01','01','Levanto'),('11','01','02','Pira'),('11','01','04','Mollebaya'),('11','01','05','Santiago de Pischa'),('11','01','06','Namora'),('11','01','09','Mariscal Caceres'),('11','01','10','Pillco Marca'),('11','01','11','Santiago'),('11','01','12','Chupuro'),('11','01','13','Victor Larco Herrera'),('11','01','14','Picsi'),('11','01','15','El Agustino'),('11','01','19','Tinyahuarco'),('11','01','20','Las Lomas'),('11','01','21','Pichacani'),('11','02','03','Pomacocha'),('11','02','11','Tambo de Mora'),('11','02','12','Mito'),('11','02','16','Teniente Cesar Lopez Rojas'),('11','02','18','Yunga'),('11','02','21','San Anton'),('11','03','01','Valera'),('11','03','04','Lomas'),('11','03','06','Utco'),('11','03','09','Santo Tomas de Pata'),('11','03','10','Marias'),('11','03','14','San Jose'),('11','04','03','San Juan de Chac�a'),('11','04','04','Tipan'),('11','04','05','Pucacolpa'),('11','04','06','Llama'),('11','04','09','Santa Ana'),('11','04','12','Janjaillo'),('11','05','01','Maria'),('11','05','02','La Primavera'),('11','05','04','Lluta'),('11','05','09','Cosme'),('11','05','10','Tantamayo'),('11','05','15','Pacaran'),('11','05','16','Yaquerana'),('11','05','22','Zapatero'),('11','06','01','Totora'),('11','06','02','Yungar'),('11','06','05','Lucanas'),('11','06','06','Santa Cruz'),('11','06','09','San Francisco de Sangayaico'),('11','06','13','Salpo'),('11','06','15','Sumbilca'),('11','07','03','Turpay'),('11','07','09','Pazos'),('11','07','15','Langa'),('11','08','04','Toro'),('11','08','06','San Jose del Alto'),('11','08','13','Santiago de Challas'),('11','08','15','Sayan'),('11','09','05','Soras'),('11','09','08','Inkawasi'),('11','09','22','Papaplaya'),('11','10','02','Ponto'),('11','10','05','Sarhua'),('11','10','15','Colonia'),('11','11','06','San Silvestre de Cochan'),('11','12','08','Oropesa'),('11','13','06','Yauyucan'),('11','15','02','Tauca'),('12','01','01','Magdalena'),('12','01','02','Tarica'),('12','01','04','Paucarpata'),('12','01','05','Socos'),('12','01','06','San Juan'),('12','01','09','Moya'),('12','01','10','Yacus'),('12','01','11','Subtanjalla'),('12','01','12','Colca'),('12','01','14','Pimentel'),('12','01','15','Independencia'),('12','01','16','Bel�n'),('12','01','19','Vicco'),('12','01','21','Plateria'),('12','02','03','San Antonio de Cachi'),('12','02','12','Nueve de Julio'),('12','02','21','San Jose'),('12','03','01','Yambrasbamba'),('12','03','04','Quicacha'),('12','03','06','La Libertad de Pallan'),('12','03','09','Secclla'),('12','03','14','Tucume'),('12','04','03','Sa�ayca'),('12','04','04','U�on'),('12','04','06','Miracosta'),('12','04','09','Tantara'),('12','04','12','Julcan'),('12','05','01','Ocalli'),('12','05','02','Mangas'),('12','05','04','Maca'),('12','05','15','Quilmana'),('12','06','01','Vista Alegre'),('12','06','05','Oca�a'),('12','06','06','Santo Domingo de la Capilla'),('12','06','09','San Isidro'),('12','06','15','Veintisiete de Noviembre'),('12','07','03','Vilcabamba'),('12','07','15','Laraos'),('12','08','06','Santa Rosa'),('12','08','13','Taurija'),('12','08','15','Vegueta'),('12','09','08','Villa Virgen'),('12','09','22','San Antonio'),('12','10','02','Rahuapampa'),('12','10','05','Vilcanchos'),('12','10','15','Hongos'),('12','11','06','Tongod'),('12','12','08','Quiquijana'),('13','01','01','Mariscal Castilla'),('13','01','04','Pocsi'),('13','01','05','Tambillo'),('13','01','09','Nuevo Occoro'),('13','01','11','Tate'),('13','01','12','Cullhuas'),('13','01','14','Reque'),('13','01','15','Jesus Maria'),('13','01','16','San Juan Bautista'),('13','01','19','Yanacancha'),('13','01','21','San Antonio'),('13','02','03','San Jeronimo'),('13','02','12','Orcotuna'),('13','02','21','San Juan de Salinas'),('13','03','04','Yauca'),('13','03','10','Pachas'),('13','04','03','Soraya'),('13','04','04','Uraca'),('13','04','06','Paccha'),('13','04','09','Ticrapo'),('13','04','12','Leonor Ordo�ez'),('13','05','01','Ocumal'),('13','05','02','Pacllon'),('13','05','04','Madrigal'),('13','05','15','San Antonio'),('13','06','05','Otoca'),('13','06','06','Santo Tomas'),('13','06','09','Santiago de Chocorvos'),('13','06','13','Sinsicap'),('13','07','03','Virundo'),('13','07','09','Quishuar'),('13','07','15','Mariatana'),('13','08','13','Urpay'),('13','09','22','Sauce'),('13','10','02','Rapayan'),('13','10','15','Huampara'),('13','11','06','Union Agua Blanca'),('14','01','01','Molinopampa'),('14','01','04','Polobaya'),('14','01','05','Vinchos'),('14','01','09','Palca'),('14','01','11','Yauca del Rosario'),('14','01','12','El Tambo'),('14','01','14','Santa Rosa'),('14','01','15','La Molina'),('14','01','16','Teniente Manuel Clavero'),('14','01','20','Tambo Grande'),('14','01','21','Tiquillaca'),('14','02','03','San Miguel de Chaccrampa'),('14','02','12','San Jose de Quero'),('14','02','21','Santiago de Pupuja'),('14','04','03','Tapairihua'),('14','04','04','Viraco'),('14','04','06','Pion'),('14','04','12','Llocllapampa'),('14','05','01','Pisuquia'),('14','05','02','San Miguel de Corpanqui'),('14','05','04','San Antonio de Chuca'),('14','05','15','San Luis'),('14','06','05','Saisa'),('14','06','06','Socota'),('14','06','09','Santiago de Quirahuara'),('14','06','13','Usquil'),('14','07','03','Curasco'),('14','07','09','Salcabamba'),('14','07','15','Ricardo Palma'),('14','09','22','Shapaja'),('14','10','02','San Marcos'),('14','10','15','Huancaya'),('15','01','01','Montevideo'),('15','01','04','Queque�a'),('15','01','05','Jes�s Nazareno'),('15','01','09','Pilchaca'),('15','01','14','Sa�a'),('15','01','15','La Victoria'),('15','01','20','Veintis�is de Octubre'),('15','01','21','Vilque'),('15','02','03','Santa Maria de Chicmo'),('15','02','12','Santa Rosa de Ocopa'),('15','02','21','Tirapata'),('15','04','03','Tintay'),('15','04','06','Querocoto'),('15','04','12','Marco'),('15','05','01','Providencia'),('15','05','02','Ticllos'),('15','05','04','Sibayo'),('15','05','15','Santa Cruz de Flores'),('15','06','05','San Cristobal'),('15','06','06','Toribio Casanova'),('15','06','09','Santo Domingo de Capillas'),('15','07','09','Salcahuasi'),('15','07','15','San Andres de Tupicocha'),('15','10','02','San Pedro de Chana'),('15','10','15','Huangascar'),('16','01','01','Olleros'),('16','01','04','Sabandia'),('16','01','05','Andr�s Avelino C�ceres Dorregay'),('16','01','09','Vilca'),('16','01','12','Huacrapuquio'),('16','01','14','Cayalt�'),('16','01','15','Lince'),('16','02','03','Talavera'),('16','03','10','Quivilla'),('16','04','03','Toraya'),('16','04','06','San Juan de Licupis'),('16','04','12','Masma'),('16','05','01','San Cristobal'),('16','05','04','Tapay'),('16','05','15','Zu�iga'),('16','06','05','San Juan'),('16','06','09','Tambo'),('16','07','09','San Marcos de Rocchac'),('16','07','15','San Antonio'),('16','10','02','Uco'),('16','10','15','Huantan'),('17','01','01','Quinjalca'),('17','01','04','Sachaca'),('17','01','09','Yauli'),('17','01','12','Hualhuas'),('17','01','14','Patapo'),('17','01','15','Los Olivos'),('17','02','03','Tumay Huaraca'),('17','03','10','Ripan'),('17','04','03','Yanaca'),('17','04','06','Tacabamba'),('17','04','12','Masma Chicche'),('17','05','01','San Francisco del Yeso'),('17','05','04','Tisco'),('17','06','05','San Pedro'),('17','07','09','Surcubamba'),('17','07','15','San Bartolome'),('17','10','15','Hua�ec'),('18','01','01','San Francisco de Daguas'),('18','01','04','San Juan de Siguas'),('18','01','09','Ascensi�n'),('18','01','14','Pomalca'),('18','01','15','Lurigancho'),('18','02','03','Turpo'),('18','04','06','Tocmoche'),('18','04','12','Molinos'),('18','05','01','San Jeronimo'),('18','05','04','Tuti'),('18','06','05','San Pedro de Palco'),('18','07','09','Tintay Puncu'),('18','07','15','San Damian'),('18','10','15','Laraos'),('19','01','01','San Isidro de Maino'),('19','01','04','San Juan de Tarucani'),('19','01','09','Huando'),('19','01','12','Huancan'),('19','01','14','Pucal�'),('19','01','15','Lurin'),('19','02','03','Kaquiabamba'),('19','04','06','Chalamarca'),('19','04','12','Monobamba'),('19','05','01','San Juan de Lopecancha'),('19','05','04','Yanque'),('19','06','05','Sancos'),('19','07','15','San Juan de Iris'),('19','10','15','Lincha'),('20','01','01','Soloco'),('20','01','04','Santa Isabel de Siguas'),('20','01','12','Huasicancha'),('20','01','14','Tum�n'),('20','01','15','Magdalena del Mar'),('20','04','12','Muqui'),('20','05','01','Santa Catalina'),('20','05','04','Majes'),('20','06','05','Santa Ana de Huaycahuacho'),('20','07','15','San Juan de Tantaranche'),('20','10','15','Madean'),('21','01','01','Sonche'),('21','01','04','Santa Rita de Siguas'),('21','01','12','Huayucachi'),('21','01','15','Pueblo Libre (Magdalena Vieja)'),('21','03','10','Shunqui'),('21','04','12','Muquiyauyo'),('21','05','01','Santo Tomas'),('21','06','05','Santa Lucia'),('21','07','15','San Lorenzo de Quinti'),('21','10','15','Miraflores'),('22','01','04','Socabaya'),('22','01','12','Ingenio'),('22','01','15','Miraflores'),('22','03','10','Sillapata'),('22','04','12','Paca'),('22','05','01','Tingo'),('22','07','15','San Mateo'),('22','10','15','Omas'),('23','01','04','Tiabaya'),('23','01','15','Pachacamac'),('23','03','10','Yanas'),('23','04','12','Paccha'),('23','05','01','Trita'),('23','07','15','San Mateo de Otao'),('23','10','15','Putinza'),('24','01','04','Uchumayo'),('24','01','12','Pariahuanca'),('24','01','15','Pucusana'),('24','04','12','Pancan'),('24','07','15','San Pedro de Casta'),('24','10','15','Quinches'),('25','01','04','Vitor'),('25','01','12','Pilcomayo'),('25','01','15','Puente Piedra'),('25','04','12','Parco'),('25','07','15','San Pedro de Huancayre'),('25','10','15','Quinocay'),('26','01','04','Yanahuara'),('26','01','12','Pucara'),('26','01','15','Punta Hermosa'),('26','04','12','Pomacancha'),('26','07','15','Sangallaya'),('26','10','15','San Joaquin'),('27','01','04','Yarabamba'),('27','01','12','Quichuay'),('27','01','15','Punta Negra'),('27','04','12','Ricran'),('27','07','15','Santa Cruz de Cocachacra'),('27','10','15','San Pedro de Pilas'),('28','01','04','Yura'),('28','01','12','Quilcas'),('28','01','15','Rimac'),('28','04','12','San Lorenzo'),('28','07','15','Santa Eulalia'),('28','10','15','Tanta'),('29','01','04','Jose Luis Bustamante y Rivero'),('29','01','12','San Agustin'),('29','01','15','San Bartolo'),('29','04','12','San Pedro de Chunan'),('29','07','15','Santiago de Anchucaya'),('29','10','15','Tauripampa'),('30','01','12','San Jeronimo de Tunan'),('30','01','15','San Borja'),('30','04','12','Sausa'),('30','07','15','Santiago de Tuna'),('30','10','15','Tomas'),('31','01','15','San Isidro'),('31','04','12','Sincos'),('31','07','15','Santo Domingo de los Olleros'),('31','10','15','Tupe'),('32','01','12','Sa�o'),('32','01','15','San Juan de Lurigancho'),('32','04','12','Tunan Marca'),('32','07','15','Surco'),('32','10','15','Vi�ac'),('33','01','12','Sapallanga'),('33','01','15','San Juan de Miraflores'),('33','04','12','Yauli'),('33','10','15','Vitis'),('34','01','12','Sicaya'),('34','01','15','San Luis'),('34','04','12','Yauyos'),('35','01','12','Santo Domingo de Acobamba'),('35','01','15','San Martin de Porres'),('36','01','12','Viques'),('36','01','15','San Miguel'),('37','01','15','Santa Anita'),('38','01','15','Santa Maria del Mar'),('39','01','15','Santa Rosa'),('40','01','15','Santiago de Surco'),('41','01','15','Surquillo'),('42','01','15','Villa El Salvador'),('43','01','15','Villa Maria del Triunfo'),('99','06','12','Mazamari-Pangoa'),('99','99','99','Extranjero');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estado` (
  `idestado` int(11) NOT NULL,
  `estados` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL,
  `area` varchar(45) DEFAULT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `idpersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfuncionario`),
  KEY `fkfuncionariopersona_idx` (`idpersona`),
  KEY `fkfuncionariocargo_idx` (`idcargo`),
  CONSTRAINT `fkfuncionariocargo` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`),
  CONSTRAINT `fkfuncionariopersona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidencias`
--

DROP TABLE IF EXISTS `incidencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `incidencias` (
  `idincidencias` int(11) NOT NULL,
  `idfuncionario` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `idestado` int(11) DEFAULT NULL,
  `area_idarea` varchar(45) NOT NULL,
  PRIMARY KEY (`idincidencias`),
  KEY `fkincidenciasfuncionario_idx` (`idfuncionario`),
  KEY `fkincidenciasclientes_idx` (`idcliente`),
  KEY `fkincidenciaestado_idx` (`idestado`),
  KEY `fkincidenciacategoria_idx` (`idcategoria`),
  KEY `fk_incidencias_area1_idx` (`area_idarea`),
  CONSTRAINT `fk_incidencias_area1` FOREIGN KEY (`area_idarea`) REFERENCES `area` (`idarea`),
  CONSTRAINT `fkincidenciacategoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
  CONSTRAINT `fkincidenciaestado` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`),
  CONSTRAINT `fkincidenciasclientes` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `fkincidenciasfuncionario` FOREIGN KEY (`idfuncionario`) REFERENCES `funcionario` (`idfuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidencias`
--

LOCK TABLES `incidencias` WRITE;
/*!40000 ALTER TABLE `incidencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modulo` (
  `idmodulo` int(11) NOT NULL,
  `nommodulo` varchar(45) DEFAULT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmodulo`),
  KEY `fkmodulodetalles_idx` (`iddetalle`),
  CONSTRAINT `fkmodulodetalles` FOREIGN KEY (`iddetalle`) REFERENCES `detalle` (`iddetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paginas`
--

DROP TABLE IF EXISTS `paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paginas` (
  `idpaginas` int(11) NOT NULL,
  `nompaginas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpaginas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paginas`
--

LOCK TABLES `paginas` WRITE;
/*!40000 ALTER TABLE `paginas` DISABLE KEYS */;
/*!40000 ALTER TABLE `paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `perfil` (
  `idperfil` int(11) NOT NULL,
  `nomperfil` varchar(45) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idmodulo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idperfil`),
  KEY `fkperfilusuario_idx` (`idusuario`),
  KEY `fkperfilmodulo_idx` (`idmodulo`),
  CONSTRAINT `fkperfilmodulo` FOREIGN KEY (`idmodulo`) REFERENCES `modulo` (`idmodulo`),
  CONSTRAINT `fkperfilusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `domicilio` varchar(45) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `iddepartamento` varchar(2) DEFAULT NULL,
  `idprovincia` varchar(2) DEFAULT NULL,
  `iddistrito` varchar(2) DEFAULT NULL,
  `idtipodocumento` int(11) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `archivo` varchar(50) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `funcionario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpersona`),
  KEY `fkpersonatipodocumento_idx` (`idtipodocumento`),
  KEY `fkpersonalumnodistrito` (`iddepartamento`,`idprovincia`,`iddistrito`),
  CONSTRAINT `fkpersonadistrito` FOREIGN KEY (`iddepartamento`, `idprovincia`, `iddistrito`) REFERENCES `distrito` (`iddistrito`, `idprovincia`, `iddepartamento`),
  CONSTRAINT `fkpersonatipodocumento` FOREIGN KEY (`idtipodocumento`) REFERENCES `tipo_documento` (`id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'gustav','domicilio','9959','65656','edede','01','01','01',1,'ededed','eded','5454','2019-02-13','fsdf'),(2,'gyuugugugug','kjhkhk','13131','1313','hkhk','02','02','02',1,'hgjgg','tarea_2_reyes_zapata.rar','454545','2019-02-13','gugug');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provincia` (
  `idprovincia` varchar(2) NOT NULL,
  `iddepartamento` varchar(2) NOT NULL,
  `nomprovincia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idprovincia`,`iddepartamento`),
  KEY `fkpersonadepartamento` (`iddepartamento`),
  CONSTRAINT `fkpersonadepartamento` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES ('01','01','Chachapoyas'),('01','02','Huaraz'),('01','03','Abancay'),('01','04','Arequipa'),('01','05','Huamanga'),('01','06','Cajamarca'),('01','07','Prov. Const. del Callao'),('01','08','Cusco'),('01','09','Huancavelica'),('01','10','Huanuco'),('01','11','Ica'),('01','12','Huancayo'),('01','13','Trujillo'),('01','14','Chiclayo'),('01','15','Lima'),('01','16','Maynas'),('01','17','Tambopata'),('01','18','Mariscal Nieto'),('01','19','Pasco'),('01','20','Piura'),('01','21','Puno'),('01','22','Moyobamba'),('01','23','Tacna'),('01','24','Tumbes'),('01','25','Coronel Portillo'),('02','01','Bagua'),('02','02','Aija'),('02','03','Andahuaylas'),('02','04','Camana'),('02','05','Cangallo'),('02','06','Cajabamba'),('02','08','Acomayo'),('02','09','Acobamba'),('02','10','Ambo'),('02','11','Chincha'),('02','12','Concepcion'),('02','13','Ascope'),('02','14','Ferre�afe'),('02','15','Barranca'),('02','16','Alto Amazonas'),('02','17','Manu'),('02','18','General Sanchez Cerro'),('02','19','Daniel Alcides Carrion'),('02','20','Ayabaca'),('02','21','Azangaro'),('02','22','Bellavista'),('02','23','Candarave'),('02','24','Contralmirante Villar'),('02','25','Atalaya'),('03','01','Bongara'),('03','02','Antonio Raymondi'),('03','03','Antabamba'),('03','04','Caraveli'),('03','05','Huanca Sancos'),('03','06','Celendin'),('03','08','Anta'),('03','09','Angaraes'),('03','10','Dos de Mayo'),('03','11','Nazca'),('03','12','Chanchamayo'),('03','13','Bolivar'),('03','14','Lambayeque'),('03','15','Cajatambo'),('03','16','Loreto'),('03','17','Tahuamanu'),('03','18','Ilo'),('03','19','Oxapampa'),('03','20','Huancabamba'),('03','21','Carabaya'),('03','22','El Dorado'),('03','23','Jorge Basadre'),('03','24','Zarumilla'),('03','25','Padre Abad'),('04','01','Condorcanqui'),('04','02','Asuncion'),('04','03','Aymaraes'),('04','04','Castilla'),('04','05','Huanta'),('04','06','Chota'),('04','08','Calca'),('04','09','Castrovirreyna'),('04','10','Huacaybamba'),('04','11','Palpa'),('04','12','Jauja'),('04','13','Chepen'),('04','15','Canta'),('04','16','Mariscal Ramon Castilla'),('04','20','Morropon'),('04','21','Chucuito'),('04','22','Huallaga'),('04','23','Tarata'),('04','25','Purus'),('05','01','Luya'),('05','02','Bolognesi'),('05','03','Cotabambas'),('05','04','Caylloma'),('05','05','La Mar'),('05','06','Contumaza'),('05','08','Canas'),('05','09','Churcampa'),('05','10','Huamalies'),('05','11','Pisco'),('05','12','Junin'),('05','13','Julcan'),('05','15','Ca�ete'),('05','16','Requena'),('05','20','Paita'),('05','21','El Collao'),('05','22','Lamas'),('06','01','Rodriguez de Mendoza'),('06','02','Carhuaz'),('06','03','Chincheros'),('06','04','Condesuyos'),('06','05','Lucanas'),('06','06','Cutervo'),('06','08','Canchis'),('06','09','Huaytara'),('06','10','Leoncio Prado'),('06','12','Satipo'),('06','13','Otuzco'),('06','15','Huaral'),('06','16','Ucayali'),('06','20','Sullana'),('06','21','Huancane'),('06','22','Mariscal Caceres'),('07','01','Utcubamba'),('07','02','Carlos Fermin Fitzcarrald'),('07','03','Grau'),('07','04','Islay'),('07','05','Parinacochas'),('07','06','Hualgayoc'),('07','08','Chumbivilcas'),('07','09','Tayacaja'),('07','10','Mara�on'),('07','12','Tarma'),('07','13','Pacasmayo'),('07','15','Huarochiri'),('07','16','Datem del Mara��n'),('07','20','Talara'),('07','21','Lampa'),('07','22','Picota'),('08','02','Casma'),('08','04','La Union'),('08','05','Paucar del Sara Sara'),('08','06','Jaen'),('08','08','Espinar'),('08','10','Pachitea'),('08','12','Yauli'),('08','13','Pataz'),('08','15','Huaura'),('08','16','Putumayo'),('08','20','Sechura'),('08','21','Melgar'),('08','22','Rioja'),('09','02','Corongo'),('09','05','Sucre'),('09','06','San Ignacio'),('09','08','La Convencion'),('09','10','Puerto Inca'),('09','12','Chupaca'),('09','13','Sanchez Carrion'),('09','15','Oyon'),('09','21','Moho'),('09','22','San Martin'),('10','02','Huari'),('10','05','Victor Fajardo'),('10','06','San Marcos'),('10','08','Paruro'),('10','10','Lauricocha'),('10','13','Santiago de Chuco'),('10','15','Yauyos'),('10','21','San Antonio de Putina'),('10','22','Tocache'),('11','02','Huarmey'),('11','05','Vilcas Huaman'),('11','06','San Miguel'),('11','08','Paucartambo'),('11','10','Yarowilca'),('11','13','Gran Chimu'),('11','21','San Roman'),('12','02','Huaylas'),('12','06','San Pablo'),('12','08','Quispicanchi'),('12','13','Viru'),('12','21','Sandia'),('13','02','Mariscal Luzuriaga'),('13','06','Santa Cruz'),('13','08','Urubamba'),('13','21','Yunguyo'),('14','02','Ocros'),('15','02','Pallasca'),('16','02','Pomabamba'),('17','02','Recuay'),('18','02','Santa'),('19','02','Sihuas'),('20','02','Yungay'),('99','99','Extranjero');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL,
  `nomtipodocumento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'DNI'),(2,'RUC');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nomusuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
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

-- Dump completed on 2019-02-15 11:24:59
