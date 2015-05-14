-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 14, 2015 at 02:05 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 118),
(2, 1, NULL, NULL, 'Home', 2, 7),
(3, 2, NULL, NULL, 'display', 3, 4),
(4, 2, NULL, NULL, 'canUploadMedias', 5, 6),
(5, 1, NULL, NULL, 'Admin', 8, 83),
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
(38, 1, NULL, NULL, 'Media', 84, 103),
(39, 38, NULL, NULL, 'Medias', 85, 102),
(40, 39, NULL, NULL, 'isAuthorized', 86, 87),
(41, 39, NULL, NULL, 'canUploadMedias', 88, 89),
(42, 39, NULL, NULL, 'index', 90, 91),
(43, 39, NULL, NULL, 'upload', 92, 93),
(44, 39, NULL, NULL, 'delete', 94, 95),
(45, 39, NULL, NULL, 'thumb', 96, 97),
(46, 39, NULL, NULL, 'update', 98, 99),
(47, 39, NULL, NULL, 'order', 100, 101),
(48, 29, NULL, NULL, 'admin_lock', 72, 73),
(49, 29, NULL, NULL, 'admin_unlock', 74, 75),
(50, 1, NULL, NULL, 'ImageCropResize', 104, 105),
(51, 5, NULL, NULL, 'Categories', 77, 82),
(52, 51, NULL, NULL, 'index', 78, 79),
(53, 51, NULL, NULL, 'canUploadMedias', 80, 81),
(54, 1, NULL, NULL, 'BoostCake', 106, 117),
(55, 54, NULL, NULL, 'BoostCake', 107, 116),
(56, 55, NULL, NULL, 'index', 108, 109),
(57, 55, NULL, NULL, 'bootstrap2', 110, 111),
(58, 55, NULL, NULL, 'bootstrap3', 112, 113),
(59, 55, NULL, NULL, 'canUploadMedias', 114, 115);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
(13, 5, 8, '0', '0', '0', '0');

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
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` int(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `meta_title`, `meta_description`, `is_draft`, `updated_at`, `created_at`) VALUES
(1, NULL, 1, 2, 'Root', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, NULL, 3, 4, '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(4, 'Admod', NULL, 0, '2015-04-19 20:00:21', '2015-04-19 20:00:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

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
(29, NULL, NULL, NULL, NULL, 3, '2015-04-19 11:52:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `parent_id`, `title`, `content`, `media_id`, `deleted_at`, `editing`, `is_draft`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'd', 'hoho ho ho ho ho', 28, NULL, 0, 0, '2015-04-16 19:18:22', '0000-00-00 00:00:00'),
(2, 0, 0, 'gggg', '<p>hhh</p>', 0, NULL, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 1, '123 sa vdsa vdsa vdsa vds fffff', '<p>123</p>', 0, NULL, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'sadmin', 'e8c553411681cbd77adf93c92aaf557e41785830', 1, 1, 'Superadmin', 'sadmin@tera.vn', '0000-00-00 00:00:00', '2015-05-10 04:12:00', '2015-04-16 18:34:24'),
(2, 'demo 2', '4bd716cd925a538cc3435a9518675d345d8dbf6b', 2, 1, 'Demo 2', 'demo2@gmail.com', '0000-00-00 00:00:00', '2015-04-19 20:45:08', '2015-04-16 18:34:46'),
(3, 'demo1', '', 2, 1, 'User demo', 'demo@gmail.com', NULL, '2015-04-19 20:45:09', '2015-04-17 19:26:17'),
(5, 'admod', 'd20274c604052d51ad2b443dc483aad312687fb2', 4, 1, 'admod', 'admod@gmail.com', NULL, '2015-05-10 04:13:15', '2015-04-19 20:03:05'),
(6, '', '', 0, 1, NULL, NULL, NULL, '2015-05-11 15:48:45', '2015-05-11 15:48:45');

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;