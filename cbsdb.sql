-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for cbsdb
CREATE DATABASE IF NOT EXISTS `cbsdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cbsdb`;

-- Dumping structure for table cbsdb.statement
CREATE TABLE IF NOT EXISTS `statement` (
  `import_timestamp` datetime NOT NULL,
  `sequence` int(11) NOT NULL,
  `channel` varchar(200) DEFAULT NULL,
  `transaction_type` varchar(200) DEFAULT NULL,
  `deposit` decimal(15,2) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `qr_code_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`import_timestamp`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
