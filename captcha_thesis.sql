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


-- Dumping database structure for captcha_thesis
CREATE DATABASE IF NOT EXISTS `captcha_thesis` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `captcha_thesis`;

-- Dumping structure for table captcha_thesis.alphabets17
CREATE TABLE IF NOT EXISTS `alphabets17` (
  `id` varchar(20) NOT NULL,
  `char_index` int(11) NOT NULL,
  `alphabet` char(1) NOT NULL,
  `key_code` int(11) NOT NULL,
  `key_press` varchar(20) DEFAULT NULL,
  `key_down` varchar(20) DEFAULT NULL,
  `key_up` varchar(20) DEFAULT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.cw
CREATE TABLE IF NOT EXISTS `cw` (
  `id` varchar(20) NOT NULL,
  `word_index` int(11) NOT NULL,
  `wording` varchar(50) NOT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`word_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.cw_alphabets
CREATE TABLE IF NOT EXISTS `cw_alphabets` (
  `id` varchar(20) NOT NULL,
  `char_index` int(11) NOT NULL,
  `alphabet` char(1) NOT NULL,
  `key_code` int(11) NOT NULL,
  `key_press` varchar(20) DEFAULT NULL,
  `key_down` varchar(20) DEFAULT NULL,
  `key_up` varchar(20) DEFAULT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.fl_alphabets
CREATE TABLE IF NOT EXISTS `fl_alphabets` (
  `id` varchar(20) NOT NULL,
  `char_index` int(11) NOT NULL,
  `alphabet` char(1) NOT NULL,
  `key_code` int(11) NOT NULL,
  `key_press` varchar(20) DEFAULT NULL,
  `key_down` varchar(20) DEFAULT NULL,
  `key_up` varchar(20) DEFAULT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.ob
CREATE TABLE IF NOT EXISTS `ob` (
  `id` varchar(20) NOT NULL,
  `word_index` int(11) NOT NULL,
  `wording` varchar(50) NOT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`word_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.ob_alphabets
CREATE TABLE IF NOT EXISTS `ob_alphabets` (
  `id` varchar(20) NOT NULL,
  `char_index` int(11) NOT NULL,
  `alphabet` char(1) NOT NULL,
  `key_code` int(11) NOT NULL,
  `key_press` varchar(20) DEFAULT NULL,
  `key_down` varchar(20) DEFAULT NULL,
  `key_up` varchar(20) DEFAULT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.phone
CREATE TABLE IF NOT EXISTS `phone` (
  `email` varchar(50) NOT NULL,
  `idx` int(11) NOT NULL,
  `raw_data` varchar(50) DEFAULT NULL,
  `key_down` varchar(50) DEFAULT NULL,
  `key_up` varchar(50) DEFAULT NULL,
  `offset_x` decimal(8,2) DEFAULT NULL,
  `offset_y` decimal(8,2) DEFAULT NULL,
  `page_x` decimal(8,2) DEFAULT NULL,
  `page_y` decimal(8,2) DEFAULT NULL,
  `pressure` decimal(10,8) DEFAULT NULL,
  PRIMARY KEY (`email`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.rd
CREATE TABLE IF NOT EXISTS `rd` (
  `id` varchar(20) NOT NULL,
  `word_index` int(11) NOT NULL,
  `wording` varchar(50) NOT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`word_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.rd_alphabets
CREATE TABLE IF NOT EXISTS `rd_alphabets` (
  `id` varchar(20) NOT NULL,
  `char_index` int(11) NOT NULL,
  `alphabet` char(1) NOT NULL,
  `key_code` int(11) NOT NULL,
  `key_press` varchar(20) DEFAULT NULL,
  `key_down` varchar(20) DEFAULT NULL,
  `key_up` varchar(20) DEFAULT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.user
CREATE TABLE IF NOT EXISTS `user` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.user_information
CREATE TABLE IF NOT EXISTS `user_information` (
  `email` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL COMMENT '1=à¸Šà¸²à¸¢, 2=à¸«à¸à¸´à¸‡',
  `age` int(11) NOT NULL COMMENT '1=10-25, 2=26-40, 3=41-60, 4=à¸¡à¸²à¸à¸à¸§à¹ˆà¸² 60',
  `education` int(11) NOT NULL COMMENT '1=à¸•à¹ˆà¸³à¸à¸§à¹ˆà¸²à¸›à¸£à¸´à¸à¸à¸²à¸•à¸£à¸µ,2=à¸›à¸£à¸´à¸à¸à¸²à¸•à¸£à¸µ,3=à¸›à¸£à¸´à¸à¸à¸²à¹‚à¸—,4=à¸›à¸£à¸´à¸à¸à¸²à¹€à¸­à¸,5=à¸­à¸·à¹ˆà¸™à¹†',
  `faculty` int(11) NOT NULL COMMENT '1=à¸„à¸£à¸¸à¸¨à¸²à¸ªà¸•à¸£à¹Œ,2=à¸ˆà¸´à¸•à¸§à¸´à¸—à¸¢à¸²,3=à¸—à¸±à¸™à¸•à¹à¸žà¸—à¸¢à¸¨à¸²à¸ªà¸•à¸£à¹Œ,4=à¸™à¸´à¸•à¸´à¸¨à¸²à¸ªà¸•à¸£à¹Œ,5=à¸™à¸´à¹€à¸—à¸¨à¸¨à¸²à¸ªà¸•à¸£à¹Œ,6=à¸žà¸¢à¸²à¸šà¸²à¸¥à¸¨à¸²à¸ªà¸•à¸£à¹Œ,7=à¸žà¸²à¸“à¸´à¸Šà¸¢à¸¨à¸²à¸ªà¸•à¸£à¹Œà¹à¸¥à¸°à¸à¸²à¸£à¸šà¸±à¸à¸Šà¸µ,8=à¹à¸žà¸—à¸¢à¸¨à¸²à¸ªà¸•à¸£à¹Œ,9=à¹€à¸ à¸ªà¸±à¸Šà¸¨à¸²à¸ªà¸•à¸£à¹Œ,10=à¸£à¸±à¸à¸¨à¸²à¸ªà¸•à¸£à¹Œ,11=à¸§à¸´à¸—à¸¢à¸²à¸¨à¸²à¸ªà¸•à¸£à¹Œ,12=à¸§à¸´à¸¨à¸§à¸à¸£à¸£à¸¡à¸¨à¸²à¸ªà¸•à¸£à¹Œ,13=à¸¨à¸´à¸¥à¸›à¸à¸£à¸£à¸¡à¸¨à¸²à¸ªà¸•à¸£à¹Œ,14=à¹€à¸¨à¸£à¸©à¸à¸¨à¸²à¸ªà¸•à¸£à¹Œ,15=à¸ªà¸–à¸²à¸›à¸±à¸•à¸¢à¸à¸£à¸£à¸¡à¸¨à¸²à¸ªà¸•à¸£à¹Œ,16=à¸ªà¸«à¹€à¸§à¸Šà¸¨à¸²à¸ªà¸•à¸£à¹Œ,17=à¸ªà¸±à¸•à¸§à¹à¸žà¸—à¸¢à¸¨à¸²à¸ªà¸•à¸£à¹Œ,18=à¸­à¸·à¹ˆà¸™à¹†',
  `occupation` int(11) NOT NULL COMMENT '1=à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™/à¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²,2=à¸„à¹‰à¸²à¸‚à¸²à¸¢/à¸˜à¸¸à¸£à¸à¸´à¸ˆà¸ªà¹ˆà¸§à¸™à¸•à¸±à¸§,3=à¸£à¸±à¸šà¸ˆà¹‰à¸²à¸‡,4=à¸žà¸™à¸±à¸à¸‡à¸²à¸™à¸šà¸£à¸´à¸©à¸±à¸—,5=à¸žà¸™à¸±à¸à¸‡à¸²à¸™à¸£à¸±à¸à¸§à¸´à¸ªà¸²à¸«à¸à¸´à¸ˆ,6=à¸‚à¹‰à¸²à¸£à¸²à¸Šà¸à¸²à¸£,7=à¸§à¹ˆà¸²à¸‡à¸‡à¸²à¸™/à¸žà¹ˆà¸­à¸šà¹‰à¸²à¸™/à¹à¸¡à¹ˆà¸šà¹‰à¸²à¸™/à¹€à¸à¸©à¸µà¸¢à¸“à¸­à¸²à¸¢à¸¸,8=à¸­à¸·à¹ˆà¸™à¹†',
  `favorite_color` varchar(100) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.user_key
CREATE TABLE IF NOT EXISTS `user_key` (
  `id` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `opacity` decimal(5,3) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table captcha_thesis.words17
CREATE TABLE IF NOT EXISTS `words17` (
  `id` varchar(20) NOT NULL,
  `word_index` int(11) NOT NULL,
  `wording` varchar(50) NOT NULL,
  `correct` int(1) DEFAULT NULL COMMENT '1=true, 2=false',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`word_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
