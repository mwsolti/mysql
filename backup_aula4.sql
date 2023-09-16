-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: convenioprorh
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `carga_horaria`
--

DROP TABLE IF EXISTS `carga_horaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carga_horaria` (
  `id_carga_horaria` int NOT NULL AUTO_INCREMENT,
  `turno` varchar(100) NOT NULL,
  PRIMARY KEY (`id_carga_horaria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carga_horaria`
--

LOCK TABLES `carga_horaria` WRITE;
/*!40000 ALTER TABLE `carga_horaria` DISABLE KEYS */;
INSERT INTO `carga_horaria` VALUES (1,'Geral'),(2,'Geral'),(3,'Geral'),(4,'Matutino'),(5,'Matutino');
/*!40000 ALTER TABLE `carga_horaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `id_contato` int NOT NULL AUTO_INCREMENT,
  `telefone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'47997542779','xpto@zezinho.com'),(2,'4799870076','rpg@master.com.br'),(3,'55667890','dgdfgdgf@dgfd.com.br'),(8,'4799870076','rpg@master.com.br');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demitidos`
--

DROP TABLE IF EXISTS `demitidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demitidos` (
  `id_demitido` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `id_endereco` int NOT NULL,
  `id_contato` int NOT NULL,
  `id_setor` int NOT NULL,
  `id_financeiro` int NOT NULL,
  `id_carga_horaria` int NOT NULL,
  PRIMARY KEY (`id_demitido`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demitidos`
--

LOCK TABLES `demitidos` WRITE;
/*!40000 ALTER TABLE `demitidos` DISABLE KEYS */;
INSERT INTO `demitidos` VALUES (1,'Walter','Pasold','11111111111','M',1,1,1,1,1),(2,'Oktober','Fenst','222222','M',2,2,2,2,2),(3,'JoOrge','Bagre','784908763','M',2,3,3,3,3),(4,'Rafela','Nunes','34553535','F',1,1,1,1,1),(5,'Etevaldo','Nunes','54353453','F',3,1,1,1,1),(6,'XPTO','XPTO','54353453','F',3,1,1,66,1);
/*!40000 ALTER TABLE `demitidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `rua` varchar(500) NOT NULL,
  `nr_endereco` int NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `cep` varchar(10) NOT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Samuel Morcilha',13,'Fidelis','Lado','Blumenau','SC','Brasil','89058010'),(2,'Rua das FLores',13,'Nerfen','...','Baldurs Gate','FR','Los Helmet','6665996'),(3,'Rua da Abdução',66,'XPTO','Disco VOador','Marte','MT','Qualquer outra coisa','12345678');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financeiro`
--

DROP TABLE IF EXISTS `financeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financeiro` (
  `id_financeiro` int NOT NULL AUTO_INCREMENT,
  `salario_base` double NOT NULL,
  `beneficio` double NOT NULL,
  `salario_extra` double NOT NULL,
  PRIMARY KEY (`id_financeiro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financeiro`
--

LOCK TABLES `financeiro` WRITE;
/*!40000 ALTER TABLE `financeiro` DISABLE KEYS */;
INSERT INTO `financeiro` VALUES (1,2500,1000,500),(2,4500,3000,700),(3,45000,3000,700);
/*!40000 ALTER TABLE `financeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo_demissao`
--

DROP TABLE IF EXISTS `motivo_demissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivo_demissao` (
  `id_motivo` int NOT NULL AUTO_INCREMENT,
  `motivo_demissao` varchar(500) NOT NULL,
  `id_demitido` int NOT NULL,
  PRIMARY KEY (`id_motivo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_demissao`
--

LOCK TABLES `motivo_demissao` WRITE;
/*!40000 ALTER TABLE `motivo_demissao` DISABLE KEYS */;
INSERT INTO `motivo_demissao` VALUES (1,'FALTOU A SEANA INTEIRA',3),(2,'Não fui com a cara',2);
/*!40000 ALTER TABLE `motivo_demissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `id_endereco` int NOT NULL,
  `id_contato` int NOT NULL,
  `id_setor` int NOT NULL,
  `id_financeiro` int NOT NULL,
  `id_carga_horaria` int NOT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Walter','Pasold','11111111111','M',1,1,1,1,1),(2,'Oktober','Fenst','222222','M',2,2,2,2,2),(3,'JoOrge','Bagre','784908763','M',2,3,3,3,3),(4,'Rafela','Nunes','34553535','F',1,1,1,1,1),(5,'Etevaldo','Nunes','54353453','F',3,1,1,1,1),(6,'XPTO','XPTO','54353453','F',3,1,1,66,1);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setor` (
  `id_setor` int NOT NULL AUTO_INCREMENT,
  `cargo` varchar(100) NOT NULL,
  `setor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_setor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'Gerente','Fabrica'),(2,'Mestre','RPG'),(3,'Politico','Brasilia');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_cadastro_pessoa`
--

DROP TABLE IF EXISTS `view_cadastro_pessoa`;
/*!50001 DROP VIEW IF EXISTS `view_cadastro_pessoa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_cadastro_pessoa` AS SELECT 
 1 AS `nome`,
 1 AS `sobrenome`,
 1 AS `CPF`,
 1 AS `sexo`,
 1 AS `rua`,
 1 AS `nr_endereco`,
 1 AS `bairro`,
 1 AS `cidade`,
 1 AS `uf`,
 1 AS `pais`,
 1 AS `cep`,
 1 AS `cargo`,
 1 AS `setor`,
 1 AS `telefone`,
 1 AS `email`,
 1 AS `turno`,
 1 AS `salario_base`,
 1 AS `salario_extra`,
 1 AS `beneficio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_demitidos`
--

DROP TABLE IF EXISTS `view_demitidos`;
/*!50001 DROP VIEW IF EXISTS `view_demitidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_demitidos` AS SELECT 
 1 AS `id_demitido`,
 1 AS `nome`,
 1 AS `sobrenome`,
 1 AS `CPF`,
 1 AS `sexo`,
 1 AS `rua`,
 1 AS `nr_endereco`,
 1 AS `bairro`,
 1 AS `cidade`,
 1 AS `uf`,
 1 AS `pais`,
 1 AS `cep`,
 1 AS `cargo`,
 1 AS `setor`,
 1 AS `telefone`,
 1 AS `email`,
 1 AS `turno`,
 1 AS `salario_base`,
 1 AS `salario_extra`,
 1 AS `beneficio`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_cadastro_pessoa`
--

/*!50001 DROP VIEW IF EXISTS `view_cadastro_pessoa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cadastro_pessoa` AS select `p`.`nome` AS `nome`,`p`.`sobrenome` AS `sobrenome`,`p`.`CPF` AS `CPF`,`p`.`sexo` AS `sexo`,`e`.`rua` AS `rua`,`e`.`nr_endereco` AS `nr_endereco`,`e`.`bairro` AS `bairro`,`e`.`cidade` AS `cidade`,`e`.`uf` AS `uf`,`e`.`pais` AS `pais`,`e`.`cep` AS `cep`,`s`.`cargo` AS `cargo`,`s`.`setor` AS `setor`,`c`.`telefone` AS `telefone`,`c`.`email` AS `email`,`ch`.`turno` AS `turno`,`f`.`salario_base` AS `salario_base`,`f`.`salario_extra` AS `salario_extra`,`f`.`beneficio` AS `beneficio` from (((((`pessoa` `p` join `endereco` `e`) join `contato` `c`) join `setor` `s`) join `financeiro` `f`) join `carga_horaria` `ch`) where ((`p`.`id_endereco` = `e`.`id_endereco`) and (`p`.`id_contato` = `c`.`id_contato`) and (`p`.`id_setor` = `s`.`id_setor`) and (`p`.`id_financeiro` = `f`.`id_financeiro`) and (`p`.`id_carga_horaria` = `ch`.`id_carga_horaria`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_demitidos`
--

/*!50001 DROP VIEW IF EXISTS `view_demitidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_demitidos` AS select `d`.`id_demitido` AS `id_demitido`,`d`.`nome` AS `nome`,`d`.`sobrenome` AS `sobrenome`,`d`.`CPF` AS `CPF`,`d`.`sexo` AS `sexo`,`e`.`rua` AS `rua`,`e`.`nr_endereco` AS `nr_endereco`,`e`.`bairro` AS `bairro`,`e`.`cidade` AS `cidade`,`e`.`uf` AS `uf`,`e`.`pais` AS `pais`,`e`.`cep` AS `cep`,`s`.`cargo` AS `cargo`,`s`.`setor` AS `setor`,`c`.`telefone` AS `telefone`,`c`.`email` AS `email`,`ch`.`turno` AS `turno`,`f`.`salario_base` AS `salario_base`,`f`.`salario_extra` AS `salario_extra`,`f`.`beneficio` AS `beneficio` from (((((`demitidos` `d` join `endereco` `e`) join `contato` `c`) join `setor` `s`) join `financeiro` `f`) join `carga_horaria` `ch`) where ((`d`.`id_endereco` = `e`.`id_endereco`) and (`d`.`id_contato` = `c`.`id_contato`) and (`d`.`id_setor` = `s`.`id_setor`) and (`d`.`id_financeiro` = `f`.`id_financeiro`) and (`d`.`id_carga_horaria` = `ch`.`id_carga_horaria`)) */;
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

-- Dump completed on 2023-09-15 22:08:22
