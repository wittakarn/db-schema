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


-- Dumping database structure for isstdb
CREATE DATABASE IF NOT EXISTS `isstdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `isstdb`;

-- Dumping structure for table isstdb.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `tax_no` varchar(20) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table isstdb.invoice_detail
CREATE TABLE IF NOT EXISTS `invoice_detail` (
  `invoice_no` varchar(12) NOT NULL,
  `sequence` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `capital_price` decimal(12,2) DEFAULT NULL,
  `summary_price` decimal(12,2) NOT NULL COMMENT 'price * quantity',
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`invoice_no`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table isstdb.invoice_mast
CREATE TABLE IF NOT EXISTS `invoice_mast` (
  `invoice_no` varchar(12) NOT NULL,
  `year` int(4) NOT NULL,
  `sequence` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `vat_price` decimal(12,2) NOT NULL COMMENT '(total_price * 7) / 100',
  `net_price` decimal(15,2) NOT NULL COMMENT 'total_price + vat_price',
  `create_datetime` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` char(1) NOT NULL COMMENT 'Y=valid,N=invalid',
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`invoice_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table isstdb.invoice_no
CREATE TABLE IF NOT EXISTS `invoice_no` (
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `sequence` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table isstdb.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(300) NOT NULL,
  `capital_price` decimal(15,2) DEFAULT NULL,
  `sell_price` decimal(15,2) NOT NULL,
  `product_amount` int(11) NOT NULL DEFAULT '0',
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table isstdb.product_group
CREATE TABLE IF NOT EXISTS `product_group` (
  `product_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_group_name` varchar(200) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`product_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table isstdb.product_group_detail
CREATE TABLE IF NOT EXISTS `product_group_detail` (
  `product_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`product_group_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table isstdb.stock_history
CREATE TABLE IF NOT EXISTS `stock_history` (
  `sequence` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` char(1) NOT NULL COMMENT 'Y=Valid invoice,N=Invalid invoice',
  `invoice_no` varchar(12) NOT NULL,
  `create_datetime` datetime NOT NULL,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
