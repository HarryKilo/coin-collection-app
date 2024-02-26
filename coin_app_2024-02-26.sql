# ************************************************************
# Sequel Ace SQL dump
# Version 20062
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 11.2.2-MariaDB-1:11.2.2+maria~ubu2204)
# Database: coin_app
# Generation Time: 2024-02-26 11:34:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table coins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coins`;

CREATE TABLE `coins` (
  `Reverse` varchar(255) DEFAULT NULL,
  `Obverse` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Issuer` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL,
  `Value` decimal(11,0) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `coins` WRITE;
/*!40000 ALTER TABLE `coins` DISABLE KEYS */;

INSERT INTO `coins` (`Reverse`, `Obverse`, `Type`, `id`, `Issuer`, `Grade`, `Value`, `Image`)
VALUES
	('COS VI P P S P Q R Genius, naked, standing left,\nholding patera in right hand and ears of grain in left.','IMP TRAIANO AVG GER DAC P M TR\nP, laureate head, draped and cuirassed bust right.','Gold Aureus',1,'Trajan (AD 98-117)','Extremely Fine',8500,'https://www.baldwin.co.uk/wp-content/uploads/2023/12/C234006152-1-20231208162429.jpg'),
	('VIRTVS MILITVM, the four Tetrarchs sacrificing over a tripod, before the gate of a Roman camp.\n','MAXIMIA-NVS AVG, laureate head of Maximian facing right.\n','Silver Argenteus',2,'Maximian (AD 286-305)','Extremely Fine',995,'https://www.baldwin.co.uk/wp-content/uploads/2023/12/C234005985-1-20231208165538.jpg'),
	('SALVS AVGG, Salus standing left, holding rudder and feeding snake which rises from altar.','IMP M IVL PHILIPPVS AVG, laureate, draped and cuirassed bust of Philip facing right.\n','Bronze Sestertius',3,'Philip I (AD 244-249)','Good Very Fine\n',220,'https://www.baldwin.co.uk/wp-content/uploads/2022/12/C223014268-1-20221223095802.jpg'),
	('SOLI INVICTO COMITI, Sol standing facing, head facing, chlamys draped over his left shoulder and hanging behind, raising his right hand and holding up globe with his left, S T in exergue,','CONSTANTINVS P F AVG, laureate and cuirassed bust facing right.','Bronze Follis',4,'Constantine I (A.D. 307-337)','Extremely Fine, rare',375,'https://www.baldwin.co.uk/wp-content/uploads/2019/03/C134HG053077-1-20190313222757.jpg'),
	('Mount Argaeus topped with statue of Sol (?) holding sceptre and globe.\n\n\n','Laureate head of Nero facing right.','Silver Hemidrachm',5,'Nero (AD 54-68)','Good Very Fine',575,'https://www.baldwin.co.uk/wp-content/uploads/2023/12/C234005594-1-20231208160025.jpg');

/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
