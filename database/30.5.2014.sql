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


-- Dumping structure for table bible.ci_sessions
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table bible.ci_sessions: ~5 rows (approximately)
DELETE FROM `ci_sessions`;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('447c2f50b905ab2ec1c99f4dea012c77', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1401460198, ''),
	('8f9d08b3146aa4a4c65752bf65f77541', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1401460204, ''),
	('95187ca17bfe1a9eded3067f5688df48', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1401460359, ''),
	('a41c16de80c155a81792c41ad03f1f19', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1401460203, ''),
	('b82e52885f6a584444a9960c7be6f3fa', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1401460196, '');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;


-- Dumping structure for table bible.lookups
CREATE TABLE IF NOT EXISTS `lookups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL DEFAULT '0',
  `attr` varchar(3) DEFAULT NULL,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=greek;

-- Dumping data for table bible.lookups: ~65 rows (approximately)
DELETE FROM `lookups`;
/*!40000 ALTER TABLE `lookups` DISABLE KEYS */;
INSERT INTO `lookups` (`id`, `count`, `attr`, `typeId`, `description`) VALUES
	(7, 0, 'ARX', 5, 'Αρχαίο Κείμενο'),
	(8, 0, 'BAM', 5, 'Βάμβας'),
	(133, 50, 'GEN', 4, 'Γένεση'),
	(134, 40, 'EXO', 4, 'Έξοδος'),
	(135, 27, 'LEV', 4, 'Λευτικό'),
	(136, 36, 'ARI', 4, 'Αριθμοί'),
	(137, 34, 'DEF', 4, 'Δευτερονόμιο'),
	(138, 24, 'ITN', 4, 'Ιησούς του Ναύη'),
	(139, 21, 'KRI', 4, 'Κρίτές'),
	(140, 4, 'ROU', 4, 'Ρουθ'),
	(141, 31, 'ASA', 4, 'Α Σαμουήλ'),
	(142, 24, 'BSA', 4, 'Β Σαμουήλ'),
	(143, 22, 'ABA', 4, 'Α Βασιλέων'),
	(144, 25, 'BBA', 4, 'Β Βασιλέων'),
	(145, 29, 'AXR', 4, 'Α Χρονικών'),
	(146, 36, 'BXR', 4, 'Β Χρονικών'),
	(147, 10, 'EZR', 4, 'Έσδρας'),
	(148, 13, 'NEE', 4, 'Νεεμίας'),
	(149, 10, 'EST', 4, 'Εσθήρ'),
	(150, 42, 'IOB', 4, 'Ιώβ'),
	(151, 150, 'PSA', 4, 'Ψαλμοί'),
	(152, 31, 'PAR', 4, 'Παροιμίες'),
	(153, 12, 'EKL', 4, 'Εκκλησιαστής'),
	(154, 8, 'AAS', 4, 'Άσμα Ασμάτων'),
	(155, 66, 'HSA', 4, 'Ησαϊας'),
	(156, 52, 'IER', 4, 'Ιερεμίας'),
	(157, 5, 'THR', 4, 'Θρήνοι'),
	(158, 48, 'IEZ', 4, 'Ιεζεκιήλ'),
	(159, 12, 'DAN', 4, 'Δανιήλ'),
	(160, 14, 'OSH', 4, 'Ωσηέ'),
	(161, 3, 'IOH', 4, 'Ιωήλ'),
	(162, 9, 'AMO', 4, 'Αμώς'),
	(163, 1, 'ABD', 4, 'Αβδιού'),
	(164, 4, 'ION', 4, 'Ιωνάς'),
	(165, 7, 'MIX', 4, 'Μιχαίας'),
	(166, 3, 'NAO', 4, 'Ναούμ'),
	(167, 3, 'HAB', 4, 'Αββακούμ'),
	(168, 3, 'ZAX', 4, 'Ζαχαρίας'),
	(169, 4, 'MAL', 4, 'Μαλαχίας'),
	(170, 28, 'MAT', 4, 'Ματθαίος'),
	(171, 16, 'MAR', 4, 'Μάρκος'),
	(172, 24, 'LUK', 4, 'Λουκάς'),
	(173, 21, 'IOA', 4, 'Ιωάννης'),
	(174, 28, 'PRA', 4, 'Πράξεις'),
	(175, 16, 'ROM', 4, 'Ρωμαίους'),
	(176, 16, 'AKO', 4, 'Α Κορινθίους'),
	(177, 13, 'BKO', 4, 'Β Κορινθίους'),
	(178, 6, 'GAL', 4, 'Γαλάτας'),
	(179, 6, 'EFE', 4, 'Εφεσίους'),
	(180, 4, 'FIL', 4, 'Φιλιππισίους'),
	(181, 4, 'COL', 4, 'Κολοσσαείς'),
	(182, 5, 'ATH', 4, 'Α Θεσσαλονικείς'),
	(183, 3, 'BTH', 4, 'Β Θεσσαλονικείς'),
	(184, 6, 'ATI', 4, 'Α Τιμόθεο'),
	(185, 4, 'BTI', 4, 'Β Τιμόθεο'),
	(186, 3, 'TIT', 4, 'Τίτος'),
	(187, 1, 'FIL', 4, 'Φιλήμονα'),
	(188, 13, 'EBR', 4, 'Εβραίους'),
	(189, 5, 'IAK', 4, 'Ιακώβου'),
	(190, 5, 'APE', 4, 'Α Πέτρου'),
	(191, 3, 'BPE', 4, 'Β Πέτρου'),
	(192, 5, 'AIO', 4, 'Α Ιωάννου'),
	(193, 1, 'BIO', 4, 'Β Ιωάννου'),
	(194, 1, 'IOU', 4, 'Ιούδα'),
	(195, 22, 'APO', 4, 'Αποκάλυψη');
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

-- Dumping data for table bible.verses: ~3 rows (approximately)
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
#select * from `lookups`;
#select * from `lookupTypes`;
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
