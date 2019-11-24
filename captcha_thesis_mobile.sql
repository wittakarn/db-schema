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


-- Dumping database structure for captcha_thesis_mobile
CREATE DATABASE IF NOT EXISTS `captcha_thesis_mobile` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `captcha_thesis_mobile`;

-- Dumping structure for table captcha_thesis_mobile.email
CREATE TABLE IF NOT EXISTS `email` (
  `id` varchar(50) NOT NULL,
  `idx` int(11) NOT NULL,
  `raw_data` varchar(50) DEFAULT NULL,
  `key_down` varchar(50) DEFAULT NULL,
  `key_up` varchar(50) DEFAULT NULL,
  `offset_x` decimal(8,2) DEFAULT NULL,
  `offset_y` decimal(8,2) DEFAULT NULL,
  `page_x` decimal(8,2) DEFAULT NULL,
  `page_y` decimal(8,2) DEFAULT NULL,
  `pressure` decimal(10,8) DEFAULT NULL,
  `radius` decimal(7,2) DEFAULT NULL,
  `do_alpha` decimal(6,2) DEFAULT NULL,
  `do_beta` decimal(6,2) DEFAULT NULL,
  `do_gamma` decimal(6,2) DEFAULT NULL,
  `do_absolute` decimal(6,2) DEFAULT NULL,
  `dm_x` decimal(6,2) DEFAULT NULL,
  `dm_y` decimal(6,2) DEFAULT NULL,
  `dm_z` decimal(6,2) DEFAULT NULL,
  `dm_gx` decimal(6,2) DEFAULT NULL,
  `dm_gy` decimal(6,2) DEFAULT NULL,
  `dm_gz` decimal(6,2) DEFAULT NULL,
  `dm_alpha` decimal(6,2) DEFAULT NULL,
  `dm_beta` decimal(6,2) DEFAULT NULL,
  `dm_gamma` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis_mobile.fullname
CREATE TABLE IF NOT EXISTS `fullname` (
  `id` varchar(50) NOT NULL,
  `idx` int(11) NOT NULL,
  `raw_data` varchar(50) DEFAULT NULL,
  `key_down` varchar(50) DEFAULT NULL,
  `key_up` varchar(50) DEFAULT NULL,
  `offset_x` decimal(8,2) DEFAULT NULL,
  `offset_y` decimal(8,2) DEFAULT NULL,
  `page_x` decimal(8,2) DEFAULT NULL,
  `page_y` decimal(8,2) DEFAULT NULL,
  `pressure` decimal(10,8) DEFAULT NULL,
  `radius` decimal(7,2) DEFAULT NULL,
  `do_alpha` decimal(6,2) DEFAULT NULL,
  `do_beta` decimal(6,2) DEFAULT NULL,
  `do_gamma` decimal(6,2) DEFAULT NULL,
  `do_absolute` decimal(6,2) DEFAULT NULL,
  `dm_x` decimal(6,2) DEFAULT NULL,
  `dm_y` decimal(6,2) DEFAULT NULL,
  `dm_z` decimal(6,2) DEFAULT NULL,
  `dm_gx` decimal(6,2) DEFAULT NULL,
  `dm_gy` decimal(6,2) DEFAULT NULL,
  `dm_gz` decimal(6,2) DEFAULT NULL,
  `dm_alpha` decimal(6,2) DEFAULT NULL,
  `dm_beta` decimal(6,2) DEFAULT NULL,
  `dm_gamma` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis_mobile.phone
CREATE TABLE IF NOT EXISTS `phone` (
  `id` varchar(50) NOT NULL,
  `idx` int(11) NOT NULL,
  `raw_data` varchar(50) DEFAULT NULL,
  `key_down` varchar(50) DEFAULT NULL,
  `key_up` varchar(50) DEFAULT NULL,
  `offset_x` decimal(8,2) DEFAULT NULL,
  `offset_y` decimal(8,2) DEFAULT NULL,
  `page_x` decimal(8,2) DEFAULT NULL,
  `page_y` decimal(8,2) DEFAULT NULL,
  `pressure` decimal(10,8) DEFAULT NULL,
  `radius` decimal(7,2) DEFAULT NULL,
  `do_alpha` decimal(6,2) DEFAULT NULL,
  `do_beta` decimal(6,2) DEFAULT NULL,
  `do_gamma` decimal(6,2) DEFAULT NULL,
  `do_absolute` decimal(6,2) DEFAULT NULL,
  `dm_x` decimal(6,2) DEFAULT NULL,
  `dm_y` decimal(6,2) DEFAULT NULL,
  `dm_z` decimal(6,2) DEFAULT NULL,
  `dm_gx` decimal(6,2) DEFAULT NULL,
  `dm_gy` decimal(6,2) DEFAULT NULL,
  `dm_gz` decimal(6,2) DEFAULT NULL,
  `dm_alpha` decimal(6,2) DEFAULT NULL,
  `dm_beta` decimal(6,2) DEFAULT NULL,
  `dm_gamma` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis_mobile.user_information
CREATE TABLE IF NOT EXISTS `user_information` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `gender` int(11) NOT NULL COMMENT '1=ชาย, 2=หญิง',
  `age` int(11) NOT NULL COMMENT '1=10-25, 2=26-40, 3=41-60, 4=มากกว่า 60',
  `education` int(11) NOT NULL COMMENT '1=ต่ำกว่าปริญญาตรี,2=ปริญญาตรี,3=ปริญญาโท,4=ปริญญาเอก,5=อื่นๆ',
  `occupation` int(11) NOT NULL COMMENT '1=นักเรียน/นักศึกษา,2=ค้าขาย/ธุรกิจส่วนตัว,3=รับจ้าง,4=พนักงานบริษัท,5=พนักงานรัฐวิสาหกิจ,6=ข้าราชการ,7=ว่างงาน/พ่อบ้าน/แม่บ้าน/เกษียณอายุ,8=อื่นๆ',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
