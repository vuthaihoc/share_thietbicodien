-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2015 at 08:38 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 94),
(4, 1, NULL, NULL, 'Admin', 2, 67),
(5, 4, NULL, NULL, 'Dashboard', 3, 8),
(6, 5, NULL, NULL, 'admin_index', 4, 5),
(7, 4, NULL, NULL, 'Groups', 9, 20),
(8, 7, NULL, NULL, 'admin_index', 10, 11),
(9, 7, NULL, NULL, 'admin_add', 12, 13),
(10, 7, NULL, NULL, 'admin_edit', 14, 15),
(11, 7, NULL, NULL, 'admin_delete', 16, 17),
(12, 4, NULL, NULL, 'Languages', 21, 26),
(13, 12, NULL, NULL, 'admin_set', 22, 23),
(14, 4, NULL, NULL, 'Permissions', 27, 36),
(15, 14, NULL, NULL, 'admin_index', 28, 29),
(16, 14, NULL, NULL, 'admin_change', 30, 31),
(17, 14, NULL, NULL, 'admin_sync', 32, 33),
(18, 4, NULL, NULL, 'Users', 37, 54),
(19, 18, NULL, NULL, 'admin_index', 38, 39),
(20, 18, NULL, NULL, 'admin_add', 40, 41),
(21, 18, NULL, NULL, 'admin_edit', 42, 43),
(22, 18, NULL, NULL, 'admin_login', 44, 45),
(23, 18, NULL, NULL, 'admin_logout', 46, 47),
(24, 18, NULL, NULL, 'admin_reset_password', 48, 49),
(25, 18, NULL, NULL, 'admin_delete', 50, 51),
(26, 4, NULL, NULL, 'Pages', 55, 66),
(28, 1, NULL, NULL, 'Media', 68, 87),
(29, 28, NULL, NULL, 'Medias', 69, 86),
(30, 29, NULL, NULL, 'isAuthorized', 70, 71),
(31, 29, NULL, NULL, 'canUploadMedias', 72, 73),
(32, 29, NULL, NULL, 'index', 74, 75),
(33, 29, NULL, NULL, 'upload', 76, 77),
(34, 29, NULL, NULL, 'delete', 78, 79),
(35, 29, NULL, NULL, 'thumb', 80, 81),
(36, 29, NULL, NULL, 'update', 82, 83),
(37, 29, NULL, NULL, 'order', 84, 85),
(38, 1, NULL, NULL, 'Home', 88, 93),
(39, 38, NULL, NULL, 'display', 89, 90),
(40, 38, NULL, NULL, 'canUploadMedias', 91, 92),
(41, 5, NULL, NULL, 'canUploadMedias', 6, 7),
(42, 7, NULL, NULL, 'canUploadMedias', 18, 19),
(43, 12, NULL, NULL, 'canUploadMedias', 24, 25),
(44, 26, NULL, NULL, 'admin_index', 56, 57),
(45, 26, NULL, NULL, 'index', 58, 59),
(46, 26, NULL, NULL, 'admin_add', 60, 61),
(47, 26, NULL, NULL, 'admin_edit', 62, 63),
(48, 26, NULL, NULL, 'canUploadMedias', 64, 65),
(49, 14, NULL, NULL, 'canUploadMedias', 34, 35),
(50, 18, NULL, NULL, 'canUploadMedias', 52, 53);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 2),
(2, NULL, 'Group', 2, NULL, 3, 4),
(3, NULL, 'Group', 3, NULL, 5, 6);

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(4, 2, 6, '1', '1', '1', '1'),
(5, 2, 5, '1', '1', '1', '1'),
(6, 2, 40, '1', '1', '1', '1'),
(7, 2, 39, '1', '1', '1', '1'),
(8, 3, 39, '1', '1', '1', '1'),
(9, 3, 40, '1', '1', '1', '1'),
(10, 2, 11, '1', '1', '1', '1'),
(11, 3, 11, '0', '0', '0', '0'),
(12, 2, 7, '1', '1', '1', '1'),
(13, 2, 41, '1', '1', '1', '1'),
(14, 2, 8, '1', '1', '1', '1'),
(15, 2, 9, '1', '1', '1', '1'),
(16, 2, 10, '1', '1', '1', '1'),
(17, 2, 42, '1', '1', '1', '1'),
(18, 2, 12, '1', '1', '1', '1'),
(19, 2, 13, '1', '1', '1', '1'),
(20, 2, 43, '1', '1', '1', '1'),
(21, 2, 14, '1', '1', '1', '1'),
(22, 2, 15, '1', '1', '1', '1'),
(23, 2, 16, '1', '1', '1', '1'),
(24, 2, 17, '1', '1', '1', '1'),
(25, 2, 49, '1', '1', '1', '1'),
(26, 2, 18, '1', '1', '1', '1'),
(27, 2, 19, '1', '1', '1', '1'),
(28, 2, 20, '1', '1', '1', '1'),
(29, 2, 21, '1', '1', '1', '1'),
(30, 2, 22, '1', '1', '1', '1'),
(31, 2, 23, '1', '1', '1', '1'),
(32, 2, 24, '1', '1', '1', '1'),
(33, 2, 25, '1', '1', '1', '1'),
(34, 2, 50, '1', '1', '1', '1'),
(35, 2, 26, '1', '1', '1', '1'),
(36, 2, 44, '1', '1', '1', '1'),
(37, 2, 45, '1', '1', '1', '1'),
(38, 2, 46, '1', '1', '1', '1'),
(39, 2, 47, '1', '1', '1', '1'),
(40, 2, 48, '1', '1', '1', '1'),
(41, 2, 29, '1', '1', '1', '1'),
(42, 2, 30, '1', '1', '1', '1'),
(43, 2, 31, '1', '1', '1', '1'),
(44, 2, 32, '1', '1', '1', '1'),
(45, 2, 33, '1', '1', '1', '1'),
(46, 2, 34, '1', '1', '1', '1'),
(47, 2, 35, '1', '1', '1', '1'),
(48, 2, 36, '1', '1', '1', '1'),
(49, 2, 37, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `alias`, `created`, `modified`) VALUES
(1, 'Superadmin', 'superadmin', '2015-04-16 18:31:52', '2015-04-16 18:31:52'),
(2, 'Admin', 'admin', '2015-04-16 18:32:04', '2015-04-16 18:32:04'),
(3, 'Registered', 'registered', '2015-04-16 18:33:02', '2015-04-16 18:33:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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
(27, 'Page', 1, '/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM-1.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 0, '2015-04-17 13:35:23'),
(28, 'Page', 1, '/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM-2.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 0, '2015-04-17 13:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `editing` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `title`, `content`, `media_id`, `deleted_at`, `editing`, `created_at`, `updated_at`) VALUES
(1, 0, 'd', 'hoho ho ho ho ho', 25, NULL, 0, '2015-04-16 19:18:22', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `status`, `name`, `email`, `deleted_at`, `modified`, `created`) VALUES
(1, 'sadmin', 'e8c553411681cbd77adf93c92aaf557e41785830', 1, 1, 'Superadmin', 'sadmin@tera.vn', '0000-00-00 00:00:00', '2015-04-16 20:35:25', '2015-04-16 18:34:24'),
(2, 'admin', 'd20274c604052d51ad2b443dc483aad312687fb2', 2, 1, NULL, NULL, '0000-00-00 00:00:00', '2015-04-16 18:34:46', '2015-04-16 18:34:46'),
(4, '', '', 0, 1, NULL, NULL, NULL, '2015-04-17 19:26:17', '2015-04-17 19:26:17');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;