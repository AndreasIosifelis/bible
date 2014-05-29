-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for bible
CREATE DATABASE IF NOT EXISTS `bible` /*!40100 DEFAULT CHARACTER SET greek */;
USE `bible`;


-- Dumping structure for table bible.lookups
CREATE TABLE IF NOT EXISTS `lookups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr` varchar(3) DEFAULT NULL,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=greek;

-- Dumping data for table bible.lookups: ~7 rows (approximately)
DELETE FROM `lookups`;
/*!40000 ALTER TABLE `lookups` DISABLE KEYS */;
INSERT INTO `lookups` (`id`, `attr`, `typeId`, `description`) VALUES
	(2, 'GEN', 4, 'Γένεση'),
	(3, 'EXO', 4, 'Έξοδος'),
	(4, 'LEV', 4, 'Λευιτικό'),
	(5, 'ARI', 4, 'Αριθμοί'),
	(6, 'DEF', 4, 'Δευτερονόμιο'),
	(7, 'ARX', 5, 'Αρχαίο Κείμενο'),
	(8, 'BAM', 5, 'Βάμβας');
/*!40000 ALTER TABLE `lookups` ENABLE KEYS */;


-- Dumping structure for table bible.lookuptypes
CREATE TABLE IF NOT EXISTS `lookuptypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=greek;

-- Dumping data for table bible.lookuptypes: ~2 rows (approximately)
DELETE FROM `lookuptypes`;
/*!40000 ALTER TABLE `lookuptypes` DISABLE KEYS */;
INSERT INTO `lookuptypes` (`id`, `description`) VALUES
	(4, 'BOOK'),
	(5, 'VERSION');
/*!40000 ALTER TABLE `lookuptypes` ENABLE KEYS */;


-- Dumping structure for table bible.verses
CREATE TABLE IF NOT EXISTS `verses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionId` varchar(3) NOT NULL DEFAULT '0',
  `bookId` varchar(3) NOT NULL DEFAULT '0',
  `chapterId` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=greek;

-- Dumping data for table bible.verses: ~1 rows (approximately)
DELETE FROM `verses`;
/*!40000 ALTER TABLE `verses` DISABLE KEYS */;
INSERT INTO `verses` (`id`, `versionId`, `bookId`, `chapterId`, `number`, `text`) VALUES
	(5, 'BAB', 'GEN', 1, 1, 'Εν αρχή εποίησεν ο Θεός τον ουρανό και τη γή'),
	(6, 'BAB', 'GEN', 1, 2, 'Η δε γη ήτο άμορφος και έρημος'),
	(7, 'BAB', 'GEN', 2, 2, 'Καλημέρα');
/*!40000 ALTER TABLE `verses` ENABLE KEYS */;


-- Dumping structure for procedure bible.INSERT_LOOKUP
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_LOOKUP`(IN `attr` VARCHAR(3), IN `typeId` INT, IN `description` VARCHAR(255))
BEGIN
insert into `lookups` (`attr`,`typeId`, `description`) values (attr, typeId, description);
select * from `lookups`;
select * from `lookupTypes`;
END//
DELIMITER ;


-- Dumping structure for procedure bible.INSERT_LOOKUP_TYPE
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_LOOKUP_TYPE`(IN `description` VARCHAR(255))
BEGIN
insert into `lookupTypes` (`description`) values (description);
select * from `lookupTypes`;
END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
