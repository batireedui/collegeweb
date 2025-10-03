-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 03, 2025 at 03:37 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegeweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintax`
--

DROP TABLE IF EXISTS `admintax`;
CREATE TABLE IF NOT EXISTS `admintax` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

DROP TABLE IF EXISTS `adminusers`;
CREATE TABLE IF NOT EXISTS `adminusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int NOT NULL,
  `tuluv` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `name`, `email`, `phone`, `pass`, `role`, `tuluv`) VALUES
(6, 'Жавхлан Бат-Ирээдүй', 'j.batireedui@gmail.com', '88992842', '$2y$08$IPB0jcXj461JpXtAY8Wz6O1attoMeN0vrBMrAgfSrpQq4uR5Itxqi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tai` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `tuluv` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `tai`, `parent_id`, `tuluv`) VALUES
(4, 'Мэдээ, мэдээлэл', 'kS5jnAZajdCk5byhlx', 'Мэдээ, мэдээлэл', 0, 1),
(2, 'Бидний тухай', 'XX61bzruI5Hs1fVULW', 'Бидний тухай', 0, 1),
(3, 'Зээлийн бүтээгдэхүүн', 'tkqXxGYBfuj4u0wVGq', 'Зээлийн бүтээгдэхүүн', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `design`
--

DROP TABLE IF EXISTS `design`;
CREATE TABLE IF NOT EXISTS `design` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `val` varchar(3) DEFAULT NULL,
  `curr` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `design`
--

INSERT INTO `design` (`id`, `name`, `val`, `curr`) VALUES
(1, 'Цагаан', NULL, 1),
(2, 'Ногоон', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ognoo` datetime NOT NULL,
  `unsh` datetime DEFAULT NULL,
  `ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `key`, `mn`, `en`) VALUES
(1, 'search', 'Хайх', 'Search'),
(2, 'address', 'Хаяг', 'Address'),
(3, 'lastnews', 'Сүүлд нэмэгдсэн', 'Latest news'),
(4, 'featurednews', 'Онцлох мэдээ', 'Featured article'),
(5, 'sitemap', 'Сайтын бүтэц', 'Site map'),
(6, 'feedback', 'Санал хүсэлт', 'Feedback'),
(7, 'name', 'Таны нэр', 'Name'),
(8, 'email', 'Email хаяг', 'Email'),
(9, 'phonenumber', 'Утасны дугаар', 'Phone number'),
(10, 'send', 'Илгээх', 'Send'),
(11, 'contact', 'Холбоо барих', 'Contact us'),
(12, 'partner', 'Хамтрагч байгууллагууд', 'Partner');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `turul` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `image`, `name`, `name_en`, `url`, `turul`) VALUES
(1, '', 'Хэрхэн элсэх вэ?', '', 'Хэрхэн элсэх вэ?', 1),
(2, '', 'Тэтглэг хүн бүрт өгөх үү?', '', 'Тэтглэг хүн бүрт өгөх үү?', 1),
(3, '', 'Дотуур байранд хэрхэн орох вэ?', '', 'Дотуур байранд хэрхэн орох вэ?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE IF NOT EXISTS `loginlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `hezee` datetime NOT NULL,
  `device` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`id`, `user`, `hezee`, `device`, `ip`) VALUES
(1, 1, '2024-03-20 02:57:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '::1'),
(2, 2, '2024-03-20 09:53:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(3, 2, '2024-03-20 10:00:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(4, 2, '2024-03-20 10:43:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(5, 2, '2024-03-20 14:13:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(6, 1, '2024-03-20 14:53:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(7, 1, '2024-03-20 17:30:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(8, 2, '2024-03-21 08:48:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(9, 2, '2024-03-21 08:48:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(10, 2, '2024-03-21 08:48:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(11, 2, '2024-03-21 08:48:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(12, 2, '2024-03-21 08:48:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(13, 2, '2024-03-21 09:30:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(14, 1, '2024-03-21 11:28:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(15, 2, '2024-03-21 15:05:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(16, 2, '2024-03-21 15:05:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(17, 1, '2024-03-21 15:09:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(18, 1, '2024-03-21 15:17:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '103.79.156.111'),
(19, 4, '2024-03-21 15:17:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '103.79.156.111'),
(20, 1, '2024-03-21 15:20:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '103.79.156.111'),
(21, 4, '2024-03-21 15:21:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(22, 1, '2024-03-21 15:26:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(23, 2, '2024-03-21 15:26:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(24, 2, '2024-03-21 16:36:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(25, 2, '2024-03-21 17:39:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(26, 2, '2024-03-21 18:42:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(27, 2, '2024-03-22 08:28:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(28, 1, '2024-03-22 09:32:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(29, 2, '2024-03-22 15:41:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(30, 2, '2024-03-22 16:20:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(31, 1, '2024-03-22 16:51:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.242.47.234'),
(32, 1, '2024-03-22 21:46:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '59.153.113.122'),
(33, 2, '2024-03-25 08:47:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(34, 2, '2024-03-25 10:32:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(35, 2, '2024-03-25 11:05:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(36, 2, '2024-03-25 13:53:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(37, 2, '2024-03-25 15:57:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(38, 2, '2024-03-26 08:47:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(39, 2, '2024-03-26 13:58:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(40, 2, '2024-03-26 14:31:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '66.181.171.10'),
(41, 2, '2024-03-26 16:12:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(42, 1, '2024-03-28 11:40:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(43, 1, '2024-03-28 14:10:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '103.79.156.111'),
(44, 1, '2024-03-28 17:31:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '59.153.113.122'),
(45, 1, '2024-03-29 12:46:44', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.79.156.111'),
(46, 1, '2024-03-31 12:04:56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '66.181.161.18'),
(47, 1, '2024-03-31 14:33:32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '66.181.186.204'),
(48, 1, '2024-03-31 15:34:46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '66.181.186.204'),
(49, 1, '2024-03-31 17:25:32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '66.181.186.204'),
(50, 1, '2024-03-31 18:34:04', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '66.181.186.204'),
(51, 1, '2024-03-31 21:18:45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '66.181.186.204'),
(52, 1, '2024-03-31 22:10:36', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '66.181.186.204'),
(53, 2, '2024-04-01 08:37:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(54, 1, '2024-04-01 09:10:48', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) EdgiOS/123.0.2420.56 Version/17.0 Mobile/15E148 Safari/604.1', '103.212.162.104'),
(55, 2, '2024-04-01 10:01:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(56, 1, '2024-04-01 10:03:45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.212.162.74'),
(57, 5, '2024-04-01 11:06:52', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2.1 Safari/605.1.15', '66.181.171.10'),
(58, 2, '2024-04-01 13:36:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(59, 1, '2024-04-01 13:53:51', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.212.162.74'),
(60, 2, '2024-04-01 16:16:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(61, 1, '2024-04-01 16:38:38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.212.162.74'),
(62, 2, '2024-04-02 08:15:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(63, 1, '2024-04-02 09:01:50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.79.156.111'),
(64, 2, '2024-04-02 09:35:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(65, 2, '2024-04-02 11:20:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(66, 2, '2024-04-02 12:00:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(67, 1, '2024-04-02 12:00:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.79.156.111'),
(68, 2, '2024-04-02 13:26:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(69, 1, '2024-04-02 15:14:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.79.156.111'),
(70, 2, '2024-04-03 08:39:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(71, 1, '2024-04-03 09:07:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '139.5.219.192'),
(72, 2, '2024-04-03 10:52:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(73, 2, '2024-04-04 09:08:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(74, 2, '2024-04-04 10:06:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(75, 2, '2024-04-04 14:05:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(76, 2, '2024-04-04 15:00:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(77, 2, '2024-04-05 09:13:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(78, 2, '2024-04-05 10:10:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(79, 2, '2024-04-05 11:14:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(80, 2, '2024-04-05 12:49:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(81, 1, '2024-04-05 15:49:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.79.156.111'),
(82, 2, '2024-04-05 16:18:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '202.126.91.217'),
(83, 1, '2024-04-05 16:47:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '103.79.156.111'),
(84, 2, '2024-04-05 17:00:25', 'Mozilla/5.0 (Linux; ) AppleWebKit/537.36 (KHTML, like Gecko) Version/5.0 Chrome/94.0.4606.31 Safari/537.36', '66.181.171.10'),
(85, 2, '2024-04-09 10:06:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(86, 2, '2024-04-09 11:27:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(87, 2, '2024-04-09 13:55:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(88, 2, '2024-04-11 08:50:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(89, 2, '2024-04-11 10:12:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(90, 2, '2024-04-11 11:50:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(91, 2, '2024-04-11 13:27:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(92, 2, '2024-04-11 15:37:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(93, 2, '2024-04-11 17:34:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(94, 2, '2024-04-11 21:02:33', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '202.126.90.235'),
(95, 2, '2024-04-15 09:14:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(96, 1, '2024-04-15 11:05:54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', '66.181.178.237'),
(97, 2, '2024-04-15 11:58:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(98, 2, '2024-04-15 14:56:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(99, 2, '2024-04-15 15:06:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(100, 1, '2024-04-16 21:08:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '139.5.216.112'),
(101, 2, '2024-04-19 11:25:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(102, 2, '2024-04-19 14:54:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(103, 2, '2024-04-19 15:45:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(104, 2, '2024-04-19 16:45:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(105, 2, '2024-04-19 17:32:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(106, 2, '2024-04-19 18:54:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '66.181.171.10'),
(107, 2, '2024-04-25 10:59:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(108, 2, '2024-04-25 21:23:01', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '202.126.89.167'),
(109, 1, '2024-04-29 09:19:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', '103.79.156.111'),
(110, 2, '2024-04-29 10:28:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(111, 2, '2024-05-02 09:51:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(112, 2, '2024-05-02 10:31:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(113, 2, '2024-05-02 11:40:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(114, 2, '2024-05-06 08:59:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(115, 2, '2024-05-06 09:46:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(116, 2, '2024-05-06 11:01:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(117, 2, '2024-05-06 14:48:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(118, 2, '2024-05-07 10:00:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(119, 2, '2024-05-07 10:31:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(120, 2, '2024-05-07 11:43:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(121, 2, '2024-05-07 14:42:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(122, 2, '2024-05-07 15:47:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(123, 2, '2024-05-16 14:34:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(124, 2, '2024-05-20 14:52:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(125, 2, '2024-05-21 11:31:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(126, 2, '2024-05-21 13:41:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(127, 2, '2024-05-21 14:45:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(128, 2, '2024-05-21 17:15:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(129, 2, '2024-05-21 20:33:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(130, 2, '2024-05-27 15:27:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '66.181.171.10'),
(131, 2, '2024-05-28 10:55:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(132, 2, '2024-05-28 11:35:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(133, 2, '2024-05-28 15:41:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(134, 2, '2024-05-30 16:36:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(135, 2, '2024-05-31 17:16:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(136, 2, '2024-06-13 09:41:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(137, 2, '2024-06-13 13:13:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(138, 2, '2024-06-13 14:08:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(139, 2, '2024-06-13 16:08:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '66.181.171.10'),
(140, 2, '2024-06-22 22:57:23', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', '172.225.55.49'),
(141, 2, '2024-06-22 22:57:27', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', '172.225.55.49'),
(142, 2, '2024-06-25 10:39:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(143, 2, '2024-06-25 12:59:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(144, 2, '2024-06-25 14:39:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(145, 2, '2024-07-01 10:16:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(146, 2, '2024-07-03 08:50:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(147, 2, '2024-07-03 11:02:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(148, 2, '2024-07-04 11:04:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(149, 2, '2024-07-04 13:37:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(150, 2, '2024-07-08 14:36:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(151, 2, '2024-07-09 14:20:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(152, 2, '2024-07-09 15:12:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(153, 2, '2024-07-16 10:56:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '66.181.171.10'),
(154, 2, '2024-08-06 15:56:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(155, 2, '2024-08-07 09:15:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(156, 2, '2024-08-07 10:07:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(157, 2, '2024-08-07 15:03:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(158, 2, '2024-08-07 17:47:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(159, 2, '2024-08-13 09:02:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(160, 2, '2024-08-13 11:18:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(161, 2, '2024-08-14 09:41:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(162, 2, '2024-08-14 10:56:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(163, 2, '2024-08-14 12:05:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(164, 2, '2024-08-14 15:33:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(165, 2, '2024-08-16 16:01:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(166, 2, '2024-08-21 14:04:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(167, 2, '2024-08-22 09:39:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(168, 2, '2024-08-22 10:47:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(169, 2, '2024-08-27 10:24:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(170, 2, '2024-08-27 11:50:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '66.181.171.10'),
(171, 2, '2024-08-28 09:40:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(172, 2, '2024-08-28 16:04:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(173, 2, '2024-08-28 16:34:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(174, 2, '2024-08-30 09:10:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(175, 2, '2024-09-01 19:36:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '103.57.93.101'),
(176, 2, '2024-09-02 09:23:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(177, 2, '2024-09-04 09:19:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(178, 2, '2024-09-04 10:47:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(179, 2, '2024-09-12 11:00:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '66.181.171.10'),
(180, 2, '2024-10-03 11:24:19', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', '66.181.188.249'),
(181, 2, '2024-10-03 12:01:27', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '66.181.186.217'),
(182, 2, '2024-10-04 19:21:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '66.181.183.106'),
(183, 2, '2024-10-22 18:08:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '66.181.164.184'),
(184, 2, '2024-10-24 11:50:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '66.181.164.184'),
(185, 2, '2024-10-24 15:44:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(186, 2, '2024-10-24 16:54:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(187, 2, '2024-10-28 10:02:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(188, 2, '2024-10-29 11:23:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(189, 2, '2024-10-29 12:25:11', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0.1 Mobile/15E148 Safari/604.1', '202.126.90.202'),
(190, 2, '2024-10-29 13:47:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(191, 2, '2024-10-30 09:40:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(192, 2, '2024-11-04 16:16:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(193, 2, '2024-11-04 17:07:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(194, 2, '2024-11-05 09:25:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(195, 2, '2024-11-05 10:48:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(196, 2, '2024-11-05 14:54:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(197, 2, '2024-11-05 16:45:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(198, 2, '2024-11-19 08:53:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(199, 2, '2024-11-19 10:19:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '66.181.164.184'),
(200, 2, '2024-11-20 12:16:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(201, 2, '2024-11-21 16:27:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(202, 2, '2024-12-02 09:57:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(203, 2, '2024-12-04 08:49:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(204, 2, '2024-12-04 11:16:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(205, 2, '2024-12-04 13:54:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(206, 1, '2024-12-09 21:50:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '66.181.179.204'),
(207, 2, '2024-12-10 13:44:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(208, 2, '2024-12-18 14:17:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.164.184'),
(209, 2, '2025-01-09 08:58:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(210, 2, '2025-01-09 16:52:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(211, 2, '2025-01-09 17:11:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(212, 2, '2025-01-14 12:05:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(213, 2, '2025-01-17 09:56:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(214, 2, '2025-01-17 14:05:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(215, 2, '2025-01-17 17:03:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(216, 2, '2025-01-20 11:55:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(217, 2, '2025-01-20 11:58:15', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) EdgiOS/131.0.2903.145 Version/18.0 Mobile/15E148 Safari/604.1', '122.201.31.20'),
(218, 2, '2025-01-20 12:41:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(219, 2, '2025-01-20 14:35:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(220, 2, '2025-01-20 15:34:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(221, 2, '2025-01-22 09:54:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '66.181.171.10'),
(222, 2, '2025-01-29 16:39:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(223, 2, '2025-01-29 19:18:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(224, 2, '2025-01-31 09:13:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(225, 2, '2025-01-31 11:34:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(226, 2, '2025-01-31 16:29:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(227, 2, '2025-02-04 14:14:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(228, 2, '2025-02-05 17:38:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(229, 2, '2025-02-06 15:25:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(230, 2, '2025-02-06 16:48:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(231, 2, '2025-02-07 08:58:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(232, 2, '2025-02-10 10:08:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(233, 2, '2025-02-10 13:53:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(234, 2, '2025-02-11 10:05:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(235, 2, '2025-02-11 11:28:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(236, 2, '2025-02-11 13:56:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(237, 2, '2025-02-11 13:59:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(238, 2, '2025-02-11 17:08:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '66.181.171.10'),
(239, 2, '2025-02-12 21:11:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '::1'),
(240, 2, '2025-02-12 21:12:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '::1'),
(241, 6, '2025-02-12 22:17:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '::1'),
(242, 6, '2025-02-12 22:18:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '::1'),
(243, 6, '2025-02-15 21:23:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '::1'),
(244, 6, '2025-02-16 21:31:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '::1'),
(245, 6, '2025-02-17 02:32:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '66.181.185.24'),
(246, 6, '2025-02-18 08:03:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '103.79.156.111'),
(247, 6, '2025-02-18 08:04:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '139.5.218.214'),
(248, 6, '2025-02-18 08:12:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '103.79.156.111'),
(249, 6, '2025-02-18 08:13:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '139.5.218.214'),
(250, 6, '2025-02-18 08:13:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '139.5.218.214'),
(251, 6, '2025-02-18 12:34:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '103.79.156.111'),
(252, 6, '2025-02-25 09:48:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '103.79.156.111'),
(253, 6, '2025-03-26 17:25:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '66.181.185.230'),
(254, 6, '2025-03-26 19:45:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '66.181.185.230'),
(255, 6, '2025-03-27 21:42:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '66.181.185.230'),
(256, 6, '2025-04-13 12:20:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '103.79.156.111'),
(257, 6, '2025-10-02 11:17:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE IF NOT EXISTS `main` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `name`, `name_en`, `address`, `address_en`, `email`, `phone`, `facebook`, `youtube`, `meta`) VALUES
(1, 'Өвөрхангай аймаг дахь Политехник коллеж', 'UVPK', 'Өвөрхангай аймаг, Арвайхээр сум, 5-р баг, Өвөрхангай аймаг дахь Политехник коллеж', 'Uvurkhangai', 'uvurkhangai.college@gmail.com', '7032-2089, 7032-3454', 'https://www.facebook.com/uvcollege', '', 'Өвөрхангай аймаг дахь Политехник коллеж, коллеж, Өвөрхангай');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tai` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `erembe` int NOT NULL,
  `parent_id` int NOT NULL,
  `turul` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tuluv` int NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `slug`, `name`, `name_en`, `tai`, `meta`, `erembe`, `parent_id`, `turul`, `tuluv`, `icon`) VALUES
(6, 'nuur', 'НҮҮР', 'HOME', '.', '/', 1, 0, 'link', 1, NULL),
(1, 'v8AGH9cGjR9sTDu4Vc', 'БИДНИЙ ТУХАЙ', 'About me', '.', '2', 2, 0, 'post', 1, ''),
(2, 'J4JANf7WbVSs3Qop9s', 'СУРГАЛТ', 'СУРГАЛТ', '.', '0', 3, 0, 'submenu', 1, ''),
(13, 'H7afU8FkCMQPTygRWD', 'ХОЛБОО БАРИХ', 'Contact', '.', '3', 5, 0, 'post', 1, ''),
(75, 'zsUPJdCgmae4hiyfZC', 'Мэргэжлийн боловсролын сургалт (3 жил)', 'Мэргэжлийн боловсролын сургалт (3 жил)', 'Мэргэжлийн боловсролын сургалт (3 жил)', '#', 1, 2, 'link', 1, ''),
(76, 'qwLfe3QJPMQuHBCulP', 'Мэргэжлийн сургалт (1 жил)', 'Мэргэжлийн сургалт (1 жил)', 'Мэргэжлийн сургалт (1 жил)', '#', 2, 2, 'link', 1, ''),
(88, 'mfSbUDTf9i7KpH9iaB', 'Техникийн боловсрол олгох сургалт (1.5, 3 жил)', 'Техникийн боловсрол олгох сургалт (1.5, 3 жил)', 'Техникийн боловсрол олгох сургалт (1.5, 3 жил)', '#', 1, 2, 'link', 1, ''),
(83, 'vNoT78EmiACQ0rOxo6', 'МЭДЭЭЛЭЛ', 'news', 'Мэдээлэл', '0', 4, 0, 'category', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_cate`
--

DROP TABLE IF EXISTS `menu_cate`;
CREATE TABLE IF NOT EXISTS `menu_cate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_id` int NOT NULL,
  `cate_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_cate`
--

INSERT INTO `menu_cate` (`id`, `menu_id`, `cate_id`) VALUES
(106, 83, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ognoo` datetime NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `turul` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int NOT NULL,
  `tuluv` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `name`, `name_en`, `body`, `body_en`, `ognoo`, `image`, `turul`, `icon`, `userid`, `tuluv`) VALUES
(2, 'KySNtDOxgLOTsW1JhG', 'Бидний тухай', 'Бидний тухай', '\r\n<p>Тус сургууль нь анх 1974 онд Зөвлөлт Холбоот Улсын хөрөнгө оруулалтаар “Усны аж ахуйн ТМС” нэртэй байгуулагдан, 1992 оноос мэргэжлийн сургалт үйлдвэрлэлийн төв болон өргөжсөн. 1998 оноос дээд боловсролтой боловсон хүчин бэлтгэх шаталсан сургалттай сургууль болон ажиллаж байгаад 2013 онд Хөдөлмөрийн сайдын 161-р тушаалаар \"Өвөрхангай аймаг дахь Мэргэжлийн Сургалт Үйлдвэрлэлийн Төв\" болон зохион байгуулагджээ. 2019 оноос тус сургууль политехник коллеж болон өргөжиж техникийн боловсролтой мэргэжилтэн бэлтгэх боломжтой болсон.</p>\r\n<script data-ts=\"1759377079249\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '<p>Тус сургууль нь анх 1974 онд Зөвлөлт Холбоот Улсын хөрөнгө оруулалтаар &ldquo;Усны аж ахуйн ТМС&rdquo; нэртэй байгуулагдан, 1992 оноос мэргэжлийн сургалт үйлдвэрлэлийн төв болон өргөжсөн. 1998 оноос дээд боловсролтой боловсон хүчин бэлтгэх шаталсан сургалттай сургууль болон ажиллаж байгаад 2013 онд Хөдөлмөрийн сайдын 161-р тушаалаар &quot;Өвөрхангай аймаг дахь Мэргэжлийн Сургалт Үйлдвэрлэлийн Төв&quot; болон зохион байгуулагджээ. 2019 оноос тус сургууль политехник коллеж болон өргөжиж техникийн боловсролтой мэргэжилтэн бэлтгэх боломжтой болсон.</p>\r\n', '2025-02-17 00:00:00', '', 'post', '', 6, 1),
(3, 'J5wFC2BEvyJL4cc1zb', 'МАНАЙ БАЙРШИЛ', 'МАНАЙ БАЙРШИЛ', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1759377294234\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', '', 'post', '', 6, 1),
(13, 'YWSDe1FZNcfSi5QnR6', '\"Үе тэнгийнхний дээрэлхэлт, цахим орчны зохистой хэрэглээ\" сургалт зохион байгуулав.', '\"Үе тэнгийнхний дээрэлхэлт, цахим орчны зохистой хэрэглээ\" сургалт зохион байгуулав.', '\r\n<p><img alt=\"✅\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t33/1/16/2705.png\" style=\"height:16px; width:16px\">&nbsp;Мэргэжлийн боловсролын 1-р ангийн 185 суралцагчдад Хууль зүйн туслалцааны төвийн Улсын өмгөөлөгч Б.Ууганжаргал тус сургалтыг зохион байгуулав.</p>\r\n\r\n<p><img alt=\"👉\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\">Сургалтаар үе тэнгийн дээрэлхэлт нь хүүхдийн бие, сэтгэл санаанд сөрөг нөлөө үзүүлдэг тул эцэг эх, багш, олон нийтийн хамтын оролцоо чухлыг онцлов.</p>\r\n\r\n<p><img alt=\"👉\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\">Түүнчлэн 14 наснаас эрүүгийн хариуцлага хүлээлгэдэг гэмт хэрэг, урьдчилан сэргийлэх арга замын талаар танилцуулж, асуудал гарсан үед мэргэжлийн байгууллагад хандахыг зөвлөв.</p>\r\n\r\n<p>Дээрэлхлийг зогсооход хүүхэд, эцэг эх, багш нарын хамтын ажиллагаа нэн чухал бөгөөд эцэг эхчүүдийн идэвх санаачилгатай оролцоог уриалан хүсэж байна.</p>\r\n<script data-ts=\"1759378241298\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '<p><img alt=\"✅\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t33/1/16/2705.png\" style=\"height:16px; width:16px\" />&nbsp;Мэргэжлийн боловсролын 1-р ангийн 185 суралцагчдад Хууль зүйн туслалцааны төвийн Улсын өмгөөлөгч Б.Ууганжаргал тус сургалтыг зохион байгуулав.</p>\r\n\r\n<p><img alt=\"👉\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Сургалтаар үе тэнгийн дээрэлхэлт нь хүүхдийн бие, сэтгэл санаанд сөрөг нөлөө үзүүлдэг тул эцэг эх, багш, олон нийтийн хамтын оролцоо чухлыг онцлов.</p>\r\n\r\n<p><img alt=\"👉\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Түүнчлэн 14 наснаас эрүүгийн хариуцлага хүлээлгэдэг гэмт хэрэг, урьдчилан сэргийлэх арга замын талаар танилцуулж, асуудал гарсан үед мэргэжлийн байгууллагад хандахыг зөвлөв.</p>\r\n\r\n<p>Дээрэлхлийг зогсооход хүүхэд, эцэг эх, багш нарын хамтын ажиллагаа нэн чухал бөгөөд эцэг эхчүүдийн идэвх санаачилгатай оролцоог уриалан хүсэж байна.</p>\r\n', '2025-10-02 00:00:00', 'http://college.web//images/uploads/554782510_1396191649180843_584740020702919659_n.jpg', 'post', '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_cate`
--

DROP TABLE IF EXISTS `post_cate`;
CREATE TABLE IF NOT EXISTS `post_cate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `cate_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_cate`
--

INSERT INTO `post_cate` (`id`, `post_id`, `cate_id`) VALUES
(35, 2, 2),
(36, 3, 2),
(39, 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
CREATE TABLE IF NOT EXISTS `visits` (
  `ognoo` date NOT NULL,
  `too` int NOT NULL,
  PRIMARY KEY (`ognoo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
