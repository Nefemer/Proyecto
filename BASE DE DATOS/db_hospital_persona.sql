-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: db_hospital
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id_pacientes` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_tipo_sangre` int DEFAULT NULL,
  PRIMARY KEY (`id_pacientes`),
  KEY `fk_id_tipo_sangre_estudiantes_tipos_sangre_idx` (`id_tipo_sangre`),
  CONSTRAINT `fk_id_tipo_sangre_estudiantes_tipos_sangre` FOREIGN KEY (`id_tipo_sangre`) REFERENCES `tipos_sangre` (`id_tipo_sangre`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'A1','Martin','Caminos',22,44428066,'mendoza',342454667,'2002-10-18',1),(2,'A2','Juan','Perez',24,44490555,'suipacha',342677887,'2001-05-23',2),(3,'A3','conra','puto',20,34554343,'lamo',454545454,'2000-06-20',1),(4,'A4','luci','eeee',33,334455,'dasdsd',3445455,'2000-05-10',1),(5,'A5','li','kuei',56,5555443,'sseeee',123456789,'2000-06-22',2),(6,'A6','duki','skere',33,44428055,'trap',-869183599,'2002-05-04',2),(7,'A7','opene','vagina',32,4444444,'skire',-868300518,'2000-07-06',2),(8,'A8','juan','perez',88,45454545,'juaju',4545455555,'1770-06-08',1),(10,'A10','liic','eeerr',22,3445546,'eerrese',656577788,'2000-10-22',2);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-20 15:42:33
