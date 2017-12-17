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


-- Dumping database structure for practicalparsefile
CREATE DATABASE IF NOT EXISTS `practicalparsefile` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_slovenian_ci */;
USE `practicalparsefile`;

-- Dumping structure for tabela practicalparsefile.datafile
CREATE TABLE IF NOT EXISTS `datafile` (
  `VehicleID` int(11) DEFAULT NULL,
  `InhouseSellerID` int(11) DEFAULT NULL,
  `BuyerID` int(11) DEFAULT NULL,
  `ModelID` int(11) DEFAULT NULL,
  `Name` varchar(50) COLLATE utf16_slovenian_ci DEFAULT NULL,
  `Surname` varchar(50) COLLATE utf16_slovenian_ci DEFAULT NULL,
  `SaleDate` date DEFAULT NULL,
  `BuyDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_slovenian_ci COMMENT='Add VehicleID, InhouseSellerID, BuyerID, ModelID, SaleDate, BuyDate from project.html file';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
