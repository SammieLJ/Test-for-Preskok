-- --------------------------------------------------------
-- Strežnik:                     127.0.0.1
-- Verzija strežnika:            5.7.14 - MySQL Community Server (GPL)
-- Operacijski sistem strežnika: Win64
-- HeidiSQL Različica:           9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for preskok
CREATE DATABASE IF NOT EXISTS `preskok` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_slovenian_ci */;
USE `preskok`;

-- Dumping structure for tabela preskok.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `AccountID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Incoming` int(11) unsigned zerofill DEFAULT NULL,
  `Outgoing` int(11) unsigned zerofill DEFAULT NULL,
  `InvoiceDate` datetime NOT NULL,
  `InvoiceYear` year(4) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AccountID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf16 COLLATE=utf16_slovenian_ci COMMENT='Main accounts table';

-- Dumping data for table preskok.accounts: 5 rows
DELETE FROM `accounts`;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`AccountID`, `CustomerID`, `Incoming`, `Outgoing`, `InvoiceDate`, `InvoiceYear`, `Timestamp`) VALUES
	(1, 1, 00000000300, 00000000100, '2017-11-23 11:00:00', '2017', '2017-12-09 15:23:41'),
	(2, 2, 00000000300, 00000000000, '2017-12-05 13:00:00', '2017', '2017-12-09 15:09:45'),
	(3, 3, 00000000100, 00000000050, '2017-12-03 09:00:00', '2017', '2017-12-09 15:23:48'),
	(4, 4, 00000000150, 00000000000, '2016-12-03 09:00:00', '2016', '2017-12-09 15:10:32'),
	(5, 4, 00000000150, 00000000020, '2017-11-30 09:00:00', '2017', '2017-12-09 15:37:58');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for tabela preskok.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf16_slovenian_ci NOT NULL,
  `Surname` varchar(150) COLLATE utf16_slovenian_ci NOT NULL,
  `Address` varchar(150) COLLATE utf16_slovenian_ci DEFAULT NULL,
  `Phone` varchar(50) COLLATE utf16_slovenian_ci DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_slovenian_ci COMMENT='Customer data';

-- Dumping data for table preskok.customer: 4 rows
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`CustomerID`, `Name`, `Surname`, `Address`, `Phone`, `Timestamp`) VALUES
	(1, 'Janez', 'Novak', 'Ovinkarska 24, Ljubljana', '069495457', '2017-12-09 13:18:42'),
	(2, 'Anja', 'Srečko', 'Iz drevesa 6, Kranj', '046001002', '2017-12-09 13:19:51'),
	(3, 'Sara', 'Božič', 'Dimnikarska ulica 3, Novo Mesto', '057003004', '2017-12-09 13:20:39'),
	(4, 'Gašper', 'Peresnik', 'Gromska cesta 4, Nova Gorica', '034556543', '2017-12-09 13:21:37');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
