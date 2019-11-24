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


-- Dumping database structure for upddb
CREATE DATABASE IF NOT EXISTS `upddb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `upddb`;

-- Dumping structure for table upddb.data_setting
CREATE TABLE IF NOT EXISTS `data_setting` (
  `version` int(11) NOT NULL AUTO_INCREMENT,
  `sheet_name` varchar(100) NOT NULL,
  `start_row` int(11) NOT NULL,
  `order_id` varchar(3) NOT NULL,
  `email` varchar(3) NOT NULL,
  `tracking` varchar(3) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table upddb.sheet_setting
CREATE TABLE IF NOT EXISTS `sheet_setting` (
  `version` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `sheet_id` varchar(100) NOT NULL,
  PRIMARY KEY (`version`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table upddb.user_mapping
CREATE TABLE IF NOT EXISTS `user_mapping` (
  `version` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`version`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
