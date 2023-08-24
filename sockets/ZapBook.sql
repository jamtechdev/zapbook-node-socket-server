-- Adminer 4.8.1 MySQL 5.5.5-10.1.48-MariaDB-0ubuntu0.18.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `bookables`;
CREATE TABLE `bookables` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `image_url` longtext,
  `display_name` varchar(255) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `item_status` tinyint(1) DEFAULT NULL,
  `unlimited_participants` tinyint(1) DEFAULT NULL,
  `min_participants` varchar(15) DEFAULT NULL,
  `max_participants` varchar(15) DEFAULT NULL,
  `description` longtext,
  `reference_video_link` longtext,
  `price` decimal(10,2) DEFAULT NULL,
  `per_person_or_total` tinyint(1) DEFAULT NULL,
  `unlimited_stock` tinyint(1) DEFAULT NULL,
  `stock_per_day` varchar(10) DEFAULT NULL,
  `staff_reliant` tinyint(1) DEFAULT NULL,
  `staff_from_booking` varchar(10) DEFAULT NULL,
  `staff_to_booking` varchar(10) DEFAULT NULL,
  `lane_schedule` tinyint(4) DEFAULT NULL,
  `experience_type` varchar(100) DEFAULT NULL,
  `game_connection` tinyint(1) DEFAULT NULL,
  `connected_experience` varchar(100) DEFAULT NULL,
  `affected_lanes` tinyint(1) DEFAULT NULL,
  `lanes_from_participant` varchar(20) DEFAULT NULL,
  `lanes_to_participant` varchar(20) DEFAULT NULL,
  `web_booking_widget` tinyint(1) DEFAULT NULL,
  `available_add_ons` varchar(100) DEFAULT NULL,
  `product_add_ons` longtext,
  `booking_cutoff` tinyint(1) DEFAULT NULL,
  `how_far_in_advance` varchar(20) DEFAULT NULL COMMENT 'in hours',
  `is_deposit` tinyint(1) DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bookables` (`id`, `location_id`, `item_name`, `image_url`, `display_name`, `sku`, `item_status`, `unlimited_participants`, `min_participants`, `max_participants`, `description`, `reference_video_link`, `price`, `per_person_or_total`, `unlimited_stock`, `stock_per_day`, `staff_reliant`, `staff_from_booking`, `staff_to_booking`, `lane_schedule`, `experience_type`, `game_connection`, `connected_experience`, `affected_lanes`, `lanes_from_participant`, `lanes_to_participant`, `web_booking_widget`, `available_add_ons`, `product_add_ons`, `booking_cutoff`, `how_far_in_advance`, `is_deposit`, `deposit`, `created_at`, `updated_at`) VALUES
(1,	1,	'Small Group 2-6',	'media/bookables/jSOxre6wv8zjNhEgZrDP3VNl55lbSuIB8IgKZj37.jpg',	'Axe N\' Relax',	'1234',	1,	0,	'2',	'6',	'Description Description Description',	'https://axethrowingpgh.com/wp-content/uploads/2021/12/HomePageContentPittsburgh2022.mp4',	35.00,	0,	1,	'&#8734',	1,	NULL,	NULL,	1,	'4',	1,	'2',	1,	'1',	'4',	1,	'2 Products Selected',	'[1,8]',	1,	'2',	1,	80.00,	'2023-01-31 11:48:49',	'2023-08-14 12:50:52'),
(6,	1,	'small axe throwing',	NULL,	'small axe throwing',	'13594',	1,	1,	NULL,	NULL,	'fun axe throwing comp',	'https://youtu.be/ahaJ4IvHlDk',	55.00,	0,	1,	'&#8734',	1,	'1',	'6',	1,	'',	1,	'2',	1,	'1',	'10',	1,	'1 Products Selected',	'[1]',	0,	NULL,	0,	NULL,	'2023-06-16 18:31:31',	'2023-08-21 15:42:04');

DROP TABLE IF EXISTS `bookable_fees`;
CREATE TABLE `bookable_fees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookable_id` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(30) DEFAULT NULL,
  `type` enum('dollar','percent') DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bookable_fees` (`id`, `bookable_id`, `title`, `value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	'Coaching Fee',	'25',	'dollar',	1,	'2023-02-27 12:39:06',	'2023-02-27 12:39:06'),
(2,	1,	'Sales Tax',	'10',	'percent',	1,	'2023-02-27 12:39:06',	'2023-02-27 12:39:06'),
(5,	6,	'Coaching Fee',	'5',	'dollar',	1,	'2023-06-16 18:31:31',	'2023-06-16 18:31:31'),
(6,	6,	'Sales Tax',	'10',	'percent',	1,	'2023-06-16 18:31:31',	'2023-06-16 18:31:31');

DROP TABLE IF EXISTS `bookable_timeslots`;
CREATE TABLE `bookable_timeslots` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookable_id` bigint(20) DEFAULT NULL,
  `startTime` varchar(30) DEFAULT NULL,
  `endTime` varchar(30) DEFAULT NULL,
  `days` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bookable_timeslots` (`id`, `bookable_id`, `startTime`, `endTime`, `days`, `created_at`, `updated_at`) VALUES
(28,	1,	'10:00 AM',	'12:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-01 09:23:10',	'2023-08-14 10:44:45'),
(29,	1,	'12:00 PM',	'02:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-03 06:34:18',	'2023-08-14 10:44:45'),
(30,	1,	'02:00 PM',	'04:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-03 06:34:18',	'2023-08-14 10:44:45'),
(31,	1,	'04:00 PM',	'06:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-03 06:34:18',	'2023-08-14 10:44:45'),
(32,	6,	'10:00 AM',	'12:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-07 14:08:56',	'2023-08-21 15:42:04'),
(33,	6,	'12:00 PM',	'02:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-07 14:08:56',	'2023-08-21 15:42:04'),
(34,	6,	'02:00 PM',	'04:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-07 14:08:56',	'2023-08-21 15:42:04'),
(35,	6,	'04:00 PM',	'06:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-07 14:08:56',	'2023-08-21 15:42:04'),
(36,	1,	'06:00 PM',	'08:00 PM',	'[{\"name\":\"sun\",\"isActive\":true},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":true},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":true}]',	'2023-07-17 20:12:46',	'2023-08-14 10:44:45');

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `reservation_id` varchar(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_id` bigint(20) DEFAULT NULL,
  `group_size` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL COMMENT '(Sales tax)',
  `tip_amount` decimal(10,2) DEFAULT NULL COMMENT '(In dollar)',
  `upgrade_count` decimal(10,2) DEFAULT NULL,
  `upgrade_amount` decimal(10,2) DEFAULT NULL,
  `type` enum('reserve','deposit','full') DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL COMMENT '(In percent)',
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `special_request` longtext,
  `special_event` int(11) DEFAULT NULL,
  `from_where` int(11) DEFAULT NULL,
  `origin_sale` varchar(30) DEFAULT NULL,
  `invoice_url` longtext,
  `waiver_link` longtext,
  `no_of_lanes` varchar(10) DEFAULT NULL,
  `no_of_participants` varchar(10) DEFAULT NULL,
  `no_of_spectators` varchar(10) DEFAULT NULL,
  `welcome_message` varchar(255) DEFAULT NULL,
  `cancellation_policy` tinyint(4) DEFAULT NULL,
  `terms_of_service` tinyint(4) DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `region_code` varchar(10) DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `status` enum('draft','pending','completed','canceled') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bookings` (`id`, `location_id`, `reservation_id`, `user_id`, `created_id`, `group_size`, `booking_date`, `start_time`, `end_time`, `tax_amount`, `tip_amount`, `upgrade_count`, `upgrade_amount`, `type`, `deposit`, `paid_amount`, `total_amount`, `special_request`, `special_event`, `from_where`, `origin_sale`, `invoice_url`, `waiver_link`, `no_of_lanes`, `no_of_participants`, `no_of_spectators`, `welcome_message`, `cancellation_policy`, `terms_of_service`, `ip_address`, `city`, `region_code`, `country_code`, `status`, `created_at`, `updated_at`) VALUES
(5,	1,	'MILL-39-2710',	416,	1,	6,	'2023-08-17',	'2023-08-17 12:00:00',	'2023-08-17 14:00:00',	23.50,	30.00,	0.00,	0.00,	'full',	NULL,	288.50,	288.50,	'This is the description of the booking',	NULL,	NULL,	'Phone call',	'invoices/invoice-MILL-39-2710.pdf',	'millvale/waiver/agreement/TUlMTC0zOS0yNzEw',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-16 05:21:43',	'2023-08-16 05:21:44'),
(6,	1,	'MILL-49-7258',	417,	1,	8,	'2023-08-17',	'2023-08-17 14:00:00',	'2023-08-17 16:00:00',	6.00,	30.00,	0.00,	0.00,	'',	NULL,	66.00,	66.00,	'This is the booking descripion',	7,	8,	'Phone call',	'invoices/invoice-MILL-49-7258.pdf',	'millvale/waiver/agreement/TUlMTC00OS03MjU4',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'draft',	'2023-08-16 05:25:26',	'2023-08-16 05:25:27'),
(9,	1,	'MILL-36-3282',	369,	NULL,	7,	'2023-08-19',	'2023-08-19 10:00:00',	'2023-08-19 12:00:00',	6.00,	30.00,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'sdvsdvsdxv',	1,	4,	NULL,	'invoices/invoice-MILL-36-3282.pdf',	'millvale/waiver/agreement/TUlMTC0zNi0zMjgy',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-18 14:30:09',	'2023-08-18 14:30:10'),
(13,	1,	'MILL-87-6631',	369,	NULL,	6,	'2023-08-19',	'2023-08-19 12:00:00',	'2023-08-19 14:00:00',	11.00,	30.00,	2.00,	50.00,	'full',	NULL,	121.00,	121.00,	'sdgsdgsdg',	1,	4,	NULL,	'invoices/invoice-MILL-87-6631.pdf',	'millvale/waiver/agreement/TUlMTC04Ny02NjMx',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-18 14:51:29',	'2023-08-18 14:51:30'),
(14,	1,	'MILL-85-5065',	430,	NULL,	6,	'2023-08-25',	'2023-08-25 12:00:00',	'2023-08-25 14:00:00',	11.00,	30.00,	2.00,	50.00,	'full',	NULL,	121.00,	121.00,	'cxvxcbvxcb',	1,	4,	NULL,	'invoices/invoice-MILL-85-5065.pdf',	'millvale/waiver/agreement/TUlMTC04NS01MDY1',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-18 15:09:23',	'2023-08-18 15:09:24'),
(17,	1,	'MILL-64-6504',	369,	NULL,	1,	'2023-08-23',	'2023-08-23 16:00:00',	'2023-08-23 18:00:00',	6.00,	30.00,	0.00,	0.00,	'deposit',	80.00,	52.80,	66.00,	'vghbbccg',	1,	4,	NULL,	'invoices/invoice-MILL-64-6504.pdf',	'millvale/waiver/agreement/TUlMTC02NC02NTA0',	NULL,	NULL,	NULL,	NULL,	1,	1,	'47.9.151.185',	NULL,	NULL,	NULL,	'',	'2023-08-18 17:04:09',	'2023-08-18 17:04:10'),
(19,	1,	'MILL-22-7635',	431,	NULL,	6,	'2023-08-30',	'2023-08-30 14:00:00',	'2023-08-30 16:00:00',	6.00,	30.00,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'hfhfhch',	1,	NULL,	NULL,	'invoices/invoice-MILL-22-7635.pdf',	'millvale/waiver/agreement/TUlMTC0yMi03NjM1',	NULL,	NULL,	NULL,	NULL,	1,	1,	'152.58.185.167',	NULL,	NULL,	NULL,	'',	'2023-08-19 06:50:37',	'2023-08-19 06:50:38'),
(20,	1,	'MILL-86-9016',	432,	NULL,	7,	'2023-08-23',	'2023-08-23 12:00:00',	'2023-08-23 14:00:00',	6.00,	30.00,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'xvsdvs',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-86-9016.pdf',	'millvale/waiver/agreement/TUlMTC04Ni05MDE2',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-19 08:05:03',	'2023-08-19 08:05:04'),
(21,	1,	'MILL-43-5222',	433,	NULL,	4,	'2023-08-21',	'2023-08-21 10:00:00',	'2023-08-21 12:00:00',	11.00,	30.00,	2.00,	50.00,	'full',	NULL,	121.00,	121.00,	'dvdsvbdxb',	1,	4,	NULL,	'invoices/invoice-MILL-43-5222.pdf',	'millvale/waiver/agreement/TUlMTC00My01MjIy',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-19 08:27:37',	'2023-08-19 08:27:38'),
(22,	1,	'MILL-42-3687',	434,	NULL,	5,	'2023-08-24',	'2023-08-24 16:00:00',	'2023-08-24 18:00:00',	6.00,	30.00,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'vbcxvbcx vb',	1,	4,	NULL,	'invoices/invoice-MILL-42-3687.pdf',	'millvale/waiver/agreement/TUlMTC00Mi0zNjg3',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-19 09:34:13',	'2023-08-19 09:34:14'),
(23,	1,	'MILL-72-3390',	435,	NULL,	2,	'2023-08-24',	'2023-08-24 10:00:00',	'2023-08-24 12:00:00',	6.00,	30.00,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'gdhvc',	1,	4,	NULL,	'invoices/invoice-MILL-72-3390.pdf',	'millvale/waiver/agreement/TUlMTC03Mi0zMzkw',	NULL,	NULL,	NULL,	NULL,	1,	1,	'47.9.112.222',	NULL,	NULL,	NULL,	'',	'2023-08-19 09:40:42',	'2023-08-19 09:40:43'),
(24,	1,	'MILL-22-3884',	436,	NULL,	2,	'2023-08-30',	'2023-08-30 14:00:00',	'2023-08-30 16:00:00',	6.00,	30.00,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'bhhhf',	1,	4,	NULL,	'invoices/invoice-MILL-22-3884.pdf',	'millvale/waiver/agreement/TUlMTC0yMi0zODg0',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-19 09:48:54',	'2023-08-19 09:48:55'),
(25,	1,	'MILL-90-5105',	437,	NULL,	3,	'2023-08-22',	'2023-08-22 10:00:00',	'2023-08-22 12:00:00',	6.00,	30.00,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'bxnxnnx',	1,	4,	NULL,	'invoices/invoice-MILL-90-5105.pdf',	'millvale/waiver/agreement/TUlMTC05MC01MTA1',	NULL,	NULL,	NULL,	NULL,	1,	1,	'47.9.112.222',	NULL,	NULL,	NULL,	'',	'2023-08-19 10:26:39',	'2023-08-19 10:26:40'),
(26,	1,	'MILL-60-4288',	438,	NULL,	5,	'2023-08-21',	'2023-08-21 12:00:00',	'2023-08-21 14:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'sadadasd',	1,	4,	NULL,	'invoices/invoice-MILL-60-4288.pdf',	'millvale/waiver/agreement/TUlMTC02MC00Mjg4',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 05:14:49',	'2023-08-21 05:14:51'),
(27,	1,	'MILL-30-8021',	439,	NULL,	7,	'2023-08-22',	'2023-08-22 10:00:00',	'2023-08-22 12:45:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'dsfsdf',	1,	4,	NULL,	'invoices/invoice-MILL-30-8021.pdf',	'millvale/waiver/agreement/TUlMTC0zMC04MDIx',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 06:40:47',	'2023-08-22 06:10:31'),
(34,	1,	'MILL-64-4820',	440,	NULL,	8,	'2023-09-01',	'2023-09-01 10:00:00',	'2023-09-01 12:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'hgfhfg',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-64-4820.pdf',	'millvale/waiver/agreement/TUlMTC02NC00ODIw',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 07:28:05',	'2023-08-21 07:28:06'),
(35,	1,	'MILL-22-4814',	441,	NULL,	9,	'2023-04-21',	'2023-04-21 10:00:00',	'2023-04-21 12:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'gdfgdfg',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-22-4814.pdf',	'millvale/waiver/agreement/TUlMTC0yMi00ODE0',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 08:19:15',	'2023-08-21 08:19:16'),
(36,	1,	'MILL-78-9591',	442,	NULL,	5,	'2023-04-21',	'2023-04-21 10:00:00',	'2023-04-21 12:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	NULL,	NULL,	NULL,	NULL,	'invoices/invoice-MILL-78-9591.pdf',	'millvale/waiver/agreement/TUlMTC03OC05NTkx',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 08:25:34',	'2023-08-21 08:25:35'),
(37,	1,	'MILL-62-2064',	450,	NULL,	9,	'2023-05-21',	'2023-05-21 16:00:00',	'2023-05-21 18:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	NULL,	NULL,	NULL,	NULL,	'invoices/invoice-MILL-62-2064.pdf',	'millvale/waiver/agreement/TUlMTC02Mi0yMDY0',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 10:05:23',	'2023-08-21 10:05:25'),
(38,	1,	'MILL-11-7143',	454,	NULL,	8,	'2023-06-21',	'2023-06-21 10:00:00',	'2023-06-21 12:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	NULL,	NULL,	NULL,	NULL,	'invoices/invoice-MILL-11-7143.pdf',	'millvale/waiver/agreement/TUlMTC0xMS03MTQz',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 11:54:23',	'2023-08-21 11:54:24'),
(39,	1,	'MILL-59-2049',	456,	NULL,	9,	'2023-06-21',	'2023-06-21 14:00:00',	'2023-06-21 16:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	NULL,	NULL,	NULL,	NULL,	'invoices/invoice-MILL-59-2049.pdf',	'millvale/waiver/agreement/TUlMTC01OS0yMDQ5',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 12:19:33',	'2023-08-21 12:19:34'),
(40,	1,	'MILL-16-1300',	457,	NULL,	9,	'2023-07-21',	'2023-07-21 14:00:00',	'2023-07-21 16:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	NULL,	NULL,	NULL,	NULL,	'invoices/invoice-MILL-16-1300.pdf',	'millvale/waiver/agreement/TUlMTC0xNi0xMzAw',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-21 13:01:45',	'2023-08-21 13:01:47'),
(41,	1,	'MILL-92-2483',	459,	NULL,	4,	'2023-07-21',	'2023-07-21 12:00:00',	'2023-07-21 14:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	NULL,	NULL,	NULL,	NULL,	'invoices/invoice-MILL-92-2483.pdf',	'millvale/waiver/agreement/TUlMTC05Mi0yNDgz',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	NULL,	NULL,	NULL,	'',	'2023-08-21 13:32:57',	'2023-08-21 13:32:58'),
(42,	1,	'MILL-28-6335',	460,	NULL,	5,	'2023-08-31',	'2023-08-31 12:00:00',	'2023-08-31 14:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'dfsdfsdfdff',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-28-6335.pdf',	'millvale/waiver/agreement/TUlMTC0yOC02MzM1',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-21 13:39:40',	'2023-08-21 13:39:42'),
(43,	1,	'MILL-27-1931',	432,	NULL,	5,	'2023-09-01',	'2023-09-01 12:00:00',	'2023-09-01 14:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'sdfsdfsdf',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-27-1931.pdf',	'millvale/waiver/agreement/TUlMTC0yNy0xOTMx',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-21 15:21:00',	'2023-08-21 15:21:01'),
(44,	1,	'MILL-47-3766',	450,	NULL,	4,	'2023-09-07',	'2023-09-07 12:00:00',	'2023-09-07 14:00:00',	17.50,	NULL,	2.00,	115.00,	'full',	NULL,	192.50,	192.50,	'sdvsdv',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-47-3766.pdf',	'millvale/waiver/agreement/TUlMTC00Ny0zNzY2',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-22 13:22:07',	'2023-08-22 13:22:08'),
(45,	1,	'MILL-57-2116',	464,	NULL,	3,	'2023-08-25',	'2023-08-25 12:00:00',	'2023-08-25 14:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'sdgvsdgvsdgv',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-57-2116.pdf',	'millvale/waiver/agreement/TUlMTC01Ny0yMTE2',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-22 13:41:17',	'2023-08-22 13:41:18'),
(46,	1,	'MILL-24-6559',	465,	NULL,	1,	'2023-09-07',	'2023-09-07 14:00:00',	'2023-09-07 16:00:00',	6.00,	NULL,	0.00,	0.00,	'full',	NULL,	66.00,	66.00,	'vcxvcv',	NULL,	NULL,	NULL,	'invoices/invoice-MILL-24-6559.pdf',	'millvale/waiver/agreement/TUlMTC0yNC02NTU5',	NULL,	NULL,	NULL,	NULL,	1,	1,	'103.89.61.50',	'Lucknow',	'UP',	'IN',	'',	'2023-08-22 13:48:03',	'2023-08-22 13:48:04');

DROP TABLE IF EXISTS `booking_bookable`;
CREATE TABLE `booking_bookable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `bookable_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_override` tinyint(4) DEFAULT NULL,
  `override_price` decimal(10,2) DEFAULT NULL,
  `is_discount` tinyint(4) DEFAULT NULL,
  `discount_percent` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `booking_bookable` (`id`, `booking_id`, `bookable_id`, `price`, `is_override`, `override_price`, `is_discount`, `discount_percent`) VALUES
(5,	5,	1,	35.00,	0,	NULL,	0,	NULL),
(6,	6,	6,	55.00,	0,	NULL,	0,	NULL),
(9,	9,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(13,	13,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(14,	14,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(15,	17,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(16,	19,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(17,	20,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(18,	21,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(19,	22,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(20,	23,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(21,	24,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(22,	25,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(23,	26,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(24,	27,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(25,	34,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(26,	35,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(27,	36,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(28,	37,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(29,	38,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(30,	39,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(31,	40,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(32,	41,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(33,	42,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(34,	43,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(35,	44,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(36,	45,	1,	35.00,	NULL,	NULL,	NULL,	NULL),
(37,	46,	1,	35.00,	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `booking_employee`;
CREATE TABLE `booking_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `assigned_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `booking_employee` (`id`, `booking_id`, `employee_id`, `assigned_date`) VALUES
(1,	5,	228,	NULL),
(2,	6,	240,	NULL);

DROP TABLE IF EXISTS `booking_lane`;
CREATE TABLE `booking_lane` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `lane_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `booking_lane` (`id`, `booking_id`, `lane_id`) VALUES
(5,	5,	7),
(6,	6,	7),
(9,	9,	7),
(13,	13,	7),
(14,	14,	7),
(15,	17,	7),
(16,	19,	7),
(17,	20,	7),
(18,	21,	7),
(19,	22,	7),
(20,	23,	7),
(21,	24,	7),
(22,	25,	7),
(23,	26,	7),
(25,	34,	7),
(26,	35,	7),
(27,	36,	7),
(28,	37,	7),
(29,	38,	7),
(30,	39,	7),
(31,	40,	7),
(32,	41,	7),
(33,	42,	7),
(34,	43,	7),
(35,	27,	9),
(36,	44,	7),
(37,	45,	7),
(38,	46,	7);

DROP TABLE IF EXISTS `booking_participant`;
CREATE TABLE `booking_participant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `participant_id` bigint(20) DEFAULT NULL,
  `type` enum('participants','spectators') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `booking_source`;
CREATE TABLE `booking_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_medium` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `utm_id` varchar(255) DEFAULT NULL,
  `utm_term` varchar(255) DEFAULT NULL,
  `utm_content` varchar(255) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `name` longtext,
  `color` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `categories` (`id`, `location_id`, `author_id`, `name`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19,	1,	1,	'Beaverage',	NULL,	NULL,	NULL,	NULL),
(18,	1,	1,	'Food',	NULL,	NULL,	NULL,	NULL),
(17,	1,	1,	'Clothes',	NULL,	NULL,	NULL,	NULL),
(20,	1,	1,	'testing',	'#800080',	NULL,	'2023-06-10 09:11:43',	'2023-06-10 09:11:43'),
(21,	1,	1,	'ghgfhf',	'#ff0080',	NULL,	'2023-06-12 11:09:50',	'2023-06-12 11:09:50'),
(15,	1,	1,	'cag6',	'#1b9424',	NULL,	'2023-04-25 11:37:34',	'2023-04-25 11:37:34'),
(14,	1,	1,	'cat5',	'#f2f542',	NULL,	'2023-04-25 11:34:49',	'2023-04-25 11:34:49'),
(13,	1,	1,	'cat4 W',	'#db3333',	NULL,	'2023-04-25 11:31:37',	'2023-04-25 11:31:37'),
(10,	1,	1,	'cat1',	'#ffc82c',	NULL,	'2023-04-25 11:12:21',	'2023-04-25 11:12:21'),
(11,	1,	1,	'cat2',	'#ff9529',	NULL,	'2023-04-25 11:13:52',	'2023-04-25 11:13:52'),
(12,	1,	1,	'cat3',	'#27fff2',	NULL,	'2023-04-25 11:14:57',	'2023-04-25 11:14:57');

DROP TABLE IF EXISTS `clocked_in_clocked_outs`;
CREATE TABLE `clocked_in_clocked_outs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `location_id` bigint(20) unsigned DEFAULT NULL,
  `clocked_in` datetime DEFAULT NULL,
  `clocked_out` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clocked_in_clocked_outs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `clocked_in_clocked_outs` (`id`, `user_id`, `location_id`, `clocked_in`, `clocked_out`) VALUES
(1,	1,	NULL,	'2023-07-14 16:10:02',	NULL),
(2,	1,	NULL,	'2023-07-18 10:20:21',	'2023-07-18 02:39:48'),
(3,	22,	1,	'2023-07-18 17:31:44',	NULL),
(4,	240,	1,	'2023-07-19 21:09:01',	NULL),
(5,	7,	NULL,	'2023-07-22 15:18:37',	NULL),
(6,	1,	NULL,	'2023-07-25 10:41:36',	NULL),
(7,	1,	NULL,	'2023-08-01 16:48:13',	'2023-08-01 16:48:15'),
(8,	1,	NULL,	'2023-08-04 11:11:53',	NULL),
(9,	1,	NULL,	'2023-08-07 20:39:34',	NULL),
(10,	1,	NULL,	'2023-08-17 11:04:10',	'2023-08-17 11:49:21'),
(11,	1,	NULL,	'2023-08-17 11:49:42',	NULL),
(12,	1,	NULL,	'2023-08-18 11:03:50',	NULL),
(13,	1,	NULL,	'2023-08-21 13:01:58',	NULL);

DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) DEFAULT NULL,
  `company_first_name` varchar(100) DEFAULT NULL,
  `company_color` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `companies` (`id`, `company_name`, `company_first_name`, `company_color`, `created_at`) VALUES
(2,	'Lumberjaxes Axe Throwing',	'Lumberjaxes',	'#f4cf6e',	'2023-06-20 07:42:14');

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE `customer_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` longtext,
  `dob` date DEFAULT NULL,
  `address` text,
  `zipcode` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customer_details` (`id`, `user_id`, `first_name`, `last_name`, `phone`, `image`, `dob`, `address`, `zipcode`, `created_at`, `updated_at`) VALUES
(7,	88,	'trey',	'loging',	'8653477772',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-02-08 18:45:44',	'2023-02-08 18:45:44'),
(74,	165,	'Tester',	'Tester',	'(342) 342-3423',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-05-20 05:35:20',	'2023-05-20 05:35:20'),
(84,	378,	'John',	'Doe',	'(555) 555-555',	NULL,	'2001-02-01',	NULL,	NULL,	'2023-06-06 06:17:57',	'2023-06-06 06:17:57'),
(94,	210,	'maggie',	'jones',	'(865) 321-1376',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-06-08 17:49:46',	'2023-06-08 17:49:46'),
(95,	211,	'alex',	'jones',	'(865) 347-7772',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-06-08 17:49:46',	'2023-06-08 17:49:46'),
(96,	212,	'trey',	'loging',	'(865) 347-7772',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-06-08 17:49:46',	'2023-06-08 17:49:46'),
(126,	58,	'trey',	'loging',	'(865) 321-1376',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-06-16 18:58:49',	'2023-06-16 18:58:49'),
(214,	332,	'Ben',	'Karpinski',	'(412) 953-6461',	NULL,	'1998-02-01',	NULL,	'15202',	'2023-07-13 18:02:43',	'2023-07-14 22:03:44'),
(215,	58,	'trey',	'loging',	'(865) 321-1376',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-07-14 19:51:05',	'2023-07-14 19:51:05'),
(216,	333,	'Morgan',	'Karpinski',	'(412) 953-6461',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-07-14 22:28:54',	'2023-07-14 22:28:54'),
(217,	190,	'Ben',	'Karpinski',	'(451) 515-1151',	NULL,	'1998-02-01',	NULL,	'15120',	'2023-07-18 20:24:02',	'2023-07-19 17:12:00'),
(218,	334,	'Jason',	'Bourne',	'(235) 345-3453',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-07-24 09:15:05',	'2023-07-25 05:23:05'),
(219,	335,	'user1',	'knoxweb',	'(121) 212-1212',	NULL,	'1998-02-01',	NULL,	NULL,	'2023-07-24 09:16:27',	'2023-07-24 09:16:27'),
(220,	336,	'jimy',	'knoxweb',	'(121) 212-2121',	NULL,	'1998-02-01',	NULL,	'1212121212',	'2023-07-25 06:42:53',	'2023-07-25 07:30:18'),
(260,	379,	'gfgdfg',	'dfgdfg',	'(234) 234-2342',	NULL,	'2002-02-01',	NULL,	NULL,	'2023-08-08 06:54:35',	'2023-08-08 06:54:35'),
(261,	380,	'peter',	'poxe',	'(524) 587-4558',	NULL,	'2005-02-01',	NULL,	NULL,	'2023-08-08 06:55:10',	'2023-08-08 06:55:10'),
(262,	381,	'Aviva',	'Ari',	'(568) 954-2255',	NULL,	'2007-02-01',	NULL,	NULL,	'2023-08-08 07:39:00',	'2023-08-08 07:39:00'),
(263,	383,	'Curtex',	'Perfect',	'(584) 625-4298',	NULL,	'2016-02-01',	NULL,	NULL,	'2023-08-09 06:10:40',	'2023-08-09 06:10:40'),
(278,	407,	'Tester',	'Jack',	'(534) 534-5345',	NULL,	'2011-08-04',	NULL,	NULL,	'2023-08-10 12:09:28',	'2023-08-10 12:09:28'),
(279,	360,	'dsfdsf',	'dcvsdv',	'(234) 523-5234',	NULL,	'2011-08-04',	NULL,	NULL,	'2023-08-10 12:11:45',	'2023-08-10 12:11:45'),
(280,	408,	'xcxzvcxv',	'xcvcxvb',	'(234) 234-2342',	NULL,	'2011-08-03',	NULL,	NULL,	'2023-08-10 12:13:27',	'2023-08-10 12:13:27'),
(281,	409,	'Axel',	'Axel',	'(784) 587-4552',	NULL,	NULL,	NULL,	NULL,	'2023-08-11 12:57:17',	'2023-08-11 12:57:17'),
(282,	410,	'Rikice',	'Rikice',	'(854) 785-4587',	NULL,	NULL,	NULL,	NULL,	'2023-08-12 06:56:34',	'2023-08-12 06:56:34'),
(283,	411,	'asd',	'asd',	'(784) 455-5588',	NULL,	NULL,	NULL,	NULL,	'2023-08-14 09:36:05',	'2023-08-14 09:36:05'),
(284,	416,	'John',	'cartor',	'(548) 712-3654',	NULL,	'2000-04-21',	NULL,	NULL,	'2023-08-16 05:21:43',	'2023-08-16 05:21:43'),
(285,	417,	'Sting',	'Crow',	'(857) 954-6215',	NULL,	'2000-04-21',	NULL,	NULL,	'2023-08-16 05:25:26',	'2023-08-16 05:25:26'),
(290,	422,	'sdfbvcxb',	'sfcbvxcb',	'(534) 534-5345',	NULL,	'2012-11-02',	NULL,	'34234',	'2023-08-16 15:10:44',	'2023-08-16 15:10:44'),
(291,	423,	'dgfsdgv',	'sdgvdfsg',	'(453) 453-4534',	NULL,	'2010-02-02',	NULL,	'33333',	'2023-08-16 15:23:26',	'2023-08-16 15:23:26'),
(293,	425,	'sdfgsdg',	'dvdssd',	'(345) 345-3453',	NULL,	'2010-09-03',	NULL,	'33333',	'2023-08-16 15:27:38',	'2023-08-16 15:27:38'),
(294,	369,	'sdvsdvsd',	'sdvdsfv',	'(534) 534-5345',	NULL,	NULL,	NULL,	NULL,	'2023-08-18 14:30:09',	'2023-08-18 14:30:09'),
(298,	369,	'sdfsdf',	'fsfsdf',	'(543) 534-5345',	NULL,	NULL,	NULL,	NULL,	'2023-08-18 14:51:29',	'2023-08-18 14:51:29'),
(299,	430,	'xvbfb',	'fbdfb',	'(534) 534-5345',	NULL,	NULL,	NULL,	NULL,	'2023-08-18 15:09:23',	'2023-08-18 15:09:23'),
(300,	369,	'gghg',	'ffhv',	'(465) 467-7756',	NULL,	NULL,	NULL,	NULL,	'2023-08-18 17:04:09',	'2023-08-18 17:04:09'),
(301,	431,	'ufjdhfhc',	'hdhchfhf',	'(646) 474-7585',	NULL,	NULL,	NULL,	NULL,	'2023-08-19 06:50:37',	'2023-08-19 06:50:37'),
(302,	432,	'fgsdv',	'sdvsdv',	'(324) 532-5345',	NULL,	NULL,	NULL,	NULL,	'2023-08-19 08:05:03',	'2023-08-19 08:05:03'),
(303,	433,	'asfsdfgsdgf',	'sdfsdgsdg',	'(345) 435-3453',	'media/customers/kJlDTUpkrfGB7BVR3sMS5yZOywaObtt3FfwgSxus.png',	NULL,	NULL,	NULL,	'2023-08-19 08:27:37',	'2023-08-21 13:11:39'),
(304,	434,	'dvfdszvds',	'dcvdczxv',	'(522) 435-4354',	NULL,	NULL,	NULL,	NULL,	'2023-08-19 09:34:13',	'2023-08-19 09:34:13'),
(305,	435,	'gjcvbb',	'vcfhbb',	'(646) 655-6777',	NULL,	NULL,	NULL,	NULL,	'2023-08-19 09:40:42',	'2023-08-19 09:40:42'),
(306,	436,	'hdhhv',	'fghhhb',	'(456) 456-6655',	NULL,	NULL,	NULL,	NULL,	'2023-08-19 09:48:54',	'2023-08-19 09:48:54'),
(307,	437,	'ghshshs',	'bbbzbsb',	'(546) 664-5667',	NULL,	NULL,	NULL,	NULL,	'2023-08-19 10:26:39',	'2023-08-19 10:26:39'),
(308,	438,	'gfhfgh',	'hgfhfg',	'(321) 321-3213',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 05:14:49',	'2023-08-21 05:14:49'),
(309,	439,	'dsfdsf',	'dsfsd',	'(332) 423-4423',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 06:40:47',	'2023-08-21 06:40:47'),
(310,	440,	'ytrytryrty',	'yrtyrty',	'(335) 435-4353',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 07:28:05',	'2023-08-21 07:28:05'),
(311,	441,	'fdgfdg',	'fgfdgdf',	'(434) 324-2342',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 08:19:15',	'2023-08-21 08:19:15'),
(312,	442,	'uytuyu',	'yuytu',	'(324) 636-4263',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 08:25:34',	'2023-08-21 08:25:34'),
(320,	450,	'dgdgfdg',	'gfdg',	'(123) 456-7834',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 10:05:24',	'2023-08-21 10:05:24'),
(323,	453,	'uiuioui',	'iuouiouio',	'(123) 456-7823',	NULL,	'2012-10-01',	NULL,	'12345678',	'2023-08-21 10:12:26',	'2023-08-21 10:12:26'),
(324,	454,	'dsadsad',	'dasadsa',	'(123) 456-7835',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 11:54:23',	'2023-08-21 11:54:23'),
(325,	455,	'xcvxcvx',	'vxcvxcv',	'(123) 456-7890',	NULL,	'2013-01-01',	NULL,	'21345',	'2023-08-21 12:06:22',	'2023-08-21 12:06:22'),
(326,	456,	'fdgfdg',	'fdgfd',	'(213) 456-7894',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 12:19:33',	'2023-08-21 12:19:33'),
(327,	457,	'gfhgf',	'gfhgfh',	'(123) 456-7890',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 13:01:46',	'2023-08-21 13:01:46'),
(328,	458,	'retretre',	'retre',	'(123) 456-7890',	NULL,	'2013-01-01',	NULL,	'12345678',	'2023-08-21 13:02:54',	'2023-08-21 13:02:54'),
(329,	459,	'asdfgj',	'adfg',	'(123) 456-7890',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 13:32:57',	'2023-08-21 13:32:57'),
(330,	460,	'adfsdf',	'sdfsdf',	'(432) 432-4234',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 13:39:41',	'2023-08-21 13:39:41'),
(331,	461,	'fdgfdgb',	'dfbdfb',	'(325) 423-4523',	NULL,	'2009-12-02',	NULL,	'35325',	'2023-08-21 13:42:26',	'2023-08-21 13:42:26'),
(332,	462,	'dsfsdfs',	'dsfsdf',	'(123) 456-7892',	NULL,	'2013-01-01',	NULL,	'21345678',	'2023-08-21 13:52:45',	'2023-08-21 13:52:45'),
(333,	432,	'dfsdgf',	'sdgsdgv',	'(345) 345-3453',	NULL,	NULL,	NULL,	NULL,	'2023-08-21 15:21:00',	'2023-08-21 15:21:00'),
(334,	463,	'fsdgsd',	'sdgsdf',	'(325) 443-2543',	NULL,	'2011-02-02',	NULL,	'5235345',	'2023-08-21 15:22:07',	'2023-08-21 15:22:07'),
(335,	450,	'fgdsgsd',	'dsfgsdfg',	'(534) 534-4353',	NULL,	NULL,	NULL,	NULL,	'2023-08-22 13:22:07',	'2023-08-22 13:22:07'),
(336,	464,	'dfgdfgdfg',	'dfgdfg',	'(345) 353-4534',	NULL,	NULL,	NULL,	NULL,	'2023-08-22 13:41:17',	'2023-08-22 13:41:17'),
(337,	465,	'cvczxvxcv',	'cxvxcvb',	'(534) 534-5345',	NULL,	NULL,	NULL,	NULL,	'2023-08-22 13:48:03',	'2023-08-22 13:48:03');

DROP TABLE IF EXISTS `customer_recents`;
CREATE TABLE `customer_recents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `image` longtext,
  `address` varchar(255) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `type` enum('full_time','part_time') DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `employee_details`;
CREATE TABLE `employee_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_role` bigint(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `image` longtext,
  `address` longtext,
  `position` varchar(100) DEFAULT NULL,
  `job_type` enum('part_time','full_time') DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `employee_details` (`id`, `user_id`, `user_role`, `phone`, `dob`, `image`, `address`, `position`, `job_type`, `status`, `created_at`, `updated_at`) VALUES
(2,	190,	3,	'(412) 953-6461',	'1997-09-23',	'media/employees/jZwQGjW9ZcZpSNdyZIrlRdKSkJvy3x0aGTUpy0lb.png',	'174 Playtime is Silly',	'Supreme Leader',	'part_time',	1,	'2023-05-24 21:14:50',	'2023-06-13 18:52:45'),
(3,	164,	NULL,	NULL,	NULL,	'media/employees/bcX1tpYBB7O13IYhrf0j7owRoWeUrOyCxfmtX7Vs.png',	NULL,	NULL,	NULL,	NULL,	'2023-06-05 13:35:19',	'2023-06-12 14:45:42'),
(4,	22,	NULL,	NULL,	NULL,	'media/employees/uAC1ItQmIDbCwQBq6Z4AwX1ek6UaELaiW6Jhcwhg.png',	NULL,	NULL,	NULL,	NULL,	'2023-06-07 14:33:04',	'2023-06-26 16:20:29'),
(5,	1,	1,	'(124) 345-6789',	'2001-12-04',	'media/employees/LtpmuyM7GZLi1XedILQbhCuEv6T6pQWOFu2WWBo5.jpg',	'vbnm,.liuhgbnmj',	'fweaf',	'full_time',	1,	'2023-06-07 16:06:53',	'2023-07-18 06:40:28'),
(6,	228,	3,	'(123) 456-7890',	'2000-02-16',	'media/employees/MAycp7hNrMoOhaHeMawsCHu81HZkChvL8sYUMy06.png',	'abc',	'staff',	'full_time',	1,	'2023-06-16 05:27:16',	'2023-06-16 05:27:16'),
(12,	240,	5,	'(090) 210-9278',	'1999-01-20',	'media/employees/bToQeLxODNW7MZVN85ng3Qb9TDCdbGcJcqU0abjf.jpg',	'Knoxvelli',	'Manager',	'full_time',	1,	'2023-06-20 05:35:29',	'2023-07-04 14:33:42'),
(35,	341,	4,	'(532) 523-4532',	'2005-08-01',	'media/employees/kfdnyKPdcobQe6U05oByF9gLqnlw5z4RlkzxNlPs.png',	'sdgsdb',	'dsfgfdb',	'full_time',	1,	'2023-08-07 05:17:52',	'2023-08-07 05:17:52'),
(36,	426,	4,	'(845) 957-2155',	'1998-01-01',	'media/employees/ER7PPNR6lMGdbT1Bcxex6RSDdee6hYxSTFiyR5fA.png',	'asdfasdfasdfsadfsadasd',	'Staff',	'full_time',	1,	'2023-08-18 12:49:03',	'2023-08-18 12:49:03'),
(37,	427,	4,	'Sit a doloremq',	'1973-04-06',	'media/employees/Bqircu9syVnS7jNckEa8Lw6dzGF6eBwN5ZfqkV9v.png',	'Anim minim quaerat a',	'Dicta cillum dolore',	'full_time',	1,	'2023-08-18 13:03:09',	'2023-08-18 13:03:09'),
(38,	428,	4,	'Harum qui dolo',	'2005-03-01',	'media/employees/lOpmmoRxvrvOYrJKXPnHSLTw1MvMpdDoIwP961c9.png',	'Dolor fuga Ex occae',	'Aut qui autem quia s',	'full_time',	0,	'2023-08-18 13:09:20',	'2023-08-18 13:37:51');

DROP TABLE IF EXISTS `employee_schedules`;
CREATE TABLE `employee_schedules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `employee_schedules` (`id`, `user_id`, `day`, `status`, `created_at`, `updated_at`) VALUES
(1,	190,	'tuesday',	1,	NULL,	NULL),
(2,	190,	'sunday',	1,	NULL,	NULL),
(3,	190,	'monday',	1,	NULL,	NULL),
(4,	190,	'wednesday',	1,	NULL,	NULL),
(5,	190,	'thursday',	1,	NULL,	NULL),
(6,	190,	'friday',	1,	NULL,	NULL),
(7,	190,	'saturday',	1,	NULL,	NULL),
(8,	228,	'saturday',	1,	NULL,	NULL),
(9,	228,	'friday',	1,	NULL,	NULL),
(10,	228,	'thursday',	1,	NULL,	NULL),
(11,	228,	'wednesday',	1,	NULL,	NULL),
(12,	228,	'tuesday',	0,	NULL,	NULL),
(13,	228,	'monday',	1,	NULL,	NULL),
(15,	240,	'sunday',	1,	NULL,	NULL),
(16,	240,	'monday',	0,	NULL,	NULL),
(17,	240,	'tuesday',	0,	NULL,	NULL),
(18,	240,	'wednesday',	1,	NULL,	NULL),
(19,	240,	'thursday',	1,	NULL,	NULL),
(20,	240,	'friday',	0,	NULL,	NULL),
(21,	240,	'saturday',	1,	NULL,	NULL),
(22,	228,	'sunday',	1,	NULL,	NULL),
(23,	428,	'monday',	1,	NULL,	NULL),
(24,	428,	'friday',	1,	NULL,	NULL);

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_of_guest` int(11) DEFAULT NULL,
  `event_type` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `requested_event_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `prefered_start_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `prefered_end_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `catering_bar` varchar(255) DEFAULT NULL,
  `question_concern` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `special_events` varchar(255) DEFAULT NULL,
  `here_about_us` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `events` (`id`, `number_of_guest`, `event_type`, `company_name`, `requested_event_date`, `location_id`, `prefered_start_time`, `prefered_end_time`, `first_name`, `last_name`, `email`, `phone`, `catering_bar`, `question_concern`, `created_at`, `updated_at`, `special_events`, `here_about_us`) VALUES
(3,	7,	2,	'xyz',	'2023-08-18',	1,	'2023-08-17 12:00:00',	'2023-08-17 04:00:00',	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'yes',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	'2023-08-17 10:19:49',	'2023-08-17 10:19:49',	NULL,	NULL),
(4,	7,	2,	'xyz',	'2023-08-18',	1,	'2023-08-17 02:00:00',	'2023-08-17 04:00:00',	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'yes',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	'2023-08-17 10:38:08',	'2023-08-17 10:38:08',	NULL,	NULL),
(6,	7,	2,	'xyz',	'2023-08-18',	1,	'2023-08-18 03:00:00',	'2023-08-18 04:00:00',	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'yes',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	'2023-08-17 11:48:25',	'2023-08-17 11:48:25',	NULL,	NULL),
(7,	7,	2,	'xyz',	'2023-08-18',	1,	'2023-08-19 03:00:00',	'2023-08-19 04:00:00',	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'yes',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	'2023-08-17 12:30:38',	'2023-08-17 12:30:38',	'asdfsfsaddf',	'asdfasdfs'),
(8,	34,	NULL,	'xcvxcbv',	'2023-08-17',	1,	NULL,	NULL,	'sdvsdfbv',	'cfbfdxbfdxcbd',	'xcbxcb@gmail.com',	'(453) 453-4534',	NULL,	'xcvxcbv xc',	'2023-08-17 12:54:56',	'2023-08-17 12:54:56',	NULL,	NULL),
(9,	45,	NULL,	'bcxbxcb',	'2023-08-17',	1,	NULL,	NULL,	'RGSDFG',	'SDFGVDFSGB',	'FCBVXCB@gmail.com',	'(324) 235-2352',	NULL,	'xcbvcxbv',	'2023-08-17 13:07:25',	'2023-08-17 13:07:25',	NULL,	NULL),
(10,	7,	2,	'xyz',	'2023-08-18',	1,	'2023-08-19 03:00:00',	'2023-08-19 04:00:00',	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'yes',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	'2023-08-17 13:09:32',	'2023-08-17 13:09:32',	'asdfsfsaddf',	'asdfasdfs'),
(11,	7,	2,	'xyz',	'2023-08-18',	1,	'2023-08-19 03:00:00',	'2023-08-19 04:00:00',	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'yes',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	'2023-08-17 13:12:17',	'2023-08-17 13:12:17',	'asdfsfsaddf',	'asdfasdfs'),
(12,	3,	NULL,	'32423',	'2023-08-17',	1,	NULL,	NULL,	'fgdfdgfd',	'gfdgfdfd',	'gfgfdgfd@gmail.com',	'(867) 836-4326',	NULL,	NULL,	'2023-08-17 13:30:27',	'2023-08-17 13:30:27',	NULL,	NULL),
(13,	231,	NULL,	'dsfsdfsd',	'2023-08-17',	1,	NULL,	NULL,	'dsfsdfsdf',	'fsdfsdf',	'dsfsdfsd@gmail.com',	'(773) 874-8723',	NULL,	NULL,	'2023-08-17 13:31:54',	'2023-08-17 13:31:54',	NULL,	NULL),
(14,	34,	NULL,	'refsdf',	'2023-08-17',	1,	NULL,	NULL,	'sadsad',	'dsadsad',	'sadsad@gmail.com',	'(872) 642-7384',	NULL,	NULL,	'2023-08-17 13:33:17',	'2023-08-17 13:33:17',	NULL,	NULL),
(15,	23,	1,	'sdfgdfgdfg',	'2023-08-17',	1,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'cxbdcbd',	'dvbdvb',	'fbdfvbfdfvf@gmail.com',	'32432434',	'no',	'dfbvdxcb',	'2023-08-17 13:33:42',	'2023-08-17 13:33:42',	NULL,	NULL),
(16,	12,	1,	'asa',	'2023-08-17',	1,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'qq',	'qq',	'qq@gmail.com',	'12121212',	'yes',	'dsdssds',	'2023-08-17 13:39:32',	'2023-08-17 13:39:32',	NULL,	NULL),
(17,	23,	1,	'adfs',	'2023-08-18',	1,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'vxbvxfb',	'cbcgvbn',	'fbcvb@gmail.com',	'3245435345',	'yes',	'xcbvxbsdfx',	'2023-08-17 14:25:24',	'2023-08-17 14:25:24',	NULL,	NULL),
(18,	10,	1,	'klm',	'2023-08-18',	1,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'user',	'df',	'user1@knoxweb.com',	'(121) 213-1341',	'yes',	'dadadad',	'2023-08-18 12:46:34',	'2023-08-18 12:46:34',	NULL,	NULL),
(19,	14,	1,	'1wda',	'2023-08-18',	1,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'scfs',	'wd',	'dedfsf@gmail.com',	'(113) 122-4242',	'yes',	'sfsfsf',	'2023-08-18 13:07:11',	'2023-08-18 13:07:11',	NULL,	NULL),
(20,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'ghgfhfgh',	'fghfgh',	'gfhfgfghfg@gmail.com',	'877678677',	'yes',	'sadsadsada',	'2023-08-18 13:14:27',	'2023-08-18 13:14:27',	NULL,	NULL);

DROP TABLE IF EXISTS `event_types`;
CREATE TABLE `event_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `event_types` (`id`, `event_type`, `created_at`, `updated_at`) VALUES
(1,	'Company Event',	'2023-08-17 08:27:46',	'2023-08-17 08:27:46'),
(2,	'Social Gathering',	'2023-08-17 08:28:10',	'2023-08-17 08:28:10'),
(3,	'Youth Event',	'2023-08-17 08:28:26',	'2023-08-17 08:28:26'),
(4,	'Tournament or Fundraiser',	'2023-08-17 08:29:33',	'2023-08-17 08:29:33'),
(7,	'new event',	'2023-08-17 12:38:01',	'2023-08-17 12:38:01');

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE `experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `size` enum('large','mini') DEFAULT NULL,
  `type` enum('axe_throwing','ice_curling','shuffleboard') DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `experiences` (`id`, `location_id`, `name`, `is_master`, `size`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1,	NULL,	'Large Axe Throwing',	1,	'large',	'axe_throwing',	1,	'2023-07-18 13:59:56',	'2023-07-18 13:59:56'),
(2,	NULL,	'Mini Axe Throwing',	1,	'mini',	'axe_throwing',	1,	'2023-07-18 14:00:43',	'2023-07-18 14:00:43'),
(3,	NULL,	'Large Ice Curling',	1,	'large',	'ice_curling',	1,	'2023-07-18 14:01:19',	'2023-07-18 14:01:19'),
(4,	NULL,	'Mini Ice Curling',	1,	'mini',	'ice_curling',	1,	'2023-07-18 14:01:43',	'2023-07-18 14:01:43'),
(5,	NULL,	'Large Shuffleboard',	1,	'large',	'shuffleboard',	1,	'2023-07-18 14:02:47',	'2023-07-18 14:02:47'),
(6,	NULL,	'Mini Shuffleboard',	1,	'mini',	'shuffleboard',	1,	'2023-07-18 14:03:15',	'2023-07-18 14:03:15'),
(9,	1,	'rg',	0,	NULL,	NULL,	1,	'2023-08-07 15:38:07',	'2023-08-07 15:38:07');

DROP TABLE IF EXISTS `experience_game_location`;
CREATE TABLE `experience_game_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experience_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `experience_game_location` (`id`, `experience_id`, `game_id`, `location_id`, `status`) VALUES
(1,	1,	1,	1,	1),
(2,	1,	2,	1,	1),
(3,	1,	3,	1,	1),
(4,	2,	4,	1,	1),
(5,	2,	5,	1,	0),
(6,	2,	6,	1,	1),
(7,	2,	7,	1,	1),
(8,	2,	8,	1,	1),
(9,	2,	9,	1,	1),
(10,	3,	10,	1,	1),
(11,	3,	11,	1,	1),
(12,	4,	12,	1,	1),
(13,	4,	13,	1,	1),
(14,	5,	14,	1,	1),
(15,	5,	15,	1,	1),
(16,	6,	16,	1,	1),
(17,	6,	17,	1,	0),
(18,	7,	5,	1,	1),
(19,	7,	3,	1,	1),
(71,	8,	1,	1,	1),
(72,	8,	2,	1,	1),
(73,	9,	1,	1,	1),
(74,	9,	2,	1,	1),
(75,	9,	3,	1,	1),
(76,	9,	4,	1,	1);

DROP TABLE IF EXISTS `experience_lane`;
CREATE TABLE `experience_lane` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lane_id` bigint(20) DEFAULT NULL,
  `experience_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `experience_lane` (`id`, `lane_id`, `experience_id`) VALUES
(1,	1,	8),
(2,	2,	8),
(3,	3,	8),
(18,	7,	2),
(21,	9,	3),
(22,	9,	6);

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suggestion` longtext,
  `contacted` tinyint(4) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experience_id` int(11) DEFAULT NULL,
  `name` text,
  `exculde_game_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `games` (`id`, `experience_id`, `name`, `exculde_game_id`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	'Tournament',	NULL,	0,	'2023-07-18 14:02:38',	NULL),
(2,	1,	'Axe N\' relax',	NULL,	0,	'2023-07-18 14:02:50',	NULL),
(3,	1,	'Mini games',	6,	0,	'2023-07-18 14:03:17',	NULL),
(4,	2,	'Axe N\' relax',	NULL,	0,	'2023-07-18 14:01:23',	NULL),
(5,	2,	'First to 21',	NULL,	0,	'2023-07-18 14:00:47',	NULL),
(6,	2,	'Axe match',	NULL,	0,	'2023-07-18 14:01:03',	NULL),
(7,	2,	'Axe cricket',	NULL,	0,	'2023-07-18 14:01:16',	NULL),
(8,	2,	'Around the world',	NULL,	0,	'2023-07-18 14:01:45',	NULL),
(9,	2,	'Turbo tournament',	NULL,	0,	'2023-07-18 14:01:58',	NULL),
(10,	3,	'Crossfire',	NULL,	0,	'2023-07-18 14:05:09',	NULL),
(11,	3,	'Curling frenzy',	NULL,	0,	'2023-07-18 14:05:09',	NULL),
(12,	4,	'Curling match',	NULL,	0,	'2023-07-18 14:04:17',	NULL),
(13,	4,	'Icy cricket',	NULL,	0,	'2023-07-18 14:04:33',	NULL),
(14,	5,	'Crossfire',	NULL,	0,	'2023-07-18 14:05:22',	NULL),
(15,	5,	'Stacker',	NULL,	0,	'2023-07-18 14:05:22',	NULL),
(16,	6,	'Classic shuffle',	NULL,	0,	'2023-07-18 14:05:51',	NULL),
(17,	6,	'Slide cricket',	NULL,	0,	'2023-07-18 14:05:51',	NULL);

DROP TABLE IF EXISTS `game_rules`;
CREATE TABLE `game_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `game_id` bigint(20) DEFAULT NULL,
  `experience_id` bigint(20) DEFAULT NULL,
  `rules` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `game_rules` (`id`, `location_id`, `game_id`, `experience_id`, `rules`, `created_at`, `updated_at`) VALUES
(2,	1,	1,	1,	'ergergerg',	'2023-07-24 13:52:59',	'2023-07-24 13:52:59'),
(3,	1,	11,	1,	'There’s no magic system or formula for writing good rules for your games. Each game has its own quirks, its own vocabulary, its own gameplay.  However, I’ve found that there is a general pattern to how you can think about rules. I’ll call it my recipe.\r\n\r\n',	'2023-07-24 14:55:58',	'2023-07-24 14:55:58');

DROP TABLE IF EXISTS `gift_cards`;
CREATE TABLE `gift_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `to_emails` text,
  `message` text,
  `source_id` varchar(255) DEFAULT NULL,
  `gift_card_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `code` text,
  `last_used` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `issued_by` int(11) DEFAULT NULL,
  `gan_code` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `gift_cards` (`id`, `amount`, `quantity`, `delivery_date`, `to_emails`, `message`, `source_id`, `gift_card_id`, `created_at`, `updated_at`, `name`, `code`, `last_used`, `expiry_date`, `issued_by`, `gan_code`) VALUES
(87,	10,	1,	'2023-08-23',	'rickLoq@gmail.com, wills@gmail.com',	'hello',	NULL,	'GIFT-699279252',	'2023-08-22 13:03:43',	'2023-08-22 13:03:43',	'Ric Wills',	'G710520-607-611051',	'2023-08-22',	'2023-08-27',	NULL,	'G710520607611051'),
(88,	19,	1,	'2023-08-23',	'rickLoq@gmail.com, wills@gmail.com',	'hello',	NULL,	'GIFT-417169631',	'2023-08-22 13:07:11',	'2023-08-22 13:07:11',	'Ric Wills',	'G326635-915-606930',	NULL,	'2023-08-28',	NULL,	'G326635915606930'),
(89,	19,	1,	'2023-08-17',	'rickLoq@gmail.com, wills@gmail.com',	'hello',	NULL,	'GIFT-937552578',	'2023-08-22 13:11:12',	'2023-08-22 13:11:12',	'Ric Wills',	'G236690-717-350380',	'2023-08-22',	'2023-08-21',	NULL,	'G236690717350380'),
(90,	25,	1,	'2023-08-23',	'asdf',	'qwer',	NULL,	'GIFT-839090540',	'2023-08-23 06:17:52',	'2023-08-23 06:17:52',	'asdf',	'G589674-249-735308',	'2023-08-23',	'2023-08-28',	NULL,	'G589674249735308'),
(91,	25,	1,	'2023-08-24',	'asdf',	'adffasd',	NULL,	'GIFT-467885171',	'2023-08-23 06:20:47',	'2023-08-23 06:20:47',	'asdff',	'G878128-823-937678',	NULL,	'2023-08-29',	NULL,	'G878128823937678');

DROP TABLE IF EXISTS `lanes`;
CREATE TABLE `lanes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `name` text,
  `size` int(11) DEFAULT '12',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `lanes` (`id`, `location_id`, `name`, `size`, `status`, `created_at`, `updated_at`) VALUES
(9,	1,	'lane 2',	12,	1,	'2023-08-07 16:47:39',	'2023-08-10 14:20:18'),
(7,	1,	'Lane 1',	10,	1,	'2023-08-04 15:31:51',	'2023-08-11 13:56:57');

DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL COMMENT 'General Settings',
  `location_name` longtext COMMENT 'General Settings',
  `address` longtext COMMENT 'General Settings',
  `location_number` varchar(20) DEFAULT NULL,
  `slug` longtext,
  `company_color` varchar(50) DEFAULT NULL COMMENT 'General Settings',
  `timezone` varchar(100) DEFAULT NULL,
  `location_short_code` varchar(100) DEFAULT NULL COMMENT 'General Settings',
  `llc` varchar(100) DEFAULT NULL COMMENT 'General Settings',
  `logo_url` longtext COMMENT 'Logo',
  `google` text COMMENT 'Feedback Settings',
  `facebook` text COMMENT 'Feedback Settings',
  `yelp` text COMMENT 'Feedback Settings',
  `tripadvisor` text COMMENT 'Feedback Settings',
  `sq_footage_axe` varchar(15) DEFAULT NULL COMMENT 'Square Footage Settings',
  `sq_footage_curling` varchar(15) DEFAULT NULL COMMENT 'Square Footage Settings',
  `sq_footage_bar` varchar(15) DEFAULT NULL COMMENT 'Square Footage Settings',
  `sq_footage_shuffle` varchar(15) DEFAULT NULL COMMENT 'Square Footage Settings',
  `sq_footage_total` varchar(15) DEFAULT NULL COMMENT 'Square Footage Settings',
  `faq_link` text COMMENT 'FAQ Link',
  `max_group_size` varchar(10) DEFAULT NULL,
  `booking_term_and_condition` longtext COMMENT 'Invoice Settings',
  `cancellation_policy` longtext COMMENT 'Invoice Settings',
  `management_discretions` longtext COMMENT 'Invoice Settings',
  `waiver_text` longtext COMMENT 'General Settings',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `locations` (`id`, `company_id`, `user_id`, `company_name`, `location_name`, `address`, `location_number`, `slug`, `company_color`, `timezone`, `location_short_code`, `llc`, `logo_url`, `google`, `facebook`, `yelp`, `tripadvisor`, `sq_footage_axe`, `sq_footage_curling`, `sq_footage_bar`, `sq_footage_shuffle`, `sq_footage_total`, `faq_link`, `max_group_size`, `booking_term_and_condition`, `cancellation_policy`, `management_discretions`, `waiver_text`, `created_at`, `updated_at`) VALUES
(1,	2,	164,	'Lumberjaxes Axe Throwing',	'Millvale',	'2 Sedgwick St, Pittsburgh, PA 15209',	'(324) 523-5235',	'millvale',	'#f4cf6e',	'EST',	'MILL',	'City Axe LLC',	'media/locations/9LOHwWeCip47WZ7r4giEvCvQvzGgh90s9lAPTPsX.png',	'g',	'https://facebook.com',	'https://www.yelp.com',	NULL,	'100',	'100',	'100',	'100',	'100',	'https://axethrowingphx.com/faq/',	'12',	'Booking Terms & Conditions\n\nAGE & IDENTIFICATION: All participants must be 13 or older. All participants must provide valid photo identification in order to check in to their event.\nWAIVER: All participants must read and accept our Waiver of Liability form before participating in any activities.\nDEPOSIT: For group events, bookings will be charged a small deposit of the total booking price. \nBALANCE: The balance of outstanding payments must be made at the time of the event. \nMINIMUM GROUP BOOKING OBLIGATION: If, at the time of your event, the number of participants in your group is fewer than the booking minimum for your group size, your group will be charged the booking minimum.\nNO-SHOW FORFEIT: Your deposit is non-refundable in the event that you do not show for your booking.',	'All bookings are subject to our 1-week cancellation policy. If you need to cancel or reschedule your event then as long as you give us at least one week\'s notice, your deposit will be refunded or transferred to your new reservation, whichever you prefer.\n\nYour payment will be forfeited if cancellation is made less than 1 week prior to your scheduled event.',	'LumberjAxes reserves the right to refuse admittance, cease to provide services to, or eject any individual or group of individuals that fail to abide by the published rules and regulations of the event, and/or the direction of LumberjAxes staff, without refund or recourse.',	'<ol><li><strong>Please read carefully and be certain you understand the implications of signing: I fully understand and appreciate that axes of any size</strong> are potentially dangerous objects, the dangers, hazards, and risks inherent in axe throwing, and the inherent risks associated with the use and misuse of axes. I acknowledge and understand that I will be voluntarily engaging in activities that involve axes, which may result in the risk of serious injury, scarring, loss of an important bodily function, permanent disability, or death, and may cause severe social or economic losses due to not only my own actions, inaction or negligence, but also to the action, inaction or negligence of others or conditions of the premises or of any equipment used. Further, I acknowledge that there may be other risks not known to me or not reasonably foreseeable at the time. I believe that I am physically, emotionally and mentally able to participate in axe throwing. I will immediately remove myself from participation, and notify the nearest staff member if at any time I sense or observe any unusual hazard or unsafe condition, or if I feel that I have experienced any deterioration in my physical, emotional or mental fitness for continued participation. I assume all the foregoing risks and accept personal responsibility for the damages following such injury, permanent disability, or death. I release from, waive and discharge all actions, claims or demands that I, my assignees, heirs, guardians, and legal representatives now have or hereafter have for damage or losses on account of injury, including permanent disability and death or damage to property, caused or alleged to be caused in whole or in part by the negligence or other acts of CITY AXE LLC, its subsidiaries, shareholders, directors, officers, employees or agents, as a result of my participation in any axe throwing related activities. I agree that I, my assignees, heirs, guardians, and legal representatives agree not to sue CITY AXE LLC, its subsidiaries, shareholders, directors, officers, employees or agents as a result of my participation in any axe throwing related activities. I understand that drinking alcohol is not a requirement of the event. If I do consume alcohol during the event, I agree that I am over 21 years of age, and I do so of my own choice and volition and agree to drink responsibly. I assume the risks associated with alcohol </li><li>consumption and take full responsibility for my own actions, safety and welfare. I agree to exercise ordinary and reasonable care at all times, and to not imbibe alcohol to the extent that my judgment is impaired. I understand the potential risks associated with the consumption of alcohol and acknowledges that I do not have or am not aware of any medical condition(s) that would prevent me from consuming alcohol or would result in any injury or damage as a result of alcohol consumption. I acknowledge and agree that CITY AXE LLC shall not be responsible or liable for any accident, injury, theft, loss or damage caused by my impaired judgment or negligence. I agree and understand that the staff and or owners of CITY AXE LLC reserve the right to refuse entry, suspend or cancel any axe throwing related activities at any time for any reason. I hereby grant permission to the rights of my image, likeness and sound of my voice as recorded on audio or video tape without payment or any other consideration. I understand that my image may be edited, copied, exhibited, published or distributed and waive the right to inspect or approve the finished product wherein my likeness appears. Additionally, I waive any right to royalties or other compensation arising or related to the use of my image or recording. For league play, I understand and agree that this all of the above waiver, release and assumption of risk will remain on file and apply to the entirety of the current league season and applies whenever I am on CITY AXE LLC premises. CITY AXE LLC SH LLC has put in place preventative measures to reduce the spread of Coronavirus/COVID-19 (“COVID-19”); however, CITY AXE LLC SH LLC cannot guarantee that you will not be exposed or become infected with COVID-19. Further, attending CITY AXE LLC SH LLC could increase your risk of contracting COVID-19. Despite our careful attention to sterilization and disinfection, there is still a chance that you could be exposed to an illness at CITY AXE LLC. I voluntarily seek to participate in the programs offered by CITY AXE LLC SH LLC and acknowledge that I am increasing my risk to exposure to the COVID-19. I acknowledge that I must comply with all set procedures to reduce the spread while attending programs offered by CITY AXE LLC SH LLC. By signing this agreement, I acknowledge the contagious nature of COVID-19 and voluntarily assume the risk that I may be exposed to or infected by COVID-19 by attending CITY AXE LLC SH LLC and that such exposure or infection may result in personal injury, illness, permanent disability, and death. I understand that the risk of becoming exposed to or infected by COVID-19 at CITY AXE LLC SH LLC may result from the actions, omissions, or negligence of myself and others, including, but not limited to, CITY AXE LLC SH LLC employees, contractors, members, class participants and their families. I voluntarily agree to assume all of the foregoing risks and accept sole responsibility for any injury to my myself (including, but not limited to, personal injury, disability, and death), illness, damage, loss, claim, liability, or expense, of any kind, that I may experience or incur in connection with my attendance at CITY AXE LLC or participation in CITY AXE LLC events (“Claims”). On my behalf, I hereby release, covenant not to sue, discharge, and hold harmless CITY AXE LLC, its employees, agents, and representatives, of and from the Claims, including all liabilities, claims, lawsuits, judgments, losses, actions, damages, costs or expenses of any kind arising out of or relating thereto. I understand and agree that this release includes any Claims based on the actions, omissions, or negligence of CITY AXE LLC, its employees, agents, and representatives, whether a COVID-19 infection occurs before, during, or after participation in any of CITY AXE LLC programs. I fully understand and acknowledge the above information, risks and cautions regarding a compromised immune system and have disclosed to my provider any conditions in my health history which may result in a compromised immune system. I acknowledge that CITY AXE LLC has an interest in protecting the health and safety of its staff, members and class participants, and I hereby acknowledge my responsibility to notify the studio if I or a member of my household test positive for, are diagnosed as having, COVID-19 or any other communicable disease. I further acknowledge that I will not attend a CITY AXE LLC class, program or event if any of the following occur: a. I am experience any symptoms of illness such as cough, shortness of breath or difficulty breathing, fever, chills, repeated shaking with chills, muscle pain, headache, sore throat, or loss of taste or smell. b. I have traveled internationally within the last 14 days. c. I have traveled to a highly impacted area within the United State of America in the last 14 days. d. I have been diagnosed with COVID-19 and not yet cleared as non contagious by state or local public health authorities. e. I am not following all CDC recommended guidelines as much as possible and limiting my exposure to COVID-19. f. I have been directed to self-quarantine due to potential exposure to COVID-19 by a medical professional and/or the Department of Health, or similar local, state or Federal agency. By entering into this agreement, I am not relying on any oral or written representation or statements made by the releases, other than what is set forth in this agreement. I HAVE CAREFULLY READ THE ABOVE WAIVER AND RELEASE OF LIABILITY AND FULLY UNDERSTAND THAT I GIVE UP SUBSTANTIAL RIGHTS BY SIGNING IT AND I DO SIGN IT VOLUNTARILY. I AGREE TO PARTICIPATE KNOWING THE RISKS AND CONDITIONS INVOLVED AND DO SO ENTIRELY OF MY OWN FREE WILL. I ACKNOWLEDGE READING THE RULES AND REGULATIONS OF THE AXE THROWING RANGE AND AGREE TO ABIDE BY THEM.</li></ol>',	'2023-05-17 13:41:20',	'2023-08-18 15:08:21');

DROP TABLE IF EXISTS `location_business_hours`;
CREATE TABLE `location_business_hours` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `title` text,
  `day` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  `type` enum('normal','custom') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `location_business_hours` (`id`, `location_id`, `title`, `day`, `start_time`, `end_time`, `type`) VALUES
(1,	1,	NULL,	'sunday',	'2023-01-31T10:00',	'2023-01-31T22:00',	'normal'),
(2,	1,	NULL,	'monday',	'2023-01-31T10:00',	'2023-01-31T22:00',	'normal'),
(3,	1,	NULL,	'tuesday',	'2023-01-31T10:00',	'2023-01-31T22:00',	'normal'),
(4,	1,	NULL,	'wednesday',	'2023-01-31T10:00',	'2023-01-31T22:00',	'normal'),
(5,	1,	NULL,	'thursday',	'2023-01-31T10:00',	'2023-01-31T22:00',	'normal'),
(6,	1,	NULL,	'friday',	'2023-01-31T10:00',	'2023-01-31T22:00',	'normal'),
(7,	1,	NULL,	'saturday',	'2023-01-31T10:00',	'2023-01-31T22:00',	'normal'),
(37,	3,	NULL,	'sunday',	'2023-06-29T10:00',	'2023-06-29T22:00',	'normal'),
(38,	3,	NULL,	'monday',	'2023-06-29T10:00',	'2023-06-29T22:00',	'normal'),
(39,	3,	NULL,	'tuesday',	'2023-06-29T10:00',	'2023-06-29T22:00',	'normal'),
(40,	3,	NULL,	'wednesday',	'2023-06-29T10:00',	'2023-06-29T22:00',	'normal'),
(41,	3,	NULL,	'thursday',	'2023-06-29T10:00',	'2023-06-29T22:00',	'normal'),
(42,	3,	NULL,	'friday',	'2023-06-29T10:00',	'2023-06-29T22:00',	'normal'),
(43,	3,	NULL,	'saturday',	'2023-06-29T10:00',	'2023-06-29T22:00',	'normal');

DROP TABLE IF EXISTS `location_games`;
CREATE TABLE `location_games` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `experience_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `rounds` longtext,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `location_slide_shows`;
CREATE TABLE `location_slide_shows` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) NOT NULL,
  `url` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `location_staffs`;
CREATE TABLE `location_staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `location_staffs` (`id`, `location_id`, `user_id`) VALUES
(1,	1,	1),
(2,	1,	22);

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2019_12_14_000001_create_personal_access_tokens_table',	1);

DROP TABLE IF EXISTS `minors`;
CREATE TABLE `minors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `participant_id` bigint(20) DEFAULT NULL,
  `minor_first_name` varchar(100) DEFAULT NULL,
  `minor_last_name` varchar(100) DEFAULT NULL,
  `minor_dob` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `minors` (`id`, `participant_id`, `minor_first_name`, `minor_last_name`, `minor_dob`, `created_at`, `updated_at`) VALUES
(2,	5,	'vzxcv',	'dcvsdbv',	'2020-02-02',	'2023-08-16 15:10:44',	'2023-08-16 15:10:44'),
(3,	6,	'fgbdfb',	'vcbdfbd',	'2016-09-03',	'2023-08-16 15:23:26',	'2023-08-16 15:23:26'),
(5,	8,	'vsdvgsdb',	'bvfdsbsd',	'2016-08-03',	'2023-08-16 15:27:38',	'2023-08-16 15:27:38');

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` longtext,
  `contacted` tinyint(4) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `type` enum('suggestion','review','message','contact') DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_spam` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `notifications` (`id`, `location_id`, `first_name`, `last_name`, `email`, `phone`, `message`, `contacted`, `rating`, `type`, `status`, `is_spam`, `created_at`, `updated_at`) VALUES
(1,	1,	'Roger',	'Marvel',	'rogerfrom@marvel.com',	'(564) 564-5634',	'Hey Thor,\r\n\r\nLet\'s play axe throwing game.  ',	1,	NULL,	'contact',	1,	NULL,	NULL,	NULL),
(2,	1,	'John',	'cena',	'john@mailinator.com',	'(435) 345-3453',	'Hello i want a booking for 16 july',	1,	NULL,	'message',	0,	1,	'2023-06-21 13:53:25',	'2023-06-22 12:16:21'),
(3,	1,	'vbdcb',	'dfbdfb',	'john@mailinator.com',	'(453) 453-4534',	'sdgdfb',	1,	NULL,	'contact',	1,	NULL,	'2023-06-21 13:59:43',	'2023-06-21 13:59:43'),
(4,	1,	'jhkghjk',	'ghjkghjk',	'ghjkghjk@fgdf.vom',	'(554) 645-6456',	'hjk,jhk',	1,	NULL,	'suggestion',	0,	0,	'2023-06-21 14:30:14',	'2023-06-21 14:30:14'),
(5,	1,	'Hello',	'Dev',	'developer@gmail.com',	'(567) 565-6557',	'Hello Developer',	0,	3.2,	'review',	0,	0,	'2023-06-22 07:31:52',	'2023-06-22 07:31:52'),
(6,	1,	'Jam',	'tech',	'jamtechapp@gmail.com',	'(131) 010-1031',	'This is testing email',	1,	NULL,	'contact',	0,	0,	'2023-06-22 08:30:28',	'2023-06-22 08:30:28'),
(7,	1,	'John',	'wick',	'jhon@mailinator.com',	'(211) 212-1111',	'This is testing message',	1,	NULL,	'contact',	1,	0,	'2023-06-22 11:42:43',	'2023-06-22 12:31:46'),
(8,	1,	'ghjghjghj',	'gjghjghj',	'ghjghj@gmail.com',	'(435) 345-4354',	'ghgj',	1,	NULL,	'contact',	0,	0,	'2023-06-24 11:21:29',	'2023-06-24 11:21:29'),
(9,	1,	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	NULL,	NULL,	'',	1,	1,	'2023-08-17 11:48:25',	'2023-08-17 11:48:25'),
(10,	1,	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 12:30:38',	'2023-08-17 12:30:38'),
(11,	1,	'sdvsdfbv',	'cfbfdxbfdxcbd',	'xcbxcb@gmail.com',	'(453) 453-4534',	'xcvxcbv xc',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 12:54:56',	'2023-08-17 12:54:56'),
(12,	1,	'user1',	'knoxweb',	'user1@knoxweb.com',	'(123) 232-3232',	'TTTt',	1,	NULL,	'contact',	0,	0,	'2023-08-17 13:00:03',	'2023-08-17 13:00:03'),
(13,	1,	NULL,	NULL,	NULL,	NULL,	'hh',	0,	NULL,	'review',	0,	0,	'2023-08-17 13:01:34',	'2023-08-17 13:01:34'),
(14,	1,	'RGSDFG',	'SDFGVDFSGB',	'FCBVXCB@gmail.com',	'(324) 235-2352',	'xcbvcxbv',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:07:25',	'2023-08-17 13:07:25'),
(15,	1,	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:09:32',	'2023-08-17 13:09:32'),
(16,	1,	'stephanie',	'rose',	'stephanie@gmail.com',	'54874595',	'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:12:17',	'2023-08-17 13:12:17'),
(17,	1,	'fgdfdgfd',	'gfdgfdfd',	'gfgfdgfd@gmail.com',	'(867) 836-4326',	NULL,	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:30:27',	'2023-08-17 13:30:27'),
(18,	1,	'dsfsdfsdf',	'fsdfsdf',	'dsfsdfsd@gmail.com',	'(773) 874-8723',	NULL,	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:31:54',	'2023-08-17 13:31:54'),
(19,	1,	'sadsad',	'dsadsad',	'sadsad@gmail.com',	'(872) 642-7384',	NULL,	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:33:17',	'2023-08-17 13:33:17'),
(20,	1,	'cxbdcbd',	'dvbdvb',	'fbdfvbfdfvf@gmail.com',	'32432434',	'dfbvdxcb',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:33:42',	'2023-08-17 13:33:42'),
(21,	1,	'qq',	'qq',	'qq@gmail.com',	'12121212',	'dsdssds',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 13:39:32',	'2023-08-17 13:39:32'),
(22,	1,	'vxbvxfb',	'cbcgvbn',	'fbcvb@gmail.com',	'3245435345',	'xcbvxbsdfx',	NULL,	NULL,	'',	NULL,	0,	'2023-08-17 14:25:24',	'2023-08-17 14:25:24'),
(23,	1,	'user',	'df',	'user1@knoxweb.com',	'(121) 213-1341',	'dadadad',	NULL,	NULL,	'',	NULL,	0,	'2023-08-18 12:46:34',	'2023-08-18 12:46:34'),
(24,	1,	'scfs',	'wd',	'dedfsf@gmail.com',	'(113) 122-4242',	'sfsfsf',	NULL,	NULL,	'',	NULL,	0,	'2023-08-18 13:07:11',	'2023-08-18 13:07:11'),
(25,	NULL,	'ghgfhfgh',	'fghfgh',	'gfhfgfghfg@gmail.com',	'877678677',	'sadsadsada',	NULL,	NULL,	'',	NULL,	0,	'2023-08-18 13:14:27',	'2023-08-18 13:14:27');

DROP TABLE IF EXISTS `notification_templates`;
CREATE TABLE `notification_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `bookable_id` int(11) DEFAULT NULL,
  `name` longtext,
  `subject` longtext,
  `message` longtext,
  `status` longtext,
  `time_based_status` longtext,
  `time_based_pre` longtext,
  `time_based_post` longtext,
  `booking_status` longtext,
  `recipient` longtext,
  `type` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `notification_templates` (`id`, `location_id`, `bookable_id`, `name`, `subject`, `message`, `status`, `time_based_status`, `time_based_pre`, `time_based_post`, `booking_status`, `recipient`, `type`, `created_at`, `updated_at`) VALUES
(1,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'SMS',	'2023-06-14 19:28:47',	'2023-06-14 19:28:47'),
(2,	1,	1,	NULL,	NULL,	NULL,	NULL,	'0',	'3 Day',	'Before Start',	'Reserved',	'1',	'SMS',	'2023-07-18 20:59:17',	'2023-07-18 20:59:17');

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE `order_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL COMMENT 'unit price',
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `order_products` (`id`, `user_id`, `product_id`, `booking_id`, `qty`, `price`, `total_amount`, `created_at`, `updated_at`) VALUES
(1,	240,	23,	5,	12,	200.00,	2400.00,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(2,	240,	24,	5,	15,	100.00,	1500.00,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00'),
(6,	369,	1,	13,	2,	25.00,	50.00,	'2023-08-18 14:51:29',	'2023-08-18 14:51:29'),
(7,	430,	1,	14,	2,	25.00,	50.00,	'2023-08-18 15:09:23',	'2023-08-18 15:09:23'),
(8,	433,	1,	21,	2,	25.00,	50.00,	'2023-08-19 08:27:37',	'2023-08-19 08:27:37'),
(9,	450,	1,	44,	1,	25.00,	25.00,	'2023-08-22 13:22:07',	'2023-08-22 13:22:07'),
(10,	450,	8,	44,	1,	90.00,	90.00,	'2023-08-22 13:22:07',	'2023-08-22 13:22:07');

DROP TABLE IF EXISTS `participants`;
CREATE TABLE `participants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `lane_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_minor` tinyint(1) DEFAULT NULL,
  `currently_live` enum('no','yes') DEFAULT NULL,
  `receive_update` tinyint(1) DEFAULT NULL,
  `signature` longtext,
  `signed_date` date DEFAULT NULL,
  `status` enum('participant','spectator') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `participants` (`id`, `booking_id`, `location_id`, `lane_id`, `user_id`, `is_minor`, `currently_live`, `receive_update`, `signature`, `signed_date`, `status`, `created_at`, `updated_at`) VALUES
(1,	5,	1,	9,	416,	NULL,	NULL,	NULL,	'sign of waviver\r\n',	'2023-08-16',	'participant',	'2023-08-16 08:23:33',	'2023-08-16 08:23:33'),
(2,	6,	1,	7,	417,	NULL,	NULL,	NULL,	'sign of waviver\r\n',	'2023-08-16',	'participant',	'2023-08-16 08:23:41',	'2023-08-16 08:23:41'),
(5,	5,	1,	7,	422,	1,	'no',	1,	'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAwAAAAEsCAYAAAB0cNTqAAAAAXNSR0IArs4c6QAAIABJREFUeF7t3QuUHGWZ//HfU507AnJRVEBAAf9cRUJmegJoRAGBFf5yU9fLoqzrioIXFFDIVFUS5HBQENHV7Coqoigs/l2RFREkC0m6OzFcBLmJ3BFcbnIPmZl6/qc6QwwYMpWkp6f7rW+d4+oyb7/v+3yeOtq/7uoqEwcCCCCAAAIIIIAAAgiURsBKUymFIoAAAggggAACCCCAgAgAnAQIIIAAAggggAACCJRIgABQomZTKgIIIIAAAggggAACBADOAQQQQAABBBBAAAEESiRAAChRsykVAQQQQAABBBBAAAECAOcAAggggAACCCCAAAIlEiAAlKjZlIoAAggggAACCCCAAAGAcwABBBBAAAEEEEAAgRIJEABK1GxKRQABBBBAAAEEEECAAMA5gAACCCCAAAIIIIBAiQQIACVqNqUigAACCCCAAAIIIEAA4BxAAAEEEEAAAQQQQKBEAgSAEjWbUhFAAAEEEEAAAQQQIABwDiCAAAIIIIAAAgggUCIBAkCJmk2pCCCAAAIIIIAAAggQADgHEEAAAQQQQAABBBAokQABoETNplQEEEAAAQQQQAABBAgAnAMIIIAAAggggAACCJRIgABQomZTKgIIIIAAAggggAACBADOAQQQQAABBBBAAAEESiRAAChRsykVAQQQQAABBBBAAAECAOcAAggggAACCCCAAAIlEiAAlKjZlIoAAggggAACCCCAAAGAcwABBBBAAAEEEEAAgRIJEABK1GxKRQABBBBAAAEEEECAAMA5gAACCCCAAAIIIIBAiQQIACVqNqUigAACCCCAAAIIIEAA4BxAAAEEEEAAAQQQQKBEAgSAEjWbUhFAAAEEEEAAAQQQIABwDiCAAAIIIIAAAgggUCIBAkCJmk2pCCCAAAIIIIAAAggQADgHEEAAAQQQQAABBBAokQABoETNplQEEEAAAQQQQAABBAgAnAMIIIAAAggggAACCJRIgABQomZTKgIIIIAAAggggAACBADOAQQQQAABBBBAAAEESiRAAChRsykVAQQQQAABBBBAAAECAOcAAggggAACCCCAAAIlEiAAlKjZlIoAAggggAACCCCAAAGAcwABBBBAAAEEEEAAgRIJEABK1GxKRQABBBBAAAEE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IIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAIEgCDaSBEIIIAAAggggAACCBQTIAAUc2IUAggggAACCCCAAAJBCBAAgmgjRSCAAAIIIIAAAgggUEyAAFDMiVEIIIAAAggggAACCAQhQAAIoo0UgQACCCCAAAIIIIBAMQECQDEnRiGAAAIIIIAAAgggEIQAASCINlIEAggggAACCCCAAALFBAgAxZwYhQACCCCAAAIIIIBAEAL/H2iotKUjv7sXAAAAAElFTkSuQmCC',	'2023-08-16',	NULL,	'2023-08-16 15:10:44',	'2023-08-16 15:10:44'),
(6,	5,	1,	7,	423,	1,	'no',	1,	'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAwAAAAEsCAYAAAB0cNTqAAAAAXNSR0IArs4c6QAAIABJREFUeF7t3XmcXFWZ//Hvczshm+ygAyIoIC4gKNFUVQISFJBNwIUMKIqA4s4IiiySvvd2WMVBZFF0QBgXUDb5DcqiIlFIV1ViXMIAyrAoMKAyiAQCWbrr+b1upYINJKS6u7au86l/fL3S955znvdz1Pp238XEBwEEEEAAAQQQQAABBIIRsGAqpVAEEEAAAQQQQAABBBAQAYBNgAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCA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qNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQkQAAIqNmUigACCCCAAAIIIIAAAYA9gAACCCCAAAIIIIBAQAIEgICaTakIIIAAAggggAACCBAA2AMIIIAAAggggAACCAQk8P8Bzuscw5tzR8wAAAAASUVORK5CYII=',	'2023-08-16',	NULL,	'2023-08-16 15:23:26',	'2023-08-16 15:23:26'),
(8,	5,	1,	7,	425,	1,	'no',	1,	'data:image/png;base64,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',	'2023-08-16',	'spectator',	'2023-08-16 15:27:38',	'2023-08-21 05:20:42'),
(9,	37,	1,	7,	453,	0,	NULL,	0,	'data:image/png;base64,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',	'2023-08-21',	NULL,	'2023-08-21 10:12:26',	'2023-08-21 10:12:26'),
(10,	38,	1,	7,	455,	0,	NULL,	0,	'data:image/png;base64,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',	'2023-08-21',	NULL,	'2023-08-21 12:06:22',	'2023-08-21 12:06:22'),
(11,	40,	1,	7,	458,	0,	NULL,	0,	'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAYAAAB5fY51AAAAAXNSR0IArs4c6QAAIABJREFUeF7snXmcHGXRx781m5CNGE4Fwn0IKiigIZmehEsEBRURBAQFFVQuRUXxFYGkn0k45BDvC0XBA1RURDlEFDkzPcGI3CqeiIAXVyDXZqbeTz3TvXQ2e8zMzszO7E79Q9h5+nnqqe6ufp56qn4/oSvjzgLBfM2qEogyG9gfWCc1yRuBPyD8QpQHC07+1MkGyIa6u8DPEdYW4e2FUK7o5Pl0dR/eAtI1UGdbIHeRTtVnOBDYD3gNsF1qRv8DrhLhNyr8Lponxc6e7SDaq0ouzz0Kr0BY0qtsebOTp8bdPLsT8hboOqwOfBByTo9VeB2wO7BZagqPCPwauLkEty9y8scOnF7NKgdOvwicFF94fuTk4zV30r2gIyzQdVgdcJtmz9eZ5TKHKhwk8NJ+lZVlIlyrcK0qvy3m5Z4OmE7DVQwW6Msp82uUjVGW9AnbLnby34YP1O1wzC3QdVhjfgsGVyDrdEeBEwTvqKanWt0C/FIzXF+cJ4vbVP2WqxU4dUDoB1Y+FeXl1JYr0R2w6RboOqymm7j6AWbN1z0yJQ4W4SCFbVNX/ljhSpTbi3l5pPoeJ07L2Qt0u3KJhcBGKM+JsGXByRMTxwITY6ZdhzXG9zkb6uYZ4f1aCZrPSKlzDcIPe3r58R0flyVjrGZHDJ9zeoFCsrL6QuTk5I5QvKtk1RboOqyqTdW4hrOc7pCBXeMtzI5JzwLfLsNPV8F1i50sbdyIE6OnnNMNVH2Kw0xguU5m6+IZ8q+JMfuJMcuuw2rRfTYnJcJmUuY9CO9IDfsD4HpZh+8XPiLLWqTOuB0mjmWdBkxRmF90UolrdWVcWKDrsJp4G/c4R1+8ciWnSyUFIVlJ2crpJhF+wjQu7zqpxt4As3nfCh5CWFfgsWdg6/udrGzsKN3exsoCXYfVIMvv7fSFS5WXCexrQXOUXRCf59brh1B+BlzXN5UrFp8mTzdo2G43g1ggcPpJlFMRekTYvxDKDV1DjQ8LdB1WvfdRVYIFzNYSewjMRtgF2DJ2TiUEyyrvE/jhKvjhnU4er3eo7nW1WcDnZa3iFoQXA5+LnHyoth66rdvVAl2HVeOdme10oxJ8YsA2z3r5NcItAtHKTbhp8fHSV2PX3eaNsoB9TPI8CmwC3Bc5eWWjuu72M7YW6DqsKu0/a4FuIyUuEnhLvIp6TuDScoYbJ/VyUzf1oEpDtqhZ1uklAsfacCWY3l3htsjwTR6m67BGMPAMpy+aDKegvN8CuUAEnLsEft4N5jb56RxF90Fe34HyHd+F8OYoFIshdqXDLdB1WMPcwFxej1flbGBDYJEqc4t5+UWH3/MJob4/LVzJv+PJnh05OXNCTHycT7LrsAa5wXPO02mlpXzZ50spd0oPHyvME6vh60oHWSDn9M9xidNVkZNDOkj1rqpDWKDrsAYYJpivcyhzGcrWiN/6Lehu/Trz/Qmcfh84HOWhKC87dOYsulqnLdB1WLE1Zp2jG2ZWsgA4UeFWlI8X82Lxqq50qAWyTk8VuMDUXwLT7nfybIdOpat2bIGuwwKyob5B8AHadRBcBOfgpNx9SjrbAkGoJyB82c8iQzAuEVc7+xbVrP2Edli7n6vrl1ZwsVYwp27VDB9cNE/urtmK3Qva0gIzPqnrTl7OfcDmopxSyMtn2lLRrlJVW2BCOiw7QVq1kv9T5USEFQhnRaF8umqrdRt2jAWCUH9nVQgK3yo6eVfHKN5VdFALTDiHFUO73AasJ/D90lqcsuh0MbKGroxDCwROPwcYLtY/Iyebj8MpTqgpTSiHlXM6O8ZLmoZwVBTKdyfU3Z6Ak83m9WhRvmVT75vMpovPkMcmoBnGzZQnjMPK5fUTqswH/lvKsO+d8+T+cXMXuxMZ0gLxivoPvkE3473jn5QJ4bCyTr8icDzwN+3hdcW58lDH37nuBKq2QODUtvwbAF0KsKqt1p4Nx7XDslPAVSv4KnAYUOxRDr8jLw+3563oatUsCwROrwbeLHBbwcmezRqn22/zLTBuHVZ2gW4vJa73TMjK9QpHFPPyTPNN2h2h3SwQOLU6QksKXhrBtG6OXbvdoer1GZcOK+d0lio3I0wFruzr5X1dlM/qH4rx1jIb6utESFBHZ0ROfjve5jhR5jPuHFYQ6iFGj2UhVoELn4EzurWAE+VxHnyecdmVZ4JW5ehiXiqwM13pOAuMK4eVc/oBBcu7ERFOLyjndZf/HfdMNkXhwOlfga27rNBNMW/LOh03DitFommZ66dE8/gKItoyS3YHqssCezvtXSYcKWWmI2yCsAHKywXWA6aqMsmf8Ak9VQzwhMBTClNiPH2j+rJn3E4I1xrmeoOzfhIoK6gIy1Em+/aKnTAackcp7sf+ejtwlwj3l5Xbik4eqEK3bpMGWGBcOKzA6f8B55k9BN5VcOITBbvSXhY47Afa8/CDvFOU9wBz2ku7UWqj/MOcqsIihEvLSrELyzxKmw5yecc7rJzTNylcFc/to1HI57srq8Y/KPX2mJuvryyXeb/AwcBGVfZjSBmZygKHpwR+t8Z1ymKE5+FilFnxIYutyF4NHm30b6nrjJDiZYh16eGD0qvv3YAXxm1XAcYWPVSu3kusmLrKeVhfPyrDxYuc3FTlNd1mw1igox3WrFB3ywi3oEwROLXg+GzXWY39857L62vjqgJzBENtxR4B/gT8GeEhLfst1spJU7j79k+Ibc8aKjEwo23lbBW+fcGJjV2fqErWYUw8O4tgDsz+bc7YHOULhujUCHT/hPD1XuXbNzt5qr7BJ/ZVHeuwsmfrxtLHbzx0CFxcgBO7AfYxepjtBZ7PSaJ8GPwLPJg8YasNtfSCMsViXsxhtUxmnK3TJ/d56i+T10RObm7G4EaouwL2VXgDsBcwGNKpMVF/V+D8gpPfN0OP8dpnxzqswKkVLr8d+N+kKWzfjK/yeL3pDZmXOak8b0U5xDNdD7KyUHhM4ArgZ0tg4Ziml1S4CpfHK763RU5+0BA7jNDJDKcvmCTsl1GOip3YwBXYRaUM3+jWtlZ3NzrSYcVxK6NteiIDey10YiBtXWmBBXy500pOQvlI6tSsMrKyDOFXwNUluOlOJ39pgUpVD9Gf2iCcFIVSQSJtoeztdNIyxZJY7ZBojyROF6uQ74ULb+7COA97RzrOYe3kdK1pYNX3WylcXHRyQgufuQk7lN/qCCeq8vGY9ixxUksQfobwPZnGLwsfkWXtaqTAqcWw5iCcGYVi9G1jJlY6linxaYUDUgcMKwVuiZy8bswUa/OBO85hZUM9TYRzDZBNlR279YHNfcI8hhicHweW10mN9gjCF7TMlzvlHuScXmlw2JYCEzk5rbmWq6J3p5ms8NqMMldh98p5gJfHgW/0KF+8Iy9J3K2KDsd/k45yWDOdbtIDhmM1TYR3FEK5cvzforGZYS6vB6v6rUuQ1kChIMKCSLmh0w45AqdfBE4Cvhw5sf+2jcxyuk9G+AHqSXsTWaVwyarJ5LvAgxWTdJTDyjo9X+BjAr9ZbwN2v/6DsqJtnrhxoIgldv7jQY4T5VgFS0lIyxOqHFR03NGpqSNBqKcjnC3w7YKTd7bdLausuPZC+aDAG6E/2/45yXB2psxlE33F1TEOK+f0Jarcg5BR5b3dAtbGvW4WDF4B71TlNITtUz1bAuevVLlwy5341ZWHi5WndKwEeX0XyqXAJZGT97bzROYs0JeuKnG6wJEpx/W0CB+ZAt+62YklpU446RiHFTj9BnAM8NvIyYwJd6eaNOE4ofLrPgt8dfllBhYsdHJrk4Zuebe5vB6miqUz3Ngpge3Z8zVXLmOMTtnEYAZEWM5wSnGeLG65Ecd4wI5wWDPn6049Ze6yg3OBgwpOfj7Gduv44Y3qrG8lxtN3OPgC40TuUeVjxbz8ouMnOWACgdO9gV8DN0dOXtNJ88vl9fUo31SYHuu9VIV3FkP5USfNY7S6doTDCpzaCuA9KD+L8vLm0U56ol9v9X1a8qkIW/XbQvk7Gc6O5vH1To1RjXRfZzvdtQx3Kfyu6ORVI7Vvt98tCXWychbi+QmSBNRzopAzx+s9G3gP2t5hBQv05ZT8yaBhf8xalBcrx+lKPRaoZHufBZyeclQlhG/0TSbspJOobKhWx2eVDnaKOd3qSf2chCdQbkK4ZmD5TXzKbDRfHR1WsJWiwOWp1daNvfDmm51YJv+4lrZ3WFmnl4kFhOHWohOrzepKHRYInNrK9EvAZqnLHxF4a8HJojq6bPklufn6KlV2F+UwrWSKVysW65mhwh9E2U7g4YKT7aq9uB3bzTxLt5i0iksV9on1+3MJdh/vkDZt7bBmL9Dtyqt8VvtKEfbulBernR7wbKjrIFg6iG0jEjHAuktlEvnCmfLPdtI3rYt3UGWOEpipsAuQTlytT23xcdCVhVB66+ugfa464HM65cknPNem5cuZ/E+Vt4/H+GNi9bZ2WFmnVwm8ReAXBSevb59HpTM0iREKfgns2K+x8pzCIe34UPsYjXAKypviU7GGPJ8WsxLY1Wyg8AeBHWQd1m7nMqJanrCs0yMELosLu62851MFJ89v+2vprM3bNuSBaMYcs+fp5rKMfwDLMxn2WThPCs0YZ7z2GacrGB9fOnP6m6p8uN1KaeI4pVFxHQKMbuWjLPNbP/isAfglcayc0w0KTp4InNrp537ANpGTNMBfRz8KsQ0vplLiUxbhpEIoxsk5rqRtHVaQ1wNRforyZJQXw+TuSpUWyOZ1PylzdYzAaVctFzis4OSaKrtoajNLqVjZx/6WUY+Q6w+YDz2qYa0/FCOPThb4Swmuz4AltpqH+121gHjJibNk2LswT25p6kRb3PmMr+rkyY9hDtnSN/pEOHm8Oa22dVhZp3mBecB3IidHt/jed+xwlq+jZa5KOaubM5N498Iz5e8NnZSq5BawJ8rLKLOxCnaP7KjdoIXtQ7N0/Q35ppVP2Ys06XE+KIrlEu2K8OIqdDFihzuN8KFH+UWjGLtzTucrzLUTxkIohtU1riR2Wna4UsnkFz4ShWKJp+NC2tZhBU5vxJAbhWOLoXxzXFi7yZOYPV9nlsssTBJBFX6SgffYVqjeoX1g90leh/q6U4sjGp75Tp5Ru4Gi8IDAj0W4fYpSrHbFVKsKQV7fh2Jbp49HTgyFYtyJZyKCr9rpejy58yMnBgvU8dKWDit3kU7VZ7CXrLdvMpt2Un7QWD0Rts1atZK7k9ycWp1VfJp4hFFaZWDDGB2zWrKFWqdtBBAWn7xChUJG+UOroILj9A6L7X0pcvL+WhXvlPa+kP0Bvga826+zlDOivJzTKfoPpWdbOqzA6b5W72WoDAUnMzvdyM3WP3eWbqarPL69McPYUdidk6fwxttOl/8MN7aByFHimAy8TWHbKvRcFceRDA/9XoWHSxn+k7EwUpnPSwXhocLnN0DUAsExE07qpysjJ1Ya1DKJ8b3umBChBqeZnPI5FbxjFlhQcGJhlo6VdnVYtgc/cTwYuBVPRs7pNVqBIzEZEjY6cLq1CnuIclx8mjSYepajZdvKpy0dwDLHRbm7BL8fmJSYm697aRlD7hyKY7Bo+FmZDD/Z/GXc/o972Y0ej7AZJgMLfKvg5F2tsJON4XP7Sp6tp+PqCeuyUaW6wQAvky1hR2+F29Nhhfo3q3PLwKsWOlmTk66uOzc+L5oT6qYl+CtSodPSHt5YnCvXJS+nlti+DAeKpTcoh67GoFzBYLcscMtTsq3Z7SMFt60QfVKZd6ty2Gq1iJVP+DJRbijB5zfcgDuGwitLoSZUbopwXBSKbV+aLnPO02mlZTwD3Bc5MXqucS87X6BrT32OTwn+Q2V06IcVnfywEyfedg5rptNte+DP3e1gdY9TzukNCoYBbkf8D1BhILZt9IsG7UF5EvGooZf2rMUvq2UbipMTLVvejswHilF2ze2F71SL0xSE+u/ktFDh/qKTV1Q341G2shWHow/hscjJFqPsrWMuj08Pvw28DXhW4FWj4mYco5m3ncMKQj0E4UcK3yg6MUrzrgxhgQRBswoDGTLr1apcNlW4aaQiWc+Ms5wTRTzRx/YizNakuPj5waxPY8j5ai9cV62jSi5PakST/1fhLcVQLBjedAmcPm3Mz1Fe1mv6YG00QM7pyxSMiMOSiX8ZObEE2o6StnNYubx+TJXzjQqpEMoFHWXNFigb02wdSgVvfTDSUnMkVhVwuyoFnUJx0enyv5FUs4fZeB7VYHxg06HaW9JmWbhIJ/O9avodqh//xX+U+1MIp/dGIbu0AiYlcGqIDRtHTjIj2WW8/R7k9WSUz9m8RDih0xJL285h9SeMtjCu0QkPpY9VCcb0cuIAwD2LAf1Hla9n4NYpcPNIK6hkvjmn5qAsdmTxrzSI36AmEfjkFJhb62pqKPtmnRp+/JeSuJoIh7eCWCRw+hDKZlFehqKV74RHoj4dLeE3z1UKB6E8XZrMK+88UyzFpCOk/RxWXj8kymcUPlZ0cmFHWLGJShq2d7nEp1KngANH+2PPVHa74+OypBo1LN8qI7xJwWr3Xj7ENZYn9Vvg5yrcKcrTAo80OuZhweAXPOdPJHf2X3y4v9CCWJYnVFW2iPIyopOuxqad1iZOMK5ACimLorz0wy+3+1zazmEFeX0byvdQPh3lxdiFJ5x4enM8rMonLJFzgAEeBHqAHfzfhXdHoVil/rBiGetPPMl7RX2faUysynV2Ygg3IyzUDNcX5/LbVmzPsnk9RhRDlPXbs7LwpkWhXDvSfEbzu98SKtOivLxwNP108rVZpxcInBo/Qx1TvtN2DmtWqLtl7KsO1xacGMzIhBFDFDA2a4R9UdYdMPFIBFfO8Bcp8cfYyTwUCS8biR/QVmmlElY3NxAW+Fkj7CxluPjOeeJRXVstvs7wMe4VeGk8dtNrRwOnFtNbK3IyrdXzbZfxcqfoVF2Xv8TJxqvi2sq25/lsO4dldVDL4WngyS12ZLNOp5aq9gEN8nqKKvME0idXFkC/UjKcX5gn9846RzfM9GHxl/X9mkiYOxLlul/BQN62QCldjFn4i73whWbV7FU7b2uXy+vxqnwlWektEda738nKWvqopW0QqlFkPRrlZctarhtvba3SQUoYXpq3gwj7FkKxk9+2lbZzWGapwOltloldgu3udGJfgXErs52+ooxnr3lt/ySFJ40wdtJkfpourwmcWrLfW+N2qyTDrMI8MTahQSXFw/f878qdfWtxUDvVZ3pHvNLj9m/sXxyYU3Bisa2GiwcJhOeAeyInhmI6oSXe0fzEwgQKT1l+VjvjhLWrw/oU8BGUE6O8VL6840xmfFLXnbSczw0gylyCcFYvXDTwJC7n1NiYL4nN0FfOMHPRPLl7KLNkne5oQeyUEywZvpiswzvaEWkzcGr1iR6zX4V5xVAWNOOWJ4nJwHWRk6ScqRlDdUyf2VCDjPDjuHD+j+tvwM7tyqrelg4rPsWwAtUfR04MQWBcSVyAa+kE/dDFAjdllKMHoyKf7XSjMphzsuLm5SocVwzFspYHlTVKXyqtrtxiR45s1y12kn8XT8gYbw5sxk23l1PE56ldGjkxYt6u2K6mArtjNbyTRPliIS8faEfDtKXD2snpWuvAvxR6IydT29Fw9eo02+meZeU6hLXjPh4VmFsI+eZQp3KBU8Nvep+RcSh8suikv3h4oB5DOatWoyLUap+c05co2EdqI+CvkZNq0CNqHYas00MFLLicj5y4mjsYrxdUiqTtYMZKd0z2i5xYfKutpC0dllkocGr1aZuVJrFlJyW2DXd3jZqpZxVWzG2Qz5brdItO5ojiGfKvoa7Lhvo6EW6If/9bH+y02MnSwdrHmFY/F8ilfretlr2c9t+2lRi/6d+JbZZAbzMC74FTS5X5VLXpIG1rsCYoFsf3DOXVVv539U0nu/h4MfSOtpH2dVihfgfhHZ1wclHV3ax8wcxZWZKkUU19bQp8aLis9DjecmucN/VEuYfdFs2Vvw41XpDXswyordOcVaJvNtSrRUiYvV/TDCcbOLWylJPLGfZcNE/scKcrKQvEfADfR1i/HWPIbeuwkpiGCqcWQ7EgfEdL4NRjfMWTWNwLuw/nrGLUVctGNhSDMsrc4RAjA6c/AA4bYKSmvPTNuhE5p99SPDa8HRV+MArl840eK+f0J1aWMp5W7o22URDqTxGMBOY/vcK2NzuxfL22kLZ1WIFTQ6L8PnBJ5KQCqN+hYtTiwK9j9f/VB69Y7OS/w00n5/QrmpCfKj9b+kKOvOdjYsfxa8igzkr5SpSXxEF2hOVmzdddMmW/CjX5euTE4nYNlcCpHV7sEIW8oBWZ/A1VvkWdzVqg22RKRD6eKLgolHyLhh5xmLZ1WNn5OkPKHvb3jsiJca11pFj2eln5nYhP3FypwgkjkWrEL24RmGKgeJkMr1w4V/48qLMK9SKMfDQlrSoirvqGqMrsBQSq7KzqS4o2F3isDO8akCg7WJf/M7wsqdBWXVGG9XqUby90YvGumsVDy1jSqJOh6ihr7nM8XpB1+hWxgx5lyaRetqkWN63Ztmhbh9Wf4KcsifIyeoryZltyiP4Dp7aySkDvRiY+qMS67Os2C7CM9COHiuXk8nqkKt9J6vBMhVY5q2C+ZikzR/CUXQZz80QZXyT9UtQTlRpI3rMepE8Hx3kf7S2Jnd4zUkkE/Xnc3zJVFm2wIbcMzCVKoY12c7BGMH5uvr5SS9yBMM1QOgpOrAZ1zKVtHZZZJgj1YYQtepTNBstPGnPrjaBAjNJ5ecxasqxvKtMXnyb2hR9SglBPQPhy/MJb6c15QzUOQrX0CMNIT6QppA4e+E2Yocoe5nxTdX9tewsMt0uVPxgEtMDildO5tudf7BhvOT8XOflQ2yrfJoqluEH7Mj28fKhVfivVbWuHlXP6K4V9MrDXQid2WtYxMifULUtwD+KLmP+VgcNHmoNfVSqP2AmNJZL2TOHQoZbiA/OtLBmyEMrsRhjIx9yUNyPMQZmxGg58bQNY6oadiFp+VZ8RUojwXBkiUbQMjy5yUinkjiWb14NEsVIRWy2eXgjlXGxLmWcX2w7a31V5ARlmiHrUioFiR/JrY6StMuB3xSoJpqnw2aLykZGKxmub6vhr7WNZq3gotuOiyI09DE1bO6x4H308wklRKLbq6BjJOr1K4C0etkU4LXLiUR6Hk2yop4l4hpMVCq8uOjH240ElyKuxK/dng2d6eMlov4B7nK3T+/r47CCnjYMroZQQv321XB070bTt2PJMhrss9lEIKdQa2M6erRtLn98Km/wocnLoSHYb7PcY8HA3lD0R9hkEqeI+hC9NnswPR6JDq2f88XJN4NRw03yZlGR49XC1q62Yc7s7rFMFDLfnswUnH26FQRoxRv+pYOWF/loUctJIL65l90+DfxretgqnFEMxxzGoxFnhRgmfyKi2gpZCUX6GT0slLcKSWteQOF50oyh/KGe4e1KG34/WQQ7pjJ3+PUYQ+GfkpCFkrrEDM8p2O31+NAUD/V+EC7XMl4t5MTadrqQssLfTScvBEps3aIeSnfZ2WHGWt22PCk6eRzNo80cqcPpj4GCB22QSRy88U+wFHFYCp5a68TVjC2ISbymcKea8BpXAqZWUpLn9Diw4uWakMQb73VY09HFLOi4lcHE5w8Va8m52fc3w94Fbt3rGqvaawKmls3iC1QxsXO+J4MDxAqdfBE5a+iwvXHuaP7W0JFs7ELH3wE4d3xc5+Wm1ek6UdrlQP6yC5UI+uQQ2bUYFQrW2bGuHZcSfVldmD1PkxEOPtLv4hM+neQyhV4WPD7dSSs8lcGqQxLsqfLboZLU0hUFePENh6C+cjpzUdR/jIvOfJbAuFmsDjmhGhnkt9y3I6xkoZ9k1jax0CJxabZzBpxhrjJc4ZmbwPgmy6+U9UzmhWsjpWubVqW33drreCnjAozkob43yYh/kMZG6HvSWaVrhkHvaAqUlmD6QebhletQwUDbU3UWwko+l2sOuxbmS3roN2lMur69V9UBqD5d72Hu48hv/kjk13sakOPhvkZNtalDRN43HvDFeXdif7N/HtQMWUpBXy7L2Kx2F9xedWJXAqCXr9FFRJkV5sQLrfomx5e0jMdcTcohPzzjPB/y74i2QYNQZG1PkxE6Lx0Ta22FVDPULqxwX4ZBCKFeNiZVqGDRwavRb56E8GTk2HCl2FT8M5qxsy3te5MSYcYaUWU53yMAfUg1qplz39WKK2TWRK/vg3UMVVdcw/YY0TWFWWX8XRU4+OtqODX9s8nKeUvhW0cm7BusvBlO07eiO6uHluYweLojmiuHoT2jJ5vVoUb5lRsjAKxc6uW8sDNL2DivndL7al0/5VJSXCmh+G0vg1LZYhkX/08jJQSOp6hP0ytwDrCoruUV5sez+IWVg/ArhDVEo1480TvJ7zun+ik8bmOL/ply/9IUcNlTZT7X9NrJdXEf5VEw/9r3IyZGj7T8b6htEuFaE9xZCSYAQ1+g2Pvy4HOEQD0Ld4FXeaOcxltdnnVqsc8+xJIhpe4cV5PUAlOsUfld0MpBEYSzv35pjV7awRgW/riinFPJisZFhJXi+tObhyMlWNbT3TSevxUbVHstnQ91ZYGEKi+s7fdM5tt0gRGxeSdJwow5cck6NOu5D5R62HWnLbePHiK3fjCsO7E8PqPDhYii2dZ6QEjjdF7hG4ImV09lqLJ6btndYqa/t5MlrsXG1L+dYPFHBfJ1D2VOBW87K3oV5cstwesR0Xv8UZbJmeFcxlB+NpHeQ1z+ibJ+0qyXgHji9CXiN1w+uLk/m+OGwuEbSpZm/p77md0d52XW0YwVOCwJbFUI2q2abbuPFGF3vB58b50lXq/0QjVbfdrw+TiS9yz7IqryxmJfrWq1n2zss/7WN8b4F3lNw8o1WG6na8bKhHiWCQReXe6ay3kgnTYHTdwPftNXjqunMquaLlQAbep2Ep6NQ0iw7Q6qapE3ZbFqeAAAgAElEQVTEDR5VJVvMi4EktqUETs15HwL8OXJitYp1iw+qP+sPb35STyJqHFOzlIj9Y2d/8TNw8lge79dtjFFemMDzAF+OnJw0yu5qvrwjHFYK77uquFDNVmjQBalM9d9XgwYQOLXY0/4qvHM4jPZEPf/Fv58VqZKTqgLuccDZgqQ+CVOVo4t5saLptpVcqF9QwVY3j0dOpo9G0eQUVuDkgpMv1NWX00wA9rE0vK6Mwq2r4IB2Oaioa051XJTEUK1Ws+Bkuzq6GNUlHeGw4tObe42AoQ82bNeHJHBqD7QRG/wgcpJgYw96g/pzzJRlCptUk2U94PTMtnVVVdGnyyuAKII57V5HF+Q1RLEE2WciJwNJZWt66JODm1KGV4yGMDbeItopYkK1dk3fdA6pZmVck8Jt3Dgd9qglftqoKXWEw7LJBk4tn+klraAyr9e4/bkqVYCe5fL6CVXOsS1h5OTYasb0BBbQHxdT4QPFUGyrMqTEtXlWYGwQPSvKGfbrBGjgIK8nxiwu5cjJYEXO1ZjMtwmc3qiwW9GJEdCOSuJSla8D7/QhLeU3xbzMHFWnHXSxMXVPfgwrYeoFDmp1ZUAnOawPAlYL9sORVi9jdf8Dp1a0u3E1TjVwagB9s1Q4tJpgu3/xUgmVfo7CUVEo3x1uvjmn5yr43C5LZyg6OXis7FPLuNm8vlWUH6KUorxMquXa1draVk55CuG2RvEQ2krr4ft9isTr47FGVctZ99zG6MKc0zvtAzAWaKQd47DiOIydkE3tEzZpt21hvF0w1AIZKbEu5hm0WsFH1t+Al1VLWpmbr3tpmX72m5GywGc63aRH+BPqKcWWZmDOQicJBPEYPe7VDZuCldZeWGsgsWx1vYBP5RDubvTLNcPpiyYLl8dghabOhHFaOadfVThuLObcMQ4rXtr7rHeFw4pOjLa9bWT3c3X9VSt4whTqgxcPh9keI4UasN/3ayGKHSTLfdjM+AHEF2dFTqz0pCNkttNdy3CXKbt0bV5Yb2Jr4NRW5p8tw2sXObG0joZKLq/3qbJT3OmE4DrsJ4gZg9zIznJYef04yicFri04sWzythH/xYX/mEICGxaceOc1mAROLQbyHoTjolCMAboqsSLU5fBkqvGwWeBBXr+B+kMAOxl8fTEv6XKcqsYcq0Z7O91kOTwW675uNYcSg+maDfVyEQ7rhfWbwf5ihyciXJM4rVry4sbKtqMdN6kaMI6CKKS32ry20Y4bv1uN6KY1fXioXrC6Ll0C69zfRvRDcTB2pd8STmLr4SBlAqcJ2sI2tRYbB6EaTnqFNVq4Kwrl1cM4RluFvtXXNQovaveTwYHzCJwaesRGAnMKThbW/JRVKg/+hfDHZhKZBHk9GSUBaBz3q6yc01kKFoMdcTdR8z0b4YKOWmHZXJLESYEDCk4S4oFG26Wu/lK6ZQtODIFzDYljcUbx9b8oZHqtX6fA6Yq4xs4c1rIoFJ+BPZgETv8EWK5MQ+rx6jLKKC4KnFpd5Yxq89QGDpXQhinMLzrpxw8bhUpDXho4NThoL2Nx3N+MOQ3Vp/84KwZ8uC7CEVEolurREuk4h5XL6/GqfN6+aO1WDJ1k5A+XmJnL6+tVPcPLVZETy+SuSZIxUhcdEzm5dGAn8SHAKvt7vS98TYo1oXHg9HvA2+oNmOdCnadCPpNh1sJ5YhTsTZNUBnhDIXGapvAoO+5ng2oxKEHHOaxZ5+iGmZWer3Bl5OSlo7R7Qy8PnF5sqJXAkAHuJIkxLqQdEgZ5KMWSYvDU75+PnFhgeXWpZGbbqWVmrOq+RmvcwKlhiZ85HCTMcGMETg0FY/oWO7LJlYdLabT6DHf9rLmay/RQ2bYKxSiUoJnjjXXfgdNPAh9vNT5Wxzksu1FJ2UaPstUdeXl4rG9eMn6Q11NQLhruuDfn9AaF19lWJ3JiKKM1S3r7EeOTv2MwlNCc0/sUdkI5Yzia+5oVaNEF2by+XxQrpfl15MSIJKqWYIG+nJJHyfxq0ckJVV84ioarcVBWkSM3iqHG/NL+nEBl2RY7Ma3ZH4Rkwh3psOIiYwMTO3aw7dBY3c0UMN6fIif9iAqJPvE2bamFOWQd1i58RJbVo2vg1AK8JyfXKlxQdGLAgatJNq9zRZnny3HGECWynjn6D5PTNykYvpgFzWtaTWedni/wsVZSxA3AKquqzrNe24z1dekUm54eXnbHXEmDSjZNvY50WD6FQDGS1VsiJ2ki0aYZqpqO9zhHX9y30pMZaN8y1l983uqkqUkQGOGfUVg/G0zqRX5erUHKgWKwPg/uN3kym952hvg0gU6RbKiB8S0aq3Qah30k/Q/4nE558gls5f1I5GTGSO0b9ftEclhUKggeN2bvVhbTd6TDsgcscGpH9m8uwZbthPWedfqkVAg/94ucGPRxv2Tzeoyor/ivm28v6WwN5FH4b89Utk1D2uzttHd5hcY906zEyUa97IP105+lDjXVE3rGbeU7Iny4bnSGOiY2oRyWgRyG+nMrT2olDV8nO6wKlpRwajEUoyBqC0lOtlT5RDEvFph83mE5vUTACp0bkqsT5PUelFcmAwz24ASh/rvVX8FG3YiZ83WnnjIeO7yWhMw4HWLrDOzYKIqwauYUOLUcwZfFbauCGKqm33Ztk6pTtZ2O0aU1XTrWYfmq8Uf5M8JTEezaLkmRMYebFWmvsYpKguAC7yg4sdKcUUkMTHc/QgKt3NfTwyvT8YTAqdHEG4X92ZETY/HtGOnfQtfgsFJxxPMjJ3aK1TIJ8voESgURQngyCmVQUtqWKdTkgQKnxh1pOVg1bdlHo1bHOiybdDavHxXlQhXeUgzl6tEYolHXzp6vuXKZhSj/SdNJzTlPp5WW8XRMq1X3CeFAPXNOj1XoJ1UYiIEeODU0h7cDl0ZOfJlOp0i/LeG/kZMXV6O3h4FW9iwJm7cyVJAq1k7U7Dh7V2PfdJvcfH2VlvEn3SOVo9Xa91DtO9phxXxyd/uscSfZRhllNP2k40alSWx555nyD+tvltN9MvAr+3dfL+stPm31gHy9Yxou/GQ8D2J/iU46UTRwaoSkZxijdMF1Fm5TLq8Hq2KknfdGTnYeyUYJJ+RYUKoHoV6H0H8AZOkkRScPjKRzJ/++t9MXLoclNodWJOfGjrGTTeaD7/6Iv52SI7NO7xLYNc2lmGIzfjRyslkjrR5vnSxpMSnT+Zcquxlme5DXt6FYxviKKGRqraVAjdSz1r4SpAVjaomcHDjS9YHTa4E3lDPsumie2IesJZLL62Gq/CA12LhOaUgbtT9G2iIElY5eYZnhZpyt0yf3+cz3xyOY2Q6xrCSxNZ0flSSMNoq2auCbmKykkr+rckMxL/un40AC2xecWH1hR0jW6VcEjgdGjEeltuI/i/Ly5lZN0KeyrMDiiP1bVoXji06s6mHcSypG+qHISVIA3rR5d7zDMsvE9YVfGSyVoGmWG6bj/lWNcmeUl1kYakDeQ89sqPCZohOjRW+oxDlgRu/eXxIiwunrrc9FTz7hIW2Ngv3dUSiXNXTgJnaWvAwKRxad2CpxSAmcWgzzDZJhVmGeeBytVsgeZ+v0vj4e7R9L+XSUl4+0Yux2GCNwakH3w6vlFxitzuPCYVl9oazg75Lh4SiUHUdrlNFeP/Ms3aJnlU9cXNELmyztYf1Mib/E/TbtS5RzOlsrcTLD2zZRMuSkzBc8pC0MXnc42gk36frAqaFabDjSFi+JXQGXRE7e2yR1hux2LBE4Wz3XgeMFTj8PfEDg4oITWw03VcaFwzILBU4thmCxhF2KebGi1zGVhLTU0FFFmILiabVU2KcYyq+bpVzg1L7u/XlpRsekeHSIkwTuLzh5RbPGbmS/c0LdsiT83ZiSIlg7vdU3iGkVDiwrMzOe29TD9SYuuiTCLQo3IPy9V7n6ZifLG6lbt6/nLRA8D6p5dcHJW5ptm3HjsGxVk1nFPYInyxzz4/sYRtYSR6+iAjroc6DSJ4fNuLlxvaI5737oGhFuU2UP7zCVLdqVQNVOWFcI79IyL0V4I7CDkcWi3IWyOcJUgccUzOkmq8hqzNiH8G/rpxcO6zqwakxWXZuEDFjgtoKTPau7qv5W48Zh+VVWqIsQdhbYdDiI4vrNVf2VwXzNUiZCeQ7xsCP7GTx5FPLCZp/UefIJMPzyl6c0NoA5W420VUA4G+rmGeEtCruDd6qbVm/lOloKS6TMKhXWNyRWMiwQ4eYpZe6tl+iiDi3GzSUJSW09iBr1GGFcOax+aijhtCiU8+oxSCOv6ecpVE+Tvq5R0hedvKqRYwzVl6/Dg9sRpvVvlkAEWrJ0H0avdWIHZcQN5sSrtodCOQMGm/yDMvwxI2yoyvy0E7bcvKnPcaallagyXcSzXRsn4+QR7F62BbAVTAPn9E3nsolEkFrvM5mCS/5b5GSbevup9rpx5bAsiXIS/FOUviXC5vc7MYz1MZPAqR2vX5lAGrfaWQROrwCOSBtAlec22JANq6UWa5TxYqRVhzHMPO9EV1MN5R6EW0X4R1n9ydNuAu8pOLGC8TUkl9ffm1Miw9mUsdw22wabgxq1WKKtKpdEebHT564MYYEEZkZgecHJ1GYbalw5LDNW4NRWVv8nwuGFUMxZjJns5HStacJfUP8y2ZldS4+8DXt7GcyVSvws028I4YNRKHa601Txp7cr2S8DH41PKVcfT1mC8GMRrtUM90VzxWJ9XoJQDT5oixJsd6eTvxhkzBNP8napxOK2QJljMa0qJ2CA65qBOxTuVZhtK7D42t/HCbdbDtHXfZlJvGk4UpEqdRiXzfrp7QRdf32mNvtDOO4c1pwF+tLSKu5XYVHRiRX9jqkETm11UDkEaJGjSE84ZvP5UgzdXPlJWVYWdl3kxCjsGy65i3QqS/iwKh+1tITVBhCWUOanZPjupLWIbv+EpGnLfFNfbiQ845My4AKDEUqhIKyur/Wn/FvhjoxgK65CL0TDBdbjlW+l9lR5pFfYxuJXufn6Si1xDIKddj2/vVHuntTLawbTteHG67QOn4filqVrM61e/shqpz3uHJb/Osc0WiLsXwjlhmqN0Yx2CRFC7LDGJLZmTmsFXKFwaGqO/zSo5kbXu+WcvlOVz2BB7UQUSzW4BvjK5jty45BwuqqSdRwgcCDCmrDGyt8Vfi/ik3CPqhf6Oa6/fCoV11qNkNbXyAnHWHwsxjaz4N/VhbD5x/bNeAab2meFSs1OYXtaUQA9Ph1WXg9EMYC/30RO5jT1ho3QeeDUiCYSkoiW4QYNVMtewmVwW2orZE0epIe3prdi9doqRvn8oieIfV6eUfiGwpeHW83Ndrpn2dhx4MQYzSLpweCkb7AC6LKw0LaG/R8kZSsRtqz3NDjI6x9RPIy1pX0UwjWP5OMKii+ndOoo9ux672Wt1wWhPhPHJWvm2ax1rHHpsOKH+nZgjgj7FkLxKAljIYHTH6VyolQmsUXhTPnnWOgy83zdpGcpNvbz8awKs84bBqKj1qKfh85ZyncRkgJl4078tir5wXK+LN9qKRyeAWPvNqz2fiQGhaekot86kmHvwjy5Ja1LjMF0hQhnFkI5txY9B/TjUSz835Rldpo40PnNCXXTEjzg+fd8Mx5bNZ2tuqeHq1s9qUjI9PCShXPlz/Xek2quG78OK6/vQPk2eNz311RjjGa0yTpdKJBL+lb4WNHJhc0Yq5o+c06/pXD0wLaDIaRW0585q1VLudKgcuP2ZYQ3RaF4LPlEfELrgxyH+tywg4Dng9yWDyX8SITvTc7w8MoSf0D5b6+waTo3yh9iKH9CKPX1sutoIHo8LwAYxv0k01HgXQUnRmyymiQwwMkfRTihEMpXq7HNRGmTMHRb5cGivBgQQdNk3DqsOOPb2JcNJ2oNfPWmWXRAx4FTKy/Z0tIJRPzL8VDkpB/WuFV6JOPMdLptDxgK6Sarja2UyHBiFMrXqtXJSmRKcJMYlVhFlvb08OoE8dSC7+UlHCFlDvOop/FKJW77BPjg+1eieeJpz02yeT1aFHMcV0ZODNGyXxI0VxWOLYbyzWr1HKpdzumdyellgm4xsG12gW4vJV9WNTPeGj7cC9t1k0xT98XpnxW2LWfYc9E8MWy2psm4dVhmsbiuzlYzv4tCZjQ7w3yNu1Q5QTEqr7VEuF/Vb38mkWH3aJ6Y02i5xI7cMu9nVXY5trjoFzv+/0DRiZ0qDisxIoVBqFhSpsldJTjU4kyB062tvs+goAespB4S+I70cP1QTMwx6oKdCq7GaO2z99UXkNup3o6NcBgxKYihtZoNlquycTEvhmyxmqRQW/3fO5VJe6R7Wu/vgVNDHX2VwAEFJ1a32jQZ1w7LbyHgfuAlA1+Aplk01XGMuW5Z7j22NQWMRcfYjL8ZOTEyijGRwKkFkv0pnNWAxWUx6Wfh45GT8wdTzrD0Jz2Gcf59OPldKnEnv+0uQSj4tICKKE+L8H2EH4wUS9zb6XrLK5nsa+lkNimeIfZv4tQMexH2EQgKTmzlPGqJETMNEWKKV1U5upgXX6SellkLdBspcb1U4m0mf+6FV3RrEivGiEviZlqhf9GJHXY1Tca1wzKr+WN2MLaa/zy3Nts3O08kfafi7USS63S59uCk5MEGJ5XXYstFp8v/mnZnh+k4Vf9lHutulN8B70pd0idweMHJT1brRlVyeX4eM1fbT1bO8hlVLrMguKFlJO0VCihfmip8r9rVUILcKfDDgpP+voK8noxi4HANh8fJOb1VKzWMJmtsQ5P5xNtRQ8GoHFgIx9WyfR6L+9yqMRPG61asPMe9wzLCxyws9pDF8NmCk/6VQbNvaIxP5bd+ydg5p9covFGUUwp5+UyzdRis/5hx6D/9MaUMu1PGYGn6ER7il/IN6eB54NTiWxW8KVs5ZThRldemUhnKUmFqPr/gxLadNUmMi/5agROTchxPdFDiNoQ/ZmD/RtN2BU6NMTupO125dG02GOyjFsPdWC5ZEn98YIsd2blVFO01GbLFjZNnGuXEZpcyjX+HVQnkHiTq6Yh6VHlNMS+W8tB0SZEoWK7P/xVCuSAI9RCEKwX+NQW2HattReD0kyinxtvVS9ffgBOe/B+XID7uFPskyqIcFuXlx56cFKw20eRBEb6qdn1cu+dr7zJ8uN7YXAx6aDGqJzLwSnNM5iRWCb8QZRPJ8LZmJAEbWoSIh/95YTy3t0VO0vjs/c9JkNcTUb6QrLJUeF0xlBub/iC1+QCBUyMKORhoGjhlYoIJ4bBsskGoP43zhH67/gbMbnbNk42Zy+tFqng4ZIX5RSdhDJcc+aD3GJTqJDc+Xv3ZSdsOwMq+Xjbadlue/ccD5PvzkyqNDYrlOFHmxuUqzwJ2qmcrK5NHEM6MLIXEiW0R65KsU4uLfayfjsxpJgc3WnxN4KPNZHBe7bQQvlp0smaWfYXp2JybgS9aTNRiXlcU82IUahNaYhb2twIfjZxc1ExjTBiHFefd/AHYQIV5xVAs+N1UCfJ+FePJPNP5V0GSia+siHONzAm0VOIDCavj80w7/XlYtoVWvi+yWhnPYLqtAj63dG3mjTYuGDsCuzc9ZdjZsuJT288vR05OaqZxck4NosYcst2nPxSdJOzNawybdXqqVOobTf4bhWzU8tPnZhqjjr67DqsOo1VzSUwbZXGjkvawY3GuPFTNdfW2yTrNC8yz61c78q2QUlhA+81WulJ0ki5nqXe4mq+LA8l2GjgZtfwwQ/oUtVVgdj5HiXqC1jVwpOxkUeCDC51YsH7UEjg1ggkrzfHsOFmn5wh8ArixF97c7G3zrFB3ywh3JhPphfVvdmK1hms6rLN1Y+nD+AY9q3Mrco9GbeAmd5B1epU/Ge7GsBpr6Zjk1ILglkxa7IXdqz3BqkeTdB2hKrliXmwr6CVeVdgLv4Eqs9O/1TNWPdcETs0OFoPxL99ABu04bmXVAj4bPJZoCezVKKyxnNM3aSVQ/2ft4YBMiT1iJus/lmCvVrA3+7QJ5YkEp2skJ5RzemVSSF5vhUA996tdr0lIZBuV0DvcPCfMlrDfUVQyqS/1gVPhI1Eon27Wg5CGlpEMOxfmyb3psXJ5/YQq5wAP9EL2Zict3xoGoX4nFWi/J3Kyi+kYA+59fTBAPIVbn4X9Ruu04m26UXJtInAKPTyiq7hCheU9GV43VHJpM+5Xwhvp+xZOikKxXLVBJT7EsdXnhgLXFpxYTeSElazTWwT2RHmrHdA00xATzmH5lzGpp1OWKezQLFKG/qVyJaFy+sDVgoGflVb4xM2d+oPyzbzbg/QdE5De2l9TJ+yPsq/isayefz6U3yM+cTL52809U3nzHR8XT1VejyRMzcDPe3r4cKnEHSjrlTMctCgUY3FumQROHRD6AZVPRXmxE9BBxScEP4d9fLYxUoyCk+bi0LfMCvUNFIT6O4RdVHl9MS+/qK+X6q6akA4r3o4V4tXDr/um8/pmVOCnv9rpzO30rfF5RmVuthKXkbYi1d3S2lrZy7f2c/w4lQxqkC4Vynvhnwlaqh3hi3IkyjvjVAh7sZ/rgR3vyItxMNYk2by+X9TzJT6FcqCIrx80B/DJghOLX7VU4oMQI6I1GTKBNFEqG6oVfHt8sT54+WInhlw6ISVwamkhL2tFydmEdFj2VMUBZzvtmSTCewuh2BK/oRI4tVIcf/zfBy9e7MTKQNaQINQLbXsK3N83nVc3w3kON7Gc02PjuFHSTAWuU/hHXMKjvbDBElg5Gb6F8paU0/qH9nBwcZ4srtZ4sZO29isywlFl9WU+u6ulFIScOBanbjFztpUCGbNQYSS02nR5U7NDC9Xadaza5Zw+qjC9lOEVd84TK4VrmkxYh2UZ8AE+CdBA4x7v6+Vlo4ErGewOpaFJhlph2XX2sqxaya9tawjMjZwYVlPLJDtfT5Vy/1G9jftAFPKKIO9RQt8APBo5iXHpVXLz+bIqq7H8Chy8RinPIDOwesEVsNiq+wHLnLd+D7BVTS+8o5mHICMZNHBqcDOGYnHfSIgas8/Srcp93InwYkukjdzYM46PNL+m/G75csJSVab0KFvVs9quRa+J67AqaA6vRrkVYW2Un0V5MZSAhknquN4CP9sXnPxpqM6zeX0NZX4m0FvqYZdmf6kSPbJ5nSvKfP//Qgn1hdqWl7WHCN+N0RZujJy8Lq37LKf7ZGy1VXE48eVcWHBiyZ9DSr9NhFtQj0dlrD739vWyR6M/GLXeyNQHZmnkZO2Rrl+tiLwN4LhH0rcZv+/k9IXTwMcx+5ax3uLz5OlmjJN6xprZffv3HTPX2nYw02h00sCpFeyeXPEFZEdCGQicWlwtsJyonhcwYzQB7WosHzi1Yl7bilpKwxWifrWwb3ytlS8ZuaklU36m6MRn7KclG2oggp2yBqm/XxqFHDvYti7r9FyB01CeUOF3Avug/MOYnAeDdalmDo1sk8r/WhrBtJEy93NOX6Zgp5y9At8uOHlnI/XpiL5SmO7ltXhRswv6J/QKyz8Qla2hnZIZ9vtd629ArlFlO4FTQzDwGfXVnKDEMCpW+mGO4nuRkyOb9dAmFOOxbjdssCEHPfmEXzEloHkGpZysnlbDpkrr5OGRl2Ew0EaKmsiPZB2OLnxEDAvMy2ynryjDbxDWUuVxgekxhtYbWpFrVY0dY2SPy6ztcDHHAU77chHsPg2Jp1XN2J3cJnBqkNhrlXvYdtFc+Wsz59J1WBaAN3ono5WHFzSybGc1xhxYjZllqJvqccQFC0hv0iwIk8Dp3pZKEONA3V6G91g5TDbUo0Q8rLSJHRC8KHZoewxXMG7IovoMVjCczkf6bRmOjMtstkYpIP0op4pyTXkKxzT7i1zLyzPb6aHlCvGtrSp3qoZRKKYMuyouiG568W8t82lV2yToHhet39fMcbsOK7Zuf2xFea5vLbZffIZYfGVUksJxshXWWcW8+Hq1kSTn9C1qrD/CCgPGG2krOVJ/q60IKpC/99g2RuF35Um8+c4zxU4DvQTOQEdXF82w20ingDFrjqE5WNW+F4G/CByj8D07RYr/+JwoHyyEfHMsTgOHs5VfLS7nSYvjifD2QigJOsWQl8WUYfasGPLq7ZGTBFurltvS0W0TGPBuWkMLb2MMb2KooEageVXkZHVsqDp0yTmdpRVkA3t7a+IkjOMpH7cYT5+w42Inlh81KokTHq1mzogg+kQ4cCBky2oJlPFoGdhroRPbNg8rHmfrMb9CM9utUYNoqzrt4YPNruEcSc/hfg9C/RvCVgrnFp2cXk1fgdOEqLY0eS22uO10Md7ECSOBU0uifQXwmsiJ5RQ2TborrJRpc07PVQsKV7YEC4pOfOFyvRInqCarl3zkxLKpq5IYe90KpN8kcNMUeONoi4D7y3CM2DTD0UOtIHJ5XWi1jylFb1z6LAffc6E8N5LyuzvdYRU+pmUPcFouiZxUwP/aWPox5ZXvRnk5qhpV01vpodh3qumnU9sETg1E4CUD62WbMZ+uw0pbtRKAN161rb3TGiUMTbyiSeoDq4phpdWZvUC3K5d8TMUA/hcURuFAY0IOOxUcsfTEmgRO707zBaIYQmk/OYXCLlJhkpmWIqJ4Pkt+8Kf1osiJlfy0rSQnpwL3F5wMdLqD6h1D9diHaSNqcHRta4QaFcvFrDmtADTsOqwBNyd3lm5W7uOShGdvtNX4QajP+jwv+ELkxKc41CIGfSLCjZ4yXTkjyosVS9cks53uWgajXzJUzce32JHNR4L2DUI9AWHIAuBhFRAeQv3W2pyj9GfFVy5qOC57TcYYoXEurx9T5XyUJ6O8eBSLaqS/ADidZFvNheOgTeDUTga3VmGfYih2yt006TqsQUxrgdRJcEdC667w/mqorwa7S4FTSxbdDrgscvLueu7krPm6R6bss84tsOsxo6rtZ0AW/eNxeoUF3UeUwKkFnY9QMKz2NFt0cq0hjCZ/t1q6vyj8xjPqKGuTIRTlMcXnank0+lwAACAASURBVCV0YHZty7P5R5xs3CDI6/tQjL6MyEnV70cKecMK3bczurNqx+z0dgmRqiq7FPNS1bNV75yrviH1DtCp12VDXUeMlkv8tmeVwpH1UBjlnP5KLUESfh45sRKUuiQbqkEFX2PEEbVsDwOnlm5wmNGxk+F9USiWvV6VrLaNhLPNDv5CodiT4S8JYWrS2Wyne5bV62jbxH6k0GyobzA+QoT1+wduARRJVZMc0Cgpyra5Rk4GOzgYtFt/f8SvYs0+R0ShGIfAhJDAqcU2X6A97NDsA5WuwxrmkfJMKcZOLHiMqHrwflJ4U/dGTnYezRMc03MZ7MqUajKrg7yGKBbot2Lmr02B99dSq+fTK8ByjIxE4wOFUL44lP4xfpZhIVnW9/mb78iZ6W1nbr7upSWuTrE/W/rEbpETI+FsG0mdkv47crJxtYrFTETGQTm11exM1erYjHZxOsvyip9mw4ITY/RumnQd1gimjeM/hsr5IoNCycCHCk4sI7wqSeGFV1WfNlKncTmMkX1uZ1DFK3s5cLAaPL/aqZC32oN09RQ4tBZnZdeleRVV+HAxlM8Opl8ur8er8QZaHWKGM6J5nD9YjpUxBql4jsj14n76tIedmv1VHsmm6d8DpwbuaByNNX9gAqeGZju7GrSHWnRq57ZxOpDBC/VFIVOanVvXdVhVPA3xad1N/bTrNbDd5PJ6pCqX2zDDYYVXoUZ/E4NnKZf5okDOkjPLyl5pEMKZTrftqeR/vcgA5lbB7vXEVGJEUJ9TpHBB0Ylx+PWLARD2LeeK+IDCtosfjUI+P9xDG5e/GJJpst16oG86u7YaUmcoe2edLjS7Aj+NnBxUy31JYfgvXwLrjhaRtZaxx6rt7Pk6s1zGmLgfjpxs1Ww9ug6rSgvHTuBXScqDBdF7pnLySAXKgVMrJvbcddLAiv4ZZ+v0tfr4mpGyGh66EZwmSXspyNpSRtinmqTPQc1QIcuwOjFzLt+JnBydtIsPAmylt6U9rCKcVk1muF0/MDlVlC8W8vKBKm9FU5sFTg1twOKXNZPu+m1vBYyxqmL3pk6kRZ3HPJs/MtjsopO9mj1s12HVYOHAqeVnXZ3KT3pUhQ8WQ7FEyUElrlOsnJxkeFs0b3CSzhrU6G8aF0tbEN0Kli0m9GEEq9MzlIiVCMfWEmQfTIcg1D8ibG/bz4KTPW3VNQnOEip4WEYrDxxfa+wi5/QCz9koMZzNKE5i67HdYNfESa9GNzZizG6w6+NkX4vnTBrNyXKj5tOKflLlZ5dHTvpJeJs1dtdh1WjZGJ3gEpT9E5YV4LciXDjYCsMXBj/NEnsxm/EQxy+JxdQMMcDu50qrnAd+HNnp4CjITf1qKNTrEA5A+I/C56XMR+PA+f+AUyPDxKpjjNjZXo5iTNg9/hSzh9dE86RSyjQGshpMcg3b/rSqgVPLQ7Li8pa8wGNgptWGTEHytCQpuOuw6rzjlmCqq/xRvzH/JvGYR41Pb2BQPnBqAGeWtHlW5KorgK5VrWyorxPxuVqmy0p62DWaK4a1PSrxlPZUyGBjsS3ixQKu1lXVQEVmLdBtMiWMk3BW/NuDfdPZZaziWUFeT0HxzMWlSWyZLgqv1ojZvB6DYjG6J4pODF9sXEvg1NjDLb+wJUgVXYc1yscpW6ENM0xy4/jzYqdywLHJCx04tS3hK0eTPDqSmvGpoMVPknta7JvMwaNBnYgxrL4SY4XZpvOhHti3kTC4seO31IaNvO2E0wuhnDvSfJvxewpwcWUvrF3rqarpFMPN2P0flCmpGXqPZZ+B0+uB/RUOqydPsVbduw6rVosN1l5VZufZowxf9ewhFXlQMryjME/uCpwaUagvYi448aQUDZVKDaQdqRvy56PAM7Eej4jw7kIodlhQlcw6RzfMrORkOylTYY7PWH9efhQ58UwxjZQY6NAKzW11aLG4t0ROEgabRg41bF+p8pp+fsZaB49DBmZ/KwF4VaPYsWvVo1Xtg1AXWXJ1tYgeo9Wr67BGa8H09QbIbximkMa9sgD1RgrHKfyh6CRxaA0bOXU6tdQcVCbDPaWSJ4utQBdXkXkdJ6Uapr0hKlRovvBsyF9TZaaHM7aMf2XDRsMZx7A0Nxg8STyubW0/1WyokoE3IAj1GYtLKnyr6MRysWqXysfDisAtuffAghOby7iVrNPfC7y0DC81sMZmT7TrsJpg4Vl5faMo30klSBp9lGVNL49CXtDo5LrAqZWE7K7KDZl1OdigiVOAem/xLkv5dCScOjBAHlPFfz6VrvGswBfKyheT3K54m2OngZMF3lFw4vPKGilBXg37y+JliYzIDdjI8eMEYcNntz31yQUnxqhUlyT1oyKcUAjFVt3jVhIn3wo89/jejFtbjunEck43QJmvwnFpMDuL0aycxKWjiS2lJzbb6ZnlBDcePlZ0cmH/7xUKpo969IHKi/hYSXlzppI7tTuCraisMNvkYRQjBz1nYDA9e7ZuLH0eQnprS2MoODmsGcbN5fUwVQ+17EWEwwuheMjiZkvg9DzAJ8aWM+y6aJ4YvE5dknxAmnnIUpdijb7IVpPCKtvER3Yy7aRSa9pE6a6wmmhc63qW0x0yYDV4CRtNZUTlHwgLPU27clM9gex4K2jY7L0GGxOFbBqcxcFS4vVl+F8GJqttTYRDVf0Kb03EBeVuES5aCT8cDtXUZ3ErZyA8J+uwSZpgopEm7C/WrnS6OHKyWyP7H6wvH3da6u+HIUoUIidGSFK3BE4tL89QV78eOXlf3R21+YVxMrUlLf8tclKBE2qydB1Wkw1s3c90ukkPnoPP5G+AlTCkbd9nRKIKS8QTtrDY4FxUKK2/Pt8bjMXH0CQQLH5gWOmWrPgUeDSEKVVO6XEt83/F+ZKQTgx7WRqfPgPnLHRyRpXj1NQsJshIYyrVhNRa02Bx4/5cIqWEcELkxNIS6pas00/HEDvXR3kxItpxKal61YWjdfLVGqjrsKq11Cjb9ediCU4n8RVWcURG2a8Mc1KxruFHUf4j4qFuKoQOg4uBqT0J2H8TBhMLli/qEZaX4LUCp6YC65f0wqk3OzGHN6TknL5EwYKq9sz8NXJizM1NkYGlO6Pdog2nZFwnmhDcXr7FjrxzJHDDkSbdr79yZ5SXJMdspMs67vcUdtilkZNjWjGBrsNqhZUr+TmWwW0P72p8gx4sUNlbBKvTM+wtg9q1k0SjTB9Z1GfRf1+FhauUny12YvRcw4ptUwW+nwAUAv+OE16/MdyFqa2OsQDlinmxuFZTJHD6eHxQ4fO/+jZlp4YnlFZO9Kyo3WrgnoljZnZaOSpJ2LSNlajo5FWj6qyNLw6cngWcoTC/6CRshapdh9UKK1cclmV0v03gNwUn5piqkqzTHS0tImmsygsEfhDDLj+iPexTFzyL00xWebsIF6Sc43UyieMKZ4qRqK4hfpWl3GOYT770x8lbq5pEHY1yTi9T6GdSHg7epo7u/SVJ4a79W+Enz8LbGoGwkCpX+W3kZEa9+rX7dTmnFsY4FOGo0dasVjvXrsOq1lKjbJc8xHZSV3Cyab3dBaFehGC08csR3jvaB8USRXtWMlfhQ7FOqwTOnQLzB8v0DpxaNr2tSFb2KNvXc1hQ1dwrSBHm5BMm6pWqbJeG0amqnyEaxTWe/4xRUP+b6SFYOFcsgDxqCZzaStW2SL+MnKQZsUfddzt1kNB7CWQbyZ053By7DqtFT0BcwuOB/+rFxYrjSPfHxc3Xrb8BhwwWkK9nSsF8zVLGUiJ299cL/6LM59bfkE+lx0jPA/hc5CRxdPUMO+w1vmynjwf7i8yVT0V5sfjbqCWV1W7b2y8V8/L+UXcad5By6qtB8jSq/3boZ2+nvcsrBz1r9Uxl3ZFglhqlc9dhNcqSI/STxsVS5Y3FvFxX69A5p1+1jHnAElGPipz8stY+hm1fyasx/HdLw9iw4rf4jWT44MJ5UrD/t5jbWnCvggXdl8okdhhqC9kI3dJckUY1tkTYfLTbtnTOFfDPXtjtZicWM2uIJCwyAp8sOPlEQzpts076T3OVu6O87Noq9boOq0WW3sPpjn1gqyNLiHxvIZRLahl6ttONyvD3GDPdII+PGC2x6lDj+6RX+JYKb/A0XRW5LAP/t9DJv4NQT0fIG+5Ts3n45oS66Srh2n4Go1FSScWIp5f5GSl/L8Ohi/Lym1ruxXBt41pCAwEUMhwTzRMrkRp3EjhdAJzZ7FX2QMN1HVaLHqW4Xs7YRazA9+zIid3sqsUD3lXSEZ4V4dhWZIDH20QrQq4E/ZXnVDAyVjthNESCl8QT2K/hq72UZXJO71PYKf5T3bhL2bweJGW+6w8slFI5w0GLQjFSj4ZJ9izdXVbF7DlwTOTGp8OKawg3U+GQYigeUbcV0nVYrbByPEbg1JJHLV2hJtSDGZ/UdScv55EYU2uxKvs0ugB5KDP4WIVyFkKasVkVrhN4vV9lwQN9vcwejAyjEeYNnNoW9aS4r5rJIWx1WoJTBT4W97FchVOLw7AA1au34e1rGc8EVM6w56J5UqH+GkcSzNc5lLndUkF6YeNmrfQHM1nXYbXwQUpYVYA/Rk5eWu3Q2bx+VNQHxMsqvLcYioGmtVSy83WGlDGcKisxWuO5Ebi44MTDJjdask6PEDBSVy8lmH5nFTEnvz1bzkmqnNafnFvhZzwxmse3Gl2EbroFTg0XbbH9W2BOwYmVX40rSU5BByMmafZEuw6r2RZO9R84Nfx1Qygt902nt5pESAtyT66QTGziExFhRj2QxI2YZgzHvIdCXmDPQfq8hgxnNRrm2FIvZKVPbk1qIYdl0c45nV2GCwWsDjFNhvq4CicU5xnXpBjuVsNl9nzNlcu+RnRcrrCMKWnVCo+5ljHYoWYzPQ+8QV2H1fBHdugOV4Mb7mHHaiCMs3n9kCifiXv9aOTEQ/iOtRh+FsopWsG270nrE/M3LjJ+PpnE1xpxipiCmbah1gDYy4a6uWR4jypHGj7TAPtY9v9ne+ELI5Ugjdauq7EkZXi1ATiOts92ur5/ta+MSZ1k12G18GmICUcNctgyq0eElN35Al37Bc9hLC6bAY9MmsLOt39CrE6wbWSP03V63xSuRRm6BEUxRuQHM3CTObEp8Mta4x4JFG888fsEDlNhe4/jVeY9/ezcq3vO58hwgUzj/GahSwy8EUFe34Fi9GdkJrH1wjPFTnbHhcQHR/Y8biNwcMHJT1o9sa7DaqHFYy6/W21IgQUFJwYLPKT0nwwa/B7ko1AslaDtxKdcKI+mVloPouwwcOW1muIVZAQLSBsH4G22KgNeLvBUWYjEVm6V7ZwVehsO1wu1QuQxkhjaxaUqXDlV+XU9uOwjDTDc71mn58fB/RVRyNRmbT1Ho2O91wZ5PQDF8gf/3Qtb1frRqXfc9HVdh9UIK1bZR0y4YKd9JsOfFFZKU+xUcWPDC9VJTC+eIZYw2pYS1+V9DbAcrhUZ4a1lxdI4LEhvmFAvGhSPqzGzMS7G3yj8WMQXlxuEz5hIP9pozOM4Jko0adAgr79BPdnKuVGT4IVGUr3rsEayUCN/Nyfk+F9cvzYs6FkMXWzkFSa/jpwYpnpbS2p1YXr+tQ9mJegRdmLXt4JdRXm1KDuhHB7zG1Y7p3La4SnYy/MQGR7MCD8pzJN7q+2oWe1iliGvhyhhIS/zmzVWq/udfZZuVV7lsdzIZJidVD60Wo+uw2qxxVN1ZkyawgZDxaRWi9lUQSLR4mkMOtxOTteaht8ymHO1Y7jCKth3KCRTY9K2OFSm7Bl6VkdDFVQgKpd52mBsUrk/fmxVXl/Myy/aYd6JDmlew7Iys5EZ9GM9zwSU0HgDinmx7fqYSNdhtdjsgVMjfPiA/woL+xdCWQN/KVigL6fEA4lqnRS8NXTVjFGcwXqx/jdHThI2nLqtPfMs3aJnFQ/3dyC8OwqlUmLTJpLCcn88cjIcyGKbaFydGjGEtEEOZUQ4aiyC7YmmXYdV3T1rWCtjBhbFA+WJ8H+FUAyPajXJhfoFFQw9oKxwXtHJ6Q1ToAUdZRfo9lLCVj9bx8P9oBeOH01KQUyE8XyBcp1U8s2a/qvO002nLPPgi5lR0YQ1S8H/b+9cgOQqrjP8n7srrQCDDAkJwghCnGBbGBAPaWakgGXjRxJA4hGbGJLYMgE/sCnMw7wkTY9spNgIYhJs7AKsWAFXYgJxqcAOTlxAkHZnVxDzCA+DA4kUi2BA4iUk7WrvSZ07PaPRgqSdx87cnv27iiok3dt97nd6/+3bt885DfSbyevlIlgKxcaph2P/RjOyNmDKW08sN9IZ7909gVmLdUYcY8Bf+Zb0I3Ocdm9R/Nrvc9nnxMuLebGKLkE1H4d4fznHvBWRHZyE0+sN3/EHFjdUrbAuKObFVqupaNWvgwp8s9+J5SwLvvmjDM9CMUUifLIVMay7gsYVVounVJI47jVYNL99sn+y6GRatQk5p1b228p/Jy0Cjuh1Us7N3mJrGxsuV9DTNMYtFfEFnpiwFXMeWCov1trziC+stsH1mXaEKO3M7nJ+LQWe1y7MHlgollM/+FbJbqF4RibjqFadZ9sZOApWG6ZUNq8P+4OO214H9qrO71R9Gr7R7KRteLS3DJmEqgzjnkoSPmCDRPhwrSfAfSxjJQ1MvTnFxoLJzMV6VBTjYd/3vxadfHQsxml1n8lqv1R4xM7BXdBIcdlm2U7BahbJGvrJOL1FgM/YLSOLOVRnwgSwsuhkXg1dp/JS/xpsB2atfqI1O4s2r+gkyWowmpas1hR3lq9N08qzqpbiVo0wu3+RJMHPobeM0/MEsMrVL8cT8Z6BK+Xldj8TBasNHsgV9BuqlVQnlWKbfr/gtaof7IVFJ1aZJPiWxPpJUj3awozKonX8aA95VtdFtJsnAXvf5+SNdoPJFvRTUJST9L1QzGNKJ5xuT1Ia2UcEwR6W77/fybfbzdrGp2C1wQu5gp6vihu8Ayql3/3XNVuCJ00EZ/XlpZJWpQ2mNnVInyvKMla8zzq2cByLCRxN8r+sU/vqmBR0UODlfid2cr6tLed0hSIpz2bNindYOpnyB5W22tbo4Bmn/yzAqQCeGpqCI0eTWaTRMUdzPwVrNJSafM2MxXp4V1wpcvrzohMLd0Amrx8VQeVcVifmU/LxlBYcfLDHarF/f1vM45JdrUyyBX0amgQ7JwUyinkZXd3GJvvOuvOVhn6gQPVe1XWTgKvaEV/X7EesCtLfFgEzep2U9+eaPVTN/VGwakbW+A0j0iVv81V03qjaM0gG6VK8a3VBLPdQRzV/CNRWjrOrHuzfunvwiV2c/LfXyYy//sdFJye1A4r/Wml7b+VakRaY/o0icGW78pQ1k4P/Sr0SiggCl7YtCQpWM71dQ19Zp0/6Cs92duEPiotkdbageSic72Zw6jTs2c5DejU8Ts2X+kIX31NgbtXWxHqfr/4tp/8zTn9eKUQBrOh38qmaB23gBr8HZ9k1zqmKaRyC4oJiQZKUQaE3X1btMTuGYhk0BqfgxLS8CpbZUrDaNMuyTv8JQFI5WYFL+50syzq92f9A2F/vMji6TWY3dVgL+Yg3Y5kvXVbpW4Gl24CvVccg5pyu11KqGWt1F6Ko9QHMxm2bsVCAC0dkL7Wubig6+VKtfabxel+VyYrk2v7ic6qY3qq6AbXwoGDVQquJ11afjLZT4H1OTsw6faaqEs3aopNDmjhkOrsqZbCwXPDLkmo229uGqAszy9WYs06HyysbEVzZlxfLLz8mzV7ZJz6Pj9svDwWO30GoFK+qYHkc4eY1iyQp2xZ680VRLTOIpQJ6aRjIrHHybBqfi4LVJq/MzOtxkWCNH34wAqbGQH8l/k7xTLEgh7XJvJYP6w9fLoPig1WJ/14rOpnsqwZZgr9yO7foxFajTWm2iR4NYZbEOFoFVhTU/jt0ROdvKvAP3YqFnbavmHV6I4DPARgEcNJovto2BXwdnVCw6oDWlFtKCfpsQz352iXA2f4TeTl1xy1FJ3/ZlLEC6cRWNt3rcbFEWFJVwNXemddAMKP8GAIsheC/ehR37CqgOingIfgsFAdIKZDcqlVbXq3XfQqcHgAH7QbPkAD3Diuu6qR0MeVnzjj9jiBhNKwRzuzPyx1pni4UrDZ6J+P0+wL8hTfhdp+t80T/568XnVzeRvPaM7SqZApJquSvAKh1Y93i90aujOp6DguLAnAbItx10HuxqhM/fmSdXgTAsoVEpdJn6f94QMGqazo35yYfZ3e3Dw62E+4WvnJysuJSfLmvIOVqOc0ZMLBeLMEfgDkKzN9JWbFGn2ibZS4VYIttNANYK8DTcRfW9C8U20/s2JZz+kUFkmwXAvyoz8lpITwsBauNXvIZOi1zwT5mhgJFAbJ+En0pDcGmbcRTGXrEifJ7ASy2ohSx4GhR2GudMduh1JhnuClJpVyK2fylSBLDiK498NDqy8ReC8dlyxX0k6qw5IeWMWT51Gk4N5QVJAWrzVO2OmWyvYZUPt3bob2UVslpNbKsUyuVVToZn7LEfa1m0eh4WadzoFZIFntbIZSp03BmKGLlfwk1ioD3N0IgW9DvQTE/6cPKqAv28I6pxBg20n/o987O68HDgurafoeONmA69Gdvtv1JkVfFv/ivsD/edz+c/pMLZGuzxxnL/rjCGku6o+j76Lwe2FN6VdnRF4qNxYJYyaxx3apTSgN4qOjEys+z1UhgltMTYsDOWtn2wyqfT8z2TYNqFKwUuCspj6W4KPnNJ3gVisl+lZXplOj/ejGP+JLaMel26uVRz325xfoBjbHSi9VqVfxxGk+xj+bZKFijoTTG12QKOk8U5bLf9lsv2YQXYNy/Fmad2onrQ60AwpDgsHKdwzF2Scd0b6+BCtyeVDFSPDIs+MM1TrYX8wjsSSlYKXDY8Ut0/6FBWFXnkf54tOjkqBSY2BYTMk6nCfB4UvlacWu/k/KZtbbYE9qgyZ5VqT5AtwUz9wBzG6lclIbnp2ClwQsA/Kf7MwFMrJikeH2SYL/7nGxLiZktNSPr1LJcft4PelPRyXktNSDgwTIF/YjEuMO+Blrx064J+GzvAqn+eBHk01GwUuK2bF5Ph2C5fx00geo20yLgA71O7EDpuGrJqnMrnvMB0S91A5lVKQ3ITZNjPv5D7Vr3BCw28Fxv1+p4IualIR97MzhRsJpBsQl9HHmN7rXnpqTyyu8l3Qks15Id7Lux6OQLTRgiqC6qqwep4ML+vFwf1AO0wdg5Tt+5FfjHJBOqYhiC2ycB8zshC2oZJwWrDRNrZ0PmCnqOKuw1yF4LLVzEqsy8qYr39BckOaU9Hlomr/sIsN6vrn755l6Y/uilsmk8PHu9zzjL6ftjwAKXLcPHViguLDp8txMKYlQzoWDVO0PG4L4kL5Hi3yuZCQRqWQsEuL7PiSWQGxctV9ArVLHERFsFl3N1tWu3Zwp6vsS4Jjl0rFgXd+HsgUXyQCdOFgpWyryanMkCLvbJ6ixfuPlocGgQv/PQErEMAh3dfGXsdQB+A8ALqjhuPK0ua3HuTKeHRYClZ/6gr9rzLeyDK9pdnbmWZ6j1WgpWrcTG+Po5Tt+xBbBUM+W8WOUR7yw6SVIqd3Kr+jKoAnytz4nlUWcbQcDv8dkvNvs4Y4HdX+zLy1ty4XcaOApWCj3qf2gtA+R2/4yDDKQ5pydrKXzE2qPD3Th5zQKx1RabJ5BbrEdojJvKFYQU+ObmvbBgvOzxUbBS+KPgK8r8yOcTr1goEeb0LZL7U2hywyYlQc6WCkawf/KFK8I5xbxYChQ2TyCT18sFWGR7VQI8OCxwA3m5ezwBomCl1NtZpw6CRTukCgYG9t0PJ4QWYb87xCbQCljZM6v1ZymM7xqagj9JW4mp3T3HWP17ku9+GCsgOBKAhW7dOGEirn3gSrFcauOqUbBS6u5sXj8HSQ4A2oth8rXQ/rdcEiylZtdlVsbpX/syWvZ8D0f7YFYnbxyPFtIsp9Nj4HwAZwHYE8D9GuHi/kXy0Gj76LTrKFgp9mg2r/dCcIL/Ymgl3e0gqanWGcWC3Jli00dtmv/S9Qt/w4ZY8bFOLPYwaiAAfGypVcYu5fdXbITgpqEpWDDeV50UrFpmUouvnfVVfbcO44GqLKTlldaQAtP7nTzRYpOaPlzGaa8AuWQhOcb1BptufJM7zC7W2RJjqSKpEGSHhgdUcMN+++KHnbYNUC86Cla95Fp0X8bpJQJcPeL0u+UoX9clOK7Xya9bZErTh0n26YC87/hXk4D3h55NoB5IFlKzpVS9plTWTbEJgmWquC7UvFX1cBjNPRSs0VBq4zVJbT3ATi0f48140+9n2H7PKxFwUp+T3jaaWNfQGadfEOBb/uZtApzW5+SuujoL9Cb/6mfnzGyfynYqXxTBJQdNw20h5VlvJX4KVitp1znWsVfrlIlDWKlAOT2wfUmLKt0J5hbzUj6/VOcorbvNlze7xxdCGBTguj4nV7TOgvaONGOxHt49jM+rJEJl7Q0A13f34NpVV8jG9lqX7tEpWOn2T8W6rNO5UNzqf8jt9/FGKPYtXyDAsj4nl6b9cXJL9L06iMfK6XOg+MnUw3FKp68okl862/BpVfw5gPeVX/0E+DsVLGNhjdHNXArW6Dil4qpcQT+mVvVke7NNdzu79Jv+r6yu4fw+J0+lwuARRszO64HDgr5yyS4Fnu9WZFcXZG0a7W3EpmO/qxN6nkcuBj4ExVkQ/H65P3uVh+A6Ufw9hao2yhSs2ni1/eqs05uh+LQv1WT23CnAwVWvi/Z3K4eBL69JUcK7ZGNZ8TAEh5QhxoqrBgpiWRk6otkq2H/xPEaBOTtkjy2lC1ouwMrBKfjZeD+eUK/DKVj1kmvXfU6jDHCHAPPKsYYC9MXAY2KvG76uYWKe4HYR9PbE+E67krjZSqP7//CnEuNqCKZ6bIMq+EonpI3JOZ2lgAWlmz/eXTUtbJ9xQO2DiWLlwYejvDW9WwAABcFJREFUr9Nfe1vxI0HBagXlJo/hVyv3+VCNsg/t6+E10KTijp2STwqyJk3xSCT4s14n/9lkU3bZnQ/UtdP6s6tseV0EF/blsTy05HLH/pVOnrAVpwI4AIpTRjyXZfhcA+AlVXy9vyCrWsl6vIxFwQrU07Oc/lYM3Atg2ohHWDUc4aLuGL9tkfwjfuv/QCfgov6rxCr0NL3Ncdq9WXASYpwpAiuosf1LZmm0/42As9Oaoz5X0BOh2DsWHCIKqzgz3Wd+fWfVPuFIbv8N4Pvahdv6F8ozTYfKDncgQMEKeELMcHpAt2KBCizn+3ZfCjZHiiXvmoala5/AaaJYAEFSLsw2fAVYEQt+OnwAftrIXkomrwchwhmiyUl1CyMpb/6PpGphRbcCWNzOTeZsQU9R4DCJMcW/nu4vwCEK/G4N08BSVT+pgntEcW/RyX/UcC8vbZAABatBgGm4PVPQMyTGtdUb2l6cfmHpSFTRKxGOgOIyC1WrWvk8J8BzUNyvghXVYmKrpS2KuRphchRjqkoiRkcAmOljGktxjbtpKujrUpw31q+jVtYqUpwUC9aJ4hMAnoViNgRWgejQ3dn5tv8u2JSwAR4U4KEYeGrAydN19cWbmkKAgtUUjO3v5I/+Rns2bMC3RTB/REqaknGK/4HgQAgG/Z8t+r/5/ldsUmBVFOFnUYSVqxfg6Xr2qnJOT7VXswiYqAorSmGb2xEUv4Lg7GYQ96vNRxJxA9aK4HFVvBhPxGOdUharGZzS1EfzJ2yanm682eI0mik4I1J8CMBHRuxfjSUNO6l9nwK3de+Bu1dfJq+XB7OvhBNewDFdwxge7kKPaCI8e4qiy6/UPhyXKhNb/vqjm2zkAJAI6CMCvKrAegGejoH1XCk1mXSLuqNgtQh0q4exCjyDwEwFTomBmVJ6PTKRKK+47KvW9j/XZ+BgEqgLbIMk4SVbfYI5+xDwjvq6fNu7LMuqCVrSpCRCD1b+rHhFJanpaLv8r/Q6Sf6frfMIULA6z6d1PZFVDF77OHIi6JYI2hOj385u2avmqxuQiQV72f6VaJL2xIRw+xdAxfEQ9Ft1n+rBFXhWgCQnu1q8nEBF8bbJ5+IIGwcWib2esZHATglQsDg5SIAEgiFAwQrGVTSUBEiAgsU5QAIkEAwBClYwrqKhJEACFCzOARIggWAIULCCcRUNJQESoGBxDpAACQRDgIIVjKtoKAmQAAWLc4AESCAYAhSsYFxFQ0mABChYnAMkQALBEKBgBeMqGkoCJEDB4hwgARIIhgAFKxhX0VASIAEKFucACZBAMAQoWMG4ioaSAAlQsDgHSIAEgiFAwQrGVTSUBEiAgsU5QAIkEAwBClYwrqKhJEACFCzOARIggWAIULCCcRUNJQESoGBxDpAACQRDgIIVjKtoKAmQAAWLc4AESCAYAhSsYFxFQ0mABChYnAMkQALBEKBgBeMqGkoCJEDB4hwgARIIhgAFKxhX0VASIAEKFucACZBAMAQoWMG4ioaSAAlQsDgHSIAEgiFAwQrGVTSUBEiAgsU5QAIkEAwBClYwrqKhJEACFCzOARIggWAIULCCcRUNJQESoGBxDpAACQRDgIIVjKtoKAmQAAWLc4AESCAYAhSsYFxFQ0mABChYnAMkQALBEKBgBeMqGkoCJEDB4hwgARIIhgAFKxhX0VASIAEKFucACZBAMAQoWMG4ioaSAAlQsDgHSIAEgiFAwQrGVTSUBEiAgsU5QAIkEAwBClYwrqKhJEACFCzOARIggWAIULCCcRUNJQESoGBxDpAACQRDgIIVjKtoKAmQAAWLc4AESCAYAhSsYFxFQ0mABChYnAMkQALBEKBgBeMqGkoCJEDB4hwgARIIhgAFKxhX0VASIAEKFucACZBAMAQoWMG4ioaSAAlQsDgHSIAEgiFAwQrGVTSUBEiAgsU5QAIkEAwBClYwrqKhJEACFCzOARIggWAI/D9snY52Tkr2LwAAAABJRU5ErkJggg==',	'2023-08-21',	NULL,	'2023-08-21 13:02:54',	'2023-08-21 13:02:54'),
(12,	42,	1,	7,	461,	0,	'no',	1,	'data:image/png;base64,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',	'2023-08-21',	NULL,	'2023-08-21 13:42:26',	'2023-08-21 13:42:26'),
(13,	38,	1,	7,	462,	0,	NULL,	0,	'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWMAAAEsCAYAAAAWzNJYAAAgAElEQVR4Xu1df4wdV3WesfMLCMQpCqUtitdVWgKUxK5KcIrB64L4IaC2S6smFZLXQEUJKo5VKloQ2XVoiihFsaGUH0LJ+o9CKiFl0xDa0pY8A1XipK3XCW0TFTXPoUBKI2UTAkns2K/fGZ+7uXt33u7MezPvnZn7jfT0fs3cOec7d745c+6556YJNyJABIgAERg7AunYJaAARIAIEAEikJCM2QmIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAIkIzZB4gAESACBhAgGRswAkUgAkSACJCM2QeIABEgAgYQIBkbMAJFIAJEgAiQjNkHiAARIAIGECAZGzACRSACRIAI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',	'2023-08-21',	NULL,	'2023-08-21 13:52:45',	'2023-08-21 13:52:45'),
(14,	43,	1,	7,	463,	0,	'yes',	0,	'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWMAAAEsCAYAAAAWzNJYAAAAAXNSR0IArs4c6QAAIABJREFUeF7tnQecHVX1x39n3m4azQRB4A+oVKkCIXnzNnREilSpSldpoiiIgkB2ZjaANOlSBEQQRaooICDFUJI3LyGUUAWRKp0gJXX3zfl/zn3zNm83u/vavNl5u+d+Pn4kmTu3fO/kvDt3zvkdghYloASUgBIYdAI06CPQASgBJaAElADUGOtDoASUgBJIAAE1xglYBB2CElACSkCNsT4DSkAJKIEEEFBjnIBF0CEoASWgBNQY6zOgBJSAEkgAATXGCVgEHYISUAJKQI2xPgNKQAkogQQQUGOcgEXQISgBJaAE1BjrM6AElIASSAABNcYJWAQdghJQAkpAjbE+A0pACSiBBBBQY5yARdAhKAEloATUGOszoASUgBJIAAE1xglYBB2CElACSkCNsT4DSkAJKIEEEFBjnIBF0CEoASWgBNQY6zOgBJSAEkgAATXGCVgEHYISUAJKQI2xPgNKQAkogQQQUGOcgEXQISgBJaAE1BjrM6AElIASSAABNcYJWAQdghJQAkpAjbE+A0pACSiBBBBQY5yARdAhKAEloATUGOszoASUgBJIAAE1xglYBB2CElACSkCNsT4DSkAJKIEEEFBjnIBF0CEoASWgBNQY6zOgBJSAEkgAATXGCVgEHYISUAJKQI2xPgNKQAkogQQQUGOcgEXQISgBJaAE1BjrM6AElIASSAABNcYJWAQdghJQAkpAjbE+A0pACSiBBBBQY5yARdAhKAEloATUGOszoASUgBJIAAE1xglYBB2CElACSkCNsT4DSkAJKIEEEFBjnIBF0CEoASWgBNQY6zOgBJSAEkgAATXGCVgEHYISUAJKQI2xPgNKQAkogQQQUGOcgEXQISgBJaAE1BjrM6AElIASSAABNcYJWAQdghJQAkpAjbE+A0pACSiBBBBQY5yARdAhKAEloATUGOszoASUgBJIAAE1xglYBB2CElACSkCNsT4DSkAJKIEEEFBjnIBF0CEoASWgBNQY6zOgBJSAEkgAATXGCVgEHYISUAJKQI2xPgNKQAkogQQQUGOcgEXQISgBJaAE1BjrM6AElIASSAABNcYJWAQdghJQAkpAjbE+A0pACSiBBBBQY5yARdAhKAEloATUGOszoASUgBJIAAE1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',	'2023-08-21',	NULL,	'2023-08-21 15:22:07',	'2023-08-21 15:22:07');

DROP TABLE IF EXISTS `participant_teams`;
CREATE TABLE `participant_teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant_id` bigint(20) unsigned DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `participant_id` (`participant_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `participant_teams_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participant_teams_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `charge_id` varchar(100) DEFAULT NULL,
  `balance_transaction` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `last4` varchar(20) DEFAULT NULL,
  `exp_month` varchar(2) DEFAULT NULL,
  `exp_year` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `type` enum('cash','cheque','card') DEFAULT NULL,
  `source` text,
  `status` enum('succeeded','pending','failed') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `waitlist_permission` enum('allowed','denied') DEFAULT NULL,
  `staff_permission` enum('allowed','denied') DEFAULT NULL,
  `booking_permission` enum('allowed','denied') DEFAULT NULL,
  `report_permission` enum('allowed','denied') DEFAULT NULL,
  `schedule_permission` enum('allowed','denied') DEFAULT NULL,
  `setting_permission` enum('allowed','denied') DEFAULT NULL,
  `customer_permission` enum('allowed','denied') DEFAULT NULL,
  `waiver_permission` enum('allowed','denied') DEFAULT NULL,
  `inventory_permission` enum('allowed','denied') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `permissions` (`id`, `role_id`, `user_id`, `waitlist_permission`, `staff_permission`, `booking_permission`, `report_permission`, `schedule_permission`, `setting_permission`, `customer_permission`, `waiver_permission`, `inventory_permission`, `created_at`, `updated_at`) VALUES
(1,	2,	1,	'allowed',	'denied',	NULL,	'denied',	NULL,	'allowed',	'allowed',	'allowed',	NULL,	'2023-06-09 05:55:53',	'2023-07-18 13:02:09'),
(2,	3,	1,	'allowed',	'allowed',	'allowed',	'allowed',	'allowed',	'denied',	'allowed',	'allowed',	'allowed',	'2023-06-09 06:02:18',	'2023-07-18 13:11:27'),
(3,	5,	1,	'denied',	'denied',	'allowed',	'denied',	'allowed',	'denied',	'denied',	'denied',	'denied',	'2023-06-13 12:28:23',	'2023-07-18 13:10:09'),
(4,	4,	NULL,	'allowed',	'denied',	'allowed',	'allowed',	'allowed',	'denied',	'allowed',	'allowed',	'allowed',	'2023-07-18 13:10:46',	'2023-07-18 13:11:06');

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `product_name` text,
  `product_image` text,
  `category_id` int(11) DEFAULT NULL,
  `sku` varchar(30) DEFAULT NULL,
  `retail_price` decimal(10,0) DEFAULT NULL,
  `purchase_price` decimal(10,0) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `stock` varchar(30) DEFAULT NULL,
  `low_stock` varchar(30) DEFAULT NULL,
  `current_stock` varchar(30) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `product_detail` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `products` (`id`, `location_id`, `product_name`, `product_image`, `category_id`, `sku`, `retail_price`, `purchase_price`, `supplier`, `brand`, `stock`, `low_stock`, `current_stock`, `size`, `product_detail`, `created_at`, `updated_at`) VALUES
(1,	1,	'Drink Package',	'media/products/qbh7VroA12E5sI2yMIJdQHjqeVBB5k2mEnMm01wp.jpg',	19,	'12',	25,	14,	'Coca Cola',	'Coca Cola',	'100',	'10',	'83',	1,	'Lorem Ipsum is simply dummy text of the printing and typesetting industry',	'2023-01-31 14:31:07',	'2023-08-22 13:22:07'),
(8,	1,	'kids shirt',	'media/products/HRPjQb2RPB800YetPm33Dfb1483Ldci1DRG5deEk.png',	17,	'11f23',	90,	23,	'adidas',	'adidas',	'100',	'10',	'95',	5,	'This is a shirt kk',	'2023-02-08 18:58:52',	'2023-08-22 13:22:07'),
(21,	1,	'Test Product',	'media/products/UHMFLIbKnHd8QatuRghl9Qgf3sLnfBBapf1pDIQg.jpg',	17,	'KK',	20,	25,	'New Supplier',	'New Brand',	'2',	'1',	NULL,	3,	'This is product details',	'2023-06-05 10:13:37',	'2023-06-05 10:13:37'),
(23,	1,	'Product A',	'media/products/Gs8YjSURNkDmeu4HOlG1HbtsUtfmffP5asrARo0y.jpg',	18,	'rete',	345,	543,	'xyz',	'abc',	'3434',	'4345',	'3434',	2,	'fgdfgfdgdfg',	'2023-06-13 06:54:48',	'2023-06-13 09:52:28'),
(24,	1,	'erfe',	'media/products/guoP3XoEBWJCv9urS25l5ROXdE7PuOJ0g2nwvjfY.jpg',	19,	'erferf',	2342,	2323,	'efef',	'frgserf',	'423',	'23423',	'423',	2,	'sdffdef',	'2023-06-13 06:56:14',	'2023-06-13 06:56:14'),
(32,	1,	'Product 111',	'media/products/1RzmeXMGUwHkRanJwVgdu3idUxkt20LyGDCsP3P7.jpg',	17,	'SKU',	345,	350,	'Supplier',	'Brand',	'10',	'5',	'10',	13,	'This is a new product',	'2023-06-21 08:21:52',	'2023-06-21 08:24:39'),
(33,	1,	'Tempore eveniet qu',	'media/products/S3JXuf7no2rOBQfz8ZcsUABscDGIHf3IoS7KMi72.png',	18,	'Praesentium minus qu',	10,	28,	'Adipisci modi enim m',	'Et dolor tempor sunt',	'2',	'51',	'2',	NULL,	'Voluptatem ut aute q',	'2023-08-21 13:22:15',	'2023-08-21 13:22:15'),
(34,	1,	'asd',	'media/products/2Xkob6tHqwwc4nVE9N6iHQZQQ1NYfeH9l6LprXzB.png',	18,	'asdf',	12,	12,	'adf',	'asdf',	'12',	'123',	'12',	2,	'dsafssa',	'2023-08-21 13:23:24',	'2023-08-21 13:23:24');

DROP TABLE IF EXISTS `product_sizes`;
CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` enum('S','M','L','XL','XXL','XXXL') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `product_sizes` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1,	'childs small',	'S',	'2023-02-04 08:03:51',	'2023-02-04 08:03:51'),
(2,	'childs medium',	'M',	'2023-02-04 08:04:09',	'2023-02-04 08:04:09'),
(3,	'childs large',	'L',	'2023-02-04 08:04:42',	'2023-02-04 08:04:42'),
(4,	'womans small',	'S',	'2023-02-04 08:05:10',	'2023-02-04 08:05:10'),
(5,	'womans medium',	'M',	'2023-02-04 08:05:35',	'2023-02-04 08:05:35'),
(6,	'womans large',	'L',	'2023-02-04 08:06:16',	'2023-02-04 08:06:16'),
(7,	'womans xlarge',	'XL',	'2023-02-04 08:06:45',	'2023-02-04 08:06:45'),
(8,	'womans xxlarge',	'XXL',	'2023-02-04 08:07:13',	'2023-02-04 08:07:13'),
(9,	'womans xxxlarge',	'XXXL',	'2023-02-04 08:07:38',	'2023-02-04 08:07:38'),
(10,	'mens small',	'S',	'2023-02-04 08:08:12',	'2023-02-04 08:08:12'),
(11,	'mens medium',	'M',	'2023-02-04 08:08:28',	'2023-02-04 08:08:28'),
(12,	'mens large',	'L',	'2023-02-04 08:08:50',	'2023-02-04 08:08:50'),
(13,	'mens xlarge',	'XL',	'2023-02-04 08:09:10',	'2023-02-04 08:09:10'),
(14,	'mens xxlarge',	'XXL',	'2023-02-04 08:09:30',	'2023-02-04 08:09:30'),
(15,	'mens xxxlarge',	'XXXL',	'2023-02-04 08:10:22',	'2023-02-04 08:10:22');

DROP TABLE IF EXISTS `promotions`;
CREATE TABLE `promotions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `bookable_id` bigint(20) DEFAULT NULL,
  `categories` text,
  `promo_id` varchar(100) DEFAULT NULL,
  `promotion_name` varchar(100) DEFAULT NULL,
  `promo_status` tinyint(1) DEFAULT NULL,
  `recurrence` varchar(50) DEFAULT NULL,
  `use_of_code` tinyint(4) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `fixed_amount` tinyint(1) DEFAULT NULL,
  `price_adjustment` decimal(10,0) DEFAULT NULL,
  `price_override` tinyint(1) DEFAULT NULL,
  `new_price` decimal(10,0) DEFAULT NULL,
  `applicable_times` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `week_days` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `promotions` (`id`, `location_id`, `bookable_id`, `categories`, `promo_id`, `promotion_name`, `promo_status`, `recurrence`, `use_of_code`, `code`, `fixed_amount`, `price_adjustment`, `price_override`, `new_price`, `applicable_times`, `start_date`, `end_date`, `week_days`, `created_at`, `updated_at`) VALUES
(1,	1,	0,	'All',	'123456',	'promo 1',	1,	'once',	1,	'222333',	1,	333,	1,	34,	'8 Timeslots Selected',	'2023-04-06',	'2023-04-27',	'[{\"name\":\"sun\",\"isActive\":false},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":false},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":false},{\"name\":\"fri\",\"isActive\":true},{\"name\":\"sat\",\"isActive\":false}]',	'2023-04-06 15:31:42',	'2023-04-06 15:31:42'),
(2,	1,	0,	'Axe Throwing Events',	'5offAxe',	'$5 Off Axe Throwing',	1,	'chosen_day',	0,	NULL,	0,	0,	0,	0,	'4 Timeslots Selected',	'2023-04-05',	'2023-09-23',	'[{\"name\":\"sun\",\"isActive\":false},{\"name\":\"mon\",\"isActive\":true},{\"name\":\"tue\",\"isActive\":true},{\"name\":\"wed\",\"isActive\":true},{\"name\":\"thu\",\"isActive\":false},{\"name\":\"fri\",\"isActive\":false},{\"name\":\"sat\",\"isActive\":false}]',	'2023-04-06 18:46:45',	'2023-04-06 18:46:45');

DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `notes` longtext,
  `type` enum('remove_email_sms','warning','ban') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `reports` (`id`, `location_id`, `user_id`, `notes`, `type`, `created_at`, `update_at`) VALUES
(1,	1,	334,	'This is the message',	'',	NULL,	NULL),
(2,	1,	381,	'this is message',	'',	NULL,	NULL),
(3,	1,	383,	'this is message',	'',	NULL,	NULL),
(4,	1,	379,	'this is message',	'',	NULL,	NULL),
(5,	1,	378,	'this is message',	'',	NULL,	NULL),
(6,	1,	383,	'this is message',	'',	NULL,	NULL);

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_role_type_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `location_id`, `name`, `guard`, `created_at`, `updated_at`) VALUES
(1,	NULL,	'SUPER ADMIN',	'web',	'2021-05-03 10:27:44',	'2022-12-20 18:29:39'),
(2,	NULL,	'ADMIN',	'web',	'2021-05-03 10:28:23',	'2022-12-20 19:03:06'),
(3,	NULL,	'MANAGER',	'web',	'2022-12-20 19:30:07',	'2022-12-20 19:30:07'),
(4,	NULL,	'HOST',	'web',	'2022-12-20 20:23:37',	'2022-12-20 20:23:37'),
(5,	NULL,	'EMPLOYEE',	'web',	'2023-05-31 14:35:49',	'2023-05-31 14:35:49'),
(6,	NULL,	'CUSTOMER',	'web',	'2023-07-18 10:17:15',	'2023-07-18 10:17:15'),
(7,	NULL,	'HI',	NULL,	'2023-08-07 15:37:01',	'2023-08-07 15:37:01');

DROP TABLE IF EXISTS `schedule_off`;
CREATE TABLE `schedule_off` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lane_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL COMMENT 'schedule off date',
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `reason` longtext,
  `color` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `schedule_off` (`id`, `lane_id`, `date`, `start_time`, `end_time`, `reason`, `color`, `created_at`, `updated_at`) VALUES
(1,	2,	'2023-07-25',	'2023-07-25 16:30',	'2023-07-25 21:30',	'xbvdfbdfb',	'#b2a4a4',	'2023-07-24 11:50:42',	'2023-07-26 08:48:44'),
(4,	7,	'2023-07-25',	'2023-07-25 10:00',	'2023-07-25 15:00',	'Axe League',	'#0cb0ae',	'2023-07-25 05:19:47',	'2023-07-26 14:47:05'),
(5,	1,	'2023-07-25',	'2023-07-25 21:15',	'2023-07-25 23:45',	'Maintenance',	'#5d3232',	'2023-07-25 05:48:23',	'2023-07-26 07:11:58'),
(6,	7,	'2023-08-08',	'2023-07-25 14:30',	'2023-07-25 16:30',	'testing',	'#4eabda',	'2023-07-25 19:36:56',	'2023-07-26 14:43:31'),
(7,	9,	'2023-08-08',	'2023-08-08 14:45',	'2023-08-08 17:45',	'testing in progress',	'#e02929',	'2023-07-25 20:12:43',	'2023-08-08 07:46:24'),
(8,	1,	'2023-07-27',	'2023-07-27 11:00',	'2023-07-27 17:00',	'dfvdfvgdfsv',	NULL,	NULL,	NULL),
(9,	7,	'2023-08-10',	'2023-08-10 20:15',	'2023-08-10 21:15',	'rergterg',	'#411616',	'2023-08-10 15:19:04',	'2023-08-10 15:20:35');

DROP TABLE IF EXISTS `schedule_todays`;
CREATE TABLE `schedule_todays` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `added_by` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `schedule_todays` (`id`, `user_id`, `added_by`, `date`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1,	190,	1,	'2023-07-17',	NULL,	NULL,	0,	'2023-07-17 20:10:32',	'2023-07-17 20:10:32'),
(2,	228,	1,	'2023-07-17',	NULL,	NULL,	0,	'2023-07-17 20:10:32',	'2023-07-17 20:10:32'),
(3,	240,	1,	'2023-07-17',	NULL,	NULL,	0,	'2023-07-17 20:10:35',	'2023-07-17 20:10:35'),
(4,	228,	1,	'2023-07-18',	NULL,	NULL,	0,	'2023-07-18 17:11:01',	'2023-07-18 17:11:01'),
(5,	240,	1,	'2023-07-18',	NULL,	NULL,	0,	'2023-07-18 17:11:08',	'2023-07-18 17:11:08'),
(6,	190,	1,	'2023-07-18',	NULL,	NULL,	0,	'2023-07-18 17:11:10',	'2023-07-18 17:11:10');

DROP TABLE IF EXISTS `shuffles`;
CREATE TABLE `shuffles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `objects` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `special_event_heard_abouts`;
CREATE TABLE `special_event_heard_abouts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookable_id` bigint(20) DEFAULT NULL,
  `name` text,
  `type` enum('special_events','heard_about') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `special_event_heard_abouts` (`id`, `bookable_id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1,	1,	'Birthday Party',	'special_events',	'2023-02-27 12:39:06',	'2023-02-27 12:39:06'),
(2,	5,	'Bachelor Party',	'special_events',	'2023-02-27 12:39:06',	'2023-02-27 12:39:06'),
(3,	3,	'Google',	'heard_about',	'2023-02-27 12:39:06',	'2023-02-27 12:39:06'),
(4,	1,	'Facebook',	'heard_about',	'2023-02-27 12:39:06',	'2023-02-27 12:39:06'),
(6,	3,	'bachelor party',	'special_events',	'2023-05-15 10:23:43',	'2023-05-15 10:23:43'),
(7,	6,	'birthday',	'special_events',	'2023-06-16 18:31:31',	'2023-06-16 18:31:31'),
(8,	6,	'website',	'heard_about',	'2023-06-16 18:31:31',	'2023-06-16 18:31:31');

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL COMMENT '(Category Id)',
  `name` longtext COMMENT '(Tag Name)',
  `author_id` bigint(20) DEFAULT NULL COMMENT '(Author Id)',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tags` (`id`, `location_id`, `category_id`, `name`, `author_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(15,	1,	13,	'Warned Tag',	1,	NULL,	'2023-04-25 11:46:18',	'2023-04-25 11:46:18'),
(14,	1,	15,	'6x Visitor',	1,	NULL,	'2023-04-25 11:38:55',	'2023-04-25 11:38:55'),
(13,	1,	14,	'Champion',	1,	NULL,	'2023-04-25 11:38:21',	'2023-04-25 11:38:21'),
(9,	1,	10,	'VIP',	1,	NULL,	'2023-04-25 11:15:13',	'2023-04-25 11:15:13'),
(10,	1,	11,	'Corporate Attendee',	1,	NULL,	'2023-04-25 11:15:37',	'2023-04-25 11:15:37'),
(11,	1,	12,	'Foodie',	1,	NULL,	'2023-04-25 11:15:53',	'2023-04-25 11:15:53'),
(12,	1,	10,	'Hooper',	1,	NULL,	'2023-04-25 11:18:13',	'2023-04-25 11:18:13');

DROP TABLE IF EXISTS `tag_user`;
CREATE TABLE `tag_user` (
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `tag_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tag_user` (`user_id`, `tag_id`) VALUES
(416,	14),
(417,	15),
(369,	13),
(369,	14);

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `payment_id` text,
  `order_id` text,
  `amount_money` decimal(10,2) DEFAULT NULL,
  `tip_money` decimal(10,2) DEFAULT NULL,
  `total_money` decimal(10,2) DEFAULT NULL,
  `app_fee_money` decimal(10,2) DEFAULT NULL,
  `approved_money` decimal(10,2) DEFAULT NULL,
  `status` enum('COMPLETED') DEFAULT NULL,
  `delay_duration` varchar(30) DEFAULT NULL,
  `delay_action` varchar(30) DEFAULT NULL,
  `delayed_until` varchar(50) DEFAULT NULL,
  `source_type` enum('CARD','CASH') DEFAULT NULL,
  `card_details` longtext,
  `card_status` varchar(20) DEFAULT NULL,
  `card_brand` varchar(20) DEFAULT NULL,
  `last_4` int(11) DEFAULT NULL,
  `exp_month` int(11) DEFAULT NULL,
  `exp_year` int(11) DEFAULT NULL,
  `card_type` varchar(30) DEFAULT NULL,
  `bin` bigint(20) DEFAULT NULL,
  `cvv_status` varchar(30) DEFAULT NULL,
  `cash_details` longtext,
  `receipt_number` varchar(30) DEFAULT NULL,
  `receipt_url` text,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` text,
  `updated_at` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `transactions` (`id`, `booking_id`, `payment_id`, `order_id`, `amount_money`, `tip_money`, `total_money`, `app_fee_money`, `approved_money`, `status`, `delay_duration`, `delay_action`, `delayed_until`, `source_type`, `card_details`, `card_status`, `card_brand`, `last_4`, `exp_month`, `exp_year`, `card_type`, `bin`, `cvv_status`, `cash_details`, `receipt_number`, `receipt_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	5,	NULL,	NULL,	NULL,	NULL,	200.00,	NULL,	NULL,	'COMPLETED',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2023-08-16 05:21:44',	'2023-08-16 05:21:44'),
(2,	9,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'COMPLETED',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2023-08-18 14:30:10',	'2023-08-18 14:30:10'),
(3,	13,	'FWiyTUSLAHUjDIUZscW9g34cMbEZY',	'hWlcGE2FmrfSGcXteYFMPYdcfb4F',	121.00,	NULL,	121.00,	3.80,	121.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-25T14:51:30.148Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2024,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-18T14:51:30.286Z\",\"captured_at\":\"2023-08-18T14:51:30.362Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'FWiy',	'https://squareupsandbox.com/receipt/preview/FWiyTUSLAHUjDIUZscW9g34cMbEZY',	NULL,	'2023-08-18 14:51:30',	'2023-08-18 14:51:30'),
(4,	14,	'BkO6ADPFePVqzUIzGqR23xss81XZY',	'brb9oUeBhLzzYMVWljVO3VtBGe4F',	121.00,	NULL,	121.00,	3.80,	121.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-25T15:09:23.926Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2024,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-18T15:09:24.037Z\",\"captured_at\":\"2023-08-18T15:09:24.131Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'BkO6',	'https://squareupsandbox.com/receipt/preview/BkO6ADPFePVqzUIzGqR23xss81XZY',	NULL,	'2023-08-18 15:09:24',	'2023-08-18 15:09:24'),
(5,	17,	'FQF1BbgE5MViHN7khLIADrC5ptVZY',	'XtBJXPXeM2f05k3b601rXJdHDi4F',	52.80,	NULL,	52.80,	1.83,	52.80,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-25T17:04:10.038Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-18T17:04:10.150Z\",\"captured_at\":\"2023-08-18T17:04:10.251Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'FQF1',	'https://squareupsandbox.com/receipt/preview/FQF1BbgE5MViHN7khLIADrC5ptVZY',	NULL,	'2023-08-18 17:04:10',	'2023-08-18 17:04:10'),
(6,	19,	'LHZyjQLpydh3X7KGiTtFOPUsr66YY',	'rr9SV6Ee7wcMb6lp4dYJen4qDb4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-26T06:50:38.311Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-19T06:50:38.435Z\",\"captured_at\":\"2023-08-19T06:50:38.529Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'LHZy',	'https://squareupsandbox.com/receipt/preview/LHZyjQLpydh3X7KGiTtFOPUsr66YY',	NULL,	'2023-08-19 06:50:38',	'2023-08-19 06:50:38'),
(7,	20,	'L1S3jbXS22KJ0sHjEmYjX1erJIEZY',	'FY5ULiEF3q5woQpG38UOVP29ka4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-26T08:05:03.867Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2024,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-19T08:05:03.979Z\",\"captured_at\":\"2023-08-19T08:05:04.061Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'L1S3',	'https://squareupsandbox.com/receipt/preview/L1S3jbXS22KJ0sHjEmYjX1erJIEZY',	NULL,	'2023-08-19 08:05:04',	'2023-08-19 08:05:04'),
(8,	21,	'zFUHu5NthCzMIMMBqdAMryKfKMCZY',	'VcZTKQfmzdCQDjQeULhAxtn4ae4F',	121.00,	NULL,	121.00,	3.80,	121.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-26T08:27:37.765Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2024,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-19T08:27:37.875Z\",\"captured_at\":\"2023-08-19T08:27:37.941Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'zFUH',	'https://squareupsandbox.com/receipt/preview/zFUHu5NthCzMIMMBqdAMryKfKMCZY',	NULL,	'2023-08-19 08:27:38',	'2023-08-19 08:27:38'),
(9,	22,	'Jedy5aslsKGcbRz8z27CGHFtu8dZY',	'n1FzjTzW6WG8RI9GYI4P1B77Me4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-26T09:34:13.724Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2024,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-19T09:34:13.837Z\",\"captured_at\":\"2023-08-19T09:34:13.917Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'Jedy',	'https://squareupsandbox.com/receipt/preview/Jedy5aslsKGcbRz8z27CGHFtu8dZY',	NULL,	'2023-08-19 09:34:14',	'2023-08-19 09:34:14'),
(10,	23,	'JSTcJpl5rCqOruXt7E9KPYq59vYZY',	'521ToSJ2wrCNygTV3Gtxc6KN5g4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-26T09:40:43.118Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-19T09:40:43.233Z\",\"captured_at\":\"2023-08-19T09:40:43.309Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'JSTc',	'https://squareupsandbox.com/receipt/preview/JSTcJpl5rCqOruXt7E9KPYq59vYZY',	NULL,	'2023-08-19 09:40:43',	'2023-08-19 09:40:43'),
(11,	24,	'N0j2adSK2ZmmcmjUskpF9FrIu2RZY',	'JkesxtPsMrKJA3z4ggSzIW5L4g4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-26T09:48:54.514Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-19T09:48:54.625Z\",\"captured_at\":\"2023-08-19T09:48:54.701Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'N0j2',	'https://squareupsandbox.com/receipt/preview/N0j2adSK2ZmmcmjUskpF9FrIu2RZY',	NULL,	'2023-08-19 09:48:54',	'2023-08-19 09:48:54'),
(12,	25,	'hy7bdXLcgrHxSliEcb2MFy2t79GZY',	'rlIp1y0OLTwZebWt7arfe90y8c4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-26T10:26:40.228Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-19T10:26:40.341Z\",\"captured_at\":\"2023-08-19T10:26:40.412Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'hy7b',	'https://squareupsandbox.com/receipt/preview/hy7bdXLcgrHxSliEcb2MFy2t79GZY',	NULL,	'2023-08-19 10:26:40',	'2023-08-19 10:26:40'),
(13,	26,	'Lz7MvBLnCpj7a35ZeyyRFMQFu1PZY',	'RQisZLJ7hQf65mLA3F3iH6Ob6e4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T05:14:50.412Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":8,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T05:14:50.524Z\",\"captured_at\":\"2023-08-21T05:14:50.595Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'Lz7M',	'https://squareupsandbox.com/receipt/preview/Lz7MvBLnCpj7a35ZeyyRFMQFu1PZY',	NULL,	'2023-08-21 05:14:50',	'2023-08-21 05:14:50'),
(14,	27,	'5WL9HwjkHC9Rcko579VsRZvUCyLZY',	'hYkLKk1X24nteeOheFZcGE9c2Z4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T06:40:48.046Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":8,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T06:40:48.156Z\",\"captured_at\":\"2023-08-21T06:40:48.224Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'5WL9',	'https://squareupsandbox.com/receipt/preview/5WL9HwjkHC9Rcko579VsRZvUCyLZY',	NULL,	'2023-08-21 06:40:48',	'2023-08-21 06:40:48'),
(15,	34,	'nN5M3m0zrqirR8GFb37j1op3nfeZY',	'l2Yk3Pih9KLtl4bC2tPpIcpp2a4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T07:28:05.960Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":8,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T07:28:06.073Z\",\"captured_at\":\"2023-08-21T07:28:06.143Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'nN5M',	'https://squareupsandbox.com/receipt/preview/nN5M3m0zrqirR8GFb37j1op3nfeZY',	NULL,	'2023-08-21 07:28:06',	'2023-08-21 07:28:06'),
(16,	35,	'LdsAaZttbN3vMs0tr0efgWSD9PbZY',	'v9dmRC8EUXLTO7AtPuU3e9oeeh4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T08:19:15.677Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":4,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T08:19:15.789Z\",\"captured_at\":\"2023-08-21T08:19:15.872Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'LdsA',	'https://squareupsandbox.com/receipt/preview/LdsAaZttbN3vMs0tr0efgWSD9PbZY',	NULL,	'2023-08-21 08:19:15',	'2023-08-21 08:19:15'),
(17,	36,	't8BzQ7vD7Ugs5tOn9clgjw4gDmRZY',	'nVRbg9CBQQaeXa1sM53yCbBx9a4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T08:25:35.131Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":12,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T08:25:35.245Z\",\"captured_at\":\"2023-08-21T08:25:35.324Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	't8Bz',	'https://squareupsandbox.com/receipt/preview/t8BzQ7vD7Ugs5tOn9clgjw4gDmRZY',	NULL,	'2023-08-21 08:25:35',	'2023-08-21 08:25:35'),
(18,	37,	'Bu5tGG5LRNkFeX5QiX4D2lT4ijZZY',	'hkWvBIlKPJXlCUowUdXhf2kvGc4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T10:05:24.585Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2030,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T10:05:24.694Z\",\"captured_at\":\"2023-08-21T10:05:24.779Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'Bu5t',	'https://squareupsandbox.com/receipt/preview/Bu5tGG5LRNkFeX5QiX4D2lT4ijZZY',	NULL,	'2023-08-21 10:05:24',	'2023-08-21 10:05:24'),
(19,	38,	'1MHpj56FlL2RKxokjAfiNWc5IUSZY',	'b1or35qm2WP2DdeehUFPpBSVGe4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T11:54:23.679Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":12,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T11:54:23.790Z\",\"captured_at\":\"2023-08-21T11:54:23.859Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'1MHp',	'https://squareupsandbox.com/receipt/preview/1MHpj56FlL2RKxokjAfiNWc5IUSZY',	NULL,	'2023-08-21 11:54:23',	'2023-08-21 11:54:23'),
(20,	39,	'pyHOpu1G0lgPCbMReIKQ5L9Le7JZY',	'lot6BmoAyzCRYc1EglpefYf30b4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T12:19:33.862Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T12:19:33.970Z\",\"captured_at\":\"2023-08-21T12:19:34.030Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'pyHO',	'https://squareupsandbox.com/receipt/preview/pyHOpu1G0lgPCbMReIKQ5L9Le7JZY',	NULL,	'2023-08-21 12:19:34',	'2023-08-21 12:19:34'),
(21,	40,	'5oKAVDW7Bb8k53EysGxTBH6CgQOZY',	'7tSIY3N8sfAYGJtoiNGQYa4n9d4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T13:01:46.431Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2027,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T13:01:46.543Z\",\"captured_at\":\"2023-08-21T13:01:46.644Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'5oKA',	'https://squareupsandbox.com/receipt/preview/5oKAVDW7Bb8k53EysGxTBH6CgQOZY',	NULL,	'2023-08-21 13:01:46',	'2023-08-21 13:01:46'),
(22,	41,	'ZGXJoHpll4WEzXTBbc0BJLjdxVFZY',	'HRRCPqwIeEADIMZFUwDvzDUxta4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T13:32:57.724Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2026,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T13:32:57.833Z\",\"captured_at\":\"2023-08-21T13:32:57.920Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'ZGXJ',	'https://squareupsandbox.com/receipt/preview/ZGXJoHpll4WEzXTBbc0BJLjdxVFZY',	NULL,	'2023-08-21 13:32:58',	'2023-08-21 13:32:58'),
(23,	42,	'DlQprnNKjhn1XzU80coknxvMigcZY',	'lk3ea9d8kQzPiZqmKWsbQa7aId4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T13:39:41.555Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T13:39:41.664Z\",\"captured_at\":\"2023-08-21T13:39:41.724Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'DlQp',	'https://squareupsandbox.com/receipt/preview/DlQprnNKjhn1XzU80coknxvMigcZY',	NULL,	'2023-08-21 13:39:41',	'2023-08-21 13:39:41'),
(24,	43,	'JSbwryJaATBClBrk6aHXOKRc25DZY',	'RoGOMhqncb2VsPEX10f26xSt5b4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-28T15:21:01.050Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-21T15:21:01.160Z\",\"captured_at\":\"2023-08-21T15:21:01.227Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'JSbw',	'https://squareupsandbox.com/receipt/preview/JSbwryJaATBClBrk6aHXOKRc25DZY',	NULL,	'2023-08-21 15:21:01',	'2023-08-21 15:21:01'),
(25,	44,	'nxpnZCxqyXDfrK9f3SIXAGyQj6OZY',	'PL0qBoH4ygfb1SDmGo4aVp9iFa4F',	192.50,	NULL,	192.50,	5.88,	192.50,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-29T13:22:08.172Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2024,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-22T13:22:08.281Z\",\"captured_at\":\"2023-08-22T13:22:08.344Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'nxpn',	'https://squareupsandbox.com/receipt/preview/nxpnZCxqyXDfrK9f3SIXAGyQj6OZY',	NULL,	'2023-08-22 13:22:08',	'2023-08-22 13:22:08'),
(26,	45,	'H5xfczIOQGczMjr3llXmk5jli4HZY',	'RcMUqYUKJigio2TEWLg3Z9zzCa4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-29T13:41:18.232Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2025,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-22T13:41:18.342Z\",\"captured_at\":\"2023-08-22T13:41:18.411Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'H5xf',	'https://squareupsandbox.com/receipt/preview/H5xfczIOQGczMjr3llXmk5jli4HZY',	NULL,	'2023-08-22 13:41:18',	'2023-08-22 13:41:18'),
(27,	46,	'jrZqcxr4vUlUjlpqncdRTcpjmyUZY',	'JMYPlvxzYmtOGlSuoS7VwM3V6a4F',	66.00,	NULL,	66.00,	2.21,	66.00,	'COMPLETED',	'PT168H',	'CANCEL',	'2023-08-29T13:48:03.966Z',	'CARD',	'{\"status\":\"CAPTURED\",\"card\":{\"card_brand\":\"VISA\",\"last_4\":\"1111\",\"exp_month\":11,\"exp_year\":2024,\"fingerprint\":\"sq-1-aURftFtLI6yAjoVPXbdiR9J2fWJ3TcUeUv4tNGzaFo0n48fKtRi_um8P6y8vg0wrLg\",\"card_type\":\"CREDIT\",\"prepaid_type\":\"NOT_PREPAID\",\"bin\":\"411111\"},\"entry_method\":\"KEYED\",\"cvv_status\":\"CVV_ACCEPTED\",\"avs_status\":\"AVS_ACCEPTED\",\"statement_description\":\"SQ *DEFAULT TEST ACCOUNT\",\"card_payment_timeline\":{\"authorized_at\":\"2023-08-22T13:48:04.075Z\",\"captured_at\":\"2023-08-22T13:48:04.150Z\"}}',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'jrZq',	'https://squareupsandbox.com/receipt/preview/jrZqcxr4vUlUjlpqncdRTcpjmyUZY',	NULL,	'2023-08-22 13:48:04',	'2023-08-22 13:48:04');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) unsigned DEFAULT NULL,
  `company_id` bigint(20) unsigned DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `location_id`, `company_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'Knoxweb Admin',	'user2@knoxweb.com',	2,	NULL,	2,	NULL,	'$2y$10$GCufqO3HgFo2g3OM/R5EpucOqR1xXj0GPu5qGvl1zrGoQiw5uDVai',	NULL,	'2022-11-18 18:02:20',	'2023-03-16 14:11:45'),
(7,	'Knoxweb',	'admin@knoxweb.com',	1,	NULL,	NULL,	NULL,	'$2y$10$WC0Q1Wqdc92r5RP0KB6uEetJ12jtEXhCgte.fNU48h2YutQnSR3HG',	'BpD534mjRUOz2y6dfk7KFz4yhuuLjJl3IfD9kl4IWreecLdNhKcIHfIXwWfW',	'2022-12-02 16:16:12',	'2022-12-02 17:48:42'),
(12,	'Test Employee',	'zapemployee@knoxweb.us',	2,	NULL,	NULL,	NULL,	'$2y$10$V7tDu8QvsY9Gn9wC.DvEmumA43zKiDoPbo/RE5XqkoLQZiqa3CJ6S',	NULL,	'2022-12-20 20:16:45',	'2022-12-20 20:20:17'),
(16,	'Test Bartender',	'zapbar@knoxweb.us',	12,	NULL,	NULL,	NULL,	'$2y$10$fYcBfFeUhRQh4B8RKE2NSee2bJ0P91ri0wK2Eeyj99Pkv2jnoztra',	NULL,	'2022-12-20 20:24:20',	'2022-12-27 16:21:47'),
(19,	'Angelo Dinardo',	'angeloD@knoxweb.com',	10,	NULL,	NULL,	NULL,	'$2y$10$u6F7XXISyigtm.jxvM02ouD.QUm0xCB7Uz5dhj936EqAYbLE1sn3m',	NULL,	'2022-12-20 20:41:46',	'2022-12-20 20:41:46'),
(20,	'Ben Karpinski',	'benK@knoxweb.com',	10,	NULL,	NULL,	NULL,	'$2y$10$nKgt9jFftRMNUgBovgyge.s9k909H/FmpVJfJ5sd9H2Y4WrP2zqO6',	'Fc8GdU3y3VSXhcLoUgiuODQC4aSOMypIsDZCk01ix6vjv5x1eSH7abgVbWAk',	'2022-12-20 20:42:53',	'2022-12-20 20:42:53'),
(21,	'Corey Deasy',	'CoreyD@knoxweb.com',	10,	NULL,	NULL,	NULL,	'$2y$10$q/R3q9v26qZhDcEcAez5TeHQa1EVQrLGIWcVUQP5z4SVt.ngYOxLW',	NULL,	'2022-12-20 20:43:59',	'2022-12-20 20:43:59'),
(22,	'dfgzxbh dfg',	'mgkelley01@gmail.com',	6,	1,	2,	NULL,	'$2y$10$jfIecMH1UyY811aMmv/Nku2unV43IGmxIGQC77wQWVBmRVvygePAO',	NULL,	'2022-12-20 20:52:19',	'2023-06-27 10:42:18'),
(58,	'trey loging',	'trey@bluestoneapps.com',	6,	NULL,	NULL,	NULL,	'$2y$10$bpT1lvl0H1c0vaZY/olVg.T.yNsaWhTkUmgVwxGCcAmAl9549mbjq',	NULL,	'2023-02-02 20:47:17',	'2023-07-14 19:51:05'),
(88,	'trey loging',	'trey@knoxweb.us',	NULL,	NULL,	NULL,	NULL,	'$2y$10$UTvsq0ApcqicnZbCUeytEuV4Oi0GPaiTL.phJs1EHoCQggNobER6i',	NULL,	'2023-02-08 18:45:44',	'2023-02-08 18:45:44'),
(164,	'Lumberjaxes Admin',	'lumberjaxes.admin@gmail.com',	2,	NULL,	2,	NULL,	'$2y$10$4d99o1s0x25d1Vsr6Nd4aOro.FdgxuKWKAucHHsU3ZW9Wg7kZ0JPi',	NULL,	NULL,	NULL),
(165,	'Lumberjaxes Customer',	'lumberjaxes.customer@gmail.com',	NULL,	NULL,	NULL,	NULL,	'$2y$10$UcwCdxuOqkmVicL9YZ9VsusXP4k2WlHFpxtjaYjvSIuMWh5XGvDlG',	NULL,	'2023-05-20 05:35:20',	'2023-05-20 05:35:20'),
(190,	'Ben Karpinski',	'ben@lumberjaxes.com',	6,	1,	NULL,	NULL,	'$2y$10$SOaGlUcf6rj9p9OQqnZjqOQn3qBWuk1uvIQgy5HyOoJeT1ebLF63a',	NULL,	'2023-05-24 21:14:50',	'2023-07-19 17:12:00'),
(199,	'John Doe',	'john.doe@example.com',	6,	1,	NULL,	NULL,	'$2y$10$aUWs.pJVMBz56wvFVtdI7e7wVUm59egJwglMIwHvOvpIbD4W29dpm',	NULL,	'2023-06-06 06:17:57',	'2023-06-06 06:17:57'),
(210,	'maggie jones',	'maggie@bluestoneapps.com',	6,	NULL,	NULL,	NULL,	'$2y$10$LmGSdlwDsrP1nUEdy4XcQeILxOhbPLRC8QoXGSL0Mjxu5NF2Mth5.',	NULL,	'2023-06-08 17:49:46',	'2023-06-08 17:49:46'),
(211,	'alex jones',	'alex@bluestoneapps.com',	6,	NULL,	NULL,	NULL,	'$2y$10$lcMGw/Zq9.WLa7JOLlsWzObbCmjxxdVo6oMvZ4XZyEPW3xG1uvCwK',	NULL,	'2023-06-08 17:49:46',	'2023-06-08 17:49:46'),
(212,	'trey loging',	'cloging3@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$hdvy3jLUN2RSsPZ5xshQuebFmWjtoJOqdOO9EZzhlRtJnVA/2rVmW',	NULL,	'2023-06-08 17:49:46',	'2023-06-08 17:49:46'),
(228,	'New Emp',	'millvale.employee@gmail.com',	5,	1,	NULL,	NULL,	'$2y$10$GCufqO3HgFo2g3OM/R5EpucOqR1xXj0GPu5qGvl1zrGoQiw5uDVai',	NULL,	'2023-06-16 05:27:16',	'2023-06-16 05:27:16'),
(240,	'manager',	'manager@knoxweb.us',	5,	1,	2,	NULL,	'$2y$10$4d99o1s0x25d1Vsr6Nd4aOro.FdgxuKWKAucHHsU3ZW9Wg7kZ0JPi',	NULL,	'2023-06-20 05:35:29',	'2023-06-20 05:35:29'),
(330,	'Customer John',	'customerjohn@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$nJpoZPXREt0FX40VPv/i0uyyqIvApsmaeUvgwD/npzJchR43aA3l6',	NULL,	'2023-07-04 15:12:15',	'2023-07-04 15:12:15'),
(331,	'Demo demooo',	'demo@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Q6TrHzyURtXB5svNjpMIMOuKrDatjNPpdMzktiaJK9EB56jpMXHXm',	NULL,	'2023-07-13 13:23:58',	'2023-07-13 13:23:58'),
(332,	'Ben Karpinski',	'bkarpinski370@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$LCNRjnQ0OFQ1psxJ7RdYlO.uVi6.VtfN46NtLXiBKe9CHQk57/96O',	NULL,	'2023-07-13 18:02:43',	'2023-07-14 22:03:44'),
(333,	'Morgan Karpinski',	'morgkarpinski@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$ImeBgTIBNTWfYuUMiQ/Q0eI/p2SlVxcLcPhiCRXjUP2p4qugyeGze',	NULL,	'2023-07-14 22:28:54',	'2023-07-14 22:28:54'),
(334,	'Jason Bourne',	'dfgdfb@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Bg.28rsqqU3wU5nrHqXxeO0hw/PAvq4a0X7z5lm/EdYY6o78NE4Kq',	NULL,	'2023-07-24 09:15:05',	'2023-07-25 05:23:05'),
(335,	'user1 knoxweb',	'user1@knoxweb.com',	6,	NULL,	NULL,	NULL,	'$2y$10$PiekqMn7.jYJ.ej3Fxevv.3.r1G0ToDYp4bnBG.q3ktn7eGKgBOd2',	NULL,	'2023-07-24 09:16:27',	'2023-07-24 09:16:27'),
(336,	'jimy knoxweb',	'jimy@knoxweb.com',	6,	NULL,	NULL,	NULL,	'$2y$10$d4JxRXrphi9y2o.HoxyDFe8Qq9o5s0HrcZ1Q3b8vK2x632r46Haji',	NULL,	'2023-07-25 06:42:53',	'2023-07-25 07:30:18'),
(341,	'fdgdfg',	'sdfsdvsd@gmail.com',	4,	1,	2,	NULL,	'$2y$10$UXfERIhBQKzzDmpSFL1aiORkI9JhW.CkCBnzd0bQU50M5NAhBVLAe',	NULL,	'2023-08-07 05:17:52',	'2023-08-07 05:17:52'),
(357,	'ertgeryt ertyertyh',	'erth@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$CmjjK./MUzDLTr7Ng00ucOOhxrALoE8KkVkZ7krV06JEyftdVkG.e',	NULL,	'2023-08-07 12:30:33',	'2023-08-07 12:30:33'),
(360,	'dsfdsf dcvsdv',	'sdvsd@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$r8maTIVMr0suhCFE8X.8yOjQt4ZbJRL9HIiJLsEqORQE6LIutzUxu',	NULL,	'2023-08-07 12:43:50',	'2023-08-10 12:11:45'),
(361,	'sdfdsgvds sdgvsdgv',	'sdfvds@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$dtxkBL1MgTXnCI1QFW7kxOzIWgoMNhu7Z30ZJuLtspl6mQcGFVWzC',	NULL,	'2023-08-07 13:05:55',	'2023-08-07 13:05:55'),
(363,	'dsfsdvf sdvsdfv',	'jamtechapp1@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Z2qUgWADYMLljeiWjojzie/gFZ.UaR9/xBD78lF2IpycMAZGSe0bC',	NULL,	'2023-08-07 14:11:05',	'2023-08-07 14:11:05'),
(364,	'dsfsdvf sdvsdfv',	'jamtechapp2@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$0Qo25UJTc.UTrxc9knd9/OwwyXwSDm0zH5VR7K94iJcPTmXdjhQva',	NULL,	'2023-08-07 14:14:47',	'2023-08-07 14:14:47'),
(366,	'dsfsdvf sdvsdfv',	'jamtechapp3@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$847KjcAFG6sBMOwn42p1ROk7LPAJoTd/9uDrATuEUqurQZF0hz9/O',	NULL,	'2023-08-07 14:19:26',	'2023-08-07 14:19:26'),
(367,	'dsfsdvf sdvsdfv',	'jamtechapp4@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$1Zk5oeXERoiqM63mAe8MKuetFCVMMcQ.rwjlybSD1/.ZczjK2ql5C',	NULL,	'2023-08-07 14:22:17',	'2023-08-07 14:22:17'),
(368,	'dsfsdvf sdvsdfv',	'jamtechapp5@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$cl2EgiXa/Qz5wUxtqnxQXeUXCeWYcO0RhUizf4T1jkT4p5RdtxPs2',	NULL,	'2023-08-07 14:31:10',	'2023-08-07 14:31:10'),
(369,	'gghg ffhv',	'jamtechapp@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$kIvt1a88Bcf8VSiRgfAkEuJflzCvwR1DjBXXYMs40J9/nd2HxQGOO',	NULL,	'2023-08-07 14:33:05',	'2023-08-18 17:04:09'),
(377,	'dfsdfv sdvsd',	'fbdf@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$TZCVUQMN3/P6UWIU6eqmrurxhowlP8bSsD7OCotZfrKi339ZlgHla',	NULL,	'2023-08-07 15:51:17',	'2023-08-07 15:51:17'),
(378,	'John doe',	'john@gmail.com',	6,	1,	NULL,	NULL,	'$2y$10$QekUKFAIDwh27Bib6U20qe.IeSpN/GHRn1YcbsoqoHy1GfS1CXP/y',	NULL,	'2023-08-08 06:11:48',	'2023-08-08 06:11:48'),
(379,	'gfgdfg dfgdfg',	'dfgdf@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Hxb5ELvhPp5WAbzD.7afuONfyW1kwDN2ygLegbKT7Web3pxJESrCC',	NULL,	'2023-08-08 06:54:35',	'2023-08-08 06:54:35'),
(380,	'peter poxe',	'peter@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$bEfH6bSvYe4psu0tmWsuse7no/8mnGRERJt7kKn2RdARJ.IpMAon6',	NULL,	'2023-08-08 06:55:10',	'2023-08-08 06:55:10'),
(381,	'Aviva Ari',	'aviva@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$IiUvQ61FodmtqoobX2qxUepI1Mv3/rwV8szS3e5cUnfBwVYP.HMlS',	NULL,	'2023-08-08 07:39:00',	'2023-08-08 07:39:00'),
(383,	'Curtex Perfect',	'curtex@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Luha6pWVBwJSrkec6KLrhuyAplmmQmvvleym5HZxHBhWu.qF5EtFG',	NULL,	'2023-08-09 06:10:40',	'2023-08-09 06:10:40'),
(407,	'Tester Jack',	'jacktester@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Hgtfgf8HcdQp5KFAyw9fq.wtxlzF97rz5c6olrO5lZghpbE0sDO1W',	NULL,	'2023-08-10 12:09:28',	'2023-08-10 12:09:28'),
(408,	'xcxzvcxv xcvcxvb',	'xcvcx@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$ODbljq1te98EgAo4QqgQMO.Jd403VruvjY.P86Y.XvRErpXJbM/1y',	NULL,	'2023-08-10 12:13:27',	'2023-08-10 12:13:27'),
(409,	'Axel Axel',	'axel@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Pcn6N1bAMhu5H5FoAWgT6.HFAepnllNXjhRx911FQ4k6Tj7lpHwnG',	NULL,	'2023-08-11 12:57:17',	'2023-08-11 12:57:17'),
(410,	'Rikice Rikice',	'rikice@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$LKiLM9m9NZNgSV4hpbU5jOX8cEI.GznZZkTMCW.eSogOM9vNks4uS',	NULL,	'2023-08-12 06:56:34',	'2023-08-12 06:56:34'),
(411,	'asd asd',	'asdf@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$7.zdv4E4FyepSQmc2sRN7Onuxm2WU98sfDCFruqbQYO0yBW17kZBG',	NULL,	'2023-08-14 09:36:05',	'2023-08-14 09:36:05'),
(416,	'John cartor',	'john.cartor@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$lfOAAWkBqokL9BDWB/ARsOGz38cMo.CfiVLonfD6SzBot.o4pcdMS',	NULL,	'2023-08-16 05:21:43',	'2023-08-16 05:21:43'),
(417,	'Sting Crow',	'string.crow@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$t0s663pNXasubb8/PVNg8eqsvGaRb1tYjcwc0pfSBA5A3DVS3mBkK',	NULL,	'2023-08-16 05:25:26',	'2023-08-16 05:25:26'),
(422,	'sdfbvcxb sfcbvxcb',	'sdcbvbv@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$sBFU21i6Xz70mntz2TwUQOQopWAQnuHAqPD.fTdSioEvmdhzYXSoW',	NULL,	'2023-08-16 15:10:44',	'2023-08-16 15:10:44'),
(423,	'dgfsdgv sdgvdfsg',	'sdgsdfg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$ZtaeC45WcqSU3AK.KfuW8eCkgT6lOVwdl9drLi9fbAmxVHIJ0z.Sa',	NULL,	'2023-08-16 15:23:26',	'2023-08-16 15:23:26'),
(425,	'sdfgsdg dvdssd',	'xcvb@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$ODIfRAjeaID5zGKpfJyfxOwwsCMcS9LqR9mKId2o2OIUVPxR4pRky',	NULL,	'2023-08-16 15:27:38',	'2023-08-16 15:27:38'),
(426,	'Shane',	'shane@gmail.com',	4,	1,	2,	NULL,	'$2y$10$046Yp1cpHBiOblVjp1Lf0.e8rQDOzxOTddV4HoW9/n/KveqVlSBwS',	NULL,	'2023-08-18 12:49:03',	'2023-08-18 12:49:03'),
(427,	'Aspernatur ipsam acc',	'nelesi@mailinator.com',	4,	1,	2,	NULL,	'$2y$10$hgiNWp9aFGb7eHs0EPmiW.UE5gJs3Z.P8fyrkWJdTrOvnlwD3fTxu',	NULL,	'2023-08-18 13:03:09',	'2023-08-18 13:03:09'),
(430,	'xvbfb fbdfb',	'customerdemo@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$0b09Dbzvycs9Mlsni8b5K.NnVZ0zzhZ2GsEI6Rb1GX8oLW7Bd66mm',	NULL,	'2023-08-18 15:09:23',	'2023-08-18 15:09:23'),
(431,	'ufjdhfhc hdhchfhf',	'hfhfjf@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$siQd.tz82g4MGRCL1n3eMuDAsYNAFQC150jgFBlNSQTx7Bf8RCOxe',	NULL,	'2023-08-19 06:50:37',	'2023-08-19 06:50:37'),
(432,	'dfsdgf sdgsdgv',	'sdvsdv@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$9GKFDABNVVZSQ07.dsmyZOtyHZNYMOx0hkmMBUv4mzCJbZiP6yWBu',	NULL,	'2023-08-19 08:05:03',	'2023-08-21 15:21:00'),
(433,	'asfsdfgsdgf sdfsdgsdg',	'sdfsdfg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$OpuHmboQSzls4Oy5CNwzQeQ.EYro4EWZZpqCJSXGgvaXQMT93k5/y',	NULL,	'2023-08-19 08:27:37',	'2023-08-19 08:27:37'),
(434,	'dvfdszvds dcvdczxv',	'sdcvcvdv@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$ksJqUAE6CpLgQz5I9RlKd.k4wBVENp0CWo0a8zYOeEv/liBeMlmh.',	NULL,	'2023-08-19 09:34:13',	'2023-08-19 09:34:13'),
(435,	'gjcvbb vcfhbb',	'cfgvcghg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$4NfHuvNfGrOIPHKBgyU0c.H2DBlag.YV4wq0ZmUn1Yn6Ngp2THRiC',	NULL,	'2023-08-19 09:40:42',	'2023-08-19 09:40:42'),
(436,	'hdhhv fghhhb',	'cgghhbb@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$s7Mlx/HnXj0rB/tuk9Eh0.5YXkFm0bYF4JdGUyRKOZxFYi6ZzZFI.',	NULL,	'2023-08-19 09:48:54',	'2023-08-19 09:48:54'),
(437,	'ghshshs bbbzbsb',	'xbbxb@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$kvLJYrTLu7Ql1ltHRr/vCuSEXP75bsg5c1j7lndo8XpSSo2uBnmt2',	NULL,	'2023-08-19 10:26:39',	'2023-08-19 10:26:39'),
(438,	'gfhfgh hgfhfg',	'hfghfghfg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$2AlIjAuNpMA1U6bgekrG2OJ9fk3ogCbvZb7NK/TnAbviZtbIhboey',	NULL,	'2023-08-21 05:14:49',	'2023-08-21 05:14:49'),
(439,	'dsfdsf dsfsd',	'fdsfsdfd@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$ljEe22ndR4xVxWpnDCHul.JaAnbISC2dWhr.Mw.FHcKI7PvJvSAL2',	NULL,	'2023-08-21 06:40:47',	'2023-08-21 06:40:47'),
(440,	'ytrytryrty yrtyrty',	'tryrt@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$jgs/VsFY/o.j9HoymZrm4OjFSrwJzsDUwCbW9NzjaPI7rH0QdoT7W',	NULL,	'2023-08-21 07:28:05',	'2023-08-21 07:28:05'),
(441,	'fdgfdg fgfdgdf',	'fdgfdg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$18eE8qugoet5yFQptY0OxOBR54ldpS9wR54R.nBpAxCy0pDZEro0.',	NULL,	'2023-08-21 08:19:15',	'2023-08-21 08:19:15'),
(442,	'uytuyu yuytu',	'tuytu@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$4C0FOJLCtb7HNz8HIvo3Q.D5cKJiQ26CUY3.pHBKnsZZES4aUwMNG',	NULL,	'2023-08-21 08:25:34',	'2023-08-21 08:25:34'),
(450,	'fgdsgsd dsfgsdfg',	'dgfd@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$l9470s028EuZnufZy8/hsOeQQvEHCJHdVEqEcGF7FSLWSJgfZ1wfe',	NULL,	'2023-08-21 10:05:24',	'2023-08-22 13:22:07'),
(453,	'uiuioui iuouiouio',	'gfhfghfg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$Y3pDMPoaXI9Z3lYSdTgayeDw387Lk4P4sctEq2yDT26YWud8dc3DG',	NULL,	'2023-08-21 10:12:26',	'2023-08-21 10:12:26'),
(454,	'dsadsad dasadsa',	'sdfldsfj@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$5lYMoGuXZNStji1GCoFEf.YEBbC/9/VJ1bZ/xcHHUTIs9EtBLKcVa',	NULL,	'2023-08-21 11:54:23',	'2023-08-21 11:54:23'),
(455,	'xcvxcvx vxcvxcv',	'vxcvc@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$vr2hOyeG51I2RonQBWufH.ghs92E.m1JekPzrYD2PT3gvMD6dBwbC',	NULL,	'2023-08-21 12:06:22',	'2023-08-21 12:06:22'),
(456,	'fdgfdg fdgfd',	'fdgfd@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$qlcl5CVt88WosGrOnEFN9eFLdMPqVOQlCCPKsVpQG.ILHp3Wv0xPC',	NULL,	'2023-08-21 12:19:33',	'2023-08-21 12:19:33'),
(457,	'gfhgf gfhgfh',	'hgfhfg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$R6Xt4tbzaCBBZAlRVCwGgO8rcfKlYWn2v5Lv7P2EI5cdTN6DXYMfe',	NULL,	'2023-08-21 13:01:46',	'2023-08-21 13:01:46'),
(458,	'retretre retre',	'rtret@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$XBlq0cu5mngF5SPPL/VK2.N8f2hrQd2FitHA7b8ZVuk.Zt.AJxuMa',	NULL,	'2023-08-21 13:02:54',	'2023-08-21 13:02:54'),
(459,	'asdfgj adfg',	'df@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$uThRiuvzLnDRLPUxkW7duulw/kM97jXNiaK2pAQtu/NFmf1YC8evy',	NULL,	'2023-08-21 13:32:57',	'2023-08-21 13:32:57'),
(460,	'adfsdf sdfsdf',	'sdfsdf@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$OVTa7rVF4vpXH6IOqfcWO.ttYHw.qqjr1Or650Mw7Ttgjb.1pXVVK',	NULL,	'2023-08-21 13:39:41',	'2023-08-21 13:39:41'),
(461,	'fdgfdgb dfbdfb',	'dfsb@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$QTZcEwso/cyvO5nDDf2VUetAJ6q6GMe7gQWUjqBeQteWTPbr3v.we',	NULL,	'2023-08-21 13:42:26',	'2023-08-21 13:42:26'),
(462,	'dsfsdfs dsfsdf',	'fsdfd@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$MDZJjLsJh.y4aFogCzDPc.3uii.Y2h8VArMrm2mokyHY5UZnbWwU.',	NULL,	'2023-08-21 13:52:45',	'2023-08-21 13:52:45'),
(463,	'fsdgsd sdgsdf',	'sdgvsd@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$XyJ1AWFyoAXfAf3c6d/gzuwYj2ABjjdEKVF2maMbDx9eH703Nu2b2',	NULL,	'2023-08-21 15:22:07',	'2023-08-21 15:22:07'),
(464,	'dfgdfgdfg dfgdfg',	'dfgdfg@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$MS7OxltsKmfg2fkDXd4S6OWLFejuT6XoyOe1bTAa5J2A8T1Laj.tC',	NULL,	'2023-08-22 13:41:17',	'2023-08-22 13:41:17'),
(465,	'cvczxvxcv cxvxcvb',	'cxvxcbv@gmail.com',	6,	NULL,	NULL,	NULL,	'$2y$10$3hCexQpmdupwD5bssZVNoO6h2vaYmm7f7xTY6N2XLT3xK3mbtIHEG',	NULL,	'2023-08-22 13:48:03',	'2023-08-22 13:48:03');

DROP TABLE IF EXISTS `users_password_reset`;
CREATE TABLE `users_password_reset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` text,
  `code` varchar(10) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `waitlists`;
CREATE TABLE `waitlists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `experience_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `reservation_id` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `group_size` int(11) DEFAULT NULL,
  `under18` enum('no','yes') NOT NULL,
  `under18Count` int(11) DEFAULT NULL,
  `status` enum('assigned','notified','archived','waiting') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `waitlists` (`id`, `location_id`, `experience_id`, `first_name`, `last_name`, `reservation_id`, `email`, `phone`, `group_size`, `under18`, `under18Count`, `status`, `created_at`, `updated_at`) VALUES
(6,	1,	1,	'Richard',	'Rollence',	'MILL-6-6302',	'richard@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:19:32',	'2023-08-18 12:19:32'),
(7,	1,	1,	'Richard',	'Rollence',	'MILL-7-5800',	'richard@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:20:05',	'2023-08-21 05:19:02'),
(8,	1,	1,	'Roman',	'Rollence',	'MILL-8-3364',	'richard@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:39:24',	'2023-08-18 12:39:24'),
(9,	1,	1,	'Seth',	'Rollence',	'MILL-9-1973',	'richard@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:39:33',	'2023-08-18 12:39:33'),
(10,	1,	1,	'Chris',	'Rollence',	'MILL-10-5472',	'richard@gmail.com',	'8547856985',	12,	'no',	NULL,	'archived',	'2023-08-18 12:39:42',	'2023-08-18 12:39:56'),
(11,	1,	1,	'ChrisQ',	'Rollence',	'MILL-11-5063',	'Chris@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:42:13',	'2023-08-18 12:42:13'),
(12,	1,	1,	'QAx',	'Rollence',	'MILL-12-7046',	'Qax@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:42:27',	'2023-08-18 12:42:27'),
(13,	1,	1,	'Atrx',	'Rollence',	'MILL-13-3857',	'Atrx@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:42:42',	'2023-08-18 12:42:42'),
(14,	1,	1,	'Relax',	'Rollence',	'MILL-14-6273',	'Ralax@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:42:56',	'2023-08-18 12:42:56'),
(15,	1,	1,	'Otis',	'Rollence',	'MILL-15-3092',	'Otis@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:43:31',	'2023-08-18 12:43:31'),
(16,	1,	1,	'Axel',	'Rollence',	'MILL-16-4728',	'Axel@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:43:50',	'2023-08-18 12:43:50'),
(17,	1,	1,	'Alex',	'Rollence',	'MILL-17-6306',	'Alex@gmail.com',	'8547856985',	12,	'no',	NULL,	'waiting',	'2023-08-18 12:44:01',	'2023-08-18 12:44:01'),
(18,	1,	1,	'Plex',	'Rollence',	'MILL-18-4361',	'Plex@gmail.com',	'8547856985',	12,	'no',	NULL,	'archived',	'2023-08-18 12:44:17',	'2023-08-21 05:19:19');

-- 2023-08-23 09:00:20