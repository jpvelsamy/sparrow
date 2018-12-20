-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.9-MariaDB-1:10.3.9+maria~bionic-log - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for rtios
CREATE DATABASE IF NOT EXISTS `rtios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rtios`;

-- Dumping structure for table rtios.identified_anomaly_all_zone
CREATE TABLE IF NOT EXISTS `identified_anomaly_all_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) DEFAULT NULL,
  `load_mwh` double NOT NULL,
  `date` datetime DEFAULT NULL,
  `zone` text DEFAULT NULL,
  `anomaly_result` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rtios.identified_anomaly_all_zone: ~0 rows (approximately)
/*!40000 ALTER TABLE `identified_anomaly_all_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_anomaly_all_zone` ENABLE KEYS */;

-- Dumping structure for table rtios.identified_anomaly_all_zone_by_detection
CREATE TABLE IF NOT EXISTS `identified_anomaly_all_zone_by_detection` (
  `anomaly` double DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `timezone` datetime DEFAULT NULL,
  `timestamp` varchar(1000) DEFAULT NULL,
  `createdtime` datetime DEFAULT current_timestamp(),
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expectedValue` double NOT NULL,
  `index_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rtios.identified_anomaly_all_zone_by_detection: ~0 rows (approximately)
/*!40000 ALTER TABLE `identified_anomaly_all_zone_by_detection` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_anomaly_all_zone_by_detection` ENABLE KEYS */;


-- Dumping database structure for spw_audit
CREATE DATABASE IF NOT EXISTS `spw_audit` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `spw_audit`;

-- Dumping structure for table spw_audit.command_audit
CREATE TABLE IF NOT EXISTS `command_audit` (
  `command_id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) DEFAULT 0,
  `start` timestamp NULL DEFAULT current_timestamp(),
  `end` datetime DEFAULT NULL,
  `action_name` varchar(150) DEFAULT NULL,
  `process_name` varchar(150) DEFAULT NULL,
  `command_config` text DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`command_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- Dumping data for table spw_audit.command_audit: ~194 rows (approximately)
/*!40000 ALTER TABLE `command_audit` DISABLE KEYS */;
INSERT INTO `command_audit` (`command_id`, `instance_id`, `start`, `end`, `action_name`, `process_name`, `command_config`, `status`) VALUES
	(1, 5, '2018-09-18 17:53:23', '2018-09-18 17:53:24', 'RunR->runR-collection', 'runRscript#1', NULL, 1),
	(2, 14, '2018-09-18 18:44:48', '2018-09-18 18:44:53', 'RunR->runR-collection', 'runRscript#1', NULL, 1),
	(3, 15, '2018-09-20 21:06:10', '2018-09-20 21:06:11', 'RunR->runR-collection', 'runRscript#1', NULL, 1),
	(4, 16, '2018-09-20 23:02:40', '2018-09-20 23:02:40', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(5, 17, '2018-09-20 23:03:14', NULL, 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(6, 18, '2018-09-20 23:04:39', '2018-09-20 23:04:40', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(7, 19, '2018-09-20 23:05:09', NULL, 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(8, 20, '2018-09-20 23:07:13', NULL, 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(9, 21, '2018-09-20 23:08:08', '2018-09-20 23:08:20', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(10, 22, '2018-09-20 23:10:05', '2018-09-20 23:10:12', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(11, 23, '2018-09-20 23:15:09', '2018-09-20 23:15:42', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(12, 24, '2018-09-20 23:16:54', '2018-09-20 23:16:59', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(13, 25, '2018-09-20 23:17:39', '2018-09-20 23:17:42', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(14, 26, '2018-09-20 23:18:20', '2018-09-20 23:18:26', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(15, 27, '2018-09-20 23:20:16', '2018-09-20 23:20:24', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(16, 28, '2018-09-20 23:22:55', '2018-09-20 23:23:00', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(17, 29, '2018-09-20 23:25:38', '2018-09-20 23:25:40', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(18, 30, '2018-09-21 09:39:51', '2018-09-21 09:39:52', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(19, 31, '2018-09-21 09:41:37', '2018-09-21 09:41:39', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(20, 32, '2018-09-21 09:47:18', '2018-09-21 09:47:19', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(21, 33, '2018-09-21 09:47:44', '2018-09-21 09:47:46', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(22, 34, '2018-09-21 10:46:02', '2018-09-21 10:46:03', 'RunR->runR-collection-anamolydetectttttion', 'runRscript#1', NULL, 1),
	(23, 35, '2018-09-21 14:41:41', '2018-09-21 14:41:46', 'RunR->runR-collection-anamolydetection', 'runRscriptAnomalizeDetection#1', NULL, 1),
	(24, 36, '2018-09-21 14:44:01', '2018-09-21 14:44:02', 'RunR->runR-collection-anomalize', 'runRscriptAnomalize#1', NULL, 1),
	(25, 37, '2018-09-21 14:45:10', '2018-09-21 14:45:13', 'RunR->runR-collection-anomalize', 'runRscriptAnomalize#1', NULL, 1),
	(26, 38, '2018-09-22 15:36:42', NULL, 'RunR->tios.detectanomaly.ad.Central.process', 'tios.detectanomaly.ad.Central.process#1', NULL, 1),
	(27, 39, '2018-09-22 16:08:13', NULL, 'RunR->tios.detectanomaly.ad.Central.process', 'tios.detectanomaly.ad.Central.process#1', NULL, 1),
	(28, 40, '2018-09-22 16:15:43', NULL, 'Transform->create-test-tables', 'test.rest.process#1', NULL, 1),
	(29, 41, '2018-09-22 16:16:15', NULL, 'Transform->create-test-tables', 'test.rest.process#1', NULL, 1),
	(30, 42, '2018-09-22 16:16:31', NULL, 'Transform->create-test-tables', 'test.rest.process#1', NULL, 1),
	(31, 43, '2018-09-22 16:46:14', NULL, 'Fetch->last_ran_date', 'candy.eventing.customer.process#1', NULL, 1),
	(32, 43, '2018-09-22 16:46:14', NULL, 'Transform->drop-temp-tables', 'candy.eventing.customer.process#1', NULL, 1),
	(33, 44, '2018-09-22 17:33:58', '2018-09-22 17:33:59', 'RunR->tios.detectanomaly.ad.Central.process', 'tios.detectanomaly.ad.Central.process#1', NULL, 1),
	(34, 45, '2018-09-22 18:13:38', NULL, 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(35, 46, '2018-09-22 18:16:21', NULL, 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(36, 47, '2018-09-22 18:28:52', '2018-09-22 18:28:52', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(37, 48, '2018-09-22 18:30:04', NULL, 'Fetch->last_ran_date', 'candy.eventing.customer.process#1', NULL, 1),
	(38, 49, '2018-09-22 18:32:26', NULL, 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(39, 50, '2018-09-22 18:33:53', NULL, 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(40, 51, '2018-09-22 18:36:17', '2018-09-22 18:36:18', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(41, 52, '2018-09-22 18:38:18', '2018-09-22 18:38:18', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(42, 53, '2018-09-22 18:38:51', NULL, 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(43, 54, '2018-09-22 18:40:06', '2018-09-22 18:40:06', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(44, 55, '2018-09-22 18:41:34', '2018-09-22 18:41:34', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(45, 56, '2018-09-22 18:42:23', '2018-09-22 18:42:23', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(46, 57, '2018-09-22 18:43:07', '2018-09-22 18:43:07', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(47, 58, '2018-09-22 18:43:41', '2018-09-22 18:46:13', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(48, 59, '2018-09-22 19:52:04', '2018-09-22 19:54:44', 'RunR->tios.detectanomaly.ad.process', 'tios.detectanomaly.ad.process#1', NULL, 1),
	(49, 60, '2018-09-22 22:01:05', '2018-09-22 22:04:38', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(50, 61, '2018-09-22 23:40:24', NULL, 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(51, 62, '2018-09-23 00:02:32', '2018-09-23 00:02:49', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(52, 63, '2018-09-23 10:07:22', '2018-09-23 10:07:43', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(53, 64, '2018-09-23 10:09:39', '2018-09-23 10:09:55', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(54, 65, '2018-09-23 10:11:01', '2018-09-23 10:11:15', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(55, 66, '2018-09-23 11:46:17', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(56, 66, '2018-09-23 11:46:17', NULL, 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(57, 67, '2018-09-23 11:47:55', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(58, 67, '2018-09-23 11:47:55', NULL, 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(59, 68, '2018-09-23 11:49:50', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(60, 69, '2018-09-23 11:51:26', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(61, 70, '2018-09-23 11:52:23', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(62, 71, '2018-09-23 13:47:36', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(63, 72, '2018-09-23 13:52:29', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(64, 72, '2018-09-23 13:54:41', NULL, 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(65, 73, '2018-09-23 13:58:54', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(66, 73, '2018-09-23 14:00:10', NULL, 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(67, 74, '2018-09-23 14:48:32', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(68, 75, '2018-09-23 14:53:32', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(69, 76, '2018-09-23 14:55:20', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(70, 76, '2018-09-23 14:55:20', NULL, 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(71, 77, '2018-09-23 14:55:33', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(72, 77, '2018-09-23 14:55:33', NULL, 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(73, 78, '2018-09-23 14:56:00', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(74, 79, '2018-09-23 15:00:27', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(75, 80, '2018-09-23 15:02:27', '2018-09-23 15:02:37', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(76, 80, '2018-09-23 15:02:44', '2018-09-23 15:03:17', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(77, 80, '2018-09-23 15:03:23', NULL, 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(78, 80, '2018-09-23 15:04:21', '2018-09-23 15:13:34', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(79, 81, '2018-09-23 15:06:10', '2018-09-23 15:06:11', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(80, 81, '2018-09-23 15:06:11', NULL, 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(81, 82, '2018-09-23 15:38:49', '2018-09-23 15:38:50', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(82, 82, '2018-09-23 15:38:50', '2018-09-23 15:39:05', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(83, 82, '2018-09-23 15:39:05', '2018-09-23 15:39:06', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(84, 82, '2018-09-23 15:39:06', '2018-09-23 15:39:06', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(85, 83, '2018-09-23 15:47:11', '2018-09-23 15:47:12', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(86, 83, '2018-09-23 15:47:12', '2018-09-23 15:48:40', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(87, 84, '2018-09-23 15:47:39', '2018-09-23 15:47:40', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(88, 84, '2018-09-23 15:47:40', '2018-09-23 15:49:01', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(89, 83, '2018-09-23 15:48:40', '2018-09-23 15:48:40', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(90, 83, '2018-09-23 15:48:40', '2018-09-23 15:48:40', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(91, 84, '2018-09-23 15:49:01', '2018-09-23 15:49:02', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(92, 84, '2018-09-23 15:49:02', '2018-09-23 15:49:02', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(93, 85, '2018-09-23 15:49:27', '2018-09-23 15:49:27', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(94, 85, '2018-09-23 15:49:27', '2018-09-23 15:51:57', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(95, 85, '2018-09-23 15:51:57', '2018-09-23 15:51:57', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(96, 85, '2018-09-23 15:51:57', '2018-09-23 15:54:23', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(97, 86, '2018-09-23 15:54:21', '2018-09-23 15:54:22', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(98, 86, '2018-09-23 15:54:22', '2018-09-23 15:56:32', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(99, 86, '2018-09-23 15:56:32', '2018-09-23 15:56:32', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(100, 86, '2018-09-23 15:56:32', '2018-09-23 16:06:32', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(101, 87, '2018-09-23 16:08:38', '2018-09-23 16:08:39', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(102, 87, '2018-09-23 16:08:39', '2018-09-23 16:11:02', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(103, 87, '2018-09-23 16:11:02', '2018-09-23 16:11:03', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(104, 87, '2018-09-23 16:11:03', '2018-09-23 16:11:03', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(105, 88, '2018-09-24 10:20:46', '2018-09-24 10:20:47', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(106, 88, '2018-09-24 10:20:47', '2018-09-24 10:23:14', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(107, 88, '2018-09-24 10:23:14', '2018-09-24 10:23:15', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(108, 88, '2018-09-24 10:23:15', '2018-09-24 10:23:16', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(109, 89, '2018-09-25 11:15:25', '2018-09-25 11:15:25', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(110, 89, '2018-09-25 11:15:25', '2018-09-25 11:15:26', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(111, 89, '2018-09-25 11:15:26', '2018-09-25 11:15:26', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(112, 89, '2018-09-25 11:15:26', '2018-09-25 11:15:26', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(113, 90, '2018-09-25 11:16:23', '2018-09-25 11:16:23', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(114, 90, '2018-09-25 11:16:23', '2018-09-25 11:18:53', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(115, 91, '2018-09-25 11:16:49', '2018-09-25 11:16:49', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#2', NULL, 1),
	(116, 91, '2018-09-25 11:16:49', '2018-09-25 11:19:15', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#2', NULL, 1),
	(117, 90, '2018-09-25 11:18:53', '2018-09-25 11:18:54', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(118, 90, '2018-09-25 11:18:54', '2018-09-25 11:18:55', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#1', NULL, 1),
	(119, 91, '2018-09-25 11:19:15', '2018-09-25 11:19:15', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#2', NULL, 1),
	(120, 91, '2018-09-25 11:19:16', '2018-09-25 11:19:16', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#2', NULL, 1),
	(121, 92, '2018-09-25 11:20:48', '2018-09-25 11:20:48', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#3', NULL, 1),
	(122, 92, '2018-09-25 11:20:49', '2018-09-25 11:21:14', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#3', NULL, 1),
	(123, 92, '2018-09-25 11:21:14', '2018-09-25 11:21:14', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#3', NULL, 1),
	(124, 92, '2018-09-25 11:21:15', '2018-09-25 11:21:15', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#3', NULL, 1),
	(125, 93, '2018-09-25 11:21:45', '2018-09-25 11:21:45', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#4', NULL, 1),
	(126, 93, '2018-09-25 11:21:45', '2018-09-25 11:22:44', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#4', NULL, 1),
	(127, 94, '2018-09-25 11:22:04', '2018-09-25 11:22:04', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#5', NULL, 1),
	(128, 94, '2018-09-25 11:22:04', '2018-09-25 11:23:37', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#5', NULL, 1),
	(129, 93, '2018-09-25 11:22:44', '2018-09-25 11:22:45', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#4', NULL, 1),
	(130, 93, '2018-09-25 11:22:45', '2018-09-25 11:22:46', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#4', NULL, 1),
	(131, 94, '2018-09-25 11:23:37', '2018-09-25 11:23:38', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#5', NULL, 1),
	(132, 94, '2018-09-25 11:23:38', '2018-09-25 11:23:38', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#5', NULL, 1),
	(133, 95, '2018-09-25 11:25:28', '2018-09-25 11:25:29', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#6', NULL, 1),
	(134, 95, '2018-09-25 11:25:29', '2018-09-25 11:26:25', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#6', NULL, 1),
	(135, 96, '2018-09-25 11:25:42', '2018-09-25 11:25:43', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.an.process#7', NULL, 1),
	(136, 96, '2018-09-25 11:25:43', '2018-09-25 11:26:47', 'RunR->tios.detectanomalyzonewise.an.process', 'tios.detectanomalyzonewise.an.process#7', NULL, 1),
	(137, 95, '2018-09-25 11:26:26', '2018-09-25 11:26:26', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#6', NULL, 1),
	(138, 95, '2018-09-25 11:26:26', '2018-09-25 11:26:27', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#6', NULL, 1),
	(139, 96, '2018-09-25 11:26:47', '2018-09-25 11:26:48', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.an.process#7', NULL, 1),
	(140, 96, '2018-09-25 11:26:48', '2018-09-25 11:26:48', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.an.process#7', NULL, 1),
	(141, 97, '2018-09-25 11:27:04', '2018-09-25 11:27:05', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#7', NULL, 1),
	(142, 97, '2018-09-25 11:27:05', '2018-09-25 11:27:10', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#7', NULL, 1),
	(143, 97, '2018-09-25 11:27:10', '2018-09-25 11:27:10', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#7', NULL, 1),
	(144, 97, '2018-09-25 11:27:10', '2018-09-25 11:27:11', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#7', NULL, 1),
	(145, 98, '2018-09-25 11:27:26', '2018-09-25 11:27:26', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(146, 98, '2018-09-25 11:27:27', '2018-09-25 11:27:39', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(147, 99, '2018-09-25 11:27:39', '2018-09-25 11:27:40', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(148, 98, '2018-09-25 11:27:39', '2018-09-25 11:27:40', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(149, 98, '2018-09-25 11:27:40', '2018-09-25 11:27:41', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(150, 99, '2018-09-25 11:27:40', '2018-09-25 11:27:49', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(151, 99, '2018-09-25 11:27:49', '2018-09-25 11:27:49', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(152, 99, '2018-09-25 11:27:50', '2018-09-25 11:27:50', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#6', NULL, 1),
	(153, 100, '2018-09-25 11:28:02', '2018-09-25 11:28:03', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#4', NULL, 1),
	(154, 100, '2018-09-25 11:28:03', '2018-09-25 11:28:14', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#4', NULL, 1),
	(155, 100, '2018-09-25 11:28:14', '2018-09-25 11:28:14', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#4', NULL, 1),
	(156, 100, '2018-09-25 11:28:14', '2018-09-25 11:28:14', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#4', NULL, 1),
	(157, 101, '2018-09-25 11:28:15', '2018-09-25 11:28:16', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#3', NULL, 1),
	(158, 101, '2018-09-25 11:28:16', '2018-09-25 11:28:22', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#3', NULL, 1),
	(159, 101, '2018-09-25 11:28:22', '2018-09-25 11:28:22', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#3', NULL, 1),
	(160, 101, '2018-09-25 11:28:22', '2018-09-25 11:28:23', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#3', NULL, 1),
	(161, 102, '2018-09-25 11:28:29', '2018-09-25 11:28:30', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(162, 102, '2018-09-25 11:28:30', '2018-09-25 11:28:35', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(163, 102, '2018-09-25 11:28:35', '2018-09-25 11:28:35', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(164, 102, '2018-09-25 11:28:35', '2018-09-25 11:28:36', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(165, 103, '2018-09-25 11:30:35', '2018-09-25 11:30:35', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(166, 103, '2018-09-25 11:30:35', '2018-09-25 11:30:41', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(167, 103, '2018-09-25 11:30:41', '2018-09-25 11:30:41', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(168, 103, '2018-09-25 11:30:41', '2018-09-25 11:30:41', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#2', NULL, 1),
	(169, 104, '2018-09-25 11:30:52', '2018-09-25 11:30:53', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(170, 104, '2018-09-25 11:30:53', '2018-09-25 11:31:07', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(171, 104, '2018-09-25 11:31:07', '2018-09-25 11:31:07', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(172, 104, '2018-09-25 11:31:07', '2018-09-25 11:31:08', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(173, 105, '2018-09-25 11:33:13', '2018-09-25 11:33:14', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(174, 105, '2018-09-25 11:33:14', '2018-09-25 11:33:29', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(175, 105, '2018-09-25 11:33:29', '2018-09-25 11:33:29', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(176, 105, '2018-09-25 11:33:29', '2018-09-25 11:33:30', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(177, 106, '2018-09-25 15:16:54', '2018-09-25 15:16:55', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(178, 106, '2018-09-25 15:16:55', '2018-09-25 15:17:19', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(179, 106, '2018-09-25 15:17:19', '2018-09-25 15:17:19', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(180, 106, '2018-09-25 15:17:19', '2018-09-25 15:17:19', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(181, 107, '2018-09-25 18:33:49', '2018-09-25 18:33:52', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(182, 107, '2018-09-25 18:33:52', '2018-09-25 18:34:24', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(183, 107, '2018-09-25 18:34:24', '2018-09-25 18:34:25', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(184, 107, '2018-09-25 18:34:25', '2018-09-25 18:34:25', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(185, 108, '2018-09-25 18:41:44', '2018-09-25 18:41:45', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(186, 108, '2018-09-25 18:41:45', '2018-09-25 18:42:01', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(187, 108, '2018-09-25 18:42:01', '2018-09-25 18:42:02', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(188, 108, '2018-09-25 18:42:02', '2018-09-25 18:42:02', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(189, 109, '2018-09-28 16:46:04', NULL, 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(190, 109, '2018-09-28 16:46:05', NULL, 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(191, 110, '2018-09-28 16:47:51', '2018-09-28 16:47:51', 'Transform->create_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(192, 110, '2018-09-28 16:47:51', '2018-09-28 16:47:57', 'RunR->tios.detectanomalyzonewise.ad.process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(193, 110, '2018-09-28 16:47:57', '2018-09-28 16:47:57', 'Transform->load_processed_data', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1),
	(194, 110, '2018-09-28 16:47:58', '2018-09-28 16:47:58', 'Transform->drop_temporary_table_process', 'tios.detectanomalyzonewise.ad.process#1', NULL, 1);
/*!40000 ALTER TABLE `command_audit` ENABLE KEYS */;

-- Dumping structure for table spw_audit.instance_audit
CREATE TABLE IF NOT EXISTS `instance_audit` (
  `instance_id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(150) NOT NULL DEFAULT '0',
  `mode` varchar(100) NOT NULL DEFAULT '0',
  `start` timestamp NULL DEFAULT current_timestamp(),
  `end` datetime DEFAULT NULL,
  `hostname` varchar(50) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `context_log` text DEFAULT NULL,
  `root_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- Dumping data for table spw_audit.instance_audit: ~110 rows (approximately)
/*!40000 ALTER TABLE `instance_audit` DISABLE KEYS */;
INSERT INTO `instance_audit` (`instance_id`, `instance_name`, `mode`, `start`, `end`, `hostname`, `file`, `status`, `context_log`, `root_ref_id`) VALUES
	(1, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 17:38:58', '2018-09-18 17:38:58', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:49)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(2, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 17:39:41', '2018-09-18 17:39:42', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:49)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(3, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 17:42:18', '2018-09-18 17:42:38', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:49)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(4, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 17:51:29', '2018-09-18 17:51:29', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:49)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(5, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 17:53:23', '2018-09-18 17:53:24', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(6, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 17:59:34', '2018-09-18 17:59:35', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:49)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(7, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:01:01', NULL, '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', 1, NULL, NULL),
	(8, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:04:53', '2018-09-18 18:07:56', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:49)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(9, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:08:07', '2018-09-18 18:08:45', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:50)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(10, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:10:26', '2018-09-18 18:11:02', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'java.lang.NoClassDefFoundError: org/etl/process/onethread/CommandFactory$\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:50)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\nCaused by: java.lang.ClassNotFoundException: org.etl.process.onethread.CommandFactory$\n	at java.net.URLClassLoader.findClass(URLClassLoader.java:381)\n	at java.lang.ClassLoader.loadClass(ClassLoader.java:424)\n	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:349)\n	at java.lang.ClassLoader.loadClass(ClassLoader.java:357)\n	... 27 more\n', NULL),
	(11, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:11:17', '2018-09-18 18:11:24', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:50)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(12, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:12:59', '2018-09-18 18:13:13', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:50)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(13, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:33:06', '2018-09-18 18:39:02', '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'scala.MatchError: runr (of class java.lang.String)\n	at org.etl.process.onethread.CommandFactory$.create(CommandFactory.scala:9)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:50)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:20)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(14, 'runRscript#1', 'org.etl.process.onethread', '2018-09-18 18:43:57', NULL, '127.0.1.1', '/home/prakash/workspace/sparrow/sparrow-server/target/classes/root/runRscript.spw', 1, NULL, NULL),
	(15, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 21:06:09', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', 1, NULL, NULL),
	(16, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:02:40', '2018-09-20 23:02:40', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(17, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:03:14', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', 1, NULL, NULL),
	(18, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:04:39', '2018-09-20 23:04:40', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(19, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:05:09', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', 1, NULL, NULL),
	(20, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:07:13', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', 1, NULL, NULL),
	(21, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:08:08', '2018-09-20 23:08:20', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(22, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:10:05', '2018-09-20 23:10:12', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(23, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:15:09', '2018-09-20 23:15:42', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(24, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:16:54', '2018-09-20 23:16:59', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(25, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:17:39', '2018-09-20 23:17:43', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(26, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:18:19', '2018-09-20 23:18:26', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(27, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:20:16', '2018-09-20 23:20:24', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(28, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:22:55', '2018-09-20 23:23:00', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(29, 'runRscript#1', 'org.etl.process.onethread', '2018-09-20 23:25:38', '2018-09-20 23:25:40', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(30, 'runRscript#1', 'org.etl.process.onethread', '2018-09-21 09:39:51', '2018-09-21 09:39:52', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(31, 'runRscript#1', 'org.etl.process.onethread', '2018-09-21 09:41:37', '2018-09-21 09:41:39', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(32, 'runRscript#1', 'org.etl.process.onethread', '2018-09-21 09:47:18', '2018-09-21 09:47:19', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(33, 'runRscript#1', 'org.etl.process.onethread', '2018-09-21 09:47:44', '2018-09-21 09:47:46', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(34, 'runRscript#1', 'org.etl.process.onethread', '2018-09-21 10:46:01', '2018-09-21 10:46:03', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscript.spw', -1, 'NONE', NULL),
	(35, 'runRscriptAnomalizeDetection#1', 'org.etl.process.onethread', '2018-09-21 14:41:40', '2018-09-21 14:41:46', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscriptAnomalizeDetection.spw', -1, 'NONE', NULL),
	(36, 'runRscriptAnomalize#1', 'org.etl.process.onethread', '2018-09-21 14:44:01', '2018-09-21 14:44:02', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscriptAnomalize.spw', -1, 'NONE', NULL),
	(37, 'runRscriptAnomalize#1', 'org.etl.process.onethread', '2018-09-21 14:45:09', '2018-09-21 14:45:13', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/runRscriptAnomalize.spw', -1, 'NONE', NULL),
	(38, 'tios.detectanomaly.ad.Central.process#1', 'org.etl.process.onethread', '2018-09-22 15:36:41', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.Central.process.spw', 1, NULL, NULL),
	(39, 'tios.detectanomaly.ad.Central.process#1', 'org.etl.process.onethread', '2018-09-22 16:07:40', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.Central.process.spw', 1, NULL, NULL),
	(40, 'test.rest.process#1', 'org.etl.process.onethread', '2018-09-22 16:15:43', '2018-09-22 16:15:43', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/test.rest.process.spw', -1, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown database \'chimera_integration\'\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\n	at com.mysql.jdbc.Util.getInstance(Util.java:408)\n	at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:943)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3973)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3909)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:873)\n	at com.mysql.jdbc.MysqlIO.proceedHandshakeWithPluggableAuthentication(MysqlIO.java:1710)\n	at com.mysql.jdbc.MysqlIO.doHandshake(MysqlIO.java:1226)\n	at com.mysql.jdbc.ConnectionImpl.coreConnect(ConnectionImpl.java:2191)\n	at com.mysql.jdbc.ConnectionImpl.connectOneTryOnly(ConnectionImpl.java:2222)\n	at com.mysql.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:2017)\n	at com.mysql.jdbc.ConnectionImpl.<init>(ConnectionImpl.java:779)\n	at com.mysql.jdbc.JDBC4Connection.<init>(JDBC4Connection.java:47)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\n	at com.mysql.jdbc.ConnectionImpl.getInstance(ConnectionImpl.java:389)\n	at com.mysql.jdbc.NonRegisteringDriver.connect(NonRegisteringDriver.java:330)\n	at java.sql.DriverManager.getConnection(DriverManager.java:664)\n	at java.sql.DriverManager.getConnection(DriverManager.java:247)\n	at org.etl.util.ResourceAccess$.rdbmsConn(ResourceAccess.scala:21)\n	at org.etl.process.onethread.TransformAction.execute(TransformAction.scala:22)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:54)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RestTest.runProcess(RestAction.scala:16)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(41, 'test.rest.process#1', 'org.etl.process.onethread', '2018-09-22 16:16:14', '2018-09-22 16:16:15', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/test.rest.process.spw', -1, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown database \'chimera_integration\'\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\n	at com.mysql.jdbc.Util.getInstance(Util.java:408)\n	at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:943)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3973)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3909)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:873)\n	at com.mysql.jdbc.MysqlIO.proceedHandshakeWithPluggableAuthentication(MysqlIO.java:1710)\n	at com.mysql.jdbc.MysqlIO.doHandshake(MysqlIO.java:1226)\n	at com.mysql.jdbc.ConnectionImpl.coreConnect(ConnectionImpl.java:2191)\n	at com.mysql.jdbc.ConnectionImpl.connectOneTryOnly(ConnectionImpl.java:2222)\n	at com.mysql.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:2017)\n	at com.mysql.jdbc.ConnectionImpl.<init>(ConnectionImpl.java:779)\n	at com.mysql.jdbc.JDBC4Connection.<init>(JDBC4Connection.java:47)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\n	at com.mysql.jdbc.ConnectionImpl.getInstance(ConnectionImpl.java:389)\n	at com.mysql.jdbc.NonRegisteringDriver.connect(NonRegisteringDriver.java:330)\n	at java.sql.DriverManager.getConnection(DriverManager.java:664)\n	at java.sql.DriverManager.getConnection(DriverManager.java:247)\n	at org.etl.util.ResourceAccess$.rdbmsConn(ResourceAccess.scala:21)\n	at org.etl.process.onethread.TransformAction.execute(TransformAction.scala:22)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:54)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RestTest.runProcess(RestAction.scala:16)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(42, 'test.rest.process#1', 'org.etl.process.onethread', '2018-09-22 16:16:31', '2018-09-22 16:16:31', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/test.rest.process.spw', -1, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown database \'chimera_integration\'\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\n	at com.mysql.jdbc.Util.getInstance(Util.java:408)\n	at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:943)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3973)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3909)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:873)\n	at com.mysql.jdbc.MysqlIO.proceedHandshakeWithPluggableAuthentication(MysqlIO.java:1710)\n	at com.mysql.jdbc.MysqlIO.doHandshake(MysqlIO.java:1226)\n	at com.mysql.jdbc.ConnectionImpl.coreConnect(ConnectionImpl.java:2191)\n	at com.mysql.jdbc.ConnectionImpl.connectOneTryOnly(ConnectionImpl.java:2222)\n	at com.mysql.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:2017)\n	at com.mysql.jdbc.ConnectionImpl.<init>(ConnectionImpl.java:779)\n	at com.mysql.jdbc.JDBC4Connection.<init>(JDBC4Connection.java:47)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\n	at com.mysql.jdbc.ConnectionImpl.getInstance(ConnectionImpl.java:389)\n	at com.mysql.jdbc.NonRegisteringDriver.connect(NonRegisteringDriver.java:330)\n	at java.sql.DriverManager.getConnection(DriverManager.java:664)\n	at java.sql.DriverManager.getConnection(DriverManager.java:247)\n	at org.etl.util.ResourceAccess$.rdbmsConn(ResourceAccess.scala:21)\n	at org.etl.process.onethread.TransformAction.execute(TransformAction.scala:22)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:54)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RestTest.runProcess(RestAction.scala:16)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(43, 'candy.eventing.customer.process#1', 'org.etl.process.onethread', '2018-09-22 16:46:13', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/candy.eventing.customer.process.spw', 1, NULL, NULL),
	(44, 'tios.detectanomaly.ad.Central.process#1', 'org.etl.process.onethread', '2018-09-22 17:33:58', '2018-09-22 18:11:13', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.Central.process.spw', -1, 'NONE', NULL),
	(45, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:13:38', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', 1, NULL, NULL),
	(46, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:16:20', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', 1, NULL, NULL),
	(47, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:28:52', '2018-09-22 18:28:52', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(48, 'candy.eventing.customer.process#1', 'org.etl.process.onethread', '2018-09-22 18:30:04', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/candy.eventing.customer.process.spw', 1, NULL, NULL),
	(49, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:32:26', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', 1, NULL, NULL),
	(50, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:33:53', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', 1, NULL, NULL),
	(51, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:36:17', '2018-09-22 18:36:18', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(52, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:38:18', '2018-09-22 18:38:18', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(53, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:38:51', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', 1, NULL, NULL),
	(54, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:40:06', '2018-09-22 18:40:06', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(55, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:41:33', '2018-09-22 18:41:34', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(56, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:42:23', '2018-09-22 18:42:23', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(57, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:43:07', '2018-09-22 18:43:07', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(58, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 18:43:41', '2018-09-22 18:46:14', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(59, 'tios.detectanomaly.ad.process#1', 'org.etl.process.onethread', '2018-09-22 19:52:04', '2018-09-22 19:54:44', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomaly.ad.process.spw', -1, 'NONE', NULL),
	(60, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-22 22:01:05', '2018-09-22 22:04:38', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(61, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-22 23:40:24', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(62, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 00:02:31', '2018-09-23 00:02:49', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(63, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 10:07:22', '2018-09-23 10:07:43', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(64, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 10:09:39', '2018-09-23 10:09:55', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(65, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 10:11:01', '2018-09-23 10:11:15', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(66, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 11:46:17', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(67, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 11:47:55', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(68, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 11:49:50', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(69, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 11:51:26', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(70, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 11:52:23', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(71, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 13:47:16', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(72, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 13:51:44', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(73, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 13:58:51', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(74, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 14:48:10', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(75, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 14:51:50', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(76, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 14:55:20', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(77, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 14:55:33', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(78, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 14:56:00', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(79, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 14:57:57', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(80, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 15:02:26', '2018-09-23 15:13:34', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'columns\' in \'field list\'\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\n	at com.mysql.jdbc.Util.getInstance(Util.java:408)\n	at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:943)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3973)\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3909)\n	at com.mysql.jdbc.MysqlIO.sendCommand(MysqlIO.java:2527)\n	at com.mysql.jdbc.MysqlIO.sqlQueryDirect(MysqlIO.java:2680)\n	at com.mysql.jdbc.ConnectionImpl.execSQL(ConnectionImpl.java:2483)\n	at com.mysql.jdbc.ConnectionImpl.execSQL(ConnectionImpl.java:2441)\n	at com.mysql.jdbc.StatementImpl.executeInternal(StatementImpl.java:845)\n	at com.mysql.jdbc.StatementImpl.execute(StatementImpl.java:745)\n	at org.etl.process.onethread.TransformAction$$anonfun$execute$1.apply(TransformAction.scala:33)\n	at org.etl.process.onethread.TransformAction$$anonfun$execute$1.apply(TransformAction.scala:30)\n	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\n	at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:186)\n	at org.etl.process.onethread.TransformAction.execute(TransformAction.scala:30)\n	at org.etl.process.onethread.UniThreadProcessRuntime.executeChain(UniThreadProcessRuntime.scala:54)\n	at org.etl.process.onethread.UniThreadProcessRuntime.execute(UniThreadProcessRuntime.scala:24)\n	at org.etl.server.ProcessExecutor$.execute(ProcessExecutor.scala:24)\n	at org.etl.dsl.singlethread.RunRTest.runProcess(RunRTest.scala:26)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)\n	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)\n	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)\n	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)\n	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)\n	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)\n	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)\n	at org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:86)\n	at org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:538)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:760)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:460)\n	at org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:206)\n', NULL),
	(81, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 15:06:10', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(82, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-23 15:38:49', '2018-09-23 15:39:06', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(83, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-23 15:47:11', '2018-09-23 15:48:40', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(84, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-23 15:47:39', '2018-09-23 15:49:02', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(85, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-23 15:49:27', '2018-09-23 15:54:23', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(86, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-23 15:54:21', '2018-09-23 16:06:32', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(87, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-23 16:08:38', '2018-09-23 16:11:04', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(88, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-24 10:20:46', '2018-09-24 10:23:16', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(89, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-25 11:15:24', '2018-09-25 11:15:26', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(90, 'tios.detectanomalyzonewise.an.process#1', 'org.etl.process.onethread', '2018-09-25 11:16:23', '2018-09-25 11:18:56', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(91, 'tios.detectanomalyzonewise.an.process#2', 'org.etl.process.onethread', '2018-09-25 11:16:49', '2018-09-25 11:19:16', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(92, 'tios.detectanomalyzonewise.an.process#3', 'org.etl.process.onethread', '2018-09-25 11:20:48', '2018-09-25 11:21:15', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(93, 'tios.detectanomalyzonewise.an.process#4', 'org.etl.process.onethread', '2018-09-25 11:21:45', '2018-09-25 11:22:46', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(94, 'tios.detectanomalyzonewise.an.process#5', 'org.etl.process.onethread', '2018-09-25 11:22:04', '2018-09-25 11:23:38', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(95, 'tios.detectanomalyzonewise.an.process#6', 'org.etl.process.onethread', '2018-09-25 11:25:28', '2018-09-25 11:26:27', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(96, 'tios.detectanomalyzonewise.an.process#7', 'org.etl.process.onethread', '2018-09-25 11:25:42', '2018-09-25 11:26:48', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.an.process.spw', -1, 'NONE', NULL),
	(97, 'tios.detectanomalyzonewise.ad.process#7', 'org.etl.process.onethread', '2018-09-25 11:27:04', '2018-09-25 11:27:11', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(98, 'tios.detectanomalyzonewise.ad.process#6', 'org.etl.process.onethread', '2018-09-25 11:27:26', '2018-09-25 11:27:41', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(99, 'tios.detectanomalyzonewise.ad.process#6', 'org.etl.process.onethread', '2018-09-25 11:27:39', '2018-09-25 11:27:50', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(100, 'tios.detectanomalyzonewise.ad.process#4', 'org.etl.process.onethread', '2018-09-25 11:28:02', '2018-09-25 11:28:14', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(101, 'tios.detectanomalyzonewise.ad.process#3', 'org.etl.process.onethread', '2018-09-25 11:28:15', '2018-09-25 11:28:23', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(102, 'tios.detectanomalyzonewise.ad.process#2', 'org.etl.process.onethread', '2018-09-25 11:28:29', '2018-09-25 11:28:36', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(103, 'tios.detectanomalyzonewise.ad.process#2', 'org.etl.process.onethread', '2018-09-25 11:30:35', '2018-09-25 11:30:41', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(104, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-25 11:30:52', '2018-09-25 11:31:08', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(105, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-25 11:33:13', '2018-09-25 11:33:30', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(106, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-25 15:16:54', '2018-09-25 15:17:20', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(107, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-25 18:33:46', '2018-09-25 18:34:26', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(108, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-25 18:41:44', '2018-09-25 18:42:02', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL),
	(109, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-28 16:46:03', NULL, '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', 1, NULL, NULL),
	(110, 'tios.detectanomalyzonewise.ad.process#1', 'org.etl.process.onethread', '2018-09-28 16:47:51', '2018-09-28 16:47:58', '127.0.1.1', '/home/prakash/workspace/sparrowdoozle/sparrow/sparrow-server/target/classes/root/tios.detectanomalyzonewise.ad.process.spw', -1, 'NONE', NULL);
/*!40000 ALTER TABLE `instance_audit` ENABLE KEYS */;

-- Dumping structure for table spw_audit.statement_audit
CREATE TABLE IF NOT EXISTS `statement_audit` (
  `statement_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT 0,
  `action_name` varchar(50) DEFAULT '0',
  `process_name` varchar(50) DEFAULT '0',
  `start` timestamp NULL DEFAULT current_timestamp(),
  `end` datetime DEFAULT NULL,
  `rows_written` int(11) DEFAULT NULL,
  `statement_config` text DEFAULT NULL,
  `rows_read` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`statement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table spw_audit.statement_audit: ~0 rows (approximately)
/*!40000 ALTER TABLE `statement_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `statement_audit` ENABLE KEYS */;


-- Dumping database structure for spw_config
CREATE DATABASE IF NOT EXISTS `spw_config` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `spw_config`;

-- Dumping structure for table spw_config.config_audit
CREATE TABLE IF NOT EXISTS `config_audit` (
  `config_type` varchar(50) DEFAULT NULL,
  `variable` varchar(150) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `process` varchar(500) DEFAULT NULL,
  `instance` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table spw_config.config_audit: ~1 rows (approximately)
/*!40000 ALTER TABLE `config_audit` DISABLE KEYS */;
INSERT INTO `config_audit` (`config_type`, `variable`, `value`, `process`, `instance`) VALUES
	('rdms', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `config_audit` ENABLE KEYS */;

-- Dumping structure for table spw_config.counter
CREATE TABLE IF NOT EXISTS `counter` (
  `order_info_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table spw_config.counter: ~0 rows (approximately)
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;

-- Dumping structure for table spw_config.spw_common_config
CREATE TABLE IF NOT EXISTS `spw_common_config` (
  `variable` varchar(150) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `active` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table spw_config.spw_common_config: ~21 rows (approximately)
/*!40000 ALTER TABLE `spw_common_config` DISABLE KEYS */;
INSERT INTO `spw_common_config` (`variable`, `value`, `active`) VALUES
	('basepath', 'root', 'Y'),
	('runmode', 'single', 'Y'),
	('audit', 'audit/bonsai-audit', 'Y'),
	('json.storagepath', '/var/lib/mysql/parkingbay', 'Y'),
	('integration-db', 'oltp/candy_lead-intg', 'Y'),
	('integration-schema', 'lead', 'Y'),
	('wordpress-schema', 'bitnami_wordpress', 'Y'),
	('audit', 'audit/candy_lead-audit', 'Y'),
	('wci-db', 'oltp/wci-intg', 'Y'),
	('wci-schema', 'bonsai_crm', 'Y'),
	('parkdb', 'oltp/parkingdb', 'Y'),
	('park-schema', 'parkingbay', 'Y'),
	('cus-db', 'oltp/cus-intg', 'Y'),
	('cus-schema', 'customer', 'Y'),
	('basepath', 'root', 'Y'),
	('runmode', 'single', 'Y'),
	('audit', 'audit/chimera-audit', 'Y'),
	('integration-db', 'oltp/chimera-intg', 'Y'),
	('integration-schema', 'chimera_integration', 'Y'),
	('lms-schema', 'mifostenant-default', 'Y'),
	('json.storagepath', '/var/lib/mysql/chimera_integration', 'Y');
/*!40000 ALTER TABLE `spw_common_config` ENABLE KEYS */;

-- Dumping structure for table spw_config.spw_instance
CREATE TABLE IF NOT EXISTS `spw_instance` (
  `instance` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `process` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `variable` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `value` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `active` enum('Y','N') CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table spw_config.spw_instance: ~39 rows (approximately)
/*!40000 ALTER TABLE `spw_instance` DISABLE KEYS */;
INSERT INTO `spw_instance` (`instance`, `process`, `variable`, `value`, `active`) VALUES
	('test.callprocess.process#1', 'test.callprocess.process', 'lms', 'oltp/chimera_lms', 'Y'),
	('test.rest.process#1', 'test.rest.process', 'lms', 'oltp/chimera-lms', 'Y'),
	('test.doozle.process#1', 'test.doozle.process', 'lms', 'oltp/chimera_lms', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'runfbcl', 'true', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'accesstoken', 'EAAEhaBeKXKcBAK4jOdwlra5PyORaqGZC1lYgXeiAAZAnaplLqtBnMtn8BUjlrKaphTJSnUeErhaXfndpm06ILZCx1xaSFBz4zZCcXWyCcUsJKh6pjtRO7A67pT0yBPxlf6RRPccWKDh2c87JdYnGVuCxHsnllZA5AuQG7wexL7QZDZD', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'secret-key', '632b2b7e5a1d1a86348aa3ec73606cfd', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'user-id', '1385910988364458', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'campaign-id-list', '6089266474957,6083587107157,6080044414357', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'wci-db', 'oltp/wci-intg', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'gaccountid', 'bonsai@bonsai-crm-under-tissow-org.iam.gserviceaccount.com', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'gprivatekey', '8debeae0d4910282754c67cadb177287d3ed8d86', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'p12filepath', 'auth/bonsai-crm-under-tissow-org-8debeae0d491.p12', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'gcloud-project-name', 'bonsai-crm-under-tissow-org', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'impersonated-user', 'junomeadmin@tissow.com', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'calendarid', 'junomeadmin@tissow.com', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'runcontact', 'true', 'Y'),
	('candycrm.wp.leadingestion#1', 'candycrm.wp.leadingestion', 'runcalendar', 'true', 'Y'),
	('candy.uploadcalllog.process#1', 'candy.uploadcalllog.process', 'rundoozle', 'true', 'Y'),
	('candy.uploadcalllog.process#1', 'candy.uploadcalllog.process', 'parkdb', 'oltp/parkingdb', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'runfbcl', 'true', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'accesstoken', 'EAAEhaBeKXKcBAK4jOdwlra5PyORaqGZC1lYgXeiAAZAnaplLqtBnMtn8BUjlrKaphTJSnUeErhaXfndpm06ILZCx1xaSFBz4zZCcXWyCcUsJKh6pjtRO7A67pT0yBPxlf6RRPccWKDh2c87JdYnGVuCxHsnllZA5AuQG7wexL7QZDZD', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'secret-key', '632b2b7e5a1d1a86348aa3ec73606cfd', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'user-id', '1385910988364458', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'campaign-id-list', '6092541246957,6092384957357', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'sor-db', 'oltp/bonsai', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'gaccountid', 'bonsai@bonsai-crm-under-tissow-org.iam.gserviceaccount.com', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'gprivatekey', '8debeae0d4910282754c67cadb177287d3ed8d86', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'p12filepath', 'auth/bonsai-crm-under-tissow-org-8debeae0d491.p12', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'gcloud-project-name', 'bonsai-crm-under-tissow-org', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'impersonated-user', 'junomeadmin@tissow.com', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'calendarid', 'junomeadmin@tissow.com', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'runcontact', 'true', 'Y'),
	('bonsai.leadingestion.process#1', 'bonsai.leadingestion.process', 'runcalendar', 'true', 'Y'),
	('candy.uploadcalllog.process#1', 'candy.uploadcalllog.process', 'rundoozle', 'true', 'Y'),
	('candy.uploadcalllog.process#1', 'candy.uploadcalllog.process', 'parkdb', 'oltp/parkingdb', 'Y'),
	('candy.uploadcalllog.overall.process#1', 'candy.uploadcalllog.overall.process', 'rundoozle', 'true', 'Y'),
	('candy.uploadcalllog.overall.process#1', 'candy.uploadcalllog.overall.process', 'parkdb', 'oltp/parkingdb', 'Y'),
	('candy.uploadcalllog.overall.process#1', 'candy.uploadcalllog.overall.process', 'runcalllog', 'true', 'Y'),
	('candy.uploadcalllog.process#1', 'candy.uploadcalllog.process', 'runcalllog', 'true', 'Y');
/*!40000 ALTER TABLE `spw_instance` ENABLE KEYS */;

-- Dumping structure for table spw_config.spw_instance_config
CREATE TABLE IF NOT EXISTS `spw_instance_config` (
  `instance` varchar(150) DEFAULT NULL,
  `process` varchar(150) DEFAULT NULL,
  `variable` varchar(150) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `active` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table spw_config.spw_instance_config: ~14 rows (approximately)
/*!40000 ALTER TABLE `spw_instance_config` DISABLE KEYS */;
INSERT INTO `spw_instance_config` (`instance`, `process`, `variable`, `value`, `active`) VALUES
	('tios.detectanomalyzonewise.ad.process#2', 'tios.detectanomalyzonewise.ad.process', 'zone', 'East', 'Y'),
	('tios.detectanomalyzonewise.an.process#2', 'tios.detectanomalyzonewise.an.process', 'zone', 'East', 'Y'),
	('tios.detectanomalyzonewise.an.process#3', 'tios.detectanomalyzonewise.an.process', 'zone', 'Midwest ISO', 'Y'),
	('tios.detectanomalyzonewise.an.process#4', 'tios.detectanomalyzonewise.an.process', 'zone', 'MISO', 'Y'),
	('tios.detectanomalyzonewise.an.process#5', 'tios.detectanomalyzonewise.an.process', 'zone', 'North', 'Y'),
	('tios.detectanomalyzonewise.an.process#6', 'tios.detectanomalyzonewise.an.process', 'zone', 'South', 'Y'),
	('tios.detectanomalyzonewise.an.process#7', 'tios.detectanomalyzonewise.an.process', 'zone', 'West', 'Y'),
	('tios.detectanomalyzonewise.an.process#1', 'tios.detectanomalyzonewise.an.process', 'zone', 'Central', 'Y'),
	('tios.detectanomalyzonewise.ad.process#3', 'tios.detectanomalyzonewise.ad.process', 'zone', 'Midwest ISO', 'Y'),
	('tios.detectanomalyzonewise.ad.process#4', 'tios.detectanomalyzonewise.ad.process', 'zone', 'MISO', 'Y'),
	('tios.detectanomalyzonewise.ad.process#5', 'tios.detectanomalyzonewise.ad.process', 'zone', 'North', 'Y'),
	('tios.detectanomalyzonewise.ad.process#6', 'tios.detectanomalyzonewise.ad.process', 'zone', 'South', 'Y'),
	('tios.detectanomalyzonewise.ad.process#7', 'tios.detectanomalyzonewise.ad.process', 'zone', 'West', 'Y'),
	('tios.detectanomalyzonewise.ad.process#1', 'tios.detectanomalyzonewise.ad.process', 'zone', 'Central', 'Y');
/*!40000 ALTER TABLE `spw_instance_config` ENABLE KEYS */;

-- Dumping structure for table spw_config.spw_process_config
CREATE TABLE IF NOT EXISTS `spw_process_config` (
  `process` varchar(150) DEFAULT NULL,
  `variable` varchar(150) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `active` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table spw_config.spw_process_config: ~30 rows (approximately)
/*!40000 ALTER TABLE `spw_process_config` DISABLE KEYS */;
INSERT INTO `spw_process_config` (`process`, `variable`, `value`, `active`) VALUES
	('tios.detectanomalyzonewise.ad.process', 'anomalize-password', 'password', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'time-decompose-method', 'twitter', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'sys-timezone', 'UTC', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-dbType', 'RMariaDB', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-dbType-function', 'MariaDB', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-url', 'localhost', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-database', 'rtios', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'filepath', 'tios.detectanomalyzonewise.ad.process.spw', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-user', 'root', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-direction', 'both', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-longterm', '30', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'time-decompose-trend', 'auto', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'time-format', '%Y-%m-%d %H:%M:%S', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-password', 'password', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-alpha', '0.05', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-user', 'root', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'time-decompose-frequency', 'auto', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-method', 'gesd', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-url', 'localhost', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-dbType-function', 'MariaDB', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-dbType', 'RMariaDB', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'sys-timezone', 'UTC', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'anomalize-database', 'rtios', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'filepath', 'tios.detectanomalyzonewise.an.process.spw', 'Y'),
	('tios.detectanomalyzonewise.an.process', 'time-format', '%Y-%m-%d %H:%M:%S', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-alpha', '0.05', 'Y'),
	('tios.detectanomalyzonewise.ad.process', 'anomalize-period', '7', 'Y'),
	('load_processed_data', 'anomalize-dbType', 'rtios', 'Y'),
	('drop_temporary_table_process', 'anomalize-dbType', 'rtios', 'Y'),
	('create_temporary_table_process', 'anomalize-dbType', 'rtios', 'Y');
/*!40000 ALTER TABLE `spw_process_config` ENABLE KEYS */;

-- Dumping structure for table spw_config.spw_resource_config
CREATE TABLE IF NOT EXISTS `spw_resource_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_type` varchar(50) DEFAULT NULL,
  `config_name` varchar(50) DEFAULT NULL,
  `auth_info` varchar(1000) DEFAULT NULL,
  `resource_url` varchar(1000) DEFAULT NULL,
  `active` enum('Y','N') DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table spw_config.spw_resource_config: ~1 rows (approximately)
/*!40000 ALTER TABLE `spw_resource_config` DISABLE KEYS */;
INSERT INTO `spw_resource_config` (`id`, `config_type`, `config_name`, `auth_info`, `resource_url`, `active`, `created_date`) VALUES
	(10, '1', 'rtios', '{ "user": "root", "password": "password"}', 'jdbc:mysql://localhost:3306/rtios', 'Y', '2018-09-23 15:02:10');
/*!40000 ALTER TABLE `spw_resource_config` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
