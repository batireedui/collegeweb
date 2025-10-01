-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2025 at 11:11 AM
-- Server version: 5.7.44
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lekeowlo_credit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintax`
--

CREATE TABLE `admintax` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `tuluv` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `name`, `email`, `phone`, `pass`, `role`, `tuluv`) VALUES
(6, 'Цэдэн-Иш Мөнхдорж', 'munkhdorj.khancredit@gmail.com', '94102676', '$2y$08$H1msEwMngWOaUbolx5n9YO8kCnLzzFuTcTiAQBvpyYZKIhLzcYCtG', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tai` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `tuluv` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `design` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `val` varchar(3) DEFAULT NULL,
  `curr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ognoo` datetime NOT NULL,
  `unsh` datetime DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `turul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `image`, `name`, `name_en`, `url`, `turul`) VALUES
(1, '', 'Зээлийн хүү хэд вэ?', '', 'Зээлийн хүү нь таны зээлийн төрөл, хугацаа, зээлийн нөхцлөөс хамааран харилцан адилгүй бөгөөд сар бүрийн болон жилийн хүүгийн хувь өөр байдаг.', 1),
(2, '', 'Зээл авахад ямар материал бүрдүүлэх шаардлагатай вэ?', '', 'Иргэний үнэмлэх, орлогыг нотлох баримт, зээлийн хүсэлт болон шаардлагатай бол барьцааны баримт бичиг шаардлагатай.', 1),
(3, '', 'Зээлийн хариу хэд хоногт гарах вэ?', '', 'Зээлийн төрлөөс хамааран 1-3 хоногийн дотор гардаг бөгөөд зарим тохиолдолд шуурхай зээлүүд хэдхэн цагийн дотор шийдэгддэг.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE `loginlog` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `hezee` datetime NOT NULL,
  `device` text COLLATE utf8_unicode_ci NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(256, 6, '2025-04-13 12:20:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '103.79.156.111');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `name`, `name_en`, `address`, `address_en`, `email`, `phone`, `facebook`, `youtube`, `meta`) VALUES
(1, '\"Хаан кредит\" ББСБ', 'Khan Credit', 'Өвөрхангай аймаг, Арвайхээр сум, 13-р баг, Т.Намнансүрэн 3-р гудамж Богд зочид буудал 1 давхарт', 'Ulaanbaatar', 'khaancredit@gmail.com', '94102676, 89079000, 77217777', 'https://www.facebook.com/khaankredit.bbsbuv', '', 'Хаан кредит, ББСБ, Банк бус санхүүгийн байгууллага');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tai` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `erembe` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `turul` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tuluv` int(11) NOT NULL,
  `icon` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `slug`, `name`, `name_en`, `tai`, `meta`, `erembe`, `parent_id`, `turul`, `tuluv`, `icon`) VALUES
(6, 'nuur', 'НҮҮР', 'HOME', '.', '/', 1, 0, 'link', 1, NULL),
(1, 'v8AGH9cGjR9sTDu4Vc', 'БИДНИЙ ТУХАЙ', 'About me', '.', '2', 2, 0, 'post', 1, ''),
(2, 'J4JANf7WbVSs3Qop9s', 'ЗЭЭЛИЙН БҮТЭЭГДЭХҮҮН', 'LOAN PRODUCTS', '.', '0', 3, 0, 'submenu', 1, ''),
(13, 'H7afU8FkCMQPTygRWD', 'ХОЛБОО БАРИХ', 'Contact', '.', '3', 5, 0, 'post', 1, ''),
(75, 'zsUPJdCgmae4hiyfZC', 'Автомашин барьцаалсан зээл ', 'Автомашин барьцаалсан зээл ', 'Автомашин барьцаалсан зээл ', '1', 1, 2, 'post', 1, ''),
(76, 'qwLfe3QJPMQuHBCulP', 'Автомашин лизинг', 'Автомашин лизинг', 'Автомашин лизинг', '#', 2, 2, 'link', 1, ''),
(77, 'NgB9SUBEqGtlZOBIOx', 'Үл хөдлөх хөрөнгө барьцаалсан зээл', 'Үл хөдлөх хөрөнгө барьцаалсан зээл', 'Үл хөдлөх хөрөнгө барьцаалсан зээл', '4', 4, 2, 'post', 1, ''),
(78, 'xed2QedxlW7VvZLB0P', 'Бизнесийн зээл', 'Бизнесийн зээл', 'Бизнесийн зээл', '5', 5, 2, 'post', 1, ''),
(79, 'qVUmdzxdup9lP7Ds34', 'Цалингийн зээл', 'Цалингийн зээл', 'Цалингийн зээл', '8', 6, 2, 'post', 1, ''),
(86, 'ecUN84BErgQYIIwO0z', 'Малчны зээл', 'Малчны зээл', 'Малчны зээл', '11', 10, 2, 'post', 1, ''),
(81, 'xwhv7H9ZHiamj4MZSz', 'Үнэт эдлэл барьцаалсан зээл', 'Үнэт эдлэл барьцаалсан зээл', 'Үнэт эдлэл барьцаалсан зээл', '9', 7, 2, 'post', 1, ''),
(82, 'RRp3LLIAOkt2amY5PJ', 'Гэрээ барьцаалсан зээл', 'Гэрээ барьцаалсан зээл', 'Гэрээ барьцаалсан зээл', '10', 8, 2, 'post', 1, ''),
(83, 'vNoT78EmiACQ0rOxo6', 'МЭДЭЭЛЭЛ', 'news', 'Мэдээлэл', '0', 4, 0, 'category', 1, ''),
(84, '7d3Ucv65N6u7qULuD3', 'Хэрэглээний лизингийн зээл', 'Хэрэглээний лизингийн зээл', 'Хэрэглээний лизингийн зээл', '6', 9, 2, 'post', 1, ''),
(85, 'RJlGTGuVPuPrcDW6kn', 'Ачааны автомашины лизингийн зээл', 'Ачааны автомашины лизингийн зээл', 'Ачааны автомашины лизингийн зээл', '7', 3, 2, 'post', 1, ''),
(87, 'mwJP2jTrkzOQBWEwg4', 'Зорилтот Итгэлцэл', 'Зорилтот Итгэлцэл', 'Зорилтот Итгэлцэл', '#', 11, 2, 'link', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_cate`
--

CREATE TABLE `menu_cate` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_cate`
--

INSERT INTO `menu_cate` (`id`, `menu_id`, `cate_id`) VALUES
(106, 83, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8mb4_unicode_ci,
  `ognoo` datetime NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `turul` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `tuluv` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `name`, `name_en`, `body`, `body_en`, `ognoo`, `image`, `turul`, `icon`, `userid`, `tuluv`) VALUES
(1, '6zD1JXKn9u78H5CnuV', 'Автомашин барьцаалсан зээл', 'Автомашин барьцаалсан зээл', '\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү: 3-3,8%</li>\r\n	<li>Хугацаа: 36</li>\r\n	<li>Хэмжээ: 120сая</li>\r\n	<li>Үйлчилгээний шимтгэл: 0</li>\r\n	<li>Жолоочийн хариуцлага, тээврийн хэрэгслийн даатгал хийнэ</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span>​​​​​​​</span></big></strong></p>\r\n\r\n<ul>\r\n	<li>10 жилээс доош хугацаанд Монгол улсад явсан</li>\r\n	<li>Зээл хүсэгчийн өөрийн эзэмшлийнх байх</li>\r\n	<li>Тухайн орон нутагт тогтвортой оршин суугч байх</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span>​​​​​​​</p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>Тээврий хэрэгсэлийн гэрчилгээ, татварын гэрчилгээ</li>\r\n</ul>\r\n<script data-ts=\"1742993118820\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-02-17 00:00:00', 'https://khancredit.mn//images/uploads/blog-1.png', 'post', '', 6, 1),
(2, 'KySNtDOxgLOTsW1JhG', 'Бидний тухай', 'Бидний тухай', '\r\n<p>Хаан кредит ББСБ нь 2015 онд байгуулагдсанаас хойш санхүүгийн салбарыг хөгжилд хувь нэмрээ оруулан, Санхүүгийн зохицуулах хорооны 2015 оны 5 дугаар сарын 20 өдрийн 247 дугаар тогтоолоор Банк бус санхүүгийн үйл ажиллагаа эрхлэх тусгай зөвшөөрлийн гэрчилгээ авсан.</p>\r\n\r\n<p>Санхүүгийн зохуцуулах хорооны шалуур үзүүлэлтүүдийг улирал бүр ханган ажиллаж байна. Тус байгууллага нь одоогоор гүйцэтгэх захирал, зээлийн ахлах менежер, санхүүгийн менежер, зээлийн ажилтан нийт 4 хүний бүрэлдэхүүнтэйгээр үйл ажиллагаа явуулж байна.</p>\r\n\r\n<p><br>\r\nХаан кредит ББСБ нь орон нутагт санхүүгийн хүртээмжийг нэмэгдүүлэн, харилцагч бүрийн онцлогт тохирсон шинэ төрлийн үйлчилгээг нэвтрүүлж ажиллахдаа цэвэр өөрийн хрөнгөөр үйл ажиллагаагаа явуулж, үйл ажиллагааны зохистой харьцааны шалгуур үзүүлэлтүүдийг байнга ханган ажиллаж байна.</p>\r\n\r\n<p><strong>Үнэт зүйл</strong></p>\r\n\r\n<ul>\r\n	<li><em>Чадварлаг баг хамт олон</em></li>\r\n	<li><em>Итгэлт суурилсан шилдэг үйлчилгээ</em></li>\r\n</ul>\r\n\r\n<p><strong>Эрхэм зорилго</strong>&nbsp;</p>\r\n\r\n<p>Санхүүгийн зах зээлийн хөгжилд хувь нэмэр оруулж, санхүүгийн цогц үйлчилгээ мэргэжлийн түвшинд шуурхай хүргэдэг, хялбар хөрөнгө оруулагч, нэр хүндтэй, найдвартай, тэргүүлэгч санхүүгийн байгууллага байх.&nbsp;</p>\r\n\r\n<p><strong>Зорилго</strong></p>\r\n\r\n<p>Орон нутгийн онцлогт нийцсэн санхүүгийн үйлчилгээг хүргэж, тогтвортой үйл ажиллагаа явуулан, зах зээл дээр бий болж болзошгүй эрсдэлээс урьдчилан сэргийлж, байгууллагын үр ашгийг нэмэгдүүлэх&nbsp;</p>\r\n\r\n<p><strong>Уриа&nbsp;</strong></p>\r\n\r\n<p><strong>​​​​​​​</strong>ХАМТДАА ХӨГЖЬЕ<br>\r\n&nbsp;</p>\r\n<script data-ts=\"1742981683023\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-02-17 00:00:00', '', 'post', '', 6, 1),
(3, 'J5wFC2BEvyJL4cc1zb', 'МАНАЙ БАЙРШИЛ', 'МАНАЙ БАЙРШИЛ', '\n<iframe allowfullscreen=\"\" height=\"450\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" sandbox=\"allow-scripts allow-same-origin allow-popups\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2436.011125606131!2d102.7867400835662!3d46.26552947464558!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5d83652c57345225%3A0x14529259858de2df!2z0JHQntCT0JQg0JfQntCn0JjQlCDQkdCj0KPQlNCQ0Js!5e1!3m2!1smn!2smn!4v1742991433670!5m2!1smn!2smn\" style=\"border:0;\" width=\"100%\"></iframe>\n', '', '2025-03-26 00:00:00', '', 'post', '', 6, 1),
(4, 'UI8vpYScUHxYhrkiA5', 'Үл хөдлөх хөрөнгө барьцаалсан зээл ', 'Үл хөдлөх хөрөнгө барьцаалсан зээл ', '\r\n<p><span style=\"font-size:20px\"><strong>Хашаа байшин, орон сууц, хувийн сууц, эзэмших болон өмчлөх газар</strong></span></p>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү:2,5-3,8%</li>\r\n	<li>Хугацаа:36</li>\r\n	<li>Хэмжээ:250 сая</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span></span></big></strong></p>\r\n\r\n<ul>\r\n	<li>Барьцаалж буй хөрөнгө нь зээл хүсэгчийн өөрийн эзэмшлийнх байх</li>\r\n	<li>Тухайн орон нутагт тогтвортой оршин суугч байх</li>\r\n	<li>Бусдад хугацаа хэтэрсэн өр төлбөргүй байх</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>Барьцаанд тавигдах хөрөнгийн бичиг баримтууд /ҮХЭХУБн гэрчилгээтэй байх</li>\r\n	<li>Газар өмчлөх эрхийн улсын бүртгэлд бүртгүүлж, баталгаажуулсан өмчлөх эрхийн гэрчилгээтэй</li>\r\n	<li>Зээл төлөх орлогыг баталгаажуулах баримтууд</li>\r\n</ul>\r\n<script data-ts=\"1742994349876\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', 'https://khancredit.mn//images/uploads/blog-2.png', 'post', '', 6, 1),
(5, 'TtCc5LmRQ2hRnmh8S5', 'Бизнесийн зээл', 'Бизнесийн зээл', '\r\n<p>Иргэн, аж ахуй нэгжүүдэд бизнесийн зээл олгож байна.</p>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү: 1-4%</li>\r\n	<li>Хугацаа: 36</li>\r\n	<li>Хэмжээ: 400 сая</li>\r\n	<li>Үйлчилгээний шимтгэл-1%</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span></span></big></strong></p>\r\n\r\n<ul>\r\n	<li>Тухайн орон нутагт тогтвортой оршин суугч байх</li>\r\n	<li>Зээлийг төлөх санхүүгийн чадвартай байх</li>\r\n	<li>Бусдад хугацаа хэтэрсэн өр төлбөргүй байх</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБ-ын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБ-ын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>Барьцаанд тавигдах хөрөнгийн бичиг баримтууд</li>\r\n	<li>Бизнес эрхлэх зөвшөөрлийн бичиг баримтууд</li>\r\n</ul>\r\n<script data-ts=\"1742994061108\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', 'https://khancredit.mn//images/uploads/blog-4.png', 'post', '', 6, 1),
(6, 'ADT61juW80KYeEMxtY', 'Хэрэглээний лизингийн зээл', 'Хэрэглээний лизингийн зээл', '\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү: 2,9%</li>\r\n	<li>Хугацаа: 24</li>\r\n	<li>Урьдчилгаа: 20%</li>\r\n	<li>Хэмжээ: 8 сая хүртэл</li>\r\n	<li>Үйлчилгээний шимтгэл-1%</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span></span></big></strong></p>\r\n\r\n<ul>\r\n	<li>Бизнесийн үйл ажиллагааны болон цалин, хөдөлмөрийн хөлсний тогтмол орлоготой орлого баталгаажуулах бичиг баримтууд, дансны хуулга</li>\r\n	<li>Зээлийг төлөх санхүүгийн чадвартай байх</li>\r\n	<li>Бусдад хугацаа хэтэрсэн өр төлбөргүй байх</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>Орлого баталгаажуулах бичиг баримтууд, дансны хуулга</li>\r\n	<li>Барьцаанд тавигдах хөрөнгийн бичиг баримтууд</li>\r\n</ul>\r\n<script data-ts=\"1742994199333\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', 'https://khancredit.mn//images/uploads/blog-3.png', 'post', '', 6, 1),
(7, 'oM2Hdx8bTpZEChL1V0', 'Ачааны автомашины лизингийн зээл', 'Ачааны автомашины лизингийн зээл', '\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү: 1,8-3,2%</li>\r\n	<li>Хугацаа: 36</li>\r\n	<li>Хэмжээ: 400 сая</li>\r\n	<li>Үйлчилгээний шимтгэл: 0%</li>\r\n	<li>Жолоочийн хариуцлага, тээврийн хэрэгслийн даатгал хийнэ</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span></span></big></strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Гаалийн мэдүүлэг</li>\r\n	<li>&nbsp;Урьдчилгаа 4050% ба түүнээс дээш</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>Тээврий хэрэгсэлийн гэрчилгээ, татварын гэрчилгээ</li>\r\n	<li>Орлого тодорхойлох бичиг баримтууд (дансны хуулга, түрээсийн гэрээ, холбогдох гэрээ, хар дэвтэр)</li>\r\n	<li>Барьцаа хөрөнгийн гэрчилгээ, гаалийн бичиг баримт, худалдах, худалдан авах гэрээ</li>\r\n	<li>Худалдан авч буй автомашин (Шаардлагатай тохиолдолд нэмэлт барьцаа)</li>\r\n</ul>\r\n<script data-ts=\"1742996417716\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', '', 'post', '', 6, 1),
(8, '8PJtQPv2m2liHMXU3K', 'Цалингийн зээл', 'Цалингийн зээл', '\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү: 1,3-4,5%</li>\r\n	<li>Хугацаа: 36</li>\r\n	<li>Хэмжээ: 10,000,000</li>\r\n	<li>Үйлчилгээний шимтгэл: 0%</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span></span></big></strong></p>\r\n\r\n<ul>\r\n	<li>НДШийн лавлагаа</li>\r\n	<li>Бусдад хугацаа хэтэрсэн өр төлбөргүй байх</li>\r\n	<li>Тухайн орон нутагт тогтвортой оршин суугч байх</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБ-ын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБ-ын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>НДШ-ийн лавлагаа</li>\r\n</ul>\r\n<script data-ts=\"1742996343564\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', '', 'post', '', 6, 1),
(9, '7TFtlxk60TAgvs2mnQ', 'Үнэт эдлэл барьцаалсан зээл', 'Үнэт эдлэл барьцаалсан зээл', '\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү:4%</li>\r\n	<li>Хугацаа: 24</li>\r\n	<li>Хэмжээ: 5,000,000</li>\r\n	<li>Үйлчилгээний шимтгэл: 2%\r\n	<ul>\r\n		<li>Зээл олголтын шимтгэл /харилцагчаас/-1%</li>\r\n		<li>Үйлчилгээний шимтгэл /бэлтгэн нийлүүлэгчээс/-1%</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span></span></big></strong></p>\r\n\r\n<ul>\r\n	<li>Бизнесийн үйл ажиллагааны болон цалин, хөдөлмөрийн хөлсний тогтмол орлоготой</li>\r\n	<li>Бусдад хугацаа хэтэрсэн өр төлбөргүй байх</li>\r\n	<li>Тухайн орон нутагт тогтвортой оршин суугч байх</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>Зээлийг төлөх санхүүгийн чадвартай байх</li>\r\n	<li>Бусдад хугацаа хэтэрсэн өр төлбөргүй байх</li>\r\n</ul>\r\n<script data-ts=\"1742996602500\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', '', 'post', '', 6, 1),
(10, 'Nbr6YCTzoeBw4OlYt4', 'Гэрээ барьцаалсан зээл', 'Гэрээ барьцаалсан зээл', '\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү: 3-4%</li>\r\n	<li>Хугацаа: 12 хүртэл сар буюу гэрээний хугацаанаас хэтрэхгүй</li>\r\n	<li>Хэмжээ: -</li>\r\n	<li>Үйлчилгээний шимтгэл: 1%</li>\r\n</ul>\r\n\r\n<p>​​​​​​​<span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n	<li>Ажил гүйцэтгэх гэрээ/эх хувиараа/</li>\r\n	<li>Орлого баталгаажуулах бичиг баримтууд, дансны хуулга</li>\r\n</ul>\r\n<script data-ts=\"1742996757852\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', '', 'post', '', 6, 1),
(11, '0ZuNILL6uLxflaLoxy', 'Малчны зээл', 'Малчны зээл', '\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Зээлийн нөхцөл</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Хүү: 4%</li>\r\n	<li>Хугацаа: 12</li>\r\n	<li>Хэмжээ: 5,000,000</li>\r\n	<li>Үйлчилгээний шимтгэл: 0%</li>\r\n</ul>\r\n\r\n<p><strong><big><span style=\"font-size:24px\"><span style=\"color:#000033\">Тавигдах шаардлага</span></span></big></strong></p>\r\n\r\n<ul>\r\n	<li>А данс</li>\r\n	<li>Бусдад хугацаа хэтэрсэн өр төлбөргүй байх</li>\r\n	<li>Тухайн орон нутагт тогтвортой оршин суугч байх</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000033\"><strong><big><span style=\"font-size:24px\">Бүрдүүлэх бичиг барим</span></big></strong></span></p>\r\n\r\n<ul>\r\n	<li>Харилцагчийн анкет /ББСБын маягтын дагуу/</li>\r\n	<li>Зээл авахыг хүссэн өргөдөл /ББСБын маягтын дагуу/</li>\r\n	<li>Иргэний үнэмлэх</li>\r\n</ul>\r\n<script data-ts=\"1742997063780\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-03-26 00:00:00', '', 'post', '', 6, 1),
(12, 'lEjeUOo5ipcsocqcP1', 'ХААН КРЕДИТ \'\'ББСБ\'\' нь бүх төрлийн зээлийг хурдан шуурхай олгож байна', 'ХААН КРЕДИТ \'\'ББСБ\'\' нь бүх төрлийн зээлийг хурдан шуурхай олгож байна', '\r\n<p>* Цалингийн зээл</p>\r\n\r\n<p>* Автомашин барьцаалсан зээл</p>\r\n\r\n<p>* Үл хөдлөх хөрөнгө барьцаалсан зээл</p>\r\n\r\n<p>* Лизингийн зээл /Автомашин, гар утас, Үнэт эдлэл /</p>\r\n\r\n<p>* Бизнесийн зээл</p>\r\n\r\n<p>* Гэрээ барьцаалсан зээл</p>\r\n\r\n<p>Хаяг: Өвөрхангай аймаг, Арвайхээр сум, 13-р баг БОГД зочид буудал 1 давхарт УТАС: 94102676, 89079000</p>\r\n<script data-ts=\"1743083048614\" src=\"//cdn.flmngr.com/widgets.js?apiKey=zAo7V85b\"></script>\r\n', '', '2025-01-30 00:00:00', 'https://khancredit.mn//images/uploads/471552304_1856893021733131_7816550666730341308_n.jpg', 'post', '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_cate`
--

CREATE TABLE `post_cate` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_cate`
--

INSERT INTO `post_cate` (`id`, `post_id`, `cate_id`) VALUES
(22, 1, 3),
(9, 2, 2),
(21, 3, 2),
(27, 4, 3),
(25, 5, 3),
(26, 6, 3),
(30, 7, 3),
(29, 8, 3),
(31, 9, 3),
(32, 10, 3),
(33, 11, 3),
(34, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `ognoo` date NOT NULL,
  `too` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`ognoo`, `too`) VALUES
('2025-02-15', 1),
('2025-02-16', 1),
('2025-02-17', 17),
('2025-02-18', 20),
('2025-02-19', 32),
('2025-02-20', 27),
('2025-02-21', 22),
('2025-02-22', 94),
('2025-02-23', 33),
('2025-02-24', 12),
('2025-02-25', 223),
('2025-02-26', 23),
('2025-02-27', 4),
('2025-02-28', 16),
('2025-03-01', 11),
('2025-03-02', 8),
('2025-03-03', 8),
('2025-03-04', 29),
('2025-03-05', 7),
('2025-03-06', 5),
('2025-03-07', 5),
('2025-03-08', 12),
('2025-03-09', 10),
('2025-03-10', 26),
('2025-03-11', 23),
('2025-03-12', 14),
('2025-03-13', 16),
('2025-03-14', 28),
('2025-03-15', 18),
('2025-03-16', 10),
('2025-03-17', 7),
('2025-03-18', 3),
('2025-03-19', 8),
('2025-03-20', 10),
('2025-03-21', 11),
('2025-03-22', 6),
('2025-03-23', 8),
('2025-03-24', 15),
('2025-03-25', 12),
('2025-03-26', 11),
('2025-03-27', 4),
('2025-03-28', 9),
('2025-03-29', 4),
('2025-03-30', 4),
('2025-03-31', 5),
('2025-04-01', 20),
('2025-04-02', 11),
('2025-04-03', 2),
('2025-04-04', 13),
('2025-04-05', 24),
('2025-04-06', 10),
('2025-04-07', 14),
('2025-04-08', 9),
('2025-04-09', 15),
('2025-04-10', 6),
('2025-04-11', 15),
('2025-04-12', 8),
('2025-04-13', 17),
('2025-04-14', 27),
('2025-04-15', 14),
('2025-04-16', 30),
('2025-04-17', 34),
('2025-04-18', 13),
('2025-04-19', 3),
('2025-04-20', 11),
('2025-04-21', 12),
('2025-04-22', 83),
('2025-04-23', 15),
('2025-04-24', 18),
('2025-04-25', 11),
('2025-04-26', 7),
('2025-04-27', 12),
('2025-04-28', 27),
('2025-04-29', 12),
('2025-04-30', 24),
('2025-05-01', 7),
('2025-05-02', 24),
('2025-05-03', 46),
('2025-05-04', 12),
('2025-05-05', 22),
('2025-05-06', 10),
('2025-05-07', 26),
('2025-05-08', 19),
('2025-05-09', 8),
('2025-05-10', 9),
('2025-05-11', 13),
('2025-05-12', 6),
('2025-05-13', 20),
('2025-05-14', 29),
('2025-05-15', 15),
('2025-05-16', 8),
('2025-05-17', 20),
('2025-05-18', 36),
('2025-05-19', 16),
('2025-05-20', 32),
('2025-05-21', 21),
('2025-05-22', 25),
('2025-05-23', 22),
('2025-05-24', 31),
('2025-05-25', 13),
('2025-05-26', 19),
('2025-05-27', 38),
('2025-05-28', 19),
('2025-05-29', 23),
('2025-05-30', 25),
('2025-05-31', 23),
('2025-06-01', 26),
('2025-06-02', 19),
('2025-06-03', 25),
('2025-06-04', 19),
('2025-06-05', 27),
('2025-06-06', 11),
('2025-06-07', 26),
('2025-06-08', 17),
('2025-06-09', 21),
('2025-06-10', 21),
('2025-06-11', 13),
('2025-06-12', 17),
('2025-06-13', 19),
('2025-06-14', 125),
('2025-06-15', 72),
('2025-06-16', 61),
('2025-06-17', 35),
('2025-06-18', 37),
('2025-06-19', 19),
('2025-06-20', 98),
('2025-06-21', 53),
('2025-06-22', 33),
('2025-06-23', 44),
('2025-06-24', 61),
('2025-06-25', 35),
('2025-06-26', 43),
('2025-06-27', 49),
('2025-06-28', 91),
('2025-06-29', 60),
('2025-06-30', 57),
('2025-07-01', 18),
('2025-07-02', 40),
('2025-07-03', 32),
('2025-07-04', 37),
('2025-07-05', 20),
('2025-07-06', 34),
('2025-07-07', 33),
('2025-07-08', 22),
('2025-07-09', 26),
('2025-07-10', 33),
('2025-07-11', 25),
('2025-07-12', 24),
('2025-07-13', 34),
('2025-07-14', 24),
('2025-07-15', 46),
('2025-07-16', 12),
('2025-07-17', 23),
('2025-07-18', 35),
('2025-07-19', 13),
('2025-07-20', 77),
('2025-07-21', 42),
('2025-07-22', 65),
('2025-07-23', 64),
('2025-07-24', 40),
('2025-07-25', 57),
('2025-07-26', 45),
('2025-07-27', 28),
('2025-07-28', 33),
('2025-07-29', 35),
('2025-07-30', 37),
('2025-07-31', 24),
('2025-08-01', 47),
('2025-08-02', 22),
('2025-08-03', 153),
('2025-08-04', 41),
('2025-08-05', 51),
('2025-08-06', 34),
('2025-08-07', 32),
('2025-08-08', 41),
('2025-08-09', 64),
('2025-08-10', 72),
('2025-08-11', 261),
('2025-08-12', 74),
('2025-08-13', 42),
('2025-08-14', 66),
('2025-08-15', 89),
('2025-08-16', 80),
('2025-08-17', 72),
('2025-08-18', 36),
('2025-08-19', 55),
('2025-08-20', 44),
('2025-08-21', 43),
('2025-08-22', 45),
('2025-08-23', 36),
('2025-08-24', 74),
('2025-08-25', 48),
('2025-08-26', 36),
('2025-08-27', 17),
('2025-08-28', 15),
('2025-08-29', 35),
('2025-08-30', 36),
('2025-08-31', 48),
('2025-09-01', 35),
('2025-09-02', 46),
('2025-09-03', 29),
('2025-09-04', 36),
('2025-09-05', 27),
('2025-09-06', 42),
('2025-09-07', 22),
('2025-09-08', 23),
('2025-09-09', 23),
('2025-09-10', 37),
('2025-09-11', 25),
('2025-09-12', 23),
('2025-09-13', 16),
('2025-09-14', 22),
('2025-09-15', 23),
('2025-09-16', 19),
('2025-09-17', 48),
('2025-09-18', 23),
('2025-09-19', 40),
('2025-09-20', 33),
('2025-09-21', 14),
('2025-09-22', 30),
('2025-09-23', 19),
('2025-09-24', 23),
('2025-09-25', 42),
('2025-09-26', 44),
('2025-09-27', 57),
('2025-09-28', 26),
('2025-09-29', 27),
('2025-09-30', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintax`
--
ALTER TABLE `admintax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `design`
--
ALTER TABLE `design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `menu_cate`
--
ALTER TABLE `menu_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `post_cate`
--
ALTER TABLE `post_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`ognoo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintax`
--
ALTER TABLE `admintax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `design`
--
ALTER TABLE `design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loginlog`
--
ALTER TABLE `loginlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `menu_cate`
--
ALTER TABLE `menu_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_cate`
--
ALTER TABLE `post_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
