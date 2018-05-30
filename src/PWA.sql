# /*-- phpMyAdmin SQL Dump
# -- version 4.7.7
# -- https://www.phpmyadmin.net/
# --
# -- Host: localhost
# -- Generation Time: May 04, 2018 at 10:49 PM
# -- Server version: 10.1.30-MariaDB
# -- PHP Version: 7.2.1
#
# SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
# SET AUTOCOMMIT = 0;
# START TRANSACTION;
# SET time_zone = "+00:00";
#
#
# /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
# /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
# /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
# /*!40101 SET NAMES utf8 */;
#
# --
# -- Database: `PWA`
# --
#
# CREATE DATABASE IF NOT EXISTS `PWA` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
# USE `PWA`;
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `Clanci`
# --
#
# DROP TABLE IF EXISTS `Clanci`;
# CREATE TABLE `Clanci` (
#   `id` int(11) NOT NULL,
#   `Datum` date NOT NULL,
#   `VrijemeIzrade` time NOT NULL,
#   `Naslov` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
#   `KratkiSadrzaj` varchar(102) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
#   `Tekst` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
#   `Kategorija` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
#   `Slika` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
#   `Sakrivena` tinyint(1) NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#
# --
# -- Dumping data for table `Clanci`
# --
#
# INSERT INTO `Clanci` (`id`, `Datum`, `VrijemeIzrade`, `Naslov`, `KratkiSadrzaj`, `Tekst`, `Kategorija`, `Slika`, `Sakrivena`) VALUES
#   (1, '2018-03-12', '00:00:00', 'SOKANTNA vijest u ovome tekstu!', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada tristique tellus, ut eleifend tortor gravida eget. Quisque volutpat mi varius, vulputate nibh sed, pellentesque metus. Nullam laoreet nisi nec nisi feugiat bibendum. Fusce et fermentum tortor. Nullam finibus, nunc bibendum lobortis tristique, velit dolor tempor dolor, in pellentesque metus elit et erat. Cras facilisis dignissim purus a dignissim. Etiam quis varius augue. Praesent in finibus turpis. Donec finibus, justo nec dignissim luctus, tortor massa condimentum enim, vel auctor arcu nibh id velit. Phasellus in dapibus odio. Mauris tempus laoreet orci id aliquet. Vestibulum pulvinar bibendum lectus, quis fringilla ante porttitor sit amet. Maecenas pulvinar dui sit amet pharetra euismod. Nulla dictum ultrices diam, vitae fermentum diam placerat a. Fusce cursus eu turpis non fringilla. Duis aliquet facilisis sapien in lobortis. Morbi sed leo eu felis convallis congue vitae non sapien. Nulla vitae scelerisque odio, id bibendum quam. Integer malesuada lectus ut magna eleifend eleifend. Duis non felis iaculis, fringilla ipsum vitae, feugiat tortor. Donec in velit sit amet orci vehicula aliquet. Aenean eget magna arcu. Duis id massa euismod ipsum ultricies molestie. Curabitur pellentesque, orci non ultricies pellentesque, velit quam feugiat lacus, a vehicula risus nulla ac enim. Phasellus pretium dolor sed facilisis hendrerit. Maecenas pulvinar magna rutrum eros vulputate venenatis. Maecenas porta enim vel orci feugiat vehicula. Vivamus semper elit sit amet leo facilisis, eu viverra justo euismod. Pellentesque commodo ex eu nulla pretium pulvinar. Curabitur sodales tellus lacus, sit amet sollicitudin nunc finibus eu. Vestibulum justo quam, elementum vitae ornare ut, pretium ac purus. Proin pharetra eu magna id volutpat. Suspendisse sed sapien dolor. Vivamus lobortis tellus lacus, quis facilisis risus aliquet sed. Nam nibh libero, dictum at ante id, feugiat venenatis magna. Nullam sed mauris leo. Praesent et volutpat metus. Curabitur tempus massa et quam eleifend egestas. In hac habitasse platea dictumst. Suspendisse molestie bibendum nulla, sed posuere risus. Pellentesque ut porta mi. Morbi vehicula vulputate risus sit amet tempor. Maecenas ut urna a arcu euismod hendrerit ut ac odio. Mauris at porta ante. Ut sagittis eget nulla non dapibus. Maecenas ac lorem enim. Donec consequat ligula enim, vel mollis tellus tincidunt a. Phasellus at est mauris. Praesent tincidunt efficitur sem, vitae eleifend ante sagittis quis. Aliquam vehicula sapien eget elit tincidunt ornare. Suspendisse non mattis felis. Quisque vulputate, orci eu egestas faucibus, nulla ipsum fringilla leo, non molestie nisl ipsum a nisi. Nunc et ullamcorper turpis. Aenean eu pharetra est. Vestibulum elementum malesuada quam, nec commodo nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In quis nibh in urna fringilla lobortis. Phasellus vel leo nisi.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada tristique tellus, ut eleifend tortor gravida eget. Quisque volutpat mi varius, vulputate nibh sed, pellentesque metus. Nullam laoreet nisi nec nisi feugiat bibendum. Fusce et fermentum tortor. Nullam finibus, nunc bibendum lobortis tristique, velit dolor tempor dolor, in pellentesque metus elit et erat. Cras facilisis dignissim purus a dignissim. Etiam quis varius augue. Praesent in finibus turpis. Donec finibus, justo nec dignissim luctus, tortor massa condimentum enim, vel auctor arcu nibh id velit. Phasellus in dapibus odio. Mauris tempus laoreet orci id aliquet. Vestibulum pulvinar bibendum lectus, quis fringilla ante porttitor sit amet. Maecenas pulvinar dui sit amet pharetra euismod. Nulla dictum ultrices diam, vitae fermentum diam placerat a. Fusce cursus eu turpis non fringilla. Duis aliquet facilisis sapien in lobortis. Morbi sed leo eu felis convallis congue vitae non sapien. Nulla vitae scelerisque odio, id bibendum quam. Integer malesuada lectus ut magna eleifend eleifend. Duis non felis iaculis, fringilla ipsum vitae, feugiat tortor. Donec in velit sit amet orci vehicula aliquet. Aenean eget magna arcu. Duis id massa euismod ipsum ultricies molestie. Curabitur pellentesque, orci non ultricies pellentesque, velit quam feugiat lacus, a vehicula risus nulla ac enim. Phasellus pretium dolor sed facilisis hendrerit. Maecenas pulvinar magna rutrum eros vulputate venenatis. Maecenas porta enim vel orci feugiat vehicula. Vivamus semper elit sit amet leo facilisis, eu viverra justo euismod. Pellentesque commodo ex eu nulla pretium pulvinar. Curabitur sodales tellus lacus, sit amet sollicitudin nunc finibus eu. Vestibulum justo quam, elementum vitae ornare ut, pretium ac purus. Proin pharetra eu magna id volutpat. Suspendisse sed sapien dolor. Vivamus lobortis tellus lacus, quis facilisis risus aliquet sed. Nam nibh libero, dictum at ante id, feugiat venenatis magna. Nullam sed mauris leo. Praesent et volutpat metus. Curabitur tempus massa et quam eleifend egestas. In hac habitasse platea dictumst. Suspendisse molestie bibendum nulla, sed posuere risus. Pellentesque ut porta mi. Morbi vehicula vulputate risus sit amet tempor. Maecenas ut urna a arcu euismod hendrerit ut ac odio. Mauris at porta ante. Ut sagittis eget nulla non dapibus. Maecenas ac lorem enim. Donec consequat ligula enim, vel mollis tellus tincidunt a. Phasellus at est mauris. Praesent tincidunt efficitur sem, vitae eleifend ante sagittis quis. Aliquam vehicula sapien eget elit tincidunt ornare. Suspendisse non mattis felis. Quisque vulputate, orci eu egestas faucibus, nulla ipsum fringilla leo, non molestie nisl ipsum a nisi. Nunc et ullamcorper turpis. Aenean eu pharetra est. Ve ', '', 'IMAG1254.jpg', 0),
#   (2, '2018-04-23', '00:00:00', 'Ovo je proba', '', 'Najnovija friska vijest', '', 'deezerNeLaze.png', 0),
#   (3, '2018-04-24', '00:00:00', 'Vijest #3', 'Ovo je najnovija vijest', 'Samo najnovije vijesti na ovome portalu nadam se da su dobre inace nece biti dobro.', '', '', 0),
#   (84, '2018-05-07', '01:11:05', 'Reddit+April+Fools+2017', 'Najbolji+eksperiment+reddita+do+sada', 'U+usporedbi+sa+svim+dosadasnjim+godinama%2C+ovo+je+bio+jedan+od+najboljih+eksperimenata+koje+je+reddit+ikada+napravio.%0D%0A%0D%0AKorisnici+su+mogli+postavljati+piksele+u+bilo+kojoj+boji+bilo+gdje+na+platnu+od+1000x1000+pixela.+Naravno%2C+postojalo+je+ogranicenje+od+par+minuta+izmedu+svakog+postavljanja.%0D%0AUbrzo+su+korisnici+shvatili+da+sami+mogu+jedva+ostaviti+traga%2C+no+ako+se+udruze+mogu+nastati+remek+dijela.%0D%0A%0D%0ASlika+govori+1000+rijeci+tako+da+dobro+proucite+uradak+interneta+u+par+dana.%0D%0APokusajte+pronaci+zastavu+Hrvatske%2C+Baltazara%2C+Tux-a+i+mnoge+druge+znakove+zajednica.', 'Putovanja', 'EZJsdqC.png', 0);
#
# --
# -- Indexes for dumped tables
# --
#
# --
# -- Indexes for table `Clanci`
# --
# ALTER TABLE `Clanci`
#   ADD PRIMARY KEY (`id`);
#
# --
# -- AUTO_INCREMENT for dumped tables
# --
#
# --
# -- AUTO_INCREMENT for table `Clanci`
# --
# ALTER TABLE `Clanci`
#   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
# COMMIT;
#
# /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
# /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
# /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
# */

CREATE DATABASE  IF NOT EXISTS `PWA` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `PWA`;
-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: PWA
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `Clanci`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `korisnickoIme` varchar(255) COLLATE utf8_bin NOT NULL,
  `lozinka` varchar(255) COLLATE utf8_bin NOT NULL,
  `ime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `level` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Clanci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clanci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Datum` date NOT NULL,
  `VrijemeIzrade` time NOT NULL,
  `Naslov` varchar(32) COLLATE utf8_bin NOT NULL,
  `KratkiSadrzaj` varchar(102) COLLATE utf8_bin NOT NULL,
  `Tekst` text COLLATE utf8_bin NOT NULL,
  `Kategorija` varchar(20) COLLATE utf8_bin NOT NULL,
  `Slika` varchar(64) COLLATE utf8_bin NOT NULL,
  `Sakrivena` tinyint(1) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Clanci_users_id_fk` (`idUser`),
  CONSTRAINT `Clanci_users_id_fk` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clanci`
--

LOCK TABLES `Clanci` WRITE;
/*!40000 ALTER TABLE `Clanci` DISABLE KEYS */;
INSERT INTO `Clanci` VALUES (1,'2018-03-12','00:00:00','SOKANTNA vijest u ovome tekstu!','Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada tristique tellus, ut eleifend tortor gravida eget. Quisque volutpat mi varius, vulputate nibh sed, pellentesque metus. Nullam laoreet nisi nec nisi feugiat bibendum. Fusce et fermentum tortor. Nullam finibus, nunc bibendum lobortis tristique, velit dolor tempor dolor, in pellentesque metus elit et erat. Cras facilisis dignissim purus a dignissim. Etiam quis varius augue. Praesent in finibus turpis. Donec finibus, justo nec dignissim luctus, tortor massa condimentum enim, vel auctor arcu nibh id velit. Phasellus in dapibus odio. Mauris tempus laoreet orci id aliquet. Vestibulum pulvinar bibendum lectus, quis fringilla ante porttitor sit amet. Maecenas pulvinar dui sit amet pharetra euismod. Nulla dictum ultrices diam, vitae fermentum diam placerat a. Fusce cursus eu turpis non fringilla. Duis aliquet facilisis sapien in lobortis. Morbi sed leo eu felis convallis congue vitae non sapien. Nulla vitae scelerisque odio, id bibendum quam. Integer malesuada lectus ut magna eleifend eleifend. Duis non felis iaculis, fringilla ipsum vitae, feugiat tortor. Donec in velit sit amet orci vehicula aliquet. Aenean eget magna arcu. Duis id massa euismod ipsum ultricies molestie. Curabitur pellentesque, orci non ultricies pellentesque, velit quam feugiat lacus, a vehicula risus nulla ac enim. Phasellus pretium dolor sed facilisis hendrerit. Maecenas pulvinar magna rutrum eros vulputate venenatis. Maecenas porta enim vel orci feugiat vehicula. Vivamus semper elit sit amet leo facilisis, eu viverra justo euismod. Pellentesque commodo ex eu nulla pretium pulvinar. Curabitur sodales tellus lacus, sit amet sollicitudin nunc finibus eu. Vestibulum justo quam, elementum vitae ornare ut, pretium ac purus. Proin pharetra eu magna id volutpat. Suspendisse sed sapien dolor. Vivamus lobortis tellus lacus, quis facilisis risus aliquet sed. Nam nibh libero, dictum at ante id, feugiat venenatis magna. Nullam sed mauris leo. Praesent et volutpat metus. Curabitur tempus massa et quam eleifend egestas. In hac habitasse platea dictumst. Suspendisse molestie bibendum nulla, sed posuere risus. Pellentesque ut porta mi. Morbi vehicula vulputate risus sit amet tempor. Maecenas ut urna a arcu euismod hendrerit ut ac odio. Mauris at porta ante. Ut sagittis eget nulla non dapibus. Maecenas ac lorem enim. Donec consequat ligula enim, vel mollis tellus tincidunt a. Phasellus at est mauris. Praesent tincidunt efficitur sem, vitae eleifend ante sagittis quis. Aliquam vehicula sapien eget elit tincidunt ornare. Suspendisse non mattis felis. Quisque vulputate, orci eu egestas faucibus, nulla ipsum fringilla leo, non molestie nisl ipsum a nisi. Nunc et ullamcorper turpis. Aenean eu pharetra est. Vestibulum elementum malesuada quam, nec commodo nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In quis nibh in urna fringilla lobortis. Phasellus vel leo nisi.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada tristique tellus, ut eleifend tortor gravida eget. Quisque volutpat mi varius, vulputate nibh sed, pellentesque metus. Nullam laoreet nisi nec nisi feugiat bibendum. Fusce et fermentum tortor. Nullam finibus, nunc bibendum lobortis tristique, velit dolor tempor dolor, in pellentesque metus elit et erat. Cras facilisis dignissim purus a dignissim. Etiam quis varius augue. Praesent in finibus turpis. Donec finibus, justo nec dignissim luctus, tortor massa condimentum enim, vel auctor arcu nibh id velit. Phasellus in dapibus odio. Mauris tempus laoreet orci id aliquet. Vestibulum pulvinar bibendum lectus, quis fringilla ante porttitor sit amet. Maecenas pulvinar dui sit amet pharetra euismod. Nulla dictum ultrices diam, vitae fermentum diam placerat a. Fusce cursus eu turpis non fringilla. Duis aliquet facilisis sapien in lobortis. Morbi sed leo eu felis convallis congue vitae non sapien. Nulla vitae scelerisque odio, id bibendum quam. Integer malesuada lectus ut magna eleifend eleifend. Duis non felis iaculis, fringilla ipsum vitae, feugiat tortor. Donec in velit sit amet orci vehicula aliquet. Aenean eget magna arcu. Duis id massa euismod ipsum ultricies molestie. Curabitur pellentesque, orci non ultricies pellentesque, velit quam feugiat lacus, a vehicula risus nulla ac enim. Phasellus pretium dolor sed facilisis hendrerit. Maecenas pulvinar magna rutrum eros vulputate venenatis. Maecenas porta enim vel orci feugiat vehicula. Vivamus semper elit sit amet leo facilisis, eu viverra justo euismod. Pellentesque commodo ex eu nulla pretium pulvinar. Curabitur sodales tellus lacus, sit amet sollicitudin nunc finibus eu. Vestibulum justo quam, elementum vitae ornare ut, pretium ac purus. Proin pharetra eu magna id volutpat. Suspendisse sed sapien dolor. Vivamus lobortis tellus lacus, quis facilisis risus aliquet sed. Nam nibh libero, dictum at ante id, feugiat venenatis magna. Nullam sed mauris leo. Praesent et volutpat metus. Curabitur tempus massa et quam eleifend egestas. In hac habitasse platea dictumst. Suspendisse molestie bibendum nulla, sed posuere risus. Pellentesque ut porta mi. Morbi vehicula vulputate risus sit amet tempor. Maecenas ut urna a arcu euismod hendrerit ut ac odio. Mauris at porta ante. Ut sagittis eget nulla non dapibus. Maecenas ac lorem enim. Donec consequat ligula enim, vel mollis tellus tincidunt a. Phasellus at est mauris. Praesent tincidunt efficitur sem, vitae eleifend ante sagittis quis. Aliquam vehicula sapien eget elit tincidunt ornare. Suspendisse non mattis felis. Quisque vulputate, orci eu egestas faucibus, nulla ipsum fringilla leo, non molestie nisl ipsum a nisi. Nunc et ullamcorper turpis. Aenean eu pharetra est. Ve ','','IMAG1254.jpg',0,4),(2,'2018-04-23','00:00:00','Ovo je proba','','Najnovija friska vijest','','deezerNeLaze.png',0,4),(3,'2018-04-24','00:00:00','Vijest #3','Ovo je najnovija vijest','Samo najnovije vijesti na ovome portalu nadam se da su dobre inace nece biti dobro.','','',1,4),(84,'2018-05-07','01:11:05','Reddit+April+Fools+2017','Najbolji+eksperiment+reddita+do+sada','U+usporedbi+sa+svim+dosadasnjim+godinama%2C+ovo+je+bio+jedan+od+najboljih+eksperimenata+koje+je+reddit+ikada+napravio.%0D%0A%0D%0AKorisnici+su+mogli+postavljati+piksele+u+bilo+kojoj+boji+bilo+gdje+na+platnu+od+1000x1000+pixela.+Naravno%2C+postojalo+je+ogranicenje+od+par+minuta+izmedu+svakog+postavljanja.%0D%0AUbrzo+su+korisnici+shvatili+da+sami+mogu+jedva+ostaviti+traga%2C+no+ako+se+udruze+mogu+nastati+remek+dijela.%0D%0A%0D%0ASlika+govori+1000+rijeci+tako+da+dobro+proucite+uradak+interneta+u+par+dana.%0D%0APokusajte+pronaci+zastavu+Hrvatske%2C+Baltazara%2C+Tux-a+i+mnoge+druge+znakove+zajednica.','Putovanja','EZJsdqC.png',0,4);
/*!40000 ALTER TABLE `Clanci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--



--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (4,'filip','9a2c0891ae90ce346e9f78bf7a579397','Filip','fmilkovic%40tvz.hr',2),(5,'test','098f6bcd4621d373cade4e832627b4f6','Test','test%40test.com',1), (6,'admin','21232f297a57a5a743894a0e4a801fc3','admin','admin%40admin.com',2);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-21 13:21:57
