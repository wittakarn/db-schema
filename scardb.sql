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


-- Dumping database structure for scardb
CREATE DATABASE IF NOT EXISTS `scardb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scardb`;

-- Dumping structure for table scardb.booking
CREATE TABLE IF NOT EXISTS `booking` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_date` date NOT NULL,
  `book_time` varchar(10) NOT NULL,
  `car_history_id` int(11) NOT NULL,
  `car_licence` varchar(200) NOT NULL,
  `driver_name` varchar(200) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `driver_owner` varchar(200) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_name` varchar(200) DEFAULT NULL,
  `maintenance_site_id` int(11) DEFAULT NULL,
  `maintenance_site_name` varchar(200) DEFAULT NULL,
  `mechanic_origin` int(11) DEFAULT NULL COMMENT '1=ช่างในซ้อมใน, 2=ช่างในซ่อมนอก, 3=ช่างนอกซ้อมใน, 4=ช่างนอกซ่อมนอก',
  `remark` varchar(500) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'Y' COMMENT 'Y=ใช้งาน, N=ยกเลิก',
  `repair_status` char(1) NOT NULL DEFAULT 'N' COMMENT 'N=กำลังดำเนินการ, Y=เสร็จแล้ว',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table scardb.defect_category
CREATE TABLE IF NOT EXISTS `defect_category` (
  `book_id` int(11) NOT NULL,
  `defect_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table scardb.defect_group
CREATE TABLE IF NOT EXISTS `defect_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `defect` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='หมวดหมู่ อาการ';

-- Data exporting was unselected.
-- Dumping structure for table scardb.job_no
CREATE TABLE IF NOT EXISTS `job_no` (
  `maintenance_site_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `alias` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`maintenance_site_id`,`year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table scardb.mechanic
CREATE TABLE IF NOT EXISTS `mechanic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'Y' COMMENT 'Y=ใช้งาน, N=ยกเลิก',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table scardb.mechanic_list
CREATE TABLE IF NOT EXISTS `mechanic_list` (
  `job_id` varchar(50) NOT NULL,
  `mechanic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table scardb.reason_category
CREATE TABLE IF NOT EXISTS `reason_category` (
  `job_id` varchar(50) NOT NULL,
  `reason_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table scardb.reason_group
CREATE TABLE IF NOT EXISTS `reason_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='หมวดหมู่ สาเหตุ';

-- Data exporting was unselected.
-- Dumping structure for table scardb.repairing
CREATE TABLE IF NOT EXISTS `repairing` (
  `job_id` varchar(50) NOT NULL,
  `book_id` int(11) NOT NULL,
  `repair_start_date` date DEFAULT NULL,
  `repair_start_time` varchar(10) DEFAULT NULL,
  `repair_end_date` date DEFAULT NULL,
  `repair_end_time` varchar(10) DEFAULT NULL,
  `mechanic_id` int(11) DEFAULT NULL,
  `mileage_start` int(11) DEFAULT NULL,
  `mileage_end` int(11) DEFAULT NULL,
  `mechanic_car_licence` varchar(10) DEFAULT NULL,
  `mechanic_mileage_start` int(11) DEFAULT NULL,
  `mechanic_mileage_end` int(11) DEFAULT NULL,
  `total_vat_price` decimal(8,2) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `net_price` decimal(12,2) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'Y' COMMENT 'Y=ใช้งาน, N=ยกเลิก',
  `stock_ref` varchar(50) DEFAULT NULL,
  `date_when_job_create` date DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table scardb.repairing_detail
CREATE TABLE IF NOT EXISTS `repairing_detail` (
  `job_id` varchar(50) NOT NULL,
  `sequence` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `order_code` varchar(100) DEFAULT NULL,
  `order_name` varchar(100) NOT NULL,
  `order_series` varchar(100) DEFAULT NULL,
  `order_brand` varchar(100) DEFAULT NULL,
  `order_size` varchar(80) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `price_per_unit` decimal(10,2) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `summary` decimal(12,2) NOT NULL,
  PRIMARY KEY (`job_id`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
