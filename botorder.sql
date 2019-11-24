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


-- Dumping database structure for botorder
CREATE DATABASE IF NOT EXISTS `botorder` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `botorder`;

-- Dumping structure for table botorder.gift_card
CREATE TABLE IF NOT EXISTS `gift_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_card_key` varchar(50) NOT NULL,
  `active_date` datetime DEFAULT NULL,
  `active_by` varchar(50) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A' COMMENT 'A=ACTIVE, I=INACTIVE, F=FAILED',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table botorder.setting
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sheet_id` varchar(100) NOT NULL DEFAULT '0',
  `sheet_tab` varchar(50) NOT NULL,
  `start_row` int(11) NOT NULL,
  `staff_name` varchar(3) NOT NULL,
  `vendor` varchar(3) NOT NULL,
  `shipping_name` varchar(3) NOT NULL,
  `shipping_lastname` varchar(3) NOT NULL,
  `address1` varchar(3) NOT NULL,
  `address2` varchar(3) NOT NULL,
  `city` varchar(3) NOT NULL,
  `state` varchar(3) NOT NULL,
  `zip` varchar(3) NOT NULL,
  `phone` varchar(3) NOT NULL,
  `to_buy` varchar(3) NOT NULL,
  `pay_to_vendor` varchar(3) NOT NULL,
  `order_process` varchar(3) NOT NULL,
  `vendor_id` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table botorder.user_setting
CREATE TABLE IF NOT EXISTS `user_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amazon_user` varchar(50) NOT NULL,
  `amazon_password` varchar(50) NOT NULL,
  `befrugal_user` varchar(50) NOT NULL,
  `befrugal_password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
