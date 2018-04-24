-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2018 at 02:18 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `PWA`
--
CREATE DATABASE IF NOT EXISTS `PWA` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `PWA`;

-- --------------------------------------------------------

--
-- Table structure for table `Clanci`
--

DROP TABLE IF EXISTS `Clanci`;
CREATE TABLE `Clanci` (
  `id` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Naslov` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `KratkiSadrzaj` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Tekst` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Slika` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Sakrivena` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Clanci`
--

INSERT INTO `Clanci` (`id`, `Datum`, `Naslov`, `KratkiSadrzaj`, `Tekst`, `Slika`, `Sakrivena`) VALUES
(9, '2018-03-12', 'ŠOKANTNA vijest u ovome tekstu!', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada tristique tellus, ut eleifend tortor gravida eget. Quisque volutpat mi varius, vulputate nibh sed, pellentesque metus. Nullam laoreet nisi nec nisi feugiat bibendum. Fusce et fermentum tortor. Nullam finibus, nunc bibendum lobortis tristique, velit dolor tempor dolor, in pellentesque metus elit et erat. Cras facilisis dignissim purus a dignissim. Etiam quis varius augue. Praesent in finibus turpis. Donec finibus, justo nec dignissim luctus, tortor massa condimentum enim, vel auctor arcu nibh id velit. Phasellus in dapibus odio. Mauris tempus laoreet orci id aliquet. Vestibulum pulvinar bibendum lectus, quis fringilla ante porttitor sit amet. Maecenas pulvinar dui sit amet pharetra euismod. Nulla dictum ultrices diam, vitae fermentum diam placerat a. Fusce cursus eu turpis non fringilla. Duis aliquet facilisis sapien in lobortis. Morbi sed leo eu felis convallis congue vitae non sapien. Nulla vitae scelerisque odio, id bibendum quam. Integer malesuada lectus ut magna eleifend eleifend. Duis non felis iaculis, fringilla ipsum vitae, feugiat tortor. Donec in velit sit amet orci vehicula aliquet. Aenean eget magna arcu. Duis id massa euismod ipsum ultricies molestie. Curabitur pellentesque, orci non ultricies pellentesque, velit quam feugiat lacus, a vehicula risus nulla ac enim. Phasellus pretium dolor sed facilisis hendrerit. Maecenas pulvinar magna rutrum eros vulputate venenatis. Maecenas porta enim vel orci feugiat vehicula. Vivamus semper elit sit amet leo facilisis, eu viverra justo euismod. Pellentesque commodo ex eu nulla pretium pulvinar. Curabitur sodales tellus lacus, sit amet sollicitudin nunc finibus eu. Vestibulum justo quam, elementum vitae ornare ut, pretium ac purus. Proin pharetra eu magna id volutpat. Suspendisse sed sapien dolor. Vivamus lobortis tellus lacus, quis facilisis risus aliquet sed. Nam nibh libero, dictum at ante id, feugiat venenatis magna. Nullam sed mauris leo. Praesent et volutpat metus. Curabitur tempus massa et quam eleifend egestas. In hac habitasse platea dictumst. Suspendisse molestie bibendum nulla, sed posuere risus. Pellentesque ut porta mi. Morbi vehicula vulputate risus sit amet tempor. Maecenas ut urna a arcu euismod hendrerit ut ac odio. Mauris at porta ante. Ut sagittis eget nulla non dapibus. Maecenas ac lorem enim. Donec consequat ligula enim, vel mollis tellus tincidunt a. Phasellus at est mauris. Praesent tincidunt efficitur sem, vitae eleifend ante sagittis quis. Aliquam vehicula sapien eget elit tincidunt ornare. Suspendisse non mattis felis. Quisque vulputate, orci eu egestas faucibus, nulla ipsum fringilla leo, non molestie nisl ipsum a nisi. Nunc et ullamcorper turpis. Aenean eu pharetra est. Vestibulum elementum malesuada quam, nec commodo nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In quis nibh in urna fringilla lobortis. Phasellus vel leo nisi.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada tristique tellus, ut eleifend tortor gravida eget. Quisque volutpat mi varius, vulputate nibh sed, pellentesque metus. Nullam laoreet nisi nec nisi feugiat bibendum. Fusce et fermentum tortor. Nullam finibus, nunc bibendum lobortis tristique, velit dolor tempor dolor, in pellentesque metus elit et erat. Cras facilisis dignissim purus a dignissim. Etiam quis varius augue. Praesent in finibus turpis. Donec finibus, justo nec dignissim luctus, tortor massa condimentum enim, vel auctor arcu nibh id velit. Phasellus in dapibus odio. Mauris tempus laoreet orci id aliquet. Vestibulum pulvinar bibendum lectus, quis fringilla ante porttitor sit amet. Maecenas pulvinar dui sit amet pharetra euismod. Nulla dictum ultrices diam, vitae fermentum diam placerat a. Fusce cursus eu turpis non fringilla. Duis aliquet facilisis sapien in lobortis. Morbi sed leo eu felis convallis congue vitae non sapien. Nulla vitae scelerisque odio, id bibendum quam. Integer malesuada lectus ut magna eleifend eleifend. Duis non felis iaculis, fringilla ipsum vitae, feugiat tortor. Donec in velit sit amet orci vehicula aliquet. Aenean eget magna arcu. Duis id massa euismod ipsum ultricies molestie. Curabitur pellentesque, orci non ultricies pellentesque, velit quam feugiat lacus, a vehicula risus nulla ac enim. Phasellus pretium dolor sed facilisis hendrerit. Maecenas pulvinar magna rutrum eros vulputate venenatis. Maecenas porta enim vel orci feugiat vehicula. Vivamus semper elit sit amet leo facilisis, eu viverra justo euismod. Pellentesque commodo ex eu nulla pretium pulvinar. Curabitur sodales tellus lacus, sit amet sollicitudin nunc finibus eu. Vestibulum justo quam, elementum vitae ornare ut, pretium ac purus. Proin pharetra eu magna id volutpat. Suspendisse sed sapien dolor. Vivamus lobortis tellus lacus, quis facilisis risus aliquet sed. Nam nibh libero, dictum at ante id, feugiat venenatis magna. Nullam sed mauris leo. Praesent et volutpat metus. Curabitur tempus massa et quam eleifend egestas. In hac habitasse platea dictumst. Suspendisse molestie bibendum nulla, sed posuere risus. Pellentesque ut porta mi. Morbi vehicula vulputate risus sit amet tempor. Maecenas ut urna a arcu euismod hendrerit ut ac odio. Mauris at porta ante. Ut sagittis eget nulla non dapibus. Maecenas ac lorem enim. Donec consequat ligula enim, vel mollis tellus tincidunt a. Phasellus at est mauris. Praesent tincidunt efficitur sem, vitae eleifend ante sagittis quis. Aliquam vehicula sapien eget elit tincidunt ornare. Suspendisse non mattis felis. Quisque vulputate, orci eu egestas faucibus, nulla ipsum fringilla leo, non molestie nisl ipsum a nisi. Nunc et ullamcorper turpis. Aenean eu pharetra est. Ve ', 'IMAG1254.jpg', 0),
(11, '2018-04-23', 'Ovo je proba', '', 'Najnovija friška vijest', 'deezerNeLaze.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clanci`
--
ALTER TABLE `Clanci`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clanci`
--
ALTER TABLE `Clanci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
