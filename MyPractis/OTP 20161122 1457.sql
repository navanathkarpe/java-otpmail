-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mywork
--

CREATE DATABASE IF NOT EXISTS mywork;
USE mywork;

--
-- Definition of table `otp`
--

DROP TABLE IF EXISTS `otp`;
CREATE TABLE `otp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(115) NOT NULL,
  `otp` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp`
--

/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` (`id`,`email`,`otp`) VALUES 
 (1,'karpenavanath@gmail.com','549127');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `roll` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `bdate` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`id`,`fname`,`lname`,`uname`,`password`,`roll`,`department`,`class`,`gender`,`bdate`,`contact`,`email`) VALUES 
 (1,'navanath','karpe','navanath123','123456789','45','Computer','2','male','17/07/1991','9822710808','karpenavanath@gmail.com');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
