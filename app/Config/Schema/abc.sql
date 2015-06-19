-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2015 at 02:56 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 196),
(2, 1, NULL, NULL, 'Home', 2, 7),
(3, 2, NULL, NULL, 'display', 3, 4),
(4, 2, NULL, NULL, 'canUploadMedias', 5, 6),
(5, 1, NULL, NULL, 'Admin', 8, 143),
(6, 5, NULL, NULL, 'Dashboard', 9, 16),
(7, 6, NULL, NULL, 'admin_index', 10, 11),
(8, 6, NULL, NULL, 'canUploadMedias', 12, 13),
(9, 5, NULL, NULL, 'Groups', 17, 28),
(10, 9, NULL, NULL, 'admin_index', 18, 19),
(11, 9, NULL, NULL, 'admin_add', 20, 21),
(12, 9, NULL, NULL, 'admin_edit', 22, 23),
(13, 9, NULL, NULL, 'admin_delete', 24, 25),
(14, 9, NULL, NULL, 'canUploadMedias', 26, 27),
(15, 5, NULL, NULL, 'Languages', 29, 36),
(16, 15, NULL, NULL, 'admin_set', 30, 31),
(17, 15, NULL, NULL, 'canUploadMedias', 32, 33),
(18, 5, NULL, NULL, 'Pages', 37, 50),
(19, 18, NULL, NULL, 'admin_index', 38, 39),
(20, 18, NULL, NULL, 'index', 40, 41),
(21, 18, NULL, NULL, 'admin_add', 42, 43),
(22, 18, NULL, NULL, 'admin_edit', 44, 45),
(23, 18, NULL, NULL, 'canUploadMedias', 46, 47),
(24, 5, NULL, NULL, 'Permissions', 51, 62),
(25, 24, NULL, NULL, 'admin_index', 52, 53),
(26, 24, NULL, NULL, 'admin_change', 54, 55),
(27, 24, NULL, NULL, 'admin_sync', 56, 57),
(28, 24, NULL, NULL, 'canUploadMedias', 58, 59),
(29, 5, NULL, NULL, 'Users', 63, 84),
(30, 29, NULL, NULL, 'admin_index', 64, 65),
(31, 29, NULL, NULL, 'admin_add', 66, 67),
(32, 29, NULL, NULL, 'admin_edit', 68, 69),
(33, 29, NULL, NULL, 'admin_login', 70, 71),
(34, 29, NULL, NULL, 'admin_logout', 72, 73),
(35, 29, NULL, NULL, 'admin_reset_password', 74, 75),
(36, 29, NULL, NULL, 'admin_delete', 76, 77),
(37, 29, NULL, NULL, 'canUploadMedias', 78, 79),
(38, 1, NULL, NULL, 'Media', 144, 163),
(39, 38, NULL, NULL, 'Medias', 145, 162),
(40, 39, NULL, NULL, 'isAuthorized', 146, 147),
(41, 39, NULL, NULL, 'canUploadMedias', 148, 149),
(42, 39, NULL, NULL, 'index', 150, 151),
(43, 39, NULL, NULL, 'upload', 152, 153),
(44, 39, NULL, NULL, 'delete', 154, 155),
(45, 39, NULL, NULL, 'thumb', 156, 157),
(46, 39, NULL, NULL, 'update', 158, 159),
(47, 39, NULL, NULL, 'order', 160, 161),
(48, 29, NULL, NULL, 'admin_lock', 80, 81),
(49, 29, NULL, NULL, 'admin_unlock', 82, 83),
(51, 5, NULL, NULL, 'Categories', 85, 100),
(53, 51, NULL, NULL, 'canUploadMedias', 86, 87),
(54, 1, NULL, NULL, 'BoostCake', 164, 175),
(55, 54, NULL, NULL, 'BoostCake', 165, 174),
(56, 55, NULL, NULL, 'index', 166, 167),
(57, 55, NULL, NULL, 'bootstrap2', 168, 169),
(58, 55, NULL, NULL, 'bootstrap3', 170, 171),
(59, 55, NULL, NULL, 'canUploadMedias', 172, 173),
(60, 51, NULL, NULL, 'admin_index', 88, 89),
(61, 51, NULL, NULL, 'admin_add', 90, 91),
(62, 51, NULL, NULL, 'admin_edit', 92, 93),
(63, 51, NULL, NULL, 'admin_move_up', 94, 95),
(64, 51, NULL, NULL, 'admin_move_down', 96, 97),
(65, 1, NULL, NULL, 'BaiViet', 176, 183),
(66, 65, NULL, NULL, 'index', 177, 178),
(67, 65, NULL, NULL, 'category', 179, 180),
(68, 65, NULL, NULL, 'canUploadMedias', 181, 182),
(69, 1, NULL, NULL, 'Front', 184, 187),
(70, 69, NULL, NULL, 'canUploadMedias', 185, 186),
(71, 1, NULL, NULL, 'SanPham', 188, 195),
(72, 71, NULL, NULL, 'index', 189, 190),
(73, 71, NULL, NULL, 'category', 191, 192),
(74, 71, NULL, NULL, 'canUploadMedias', 193, 194),
(75, 51, NULL, NULL, 'admin_delete', 98, 99),
(76, 6, NULL, NULL, 'admin_delete', 14, 15),
(77, 15, NULL, NULL, 'admin_delete', 34, 35),
(78, 5, NULL, NULL, 'Manufacturers', 101, 114),
(79, 78, NULL, NULL, 'admin_index', 102, 103),
(80, 78, NULL, NULL, 'index', 104, 105),
(81, 78, NULL, NULL, 'admin_add', 106, 107),
(82, 78, NULL, NULL, 'admin_edit', 108, 109),
(83, 78, NULL, NULL, 'admin_delete', 110, 111),
(84, 78, NULL, NULL, 'canUploadMedias', 112, 113),
(85, 18, NULL, NULL, 'admin_delete', 48, 49),
(86, 24, NULL, NULL, 'admin_delete', 60, 61),
(87, 5, NULL, NULL, 'Products', 115, 128),
(88, 87, NULL, NULL, 'admin_index', 116, 117),
(89, 87, NULL, NULL, 'index', 118, 119),
(90, 87, NULL, NULL, 'admin_add', 120, 121),
(91, 87, NULL, NULL, 'admin_edit', 122, 123),
(92, 87, NULL, NULL, 'admin_delete', 124, 125),
(93, 87, NULL, NULL, 'canUploadMedias', 126, 127),
(94, 5, NULL, NULL, 'Slides', 129, 142),
(95, 94, NULL, NULL, 'admin_index', 130, 131),
(96, 94, NULL, NULL, 'index', 132, 133),
(97, 94, NULL, NULL, 'admin_add', 134, 135),
(98, 94, NULL, NULL, 'admin_edit', 136, 137),
(99, 94, NULL, NULL, 'admin_delete', 138, 139),
(100, 94, NULL, NULL, 'canUploadMedias', 140, 141);

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

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
(22, 5, 35, '1', '1', '1', '1'),
(23, 4, 72, '1', '1', '1', '1'),
(24, 4, 73, '1', '1', '1', '1'),
(25, 4, 74, '0', '0', '0', '0'),
(26, 4, 66, '1', '1', '1', '1'),
(27, 4, 67, '1', '1', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `category_type_id`, `meta_title`, `meta_description`, `is_draft`, `updated_at`, `created_at`) VALUES
(1, NULL, 1, 10, 'Dây và cáp điện', 0, '', '', 0, '2015-06-07 08:22:56', '0000-00-00 00:00:00'),
(2, 1, 2, 3, 'Dây điện dân dụng', 0, '', '', 0, '2015-06-07 08:23:28', '0000-00-00 00:00:00'),
(3, 1, 4, 5, 'Cáp treo hạ thế', 0, '', '', 0, '2015-06-07 08:23:57', '0000-00-00 00:00:00'),
(4, 1, 6, 7, 'Cáp ngầm hạ thế', 0, '', '', 0, '2015-06-07 08:24:21', '0000-00-00 00:00:00'),
(5, 1, 8, 9, 'Cáp sao su', 0, '', '', 0, '2015-06-07 08:24:21', '0000-00-00 00:00:00'),
(6, NULL, 11, 16, 'TB điện dân dụng', 0, '', '', 0, '2015-06-11 22:29:54', '2015-06-07 03:24:25'),
(7, NULL, 17, 18, 'TB điện công nghiệp', 0, '', '', 0, '2015-06-11 22:29:54', '2015-06-07 03:25:42'),
(8, NULL, 19, 20, 'Ống, gen luồn dây điện chống cháy', 0, '', '', 0, '2015-06-14 08:57:35', '2015-06-07 03:26:04'),
(9, NULL, 21, 22, 'Thiết bị chiếu sáng', 0, '', '', 0, '2015-06-11 22:29:54', '2015-06-07 03:26:14'),
(10, NULL, 23, 24, 'Tủ điện và Thang cáp', 0, '', '', 0, '2015-06-11 22:29:54', '2015-06-07 03:26:24'),
(11, NULL, 25, 26, 'Hệ thống thông gió làm mát', 0, '', '', 0, '2015-06-14 08:58:16', '2015-06-07 03:26:49'),
(13, NULL, 27, 30, 'Thiết bị mạng/Điện nhẹ(cho lên đầu)', 0, '', '', 0, '2015-06-14 09:00:11', '2015-06-07 03:27:10'),
(15, NULL, 31, 32, 'Vật tư phụ', 0, '', '', 0, '2015-06-14 09:00:11', '2015-06-07 03:27:33'),
(16, 6, 12, 13, 'Điện lạnh', 0, '', '', 0, '2015-06-11 22:29:23', '2015-06-11 17:29:10'),
(17, 6, 14, 15, 'Điện tử', 0, '', '', 0, '2015-06-11 22:29:54', '2015-06-11 17:29:25'),
(19, 13, 28, 29, 'Camera', 0, '', '', 0, '2015-06-14 09:00:11', '2015-06-14 04:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(15, 1, 'Tico', 0, 0, '2015-06-06 23:56:30', 0),
(16, 1, 'Cadivi', 0, 0, '2015-06-17 20:38:11', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `ref`, `ref_id`, `file`, `name`, `position`, `created`) VALUES
(2, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00'),
(6, NULL, NULL, NULL, NULL, 0, '2015-04-17 11:55:14'),
(8, NULL, NULL, NULL, NULL, 2, '2015-04-17 12:25:32'),
(26, NULL, NULL, NULL, NULL, 0, '2015-04-17 13:26:06'),
(29, NULL, NULL, NULL, NULL, 3, '2015-04-19 11:52:18'),
(30, 'Category', 2, '/img/uploads/2015/05/Screen_Shot_2015_04_12_at_4_47_05_PM.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 0, '2015-05-19 12:51:51'),
(31, 'Slide', 1, '/img/slide/1.png', 'Screen Shot 2015-05-30 at 04.19.12.png', 1, '2015-05-31 04:10:19'),
(32, 'Slide', 1, '/img/slide/1-1.png', 'Screen Shot 2015-05-30 at 04.19.21.png', 2, '2015-05-31 04:10:20'),
(33, 'Slide', 1, '/img/slide/1-2.png', 'Screen Shot 2015-05-30 at 04.28.38.png', 0, '2015-05-31 04:10:21'),
(34, NULL, NULL, NULL, NULL, 3, '2015-05-31 04:23:00'),
(36, 'Slide', 3, '/img/slide/3.jpg', '10988504_791413490945453_2280876142787128140_n copy.jpg', 0, '2015-06-06 20:43:50'),
(37, 'Slide', 3, '/img/slide/3-1.jpg', '11334208_1114919915189859_1943877366604103972_o.jpg', 0, '2015-06-06 20:43:51'),
(38, 'Product', 1, '/img/product/1.jpg', '11350535_10203096559853743_5478276917340721300_n.jpg', 0, '2015-06-06 20:55:11'),
(39, 'Product', 1, '/img/product/1-1.jpg', '10988504_791413490945453_2280876142787128140_n copy.jpg', 0, '2015-06-06 20:57:02'),
(41, 'Product', 2, '/img/product/2.jpg', 'f38b30b0-3e98-45a8-86d9-d06fda3ef4ba.jpg', 0, '2015-06-06 20:57:52'),
(43, 'Product', 4, '/img/product/4.png', 'day cung 3 soi boc cu.xlpe.pvc.png', 0, '2015-06-07 03:51:59'),
(45, 'Page', 3, '/img/uploads/2015/06/day_cung_1_soi_boc_CU_PVC.png', 'day cung 1 soi boc CU.PVC.png', 0, '2015-06-07 04:24:06'),
(46, 'Page', 3, '/img/uploads/2015/06/day_cung_3_soi_boc_cu_xlpe_pvc.png', 'day cung 3 soi boc cu.xlpe.pvc.png', 0, '2015-06-07 04:24:07'),
(47, 'Page', 3, '/img/uploads/2015/06/Day_mem_2_soi_dang_Ovan_Cadisun.png', 'Day mem 2 soi dang Ovan- Cadisun.png', 0, '2015-06-07 04:24:07'),
(48, 'Page', 3, '/img/uploads/2015/06/Day_mềm_tron_1_sợi_Cadisun-1.png', 'Dây mềm tròn 1 sợi - Cadisun.png', 0, '2015-06-07 04:24:07'),
(49, 'Page', 3, '/img/uploads/2015/06/day_mem_tron_3_soi_boc_VCTF_3x.png', 'day mem tron 3 soi boc VCTF_3x.png', 0, '2015-06-07 04:24:08'),
(50, 'Product', 6, '/img/product/6.png', 'Dây mềm tròn 1 sợi - Cadisun.png', 0, '2015-06-07 09:19:41'),
(51, 'Product', 6, '/img/product/6-1.png', 'Day mem 2 soi dang Ovan- Cadisun.png', 0, '2015-06-07 09:19:42'),
(52, 'Product', 6, '/img/product/6-2.png', 'day mem tron 3 soi boc VCTF_3x.png', 0, '2015-06-07 09:19:42'),
(59, 'Product', 7, '/img/product/7.png', 'logo_lagre.png', 0, '2015-06-11 16:55:12'),
(60, 'Page', 6, '/img/uploads/2015/06/home_2015_cartoon_movie_wallpapers_for_lg_g4.jpg', 'home_2015_cartoon_movie_wallpapers_for_lg_g4.jpg', 0, '2015-06-13 06:27:46'),
(61, 'Page', 8, '/img/uploads/2015/06/3060695_Tinhte_trip_train.jpg', '3060695_Tinhte-trip-train.jpg', 0, '2015-06-13 08:33:21'),
(62, 'Product', 5, '/img/product/5.jpg', '3060695_Tinhte-trip-train.jpg', 0, '2015-06-13 20:37:07'),
(63, 'Product', 5, '/img/product/5-1.jpg', '10988504_791413490945453_2280876142787128140_n.jpg', 0, '2015-06-13 20:37:57'),
(64, 'Slide', 4, '/img/slide/4.png', 'slide 3.png', 0, '2015-06-13 21:21:10'),
(65, 'Slide', 4, '/img/slide/4-1.png', 'slide 2.png', 0, '2015-06-13 21:21:11'),
(66, 'Slide', 4, '/img/slide/4-2.png', 'slide 4.png', 0, '2015-06-13 21:21:11'),
(67, 'Slide', 4, '/img/slide/4-3.png', 'slide1.png', 0, '2015-06-13 21:21:11'),
(68, 'Page', 4, '/img/uploads/2015/06/img5.jpg', 'img5.jpg', 0, '2015-06-13 21:41:20'),
(69, 'Page', 5, '/img/uploads/2015/06/logo_lagre.png', 'logo_lagre.png', 0, '2015-06-13 21:50:41'),
(70, 'Page', 9, '/img/uploads/2015/06/logo_lagre-1.png', 'logo_lagre.png', 0, '2015-06-14 00:34:44'),
(72, 'Category', 1, '/img/uploads/2015/06/Screen_Shot_2015_06_14_at_13_53_57.png', 'Screen Shot 2015-06-14 at 13.53.57.png', 0, '2015-06-14 01:55:00'),
(73, 'Product', 7, '/img/product/7-1.png', 'day mem tron 3 soi boc VCTF_3x.png', 0, '2015-06-14 01:57:40'),
(74, 'Product', 8, '/img/product/8.jpg', 'Ô cắm âm sàn.jpg', 0, '2015-06-14 02:03:41'),
(75, 'Page', 7, '/img/uploads/2015/06/logo_lagre-2.png', 'logo_lagre.png', 0, '2015-06-14 02:04:35'),
(76, 'Page', 2, '/img/uploads/2015/06/logo_lagre-3.png', 'logo_lagre.png', 0, '2015-06-14 02:04:48'),
(77, 'Product', 10, '/img/product/10.png', 'day mem tron 3 soi boc VCTF_3x.png', 0, '2015-06-14 02:08:26'),
(78, 'Product', 11, '/img/product/11.png', 'slide 3.png', 0, '2015-06-14 03:03:12'),
(79, 'Manufacturer', 4, '/img/manufacturer/4.jpg', 'logo invest ko slogan.jpg', 0, '2015-06-17 15:29:13'),
(80, 'Manufacturer', 5, '/img/manufacturer/5.jpg', 'sino.jpg', 0, '2015-06-17 15:29:25'),
(81, 'Manufacturer', 6, '/img/manufacturer/6.jpg', 'dt_sp.jpg', 0, '2015-06-17 15:29:39'),
(83, 'Manufacturer', 7, '/img/manufacturer/7.png', 'logo.png', 0, '2015-06-17 15:30:07'),
(84, 'Manufacturer', 8, '/img/manufacturer/8.jpg', 'Philips GMC_Wordmark_2008_RGB.JPG', 0, '2015-06-17 15:31:02'),
(85, 'Manufacturer', 9, '/img/manufacturer/9.jpg', 'logo_paragon_sidebar.jpg', 0, '2015-06-17 15:32:38'),
(86, 'Manufacturer', 10, '/img/manufacturer/10.png', 'May-lanh-Panasonic-va-LG-may-lanh-hieu-nao-tot.png', 0, '2015-06-17 15:32:51'),
(87, 'Manufacturer', 11, '/img/manufacturer/11.jpg', 'pey1305187033.jpg', 0, '2015-06-17 15:33:57'),
(88, 'Manufacturer', 12, '/img/manufacturer/12.png', 'Quat_treo_tuong_vinawind_dien_co_thong_nhat_QTT400_-RD_(anh 1 (1)).png', 0, '2015-06-17 15:34:07'),
(89, 'Manufacturer', 15, '/img/manufacturer/15.png', '1-1406600845-.png', 0, '2015-06-17 15:37:54'),
(90, 'Manufacturer', 16, '/img/manufacturer/16.jpg', '1544.jpg', 0, '2015-06-17 15:38:09'),
(91, 'Page', 1, '/img/uploads/2015/06/422822_381042775242254_250372017_n.jpg', '422822_381042775242254_250372017_n.jpg', 0, '2015-06-19 07:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `showmenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `editing` int(11) NOT NULL,
  `is_draft` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `parent_id`, `lft`, `rght`, `title`, `showmenu`, `description`, `keywords`, `content`, `media_id`, `deleted_at`, `editing`, `is_draft`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 7, 18, 'Tin tức', 'home_bottom', '', '', '<p>C&aacute;c nội dung tin tức tổng hợp</p>\r\n<p>&nbsp;</p>', 91, NULL, 0, 0, '2015-04-16 19:18:22', '2015-06-19 12:14:23'),
(2, 1, 1, 8, 13, 'Công nghệ', 'home_bottom', '', 'sss', '<p>Tổng hợp &nbsp;c&aacute;c b&agrave;i viết c&ocirc;ng nghệ</p>', 76, NULL, 0, 0, '0000-00-00 00:00:00', '2015-06-19 12:14:41'),
(3, 1, 7, 15, 16, 'Nissan giới thiệu NV350 Urvan - mini bus 16 chỗ, động cơ dầu 2.5L, giá 1,18 tỷ đồng', '', '', '444', '<p><a class="Tinhte_XenTag_TagLink" style="color: #176093; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" href="https://www.tinhte.vn/threads/nissan-gioi-thieu-nv350-urvan-mini-bus-16-cho-dong-co-dau-2-5l-gia-1-18-ty-dong.2471506/tags/nissan/" target="_blank">Nissan</a><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">&nbsp;quyết định tham gia v&agrave;o ph&acirc;n kh&uacute;c&nbsp;</span><a class="Tinhte_XenTag_TagLink" style="color: #176093; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" href="https://www.tinhte.vn/threads/nissan-gioi-thieu-nv350-urvan-mini-bus-16-cho-dong-co-dau-2-5l-gia-1-18-ty-dong.2471506/tags/xe+minibus/" target="_blank">xe minibus</a><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">&nbsp;16 chỗ với mẫu xe&nbsp;</span><a class="Tinhte_XenTag_TagLink" style="color: #176093; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" href="https://www.tinhte.vn/threads/nissan-gioi-thieu-nv350-urvan-mini-bus-16-cho-dong-co-dau-2-5l-gia-1-18-ty-dong.2471506/tags/nv350+urvan/" target="_blank">NV350 Urvan</a><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">&nbsp;được nhập khẩu nguy&ecirc;n chiếc từ Nhật Bản.&nbsp;</span><a class="Tinhte_XenTag_TagLink" style="color: #176093; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" href="https://www.tinhte.vn/threads/nissan-gioi-thieu-nv350-urvan-mini-bus-16-cho-dong-co-dau-2-5l-gia-1-18-ty-dong.2471506/tags/nissan+nv350+urvan/" target="_blank">Nissan NV350 Urvan</a><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">&nbsp;nhắm đến c&aacute;c đối tượng kh&aacute;ch h&agrave;ng l&agrave; doanh nghiệp kinh doanh vận tải, du lịch, trường học,...</span><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><a title="day cung 1 soi boc CU.PVC.png" href="/thietbidien/img/uploads/2015/06/day_cung_1_soi_boc_CU_PVC.png"><img src="/thietbidien/img/uploads/2015/06/day_cung_1_soi_boc_CU_PVC.png" alt="" width="511" height="333" /></a><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">Nissan NV350 về Việt Nam l&agrave; phi&ecirc;n bản được trang bị động cơ diesel YD25DDTi, dung t&iacute;ch 2.5L, cho c&ocirc;ng suất cực đại 127 m&atilde; lực tại 3.200 v&ograve;ng/ph&uacute;t v&agrave; m&ocirc;-men xoắn tối đa 356 Nm tại 1.400 - 2.000 v&ograve;ng/ph&uacute;t. Được thiết kế theo ti&ecirc;u chuẩn tiết kiệm nhi&ecirc;n liệu của Nhật Bản, NV350 Urvan sử dụng tối đa c&ocirc;ng nghệ diesel sạch v&agrave; l&agrave; mẫu xe c&oacute; mức ti&ecirc;u hao nhi&ecirc;n liệu tiết kiệm tốt trong ph&acirc;n kh&uacute;c.</span><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">Về ngoại thất, NV350 Urvan sở hữu một thiết kế đậm chất Nissan, với kiểu d&aacute;ng c&oacute; phần hơi tr&ograve;n trịa. Xe c&oacute; k&iacute;ch thước tổng thể l&agrave; 5.230 x 1.880 x 2.285 m, đủ rộng r&atilde;i để mang đến cho h&agrave;nh kh&aacute;ch sự thoải m&aacute;i trong suốt h&agrave;nh tr&igrave;nh.</span></p>', 47, NULL, 0, 0, '0000-00-00 00:00:00', '2015-06-19 12:14:41'),
(4, 1, NULL, 5, 6, 'Hướng dẫn mua hàng', 'home_bottom', '', '', '<p><strong><a title="img5.jpg" href="/thietbidien/img/uploads/2015/06/img5.jpg"><img src="/thietbidien/img/uploads/2015/06/img5.jpg" alt="" /></a></strong></p>\r\n<p><strong>Hướng dẫn mua h&agrave;ng</strong></p>\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể đặt h&agrave;ng theo một trong c&aacute;c c&aacute;ch sau:&nbsp;</p>\r\n<ol>\r\n<li><strong><em>Đặt h&agrave;ng trực tiếp:</em></strong>&nbsp;th&ocirc;ng qua chức năng B&aacute;n h&agrave;ng online tr&ecirc;n website.</li>\r\n<li><strong><em>Đặt h&agrave;ng th&ocirc;ng qua Yahoo:</em></strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; thể đặt h&agrave;ng trực tiếp th&ocirc;ng qua nick chat yahoo tr&ecirc;n website. Qu&yacute; kh&aacute;ch h&atilde;y để lại th&ocirc;ng tin li&ecirc;n hệ! Nh&acirc;n vi&ecirc;n kinh doanh sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch ngay khi c&oacute; thể v&agrave; chuyển h&agrave;ng đến cho Qu&yacute; kh&aacute;ch</li>\r\n<li><strong><em>Điện thoại trực tiếp:</em></strong></li>\r\n</ol>\r\n<p>- Ms. H&acirc;n&nbsp;<strong>0909.755.393</strong></p>\r\n<p>- Mr.Thắng&nbsp;<strong>0913.90.91.92</strong></p>\r\n<ol>\r\n<li><strong><em>Mua h&agrave;ng trực tiếp:</em></strong>&nbsp;Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể đến địa chỉ sau để mua h&agrave;ng trực tiếp - Mở cửa từ&nbsp;<strong>8h đến 16h30''</strong>&nbsp;tất cả c&aacute;c ng&agrave;y trong tuần:</li>\r\n</ol>\r\n<p><strong><em>Showroom</em></strong><em>:</em>&nbsp;129 &Acirc;u Cơ, Phường 14, Quận T&acirc;n B&igrave;nh, Th&agrave;nh phố Hồ Ch&iacute; Minh.</p>\r\n<p><strong>Giao h&agrave;ng nhanh ch&oacute;ng v&agrave; đảm bảo</strong></p>\r\n<ol>\r\n<li><strong><em>Trong c&aacute;c quận nội th&agrave;nh Th&agrave;nh phố Hồ Ch&iacute; Minh:</em></strong>&nbsp;Đối với qu&yacute; kh&aacute;ch trong c&aacute;c quận nội th&agrave;nh Th&agrave;nh phố Hồ Ch&iacute; Minh khi mua h&agrave;ng xin vui l&ograve;ng li&ecirc;n hệ đặt h&agrave;ng trước tối thiểu 02 ng&agrave;y , ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng đến tận nơi kh&ocirc;ng t&iacute;nh chi ph&iacute; vận chuyển trong nội th&agrave;nh đối với đơn h&agrave;ng &ge; 700.000 VNĐ (địa điểm cho ph&eacute;p xe 1,5 tấn lưu th&ocirc;ng)&nbsp;</li>\r\n<li><strong><em>C&aacute;c tỉnh th&agrave;nh kh&aacute;c</em></strong>&nbsp;Đối với c&aacute;c địa chỉ ngo&agrave;i địa phận Th&agrave;nh phố Hồ Ch&iacute; Minh. H&agrave;ng h&oacute;a được gởi th&ocirc;ng qua &ldquo;ch&agrave;nh&rdquo; do kh&aacute;ch h&agrave;ng chỉ định, c&ocirc;ng ty c&oacute; chế độ hỗ trợ chi ph&iacute; vận chuyển cho kh&aacute;ch h&agrave;ng ở c&aacute;c tỉnh xa (vui l&ograve;ng li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng để biết th&ecirc;m chi tiết). Thời gian qu&yacute; kh&aacute;ch nhận được h&agrave;ng trong khoảng từ 1 đến 3 ng&agrave;y khi ch&uacute;ng t&ocirc;i nhận được đơn h&agrave;ng&nbsp; của Qu&yacute; kh&aacute;ch h&agrave;ng.</li>\r\n</ol>\r\n<p><strong>H&igrave;nh thức thanh to&aacute;n:&nbsp;</strong>Sau khi mua h&agrave;ng, trong qu&aacute; tr&igrave;nh thực hiện thanh to&aacute;n, qu&yacute; kh&aacute;ch c&oacute; thể thanh to&aacute;n bằng những c&aacute;ch sau:</p>\r\n<ol>\r\n<li>Thanh to&aacute;n trực tiếp với nh&acirc;n vi&ecirc;n giao h&agrave;ng&nbsp;đối với kh&aacute;ch h&agrave;ng trong nội th&agrave;nh Th&agrave;nh phố Hồ Ch&iacute; Minh&nbsp;</li>\r\n<li>Nh&acirc;n vi&ecirc;n của c&ocirc;ng ty sẽ thu tiền tại ch&agrave;nh</li>\r\n<li>Chuyển khoản qua t&agrave;i khoản ng&acirc;n h&agrave;ng (vui l&ograve;ng th&ocirc;ng b&aacute;o sau khi chuyển tiền th&agrave;nh c&ocirc;ng)</li>\r\n</ol>\r\n<p><strong>&nbsp;</strong>Tr&acirc;n trọng c&aacute;m ơn Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; lựa chọn v&agrave; tin d&ugrave;ng sản phẩm của C&ocirc;ng ty CP Mai Lan</p>', 68, NULL, 0, 0, '0000-00-00 00:00:00', '2015-06-19 12:13:37'),
(5, 1, NULL, 3, 4, 'Giới thiệu', 'home_bottom', '', 'Thành lập ngày 13/09/1988, trong gần 26 năm phát triển, FPT luôn là công ty Công nghệ thông tin và Viễn thông hàng đầu tại Việt Nam với doanh thu 28.647 tỷ đồng, tương đương 1,36 tỷ USD (Báo cáo tài chính 2013), tạo ra hơn 17.000 việc làm và giá trị vốn hóa thị trường (tại 28/2/2014) đạt 17.608 tỷ đồng, nằm trong số các doanh nghiệp tư nhân lớn nhất tại Việt Nam (theo báo cáo của Vietnam Report 500). ', '<p style="color: #646464; font-size: 12px; font-family: Arial, Helvetica, sans-serif;" align="justify">Th&agrave;nh lập ng&agrave;y 13/09/1988, trong gần&nbsp;<a style="color: #ee7f01; font-family: inherit;" href="http://fpt.com.vn/vn/gioi_thieu/gioi_thieu_chung/lich_su_va_su_kien/">26 năm ph&aacute;t triển</a>, FPT lu&ocirc;n l&agrave; c&ocirc;ng ty C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Viễn th&ocirc;ng h&agrave;ng đầu tại Việt Nam với doanh thu 28.647 tỷ đồng, tương đương 1,36 tỷ USD (B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh 2013), tạo ra hơn 17.000 việc l&agrave;m v&agrave; gi&aacute; trị vốn h&oacute;a thị trường (tại 28/2/2014) đạt 17.608 tỷ đồng, nằm trong số c&aacute;c doanh nghiệp tư nh&acirc;n lớn nhất tại Việt Nam (theo b&aacute;o c&aacute;o của Vietnam Report 500).&nbsp;</p>\r\n<div style="color: #646464; font-size: 11px; font-family: Arial, Helvetica, sans-serif;" align="center">\r\n<div style="font-family: inherit;"><a title="logo_lagre.png" href="/thietbidien/img/uploads/2015/06/logo_lagre.png"><img src="/thietbidien/img/uploads/2015/06/logo_lagre.png" alt="" /></a><br />\r\n<div style="font-family: inherit;">\r\n<div style="font-family: inherit;"><em>L&atilde;nh đạo cấp cao của FPT trong chuyến c&ocirc;ng t&aacute;c nước ngo&agrave;i.</em></div>\r\n</div>\r\n</div>\r\n</div>\r\n<p style="color: #646464; font-size: 12px; font-family: Arial, Helvetica, sans-serif;" align="justify">Với&nbsp;<a style="color: #ee7f01; font-family: inherit;" href="http://fpt.com.vn/vn/san_pham_va_dich_vu/phan_mem/">c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i&nbsp;</a>thuộc lĩnh vực C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Viễn th&ocirc;ng, FPT cung cấp dịch vụ tới 57/63 tỉnh th&agrave;nh tại Việt Nam, kh&ocirc;ng ngừng mở rộng thị trư<a style="color: #ee7f01; font-family: inherit;" name="_GoBack"></a>ờng to&agrave;n cầu. Đến thời điểm hiện tại, FPT đ&atilde; c&oacute; mặt tại 17 quốc gia gồm: Việt Nam, L&agrave;o, Th&aacute;i Lan, Campuchia, Singapore, Mỹ, Anh, Nhật Bản, Malaysia, &Uacute;c, Ph&aacute;p, Philippines, Đức, Myanmar, Kuwait, Bangladesh v&agrave; Indonesia.&nbsp;</p>\r\n<p style="color: #646464; font-size: 12px; font-family: Arial, Helvetica, sans-serif;" align="justify">FPT c&oacute; bề d&agrave;y th&agrave;nh t&iacute;ch trong việc tạo dựng v&agrave; triển khai c&aacute;c m&ocirc; h&igrave;nh kinh doanh mới c&oacute; quy m&ocirc; lớn. Sau gần 26 năm hoạt động, hiện FPT l&agrave; c&ocirc;ng ty số 1 tại Việt Nam trong c&aacute;c lĩnh vực Phần mềm, T&iacute;ch hợp hệ thống, Dịch vụ CNTT, Ph&acirc;n phối v&agrave; Sản xuất c&aacute;c sản phẩm CNTT, B&aacute;n lẻ sản phẩm CNTT... Ở lĩnh vực viễn th&ocirc;ng, FPT l&agrave; một trong 3 nh&agrave; cung cấp dịch vụ viễn th&ocirc;ng cố định v&agrave; Internet lớn nhất Việt Nam. Ở lĩnh vực nội dung số, FPT hiện l&agrave; đơn vị Quảng c&aacute;o trực tuyến số 1 tại Việt Nam v&agrave; tự h&agrave;o sở hữu hệ thống b&aacute;o điện tử c&oacute; 42 triệu lượt truy cập mỗi ng&agrave;y. Ngo&agrave;i ra, FPT c&ograve;n sở hữu khối gi&aacute;o dục đại học v&agrave; dạy nghề với tổng số gần 16.000 sinh vi&ecirc;n v&agrave; l&agrave; một trong những đơn vị đ&agrave;o tạo về CNTT tốt nhất tại Việt Nam.&nbsp;</p>\r\n<p style="color: #646464; font-size: 12px; font-family: Arial, Helvetica, sans-serif;" align="justify">Con đường FPT chọn ch&iacute;nh l&agrave; c&ocirc;ng nghệ, vươn tới tầm cao năng suất lao động mới bằng những tri thức mới th&ocirc;ng qua c&ocirc;ng nghệ. Ph&aacute;t huy tối đa khả năng s&aacute;ng tạo v&agrave; linh hoạt để nắm bắt những cơ hội mới, nỗ lực ứng dụng v&agrave; s&aacute;ng tạo c&ocirc;ng nghệ trong mọi hoạt động ở mọi cấp l&agrave; y&ecirc;u cầu đối với từng người FPT, hướng tới mục ti&ecirc;u chung OneFPT - Tập đo&agrave;n C&ocirc;ng nghệ To&agrave;n cầu H&agrave;ng đầu của Việt Nam.</p>', 69, NULL, 0, 0, '0000-00-00 00:00:00', '2015-06-19 12:13:22'),
(6, 1, NULL, 1, 2, 'Báo giá', '', '', '', '<p>Bảng b&aacute;o gi&aacute;</p>\r\n<p><a title="home_2015_cartoon_movie_wallpapers_for_lg_g4.jpg" href="/thietbidien/img/uploads/2015/06/home_2015_cartoon_movie_wallpapers_for_lg_g4.jpg"><img src="/thietbidien/img/uploads/2015/06/home_2015_cartoon_movie_wallpapers_for_lg_g4.jpg" alt="" /></a></p>', 60, NULL, 0, 0, '2015-06-06 20:04:47', '2015-06-19 11:59:27'),
(7, 1, 1, 14, 17, 'Xe cộ', '', '', '', '<p>Xe cộ</p>', 75, NULL, 0, 0, '2015-06-13 06:28:21', '2015-06-19 12:14:41'),
(8, 1, 2, 11, 12, 'Tại sao những chuyến đi lượt về luôn có cảm giác nhanh hơn so với lượt đi?', '', '', 'Có bao giờ bạn cảm thấy rằng những chuyến đi, dù cùng một quãng đường nhưng lượt đi luôn có cảm giác dài hơn lượt về? Tại sao vậy? Các nhà nghiên cứu tại Đại học Kyoto, Nhật Bản gọi đây là hiệu ứng hành trình về và mới đây, họ đã lý giải được hiện tượng tâm lý thú vị này.', '<p><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">C&oacute; bao giờ bạn cảm thấy rằng những chuyến đi, d&ugrave; c&ugrave;ng một qu&atilde;ng đường nhưng lượt đi lu&ocirc;n c&oacute; cảm gi&aacute;c d&agrave;i hơn lượt về? Tại sao vậy? C&aacute;c nh&agrave;&nbsp;</span><a class="Tinhte_XenTag_TagLink" style="color: #176093; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" href="https://www.tinhte.vn/threads/ban-co-biet-tai-sao-nhung-chuyen-di-luot-ve-luon-co-cam-giac-nhanh-hon-so-voi-luot-di.2471117/tags/nghi%C3%AAn+c%E1%BB%A9u/" target="_blank">nghi&ecirc;n cứu</a><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">&nbsp;tại&nbsp;</span><a class="Tinhte_XenTag_TagLink" style="color: #176093; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" href="https://www.tinhte.vn/threads/ban-co-biet-tai-sao-nhung-chuyen-di-luot-ve-luon-co-cam-giac-nhanh-hon-so-voi-luot-di.2471117/tags/%C4%91%E1%BA%A1i+h%E1%BB%8Dc+kyoto/" target="_blank">Đại học Kyoto</a><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">, Nhật Bản gọi đ&acirc;y l&agrave; hiệu ứng h&agrave;nh tr&igrave;nh về v&agrave; mới đ&acirc;y, họ đ&atilde; l&yacute; giải được hiện tượng t&acirc;m l&yacute; th&uacute; vị n&agrave;y.</span><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">Trong nghi&ecirc;n cứu, họ đ&atilde; y&ecirc;u cầu 20 người đ&agrave;n &ocirc;ng cất đồng hồ đi v&agrave; cho xem 2 bộ phim c&oacute; thời lượng bằng nhau, được ch&iacute;nh tay c&aacute;c nh&agrave; nghi&ecirc;n cứu quay lại khi họ đi bộ tr&ecirc;n 1 lộ tr&igrave;nh định sẵn. Sau khi xem xong video đầu ti&ecirc;n, họ được nghỉ 10 ph&uacute;t trước khi xem tiếp video thứ 2. Một nửa số t&igrave;nh nguyện vi&ecirc;n được cho xem đoạn phim lượt đi 2 lần li&ecirc;n tục. Trong khi đ&oacute;, nửa c&ograve;n lại xem đoạn phim h&agrave;nh tr&igrave;nh khứ hồi (lượt đi + lượt về). Để đo lường cảm nhận về độ nhanh của h&agrave;nh tr&igrave;nh m&agrave; c&aacute;c t&igrave;nh nguyện vi&ecirc;n cảm nhận được, nh&oacute;m nghi&ecirc;n cứu y&ecirc;u cầu họ cho biết cảm nhận 3 ph&uacute;t mỗi lần trong qu&aacute; tr&igrave;nh xem phim.</span><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">Sau khi xem xong 2 bộ phim, tất cả c&aacute;c t&igrave;nh nguyện vi&ecirc;n cho biết nhận định của họ về độ d&agrave;i của 2 đoạn phim. Kết quả, những người xem bộ phim khứ hồi cho biết họ nhận thấy chuyến đi lượt về nhanh hơn. Th&uacute; vị hơn, trong suốt qu&aacute; tr&igrave;nh xem phim th&igrave; họ kh&ocirc;ng nhận thấy thời gian tr&ocirc;i qua nhanh hơn. Nhưng đến cuối c&ugrave;ng, khi được hỏi th&igrave; "hiệu ứng h&agrave;nh tr&igrave;nh về" mới xuất hiện. C&aacute;c nh&agrave; nghi&ecirc;n cứu cho rằng khi biết được rằng ch&uacute;ng ta đang đi trở về th&igrave; cảm gi&aacute;c thời gian c&oacute; vẻ ngắn đi.</span><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">C&aacute;c nghi&ecirc;n cứu trước đ&acirc;y cho rằng cảm gi&aacute;c n&agrave;y bắt nguồn từ sự tập trung v&agrave; dự đo&aacute;n. Cụ thể, khi người ta đi tới một nơi n&agrave;o đ&oacute;, họ sẽ lu&ocirc;n tập trung để tới đ&oacute; đ&uacute;ng giờ v&agrave; đếm từng gi&acirc;y một tr&ecirc;n đường đi. Ngược lại, khi ch&uacute;ng ta trở về nh&agrave;, &aacute;p lực thời gian kh&ocirc;ng c&ograve;n nữa, ch&uacute;ng ta sẽ nghĩ về những thứ kh&aacute;c v&agrave; h&agrave;nh tr&igrave;nh dường như sẽ tr&ocirc;i qua nhanh hơn. Một l&yacute; giải kh&aacute;c cũng được chấp nhận l&agrave; ch&uacute;ng ta đ&atilde; qu&aacute; n&ocirc;n n&oacute;ng khi bắt đầu chuyến đi, dẫn tới việc ước t&iacute;nh thời gian d&agrave;i hơn so với b&igrave;nh thường.</span><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><span style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;">Th&uacute; vị hơn nữa, hiệu ứng n&agrave;y vẫn xảy ra mặc d&ugrave; đoạn đường về đi theo một lộ tr&igrave;nh kh&aacute;c so với l&uacute;c đi. Trong khi đ&oacute;, n&oacute; lại kh&ocirc;ng xảy ra khi ch&uacute;ng ta đi tr&ecirc;n những con đường quen thuộc m&agrave; chỉ xuất hiện đối với những lộ tr&igrave;nh lạ. Sau c&ugrave;ng, c&aacute;c nh&agrave; nghi&ecirc;n cứu khẳng định rằng bất kể l&yacute; do g&igrave; đằng sau hiệu ứng n&agrave;y th&igrave; n&oacute; dường như v&ocirc; hại v&agrave; h&atilde;y tận hưởng n&oacute; thay v&igrave; lo lắng. Cuối c&ugrave;ng, ch&uacute;c c&aacute;c bạn c&oacute; những chuyến đi chơi vui vẻ trong h&egrave; n&agrave;y.</span><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /><br style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;" /></p>\r\n<div style="color: #141414; font-size: 15px; font-family: Helvetica, Arial, sans-serif;"><strong><em>Tham khảo&nbsp;<a class="externalLink" style="color: #176093;" href="http://www.dailymail.co.uk/sciencetech/article-3117035/Why-return-journeys-feel-shorter-Travellers-relaxed-way-home-trip-think-time.html" target="_blank" rel="nofollow">Dailymail</a></em></strong></div>', 61, NULL, 0, 0, '2015-06-13 08:31:40', '2015-06-19 12:14:41'),
(9, 1, 2, 9, 10, 'Bí quyết lựa chọn bóng đèn chiếu sáng hợp lý', '', '', '', '<p>Ph&ograve;ng rộng: D&ugrave;ng đ&egrave;n huỳnh quang T8 Đ&egrave;n huỳnh quang (c&ograve;n gọi l&agrave; đ&egrave;n tu&yacute;p) c&oacute; 2 loại: tu&yacute;p b&eacute;o (T10) d&agrave;i 0,6m-1,2m, đường k&iacute;nh 32mm, c&ocirc;ng suất 20- 40 W, tuổi thọ trung b&igrave;nh 6.000 - 8.000 giờ, cho nguồn &aacute;nh s&aacute;ng trắng, tiết kiệm điện hơn so với b&oacute;ng đ&egrave;n sợi đốt. Đ&egrave;n tu&yacute;p gầy (T8) d&agrave;i 0,6m-1,2m, đường k&iacute;nh 26mm, khả năng chiếu s&aacute;ng như đ&egrave;n T10 nhưng c&ocirc;ng suất thấp hơn (18- 36 W) n&ecirc;n tiết kiệm điện hơn. Cả đ&egrave;n T8 v&agrave; T10 đều d&ugrave;ng chung c&aacute;c thiết bị phụ trợ như chao đ&egrave;n, m&aacute;ng đ&egrave;n&hellip;, v&igrave; vậy, khi thay thế đ&egrave;n T10 bằng đ&egrave;n T8, người ti&ecirc;u d&ugrave;ng c&oacute; thể tận dụng to&agrave;n bộ c&aacute;c phụ trợ. Để tiết kiệm điện, n&ecirc;n d&ugrave;ng trọn bộ gồm đ&egrave;n huỳnh quang T8 v&agrave; chấn lưu điện tử (kh&ocirc;ng bị nhấp nh&aacute;y, k&iacute;ch thước nhỏ gọn, kh&ocirc;ng g&acirc;y tiếng &ugrave;, tiết kiệm điện) hoặc chấn lưu sắt từ tổn hao thấp (được chế tạo từ l&aacute; t&ocirc;n silic chất lượng cao, c&oacute; thể tiết kiệm điện năng từ 10 - 20%). Trong văn ph&ograve;ng, tốt nhất n&ecirc;n d&ugrave;ng đ&egrave;n T8 k&egrave;m theo chấn lưu điện tử chất lượng cao, bởi khả năng bức xạ &aacute;nh s&aacute;ng của đ&egrave;n T8 lớn hơn đ&egrave;n T10, tuổi thọ đ&egrave;n T8 cao hơn đ&egrave;n sợi đốt th&ocirc;ng thường, lại c&oacute; chiều d&agrave;i lớn n&ecirc;n &aacute;nh s&aacute;ng toả rộng ph&acirc;n bố đều trong ph&ograve;ng l&agrave;m việc, trong khi đ&egrave;n compact cũng c&oacute; thể tiết kiệm điện nhưng &aacute;nh s&aacute;ng toả hẹp. Hơn nữa, nếu d&ugrave;ng đ&egrave;n compact với số lượng lớn sẽ vừa kh&oacute; bố tr&iacute; để &aacute;nh s&aacute;ng ph&acirc;n phối đều, vừa l&atilde;ng ph&iacute; v&igrave; gi&aacute; đ&egrave;n compăct đắt hơn. Nếu đi k&egrave;m với chấn lưu điện tử chất lượng cao, c&oacute; thể tiết kiệm điện 30% so với chấn lưu sắt từ th&ocirc;ng thường. Ph&ograve;ng nhỏ: N&ecirc;n d&ugrave;ng đ&egrave;n compăct Đ&egrave;n compact l&agrave; loại đ&egrave;n huỳnh quang đặc biệt d&ugrave;ng đui đ&egrave;n th&ocirc;ng dụng c&oacute; dải c&ocirc;ng suất từ 5 - 55W, tuổi thọ trung b&igrave;nh 6.000 - 8.000 giờ, hiệu suất chiếu s&aacute;ng cao, k&iacute;ch thước nhỏ gọn, lắp đặt đơn giản. B&oacute;ng đ&egrave;n compact c&ograve;n c&oacute; ưu điểm l&agrave; &aacute;nh s&aacute;ng kh&ocirc;ng bị nhấp nh&aacute;y do được trang bị chấn lưu điện tử. Khi thay cho b&oacute;ng đ&egrave;n sợi đốt c&oacute; thể sử dụng lại đui đ&egrave;n cũ n&ecirc;n rất tiện lợi. Tuy mức đầu tư ban đầu của b&oacute;ng đ&egrave;n compact cao hơn so với đ&egrave;n sợi đốt nhưng hiệu quả tiết kiệm điện rất lớn do giảm lượng ti&ecirc;u hao điện năng 65- 80%, tuổi thọ cao gấp 6-8 lần so với b&oacute;ng đ&egrave;n sợi đốt. Với c&aacute;c lọai ph&ograve;ng nhỏ, c&ocirc;ng tr&igrave;nh vệ sinh, h&agrave;nh lang, đ&egrave;n trang tr&iacute;&hellip;n&ecirc;n d&ugrave;ng đ&egrave;n compact với c&ocirc;ng suất v&agrave; số lượng đ&egrave;n ph&ugrave; hợp.</p>\r\n<p>Đ&egrave;n compact 15W c&oacute; thể đạt độ s&aacute;ng tương đương với một đ&egrave;n sợi đốt th&ocirc;ng thường 75W nhưng tiết kiệm được 80% điện năng. Ngo&agrave;i ra, &aacute;nh s&aacute;ng đ&egrave;n compact toả ra thật m&agrave;u, b&oacute;ng đ&egrave;n compact triphosphor c&oacute; chỉ số m&agrave;u hợp l&yacute;, &aacute;nh s&aacute;ng kh&ocirc;ng nhợt nhạt. Những nơi như tiền sảnh, ban c&ocirc;ng c&oacute; diện t&iacute;ch hẹp th&igrave; n&ecirc;n d&ugrave;ng đ&egrave;n compact 5W l&agrave; ph&ugrave; hợp. B&agrave;n l&agrave;m việc: N&ecirc;n chọn đ&egrave;n Halogen B&oacute;ng đ&egrave;n Halogen l&agrave; b&oacute;ng đ&egrave;n sợi đốt c&oacute; bổ sung kh&iacute; halogen l&agrave;m tăng hiệu qủa ph&aacute;t s&aacute;ng, c&ocirc;ng suất từ 40 &ndash; 300 W, tuổi thọ trung b&igrave;nh 2.000 giờ. Ưu điểm của đ&egrave;n sợi đốt halogen c&oacute; thể d&ugrave;ng chiết &aacute;p điều chỉnh lượng &aacute;nh s&aacute;ng to nhỏ theo nhu cầu, vừa đỡ l&atilde;ng ph&iacute; điện, vừa đỡ hại cho mắt khi kh&ocirc;ng cần đến độ rọi qu&aacute; mạnh, lại tận dụng được &aacute;nh s&aacute;ng chung chiếu tới một c&aacute;ch tiết kiệm nhất. Loại đ&egrave;n Halogen tiết kiệm điện c&oacute; hiệu suất năng lượng ph&aacute;t quang cao gấp 5 lần so với đ&egrave;n sợi đốt th&ocirc;ng thường. B&oacute;ng đ&egrave;n Halogen lại cho &aacute;nh s&aacute;ng với chỉ số m&agrave;u cao v&agrave; tự nhi&ecirc;n, kh&ocirc;ng g&acirc;y lo&aacute;, kh&ocirc;ng l&agrave;m mỏi mắt, nhức đầu v&agrave; ch&oacute;ng mặt, kh&ocirc;ng g&acirc;y l&atilde;ng ph&iacute; điện trong ph&ograve;ng khi nhiều nơi kh&ocirc;ng cần chiếu s&aacute;ng.</p>\r\n<p>Với ưu điểm đ&oacute; đ&egrave;n Halogen ph&ugrave; hợp với c&ocirc;ng việc văn ph&ograve;ng, nghi&ecirc;n cứu. Tr&ecirc;n b&agrave;n l&agrave;m việc thường cần lượng &aacute;nh s&aacute;ng cục bộ trong phạm vi nhỏ để học b&agrave;i, l&agrave;m việc, đọc s&aacute;ch b&aacute;o&hellip; , v&igrave; vậy, tốt nhất n&ecirc;n d&ugrave;ng đ&egrave;n sợi đốt Halogen c&ocirc;ng suất thấp k&egrave;m theo chiết &aacute;p. Khi cần sưởi, sấy: N&ecirc;n d&ugrave;ng đ&egrave;n sợi đốt B&oacute;ng đ&egrave;n sợi đốt cho &aacute;nh s&aacute;ng v&agrave;ng, c&oacute; dải c&ocirc;ng suất từ 25 W-300 W, tuổi thọ trung b&igrave;nh 1.000 giờ. Ưu điểm cơ bản của đ&egrave;n sợi đốt l&agrave; c&oacute; chỉ số hiện m&agrave;u rất cao nhưng nhược điểm l&agrave; hiệu suất &aacute;nh s&aacute;ng chỉ đạt 6-7% so với lượng điện ti&ecirc;u hao, 94% c&ograve;n lại biến th&agrave;nh nhiệt năng n&ecirc;n d&ugrave;ng lọai đ&egrave;n n&agrave;y vừa tốn điện, vừa n&oacute;ng, kh&ocirc;ng th&iacute;ch hợp d&ugrave;ng trong chiếu s&aacute;ng. Tuy nhi&ecirc;n, nếu d&ugrave;ng để sưởi ấm cho gia cầm, sưởi hoa trong nh&agrave; k&iacute;nh, sấy vật phẩm khi kh&ocirc;ng c&oacute; l&ograve; sấy th&igrave; đ&egrave;n sợi đốt lại ph&aacute;t huy hiệu quả tốt nhất. Đặc biệt l&agrave; nếu d&ugrave;ng chiết &aacute;p c&oacute; thể điều chỉnh được độ s&aacute;ng theo &yacute; muốn m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng lưới điện. L&ecirc; Ngọc</p>', 70, NULL, 0, 0, '2015-06-14 00:31:29', '2015-06-19 12:12:47');

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
  `price` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intensity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voltage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other_spec` text COLLATE utf8_unicode_ci NOT NULL,
  `introduction` text COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` int(2) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `hight_light`, `code`, `manufacturer_id`, `category_id`, `media_id`, `made_from`, `amount`, `price`, `color`, `capacity`, `intensity`, `voltage`, `other_spec`, `introduction`, `is_draft`, `updated_at`, `created_at`) VALUES
(1, 1, 'Hello', '', 'CAT5E', 4, 2, 39, '', 0, 0, '', '', '', '', '', '', 0, '2015-06-14 05:43:54', '2015-06-06 19:19:12'),
(2, 1, 'Ho ho', '', 'CAT5E', 5, 1, 0, '', 0, 0, '', '', '', '', '', '', 0, '2015-06-14 05:43:58', '2015-06-06 20:57:16'),
(3, 1, 'bababababab', '', 'CAT5E', 0, 4, 0, '', 0, 0, '', '', '', '', '', '', 0, '2015-06-14 05:44:01', '2015-06-06 20:58:08'),
(4, 1, 'Cáp mạng CAT5E ', 'Sản phẩm đang trong chương trình khuyến mãi đến 40%', 'CAT5E', 5, 1, 43, '', 0, 0, '', '', '', '', '', '', 0, '2015-06-14 06:23:11', '2015-06-06 21:25:34'),
(5, 1, 'Áp to mát', 'ds avdsa vdsa vds avsd', 'CAT5E', 6, 6, 63, '', 100, 0, 'Trắng', '', '10A', '~230V', 'Làm bằng nhựa, cứng cáp, chịu nhiệt', '', 0, '2015-06-14 05:44:03', '2015-06-06 21:32:12'),
(6, 1, 'Cap ngam ha the', '', '', 0, 4, 51, '', 0, 0, '', '', '', '', '', '<p><a href="/thietbidien/img/product/6.png" title="Dây mềm tròn 1 sợi - Cadisun.png"><img src="/thietbidien/img/product/6.png" style="height: 71px;" /></a></p>\r\n', 0, '2015-06-07 14:21:28', '2015-06-07 09:19:29'),
(7, 1, 'Cap dien', 'Khuyen mai', 'CD0056', 5, 2, 0, '', 700, 0, 'Vàng, xanh, đỏ, xanh đỏ', '1000VA', '12A', '223v', '', '<p>C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;</p>\r\n\r\n<p>C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;</p>\r\n\r\n<p>C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;C&aacute;p diện SINOC&aacute;p diện SINO&nbsp;C&aacute;p diện SINO&nbsp;</p>\r\n', 0, '2015-06-14 06:57:21', '2015-06-11 16:42:34'),
(8, 1, 'Aptomat tự động', '', 'ATAU', 4, 15, 0, '', 0, 0, '', '', '', '', '', '<p>M&ocirc; tả&nbsp;M&ocirc; tả&nbsp;M&ocirc; tả&nbsp;M&ocirc; tả&nbsp;M&ocirc; tả&nbsp;M&ocirc; tả&nbsp;M&ocirc; tả&nbsp;</p>\r\n', 0, '2015-06-14 07:03:44', '2015-06-13 20:27:54'),
(9, 1, '', '', '', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 1, '2015-06-14 07:03:50', '2015-06-14 02:03:50'),
(10, 1, 'Dây điện 3 lõi', '', 'CAD333', 10, 5, 0, '', 935, 0, 'xanh, đỏ', '', '10A', '230V', 'Kích thước : 3x4 5x6', '<p>D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;</p>\r\n\r\n<p>D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắcD&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắcD&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắcD&acirc;y bền, chắc&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắcD&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắcD&acirc;y bền, chắc&nbsp;D&acirc;y bền, chắc&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, '2015-06-14 07:39:51', '2015-06-14 02:06:50'),
(11, 1, 'Hocvt', '', '', 6, 2, 0, '', 0, 0, '', '', '', '', '', '<table border="0" cellpadding="0" cellspacing="0" style="width:1165px;" width="874">\r\n	<colgroup>\r\n		<col />\r\n		<col />\r\n		<col />\r\n		<col />\r\n		<col />\r\n		<col />\r\n		<col />\r\n		<col />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height="39">\r\n			<td height="39" style="height:53px;width:49px;">Stt</td>\r\n			<td style="width:227px;">T&ecirc;n vật tư</td>\r\n			<td style="width:229px;">Th&ocirc;ng số kỹ thuật</td>\r\n			<td style="width:85px;">&nbsp;Đvt&nbsp;</td>\r\n			<td style="width:112px;">Số lượng</td>\r\n			<td style="width:149px;">Đơn gi&aacute;</td>\r\n			<td style="width:149px;">Th&agrave;nh tiền</td>\r\n			<td style="width:164px;">Ghi ch&uacute;</td>\r\n		</tr>\r\n		<tr height="29">\r\n			<td height="29" style="height:39px;width:49px;">1</td>\r\n			<td style="width:227px;">Camera trụ hồng ngoại</td>\r\n			<td style="width:229px;">&nbsp;</td>\r\n			<td>C&aacute;i</td>\r\n			<td>&nbsp;1</td>\r\n			<td>&nbsp;2,800,000</td>\r\n			<td>&nbsp;2,800,000</td>\r\n			<td style="width:164px;">Huviron - Korea</td>\r\n		</tr>\r\n		<tr height="29">\r\n			<td height="29" style="height:39px;width:49px;">2</td>\r\n			<td style="width:227px;">Nguồn camera</td>\r\n			<td>Power Supply for Camera</td>\r\n			<td>C&aacute;i</td>\r\n			<td>&nbsp;1</td>\r\n			<td>&nbsp;120,000</td>\r\n			<td>&nbsp;120,000</td>\r\n			<td style="width:164px;">China/VN</td>\r\n		</tr>\r\n		<tr height="29">\r\n			<td height="29" style="height:39px;width:49px;">3</td>\r\n			<td style="width:227px;">Giắc nối</td>\r\n			<td>Jack conect Video</td>\r\n			<td>C&aacute;i</td>\r\n			<td>&nbsp;22</td>\r\n			<td>&nbsp;6,000</td>\r\n			<td>&nbsp;132,000</td>\r\n			<td style="width:164px;">China/VN</td>\r\n		</tr>\r\n		<tr height="29">\r\n			<td height="29" style="height:39px;width:49px;">4</td>\r\n			<td style="width:227px;">C&aacute;p đồng trục</td>\r\n			<td style="width:229px;">&nbsp;</td>\r\n			<td>m</td>\r\n			<td>&nbsp;2,080</td>\r\n			<td>&nbsp;4,100</td>\r\n			<td>&nbsp;8,528,000</td>\r\n			<td style="width:164px;">VN</td>\r\n		</tr>\r\n		<tr height="30">\r\n			<td height="30" style="height:40px;">&nbsp;</td>\r\n			<td style="width:227px;">T&Ocirc;NG</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td align="right">&nbsp;11,580,000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr height="30">\r\n			<td height="30" style="height:40px;">&nbsp;</td>\r\n			<td style="width:227px;">VAT 10%</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td align="right">&nbsp;1,158,000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr height="30">\r\n			<td height="30" style="height:40px;">&nbsp;</td>\r\n			<td style="width:227px;">TỔNG CỘNG</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td align="right">&nbsp;12,738,000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '2015-06-14 08:04:20', '2015-06-14 03:01:44');

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
  `is_draft` int(2) NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `is_draft`, `position`, `created_at`, `updated_at`) VALUES
(1, 'cds avds avdsavdsavd', 0, 'no', '0000-00-00 00:00:00', '2015-05-31 09:12:19'),
(3, 'HihI', 0, 'no', '2015-06-07 03:43:15', '2015-06-07 01:43:53'),
(4, 'Slide trang chủ', 0, 'home_main', '2015-06-14 04:20:53', '2015-06-14 02:21:03');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;