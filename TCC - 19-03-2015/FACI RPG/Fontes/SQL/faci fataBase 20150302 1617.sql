-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.39


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema facirpg
--

CREATE DATABASE IF NOT EXISTS facirpg;
USE facirpg;

--
-- Definition of table `fichapersonagem`
--

DROP TABLE IF EXISTS `fichapersonagem`;
CREATE TABLE `fichapersonagem` (
  `idPersonagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `forca` int(10) unsigned NOT NULL,
  `habilidade` int(10) unsigned NOT NULL,
  `resistencia` int(10) unsigned NOT NULL,
  `armadura` int(10) unsigned NOT NULL,
  `poder de fogo` int(10) unsigned NOT NULL,
  `pontos de vida` int(10) unsigned NOT NULL,
  `pontos de magia` int(10) unsigned NOT NULL,
  `experiencia` int(10) unsigned NOT NULL,
  `pontosJogador` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idPersonagem`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fichapersonagem`
--

/*!40000 ALTER TABLE `fichapersonagem` DISABLE KEYS */;
INSERT INTO `fichapersonagem` (`idPersonagem`,`nome`,`forca`,`habilidade`,`resistencia`,`armadura`,`poder de fogo`,`pontos de vida`,`pontos de magia`,`experiencia`,`pontosJogador`) VALUES 
 (1,'Administrador',1,1,1,1,1,1,1,1,0),
 (2,'administrador2',1,1,1,1,1,1,1,1,0);
/*!40000 ALTER TABLE `fichapersonagem` ENABLE KEYS */;


--
-- Definition of table `historiapersonagem`
--

DROP TABLE IF EXISTS `historiapersonagem`;
CREATE TABLE `historiapersonagem` (
  `idhistoriaPersonagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `historia` varchar(255) NOT NULL,
  PRIMARY KEY (`idhistoriaPersonagem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historiapersonagem`
--

/*!40000 ALTER TABLE `historiapersonagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `historiapersonagem` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
