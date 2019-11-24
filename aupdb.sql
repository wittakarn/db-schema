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


-- Dumping database structure for aupdb
CREATE DATABASE IF NOT EXISTS `aupdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `aupdb`;

-- Dumping structure for table aupdb.api_setting
CREATE TABLE IF NOT EXISTS `api_setting` (
  `version` int(11) NOT NULL AUTO_INCREMENT,
  `sheet_name` varchar(100) NOT NULL DEFAULT '0',
  `start_row` int(11) NOT NULL DEFAULT '0',
  `update_status` varchar(3) NOT NULL,
  `sku` varchar(3) NOT NULL,
  `asin_api` varchar(3) NOT NULL,
  `price_api` varchar(3) NOT NULL,
  `min_allow_price` varchar(3) NOT NULL,
  `max_allow_price` varchar(3) NOT NULL,
  `quantity` varchar(3) NOT NULL,
  `lead_time` varchar(3) NOT NULL,
  `timestamp` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table aupdb.data_setting
CREATE TABLE IF NOT EXISTS `data_setting` (
  `version` int(11) NOT NULL AUTO_INCREMENT,
  `sheet_name` varchar(100) NOT NULL DEFAULT '0',
  `start_row` int(11) NOT NULL DEFAULT '0',
  `link` varchar(3) NOT NULL,
  `old_data` varchar(3) NOT NULL,
  `new_data` varchar(3) NOT NULL,
  `asin_crawling` varchar(3) NOT NULL,
  `seller_name_1` varchar(3) NOT NULL,
  `price_1` varchar(3) NOT NULL,
  `shipping_1` varchar(3) NOT NULL,
  `add_on_1` varchar(3) NOT NULL,
  `type_1` varchar(3) NOT NULL,
  `wid_1` varchar(3) NOT NULL,
  `seller_name_2` varchar(3) NOT NULL,
  `price_2` varchar(3) NOT NULL,
  `shipping_2` varchar(3) NOT NULL,
  `add_on_2` varchar(3) NOT NULL,
  `type_2` varchar(3) NOT NULL,
  `wid_2` varchar(3) NOT NULL,
  `seller_name_3` varchar(3) NOT NULL,
  `price_3` varchar(3) NOT NULL,
  `shipping_3` varchar(3) NOT NULL,
  `add_on_3` varchar(3) NOT NULL,
  `type_3` varchar(3) NOT NULL,
  `wid_3` varchar(3) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table aupdb.sheet_setting
CREATE TABLE IF NOT EXISTS `sheet_setting` (
  `version` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `sheet_id` varchar(100) NOT NULL,
  PRIMARY KEY (`version`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
