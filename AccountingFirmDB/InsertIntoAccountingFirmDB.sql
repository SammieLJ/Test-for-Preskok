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

-- Dumping data for table preskok.accounts: ~6 rows (približno)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`AccountID`, `CustomerID`, `InvoiceID`, `EntryDate`, `EntryYear`, `Timestamp`) VALUES
	(1, 1, 6, '2017-11-23 11:00:00', '2017', '2017-12-26 15:09:30'),
	(2, 2, 7, '2017-12-05 13:00:00', '2017', '2017-12-26 15:09:32'),
	(3, 3, 8, '2017-12-03 09:00:00', '2017', '2017-12-26 15:26:12'),
	(4, 4, 10, '2016-12-03 09:00:00', '2016', '2017-12-26 15:26:32'),
	(5, 4, 11, '2017-11-30 09:00:00', '2017', '2017-12-26 15:26:35'),
	(6, 3, 9, '2017-12-26 00:00:00', '2017', '2017-12-26 15:28:11');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping data for table preskok.customer: ~4 rows (približno)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`CustomerID`, `Name`, `Surname`, `Address`, `Phone`, `Timestamp`) VALUES
	(1, 'Janez', 'Novak', 'Ovinkarska 24, Ljubljana', '069495457', '2017-12-09 13:18:42'),
	(2, 'Anja', 'Srečko', 'Iz drevesa 6, Kranj', '046001002', '2017-12-09 13:19:51'),
	(3, 'Sara', 'Božič', 'Dimnikarska ulica 3, Novo Mesto', '057003004', '2017-12-09 13:20:39'),
	(4, 'Gašper', 'Peresnik', 'Gromska cesta 4, Nova Gorica', '034556543', '2017-12-09 13:21:37');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping data for table preskok.invoices: ~6 rows (približno)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`InvoiceID`, `Incoming`, `Outgoing`, `Timestamp`) VALUES
	(6, 0000000000150.10, 0000000000160.00, '2017-12-26 15:08:02'),
	(7, 0000000000180.30, 0000000000190.40, '2017-12-26 15:08:22'),
	(8, 0000000000200.00, 0000000000300.00, '2017-12-26 15:20:42'),
	(9, 0000000000250.00, 0000000000100.00, '2017-12-26 15:20:56'),
	(10, 0000000000050.00, 0000000000010.00, '2017-12-26 15:21:10'),
	(11, 0000000000011.00, 0000000000010.00, '2017-12-26 15:22:05');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
