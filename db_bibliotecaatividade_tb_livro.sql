-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: db_bibliotecaatividade
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `tb_livro`
--

DROP TABLE IF EXISTS `tb_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_livro` (
  `id_livro` int(11) NOT NULL AUTO_INCREMENT,
  `nome_livro` varchar(50) NOT NULL,
  `ISBN` bigint(20) NOT NULL,
  `dt_publicacao` date NOT NULL,
  `preco_livro` double NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_editora` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_livro`),
  UNIQUE KEY `ISBN` (`ISBN`),
  UNIQUE KEY `ISBN_2` (`ISBN`),
  KEY `FK_id_autor` (`id_autor`),
  KEY `FK_id_editora` (`id_editora`),
  CONSTRAINT `FK_id_autor` FOREIGN KEY (`id_autor`) REFERENCES `tb_autor` (`id_autor`),
  CONSTRAINT `FK_id_editora` FOREIGN KEY (`id_editora`) REFERENCES `tb_editora` (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_livro`
--

LOCK TABLES `tb_livro` WRITE;
/*!40000 ALTER TABLE `tb_livro` DISABLE KEYS */;
INSERT INTO `tb_livro` VALUES (17,'O maraviliso mágico de Oz',9788516084936,'1943-11-21',100,1,1),(18,'O Gato Malhado e a Andorinha Sinhá',9788574063423,'1944-12-11',100,2,2),(19,'Meu começo',9788535900941,'2014-06-14',100,3,3),(20,'O pequeno principe',9788596004329,'1914-03-21',100,4,4),(21,'O anjo linguarudo',8516023189,'2004-09-10',100,5,5),(22,'Confissões de um vira-lata',9788526016866,'1996-11-25',100,6,6),(23,'Vendedor de sustos',9788532292827,'1994-01-12',100,7,4),(24,'O Leão, a Feiticeira e o Guarda-Roupa',9,'1905-05-03',100,1,1),(127,'O Código Da Vinci',9788516084937,'1905-06-25',100,5,2),(128,'Pense e Enriqueça',9788516084938,'1905-04-20',100,6,3),(129,'O Alquimista',9788516084939,'1905-06-10',100,7,4),(130,'Harry Potter e o Enigma do Príncipe',9788516084940,'1905-06-27',100,1,5),(131,'O Apanhador no Campo de Centeio [b]',9788516084941,'1905-05-04',100,2,6),(133,'Harry Potter e o Prisioneiro de Azkaban',9788516084943,'1905-06-21',100,4,1),(134,'Harry Potter e o Cálice de Fogo',9788516084944,'1905-06-22',100,5,2),(135,'Harry Potter e a Ordem da Fênix',9788516084945,'1905-06-25',100,6,3),(136,'Harry Potter e as Relíquias da Morte',9788516084946,'1905-06-29',100,1,4),(137,'Cem Anos de Solidão',9788516084947,'1905-05-20',100,2,5),(138,'Lolita',9788516084948,'1905-05-08',100,3,6),(140,'Meu Filho, Meu Tesouro',9788516084950,'1905-04-29',100,5,5),(141,'Anne of Green Gables [c]',9788516084951,'1905-03-22',100,6,6),(143,'O Nome da Rosa',9788516084953,'1905-06-02',100,4,1),(144,'A Águia Pousou',9788516084954,'1905-05-28',100,5,2),(145,'Era uma Vez em Watership Down',9788516084955,'1905-05-25',100,6,3),(146,'O Relatório Hite sobre sexualidade feminina',9788516084956,'1905-05-29',100,7,4),(147,'A Menina e o Porquinho [e]',9788516084957,'1905-05-05',100,1,5),(148,'Um Safado em Dublin',9788516084958,'1905-05-08',100,2,6),(149,'As Pontes de Madison',9788516084959,'1905-06-14',100,3,3),(150,'Ben-Hur: Uma História dos Tempos de Cristo',9788516084960,'1905-02-22',100,4,4),(151,'[f] The Mark of Zorro',9788516084961,'1905-04-07',100,5,5),(152,'A História do Pedro Coelho',9788516084962,'1905-03-16',100,1,1),(153,'Fernão Capelo Gaivota',9788516084963,'1905-05-23',100,2,2),(154,'Cinquenta Tons de Cinza [g]',9788516084964,'1905-07-03',100,5,3),(155,'Mensagem a Garcia',9788516084965,'1905-03-13',100,6,4),(156,'O Mundo de Sofia',9788516084966,'1905-06-13',100,7,5),(157,'O Jardim dos Esquecidos',9788516084967,'1905-06-01',100,1,6),(159,'Kak zakalyalas\' stal\'; Assim Foi Temperado O Aço',9788516084969,'1905-04-15',100,3,6),(161,'As Aventuras de Pinóquio',9788516084971,'1905-02-23',100,5,1),(162,'Você pode curar sua vida',9788516084972,'1905-06-06',100,6,2),(163,'Seus Pontos Fracos',9788516084973,'1905-05-29',100,5,3),(164,'O Falecido Grande Planeta Terra',9788516084974,'1905-05-23',100,6,4),(165,'Caim e Abel',9788516084975,'1905-06-01',100,7,5),(166,'Pássaros Feridos',9788516084976,'1905-05-30',100,1,6),(168,'Em Seus Passos o Que Faria Jesus?',9788516084978,'1905-03-10',100,3,1),(169,'O Sol é Para Todos [h]',9788516084979,'1905-05-13',100,4,2),(170,'O Símbolo Perdido',9788516084980,'1905-07-01',100,5,3),(171,'...E o Vento Levou [i]',9788516084981,'1905-04-19',100,1,1),(172,'Diário de Anne Frank',9788516084982,'1905-04-30',100,2,2),(173,'Uma Vida com Propósitos',9788516084983,'1905-06-24',100,3,3),(174,'The Revolt of Mamie Stover',9788516084984,'1905-05-04',100,4,4),(175,'Os Homens que Não Amavam as Mulheres [j]',9788516084985,'1905-06-27',100,5,5),(176,'Uma Lagarta Muito Comilona',9788516084986,'1905-05-22',100,6,6),(178,'O PEQUENO PRINCIPE',9788596004929,'1914-03-21',100,4,4);
/*!40000 ALTER TABLE `tb_livro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 11:34:17
