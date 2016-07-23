-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2016 at 07:35 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thietbidien`
--

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
(1, 'sadmin', 'd20274c604052d51ad2b443dc483aad312687fb2', 1, 1, 'Superadmin', 'sadmin@tera.vn', NULL, '2015-12-17 15:47:17', '2015-04-16 18:34:24'),
(2, 'demo2', 'd20274c604052d51ad2b443dc483aad312687fb2', 2, 1, 'Demo 2', 'demo2@gmail.com', NULL, '2015-05-19 19:04:43', '2015-04-16 18:34:46'),
(3, 'demo1', 'd20274c604052d51ad2b443dc483aad312687fb2', 2, 0, 'User demo', 'demo@gmail.com', NULL, '2015-05-19 18:56:04', '2015-04-17 19:26:17'),
(5, 'admod', 'd20274c604052d51ad2b443dc483aad312687fb2', 4, 1, 'admod', 'admod@gmail.com', NULL, '2015-06-21 18:58:49', '2015-04-19 20:03:05');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
