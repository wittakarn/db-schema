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


-- Dumping database structure for sedb
CREATE DATABASE IF NOT EXISTS `sedb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sedb`;

-- Dumping structure for table sedb.accounting_bill_detail
CREATE TABLE IF NOT EXISTS `accounting_bill_detail` (
  `bill_no` varchar(20) NOT NULL,
  `sequence` int(11) NOT NULL,
  `invoice_no` varchar(20) NOT NULL,
  PRIMARY KEY (`bill_no`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.accounting_bill_mast
CREATE TABLE IF NOT EXISTS `accounting_bill_mast` (
  `bill_no` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `paid_amount` decimal(12,2) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `receiver_name` varchar(200) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `bill_status` int(11) NOT NULL,
  `create_user_id` varchar(20) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_user_id` varchar(20) DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`bill_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.accounting_status
CREATE TABLE IF NOT EXISTS `accounting_status` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.accounting_tracking
CREATE TABLE IF NOT EXISTS `accounting_tracking` (
  `invoiceNo` varchar(12) NOT NULL,
  `sequence` int(11) NOT NULL,
  `accountingStatus` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `receiver_name` varchar(200) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `create_user_id` varchar(20) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`invoiceNo`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.auth_tokens
CREATE TABLE IF NOT EXISTS `auth_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(64) DEFAULT NULL,
  `user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3994 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `include_vat` char(1) DEFAULT NULL COMMENT 'Y(มีvat), N(ไม่มีvat)',
  `term_of_payment` int(11) DEFAULT NULL COMMENT 'กำหนดชำระเงิน(วัน)',
  `financial_status` char(1) DEFAULT NULL COMMENT 'Y(ผ่าน), N(ไม่ผ่าน)',
  `financial_amount` decimal(15,2) DEFAULT NULL COMMENT 'วงเงินอนุมัติ',
  `debt` decimal(15,2) DEFAULT NULL COMMENT 'ยอดคงค้าง',
  `remark` varchar(200) DEFAULT NULL COMMENT 'หมายเหตุ',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7806 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.deliver
CREATE TABLE IF NOT EXISTS `deliver` (
  `id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `deliver_destination` varchar(200) DEFAULT NULL COMMENT 'สถานที่ส่งของ',
  PRIMARY KEY (`id`,`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='รายการ สถานที่ส่งของ';

-- Data exporting was unselected.
-- Dumping structure for table sedb.file_storage
CREATE TABLE IF NOT EXISTS `file_storage` (
  `id` int(11) NOT NULL COMMENT 'primery key of ref_table',
  `ref_table` varchar(20) NOT NULL,
  `sequence` int(11) NOT NULL,
  `file_blob` longblob NOT NULL,
  `file_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`ref_table`,`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.import_invoice_detail
CREATE TABLE IF NOT EXISTS `import_invoice_detail` (
  `invoice_no` varchar(30) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `capital_price` decimal(12,2) DEFAULT NULL,
  `summary_price` decimal(12,2) NOT NULL COMMENT 'price * quantity',
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`invoice_no`,`supplier_id`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.import_invoice_mast
CREATE TABLE IF NOT EXISTS `import_invoice_mast` (
  `invoice_no` varchar(30) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `vat_price` decimal(12,2) NOT NULL COMMENT '(total_price * 7) / 100',
  `net_price` decimal(15,2) NOT NULL COMMENT 'total_price + vat_price',
  `vat` int(2) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT 'Y ใช้งาน/N ไม่ใช้งาน',
  `image_folder_name` varchar(50) DEFAULT NULL,
  `create_user_id` varchar(20) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_user_id` varchar(20) DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`invoice_no`,`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.invoice_detail
CREATE TABLE IF NOT EXISTS `invoice_detail` (
  `invoice_no` varchar(12) NOT NULL,
  `sequence` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `capital_price` decimal(12,2) DEFAULT NULL,
  `summary_price` decimal(12,2) NOT NULL COMMENT 'price * quantity',
  `tracking_status` char(1) DEFAULT NULL COMMENT '''Y ของครบ, N ของยังไม่ครบ',
  `remark` varchar(200) DEFAULT NULL COMMENT 'หมายเหตุ',
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`invoice_no`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.invoice_mast
CREATE TABLE IF NOT EXISTS `invoice_mast` (
  `invoice_no` varchar(12) NOT NULL,
  `year` int(4) NOT NULL,
  `sequence` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `vat_price` decimal(12,2) NOT NULL COMMENT '(total_price * 7) / 100',
  `net_price` decimal(15,2) NOT NULL COMMENT 'total_price + vat_price',
  `status` char(1) DEFAULT NULL COMMENT 'Y ใช้งาน/N ไม่ใช้งาน',
  `create_user_id` varchar(20) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_user_id` varchar(20) DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_count` int(11) DEFAULT NULL,
  `pay_date` date DEFAULT NULL COMMENT 'วันที่ครบกำหนดชำระ',
  `reference_quotation` varchar(50) DEFAULT NULL COMMENT 'อ้างอิงเอกสาร',
  `deliver_destination` varchar(200) DEFAULT NULL COMMENT 'สถานที่ส่งของ',
  `receipt_remark` varchar(200) DEFAULT NULL COMMENT 'หมายเหตุ',
  `buyer_name` varchar(200) DEFAULT NULL COMMENT 'ผู้สั่งซ์้อ',
  `type` char(1) DEFAULT NULL COMMENT 'N บิลหน้าร้าน, A บิลต้องอนุมัติ, I โอนภายใน',
  `tracking_status` char(1) DEFAULT NULL COMMENT 'Y ของครบ(ทั้งบิล), N ของยังไม่ครบ(ขาดบางส่วน)',
  `accounting_status` int(11) DEFAULT NULL,
  `dept_amount` decimal(15,2) DEFAULT NULL,
  `in_dept_amount` decimal(15,2) DEFAULT NULL,
  `billing_note` varchar(100) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`invoice_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.invoice_no
CREATE TABLE IF NOT EXISTS `invoice_no` (
  `year` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `alias` varchar(5) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`year`,`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.order_detail
CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_no` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`order_no`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.order_mast
CREATE TABLE IF NOT EXISTS `order_mast` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `supplier_contact` varchar(200) DEFAULT NULL,
  `buyer_name` varchar(200) DEFAULT NULL,
  `buy_for` varchar(200) DEFAULT NULL,
  `signer` varchar(200) DEFAULT NULL,
  `create_user_id` varchar(20) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=559 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `standard_price` decimal(15,2) DEFAULT NULL COMMENT 'ราคาตั้ง',
  `capital_price` decimal(15,2) DEFAULT NULL COMMENT 'ทุน',
  `ss_price` decimal(15,2) DEFAULT NULL COMMENT 'V-S',
  `s_price` decimal(15,2) DEFAULT NULL COMMENT 'V-A',
  `a_price` decimal(15,2) DEFAULT NULL COMMENT 'NV-A',
  `b_price` decimal(15,2) DEFAULT NULL COMMENT 'NV-B',
  `c_price` decimal(15,2) DEFAULT NULL COMMENT 'NV-C',
  `vb_price` decimal(15,2) DEFAULT NULL COMMENT 'V-B',
  `vc_price` decimal(15,2) DEFAULT NULL COMMENT 'V-C',
  `d_price` decimal(15,2) DEFAULT NULL COMMENT 'NV-DIS',
  `e_price` decimal(15,2) DEFAULT NULL COMMENT 'V-DIS',
  `f_price` decimal(15,2) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `image_path` varchar(200) DEFAULT NULL,
  `image_blob` longblob,
  `product_group_id` int(11) DEFAULT NULL,
  `wait_order` char(1) DEFAULT NULL COMMENT 'รอสั่ง',
  `show_catalog` char(1) DEFAULT NULL COMMENT 'แสดงในcatalog',
  `upgrade_condition` int(11) DEFAULT NULL COMMENT 'เงื่อนไขการปรับระดับราคา',
  `min_mar` decimal(10,0) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `barcode_advance_search` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16641 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.product_group
CREATE TABLE IF NOT EXISTS `product_group` (
  `product_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `image_blob` longblob,
  `parent_group_id` int(11) DEFAULT NULL,
  `capital_formula` varchar(100) DEFAULT NULL,
  `ss_formula` varchar(100) DEFAULT NULL COMMENT 'V-S เป็นราคาสำหรับลูกค้าเกรดดีสุด',
  `s_formula` varchar(100) DEFAULT NULL COMMENT 'V-A',
  `a_formula` varchar(100) DEFAULT NULL COMMENT 'NV-A',
  `b_formula` varchar(100) DEFAULT NULL COMMENT 'NV-B',
  `c_formula` varchar(100) DEFAULT NULL COMMENT 'NV-C',
  `vb_formula` varchar(100) DEFAULT NULL COMMENT 'V-B',
  `vc_formula` varchar(100) DEFAULT NULL COMMENT 'V-C',
  `d_formula` varchar(100) DEFAULT NULL,
  `e_formula` varchar(100) DEFAULT NULL,
  `f_formula` varchar(100) DEFAULT NULL,
  `column_height` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1086 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.quot_detail
CREATE TABLE IF NOT EXISTS `quot_detail` (
  `quot_no` varchar(10) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `capital_price` decimal(12,2) DEFAULT NULL,
  `summary_price` decimal(12,2) NOT NULL COMMENT 'price * quantity',
  PRIMARY KEY (`quot_no`,`product_id`,`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.quot_mast
CREATE TABLE IF NOT EXISTS `quot_mast` (
  `quot_no` varchar(10) NOT NULL COMMENT 'year/sequence',
  `year` int(4) NOT NULL,
  `sequence` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `vat_price` decimal(12,2) NOT NULL COMMENT '(total_price * 7) / 100',
  `net_price` decimal(15,2) NOT NULL COMMENT 'total_price + vat_price',
  `create_user_id` varchar(20) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_user_id` varchar(20) DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`quot_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.quot_no
CREATE TABLE IF NOT EXISTS `quot_no` (
  `year` int(4) NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`year`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.stock
CREATE TABLE IF NOT EXISTS `stock` (
  `vendor_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `capital_price` decimal(15,2) DEFAULT NULL,
  `update_datetime` datetime NOT NULL,
  `update_user_id` varchar(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`vendor_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.stock_history
CREATE TABLE IF NOT EXISTS `stock_history` (
  `sequence` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `capital_price` decimal(15,2) DEFAULT NULL,
  `invoice_no` varchar(30) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `create_user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=192096 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_user_id` varchar(20) NOT NULL,
  `inner_supplier_id` int(11) DEFAULT NULL COMMENT 'vendor_id from vendor table',
  `vat` int(2) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.unit
CREATE TABLE IF NOT EXISTS `unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `password_inc_count` int(11) DEFAULT NULL,
  `lasted_login_datetime` datetime DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_contact` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sedb.vendor
CREATE TABLE IF NOT EXISTS `vendor` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(200) DEFAULT NULL,
  `include_vat` varchar(1) DEFAULT NULL,
  `printer_name` varchar(200) DEFAULT NULL,
  `accounting_printer_name` varchar(200) DEFAULT NULL,
  `report_path` varchar(200) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL COMMENT 'supplier_id from table supplier',
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
