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
DROP DATABASE IF EXISTS `preskok_test`;
CREATE DATABASE IF NOT EXISTS `preskok_test` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_slovenian_ci */;
USE `preskok_test`;

-- Dumping structure for tabela preskok.accounts
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `AccountID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `InvoiceID` int(11) NOT NULL,
  `EntryDate` datetime NOT NULL,
  `EntryYear` year(4) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AccountID`),
  KEY `FK_accounts_customer` (`CustomerID`),
  KEY `FK_accounts_invoices` (`InvoiceID`),
  CONSTRAINT `FK_accounts_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `FK_accounts_invoices` FOREIGN KEY (`InvoiceID`) REFERENCES `invoices` (`InvoiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf16 COLLATE=utf16_slovenian_ci COMMENT='Main accounts table';

-- Data exporting was unselected.
-- Dumping structure for tabela preskok.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf16_slovenian_ci NOT NULL,
  `Surname` varchar(150) COLLATE utf16_slovenian_ci NOT NULL,
  `Address` varchar(150) COLLATE utf16_slovenian_ci DEFAULT NULL,
  `Phone` varchar(50) COLLATE utf16_slovenian_ci DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_slovenian_ci COMMENT='Customer data';

-- Data exporting was unselected.
-- Dumping structure for tabela preskok.invoices
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `InvoiceID` int(11) NOT NULL AUTO_INCREMENT,
  `Incoming` decimal(15,2) unsigned zerofill DEFAULT NULL,
  `Outgoing` decimal(15,2) unsigned zerofill DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`InvoiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16 COLLATE=utf16_slovenian_ci COMMENT='Main invoice table';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
