-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: loja_online
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

--CREATE DATABASE lojaonline;
--USE lojaonline;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;

CREATE TABLE `endereco` (
  `id` int(11) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `complementos` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;

CREATE TABLE `estoque` (
  `codigo` int(11) DEFAULT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `descrcao` varchar(200) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `itens`
--

DROP TABLE IF EXISTS `itens`;

CREATE TABLE `itens` (
  `id` int(11) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `des` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `itens`
--

LOCK TABLES `itens` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;

CREATE TABLE `pedido` (
  `id` int(11) DEFAULT NULL,
  `nfiscal` varchar(100) DEFAULT NULL,
  `valortotal` decimal(10,2) DEFAULT NULL,
  `datahora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `codigo` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `datnasc` date DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `senha` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;

UNLOCK TABLES;




-- Dump completed on 2026-02-24 17:45:31
