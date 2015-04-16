-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2015 at 10:10 PM
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
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 74),
(2, 1, NULL, NULL, 'Pages', 2, 5),
(3, 2, NULL, NULL, 'display', 3, 4),
(4, 1, NULL, NULL, 'Admin', 6, 53),
(5, 4, NULL, NULL, 'Dashboard', 7, 10),
(6, 5, NULL, NULL, 'admin_index', 8, 9),
(7, 4, NULL, NULL, 'Groups', 11, 20),
(8, 7, NULL, NULL, 'admin_index', 12, 13),
(9, 7, NULL, NULL, 'admin_add', 14, 15),
(10, 7, NULL, NULL, 'admin_edit', 16, 17),
(11, 7, NULL, NULL, 'admin_delete', 18, 19),
(12, 4, NULL, NULL, 'Languages', 21, 24),
(13, 12, NULL, NULL, 'admin_set', 22, 23),
(14, 4, NULL, NULL, 'Permissions', 25, 32),
(15, 14, NULL, NULL, 'admin_index', 26, 27),
(16, 14, NULL, NULL, 'admin_change', 28, 29),
(17, 14, NULL, NULL, 'admin_sync', 30, 31),
(18, 4, NULL, NULL, 'Users', 33, 48),
(19, 18, NULL, NULL, 'admin_index', 34, 35),
(20, 18, NULL, NULL, 'admin_add', 36, 37),
(21, 18, NULL, NULL, 'admin_edit', 38, 39),
(22, 18, NULL, NULL, 'admin_login', 40, 41),
(23, 18, NULL, NULL, 'admin_logout', 42, 43),
(24, 18, NULL, NULL, 'admin_reset_password', 44, 45),
(25, 18, NULL, NULL, 'admin_delete', 46, 47),
(26, 4, NULL, NULL, 'Pages', 49, 52),
(27, 26, NULL, NULL, 'display', 50, 51),
(28, 1, NULL, NULL, 'Media', 54, 73),
(29, 28, NULL, NULL, 'Medias', 55, 72),
(30, 29, NULL, NULL, 'isAuthorized', 56, 57),
(31, 29, NULL, NULL, 'canUploadMedias', 58, 59),
(32, 29, NULL, NULL, 'index', 60, 61),
(33, 29, NULL, NULL, 'upload', 62, 63),
(34, 29, NULL, NULL, 'delete', 64, 65),
(35, 29, NULL, NULL, 'thumb', 66, 67),
(36, 29, NULL, NULL, 'update', 68, 69),
(37, 29, NULL, NULL, 'order', 70, 71);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 2),
(2, NULL, 'Group', 2, NULL, 3, 4),
(3, NULL, 'Group', 3, NULL, 5, 6),
(4, NULL, 'Group', 4, NULL, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 2, 3, '0', '0', '0', '0'),
(2, 3, 3, '0', '0', '0', '0'),
(3, 2, 27, '0', '0', '0', '0'),
(4, 2, 6, '0', '0', '0', '0'),
(5, 2, 5, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `alias`, `created`, `modified`) VALUES
(1, 'Superadmin', 'superadmin', '2015-04-16 18:31:52', '2015-04-16 18:31:52'),
(2, 'Admin', 'admin', '2015-04-16 18:32:04', '2015-04-16 18:32:04'),
(3, 'Registered', 'registered', '2015-04-16 18:33:02', '2015-04-16 18:33:02'),
(4, 'Public', 'public', '2015-04-16 18:33:08', '2015-04-16 18:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(10) NOT NULL,
  `ref` varchar(60) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `ref`, `ref_id`, `file`, `name`, `position`, `created`) VALUES
(1, 'Page', 1, '/img/uploads/2015/04/Screen_Shot_2015_04_12_at_4_47_05_PM.png', 'Screen Shot 2015-04-12 at 4.47.05 PM.png', 1, '0000-00-00 00:00:00'),
(2, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00'),
(3, 'Page', 1, '/img/uploads/2015/04/nature.jpg', 'nature.jpg', 0, '0000-00-00 00:00:00'),
(4, 'Page', 1, '/img/uploads/2015/04/ocean.jpg', 'ocean.jpg', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'd', 'hoho ho ho ho ho', '2015-04-16 19:18:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting` varchar(10) DEFAULT NULL,
  `value` varchar(10) DEFAULT NULL
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
  `username` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`, `status`, `name`, `email`) VALUES
(1, 'sadmin', 'e8c553411681cbd77adf93c92aaf557e41785830', 1, '2015-04-16 18:34:24', '2015-04-16 20:35:25', 1, 'Superadmin', 'sadmin@tera.vn'),
(2, 'admin', 'd20274c604052d51ad2b443dc483aad312687fb2', 2, '2015-04-16 18:34:46', '2015-04-16 18:34:46', 1, NULL, NULL),
(3, '', '', 0, '2015-04-16 21:57:16', '2015-04-16 21:57:16', 1, NULL, NULL);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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