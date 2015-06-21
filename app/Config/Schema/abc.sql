-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2015 at 12:25 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(13, NULL, 27, 32, 'Thiết bị mạng/Điện nhẹ(cho lên đầu)', 0, '', '', 0, '2015-06-21 10:05:22', '2015-06-07 03:27:10'),
(15, NULL, 33, 34, 'Vật tư phụ', 0, '', '', 0, '2015-06-21 10:05:22', '2015-06-07 03:27:33'),
(16, 6, 12, 13, 'Điện lạnh', 0, '', '', 0, '2015-06-11 22:29:23', '2015-06-11 17:29:10'),
(17, 6, 14, 15, 'Điện tử', 0, '', '', 0, '2015-06-11 22:29:54', '2015-06-11 17:29:25'),
(19, 13, 28, 29, 'Camera', 0, '', '', 0, '2015-06-14 09:00:11', '2015-06-14 04:00:00'),
(20, 13, 30, 31, 'Tổng đài điện thoại', 0, '', '', 0, '2015-06-21 10:05:22', '2015-06-21 05:05:04');

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

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
(91, 'Page', 1, '/img/uploads/2015/06/422822_381042775242254_250372017_n.jpg', '422822_381042775242254_250372017_n.jpg', 0, '2015-06-19 07:14:12'),
(92, 'Product', 12, '/img/product/12.jpg', 'camera_EF134.jpg', 0, '2015-06-20 21:56:50'),
(93, 'Product', 13, '/img/product/13.jpg', 'camera_EF134-500x500.jpg', 0, '2015-06-21 04:34:21'),
(94, 'Product', 14, '/img/product/14.jpg', 'camera_EF134-500x500.jpg', 0, '2015-06-21 04:36:17'),
(95, 'Product', 15, '/img/product/15.png', '184833_400x311.68.png', 0, '2015-06-21 04:39:04'),
(96, 'Product', 16, '/img/product/16.jpg', 'p_9494_PANASONIC-BL-VP101.jpg', 0, '2015-06-21 04:42:37'),
(97, 'Product', 17, '/img/product/17.jpg', 'p_7087_PANASONIC-BL-C121.jpg', 0, '2015-06-21 04:46:10'),
(98, 'Product', 18, '/img/product/18.jpg', 'p_7088_PANASONIC-BL-C230.jpg', 0, '2015-06-21 04:49:41'),
(99, 'Product', 19, '/img/product/19.jpg', 'p_7094_PANASONIC-BL-VT164.jpg', 0, '2015-06-21 04:58:52'),
(100, 'Product', 21, '/img/product/21.jpg', 'panasonic-824.jpg', 0, '2015-06-21 05:06:54'),
(101, 'Product', 22, '/img/product/22.jpg', 'kx-ns30033_2.jpg', 0, '2015-06-21 05:08:44'),
(102, 'Product', 23, '/img/product/23.jpg', '7730.jpg', 0, '2015-06-21 05:10:53'),
(103, 'Product', 24, '/img/product/24.jpg', 'panasonic-kx-dt543x.jpg', 0, '2015-06-21 05:12:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(12, 1, 'Camera IP Dome hồng ngoại 1.3Megapixels PANASONIC K-EF134L02', '', 'K-EF134L02', 10, 19, 0, '', 100, 2980000, 'Trắng', '4W', '', '12VDC hoặc nguồn PoE', '', '<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Cảm biến h&igrave;nh ảnh: 1/3&rdquo; type 1.3 Megapixel progressive scan MOS Sensor.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Độ ph&acirc;n giải h&igrave;nh ảnh: 1.3Megapixels</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; &Aacute;nh s&aacute;ng tối thiểu: 0,05 Lux, 0 Lux khi bật hồng ngoại.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Ống k&iacute;nh&nbsp;camera ip: 2.8mm/F2.0</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; G&oacute;c quan s&aacute;t: 89 độ.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Tầm quan s&aacute;t hồng ngoại: 20 m&eacute;t.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Chuẩn n&eacute;n h&igrave;nh: H.264 &amp; MJPEG dual-stream encoding, 02 luồng Video đồng thời.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Tốc độ truyền: 30fps tại 1.3M (1280 &times; 960) v&agrave; 720p (1280 &times; 720).</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Chức năng chống ngược s&aacute;ng: BLC / HLC / WDR</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Tự động c&acirc;n bằng &aacute;nh s&aacute;ng trắng.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Tự động điều chỉnh độ lợi AGC.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Kỹ thuật giảm nhiễu 3D.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Cho ph&eacute;p che (kh&ocirc;ng quan s&aacute;t) đến 4 khu vực ri&ecirc;ng tư (Privacy Zone).</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Hỗ trợ giao thức mạng: IPv4/IPv6, HTTP, HTTPS, SSL, TCP/IP, UDP, UPnP, ICMP, IGMP, SNMP, RTSP, RTP, SMTP, NTP, DHCP, DNS, PPPoE, DDNS, FTP, IP Filter, QoS, Bonjour, Onvif compatible</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; L&ecirc;n đến 20 người truy cập đồng thời.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Gi&aacute;m s&aacute;t qua điện thoại di động Smart phone: iPhone, iPad, Android&hellip;</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Hỗ trợ cấp nguồn qua mạng PoE.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Nguồn điện cung cấp: 12VDC hoặc nguồn PoE. C&ocirc;ng suất ti&ecirc;u thụ tối đa 4W.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Ti&ecirc;u chuẩn chống nước v&agrave; bụi IP66.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; K&iacute;ch thước&nbsp;camera: 113.6 mm x 85.8 mm.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp; Trọng lượng: 290g.</p>\r\n<p style="margin-left: 18pt;">-&nbsp;&nbsp;&nbsp;&nbsp;<strong>Bảo h&agrave;nh: 12 th&aacute;ng.</strong></p>', 0, '2015-06-21 03:26:11', '2015-06-20 21:52:28'),
(13, 1, 'Camera IP Dome hồng ngoại 1.3Megapixels PANASONIC K-EF134L03', 'Cảm biến hình ảnh: 1/3” type 1.3 Megapixel progressive scan MOS Sensor', 'K-EF134L03', 10, 19, 0, '', 100, 2700000, '', '4W', '12VDC hoặc nguồn PoE', '', '', '<p>-&nbsp;&nbsp;&nbsp; Cảm biến h&igrave;nh ảnh: 1/3&rdquo; type 1.3 Megapixel progressive scan MOS Sensor.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Độ ph&acirc;n giải h&igrave;nh ảnh: 1.3Megapixels</p>\r\n<p>-&nbsp;&nbsp;&nbsp; &Aacute;nh s&aacute;ng tối thiểu: 0,05 Lux, 0 Lux khi bật hồng ngoại.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Ống k&iacute;nh&nbsp;camera ip: 3.6mm/F1.8</p>\r\n<p>-&nbsp;&nbsp;&nbsp; G&oacute;c quan s&aacute;t: 70 độ.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tầm quan s&aacute;t hồng ngoại: 20 m&eacute;t.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Chuẩn n&eacute;n h&igrave;nh: H.264 &amp; MJPEG dual-stream encoding, 02 luồng Video đồng thời.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tốc độ truyền: 30fps tại 1.3M (1280 &times; 960) v&agrave; 720p (1280 &times; 720).</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Chức năng chống ngược s&aacute;ng: BLC / HLC / WDR</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tự động c&acirc;n bằng &aacute;nh s&aacute;ng trắng.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tự động điều chỉnh độ lợi AGC.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Kỹ thuật giảm nhiễu 3D.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Cho ph&eacute;p che (kh&ocirc;ng quan s&aacute;t) đến 4 khu vực ri&ecirc;ng tư (Privacy Zone).&nbsp;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;Hỗ trợ giao thức mạng: IPv4/IPv6, HTTP, HTTPS, SSL, TCP/IP, UDP, UPnP, ICMP, IGMP, SNMP, RTSP, RTP, SMTP, NTP, DHCP, DNS, PPPoE, DDNS, FTP, IP Filter, QoS, Bonjour, Onvif compatible</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;L&ecirc;n đến 20 người truy cập đồng thời.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Gi&aacute;m s&aacute;t qua điện thoại di động Smart phone: iPhone, iPad, Android&hellip;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ cấp nguồn qua mạng PoE.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Nguồn điện cung cấp: 12VDC hoặc nguồn PoE. C&ocirc;ng suất ti&ecirc;u thụ tối đa 4W.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Ti&ecirc;u chuẩn chống nước v&agrave; bụi IP66.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;K&iacute;ch thước&nbsp;camera: 113.6 mm x 85.8 mm.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Trọng lượng: 290g.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Bảo h&agrave;nh: 12 th&aacute;ng.</p>', 0, '2015-06-21 09:33:15', '2015-06-21 04:31:30'),
(14, 1, 'Camera IP Dome hồng ngoại 1.3Megapixels PANASONIC K-EF134L06', '', 'K-EF134L06', 9, 19, 0, '', 100, 2500000, '', '4w', '12VDC hoặc nguồn PoE', '', '', '<p>-&nbsp;&nbsp;&nbsp; Cảm biến h&igrave;nh ảnh: 1/3&rdquo; type 1.3 Megapixel progressive scan MOS Sensor.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Độ ph&acirc;n giải h&igrave;nh ảnh: 1.3Megapixels</p>\r\n<p>-&nbsp;&nbsp;&nbsp; &Aacute;nh s&aacute;ng tối thiểu: 0,05 Lux, 0 Lux khi bật hồng ngoại.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Ống k&iacute;nh&nbsp;camera ip: 6mm/F1.8</p>\r\n<p>-&nbsp;&nbsp;&nbsp; G&oacute;c quan s&aacute;t: 46,5 độ.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tầm quan s&aacute;t hồng ngoại: 20 m&eacute;t.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Chuẩn n&eacute;n h&igrave;nh: H.264 &amp; MJPEG dual-stream encoding, 02 luồng Video đồng thời.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tốc độ truyền: 30fps tại 1.3M (1280 &times; 960) v&agrave; 720p (1280 &times; 720).</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Chức năng chống ngược s&aacute;ng: BLC / HLC / WDR</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tự động c&acirc;n bằng &aacute;nh s&aacute;ng trắng.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tự động điều chỉnh độ lợi AGC.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Kỹ thuật giảm nhiễu 3D.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Cho ph&eacute;p che (kh&ocirc;ng quan s&aacute;t) đến 4 khu vực ri&ecirc;ng tư (Privacy Zone).&nbsp;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;Hỗ trợ giao thức mạng: IPv4/IPv6, HTTP, HTTPS, SSL, TCP/IP, UDP, UPnP, ICMP, IGMP, SNMP, RTSP, RTP, SMTP, NTP, DHCP, DNS, PPPoE, DDNS, FTP, IP Filter, QoS, Bonjour, Onvif compatible</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;L&ecirc;n đến 20 người truy cập đồng thời.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Gi&aacute;m s&aacute;t qua điện thoại di động Smart phone: iPhone, iPad, Android&hellip;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ cấp nguồn qua mạng PoE.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Nguồn điện cung cấp: 12VDC hoặc nguồn PoE. C&ocirc;ng suất ti&ecirc;u thụ tối đa 4W.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Ti&ecirc;u chuẩn chống nước v&agrave; bụi IP66.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;K&iacute;ch thước&nbsp;camera: 113.6 mm x 85.8 mm.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Trọng lượng: 290g.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Bảo h&agrave;nh: 12 th&aacute;ng.</p>', 0, '2015-06-21 09:36:33', '2015-06-21 04:34:26'),
(15, 1, 'Camera IP hồng ngoại 1.3Megapixels PANASONIC K-EW114L06', 'Tầm quan sát hồng ngoại: 30 mét.', 'K-EW114L06', 10, 19, 0, '', 100, 2750000, '', '5W', '12VDC hoặc nguồn PoE', '', '', '<p>-&nbsp;&nbsp;&nbsp; Cảm biến h&igrave;nh ảnh: 1/3&rdquo; type 1.3 Megapixel progressive scan MOS Sensor.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Độ ph&acirc;n giải h&igrave;nh ảnh: 1.3Megapixels</p>\r\n<p>-&nbsp;&nbsp;&nbsp; &Aacute;nh s&aacute;ng tối thiểu: 0,05 Lux, 0 Lux khi bật hồng ngoại.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Ống k&iacute;nh&nbsp;camera ip: 6mm/F1.8</p>\r\n<p>-&nbsp;&nbsp;&nbsp; G&oacute;c quan s&aacute;t: 46.5 độ.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tầm quan s&aacute;t hồng ngoại: 30 m&eacute;t.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Chuẩn n&eacute;n h&igrave;nh: H.264 &amp; MJPEG Dual-stream encoding, 02 luồng Video đồng thời.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tốc độ truyền: 30fps tại 1.3M (1280 &times; 960) v&agrave; 720p (1280 &times; 720).</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Chức năng chống ngược s&aacute;ng: BLC / HLC / WDR</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tự động c&acirc;n bằng &aacute;nh s&aacute;ng trắng AWB.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Tự động điều chỉnh độ lợi AGC.</p>\r\n<p>-&nbsp;&nbsp;&nbsp; Kỹ thuật giảm nhiễu 3D.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Cho ph&eacute;p che (kh&ocirc;ng quan s&aacute;t) đến 4 khu vực ri&ecirc;ng tư (Privacy Zone).&nbsp;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;Hỗ trợ giao thức mạng: IPv4/IPv6, HTTP, HTTPS, SSL, TCP/IP, UDP, UPnP, ICMP, IGMP, SNMP, RTSP, RTP, SMTP, NTP, DHCP, DNS, PPPoE, DDNS, FTP, IP Filter, QoS, Bonjour, Onvif compatible</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;L&ecirc;n đến 20 người truy cập đồng thời.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Gi&aacute;m s&aacute;t qua điện thoại di động Smart phone: iPhone, iPad, Android&hellip;</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ cấp nguồn qua mạng PoE.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Nguồn điện cung cấp: 12VDC hoặc nguồn PoE. C&ocirc;ng suất ti&ecirc;u thụ tối đa 5W.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Ti&ecirc;u chuẩn chống nước v&agrave; bụi IP66.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;K&iacute;ch thước&nbsp;camera: 70x66x160mm.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Trọng lượng: 0,5kg.</p>\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Bảo h&agrave;nh: 12 th&aacute;ng.</p>', 0, '2015-06-21 09:40:15', '2015-06-21 04:37:49'),
(16, 1, 'CAMERA IP PANASONIC BL-VP101', '', 'BL-VP101', 10, 19, 0, '', 100, 3200000, '', '1.8W', '6.5V DC', '', '', '<p>&ndash;&nbsp; Cảm biến h&igrave;nh ảnh: 1/5 inch CMOS&nbsp;</p>\r\n<p>&ndash;&nbsp; Chuẩn n&eacute;n h&igrave;nh ảnh&nbsp;<a href="http://www.sieuthivienthong.com/camera-ip-vivotek/67/category.html">camera ip</a>: H.264 v&agrave; JPEG</p>\r\n<p>&ndash;&nbsp; Tốc độ tối đa khung h&igrave;nh: 30 h&igrave;nh/ gi&acirc;y</p>\r\n<p>&ndash;&nbsp; Điểm ảnh: Xấp xỉ 0.32 Megapixels.</p>\r\n<p>&ndash;&nbsp; V&ugrave;ng qu&eacute;t: 2.69 mm (H) x 2.02 mm (V)</p>\r\n<p>&ndash;&nbsp; Độ nhạy s&aacute;ng: Color: 0.9 lx (F2.8); BW: 0.6 lx (F2.8)</p>\r\n<p>&ndash;&nbsp; C&acirc;n bằng &aacute;nh s&aacute;ng trắng: AWC (2.000~10.000K), ATW1 (2.700~6.000K), ATW2 (2.000~6.000K)</p>\r\n<p>&ndash;&nbsp; Chế độ điều khiển đ&egrave;n: Indoor Scene (50Hz/60Hz)/ ELC</p>\r\n<p>&ndash;&nbsp; C&ocirc;ng nghệ ABS (Adaptive Black Stretch) tăng cường khả năng hiển thị v&ugrave;ng tối h&igrave;nh ảnh: ON/ OFF</p>\r\n<p>&ndash;&nbsp; Chức năng điều chỉnh độ lợi AGC: ON (HIGH)/ ON (MID)/ ON (LOW)/ OFF</p>\r\n<p>&ndash;&nbsp; Độ nhạy điện tử UP: OFF (1/30s), Max 2/30s, Max 4/30s, Max 8/30s</p>\r\n<p>&ndash;&nbsp; Chế độ quan s&aacute;t Ng&agrave;y v&agrave; Đ&ecirc;m: OFF/ AUTO</p>\r\n<p>&ndash;&nbsp; Giảm nhiễu số DNR: HIGH/ LOW</p>\r\n<p>&ndash;&nbsp; Chức năng ph&aacute;t hiện chuyển động Video: ON/ OFF (4 khu vực)</p>\r\n<p>&ndash;&nbsp; Chức năng v&ugrave;ng ri&ecirc;ng tư: ON/OFF (l&ecirc;n đến 2 v&ugrave;ng)&nbsp;điều chỉnh che những v&ugrave;ng camera kh&ocirc;ng cần quan s&aacute;t.</p>\r\n<p>&ndash;&nbsp; Ti&ecirc;u đề camera (OSD):&nbsp; ON/OFF, tối đa 20 k&yacute; tự</p>\r\n<p>&ndash;&nbsp; Ống k&iacute;nh: 2.7 mm</p>\r\n<p>&ndash;&nbsp; Zoom electronic: 4x</p>\r\n<p>&ndash;&nbsp; G&oacute;c quan s&aacute;t theo chiều ngang từ: 53&ordm;; theo chiều dọc từ: 40.5&ordm;.</p>\r\n<p>&ndash;&nbsp; Điều khiển&nbsp;<a href="http://www.sieuthivienthong.com/camera-quan-sat/19/category.html">camera quan s&aacute;t</a>: Brightness</p>\r\n<p>&ndash;&nbsp; Chức năng điều chỉnh thời gian: 12 giờ/ 24 giờ; điều chỉnh ng&agrave;y: 5 định dạng tr&ecirc;n c&aacute;c tr&igrave;nh duyệt, thời gian m&ugrave;a h&egrave; (Manual)</p>\r\n<p>&ndash;&nbsp; Kết nối mạng IF: 10Base-T/ 100 Base-TX, kết nối RJ-45 (female)</p>\r\n<p>&ndash;&nbsp; Số người truy cập l&agrave;: 14 người</p>\r\n<p>&ndash;&nbsp; Ng&ocirc;n ngữ c&agrave;i đặt: English, Italian, French, German, Spanish, Russian, Chinese, Japanese</p>\r\n<p>&ndash;&nbsp; Hỗ trợ giao thức: IPv6: TCP/IP, UDP/IP, HTTP, HTTPS, RTP, SMTP, DNS, NTP, SNMP, DHCPv6, MLD, ICMP, ARP. IPv4: TCP/IP, UDP/IP, HTTP, HTTPS, RTSP, RTP, RTP/RTCP, FTP, SMTP, DHCP, DNS, DDNS, NTP, SNMP, UPnP, IGMP, ICMP, ARP</p>\r\n<p>&ndash;&nbsp; Hỗ trợ hệ điều h&agrave;nh: Microsoft&reg; Windows&reg;7, Microsoft&reg; Windows Vista&reg;, Microsoft&reg; Windows&reg;XP SP3.</p>\r\n<p>&ndash;&nbsp; Hỗ trợ tr&igrave;nh duyệt web: Windows&reg; Internet Explorer&reg; 9.0 (32 bit), Windows&reg; Internet Explorer&reg; (32 bit). Windows&reg; Internet Explorer&reg; 7.0 (32 bit), Windows&reg; Internet Explorer&reg; 6.0 SP3.</p>\r\n<p>&ndash;&nbsp; Hỗ trợ xem qua điện thoại di động: iPad, iPhone, iPod touch (iOS 4.2.1 hoặc cao hơn), Android</p>\r\n<p>&ndash;&nbsp; Nguồn b&aacute;o động: VMD, c&oacute; lệnh b&aacute;o động.</p>\r\n<p>&ndash;&nbsp; Nguồn điện: 6.5V DC.</p>\r\n<p>&ndash;&nbsp; C&ocirc;ng suất ti&ecirc;u thụ: 1.8W</p>\r\n<p>&ndash;&nbsp; K&iacute;ch thước: 70 x 70 x 25.4 mm</p>\r\n<p>&ndash;&nbsp; Trọng lượng: 75g</p>\r\n<p>Đặc t&iacute;nh kỹ thuật</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Sensor</p>\r\n</td>\r\n<td>\r\n<p>1/5 inch CMOS sensor</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Lens</p>\r\n</td>\r\n<td>\r\n<p>Fixed 2.7mm lens with 53&deg; horizontal viewing angle</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Compatibility</p>\r\n</td>\r\n<td>\r\n<p>Microsoft Windows XP, Vista and 7 using Internet Explorer. JPEG images available using iPhone and Android mobile devices</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Video</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Resolution</p>\r\n</td>\r\n<td>\r\n<p>640x480, 640x360, 320x240 and 320x180</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Compression</p>\r\n</td>\r\n<td>\r\n<p>MJPEG and H.264</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Frame-rate</p>\r\n</td>\r\n<td>\r\n<p>30fps in all resolutions and compression formats</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Bandwidth control</p>\r\n</td>\r\n<td>\r\n<p>Constant bitrate H.264</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Day/night</p>\r\n</td>\r\n<td>\r\n<p>Electronic day/night (not IR sensitive)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Minimum illumination</p>\r\n</td>\r\n<td>\r\n<p>Colour: 0.9 lux. B/W: 0.6 lux (F2.8, Auto slow shutter: Off (1/30s), Gain: On(High))</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Digital zoom</p>\r\n</td>\r\n<td>\r\n<p>6x digital zoom. 1.5x extra zoom</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Video overlay</p>\r\n</td>\r\n<td>\r\n<p>Time and date stamp with user-defined message</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Viewing, detection &amp; recording</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Privacy masking</p>\r\n</td>\r\n<td>\r\n<p>2 Masked areas</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Simultaneous users</p>\r\n</td>\r\n<td>\r\n<p>14</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Alarm detection</p>\r\n</td>\r\n<td>\r\n<p>Motion detection or Panasonic Command Alarm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Alarm notifications</p>\r\n</td>\r\n<td>\r\n<p>E-mail notification, Indication on browser, FTP image transfer and Panasonic protocol output</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>On-camera recording</p>\r\n</td>\r\n<td>\r\n<p>No</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Network Video Recorders</p>\r\n</td>\r\n<td>\r\n<p>QNAP network video recorders</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Connections</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Power</p>\r\n</td>\r\n<td>\r\n<p>Socket for 6.5V DC power</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Network</p>\r\n</td>\r\n<td>\r\n<p>10/100Mbps RJ-45 Ethernet connection</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Other</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Protocols supported</p>\r\n</td>\r\n<td>\r\n<p>TCP/IP, UDP/IP, HTTP, HTTPS, RTSP, RTP, RTP/RTCP, FTP, SMTP, DHCP, DNS, DDNS, NTP, SNMP, UPnP, IGMP, ICMP and ARP</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Power consumption</p>\r\n</td>\r\n<td>\r\n<p>1.8W</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Dimensions</p>\r\n</td>\r\n<td>\r\n<p>70mm x 70mm x 25.4mm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Weight</p>\r\n</td>\r\n<td>\r\n<p>75g</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&ndash;&nbsp; Sản xuất tại Malaysia</p>\r\n<p>&ndash;&nbsp; Bảo h&agrave;nh: 12 th&aacute;ng</p>', 0, '2015-06-21 09:42:24', '2015-06-21 04:40:38'),
(17, 1, 'CAMERA IP KHÔNG DÂY PANASONIC BL-C121', '', 'BL-C121', 10, 19, 0, '', 100, 4890000, '', '6.8W', '', '9V DC', '', '<p>-&nbsp; Cảm biến h&igrave;nh ảnh: 1/4 inch CMOS</p>\r\n<p>-&nbsp; Chuẩn n&eacute;n h&igrave;nh ảnh: MPEG-4 v&agrave; JPEG</p>\r\n<p>-&nbsp; Tốc độ tối đa khung h&igrave;nh: 30 h&igrave;nh/gi&acirc;y</p>\r\n<p>-&nbsp; Zoom số: 10x</p>\r\n<p>-&nbsp; G&oacute;c quan s&aacute;t theo chiều ngang từ: 58&deg;v&agrave; theo chiều dọc 45&deg;</p>\r\n<p>-&nbsp; Độ ph&acirc;n giải&nbsp;<a href="http://www.sieuthivienthong.com/camera-ip-vivotek/67/category.html">camera ip</a>: 320.000 pixels</p>\r\n<p>-&nbsp; T&iacute;ch hợp micro b&ecirc;n trong để truyền &acirc;m thanh.</p>\r\n<p>-&nbsp; Chuẩn n&eacute;n &acirc;m thanh: ADPCM 32 kbps</p>\r\n<p>-&nbsp; Băng th&ocirc;ng &acirc;m thanh: 300 Hz &ndash; 3.400 Hz</p>\r\n<p>-&nbsp; Độ ph&acirc;n giải Video: 640 x 480, 320 x 240 (default), 192 x 144</p>\r\n<p>-&nbsp; Điều chỉnh chất lượng h&igrave;nh ảnh: R&otilde; r&agrave;ng, chuyển động, chuẩn</p>\r\n<p>-&nbsp; Chức năng bảo mật: User ID/ Password / SSL</p>\r\n<p>-&nbsp; Hỗ trợ giao thức: IPv4/IPv6 Dual-Stack.&nbsp;&nbsp;IPv4: TCP, UDP, IP, HTTP, FTP, SMTP, DHCP, DNS, ARP, ICMP, POP3,&nbsp;NTP, UPnP&thorn;,SMTP Authentication, RTP, RTSP, RTCP, HTTPS, SSL, TLS.&nbsp; IPv6: TCP, UDP, IP, HTTP, FTP, SMTP, DNS, ICMPv6, POP3, NDP, NTP,RTP, RTSP, RTCP, HTTPS, SSL, TLS.</p>\r\n<p>-&nbsp; Tốc độ truyền dẫn: L&ecirc;n đến 54 Mbps</p>\r\n<p>-&nbsp; Bảo mật Wireless: SSID, WEP (64/128/152 bit), WPA-PSK (TKIP), WPA2-PSK (AES)</p>\r\n<p>-&nbsp; C&ocirc;ng suất ti&ecirc;u thụ: 6.8W</p>\r\n<p>-&nbsp; Chức năng:&nbsp;Ph&aacute;t hiện sự chuyển động, h&igrave;nh ảnh sẽ được chụp lại v&agrave; gởi đến người gi&aacute;m s&aacute;t qua E-mail, FTP, SMTP, HTTP</p>\r\n<p>-&nbsp; Loại trong nh&agrave; kh&ocirc;ng d&acirc;y</p>\r\n<p>-&nbsp; K&iacute;ch thước&nbsp;<a href="http://www.sieuthivienthong.com/camera-quan-sat/19/category.html">camera</a>: 85 x 85 x 35.5 mm</p>\r\n<p>-&nbsp; Trọng lượng: 140g</p>\r\n<p>Đặc t&iacute;nh kỹ thuật</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Image compression</p>\r\n</td>\r\n<td>\r\n<p>JPEG (Motion JPEG), MPEG-4</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Video resolution</p>\r\n</td>\r\n<td>\r\n<p>640 x 480, 320 x 240 (default), 192&times;144</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Image quality</p>\r\n</td>\r\n<td>\r\n<p>JPEG (favor clarity, standard, favor motion) , MPEG-4</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Frame rate</p>\r\n</td>\r\n<td>\r\n<p>Max. 30 frames/sec. (640 x 480, 320 x 240, 192 x 144)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Security</p>\r\n</td>\r\n<td>\r\n<p>User ID / password, SSL</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="5">\r\n<p>Supported protocols</p>\r\n</td>\r\n<td>\r\n<p>IPv4/IPv6 Dual-Stack</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>IPv4: TCP, UDP, IP, HTTP, FTP, SMTP, DHCP, DNS, ARP, ICMP, POP3, NTP, UPnP&trade;,</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>SMTP Authentication, RTP, RTSP, RTCP, HTTPS, SSL, TLS</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>IPv6: TCP, UDP, IP, HTTP, FTP, SMTP, DNS, ICMPv6, POP3, NDP, NTP,</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>RTP, RTSP, RTCP, HTTPS, SSL, TLS</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>User access limit</p>\r\n</td>\r\n<td>\r\n<p>Max. 30 simultaneous users (Max. 10 users in SSL communication)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Buffered images</p>\r\n</td>\r\n<td>\r\n<p>Approx. 250 images (320 x 240)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Standard image quality with time display</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Image transfer method</p>\r\n</td>\r\n<td>\r\n<p>SMTP, FTP, HTTP</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Image buffer/transfer triggers</p>\r\n</td>\r\n<td>\r\n<p>Alarm, timer or motion detection</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Network camera</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Zoom</p>\r\n</td>\r\n<td>\r\n<p>10x digital zoom (by area)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Viewing angle</p>\r\n</td>\r\n<td>\r\n<p>58&deg; horizontal</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>45&deg; vertical</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Sensor type</p>\r\n</td>\r\n<td>\r\n<p>1/4 inch CMOS sensor, approx. 320,000 pixels</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Lens focal point</p>\r\n</td>\r\n<td>\r\n<p>Fixed (focal range: 0.3 m to &infin;)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Lens brightness</p>\r\n</td>\r\n<td>\r\n<p>F2.8</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Required light intensity</p>\r\n</td>\r\n<td>\r\n<p>5 to 10,000 lux (in color night view mode : 3 to 10,000 lux )</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Audio</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Audio communication</p>\r\n</td>\r\n<td>\r\n<p>One-way communication</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Audio compression</p>\r\n</td>\r\n<td>\r\n<p>ADPCM 32 kbps</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Audio bandwidth</p>\r\n</td>\r\n<td>\r\n<p>300 Hz &ndash; 3,4 kHz</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Audio input</p>\r\n</td>\r\n<td>\r\n<p>Built-in microphone</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Wireless</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Standards</p>\r\n</td>\r\n<td>\r\n<p>IEEE 802.11b/g</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Antenna</p>\r\n</td>\r\n<td>\r\n<p>Diversity</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Number of channel</p>\r\n</td>\r\n<td>\r\n<p>11ch. (USA), 13ch. (Others)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Transmission speed</p>\r\n</td>\r\n<td>\r\n<p>Up to 54 Mbps.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Security</p>\r\n</td>\r\n<td>\r\n<p>SSID, WEP (64/128/152 bit), WPA-PSK (TKIP), WPA2-PSK (AES)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Terminal</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Network interface</p>\r\n</td>\r\n<td>\r\n<p>Ethernet (10Base-T/100Base-TX)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>External I/O connector</p>\r\n</td>\r\n<td>\r\n<p>Input:1 Output:1</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>General</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Operating temperature</p>\r\n</td>\r\n<td>\r\n<p>+5&deg;C to +40&deg;C (+41&deg;F to +104&deg;F)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Operating humidity</p>\r\n</td>\r\n<td>\r\n<p>20% to 80% (no condensation)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Dimensions (H x W x D)</p>\r\n</td>\r\n<td>\r\n<p>85 x 85 x 35.5 mm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>(3 3/8 x 3 3/8 x 1 3/8 inches)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Weight (only the unit)</p>\r\n</td>\r\n<td>\r\n<p>140 g (0.31lb)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Power supply (E)</p>\r\n</td>\r\n<td>\r\n<p>Input: 220-240 V AC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>output: 9 V DC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Power supply (CE)</p>\r\n</td>\r\n<td>\r\n<p>Input: 100-240 V AC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>output: 9 V DC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Power supply (US)</p>\r\n</td>\r\n<td>\r\n<p>Input: 120 V AC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>output: 9 V DC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Consumption</p>\r\n</td>\r\n<td>\r\n<p>6.8 W</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>-&nbsp; Sản xuất tại: Malaysia</p>\r\n<p>-&nbsp; Bảo h&agrave;nh: 12 th&aacute;ng</p>', 0, '2015-06-21 09:46:33', '2015-06-21 04:44:06'),
(18, 1, 'CAMERA IP KHÔNG DÂY PANASONIC BL-C230', '', 'BL-C230', 10, 19, 0, '', 100, 6450000, '', '4.0W - 7.7W', '750mA', '9V DC', '', '<p>-&nbsp;Camera ip&nbsp;cảm biến h&igrave;nh ảnh: 1/4 inch CMOS</p>\r\n<p>-&nbsp; Chuẩn n&eacute;n h&igrave;nh ảnh: H.264, MPEG-4, JPEG</p>\r\n<p>-&nbsp; G&oacute;c quan s&aacute;t theo chiều ngang từ: 58&deg;; theo chiều dọc từ: 45&deg;</p>\r\n<p>-&nbsp; Xoay ngang: -41&deg;- + 41&deg;&nbsp;, Xoay dọc: -32&deg;&nbsp;đến +10&deg;</p>\r\n<p>-&nbsp; Bảo mật Wireless: SSID, WEP (64/128/152 bit), WPA-PSK (TKIP), WPA2-PSK (AES)</p>\r\n<p>-&nbsp; Độ ph&acirc;n giải video: H.264: 640 x 480, 320 x 240; MPEG-4: 640 x 480, 320 x 240, 192 x 144, JPEG: 640 x 480, 320 x 240, 192 x 144</p>\r\n<p>-&nbsp; Tốc độ tối đa khung h&igrave;nh: 30 h&igrave;nh/gi&acirc;y (640 x 480, 320 x 240, 192 x144)</p>\r\n<p>-&nbsp; Bảo mật Server: ID người d&ugrave;ng / password / SSL</p>\r\n<p>-&nbsp; Hỗ trợ giao thức: IPv4 / IPv6 Dual-Stack. IPv4: TCP, UDP, IP, HTTP, FTP, SMTP, DHCP, DNS, ARP, ICMP, POP3, NTP, UPnPTM, Auto IP, SMTP Authentication, RTP, RTSP, RTCP. IPv6: TCP, UDP, IP, HTTP, FTP, SMTP, DNS, ICMPv6, POP3, NDP, NTP, RTP, RTSP, RTCP</p>\r\n<p>-&nbsp; Chức năng:&nbsp;Ph&aacute;t hiện sự chuyển động, h&igrave;nh ảnh sẽ được chụp lại v&agrave; gởi đến người gi&aacute;m s&aacute;t qua E-mail, FTP, SMTP, HTTP</p>\r\n<p>-&nbsp; Nguồn cung cấp:&nbsp;BL-C203CE: AC adaptor ng&otilde; v&agrave;o 100-240V AC, 50/60 Hz; ng&otilde; ra 9V DC, 750mA. BL-C230E: AC adaptor ng&otilde; v&agrave;o 220-240V AC, 50/60 Hz; ng&otilde; ra 9V DC, 750mA</p>\r\n<p>-&nbsp; C&ocirc;ng suất ti&ecirc;u thụ: 4W</p>\r\n<p>-&nbsp; C&oacute; chức năng Full m&agrave;n h&igrave;nh, privacy mode</p>\r\n<p>-&nbsp; Loại trong nh&agrave; kh&ocirc;ng d&acirc;y</p>\r\n<p>-&nbsp; K&iacute;ch thước&nbsp;camera: 74 x 74 x 101mm</p>\r\n<p>-&nbsp; Trọng lượng: 260g&nbsp;</p>\r\n<p>Đặc t&iacute;nh kỹ thuật</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Image compression</p>\r\n</td>\r\n<td>\r\n<p>H.264, MPEG-4, Motion JPEG for moving image display</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3">\r\n<p>Video resolution</p>\r\n</td>\r\n<td>\r\n<p>H.264: 640 x 480, 320 x 240</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>MPEG-4: 640 x 480, 320 x 240, 192 x 144</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>JPEG: 640 x 480, 320 x 240, 192 x 144</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Frame rate</p>\r\n</td>\r\n<td>\r\n<p>Max. 30 frames/sec. (640 x 480, 320 x 240, 192 x144)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Security</p>\r\n</td>\r\n<td>\r\n<p>User ID / Password/SSL</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3">\r\n<p>Supported protocols</p>\r\n</td>\r\n<td>\r\n<p>IPv4 / IPv6 Dual-Stack</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>IPv4: TCP, UDP, IP, HTTP, FTP, SMTP, DHCP, DNS, ARP, ICMP, POP3, NTP, UPnPTM, Auto IP, SMTP Authentication, RTP, RTSP, RTCP</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>IPv6: TCP, UDP, IP, HTTP, FTP, SMTP, DNS, ICMPv6, POP3, NDP, NTP, RTP, RTSP, RTCP</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>User access limit</p>\r\n</td>\r\n<td>\r\n<p>2/H.264, 4/MPEG-4, 10/MotionJPEG</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Buffered images</p>\r\n</td>\r\n<td>\r\n<p>Approx. 1160 images (320 x 240)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Standard image quality -with time display</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Image transfer method</p>\r\n</td>\r\n<td>\r\n<p>SMTP, FTP, HTTP</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Image buffer/transfer triggers</p>\r\n</td>\r\n<td>\r\n<p>Timer, Sensor, Alarm 1, Alarm 2, Motion Detection, Sound Detection</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Network camera</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Viewing Angle</p>\r\n</td>\r\n<td>\r\n<p>58&deg; horizontal 45&deg; Vertical</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Sensor Type</p>\r\n</td>\r\n<td>\r\n<p>1/4 inch CMOS Progressive Scan, approx. 320,000 pixel</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Lens focal point</p>\r\n</td>\r\n<td>\r\n<p>Fixed (focal range: 0.3 m to Infinity)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Aperture (F No.)</p>\r\n</td>\r\n<td>\r\n<p>F2.8</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Illuminance</p>\r\n</td>\r\n<td>\r\n<p>5-10,000 lx (3-10,000 lx when in Colour Night View mode)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Terminal</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Network interface</p>\r\n</td>\r\n<td>\r\n<p>Ethernet (10Base-T/100Base-TX)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>External interface</p>\r\n</td>\r\n<td>\r\n<p>Input (2) Onput (1)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Wireless</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Communication Standard</p>\r\n</td>\r\n<td>\r\n<p>IEEE 802.11b, 802.11b/g, 802.11g exclusive</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Data Transfer Mode</p>\r\n</td>\r\n<td>\r\n<p>IEEE 802.11b: Direct Sequence Spectrum Spread (DS-SS)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>IEEE 802.11g: Orthogonal Frequency Division Multiplexing (OFDM)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Frequency Range</p>\r\n</td>\r\n<td>\r\n<p>BL-C230CE/BL-C230E:2.412-2.472 GHz</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Channel</p>\r\n</td>\r\n<td>\r\n<p>BL-C230CE/BL-C230E:1-13</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Security</p>\r\n</td>\r\n<td>\r\n<p>SSID, WEP (64/128/152 bit), WPA-PSK (TKIP), WPA2-PSK (AES)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>General</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Operating Temperature</p>\r\n</td>\r\n<td>\r\n<p>Operation: +0&deg;C (+32&deg;F) to +40&deg; (+104&deg;F)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Storage: -10&deg;C (+14&deg;F) to +50&deg;C (+122&deg;F)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Operating humidity</p>\r\n</td>\r\n<td>\r\n<p>Operation: 20 %-80 % (no condensation)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Storage: 20 %-90 % (no condensation)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">\r\n<p>Dimensions(H x W x D)</p>\r\n</td>\r\n<td>\r\n<p>74 mm x 74 mm x 101 mm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>(2 15/16 inches x 2 15/16 inches x 4 inches)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Weight (only the unit)</p>\r\n</td>\r\n<td>\r\n<p>260 g (0.57 lb)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="8">\r\n<p>Power Supply</p>\r\n</td>\r\n<td>\r\n<p>BL-C230CE:</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>AC adaptor (order no. PQLV206CEY)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Input 100-240 V AC, 50/60 Hz</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Output 9 V DC, 750 mA</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>BL-C230E:</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>AC adaptor (order no. PQLV206EY)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Input 220-240 V AC, 50/60 Hz</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Output 9 V DC, 750 mA</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Consumption</p>\r\n</td>\r\n<td>\r\n<p>About 4.0 W (7.7 W during pan/tilt scan)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>-&nbsp; Sản xuất tại: Malaysia</p>\r\n<p>-&nbsp; Bảo h&agrave;nh: 12 th&aacute;ng</p>', 0, '2015-06-21 09:50:35', '2015-06-21 04:46:35'),
(19, 1, 'CAMERA IP PANASONIC BL-VT164', '', 'BL-VT164', 10, 19, 0, '', 100, 5350000, '', '3.7W', '', '9.7V DC', '', '<p>-&nbsp; Cảm biến h&igrave;nh ảnh: 1/4 CMOS</p>\r\n<p>-&nbsp; Chuẩn n&eacute;n h&igrave;nh ảnh: H.264 v&agrave; JPEG&nbsp;</p>\r\n<p>-&nbsp; &Aacute;nh s&aacute;ng tối thiểu: 0.6 lux&nbsp;</p>\r\n<p>-&nbsp; G&oacute;c quay theo chiều ngang (pan) từ -41&deg; tới +41&deg;; theo chiều dọc (tilt) từ +10&deg; tới -32&deg;</p>\r\n<p>-&nbsp; Tốc độ tối đa khung h&igrave;nh: 30 h&igrave;nh/gi&acirc;y&nbsp;</p>\r\n<p>-&nbsp; Độ ph&acirc;n giải&nbsp;camera ip: 720p HD 1 Megapixel (1,280 x 720 pixels)</p>\r\n<p>-&nbsp; Zoom 12X (VGA extra zoom 1.5x)</p>\r\n<p>-&nbsp; Hỗ trợ &acirc;m thanh: 1 chiều</p>\r\n<p>-&nbsp; V&ugrave;ng qu&eacute;t: 3.89 mm (H) x 2.43 mm (V)</p>\r\n<p>-&nbsp; &Aacute;nh s&aacute;ng tối thiểu:&nbsp;Color: 0.9 lx (F2.8, Auto slow shutter: Off (1/30s), Gain: On (High)). Color: 0.06 lx (F2.8, Auto slow shutter: Max. 16/30s, Gain: On (High)). BW: 0.6 lx (F2.8, Auto slow shutter: Off (1/30s), Gain: On (High)). BW: 0.04 lx (F2.8, Auto slow shutter: Off (16/30s), Gain: On (High))&nbsp;</p>\r\n<p>-&nbsp; C&acirc;n bằng &aacute;nh s&aacute;ng trắng: AWC (2,000 ~ 10,000 K), ATW1 (2,700 ~ 6,000 K), ATW2 (2,000 ~ 6,000 K)</p>\r\n<p>-&nbsp; Chế độ quan s&aacute;t ng&agrave;y đ&ecirc;m: ON / OFF</p>\r\n<p>-&nbsp; Điều chỉnh độ lợi tự động AGC: ON (HIGH) / ON (MID) / ON (LOW) / OFF</p>\r\n<p>-&nbsp; Độ nhạy điện tử UP ng&agrave;y v&agrave; đ&ecirc;m:&nbsp;OFF (1/30s), Max. 2/30s, Max. 4/30s, Max. 6/30s, Max. 10/30s, Max. 16/30s. OFF / AUTO</p>\r\n<p>-&nbsp; Giảm nhiễu điện tử: HIGH / LOW</p>\r\n<p>-&nbsp; Ph&aacute;t hiện chuyển động: ON / OFF (c&oacute; sẵn mỗi khi c&agrave;i đặt)</p>\r\n<p>-&nbsp; Chức năng v&ugrave;ng ri&ecirc;ng tư: ON / OFF (l&ecirc;n đến 2 v&ugrave;ng) điều chỉnh che những v&ugrave;ng camera kh&ocirc;ng cần quan s&aacute;t</p>\r\n<p>-&nbsp; Ti&ecirc;u đề&nbsp;camera&nbsp;(OSD): ON / OFF (tối đa 20 k&yacute; tự)</p>\r\n<p>-&nbsp; Ti&ecirc;u cự ống k&iacute;nh: 3.6 mm</p>\r\n<p>-&nbsp; Zoom quang: 1.5x</p>\r\n<p>-&nbsp; G&oacute;c quan s&aacute;t theo chiều ngang từ: 57&deg;; theo chiều dọc từ: 34&deg;</p>\r\n<p>-&nbsp; Vị tr&iacute; hiện thị PTZ: ON / OFF</p>\r\n<p>-&nbsp; Điều chỉnh camera: Brightness; AUX ON / OFF</p>\r\n<p>-&nbsp; Hiện thị đồng hồ: Thời gian: 12H/24H; Ng&agrave;y: 5 định dạng tr&ecirc;n c&aacute;c tr&igrave;nh duyệt; thời gian m&ugrave;a h&egrave; (Manual)</p>\r\n<p>-&nbsp; Điều khiển b&aacute;o động: Reset</p>\r\n<p>-&nbsp; Ng&ocirc;n ngữ c&agrave;i đặt: English, Japanese, Italian, French, German, Spanish, Chinese, Russian&nbsp;</p>\r\n<p>-&nbsp; Hỗ trợ giao thức: IPv6: TCP/IP, UDP/IP, HTTP, HTTPS, RTP, FTP, SMTP, DNS, NTP, SNMP, DHCPv6, MLD, ICMP, ARP. IPv4: TCP/IP, UDP/IP, HTTP, HTTPS, RTSP, RTP, RTP/RTCP,FTP, SMTP, DHCP, DNS,&nbsp;DDNS, NTP, SNMP, UPnP, IGMP, ICMP, ARP&nbsp;</p>\r\n<p>-&nbsp; Hỗ trợ hệ h&agrave;nh: Microsoft&reg;, Windows&reg; 7, Microsoft&reg; Windows Vista&reg;, Microsoft&reg;, Windows&reg; XP SP3</p>\r\n<p>-&nbsp; Hỗ trợ tr&igrave;nh duyệt: Windows&reg; Internet Explorer&reg; 9.0 (32 bit), Windows&reg;, Internet Explorer&reg; 8.0 (32 bit). Windows&reg; Internet Explorer&reg; 7.0 (32 bit), Microsoft&reg; Internet, Explorer&reg; 6.0 SP3</p>\r\n<p>-&nbsp; Chức năng: Nhận diện v&agrave; ph&aacute;t hiện vị tr&iacute; khu&ocirc;n mặt người, t&iacute;nh năng th&ocirc;ng minh, d&ograve;ng qu&eacute;t li&ecirc;n tục, đảm bảo h&igrave;nh ảnh r&otilde; r&agrave;ng, gi&aacute;m s&aacute;t thời gian thực v&agrave; ghi &acirc;m độ ph&acirc;n giải cao.&nbsp;Ph&aacute;t hiện sự chuyển động, h&igrave;nh ảnh sẽ được chụp lại v&agrave; gởi đến người gi&aacute;m s&aacute;t qua E-mail, FTP, SMTP</p>\r\n<p>-&nbsp; Chức năng điều chỉnh chất lượng h&igrave;nh ảnh: LOW/ NORMAL/ FINE</p>\r\n<p>-&nbsp; Số người truy cập l&agrave;: 14 người</p>\r\n<p>-&nbsp; Ti&ecirc;u chuẩn ONVIF (chức năng chuẩn h&oacute;a c&aacute;c thiết bị thu ph&aacute;t h&igrave;nh ảnh qua mạng)</p>\r\n<p>-&nbsp; Nguồn cung cấp: 9VDC</p>\r\n<p>-&nbsp; C&ocirc;ng suất ti&ecirc;u thụ&nbsp;camera: 3.7W</p>\r\n<p>-&nbsp; Cảm biến hồng ngoại.</p>\r\n<p>-&nbsp; K&iacute;ch thước: 74 x 74 x 91mm</p>\r\n<p>-&nbsp; Trọng lượng: 220g</p>\r\n<p>Đặc t&iacute;nh kỹ thuật</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Sensor</p>\r\n</td>\r\n<td>\r\n<p>1/4 inch CMOS sensor</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Lens</p>\r\n</td>\r\n<td>\r\n<p>Fixed 3.6mm (F2.8) lens with 57&deg; horizontal viewing angle</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>PTZ</p>\r\n</td>\r\n<td>\r\n<p>Pan: &plusmn;41&deg;. Tilt: +10&deg; to &minus;32&deg;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Audio</p>\r\n</td>\r\n<td>\r\n<p>2-Way audio with built in microphone and speaker using G.726 and G.711 compression</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Power</p>\r\n</td>\r\n<td>\r\n<p>9V DC (power adapter included)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Compatibility</p>\r\n</td>\r\n<td>\r\n<p>Microsoft Windows 7, Vista or XP SP3 using Internet Explorer 6 SP3 or above</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Video</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Resolution</p>\r\n</td>\r\n<td>\r\n<p>1280x720, 800x600, 640x480, 640x360, 320x240 and 320x180</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Compression</p>\r\n</td>\r\n<td>\r\n<p>H.264 and MJPEG</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Frame-rate</p>\r\n</td>\r\n<td>\r\n<p>30fps in all resolutions and compression formats</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Bandwidth control</p>\r\n</td>\r\n<td>\r\n<p>H.264: Constant bitrate, frame rate or best effort. JPEG: 10 levels of quality</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Day/night</p>\r\n</td>\r\n<td>\r\n<p>Simple day/night switching (not infrared sensitive)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Minimum illumination</p>\r\n</td>\r\n<td>\r\n<p>Colour: 0.9 lux. B/W: 0.6 lux (F2.8, Auto slow shutter: Off (1/30s), Gain: On (High))</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Digital zoom/PTZ</p>\r\n</td>\r\n<td>\r\n<p>Extra zoom: 1.5x. Digital zoom: up to 12x</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Video overlay</p>\r\n</td>\r\n<td>\r\n<p>Text and timestamp</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Viewing, detection &amp; recording</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Multi-camera viewing</p>\r\n</td>\r\n<td>\r\n<p>Up to 16 cameras can be displayed in groups of 4</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Privacy masking</p>\r\n</td>\r\n<td>\r\n<p>Yes</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Simultaneous users</p>\r\n</td>\r\n<td>\r\n<p>14</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Alarm detection</p>\r\n</td>\r\n<td>\r\n<p>Intelligent video, infrared sensor, external input and Panasonic alarm command</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Intelligent video</p>\r\n</td>\r\n<td>\r\n<p>Motion and face detection</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>External alarm inputs and outputs</p>\r\n</td>\r\n<td>\r\n<p>3x alarm in and 1x alarm out</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Alarm notifications</p>\r\n</td>\r\n<td>\r\n<p>E-mail notification, indication on browser, FTP image transfer and Panasonic protocol output</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Recording software included:</p>\r\n</td>\r\n<td>\r\n<p>Single camera license for Panasonic Network Camera Recorder</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Connections</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Power</p>\r\n</td>\r\n<td>\r\n<p>Jack port for Panasonic power adapter (included)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Network</p>\r\n</td>\r\n<td>\r\n<p>10/100Mbps RJ-45 Ethernet connection</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Alarm I/O</p>\r\n</td>\r\n<td>\r\n<p>Push connector for I/O</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Audio</p>\r\n</td>\r\n<td>\r\n<p>Integrated speaker and microphone</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<p>Other</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Protocols supported</p>\r\n</td>\r\n<td>\r\n<p>TCP/IP, UDP/IP, HTTP, HTTPS, RTSP, RTP, RTP/RTCP, FTP, SMTP, DHCP, DNS, DDNS, NTP, SNMP, UPnP, IGMP, ICMP and ARP</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Power consumption</p>\r\n</td>\r\n<td>\r\n<p>3.7W max</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Dimensions</p>\r\n</td>\r\n<td>\r\n<p>74mm x 74mm x 91mm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Weight</p>\r\n</td>\r\n<td>\r\n<p>220g</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>-&nbsp; Sản xuất tại: Trung Quốc</p>\r\n<p>-&nbsp; Bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n<p><strong>&nbsp;</strong></p>', 0, '2015-06-21 09:59:20', '2015-06-21 04:53:14'),
(20, 1, '', '', '', 0, 0, 0, '', 100, 0, '', '', '', '', '', '', 1, '2015-06-21 10:03:38', '2015-06-21 05:03:38'),
(21, 1, 'Tổng đài Panasonic KX-TES824', '', 'KX-TES824', 10, 20, 0, '', 100, 3490000, '', '', '', '', '', '<p>-&nbsp;Tổng đ&agrave;i&nbsp;dung lượng 03 trung kế 08 m&aacute;y nh&aacute;nh hỗn hợp.&nbsp;</p>\r\n<p>- T&iacute;ch hợp chức năng&nbsp;trả lời tự động, hướng dẫn truy cập m&aacute;y lẻ (1 k&ecirc;nh).&nbsp;</p>\r\n<p>- Chức năng DISA 3 cấp&nbsp;(Lắp th&ecirc;m card KX-TE82491).</p>\r\n<p>- Kết nối với m&aacute;y t&iacute;nh qua cổng USB v&agrave; RS-232 để lập tr&igrave;nh, quản l&yacute; cuộc gọi.&nbsp;</p>\r\n<p>- T&iacute;ch hợp chức năng&nbsp;lập tr&igrave;nh điều khiển từ xa, c&oacute; thể lập tr&igrave;nh tổng đ&agrave;i th&ocirc;ng qua đường điện thoại Bưu điện.</p>\r\n<p>- Hiển thị số gọi đến tr&ecirc;n m&aacute;y điện thoại thường&nbsp;(Lắp th&ecirc;m card&nbsp;KX-TE82493 hoặc KX-TE82494).</p>\r\n<p>- Cung cấp dịch vụ voice mail&nbsp;(Lắp th&ecirc;m card&nbsp;KX-TE82492).</p>\r\n<p>- Kết nối thiết bị mở cửa v&agrave; chu&ocirc;ng của Doorphone&nbsp;(Lắp th&ecirc;m card KX-TE82461).</p>\r\n<p>- Khả năng mở rộng:&nbsp;03 trung kế 16 m&aacute;y nh&aacute;nh, 05 trung kế 16 m&aacute;y nh&aacute;nh, 06 trung kế 16 m&aacute;y nh&aacute;nh, 06 trung kế 24 m&aacute;y nh&aacute;nh, 8 trung kế 24 m&aacute;y nh&aacute;nh.</p>\r\n<p>- Nhận Fax tự động.</p>\r\n<p>- Th&iacute;ch hợp d&ugrave;ng cho Kh&aacute;ch sạn, Nh&agrave; nghỉ, Trường học, Doanh nghiệp nhỏ v&agrave; vừa...</p>\r\n<p>- H&agrave;ng ch&iacute;nh h&atilde;ng Panasonic.</p>\r\n<p>-&nbsp;Bảo h&agrave;nh: 15 th&aacute;ng.</p>\r\n<p><strong>&nbsp;</strong></p>', 0, '2015-06-21 10:07:02', '2015-06-21 05:05:30'),
(22, 1, 'Tổng đài Panasonic KX-NS300', '', 'KX-NS300', 10, 20, 0, '', 100, 8990000, '', '', '', '', '', '<p>-&nbsp; D&ograve;ng tổng đ&agrave;i Panasonic KX-NS300 Smart Hybrid PBX thế hệ mới kế thừa c&aacute;c t&iacute;nh năng nổi bật của KX-TDA100, t&iacute;ch hợp v&agrave; ph&aacute;t triển th&ecirc;m nhiều chức năng tiện &iacute;ch kh&aacute;c.</p>\r\n<p>-&nbsp; Khung ch&iacute;nh tổng đ&agrave;i Panasonic KX-NS300 Smart Hybrid PBX t&iacute;ch hợp sẵn:&nbsp;</p>\r\n<ul>\r\n<li>06 trung kế-16 m&aacute;y nh&aacute;nh Analog, 4 m&aacute;y nh&aacute;nh số (2 port Digital).</li>\r\n<li>2 k&ecirc;nh DISA, Voicemail cơ bản (2 giờ ghi &acirc;m lời ch&agrave;o, tin nhắn).</li>\r\n<li>T&iacute;ch hợp chức năng hiển thị số gọi đến.</li>\r\n</ul>\r\n<p>-&nbsp; Lập tr&igrave;nh từ xa qua mạng LAN.</p>\r\n<p>-&nbsp; Giao thức lập tr&igrave;nh hệ thống: Web/PT.</p>\r\n<p>-&nbsp; Xuất cước qua mạng LAN.</p>\r\n<p>-&nbsp; Chức năng Call center&nbsp;(Mua th&ecirc;m License).</p>\r\n<p>-&nbsp; Chức năng d&ugrave;ng điện thoại di động Smartphone l&agrave;m m&aacute;y nh&aacute;nh&nbsp;(Mua th&ecirc;m License).</p>\r\n<p>-&nbsp; Chức năng TVM ghi &acirc;m m&aacute;y nh&aacute;nh, Voicemail cao cấp&nbsp;(Mua th&ecirc;m License).</p>\r\n<p>-&nbsp; Đ&agrave;m thoại Video Call giữa c&aacute;c m&aacute;y nh&aacute;nh IP chuẩn SIP&nbsp;(Mua th&ecirc;m License).</p>\r\n<p>-&nbsp; C&oacute; 2 khe cắm card trung kế v&agrave; 2 khe cắm card m&aacute;y nh&aacute;nh.</p>\r\n<p>-&nbsp; Cấu h&igrave;nh tối đa của khung ch&iacute;nh: 12 trung kế-32 m&aacute;y nh&aacute;nh (Analog v&agrave; Digital) v&agrave; 4 m&aacute;y nh&aacute;nh số Digital, 32 trung kế E1, 16 trung kế IP chuẩn H.323v&agrave; SIP, 32 m&aacute;y nh&aacute;nh IP (Tổng cộng dung lượng tối đa cho khung ch&iacute;nh: 52 trung kế - 72 m&aacute;y nh&aacute;nh c&aacute;c loại).</p>\r\n<p>-&nbsp; Kết nối được với 03 khung phụ KX-NS320 để n&acirc;ng cấp mở rộng tổng đ&agrave;i.</p>\r\n<p>-&nbsp; Khả năng n&acirc;ng cấp: 48 trung kế - 128 m&aacute;y nh&aacute;nh analog, 96 m&aacute;y nh&aacute;nh Digital, 128 m&aacute;y nh&aacute;nh DECT (Điện thoại kh&ocirc;ng d&acirc;y kỹ thuật số), 16 trung kế IP chuẩn H.323v&agrave; SIP &ndash; 32 m&aacute;y nh&aacute;nh IP, 120 trung kế PRI, 120 trung kế E1 (Tổng cộng tối đa cả hệ thống: 142 trung kế - 192 m&aacute;y nh&aacute;nh c&aacute;c loại), 32 k&ecirc;nh DISA/Voicemail.</p>\r\n<p>-&nbsp; Cổng kết nối trung kế v&agrave; m&aacute;y nh&aacute;nh: RJ45</p>\r\n<p>-&nbsp; Cổng kết nối nguồn Accu dự ph&ograve;ng.</p>\r\n<p>-&nbsp; Độ d&agrave;i mật khẩu hệ thống: 4-16 k&yacute; tự.</p>\r\n<p>-&nbsp; Lắp đặt tr&ecirc;n Rack 19 inch, lắp tường hoặc để b&agrave;n.</p>\r\n<p>-&nbsp; K&iacute;ch thước: 430 mm (W) x 88 mm (H) x 367 mm (D).</p>\r\n<p>-&nbsp; Trọng lượng: 4,5kg khi trang bị đầy card.</p>\r\n<p>-&nbsp; Th&iacute;ch hợp d&ugrave;ng cho Nh&agrave; xưởng, Trường học, Kh&aacute;ch sạn, Doanh nghiệp&hellip;</p>\r\n<p>-&nbsp; H&agrave;ng ch&iacute;nh h&atilde;ng Panasonic.</p>\r\n<p>-&nbsp; Bảo h&agrave;nh: 15 th&aacute;ng.</p>', 0, '2015-06-21 10:09:14', '2015-06-21 05:07:05'),
(23, 1, 'Điện thoại lập trình Panasonic KX-T7730', '', 'KX-T7730', 10, 20, 0, '', 100, 980000, '', '', '', '', '', '<p>&ndash;&nbsp; B&agrave;n lập tr&igrave;nh&nbsp;tổng đ&agrave;i&nbsp;12 trung kế, m&agrave;n h&igrave;nh hiển thị 1 d&ograve;ng, d&ugrave;ng cho tổng đ&agrave;i Panasonic KX-TEB308, KX-TES824, KX-TEM824.</p>\r\n<p>&ndash;&nbsp; Điện thoại trực.</p>\r\n<p>&ndash;&nbsp; C&oacute; 12 n&uacute;t đ&egrave;n LED 2 m&agrave;u b&aacute;o trung kế, m&aacute;y nh&aacute;nh.</p>\r\n<p>&ndash;&nbsp; Chuyển cuộc gọi đến m&aacute;y nh&aacute;nh đơn giản, nh&aacute;nh ch&oacute;ng (chỉ cần nhấn n&uacute;t đ&egrave;n).</p>\r\n<p>&ndash;&nbsp; Đ&egrave;n b&aacute;o cuộc gọi đến, tin nhắn.</p>\r\n<p>&ndash;&nbsp; Speaker phone 2 chiều.</p>\r\n<p>&ndash;&nbsp; H&agrave;ng ch&iacute;nh h&atilde;ng Panasonic.</p>\r\n<p>&ndash;&nbsp; Bảo h&agrave;nh: 12 th&aacute;ng.</p>', 0, '2015-06-21 10:11:15', '2015-06-21 05:09:16');
INSERT INTO `products` (`id`, `user_id`, `name`, `hight_light`, `code`, `manufacturer_id`, `category_id`, `media_id`, `made_from`, `amount`, `price`, `color`, `capacity`, `intensity`, `voltage`, `other_spec`, `introduction`, `is_draft`, `updated_at`, `created_at`) VALUES
(24, 1, 'Điện thoại lập trình Panasonic KX-DT543X', '', 'KX-DT543X', 10, 20, 0, '', 100, 1990000, '', '', '', '', '', '<p>-&nbsp; B&agrave;n lập tr&igrave;nh&nbsp;tổng đ&agrave;i&nbsp;kỹ thuật số 24 trung kế, m&agrave;n h&igrave;nh hiển thị LCD 3 d&ograve;ng.</p>\r\n<p>-&nbsp; Loa ngo&agrave;i (Speakerphone) 2 chiều.</p>\r\n<p>-&nbsp; 30 &acirc;m điệu chu&ocirc;ng.</p>\r\n<p>-&nbsp; Cổng kết nối: Headset jack / sub-mini-phone 2.5mm, Digital extra device port (DXDP), Electronic hook switch (EHS).</p>\r\n<p>-&nbsp; Cổng device port kết nối với một m&aacute;y điện thoại thường để mở rộng th&ecirc;m 01 m&aacute;y nh&aacute;nh.&nbsp;</p>\r\n<p>-&nbsp; Cổng Electric Hook Switch (EHS) cho ph&eacute;p sử dụng&nbsp;tai nghekh&ocirc;ng d&acirc;y PLANTRONICS rất th&iacute;ch hợp với người hay di chuyển xung quanh.</p>\r\n<p>-&nbsp; Thiết kế đẹp, &acirc;m thanh to, r&otilde;, m&agrave;n h&igrave;nh LCD dễ nh&igrave;n, thuận tiện khi sử dụng.</p>\r\n<p>-&nbsp; Điều chỉnh s&aacute;ng tối, điều chỉnh &acirc;m lượng headset v&agrave; &acirc;m lượng Speaker-phone.</p>\r\n<p>-&nbsp; Kết nối với&nbsp;tổng đ&agrave;i&nbsp;KX-NS, KX-TDA, KX-TDE&hellip;</p>\r\n<p>-&nbsp; Sản xuất tại Việt Nam.</p>\r\n<p>-&nbsp; Bảo h&agrave;nh: 12 th&aacute;ng.</p>', 0, '2015-06-21 10:12:31', '2015-06-21 05:11:18');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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