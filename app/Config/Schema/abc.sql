-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2015 at 11:10 AM
-- Server version: 5.5.42
-- PHP Version: 5.5.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `thietbidien`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 126),
(2, 1, NULL, NULL, 'Home', 2, 7),
(3, 2, NULL, NULL, 'display', 3, 4),
(4, 2, NULL, NULL, 'canUploadMedias', 5, 6),
(5, 1, NULL, NULL, 'Admin', 8, 91),
(6, 5, NULL, NULL, 'Dashboard', 9, 14),
(7, 6, NULL, NULL, 'admin_index', 10, 11),
(8, 6, NULL, NULL, 'canUploadMedias', 12, 13),
(9, 5, NULL, NULL, 'Groups', 15, 26),
(10, 9, NULL, NULL, 'admin_index', 16, 17),
(11, 9, NULL, NULL, 'admin_add', 18, 19),
(12, 9, NULL, NULL, 'admin_edit', 20, 21),
(13, 9, NULL, NULL, 'admin_delete', 22, 23),
(14, 9, NULL, NULL, 'canUploadMedias', 24, 25),
(15, 5, NULL, NULL, 'Languages', 27, 32),
(16, 15, NULL, NULL, 'admin_set', 28, 29),
(17, 15, NULL, NULL, 'canUploadMedias', 30, 31),
(18, 5, NULL, NULL, 'Pages', 33, 44),
(19, 18, NULL, NULL, 'admin_index', 34, 35),
(20, 18, NULL, NULL, 'index', 36, 37),
(21, 18, NULL, NULL, 'admin_add', 38, 39),
(22, 18, NULL, NULL, 'admin_edit', 40, 41),
(23, 18, NULL, NULL, 'canUploadMedias', 42, 43),
(24, 5, NULL, NULL, 'Permissions', 45, 54),
(25, 24, NULL, NULL, 'admin_index', 46, 47),
(26, 24, NULL, NULL, 'admin_change', 48, 49),
(27, 24, NULL, NULL, 'admin_sync', 50, 51),
(28, 24, NULL, NULL, 'canUploadMedias', 52, 53),
(29, 5, NULL, NULL, 'Users', 55, 76),
(30, 29, NULL, NULL, 'admin_index', 56, 57),
(31, 29, NULL, NULL, 'admin_add', 58, 59),
(32, 29, NULL, NULL, 'admin_edit', 60, 61),
(33, 29, NULL, NULL, 'admin_login', 62, 63),
(34, 29, NULL, NULL, 'admin_logout', 64, 65),
(35, 29, NULL, NULL, 'admin_reset_password', 66, 67),
(36, 29, NULL, NULL, 'admin_delete', 68, 69),
(37, 29, NULL, NULL, 'canUploadMedias', 70, 71),
(38, 1, NULL, NULL, 'Media', 92, 111),
(39, 38, NULL, NULL, 'Medias', 93, 110),
(40, 39, NULL, NULL, 'isAuthorized', 94, 95),
(41, 39, NULL, NULL, 'canUploadMedias', 96, 97),
(42, 39, NULL, NULL, 'index', 98, 99),
(43, 39, NULL, NULL, 'upload', 100, 101),
(44, 39, NULL, NULL, 'delete', 102, 103),
(45, 39, NULL, NULL, 'thumb', 104, 105),
(46, 39, NULL, NULL, 'update', 106, 107),
(47, 39, NULL, NULL, 'order', 108, 109),
(48, 29, NULL, NULL, 'admin_lock', 72, 73),
(49, 29, NULL, NULL, 'admin_unlock', 74, 75),
(50, 1, NULL, NULL, 'ImageCropResize', 112, 113),
(51, 5, NULL, NULL, 'Categories', 77, 90),
(53, 51, NULL, NULL, 'canUploadMedias', 78, 79),
(54, 1, NULL, NULL, 'BoostCake', 114, 125),
(55, 54, NULL, NULL, 'BoostCake', 115, 124),
(56, 55, NULL, NULL, 'index', 116, 117),
(57, 55, NULL, NULL, 'bootstrap2', 118, 119),
(58, 55, NULL, NULL, 'bootstrap3', 120, 121),
(59, 55, NULL, NULL, 'canUploadMedias', 122, 123),
(60, 51, NULL, NULL, 'admin_index', 80, 81),
(61, 51, NULL, NULL, 'admin_add', 82, 83),
(62, 51, NULL, NULL, 'admin_edit', 84, 85),
(63, 51, NULL, NULL, 'admin_move_up', 86, 87),
(64, 51, NULL, NULL, 'admin_move_down', 88, 89);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 7, NULL, 1, 2),
(2, NULL, 'Group', 1, NULL, 3, 4),
(3, NULL, 'Group', 2, NULL, 5, 6),
(4, NULL, 'Group', 3, NULL, 7, 8),
(5, NULL, 'Group', 4, NULL, 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 4, 47, '0', '0', '0', '0'),
(2, 4, 3, '1', '1', '1', '1'),
(3, 4, 4, '1', '1', '1', '1'),
(4, 3, 3, '1', '1', '1', '1'),
(5, 3, 4, '1', '1', '1', '1'),
(6, 5, 3, '1', '1', '1', '1'),
(7, 5, 4, '1', '1', '1', '1'),
(8, 4, 6, '0', '0', '0', '0'),
(9, 4, 7, '0', '0', '0', '0'),
(10, 4, 8, '0', '0', '0', '0'),
(11, 5, 6, '1', '1', '1', '1'),
(12, 5, 7, '1', '1', '1', '1'),
(13, 5, 8, '0', '0', '0', '0'),
(14, 5, 33, '1', '1', '1', '1'),
(15, 4, 33, '1', '1', '1', '1'),
(16, 3, 33, '1', '1', '1', '1'),
(17, 3, 34, '1', '1', '1', '1'),
(18, 4, 34, '1', '1', '1', '1'),
(19, 5, 34, '1', '1', '1', '1'),
(20, 3, 35, '1', '1', '1', '1'),
(21, 4, 35, '1', '1', '1', '1'),
(22, 5, 35, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `category_type_id` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` int(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `category_type_id`, `meta_title`, `meta_description`, `is_draft`, `updated_at`, `created_at`) VALUES
(1, NULL, 1, 10, 'Dây và cáp điện', 0, '', '', 0, '2015-06-07 08:22:56', '0000-00-00 00:00:00'),
(2, 1, 2, 3, 'Dây điện dân dụng', 0, '', '', 0, '2015-06-07 08:23:28', '0000-00-00 00:00:00'),
(3, 1, 4, 5, 'Cáp treo hạ thế', 0, '', '', 0, '2015-06-07 08:23:57', '0000-00-00 00:00:00'),
(4, 1, 6, 7, 'Cáp ngầm hạ thế', 0, '', '', 0, '2015-06-07 08:24:21', '0000-00-00 00:00:00'),
(5, 1, 8, 9, 'Cáp sao su', 0, '', '', 0, '2015-06-07 08:24:21', '0000-00-00 00:00:00'),
(6, NULL, 11, 12, 'TB điện dân dụng', 0, '', '', 0, '2015-06-07 08:24:36', '2015-06-07 03:24:25'),
(7, NULL, 13, 14, 'TB điện công nghiệp', 0, '', '', 0, '2015-06-07 08:26:00', '2015-06-07 03:25:42'),
(8, NULL, 15, 16, 'Gen chống cháy', 0, '', '', 0, '2015-06-07 08:26:12', '2015-06-07 03:26:04'),
(9, NULL, 17, 18, 'Thiết bị chiếu sáng', 0, '', '', 0, '2015-06-07 08:26:23', '2015-06-07 03:26:14'),
(10, NULL, 19, 20, 'Tủ điện và Thang cáp', 0, '', '', 0, '2015-06-07 08:26:40', '2015-06-07 03:26:24'),
(11, NULL, 21, 22, 'Quạt diện', 0, '', '', 0, '2015-06-07 08:26:56', '2015-06-07 03:26:49'),
(12, NULL, 23, 24, 'Thiết bị điện gia dụng', 0, '', '', 0, '2015-06-07 08:27:05', '2015-06-07 03:26:58'),
(13, NULL, 25, 26, 'Ổn áp & Lưu điện', 0, '', '', 0, '2015-06-07 08:27:21', '2015-06-07 03:27:10'),
(14, NULL, 27, 28, 'Smart House', 0, '', '', 0, '2015-06-07 08:27:32', '2015-06-07 03:27:24'),
(15, NULL, 29, 30, 'Vật tư phụ', 0, '', '', 0, '2015-06-07 08:27:45', '2015-06-07 03:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `category_types`
--

CREATE TABLE `category_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` int(2) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `protecting` int(11) NOT NULL DEFAULT '0' COMMENT 'can not delete if protected > 0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `alias`, `protecting`, `created`, `modified`) VALUES
(1, 'sadmin', 'sadmin', 1, '2015-04-19 17:45:15', '2015-04-19 17:45:15'),
(2, 'registered', 'registered', 1, '2015-04-19 17:45:38', '2015-04-19 17:45:38'),
(3, 'public', 'public', 1, '2015-04-19 17:45:46', '2015-04-19 17:45:46'),
(4, 'admod', 'admod', 1, '2015-04-19 20:00:21', '2015-04-19 20:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` int(11) NOT NULL,
  `is_draft` int(2) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `user_id`, `name`, `slug`, `is_draft`, `updated_at`, `media_id`) VALUES
(4, 1, 'Cadisun', 0, 0, '2015-06-07 01:40:33', 0),
(5, 1, 'Sino', 0, 0, '2015-06-06 23:56:30', 0),
(6, 1, 'SP', 0, 0, '2015-06-06 23:56:30', 0),
(7, 1, 'Lioa', 0, 0, '2015-06-06 23:56:30', 0),
(8, 1, 'Philips', 0, 0, '2015-06-06 23:56:30', 0),
(9, 1, 'Paragon', 0, 0, '2015-06-06 23:56:30', 0),
(10, 1, 'Panasonic', 0, 0, '2015-06-06 23:56:30', 0),
(11, 1, 'Toshiba', 0, 0, '2015-06-06 23:56:30', 0),
(12, 1, 'Vinawind', 0, 0, '2015-06-06 23:56:30', 0),
(13, 1, 'Genun', 0, 0, '2015-06-06 23:56:30', 0),
(15, 1, 'Tico', 0, 0, '2015-06-06 23:56:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(10) NOT NULL,
  `ref` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `ref`, `ref_id`, `file`, `name`, `position`, `created`) VALUES
(2, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00'),
(3, 'Page', 1, '/img/uploads/2015/04/nature.jpg', 'nature.jpg', 2, '0000-00-00 00:00:00'),
(6, NULL, NULL, NULL, NULL, 0, '2015-04-17 11:55:14'),
(8, NULL, NULL, NULL, NULL, 2, '2015-04-17 12:25:32'),
(25, 'Page', 1, '/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 1, '2015-04-17 13:25:46'),
(26, NULL, NULL, NULL, NULL, 0, '2015-04-17 13:26:06'),
(27, 'Page', 1, '/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM-1.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 4, '2015-04-17 13:35:23'),
(28, 'Page', 1, '/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM-2.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 0, '2015-04-17 13:35:26'),
(29, NULL, NULL, NULL, NULL, 3, '2015-04-19 11:52:18'),
(30, 'Category', 2, '/img/uploads/2015/05/Screen_Shot_2015_04_12_at_4_47_05_PM.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 0, '2015-05-19 12:51:51'),
(31, 'Slide', 1, '/img/slide/1.png', 'Screen Shot 2015-05-30 at 04.19.12.png', 1, '2015-05-31 04:10:19'),
(32, 'Slide', 1, '/img/slide/1-1.png', 'Screen Shot 2015-05-30 at 04.19.21.png', 2, '2015-05-31 04:10:20'),
(33, 'Slide', 1, '/img/slide/1-2.png', 'Screen Shot 2015-05-30 at 04.28.38.png', 0, '2015-05-31 04:10:21'),
(34, NULL, NULL, NULL, NULL, 3, '2015-05-31 04:23:00'),
(35, 'Page', 2, '/img/uploads/2015/06/11334208_1114919915189859_1943877366604103972_o.jpg', '11334208_1114919915189859_1943877366604103972_o.jpg', 0, '2015-06-06 20:42:18'),
(36, 'Slide', 3, '/img/slide/3.jpg', '10988504_791413490945453_2280876142787128140_n copy.jpg', 0, '2015-06-06 20:43:50'),
(37, 'Slide', 3, '/img/slide/3-1.jpg', '11334208_1114919915189859_1943877366604103972_o.jpg', 0, '2015-06-06 20:43:51'),
(38, 'Product', 1, '/img/product/1.jpg', '11350535_10203096559853743_5478276917340721300_n.jpg', 0, '2015-06-06 20:55:11'),
(39, 'Product', 1, '/img/product/1-1.jpg', '10988504_791413490945453_2280876142787128140_n copy.jpg', 0, '2015-06-06 20:57:02'),
(41, 'Product', 2, '/img/product/2.jpg', 'f38b30b0-3e98-45a8-86d9-d06fda3ef4ba.jpg', 0, '2015-06-06 20:57:52'),
(42, 'Product', 5, '/img/product/5.jpg', 'MCB - 3P - LS.jpg', 0, '2015-06-07 03:48:02'),
(43, 'Product', 4, '/img/product/4.png', 'day cung 3 soi boc cu.xlpe.pvc.png', 0, '2015-06-07 03:51:59'),
(44, 'Page', 2, '/img/uploads/2015/06/Day_mềm_tron_1_sợi_Cadisun.png', 'Dây mềm tròn 1 sợi - Cadisun.png', 0, '2015-06-07 04:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `editing` int(11) NOT NULL,
  `is_draft` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `parent_id`, `title`, `content`, `media_id`, `deleted_at`, `editing`, `is_draft`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'dggggg', '<p><a title="Screen Shot 2015-04-12 at 4.47.05 PM.png" href="/thietbidien/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM-1.png"><img src="/thietbidien/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM-1.png" alt="" width="141" height="129" /></a>hoho ho ho ho ho</p>', 28, NULL, 0, 0, '2015-04-16 19:18:22', '0000-00-00 00:00:00'),
(2, 0, 0, 'gggg', '<p><a title="11334208_1114919915189859_1943877366604103972_o.jpg" href="/thietbidien/img/uploads/2015/06/11334208_1114919915189859_1943877366604103972_o.jpg"><img src="/thietbidien/img/uploads/2015/06/11334208_1114919915189859_1943877366604103972_o.jpg" alt="" /></a>hhh</p>', 35, NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 1, '123 sa vdsa vdsa vdsa vds fffff', '<p>123</p>', 0, NULL, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 0, 'hjhj', '<p>gggggg</p>', 0, NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 0, 'hello all to my website', '<p>the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;<span style="line-height: 1.42857143;">the hello page content&nbsp;the hello page content&nbsp;the hello page content&nbsp;</span></p>', 0, NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 1, 'hhhhhhhhhhh', '<p>jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;<span style="line-height: 1.42857143;">jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;</span><span style="line-height: 1.42857143;">jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;</span><span style="line-height: 1.42857143;">jjjjjjjjjj&nbsp;jjjjjjjjjj&nbsp;</span></p>', 0, NULL, 0, 0, '2015-06-06 20:04:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hight_light` text COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `made_from` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intensity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voltage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other_spec` text COLLATE utf8_unicode_ci NOT NULL,
  `introduction` text COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` int(2) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `hight_light`, `code`, `manufacturer_id`, `category_id`, `media_id`, `made_from`, `amount`, `color`, `capacity`, `intensity`, `voltage`, `other_spec`, `introduction`, `is_draft`, `updated_at`, `created_at`) VALUES
(1, 1, 'Hello', '', '0', 4, 2, 39, '', 0, '', '', '', '', '', '', 0, '2015-06-07 01:57:07', '2015-06-06 19:19:12'),
(2, 1, 'Ho ho', '', '0', 5, 1, 0, '', 0, '', '', '', '', '', '', 0, '2015-06-07 01:57:56', '2015-06-06 20:57:16'),
(3, 1, 'bababababab', '', '0', 0, 4, 0, '', 0, '', '', '', '', '', '', 0, '2015-06-07 01:58:15', '2015-06-06 20:58:08'),
(4, 1, 'Cáp mạng CAT5E ', '', 'CAT5E', 5, 1, 43, '', 0, '', '', '', '', '', '', 0, '2015-06-07 08:58:43', '2015-06-06 21:25:34'),
(5, 1, 'Áp to mát', 'ds avdsa vdsa vds avsd', '0', 6, 6, 0, '', 100, 'Trắng', '', '10A', '~230V', 'Làm bằng nhựa, cứng cáp, chịu nhiệt', '', 0, '2015-06-07 08:49:54', '2015-06-06 21:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `value`) VALUES
(1, 'language', 'eng');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) unsigned NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `position`, `created_at`, `updated_at`) VALUES
(1, 'cds avds avdsavdsavd', 'no', '0000-00-00 00:00:00', '2015-05-31 09:12:19'),
(3, 'HihI', 'no', '2015-06-07 03:43:15', '2015-06-07 01:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `status`, `name`, `email`, `deleted_at`, `modified`, `created`) VALUES
(1, 'sadmin', 'e8c553411681cbd77adf93c92aaf557e41785830', 1, 1, 'Superadmin', 'sadmin@tera.vn', NULL, '2015-05-19 18:51:23', '2015-04-16 18:34:24'),
(2, 'demo2', 'd20274c604052d51ad2b443dc483aad312687fb2', 2, 1, 'Demo 2', 'demo2@gmail.com', NULL, '2015-05-19 19:04:43', '2015-04-16 18:34:46'),
(3, 'demo1', '', 2, 0, 'User demo', 'demo@gmail.com', NULL, '2015-05-19 18:56:04', '2015-04-17 19:26:17'),
(5, 'admod', 'd20274c604052d51ad2b443dc483aad312687fb2', 4, 0, 'admod', 'admod@gmail.com', NULL, '2015-05-19 19:00:29', '2015-04-19 20:03:05'),
(6, '', '', 0, 0, NULL, NULL, NULL, '2015-05-19 18:56:06', '2015-05-11 15:48:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref` (`ref`),
  ADD KEY `ref_id` (`ref_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;