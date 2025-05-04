-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2025 at 03:56 AM
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
-- Database: `duann171`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'May tinh', '2024-04-28 20:12:16', '2024-04-28 20:12:16'),
(3, 'Gia dung', '2024-04-28 20:12:23', '2024-04-28 20:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_donhangs`
--

DROP TABLE IF EXISTS `chitiet_donhangs`;
CREATE TABLE IF NOT EXISTS `chitiet_donhangs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `donhang_id` int NOT NULL,
  `sanpham_id` int NOT NULL,
  `soluong` int NOT NULL,
  `gia` int NOT NULL,
  `ghichu` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmucs`
--

DROP TABLE IF EXISTS `danhmucs`;
CREATE TABLE IF NOT EXISTS `danhmucs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmucs`
--

INSERT INTO `danhmucs` (`id`, `name`, `slug`, `parent_id`, `description`, `status`, `order`, `icon`, `created_at`, `updated_at`) VALUES
(14, 'BĂNG KEO CÁC LOẠI', 'bang-keo-cac-loai', 0, NULL, 'Active', '0', NULL, '2025-04-14 22:15:58', '2025-04-14 22:15:58'),
(15, 'BÚT VIẾT CÁC LOẠI', 'but-viet-cac-loai', 0, NULL, 'Active', '0', NULL, '2025-04-14 22:16:13', '2025-04-14 22:16:13'),
(16, 'SỔ-TẬP CÁC LOẠI', 'so-tap-cac-loai', 0, NULL, 'Active', '0', NULL, '2025-04-14 22:16:37', '2025-04-14 22:16:37'),
(13, 'NHU YẾU PHẨM', 'nhu-yeu-pham', 0, NULL, 'Active', '0', NULL, '2025-04-14 22:14:43', '2025-04-14 22:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `donhangs`
--

DROP TABLE IF EXISTS `donhangs`;
CREATE TABLE IF NOT EXISTS `donhangs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `tinh_id` int DEFAULT NULL,
  `huyen_id` int DEFAULT NULL,
  `xa_id` int DEFAULT NULL,
  `diachi` int DEFAULT NULL,
  `ghichu` int DEFAULT NULL,
  `giamgia` int DEFAULT NULL,
  `trangthai` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh_sanphams`
--

DROP TABLE IF EXISTS `hinhanh_sanphams`;
CREATE TABLE IF NOT EXISTS `hinhanh_sanphams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sanpham_id` int NOT NULL,
  `tenanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinhanh_sanphams`
--

INSERT INTO `hinhanh_sanphams` (`id`, `sanpham_id`, `tenanh`, `created_at`, `updated_at`) VALUES
(302, 977, 'upload/sanpham/0-1745164719.jpg', NULL, NULL),
(301, 978, 'upload/sanpham/0-1745164706.jpg', NULL, NULL),
(300, 982, 'upload/sanpham/0-1745164684.jpg', NULL, NULL),
(299, 983, 'upload/sanpham/0-1745164662.jpg', NULL, NULL),
(298, 980, 'upload/sanpham/0-1745164632.jpg', NULL, NULL),
(297, 981, 'upload/sanpham/0-1745164615.jpg', NULL, NULL),
(296, 989, 'upload/sanpham/0-1745164587.jpg', NULL, NULL),
(295, 984, 'upload/sanpham/0-1745164564.jpg', NULL, NULL),
(294, 988, 'upload/sanpham/0-1745164541.jpg', NULL, NULL),
(293, 993, 'upload/sanpham/0-1745164502.jpg', NULL, NULL),
(292, 994, 'upload/sanpham/0-1745164485.jpg', NULL, NULL),
(291, 991, 'upload/sanpham/0-1745164433.jpg', NULL, NULL),
(290, 992, 'upload/sanpham/0-1745164394.jpg', NULL, NULL),
(289, 990, 'upload/sanpham/0-1745164360.jpg', NULL, NULL),
(288, 979, 'upload/sanpham/0-1745164326.jpg', NULL, NULL),
(287, 1027, 'upload/sanpham/0-1745164274.jpg', NULL, NULL),
(286, 1030, 'upload/sanpham/0-1745163799.jpg', NULL, NULL),
(285, 1028, 'upload/sanpham/0-1745163784.jpg', NULL, NULL),
(284, 1029, 'upload/sanpham/0-1745163758.jpg', NULL, NULL),
(283, 1009, 'upload/sanpham/0-1745163716.jpg', NULL, NULL),
(282, 1031, 'upload/sanpham/0-1745163689.jpg', NULL, NULL),
(281, 1032, 'upload/sanpham/0-1745163650.jpg', NULL, NULL),
(280, 1033, 'upload/sanpham/0-1745163612.jpg', NULL, NULL),
(279, 1034, 'upload/sanpham/0-1745163573.jpg', NULL, NULL),
(278, 1002, 'upload/sanpham/0-1745163489.jpg', NULL, NULL),
(277, 1003, 'upload/sanpham/0-1745163468.jpg', NULL, NULL),
(276, 1004, 'upload/sanpham/0-1745163433.jpg', NULL, NULL),
(275, 1001, 'upload/sanpham/0-1745163355.jpg', NULL, NULL),
(274, 1024, 'upload/sanpham/1-1745163303.jpg', NULL, NULL),
(273, 1024, 'upload/sanpham/0-1745163303.jpg', NULL, NULL),
(272, 1025, 'upload/sanpham/0-1745163254.jpg', NULL, NULL),
(271, 1035, 'upload/sanpham/0-1745163160.jpg', NULL, NULL),
(270, 985, 'upload/sanpham/0-1745163087.jpg', NULL, NULL),
(269, 986, 'upload/sanpham/0-1745163059.jpg', NULL, NULL),
(268, 987, 'upload/sanpham/0-1745163023.jpg', NULL, NULL),
(267, 1000, 'upload/sanpham/0-1745162899.jpg', NULL, NULL),
(265, 998, 'upload/sanpham/0-1745162814.jpg', NULL, NULL),
(266, 995, 'upload/sanpham/0-1745162862.jpg', NULL, NULL),
(264, 1036, 'upload/sanpham/0-1745162735.jpg', NULL, NULL),
(262, 999, 'upload/sanpham/0-1745162633.jpg', NULL, NULL),
(263, 996, 'upload/sanpham/0-1745162672.jpg', NULL, NULL),
(261, 997, 'upload/sanpham/0-1745162431.jpg', NULL, NULL),
(259, 1020, 'upload/sanpham/0-1745162293.jpg', NULL, NULL),
(260, 1021, 'upload/sanpham/0-1745162334.jpg', NULL, NULL),
(258, 1008, 'upload/sanpham/0-1745162142.jpg', NULL, NULL),
(257, 1007, 'upload/sanpham/0-1745161925.jpg', NULL, NULL),
(256, 1006, 'upload/sanpham/0-1745161887.jpg', NULL, NULL),
(254, 1005, 'upload/sanpham/0-1745161841.jpg', NULL, NULL),
(255, 1005, 'upload/sanpham/1-1745161841.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_29_021314_create_products_table', 1),
(6, '2024_04_29_021430_create_categories_table', 1),
(7, '2024_04_30_090340_create_orders_table', 2),
(8, '2025_04_10_092428_create_danhmucs_table', 3),
(9, '2025_04_10_103138_create_thuonghieus_table', 4),
(10, '2025_04_10_123305_create_sanphams_table', 5),
(11, '2025_04_13_162815_create_hinhanh_sanphams_table', 6),
(12, '2025_04_21_022150_create_donhangs_table', 7),
(13, '2025_04_21_023145_create_chitiet_donhangs_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment_method` enum('cash_on_delivery','bank_transfer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `status`, `grand_total`, `item_count`, `is_paid`, `payment_method`, `notes`, `created_at`, `updated_at`) VALUES
(1, '1111111', 2, 'completed', 90.00, 20, 1, 'bank_transfer', 'Khong', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(2, '2222211111', 16, 'completed', 38.00, 32, 0, 'bank_transfer', 'NO no', '2024-04-19 09:09:33', '2024-04-26 09:09:33'),
(3, 'ORD001', 1, 'pending', 100.00, 2, 0, 'cash_on_delivery', 'Order placed by user 1', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(4, 'ORD002', 2, 'processing', 150.00, 3, 1, 'bank_transfer', 'Order placed by user 2', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(5, 'ORD003', 3, 'completed', 200.00, 4, 1, 'cash_on_delivery', 'Order placed by user 3', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(6, 'ORD004', 4, 'decline', 50.00, 1, 0, 'bank_transfer', 'Order placed by user 4', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(7, 'ORD005', 5, 'pending', 120.00, 2, 1, 'cash_on_delivery', 'Order placed by user 5', '2024-04-02 09:16:16', '2024-04-30 09:16:16'),
(8, 'ORD006', 6, 'processing', 180.00, 3, 0, 'bank_transfer', 'Order placed by user 6', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(9, 'ORD007', 7, 'completed', 220.00, 4, 1, 'cash_on_delivery', 'Order placed by user 7', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(10, 'ORD008', 8, 'decline', 70.00, 1, 1, 'bank_transfer', 'Order placed by user 8', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(11, 'ORD009', 9, 'pending', 130.00, 2, 0, 'cash_on_delivery', 'Order placed by user 9', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(12, 'ORD010', 10, 'processing', 250.00, 3, 1, 'bank_transfer', 'Order placed by user 10', '2024-04-14 09:16:16', '2024-04-30 09:16:16'),
(13, 'ORD011', 11, 'completed', 180.00, 4, 0, 'cash_on_delivery', 'Order placed by user 11', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(14, 'ORD012', 12, 'pending', 90.00, 1, 1, 'bank_transfer', 'Order placed by user 12', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(15, 'ORD013', 13, 'processing', 130.00, 2, 0, 'cash_on_delivery', 'Order placed by user 13', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(16, 'ORD014', 14, 'completed', 300.00, 5, 1, 'bank_transfer', 'Order placed by user 14', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(17, 'ORD015', 15, 'decline', 70.00, 1, 1, 'cash_on_delivery', 'Order placed by user 15', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(18, 'ORD0012', 2, 'processing', 150.00, 3, 1, 'bank_transfer', 'Order placed by user 2', '2024-04-11 09:16:16', '2024-04-30 09:16:16'),
(19, 'ORD0103', 3, 'completed', 200.00, 4, 1, 'cash_on_delivery', 'Order placed by user 3', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(20, 'OR1D004', 4, 'decline', 50.00, 1, 0, 'bank_transfer', 'Order placed by user 4', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(21, 'ORD1005', 5, 'pending', 120.00, 2, 1, 'cash_on_delivery', 'Order placed by user 5', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(22, 'ORD0106', 6, 'processing', 180.00, 3, 0, 'bank_transfer', 'Order placed by user 6', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(23, 'ORD0107', 7, 'completed', 220.00, 4, 1, 'cash_on_delivery', 'Order placed by user 7', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(24, 'ORD0108', 8, 'decline', 70.00, 1, 1, 'bank_transfer', 'Order placed by user 8', '2024-04-01 09:16:16', '2024-04-30 09:16:16'),
(25, 'ORD0109', 9, 'pending', 130.00, 2, 0, 'cash_on_delivery', 'Order placed by user 9', '2024-02-07 09:16:16', '2024-04-30 09:16:16'),
(26, 'ORD1010', 10, 'processing', 250.00, 3, 1, 'bank_transfer', 'Order placed by user 10', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(27, 'ORD1011', 11, 'completed', 180.00, 4, 0, 'cash_on_delivery', 'Order placed by user 11', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(28, 'ORD1012', 12, 'pending', 90.00, 1, 1, 'bank_transfer', 'Order placed by user 12', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(29, 'ORD1013', 13, 'processing', 130.00, 2, 0, 'cash_on_delivery', 'Order placed by user 13', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(30, 'ORD0114', 14, 'completed', 300.00, 5, 1, 'bank_transfer', 'Order placed by user 14', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(31, 'ORD0115', 15, 'decline', 70.00, 1, 1, 'cash_on_delivery', 'Order placed by user 15', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(32, 'ORD2100', 10, 'pending', 300.00, 5, 1, 'cash_on_delivery', 'Order placed by user 10', '2024-04-30 09:16:16', '2024-04-30 09:16:16'),
(33, 'ORD201', 201, 'pending', 120.00, 2, 1, 'cash_on_delivery', 'Order placed by user 201', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(34, 'ORD202', 202, 'processing', 180.00, 3, 0, 'bank_transfer', 'Order placed by user 202', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(35, 'ORD203', 203, 'completed', 220.00, 4, 1, 'cash_on_delivery', 'Order placed by user 203', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(36, 'ORD204', 204, 'decline', 70.00, 1, 1, 'bank_transfer', 'Order placed by user 204', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(37, 'ORD205', 205, 'pending', 130.00, 2, 0, 'cash_on_delivery', 'Order placed by user 205', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(38, 'ORD206', 206, 'processing', 250.00, 3, 1, 'bank_transfer', 'Order placed by user 206', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(39, 'ORD207', 207, 'completed', 180.00, 4, 0, 'cash_on_delivery', 'Order placed by user 207', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(40, 'ORD208', 208, 'pending', 90.00, 1, 1, 'bank_transfer', 'Order placed by user 208', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(41, 'ORD209', 209, 'processing', 130.00, 2, 0, 'cash_on_delivery', 'Order placed by user 209', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(42, 'ORD210', 210, 'completed', 300.00, 5, 1, 'bank_transfer', 'Order placed by user 210', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(43, 'ORD211', 211, 'pending', 140.00, 2, 1, 'cash_on_delivery', 'Order placed by user 211', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(44, 'ORD212', 212, 'processing', 160.00, 3, 0, 'bank_transfer', 'Order placed by user 212', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(45, 'ORD213', 213, 'completed', 240.00, 4, 1, 'cash_on_delivery', 'Order placed by user 213', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(46, 'ORD214', 214, 'decline', 60.00, 1, 1, 'bank_transfer', 'Order placed by user 214', '2024-04-30 12:51:51', '2024-04-30 12:51:51'),
(47, 'ORD215', 215, 'pending', 110.00, 2, 0, 'cash_on_delivery', 'Order placed by user 215', '2024-04-30 12:51:51', '2024-04-30 12:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item_code`, `productname`, `category`, `price`, `created_at`, `updated_at`) VALUES
(2, 'SP0022332', 'Sản phẩm Máy tính bàn Dell', 'Gia dung', '4000000', '2024-04-28 20:15:16', '2024-04-28 20:15:24'),
(3, 'SP00003', 'Sản phẩm 3', 'May tinh', '34', '2024-04-29 02:51:44', '2024-04-29 02:51:44'),
(4, 'SKU200002', 'May in laser HP1001', 'Gia dung', '1000', NULL, NULL),
(5, 'SKU200002', 'May in laser HP12222', 'Gia dung', '1000', NULL, NULL),
(6, 'SKU200003', 'May in laser LG12345', 'Gia dung', '1000', NULL, NULL),
(7, 'SKU200004', 'Mays giat SamSSungHP1001', 'Gia dung', '1000', NULL, NULL),
(8, 'SKU200005', 'Dien thoai HP1001', 'Gia dung', '1000', NULL, NULL),
(9, 'SKU200006', 'May quet LM1001', 'Gia dung', '1000', NULL, NULL),
(10, 'SKU200007', 'Camera T2000', 'Gia dung', '1000', NULL, NULL),
(11, 'SKU200009', 'Nước đóng chai 500ml', 'Gia dung', '10000', NULL, NULL),
(12, 'SKU200112', 'Xe máy điện Vin', 'Gia dung', '1000000', NULL, NULL),
(13, 'P001', 'Widget A', 'Tools', '19.99', NULL, NULL),
(14, 'P002', 'Widget B', 'Tools', '24.99', NULL, NULL),
(15, 'P003', 'Gadget A', 'Gadgets', '29.99', NULL, NULL),
(16, 'P004', 'Gadget B', 'Gadgets', '34.99', NULL, NULL),
(17, 'P005', 'Device A', 'Electronics', '39.99', NULL, NULL),
(18, 'P006', 'Device B', 'Electronics', '44.99', NULL, NULL),
(19, 'P007', 'Appliance A', 'Home', '49.99', NULL, NULL),
(20, 'P008', 'Appliance B', 'Home', '54.99', NULL, NULL),
(21, 'P009', 'Tool A', 'Garden', '59.99', NULL, NULL),
(22, 'P010', 'Tool B', 'Garden', '64.99', NULL, NULL),
(23, 'P011', 'Equipment A', 'Fitness', '69.99', NULL, NULL),
(24, 'P012', 'Equipment B', 'Fitness', '74.99', NULL, NULL),
(25, 'P013', 'Accessory A', 'Fashion', '79.99', NULL, NULL),
(26, 'P014', 'Accessory B', 'Fashion', '84.99', NULL, NULL),
(27, 'P015', 'Product A', 'Miscellaneous', '89.99', NULL, NULL),
(28, 'P016', 'Product B', 'Miscellaneous', '94.99', NULL, NULL),
(29, 'P017', 'Widget C', 'Tools', '99.99', NULL, NULL),
(30, 'P018', 'Widget D', 'Tools', '104.99', NULL, NULL),
(31, 'P019', 'Gadget C', 'Gadgets', '109.99', NULL, NULL),
(32, 'P020', 'Gadget D', 'Gadgets', '114.99', NULL, NULL),
(33, 'P021', 'Device C', 'Electronics', '119.99', NULL, NULL),
(34, 'P022', 'Device D', 'Electronics', '124.99', NULL, NULL),
(35, 'P023', 'Appliance C', 'Home', '129.99', NULL, NULL),
(36, 'P024', 'Appliance D', 'Home', '134.99', NULL, NULL),
(37, 'P025', 'Tool C', 'Garden', '139.99', NULL, NULL),
(38, 'P026', 'Tool D', 'Garden', '144.99', NULL, NULL),
(39, 'P027', 'Equipment C', 'Fitness', '149.99', NULL, NULL),
(40, 'P028', 'Equipment D', 'Fitness', '154.99', NULL, NULL),
(41, 'P029', 'Accessory C', 'Fashion', '159.99', NULL, NULL),
(42, 'P030', 'Accessory D', 'Fashion', '164.99', NULL, NULL),
(43, 'P031', 'Product C', 'Miscellaneous', '169.99', NULL, NULL),
(44, 'P032', 'Product D', 'Miscellaneous', '174.99', NULL, NULL),
(45, 'P033', 'Widget E', 'Tools', '179.99', NULL, NULL),
(46, 'P034', 'Widget F', 'Tools', '184.99', NULL, NULL),
(47, 'P035', 'Gadget E', 'Gadgets', '189.99', NULL, NULL),
(48, 'P036', 'Gadget F', 'Gadgets', '194.99', NULL, NULL),
(49, 'P037', 'Device E', 'Electronics', '199.99', NULL, NULL),
(50, 'P038', 'Device F', 'Electronics', '204.99', NULL, NULL),
(51, 'P039', 'Appliance E', 'Home', '209.99', NULL, NULL),
(52, 'P040', 'Appliance F', 'Home', '214.99', NULL, NULL),
(53, 'P041', 'Tool E', 'Garden', '219.99', NULL, NULL),
(54, 'P042', 'Tool F', 'Garden', '224.99', NULL, NULL),
(55, 'P043', 'Equipment E', 'Fitness', '229.99', NULL, NULL),
(56, 'P044', 'Equipment F', 'Fitness', '234.99', NULL, NULL),
(57, 'P045', 'Accessory E', 'Fashion', '239.99', NULL, NULL),
(58, 'P046', 'Accessory F', 'Fashion', '244.99', NULL, NULL),
(59, 'P047', 'Product E', 'Miscellaneous', '249.99', NULL, NULL),
(60, 'P048', 'Product F', 'Miscellaneous', '254.99', NULL, NULL),
(61, 'P049', 'Widget G', 'Tools', '259.99', NULL, NULL),
(62, 'P050', 'Widget H', 'Tools', '264.99', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanphams`
--

DROP TABLE IF EXISTS `sanphams`;
CREATE TABLE IF NOT EXISTS `sanphams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `is_featured` int DEFAULT NULL,
  `thuonghieu_id` int NOT NULL,
  `danhmuc_id` int NOT NULL,
  `is_variation` int DEFAULT NULL,
  `price` int NOT NULL,
  `sale_price` int DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `length_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanphams`
--

INSERT INTO `sanphams` (`id`, `name`, `slug`, `description`, `content`, `status`, `images`, `scu`, `order`, `quantity`, `is_featured`, `thuonghieu_id`, `danhmuc_id`, `is_variation`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`) VALUES
(1005, 'Bảng học sinh B-08', 'bang-hoc-sinh-b-08', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Loại bảng đen, 2 mặt viết phấn d&ugrave;ng cho học sinh tiểu học.</p>\r\n<p>- Mặt bảng mịn v&agrave; b&aacute;m phấn gi&uacute;p viết r&otilde; n&eacute;t, chữ viết đẹp.</p>\r\n<p>- Chất liệu bằng nhựa n&ecirc;n dễ d&agrave;ng vệ sinh, rửa sạch khi cần.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 01 bảng/t&uacute;i nilon, 100 bảng/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 78976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:41'),
(1006, 'Bảng học sinh B-09', 'bang-hoc-sinh-b-09', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- L&agrave; loại bảng bộ, 1 mặt viết phấn, 1 mặt viết l&ocirc;ng bảng, tr&ecirc;n bảng c&oacute; kẹp th&ecirc;m 01 b&uacute;t l&ocirc;ng bảng c&oacute; sẵn đồ b&ocirc;i chuy&ecirc;n d&agrave;nh cho học sinh.</p>\r\n<p>- Mặt viết phấn mịn v&agrave; b&aacute;m phấn gi&uacute;p viết r&otilde; n&eacute;t, chữ viết đẹp.</p>\r\n<p>- Mặt viết l&ocirc;ng bảng m&agrave;u trắng, mặt trơn dễ viết, dễ x&oacute;a.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 01 bảng/t&uacute;i nilon, 40 bảng/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 79000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:11:27'),
(1007, 'Phấn trắng không bụi DC-02', 'phan-trang-khong-bui-dc-02', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- L&agrave; loại phấn trắng kh&ocirc;ng bụi được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại của H&agrave;n Quốc.</p>\r\n<p>- Phấn viết n&eacute;t chữ r&otilde; r&agrave;ng, &ecirc;m trơn, b&aacute;m bảng đều v&agrave; kh&ocirc;ng tạo bụi phấn, rất th&acirc;n thiện với m&ocirc;i trường.</p>\r\n<p>- Phấn kh&ocirc;ng độc hại nhờ sử dụng nguy&ecirc;n liệu sạch, đầu v&agrave;o được kiểm</p>\r\n<p>tra</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong></p>\r\n<p>10 vi&ecirc;n/hộp, 10 hộp/lốc (160 hộp)/th&ugrave;ng</p>\r\n<p><strong><u>Bảo quản:</u></strong></p>\r\n<p>Để nơi kh&ocirc; tho&aacute;ng, tr&aacute;nh va đập mạnh l&agrave;m bể/ g&atilde;y phấn.</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:12:05'),
(1008, 'Ống mực bút phấn nước CMIC-01', 'ong-muc-but-phan-nuoc-cmic-01', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Ống mực b&uacute;t phấn nước</p>\r\n<p>- D&ugrave;ng để thay ống mực cho b&uacute;t phấn nước</p>\r\n<p>-&nbsp;Kh&ocirc;ng độc hại, đạt ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u&nbsp;EN71/3, EN71/9, v&agrave; Mỹ ASTM D-4236</p>\r\n<p>- M&agrave;u sắc: 5 m&agrave;u</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 10 ống/hộp, 80 hộp (800 ống)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 9996509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:15:42'),
(1004, 'Gôm tẩy E-05', 'gom-tay-e-05', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Sản phẩm được l&agrave;m bằng chất liệu Hypolyme cao cấp, sử dụng cho việc b&ocirc;i x&oacute;a tr&ecirc;n giấy.</p>\r\n<p>- G&ocirc;m/tẩy dẻo dai, &iacute;t bụi trong qu&aacute; tr&igrave;nh b&ocirc;i x&oacute;a, kh&ocirc;ng l&agrave;m r&aacute;ch giấy.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong></p>\r\n<p>20 cục/hộp, 40 hộp/(800 cục)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 12500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:37:13'),
(999, 'Băng keo 2 mặt mousse BKM-03', 'bang-keo-2-mat-mousse-bkm-03', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Chất liệu: m&agrave;ng BOPP</p>\r\n<p>K&iacute;ch thước: 24 mm x 9Y</p>\r\n<p>Đ&oacute;ng g&oacute;i: 12 cuộn / c&acirc;y</p>\r\n<p>M&agrave;u sắc: Trong suốt</p>\r\n<p>Bảo quản: Nơi kh&ocirc; r&aacute;o, tr&aacute;nh lửa</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_5221_grande.jpg\" alt=\"Băng keo 2 mặt  mousse BKM-03\"></p>\r\n<p><strong>Đặc điểm:</strong><br>_x000D_ Băng keo 2 mặt 24mmx9Y BKM-03 c&oacute; nhiều k&iacute;ch cỡ kh&aacute;c nhau với lớp keo mỏng nhưng d&iacute;nh chắc được bọc l&oacute;t 1 mặt giấy dễ d&agrave;ng sử dụng v&agrave; tiện lợi trong nhiều mục đ&iacute;ch kh&aacute;c nhau.<br>_x000D_ K&eacute;o &ecirc;m nhẹ.<br>_x000D_ Sản phẩm sau khi sử dụng băng keo kh&ocirc;ng bị ố v&agrave;ng theo thời gian v&agrave; kh&ocirc;ng thấm nước.<br><strong>Bảo quản:</strong><br>_x000D_ Tr&aacute;nh xa nguồn nhiệt v&agrave; dầu mỡ.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_5222_grande.jpg\" alt=\"Băng keo 2 mặt  mousse BKM-03\"></p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 14, NULL, 97665, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:23:53'),
(1000, 'Keo khô Thiên Long - Điểm 10 Doraemon G-011/DO', 'keo-kho-thien-long-diem-10-doraemon-g-011do', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Thương hiệu: Điểm 10</p>\r\n<p>Chất liệu: Chất liệu tự nhi&ecirc;n, kh&ocirc;ng độc hại</p>\r\n<p>Trọng lượng: 23 gram</p>\r\n<p>Quy c&aacute;ch: 30 thỏi / hộp</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p>Keo kh&ocirc; Thi&ecirc;n Long - Điểm 10 Doraemon G-011/DO l&agrave; loại keo d&aacute;n giấy, ở dạng kh&ocirc;, sử dụng thuận tiện, kh&ocirc;ng lo bị chảy, b&aacute;m d&iacute;nh tay như keo nước.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/keo_kho_thien_long_diem_10_doraemon_g-011-do__4__grande.jpg\" alt=\"Keo kh&ocirc; Thi&ecirc;n Long - Điểm 10 Doraemon G-011/DO \"></p>\r\n<p><strong>Đặc điểm :&nbsp;</strong></p>\r\n<p>- Keo m&agrave;u trắng, c&oacute; độ kết d&iacute;nh cao, kh&ocirc; nhanh.<br>_x000D_ - Keo kh&ocirc;ng độc hại.<br>_x000D_ - Sản phẩm sử dụng h&igrave;nh ảnh Doraemon bản quyền.</p>\r\n<p><strong>Bảo quản:</strong><br>_x000D_ Đậy nắp ngay sau khi sử dụng. Lưu trữ nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh để &aacute;nh s&aacute;ng mặt trời chiếu trực tiếp v&agrave;o sản phẩm.</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 14, NULL, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:28:19'),
(1001, 'Gôm tẩy E-011', 'gom-tay-e-011', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Sản phẩm được l&agrave;m bằng chất liệu cao cấp, gi&uacute;p tẩy x&oacute;a nhanh hơn c&aacute;c loại g&ocirc;m thường.</p>\r\n<p>- Sử dụng cho việc b&ocirc;i x&oacute;a tr&ecirc;n giấy.</p>\r\n<p>- G&ocirc;m/tẩy dẻo dai, &iacute;t bụi trong qu&aacute; tr&igrave;nh b&ocirc;i x&oacute;a, kh&ocirc;ng l&agrave;m r&aacute;ch giấy.</p>\r\n<p>- Kh&ocirc;ng chứa h&oacute;a chất độc hại, an to&agrave;n.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><u><strong>Đ&oacute;ng g&oacute;i&nbsp;</strong></u></p>\r\n<p>30 cục/hộp, 40 hộp/(1.200 cục)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:35:55'),
(1002, 'Gôm tẩy E-08', 'gom-tay-e-08', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Sản phẩm được l&agrave;m bằng chất liệu Hypolyme cao cấp, sử dụng cho việc b&ocirc;i x&oacute;a tr&ecirc;n giấy.</p>\r\n<p>- G&ocirc;m/tẩy dẻo dai, &iacute;t bụi trong qu&aacute; tr&igrave;nh b&ocirc;i x&oacute;a, kh&ocirc;ng l&agrave;m r&aacute;ch giấy.</p>\r\n<p>&nbsp;</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><u><strong>Đ&oacute;ng g&oacute;i&nbsp;</strong></u></p>\r\n<p>30 cục/hộp, 40 hộp/(1.200 cục)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 19800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:38:09'),
(1036, 'Băng keo trong OPP 48mm', 'bang-keo-trong-opp-48mm', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Sử dụng m&agrave;ng BOPP trong c&oacute; độ bền dai cao, chịu lực tốt, &iacute;t đứt ngang khi sử dụng.</p>\r\n<p>- M&agrave;ng phủ lớp keo d&agrave;y, độ b&aacute;m d&iacute;nh tốt, chắc chắn.</p>\r\n<p>- Chiều d&agrave;i băng keo (Yard) đảm bảo đ&uacute;ng, đủ theo ti&ecirc;u chuẩn.</p>\r\n<p><img src=\"http://tl.thienlonggroup.com/Images_upload/images/Untitled.png\" alt=\"\"></p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong></p>\r\n<p>- Băng keo BKT-04: 6 cuộn/block, 30 block/th&ugrave;ng, 180 cuộn/th&ugrave;ng</p>\r\n<p>- Băng keo BKT-06: 6 cuộn/block, 25 block/th&ugrave;ng, 150 cuộn/th&ugrave;ng</p>\r\n<p>- Băng keo BKT-08: 6 cuộn/block, 25 block/th&ugrave;ng, 150 cuộn/th&ugrave;ng</p>\r\n<p>- Băng keo BKT-10: 6 cuộn/block, 20 block/th&ugrave;ng, 120 cuộn/th&ugrave;ng</p>\r\n<p>- Băng keo BKT-15: 6 cuộn/block, 20 block/th&ugrave;ng, 120 cuộn/th&ugrave;ng</p>\r\n<p>- Băng keo BKT-20: 6 cuộn/block, 16 block/th&ugrave;ng, 96 cuộn/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 12500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:25:35'),
(1033, 'Bút chì gỗ Thiên Long GP-023', 'but-chi-go-thien-long-gp-023', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:</strong></u></p>\r\n<p>- Ch&igrave; vẽ mỹ thuật chuy&ecirc;n nghiệp.</p>\r\n<p>- Th&acirc;n gỗ, sơn một m&agrave;u đơn giản nhưng sang trọng.</p>\r\n<p>- Ruột ch&igrave; 4B. Ch&igrave; rất mềm v&agrave; đen. N&eacute;t đậm, lướt nhẹ&nbsp;nh&agrave;ng tr&ecirc;n bề mặt giấy.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong>&nbsp;10 c&acirc;y/hộp, 96 hộp (960 c&acirc;y)/th&ugrave;ng</p>\r\n<p>&nbsp;</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 11000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:40:12'),
(1034, 'Bút chì gỗ Thiên Long GP-022', 'but-chi-go-thien-long-gp-022', '<div class=\"description short\" itemprop=\"description\">\r\n<p><strong><u>Đặc điểm:</u></strong></p>\r\n<p>- Ch&igrave; vẽ mỹ thuật chuy&ecirc;n nghiệp.</p>\r\n<p>- Th&acirc;n gỗ, sơn một m&agrave;u đơn giản nhưng sang trọng.</p>\r\n<p>- Ruột ch&igrave; 3B. Ch&igrave; mềm v&agrave; đen. N&eacute;t đậm, lướt nhẹ nh&agrave;ng tr&ecirc;n bề mặt giấy&nbsp;</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 10 c&acirc;y/hộp, 96 hộp (960 c&acirc;y)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:39:33'),
(1035, 'Bút chì bấm Thiên Long PC-023', 'but-chi-bam-thien-long-pc-023', '<div class=\"description short\" itemprop=\"description\">\r\n<p><strong><u>Đặc điểm:</u></strong></p>\r\n<p>- Một sản phẩm s&aacute;ng tạo mới. B&uacute;t ch&igrave; với th&acirc;n bằng nhựa c&oacute; k&iacute;ch thước tương tự b&uacute;t ch&igrave; gỗ thường, nhưng sử dụng cơ chế bấm rất tiện lợi v&agrave; tiết kiệm.</p>\r\n<p>- Ruột ch&igrave; c&oacute; k&iacute;ch thước 2.0 mm. L&agrave; loại ruột ch&igrave;: 2B - cho n&eacute;t vẽ mềm v&agrave; đen. N&eacute;t đậm, lướt nhẹ nh&agrave;ng tr&ecirc;n bề mặt giấy.</p>\r\n<p>- Ruột ch&igrave; dễ d&agrave;ng thay khi sử dụng hết, b&uacute;t bấm nhẹ tay, kh&ocirc;ng r&iacute;t.</p>\r\n<p>- B&uacute;t t&iacute;ch hợp chuốt d&agrave;nh ri&ecirc;ng cho ruột ch&igrave; ở đầu b&uacute;t rất thuận tiện hơn cho kh&aacute;ch h&agrave;ng khi sử dụng.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 10 c&acirc;y/hộp, 96 hộp (960 c&acirc;y)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 12000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:33:23'),
(1031, 'Bút chì gỗ Thiên Long GP-025', 'but-chi-go-thien-long-gp-025', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:</strong></u></p>\r\n<p>- Ch&igrave; vẽ mỹ thuật chuy&ecirc;n nghiệp.</p>\r\n<p>- Th&acirc;n gỗ, sơn một m&agrave;u đơn giản nhưng sang trọng.</p>\r\n<p>- Ruột ch&igrave; 6B. Ch&igrave; rất mềm v&agrave; đen. N&eacute;t đậm, lướt nhẹ&nbsp;nh&agrave;ng tr&ecirc;n bề mặt giấy.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 10 c&acirc;y/hộp, 96 hộp (960 c&acirc;y)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 12600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:41:29'),
(1032, 'Bút chì gỗ Thiên Long GP-024', 'but-chi-go-thien-long-gp-024', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:</strong></u></p>\r\n<p>- Ch&igrave; vẽ mỹ thuật chuy&ecirc;n nghiệp.</p>\r\n<p>- Th&acirc;n gỗ, sơn một m&agrave;u đơn giản nhưng sang trọng.</p>\r\n<p>- Ruột ch&igrave; 5B. Ch&igrave; rất mềm v&agrave; đen. N&eacute;t đậm, lướt nhẹ&nbsp;nh&agrave;ng tr&ecirc;n bề mặt giấy.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 10 c&acirc;y/hộp, 96 hộp (960 c&acirc;y)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 12500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:40:50'),
(1029, 'Chuốt chì S-01', 'chuot-chi-s-01', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:</strong></u></p>\r\n<p>- Th&acirc;n chuốt bằng nhựa, nhỏ gọn, vừa tay, dễ cầm, dễ chuốt.</p>\r\n<p>- Lưỡi chuốt bằng th&eacute;p kh&ocirc;ng gỉ, sắc b&eacute;n.</p>\r\n<p>- An to&agrave;n v&agrave; th&iacute;ch hợp nhiều đối tượng kh&aacute;ch h&agrave;ng.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 40 c&aacute;i/hộp, 96 hộp (3840c)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:42:38'),
(1030, 'Chuốt chì S-04', 'chuot-chi-s-04', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:</strong></u></p>\r\n<p>- Th&acirc;n chuốt thiết kế sinh động, c&oacute; phần nắp đậy giữ vỏ ch&igrave; kh&ocirc;ng rơi ra khi chuốt.</p>\r\n<p>- Lưỡi chuốt bằng th&eacute;p kh&ocirc;ng gỉ, sắc b&eacute;n.</p>\r\n<p>- An to&agrave;n v&agrave; th&iacute;ch hợp với học sinh.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong></p>\r\n<p>24 c&aacute;i/hộp, 24 hộp (576 c&aacute;i)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:43:19'),
(1028, 'Chuốt chì S-011', 'chuot-chi-s-011', '<div class=\"description short\" itemprop=\"description\">\r\n<p><strong><u>Đặc điểm:</u></strong></p>\r\n<p>- Th&acirc;n chuốt bằng nhựa trong, nhỏ gọn, vừa tay, dễ cầm, dễ chuốt.</p>\r\n<p>- Lưỡi chuốt bằng th&eacute;p kh&ocirc;ng gỉ, sắc b&eacute;n.</p>\r\n<p>- An to&agrave;n v&agrave; th&iacute;ch hợp nhiều đối tượng kh&aacute;ch h&agrave;ng.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 40 c&aacute;i/hộp, 96 hộp (3840 c&aacute;i)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 4500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:43:04'),
(1027, 'Chuốt chì S-05', 'chuot-chi-s-05', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:</strong></u></p>\r\n<p>- Th&acirc;n chuốt thiết kế sinh động, c&oacute; phần nắp đậy giữ vỏ ch&igrave; kh&ocirc;ng rơi ra khi chuốt.</p>\r\n<p>- Lưỡi chuốt bằng th&eacute;p kh&ocirc;ng gỉ, sắc b&eacute;n.</p>\r\n<p>- An to&agrave;n v&agrave; th&iacute;ch hợp với học sinh.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong> 24 c&aacute;i/hộp, 24 hộp (576 c&aacute;i)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 19500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:51:14'),
(1026, '             Chuốt chì S-06         ', 'chuot-chi-s-06', '<div class=\"description short\" itemprop=\"description\">\n<p><u><strong>Đặc điểm:</strong></u></p>\n<p>Thân chuốt thiết kế sinh động hình máy bay, có phần nắp đậy</p>\n<p>giữ vỏ chì không rơi ra khi chuốt.</p>\n<p>Lưỡi chuốt bằng thép không gỉ, sắc bén.</p>\n<p>An toàn và thích hợp với học sinh.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<hr/>\n<p><u><strong>Đóng gói:</strong></u> 18 cái/hộp, 18 hộp (432 cái)/thùng</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1025, 'Bút Chì Gỗ Cao Cấp Bizner BIZ-P01', 'but-chi-go-cao-cap-bizner-biz-p01', '<div class=\"description short\" itemprop=\"description\">\r\n<p>hương hiệu: Bizner</p>\r\n<p>M&atilde; sản phẩm: BIZ-P01</p>\r\n<p>Đầu g&ocirc;m: Kh&ocirc;ng</p>\r\n<p>Kiểu d&aacute;ng: Dạng thẳng lục gi&aacute;c</p>\r\n<p>Độ cứng ruột ch&igrave;: HB</p>\r\n<p>Chiều d&agrave;i b&uacute;t: 165 &plusmn;1Đường k&iacute;nh ruột ch&igrave;2mm &plusmn;0.5</p>\r\n<p>Đ&oacute;ng g&oacute;i: 10 c&acirc;y / hộp</p>\r\n<p>Trọng lượng: 7 gram</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p>Hiện nay, B&uacute;t ch&igrave; gỗ cao cấp Thi&ecirc;n Long - Bizner BIZ-P01 đang dần trở n&ecirc;n gần gũi đối với c&aacute;c bạn học sinh, nhất l&agrave; d&ugrave;ng trong m&ocirc;n học vẽ, h&igrave;nh học, thi trắc nghiệm,... N&oacute; l&agrave; dụng cụ kh&ocirc;ng thể thiếu với c&aacute;c nh&agrave; thiết kế, nh&acirc;n vi&ecirc;n văn ph&ograve;ng chuy&ecirc;n về c&aacute;c hoạt động s&aacute;ng tạo v&agrave; cho nhiều mục đ&iacute;ch c&aacute; nh&acirc;n kh&aacute;c.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/but_chi_go_cao_cap_thien_long_-_bizner_biz-p01__4__grande.jpg\" alt=\"B&uacute;t ch&igrave; gỗ cao cấp Thi&ecirc;n Long - Bizner BIZ-P01\"></p>\r\n<p>Đặc điểm:</p>\r\n<p>- B&uacute;t ch&igrave; thuộc d&ograve;ng b&uacute;t cao cấp Bizner</p>\r\n<p>- Thiết kế đơn giản nhưng tinh tế v&agrave; sang trọng.</p>\r\n<p>- Độ cứng ruột ch&igrave;: HB - cho n&eacute;t vẽ sắc n&eacute;t, viết trơn &ecirc;m, n&eacute;t viết ra đều.</p>\r\n<p>- Th&acirc;n b&uacute;t h&igrave;nh lục gi&aacute;c, dễ cầm, kh&ocirc;ng trơn, kh&ocirc;ng mỏi tay khi cầm viết l&acirc;u</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/but_chi_go_cao_cap_thien_long_-_bizner_biz-p01__5__grande.jpg\" alt=\"B&uacute;t ch&igrave; gỗ cao cấp Thi&ecirc;n Long - Bizner BIZ-P01\"></p>\r\n<p>Bảo quản:</p>\r\n<p>- Hạn chế rơi nhiều lần v&agrave; va đập mạnh khi vận chuyển v&agrave; sử dụng.<br>_x000D_ - Lưu trữ v&agrave; trưng b&agrave;y nơi tho&aacute;ng m&aacute;t.<br>_x000D_ - Tr&aacute;nh xa nguồn nhiệt v&agrave; những nơi c&oacute; &aacute;nh nắng trực tiếp chiếu v&agrave;o</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:34:14'),
(1024, 'Bút Chì Gỗ Cao Cấp Bizner BIZ-P02', 'but-chi-go-cao-cap-bizner-biz-p02', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Thương hiệu: Bizner</p>\r\n<p>M&atilde; sản phẩm: BIZ-P02</p>\r\n<p>Đầu g&ocirc;m: Kh&ocirc;ng</p>\r\n<p>Kiểu d&aacute;ng: Dạng thẳng lục gi&aacute;c</p>\r\n<p>Độ cứng ruột ch&igrave;: 2B</p>\r\n<p>Chiều d&agrave;i b&uacute;t: 165 &plusmn;1Đường k&iacute;nh ruột ch&igrave;2mm &plusmn;0.5</p>\r\n<p>Đ&oacute;ng g&oacute;i: 10 c&acirc;y / hộpTrọng lượng7 gram</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p>Hiện nay, B&uacute;t ch&igrave; gỗ cao cấp Thi&ecirc;n Long - Bizner BIZ-P02 đang dần trở n&ecirc;n gần gũi đối với c&aacute;c bạn học sinh, nhất l&agrave; d&ugrave;ng trong m&ocirc;n học vẽ, h&igrave;nh học, thi trắc nghiệm,... N&oacute; l&agrave; dụng cụ kh&ocirc;ng thể thiếu với c&aacute;c nh&agrave; thiết kế, nh&acirc;n vi&ecirc;n văn ph&ograve;ng chuy&ecirc;n về c&aacute;c hoạt động s&aacute;ng tạo v&agrave; cho nhiều mục đ&iacute;ch c&aacute; nh&acirc;n kh&aacute;c.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/but_chi_go_cao_cap_thien_long_-_bizner_biz-p01__4__grande.jpg\" alt=\"B&uacute;t ch&igrave; gỗ cao cấp Thi&ecirc;n Long - Bizner BIZ-P02\"></p>\r\n<p>Đặc điểm:</p>\r\n<p>- B&uacute;t ch&igrave; thuộc d&ograve;ng b&uacute;t cao cấp Bizner</p>\r\n<p>- Thiết kế đơn giản nhưng tinh tế v&agrave; sang trọng.</p>\r\n<p>- Độ cứng ruột ch&igrave;: 2B - cho n&eacute;t vẽ mềm, viết trơn &ecirc;m, n&eacute;t viết ra đều, m&agrave;u đậm</p>\r\n<p>- Th&acirc;n b&uacute;t h&igrave;nh lục gi&aacute;c, dễ cầm, kh&ocirc;ng trơn, kh&ocirc;ng mỏi tay khi cầm viết l&acirc;u</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/but_chi_go_cao_cap_thien_long_-_bizner_biz-p01__5__grande.jpg\" alt=\"B&uacute;t ch&igrave; gỗ cao cấp Thi&ecirc;n Long - Bizner BIZ-P02\"></p>\r\n<p>Bảo quản:</p>\r\n<p>- Hạn chế rơi nhiều lần v&agrave; va đập mạnh khi vận chuyển v&agrave; sử dụng.<br>_x000D_ - Lưu trữ v&agrave; trưng b&agrave;y nơi tho&aacute;ng m&aacute;t.<br>_x000D_ - Tr&aacute;nh xa nguồn nhiệt v&agrave; những nơi c&oacute; &aacute;nh nắng trực tiếp chiếu v&agrave;o.</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 19000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:35:03'),
(1023, '             Mực bút lông bảng WBI-01         ', 'muc-but-long-bang-wbi-01', '<div class=\"description short\" itemprop=\"description\">\n<p><u><strong>Đặc điểm: </strong></u></p>\n<p>- Mực sử dụng cho bút lông bảng.</p>\n<p>- Màu mực tươi, nhanh khô, dễ dàng xóa sạch trên bảng trắng hoặc bề mặt nhẵn.</p>\n<p>- Mực không độc hại, đạt tiêu chuẩn Châu Âu EN71/3, EN71/9 và Mỹ ASTM D-4236.</p>\n<p>- Thiết kế hộp khoa học giúp tránh bay hơi và chảy mực...Van tiết lưu giúp mực luôn nhỏ thành dạng giọt khi bơm.</p>\n<p>- Tặng kèm 01 ngòi bút lông bảng.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong></p>\n<p> 6 lọ/lốc, 24 lốc (144 lọ)/thùng</p>\n<p><strong><u>Bảo quản:</u></strong></p>\n<p>Luôn đậy nắp ngay sau khi sử dụng. Không tiếp xúc trực tiếp với ánh sáng mặt trời. Tránh xa nguồn nhiệt và những nơi có nhiệt độ cao.</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1022, '             Mực bút lông dầu PMI-01         ', 'muc-but-long-dau-pmi-01', '<div class=\"description short\" itemprop=\"description\">\n<p><u><strong>Đặc điểm: </strong></u></p>\n<p>- Mực sử dụng cho bút lông dầu.</p>\n<p>- Mực tươi sáng, bám dính tốt.</p>\n<p>- Mực không độc hại, đạt tiêu chuẩn Châu Âu EN71/3, EN71/9 và Mỹ ASTM D-4236.</p>\n<p>- Thiết kế hộp khoa học giúp tránh bay hơi và chảy mực...Van tiết lưu giúp mực luôn nhỏ thành dạng giọt khi bơm.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong></p>\n<p> 6 lọ/lốc, 24 lốc (144 lọ)/thùng</p>\n<p><strong><u>Bảo quản: </u></strong></p>\n<p>Luôn đậy nắp ngay sau khi sử dụng. Không tiếp xúc trực tiếp với ánh sáng mặt trời. Tránh xa nguồn nhiệt và những nơi có nhiệt độ cao</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1021, 'SỔ DA CAO CẤP BIZNER - MB-09', 'so-da-cao-cap-bizner-mb-09', '<div class=\"description short\" itemprop=\"description\">\r\n<p>- Sản phẩm l&agrave; một m&oacute;n qu&agrave; tặng sang trọng c&oacute;&nbsp;hộp bao ngo&agrave;i được l&agrave;m hết sức c&ocirc;ng phu, chất&nbsp;lượng, đẳng cấp</p>\r\n<p>- B&igrave;a l&agrave;m từ chất liệu da cao cấp, được gia c&ocirc;ng&nbsp;cẩn thận, chăm ch&uacute;t từng đường kim may.</p>\r\n<p>- Ruột 250 trang. Sử dụng giấy ngoại nhập, định&nbsp;lượng 80g/m2.</p>\r\n<p>-&nbsp;K&iacute;ch thước ruột 17x10 cm</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 16, NULL, 957689, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:18:54'),
(1020, 'SỔ DA CAO CẤP BIZNER - MB-08', 'so-da-cao-cap-bizner-mb-08', '<div class=\"description short\" itemprop=\"description\">\r\n<p>- Sản phẩm l&agrave; một m&oacute;n qu&agrave; tặng sang trọng c&oacute;&nbsp;hộp bao ngo&agrave;i được l&agrave;m hết sức c&ocirc;ng phu, chất&nbsp;lượng, đẳng cấp</p>\r\n<p>- B&igrave;a l&agrave;m từ chất liệu da cao cấp, được gia c&ocirc;ng&nbsp;cẩn thận, chăm ch&uacute;t từng đường kim may.</p>\r\n<p>- Ruột 250 trang. Sử dụng giấy ngoại nhập, định&nbsp;lượng 80g/m2.</p>\r\n<p>-&nbsp;K&iacute;ch thước ruột 21x15 cm</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 16, NULL, 97890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:18:13'),
(1018, '             Compa Thiên Long C-09         ', 'compa-thien-long-c-09', '<div class=\"description short\" itemprop=\"description\">\n<p><strong><u>Đặc điểm:</u></strong></p>\n<p>- Loại compa dành cho học sinh. Kiểu dáng độc đáo, thân bằng nhựa, nhỏ gọn và nhẹ, dễ cầm, dễ sử dụng.</p>\n<p>- Dễ dàng vẽ những đường cong hình học khác nhau như: hình tròn, oval, xoắn ốc... một cách đơn giản và dễ dàng.</p>\n<p>- Đặc biệt có thước gắn kèm theo giúp khách hàng có thể căn vẽ các hình vẽ với kích thước như ý.</p>\n<p>- An toàn dễ thay bút chì khi sử dụng</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong> 01cây/vỉ, 20 vỉ/inner (160cây)/thùng</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1019, '             Compa Thiên Long C-11         ', 'compa-thien-long-c-11', '<div class=\"description short\" itemprop=\"description\">\n<p><strong><u>Đặc điểm:</u></strong></p>\n<p>- Compa C-011 phù hợp cho học sinh-sinh viên.<br/>_x000D_\n- Thân bằng nhựa ABS an toàn, độ bền cao, thiết kế nhỏ gọn, nhẹ, dễ cầm và dễ sử dụng.</p>\n<p>- Dễ dàng vẽ những đường cong hình học khác nhau như: hình tròn, oval, xoắn ốc... một cách đơn giản và dễ dàng.</p>\n<p>- Đặc biệt có kim định tâm thiết kế an toàn, tiện lợi.</p>\n<p>- Cơ cấu giữ bút chắc chắn, thay bút dễ dàng.</p>\n<p>- Compa có 4 màu thân xinh xắn để lựa chọn: xanh, xanh lá, đỏ, hồng.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong> 01cây/vỉ, 20 vỉ/inner, 08 inner/thùng (160cây)</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1016, '             Compa Thiên Long C-02         ', 'compa-thien-long-c-02', '<div class=\"description short\" itemprop=\"description\">\n<p><u><strong>Đặc điểm: </strong></u></p>\n<p>- Loại compa dành cho học sinh. Thân bằng nhựa, nhỏ gọn và nhẹ, dễ cầm, dễ sử dụng.</p>\n<p>- Dễ dàng vẽ những đường cong hình học khác nhau như: hình tròn, oval, xoắn ốc... một cách đơn giản và dễ dàng.</p>\n<p>- An toàn và dễ thay bút chì khi sử dụng.</p>\n<p>- Compa có  màu thân: đỏ, tím, hồng, lá, vàng</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong> 5c/dây, 40 c/inner, 480 cái/thùng</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1017, '             Compa Thiên Long C-05         ', 'compa-thien-long-c-05', '<div class=\"description short\" itemprop=\"description\">\n<p><strong><u>Đặc điểm:</u></strong></p>\n<p>- Loại compa dành cho học sinh. Thân bằng nhựa, nhỏ gọn và nhẹ, dễ cầm, dễ sử dụng.</p>\n<p>- Dễ dàng vẽ những đường cong hình học khác nhau như: hình tròn, oval, xoắn ốc... một cách đơn giản và dễ dàng.</p>\n<p>- Đặc biệt có thước gắn kèm theo giúp khách hàng có thể căn vẽ các hình vẽ với kích thước như ý.</p>\n<p>- An toàn và dễ thay bút chì khi sử dụng.</p>\n<p>- Compa có 5 màu thân: vàng, xanh, lá, hồng, tím</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong> 01c/vỉ, 20 vỉ/inner (160c)/thùng</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1014, '             Thước nhựa SR-024         ', 'thuoc-nhua-sr-024', '<div class=\"description short\" itemprop=\"description\">\n<p><strong><u>Đặc điểm: </u></strong></p>\n<p>- Là loại thước thẳng bằng nhựa dẻo dùng cho học sinh, chiều dài 20cm.</p>\n<p>- Thước được cấu tạo từ nhựa PVC mềm, có độ dẻo cao, khó gãy, bền khi sử dụng.</p>\n<p>- Kiểu dáng được thiết kế hiện đại vừa giúp dễ cầm, kẻ vừa an toàn khi sử dụng.</p>\n<p>- Nhựa chất lượng cao, không độc hại.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong> 1 cây / túi, 200 bộ/thùng</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1015, '             Thước kỹ thuật SR-026         ', 'thuoc-ky-thuat-sr-026', '<div class=\"description short\" itemprop=\"description\">\n<p><strong><u>Đặc điểm:</u></strong></p>\n<p>- Là loại thước thẳng chuyên dùng trong kỹ thuật, dài 50cm.</p>\n<p>- Thước được cấu tạo từ nhựa cứng chất lượng cao, trong suốt ít trầy xước, có độ bền cao.</p>\n<p>- Các mốc kích thước 0; 10; 20; 30; 40; 50 được làm nổi bật giúp xác định dễ dàng, nhanh chóng.</p>\n<p>- Thước có hai đơn vị đo: inch và cm. Các vạch được in ấn sắc nét, rõ ràng, bền với thời gian. Đặc biệt, ở phần vạch Inch có chia tỷ lệ: 1/16 và 1/8 tạo sự linh hoạt khi chia tỉ lệ.</p>\n<p>- Thân thước in các ô lưới vuông lớn 10x10 mm và 5x5 mm thuận tiện cho việc tạo ô vẽ các chi tiết, hình học.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong> 1 thước/túi OPP, 10 thước/inner, 20 inner/thùng (200 thước).</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1013, '             Thước kẻ SR-02         ', 'thuoc-ke-sr-02', '<div class=\"description short\" itemprop=\"description\">\n<p><strong>Đặc điểm:</strong></p>\n<p>- Là loại thước thẳng dùng cho học sinh, chiều dài 20cm.</p>\n<p>- Thước được cấu tạo từ nhựa cứng, trong suốt, có độ bền cao.</p>\n<p>- Mặt thước có nhãn để học sinh ghi tên.</p>\n<p>- Nhựa chất lượng cao, an toàn không độc hại.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><u><strong>Đóng gói:</strong></u> 01 cây/ túi nilon, 200 cây/thùng</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1012, '             Thước kẻ SR-03         ', 'thuoc-ke-sr-03', '<div class=\"description short\" itemprop=\"description\">\n<p><u><strong>Đặc điểm:</strong></u></p>\n<p>- Là loại thước thẳng dùng cho học sinh, chiều dài 30cm.</p>\n<p>- Thước được cấu tạo từ nhựa cứng, trong suốt, có độ bền cao.</p>\n<p>- Mặt thước chừa nhãn để học sinh ghi tên.</p>\n<p>- Nhựa chất lượng cao, an toàn không độc hại.</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong> 01 cây/ túi nilon, 200 cây/thùng</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1011, '             Kéo văn phòng SC-015         ', 'keo-van-phong-sc-015', '<div class=\"description short\" itemprop=\"description\">\n<p><strong><u>Đặc điểm: </u></strong></p>\n<p>- Đây là sản phẩm kéo cỡ vừa, dành cho văn phòng với kiểu dáng đơn giản, phối màu thanh lịch. Kéo cầm vừa tay, cắt êm, nhạy.</p>\n<p>- Lưỡi kéo làm bằng thép không gỉ.</p>\n<p>- Đặc biệt kéo này có phần lưỡi kéo dài và dày giúp cho kéo này có lực cắt rất khỏe và bền.</p>\n<p>- Phần tay cầm kéo theo công nghệ chịu lực cắt, không làm đau tay.</p>\n<p>-  4 màu thân kéo đa dạng sự lựa chọn</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong></p>\n<p>01 kéo/ blister card, 10 cây/ hộp, 120 cây/ thùng</p>\n<p><strong><u>Bảo quản:</u></strong></p>\n<p>Để nơi khô thoáng, tránh nơi ẩm ướt</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1010, '             Kéo văn phòng SC-014         ', 'keo-van-phong-sc-014', '<div class=\"description short\" itemprop=\"description\">\n<p><strong><u>Đặc điểm:</u></strong></p>\n<p>- Đây là sản phẩm kéo cỡ vừa, dành cho văn phòng với kiểu dáng đơn giản, phối màu thanh lịch. Kéo cầm vừa tay, cắt êm, nhạy.</p>\n<p>- Lưỡi kéo làm bằng thép không gỉ.</p>\n<p>- Phần tay cầm kéo theo công nghệ chịu lực cắt, không làm đau tay.</p>\n<p>- Có 4 màu thân kéo đa dạng sự lựa chọn</p>\n</div>', '<div class=\"description\" itemprop=\"description\">\n<p><strong><u>Đóng gói:</u></strong></p>\n<p>01 kéo/ blister card, 20 cây/ hộp, 12 hộp (240 cây)/thùng</p>\n<p><strong><u>Bảo quản:</u></strong></p>\n<p>Để nơi khô thoáng, tránh nơi ẩm ướt</p>\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:10:21'),
(1009, 'Bút phấn nước CM-01', 'but-phan-nuoc-cm-01', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Đ&acirc;y l&agrave; sản phẩm mới, mang t&iacute;nh đột ph&aacute; cho d&ograve;ng sản phẩm phấn viết bảng được ph&aacute;t triển bởi Tập đo&agrave;n Thi&ecirc;n Long.</p>\r\n<p>- Sản phẩm c&oacute; nhiều ưu điểm nổi bật:</p>\r\n<p>&nbsp;+ Sản phẩm được thiết kế như một c&acirc;y b&uacute;t l&ocirc;ng bảng gi&uacute;p cho việc cầm nắm sử dụng thuận tiện, dễ d&agrave;ng.</p>\r\n<p>&nbsp;+ Vừa dễ cất giữ, lại sạch sẽ, kh&ocirc;ng lo việc bụi phấn b&aacute;m ra tay, bị g&atilde;y như c&aacute;c loại phấn thường.</p>\r\n<p>&nbsp;+ Khi viết v&agrave; x&oacute;a kh&ocirc;ng tạo ra bụi, th&acirc;n thiện với m&ocirc;i trường v&agrave; bảo vệ sức khỏe người sử dụng.</p>\r\n<p>&nbsp;+ Viết được tr&ecirc;n nhiều bề mặt vật liệu: bảng đen, bảng trắng, k&iacute;nh, tường, c&aacute;c bề mặt nhẵn... Kh&aacute;ch h&agrave;ng c&oacute; thể thỏa th&iacute;ch sử dụng để học tập, ghi ch&uacute; th&ocirc;ng tin v&agrave; dễ d&agrave;ng lau ch&ugrave;i với c&aacute;c loại vải mềm.</p>\r\n<p>&nbsp;+ Thay ống mực dễ d&agrave;ng.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong><u>Đ&oacute;ng g&oacute;i:</u></strong></p>\r\n<p>2 c&acirc;y/vỉ, 500 c&acirc;y/th&ugrave;ng</p>\r\n<p><strong><u>Bảo quản:</u></strong></p>\r\n<p>Lắc đều trước khi sử dụng. Đậy nắp sau khi sử dụng. Để b&uacute;t nằm ngang hoặc theo hướng l&ecirc;n tr&ecirc;n, tuyệt đối kh&ocirc;ng để b&uacute;t hướng xuống.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:41:56'),
(1003, 'Gôm tẩy E-06', 'gom-tay-e-06', '<div class=\"description short\" itemprop=\"description\">\r\n<p><u><strong>Đặc điểm:&nbsp;</strong></u></p>\r\n<p>- Sản phẩm được l&agrave;m bằng chất liệu Hypolyme cao cấp, sử dụng cho việc b&ocirc;i x&oacute;a tr&ecirc;n giấy.</p>\r\n<p>- G&ocirc;m/tẩy dẻo dai, &iacute;t bụi trong qu&aacute; tr&igrave;nh b&ocirc;i x&oacute;a, kh&ocirc;ng l&agrave;m r&aacute;ch giấy.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><u><strong>Đ&oacute;ng g&oacute;i&nbsp;</strong></u></p>\r\n<p>30 cục/hộp, 40 hộp/(1.200 cục)/th&ugrave;ng</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 15, NULL, 14500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:37:48'),
(997, 'Băng keo 2 mặt BKH-05', 'bang-keo-2-mat-bkh-05', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Chất liệu: m&agrave;ng BOPP</p>\r\n<p>K&iacute;ch thước: 12 mm x 9Y</p>\r\n<p>Đ&oacute;ng g&oacute;i: 12 cuộn / c&acirc;y</p>\r\n<p>M&agrave;u sắc: Trong suốt</p>\r\n<p>Bảo quản: Nơi kh&ocirc; r&aacute;o, tr&aacute;nh lửa</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong>Đặc điểm:</strong></p>\r\n<p>Băng keo 2 mặt 12mmx9Y BKH-05 c&oacute; nhiều k&iacute;ch cỡ kh&aacute;c nhau với lớp keo mỏng nhưng d&iacute;nh chắc được bọc l&oacute;t 1 mặt giấy dễ d&agrave;ng sử dụng v&agrave; tiện lợi trong nhiều mục đ&iacute;ch kh&aacute;c nhau.</p>\r\n<p>K&eacute;o &ecirc;m nhẹ. Sản phẩm sau khi sử dụng băng keo kh&ocirc;ng bị ố v&agrave;ng theo thời gian v&agrave; kh&ocirc;ng thấm nước.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_4295_grande.jpg\" alt=\"bang keo 2 mat\"></p>\r\n<p><br><strong>Bảo quản:</strong></p>\r\n<p><br>_x000D_ Tr&aacute;nh xa nguồn nhiệt v&agrave; dầu mỡ.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_4294_grande.jpg\" alt=\"bang keo 2 mat\"></p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 14, NULL, 8978, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:20:31'),
(998, 'Băng keo 2 mặt mousse BKM-04', 'bang-keo-2-mat-mousse-bkm-04', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Chất liệu: m&agrave;ng BOPP</p>\r\n<p>K&iacute;ch thước: 48 mm x 9Y</p>\r\n<p>Đ&oacute;ng g&oacute;i: 6 cuộn / c&acirc;y</p>\r\n<p>M&agrave;u sắc: Trong suốt</p>\r\n<p>Bảo quản: Nơi kh&ocirc; r&aacute;o, tr&aacute;nh lửa</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_5215_grande.jpg\" alt=\"Băng keo 2 mặt mousse BKM-04\"></p>\r\n<p><strong>Đặc điểm:</strong><br>_x000D_ Băng keo 2 mặt 48mmx9Y BKM-04 c&oacute; nhiều k&iacute;ch cỡ kh&aacute;c nhau với lớp keo mỏng nhưng d&iacute;nh chắc được bọc l&oacute;t 1 mặt giấy dễ d&agrave;ng sử dụng v&agrave; tiện lợi trong nhiều mục đ&iacute;ch kh&aacute;c nhau.<br>_x000D_ K&eacute;o &ecirc;m nhẹ.<br>_x000D_ Sản phẩm sau khi sử dụng băng keo kh&ocirc;ng bị ố v&agrave;ng theo thời gian v&agrave; kh&ocirc;ng thấm nước.<br><strong>Bảo quản:</strong><br>_x000D_ Tr&aacute;nh xa nguồn nhiệt v&agrave; dầu mỡ.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_5214_grande.jpg\" alt=\"Băng keo 2 mặt mousse BKM-04\"></p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 14, NULL, 18000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:26:54'),
(990, 'Nước rữa tay lifebuoy túi 450G', 'nuoc-rua-tay-lifebuoy-tui-450g', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>T&uacute;i</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 56000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:52:40'),
(991, 'Pin Nút AG13', 'pin-nut-ag13', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li>\r\n<p><strong>Gi&aacute; b&aacute;n:&nbsp;</strong>11.000 VND&nbsp;<br>_x000D_ ( Gi&aacute; chưa bao gồm VAT )</p>\r\n</li>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>Vĩ/10 vi&ecirc;n</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 19000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:53:53'),
(992, 'Pin nút AG10', 'pin-nut-ag10', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li>\r\n<p><strong>Gi&aacute; b&aacute;n:&nbsp;</strong>11.000 VND&nbsp;<br>_x000D_ ( Gi&aacute; chưa bao gồm VAT )</p>\r\n</li>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>Vĩ/10 vi&ecirc;n</li>\r\n<li><strong>T&igrave;nh trạng:&nbsp;</strong>C&ograve;n h&agrave;ng</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p>- Loại pin : Pin&nbsp;Alkaline 1.5V<br>_x000D_ - Code : AG10, LR1130<br>_x000D_ - Volts : 1.5V<br>_x000D_ - Đ&oacute;ng g&oacute;i : Vỉ&nbsp;10 vi&ecirc;n<br>_x000D_ - HSX:&nbsp;Tianqiu China<br>_x000D_ - Xuất xứ: China&nbsp;</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 16000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:53:14'),
(993, 'Dây đeo thẻ nhân viên - Dây lụa', 'day-deo-the-nhan-vien-day-lua', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>sợi</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 28000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:55:02'),
(994, 'Dây đeo thẻ nhân viên - Dây Dù', 'day-deo-the-nhan-vien-day-du', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>sợi</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 22000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:54:45'),
(995, 'Băng keo giấy 36mmx22Y BKG-08', 'bang-keo-giay-36mmx22y-bkg-08', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Chất liệu: giấy</p>\r\n<p>K&iacute;ch thước: 24 mm x 22Y</p>\r\n<p>Đ&oacute;ng g&oacute;i: 12 cuộn / c&acirc;y</p>\r\n<p>Bảo quản: Nơi kh&ocirc; r&aacute;o, tr&aacute;nh lửa</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong>Đặc điểm:</strong><br>_x000D_ Băng keo giấy 24mmx22Y BKG-06 d&ugrave;ng để d&aacute;n v&agrave;o c&aacute;c sản phẩm cần ghi r&otilde; để tr&aacute;nh nhầm hoặc để phun sơn l&ecirc;n sản phẩm m&agrave; kh&ocirc;ng bị lem sơn ra chỗ kh&aacute;c.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_4334_grande.jpg\" alt=\"Băng keo giấy 36mmx22Y BKG-08\"></p>\r\n<p><br><strong>C&ocirc;ng dụng:</strong><br>_x000D_ - Sản phẩm được sử dụng phổ biến trong ng&agrave;nh &ocirc;t&ocirc; do loại giấy dai, kh&ocirc;ng r&aacute;ch v&agrave; khi sử dụng kh&ocirc;ng để lại keo tr&ecirc;n bền mặt sản phẩm.<br>_x000D_ - Đường cắt thẳng n&ecirc;n kh&ocirc;ng bị răng cưa sau khi th&aacute;o ra<br>_x000D_ - D&ugrave;ng để che chắn, cố định nilon hoặc giấy che chắn trong qu&aacute; tr&igrave;nh sơn.<br>_x000D_ - Tạo đường viền sắc n&eacute;t khi sơn<br>_x000D_ - C&oacute; thể tạo những đường cong m&agrave; kh&ocirc;ng bị r&aacute;ch ở những điểm uốn.<br>_x000D_ - Khi b&oacute;c gỡ kh&ocirc;ng bị r&aacute;ch, kh&ocirc;ng để lại keo tr&ecirc;n bề mặt chi tiết.</p>\r\n<p><br><strong>Sử dụng:</strong><br>_x000D_ - Sử dụng để che chắn, cố định nilon, v&agrave; giấy che chắn.<br>_x000D_ - Sử dụng để tạo đường chỉ, đường cong để tạo độ sắc n&eacute;t trong qu&aacute; tr&igrave;nh sơn</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_4335_grande.jpg\" alt=\"Băng keo giấy 36mmx22Y BKG-08\"></p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 14, NULL, 20000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:27:42'),
(996, 'Băng keo 2 mặt BKH-06', 'bang-keo-2-mat-bkh-06', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Chất liệu: m&agrave;ng BOPP</p>\r\n<p>K&iacute;ch thước: 24 mm x 9Y</p>\r\n<p>Đ&oacute;ng g&oacute;i: 12 cuộn / c&acirc;y</p>\r\n<p>M&agrave;u sắc: Trong suốt</p>\r\n<p>Bảo quản: Nơi kh&ocirc; r&aacute;o, tr&aacute;nh lửa</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong>Đặc điểm:</strong><br>_x000D_ Băng keo 2 mặt 24mmx9Y BKH-06 c&oacute; nhiều k&iacute;ch cỡ kh&aacute;c nhau với lớp keo mỏng nhưng d&iacute;nh chắc được bọc l&oacute;t 1 mặt giấy dễ d&agrave;ng sử dụng v&agrave; tiện lợi trong nhiều mục đ&iacute;ch kh&aacute;c nhau.<br>_x000D_ K&eacute;o &ecirc;m nhẹ.<br>_x000D_ Sản phẩm sau khi sử dụng băng keo kh&ocirc;ng bị ố v&agrave;ng theo thời gian v&agrave; kh&ocirc;ng thấm nước.<br><strong>Bảo quản:</strong><br>_x000D_ Tr&aacute;nh xa nguồn nhiệt v&agrave; dầu mỡ.</p>\r\n<p><img src=\"https://file.hstatic.net/1000230347/file/abl_4381_grande.jpg\" alt=\"Băng keo 2 mặt BKH-06 ẨN  Product Tabs\"></p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 14, NULL, 98975, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:24:32'),
(988, 'Nước Tẩy Bồn Cầu Duck 900ml', 'nuoc-tay-bon-cau-duck-900ml', '<div class=\"description short\" itemprop=\"description\">\r\n<p><strong>Đơn vị t&iacute;nh:&nbsp;</strong>Chai</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:55:41'),
(989, 'Nước Tẩy Bồn Cầu Vim 600ml', 'nuoc-tay-bon-cau-vim-600ml', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh: chai.</strong></li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 96000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:56:27'),
(985, 'Bột giặt OMO 800G', 'bot-giat-omo-800g', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>---</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 98000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:31:27'),
(986, 'Bột giặt OMO 400G', 'bot-giat-omo-400g', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>bịch</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 56000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:30:59');
INSERT INTO `sanphams` (`id`, `name`, `slug`, `description`, `content`, `status`, `images`, `scu`, `order`, `quantity`, `is_featured`, `thuonghieu_id`, `danhmuc_id`, `is_variation`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`) VALUES
(987, 'Nước rửa tay lifebuoy túi 450G', 'nuoc-rua-tay-lifebuoy-tui-450g', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>T&uacute;i</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n<h3>Nước rửa tay Lifebuoy chăm s&oacute;c da dạng t&uacute;i 450g</h3>\r\n<p>Diệt sạch đến 99,1% vi khuẩn chỉ trong 10 gi&acirc;y<br>_x000D_ Nước rửa tay Lifebuoy chăm s&oacute;c da&nbsp;450g&nbsp;với th&agrave;nh phần diệt khuẩn ti&ecirc;n tiến Active 5 v&agrave; tinh chất sữa kh&ocirc;ng chỉ l&agrave;m sạch s&acirc;u, ti&ecirc;u diệt 10 loại vi khuẩn l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y n&ecirc;n c&aacute;c vấn đề về sức khỏe m&agrave; c&ograve;n đem lại l&agrave;n da tay sạch m&aacute;t, l&aacute;ng mịn cho bạn v&agrave; cả gia đ&igrave;nh.</p>\r\n<p><img src=\"https://cdn02.static-adayroi.com/0/2016/04/05/1459841586566_4316523.jpg\" alt=\"Nước rửa tay Lifebuoy chăm s&oacute;c da dạng t&uacute;i 450g\"></p>\r\n<p>Gi&uacute;p l&agrave;m mềm da tay, tạo cảm gi&aacute;c dễ chịu<br>_x000D_ Nước rửa tay Lifebuoy&nbsp;gi&uacute;p bạn&nbsp;chăm s&oacute;c da với với hương thơm dễ chịu,&nbsp;tạo cảm gi&aacute;c&nbsp;thư gi&atilde;n.&nbsp;Bạn sẽ cảm thấy th&iacute;ch th&uacute; hơn khi được nắm đ&ocirc;i tay mềm mịn của c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><iframe src=\"https://www.youtube.com/embed/x1ktq8YDbjs\" width=\"600\" height=\"480\" frameborder=\"0\" scrolling=\"no\"></iframe></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Hướng dẫn sử dụng<br>_x000D_ -&nbsp;L&agrave;m ướt tay<br>_x000D_ -&nbsp;Lấy một lượng vừa đủ v&agrave;o l&ograve;ng b&agrave;n tay<br>_x000D_ -&nbsp;Tạo bọt v&agrave; massage nhẹ nh&agrave;ng trong 10 gi&acirc;y<br>_x000D_ -&nbsp;Xả sạch với nước</p>\r\n<p>Lưu &yacute;<br>_x000D_ - D&ugrave;ng t&uacute;i tiết kiệm đổ đầy chai khi d&ugrave;ng hết<br>_x000D_ - Tr&aacute;nh tiếp x&uacute;c với mắt<br>_x000D_ - Nếu d&iacute;nh v&agrave;o mắt, h&atilde;y rửa kỹ bằng nước<br>_x000D_ - Để xa tầm tay trẻ em</p>\r\n<p>Th&ocirc;ng tin thương hiệu</p>\r\n<table cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://cdn02.static-adayroi.com/0/2016/09/19/1474252578571_4685029.jpg\" alt=\"\"></td>\r\n<td>\r\n<p>Lifebuoy&nbsp;l&agrave; thương hiệu x&agrave; ph&ograve;ng kh&aacute;ng khuẩn b&aacute;n chạy số 1 thế giới&nbsp;v&agrave; đi đầu trong sứ mệnh đem lại sức khoẻ v&agrave; vệ sinh cho h&agrave;ng tỉ người. Hiện Lifebuoy được sở hữu bởi Unilever - tập đo&agrave;n đa quốc gia của Anh v&agrave; H&agrave; Lan. Sản phẩm của Lifebuoy gồm c&aacute;c loại: x&agrave; ph&ograve;ng, sữa tắm, dầu gội đầu, nước rửa tay.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 98000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:30:23'),
(981, 'giấy vệ sinh Sài Gòn', 'giay-ve-sinh-sai-gon', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>bịt</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p>Giấy Saigon l&agrave; sản phẩm xanh được sản xuất theo ti&ecirc;u chuẩn 5Gs đ&oacute; l&agrave;: Green Ideas - &Yacute; tưởng xanh; Green Structure of paper - Cấu tr&uacute;c sản phẩm xanh, an to&agrave;n cho sức khỏe; Green Technology - C&ocirc;ng nghệ sản xuất hiện đại, tiết kiệm nhi&ecirc;n liệu; Green Process - Sản xuất theo qui tr&igrave;nh kh&eacute;p k&iacute;n từ kh&acirc;u nguy&ecirc;n liệu đến khi xuất xưởng; Green Environment - Sản phẩm th&acirc;n thiện với m&ocirc;i trường bằng hệ thống xử l&yacute; nước thải hiện đại. Giấy Saigon được sản xuất từ nguồn bột giấy tốt nhất, kh&ocirc;ng chứa chất tẩy trắng độc hại OBA.</p>\r\n<p>Với c&aacute;c ti&ecirc;u chuẩn n&agrave;y, tất cả c&aacute;c sản phẩm mang nh&atilde;n hiệu Saigon lu&ocirc;n đảm bảo sự trắng s&aacute;ng tự nhi&ecirc;n v&agrave; an to&agrave;n cho sức khỏe người ti&ecirc;u d&ugrave;ng.</p>\r\n<p>Đặc biệt, nh&atilde;n h&agrave;ng Saigon thể hiện cam kết bảo vệ sức khoẻ người ti&ecirc;u d&ugrave;ng qua chương tr&igrave;nh &ldquo;Lựa chọn xanh v&igrave; cuộc sống tốt đẹp hơn&rdquo; &amp; cam kết đảm bảo ti&ecirc;u chuẩn chất lượng sản phẩm với tổng trị gi&aacute; l&ecirc;n đến 1 tỷ đồng. Với chương tr&igrave;nh &ldquo;Bảo hiểm 1 tỷ đồng - cam kết chất lượng v&igrave; sức khỏe người ti&ecirc;u d&ugrave;ng&rdquo;, bất kỳ kh&aacute;ch h&agrave;ng bị tổn hại đến sức khỏe (ảnh hưởng đến da, h&ocirc; hấp hoặc ti&ecirc;u h&oacute;a) do sử dụng giấy Saigon đều được bồi thường.</p>\r\n<p>Đa dạng về mẫu m&atilde;, phong ph&uacute; về chủng loại, giấy Saigon mang đến nhiều cơ hội lựa chọn cho người ti&ecirc;u d&ugrave;ng trong cuộc sống thường ng&agrave;y.&nbsp;</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 59000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:56:55'),
(984, 'Nước Tẩy Bồn Cầu Gift 600ml', 'nuoc-tay-bon-cau-gift-600ml', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>---</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 65000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:56:04'),
(983, 'Khăn giấy hộp bless you', 'khan-giay-hop-bless-you', '<div class=\"description short\" itemprop=\"description\">\r\n<p>Khăn giấy lụa Bless you<a href=\"https://giayinsangha.com/danh-muc/62/giay-ve-sinh-gia-uu-dai-chat-luong-tai-tphcm.html\">&nbsp;</a>l&agrave; sự lựa chọn tuyệt vời nhất cho bạn v&agrave; những người th&acirc;n y&ecirc;u. Được sản xuất từ nguồn nguy&ecirc;n liệu cao cấp tự nhi&ecirc;n với c&ocirc;ng nghệ xử l&iacute; bằng kh&ocirc;ng kh&iacute; n&oacute;ng ở nhiệt độ cao 500 độ C tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại của ch&acirc;u &Acirc;u hiện đại, Bless you thật mềm mịn v&agrave; dai vượt trội, ho&agrave;n to&agrave;n tự nhi&ecirc;n, kh&ocirc;ng sử dụng h&oacute;a chất tẩy trắng độc hại n&ecirc;n bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m tuyệt đối khi sử dụng.</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 29000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:57:42'),
(982, 'Khăn giấy hộp puppy', 'khan-giay-hop-puppy', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>hộp</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<ul>\r\n<li>\r\n<p><strong>Đặc điểm:</strong>&nbsp;Khăn giấy lụa hộp Pulppy l&agrave; thương hiệu nổi tiếng v&agrave; th&ocirc;ng dụng được sản xuất bởi C&ocirc;ng ty giấy Pulppy của Đ&agrave;i Loan, c&oacute; trụ sở tại KCN VSIP1, B&igrave;nh Dương. Giấy c&oacute; phong c&aacute;ch thiết kế bao b&igrave; với hai m&agrave;u xanh v&agrave; đỏ l&agrave;m chủ đạo, hộp giấy h&igrave;nh chữ nhật với năm m&agrave;u tươi mới, cho bạn lựa chọn m&agrave;u sắc theo phong c&aacute;ch của m&igrave;nh.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ưu, nhược điểm khi sử dụng giấy Pulppy:&nbsp;</strong>Pulppy l&agrave; thương hiệu h&agrave;ng đầu về giấy vệ sinh ở Việt Nam đ&atilde; được người ti&ecirc;u d&ugrave;ng tin tường v&agrave; t&iacute;n nhiệm, n&oacute; c&oacute; sự ổn định về chất lượng v&agrave; dễ d&agrave;ng mua ở bất cứ đ&acirc;u. Tuy nhi&ecirc;n, song song với sự nổi tiếng của n&oacute; đ&oacute; l&agrave; gi&aacute; b&aacute;n cao hơn nhiều so với nhửng sản phẩm c&oacute; chất lượng tương đương.</p>\r\n</li>\r\n</ul>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 19900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:58:04'),
(977, 'Nước rửa tay lifebuoy 500 ml', 'nuoc-rua-tay-lifebuoy-500-ml', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>Chai</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p>Chức năng:<br>_x000D_ &nbsp;&nbsp;&nbsp;&nbsp; T&aacute;c dụng khử m&ugrave;i, diệt khuẩn v&agrave; chất tạo hương thơm, độ mềm mại.<br>_x000D_ &nbsp;&nbsp;<br>_x000D_ Nh&atilde;n hiệu:&nbsp;Lifebuoy<br><br>_x000D_ H&atilde;ng sản xuất:&nbsp;Unilever Việt Nam</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 67000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:58:39'),
(978, 'Nước lau sàn Sunlight 4Kg', 'nuoc-lau-san-sunlight-4kg', '<div class=\"description short\" itemprop=\"description\">\r\n<h2><strong>Đặc điểm:</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm nước lau s&agrave;n mang thương hiệu Sunlight thuộc Tập đo&agrave;n Unilever nổi tiếng, đ&oacute;ng g&oacute;i theo can 4kg sử dụng phổ biến trong văn ph&ograve;ng chuy&ecirc;n nghiệp.</h2>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Chất lượng:</strong>&nbsp;ch&iacute;nh h&atilde;ng Unilever<br>_x000D_ &nbsp;</p>\r\n<p><strong>Quy c&aacute;ch:</strong>&nbsp;đ&oacute;ng g&oacute;i 4kg/1 can<br>_x000D_ &nbsp;</p>\r\n<p><strong>Xuất xứ :&nbsp;</strong>Việt Nam</p>\r\n</div>', '<div class=\"description\" itemprop=\"description\">&nbsp;</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 89000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:58:26'),
(979, 'Giấy vệ sinh An An', 'giay-ve-sinh-an-an', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>bịt</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><strong>Đặc điểm:</strong>&nbsp;l&agrave; sản phẩm&nbsp;giấy vệ sinh cực kỳ th&ocirc;ng dụng trong mọi văn ph&ograve;ng chuy&ecirc;n nghiệp, nh&agrave; xưởng, x&iacute; nghiệp...</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Chất lượng:</strong>&nbsp;trắng - dai - kh&ocirc;ng c&oacute; bụi giấy. bột giấy remix 50-50<br>_x000D_ &nbsp;</p>\r\n<p><strong>Quy c&aacute;ch:</strong>&nbsp;giấy 2 lớp, đ&oacute;ng g&oacute;i 2 cuộn/1 bloc, 10 cuộn/1 c&acirc;y, 100 cuộn/1 b&agrave;nh giấy.<br>_x000D_ &nbsp;</p>\r\n<p><strong>Xuất xứ :&nbsp;</strong>Việt Nam</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Bảo quản:&nbsp;</strong>Nhiệt độ: 10 ~ 55&ordm; C,&nbsp;Độ ẩm: 55 ~ 95% RH,&nbsp;Tr&aacute;nh xa nguồn nhiệt, dầu mỡ.</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:52:06'),
(980, 'giấy vệ sinh pulppy', 'giay-ve-sinh-pulppy', '<div class=\"description short\" itemprop=\"description\">\r\n<ul>\r\n<li><strong>Đơn vị t&iacute;nh:&nbsp;</strong>bịt</li>\r\n</ul>\r\n</div>', '<div class=\"description\" itemprop=\"description\">\r\n<p><em><strong>Giấy vệ sinh Pulppy</strong></em>&nbsp;l&agrave; thương hiệu được sản xuất bởi C&ocirc;ng ty giấy Pulppy của Đ&agrave;i Loan.</p>\r\n<p>Giấy Pulppy c&oacute; phong c&aacute;ch thiết kế bao b&igrave; với hai m&agrave;u xanh v&agrave; đỏ l&agrave;m chủ đạo, cuộn giấy cao 10cm, đường k&iacute;nh cuộn # 10cm, đường k&iacute;nh l&otilde;i 4,2cm (&Oslash; 42); tr&ecirc;n mặt giấy c&oacute; hoa văn chấm bi nhỏ v&agrave; h&igrave;nh con c&aacute; heo Giấy Pulppy c&oacute; ba quy c&aacute;ch đ&oacute;ng g&oacute;i l&agrave; bao 10 (5 cặp/ bao), bao 6 v&agrave; bao 9.</p>\r\n<p>D&agrave;nh cho l&agrave;n da nhạy cảm bởi&nbsp;<a href=\"http://thegioigiayvn.net/news/detail/721/277/giay-ve-sinh-pulppy.cnv\">giấy Pulppy</a>&nbsp;được sản xuất từ bột giấy nguy&ecirc;n chất tốt nhất, trắng tự nhi&ecirc;n v&agrave; kh&ocirc;ng c&oacute; h&oacute;a chất tẩy trắng g&acirc;y độc hại.</p>\r\n<p>&nbsp;</p>\r\n<p>C&ocirc;ng thức sản xuất c&ocirc;ng nghệ ch&acirc;u &Acirc;u cải tiến mới gi&uacute;p thấm h&uacute;t tốt hơn, dai hơn v&agrave; mềm mại hơn c&aacute;c loại giấy kh&aacute;c.Kỹ thuật &eacute;p hoa văn ti&ecirc;n tiến &aacute;p dụng c&ocirc;ng nghệ Đức mang lại cảm gi&aacute;c thật thoải m&aacute;i khi sử dụng giấy Pulppy.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ưu, nhược điểm khi sử dụng&nbsp;giấy Pulppy&nbsp;:</strong></p>\r\n<p>Pulppy l&agrave; thương hiệu h&agrave;ng đầu về giấy vệ sinh ở Việt Nam đ&atilde; được người ti&ecirc;u d&ugrave;ng tin tường v&agrave; t&iacute;n nhiệm, n&oacute; c&oacute; sự ổn định về chất lượng v&agrave; dễ d&agrave;ng mua ở bất cứ đ&acirc;u.Tuy nhi&ecirc;n, song song với sự nổi tiếng của n&oacute; đ&oacute; l&agrave; gi&aacute; b&aacute;n cao hơn nhiều so với những sản phẩm c&oacute; chất lượng tương đương.</p>\r\n</div>', 'Active', NULL, NULL, NULL, NULL, NULL, 6, 13, NULL, 72000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-20 08:10:21', '2025-04-20 08:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieus`
--

DROP TABLE IF EXISTS `thuonghieus`;
CREATE TABLE IF NOT EXISTS `thuonghieus` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuonghieus`
--

INSERT INTO `thuonghieus` (`id`, `name`, `slug`, `description`, `status`, `order`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(2, 'Anh', 'anh', NULL, 'Active', '0', '', '', '2025-04-11 10:30:11', '2025-04-11 10:30:11'),
(3, 'Nhật', 'nhat', NULL, 'Active', '0', '', '', '2025-04-11 10:30:20', '2025-04-11 10:30:20'),
(4, 'Mĩ', 'mi', NULL, 'Active', '0', '', '', '2025-04-11 10:30:25', '2025-04-11 10:30:25'),
(6, 'No Brand', 'no-brand', NULL, 'Active', '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Thanh', 'admin@gmail.com', '$2y$10$RuRyc5iBCvmrKLO2VVpBcuavGhXKrOgn6tmAIjrwNR3oieRlwnWWq', 'Admin', '2024-04-28 19:55:28', '2024-04-28 19:55:28'),
(2, 'thanh2', 'thanh2@gmail.com', '$2y$10$4FW2lchEcy5BRQufYeImQ.x7l0hVYP0qHexHlzWsUZ7N9F7d/TF1u', 'NA', '2024-04-28 20:47:50', '2024-04-28 20:47:50'),
(13, 'Thurman Schumm', 'nathaniel09@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(14, 'Dr. Elinor Strosin I', 'kris.price@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(15, 'Darby Haag', 'halie.ruecker@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(16, 'Ms. Katrina Larson MD', 'elliott.purdy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(17, 'Filiberto Legros III', 'schoen.jedediah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(18, 'Eveline Price', 'nova.lindgren@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(19, 'Cade Wisozk', 'hilpert.oswald@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(20, 'Shanel Farrell', 'jast.rod@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(21, 'Elinore Flatley', 'kody02@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(22, 'Retha Larson', 'skiles.laurine@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(23, 'Wiley Murazik Sr.', 'vhessel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(24, 'Dayna Boehm', 'alvis03@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(25, 'Marco Crooks', 'cronin.alessandra@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(26, 'Jaquan Price Jr.', 'estroman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(27, 'Marvin Paucek', 'wyman01@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(28, 'Willow Maggio', 'katelin19@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(29, 'Ms. Helena Greenholt', 'emard.kasey@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(30, 'Jeff Legros', 'pedro25@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(31, 'Mollie Pacocha', 'anastasia.runolfsson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(32, 'Jaida Padberg', 'pcrist@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(33, 'Alena Graham', 'viviane.hackett@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(34, 'Euna Gorczany', 'bashirian.maia@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(35, 'Cole Runolfsdottir', 'zhackett@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(36, 'Ms. Mariah Mayer IV', 'beau.lesch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(37, 'Ms. Kailyn Anderson IV', 'geoffrey.white@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(38, 'Mrs. Carrie Runolfsson', 'gschmidt@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(39, 'Marina Heller IV', 'wconsidine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(40, 'Sammy O\'Hara', 'ydaniel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(41, 'Prof. Adele Lakin', 'lauryn.larkin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(42, 'Mr. Olaf Hoeger', 'isaiah.klocko@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(43, 'Ryley Rodriguez', 'cmurazik@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(44, 'Prof. Nettie McDermott DVM', 'rice.alberto@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(45, 'Miss Annalise Howe', 'ntoy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(46, 'Dr. Celestine Dooley', 'jacobi.camron@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(47, 'Paige Murphy PhD', 'schinner.otilia@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(48, 'Branson VonRueden', 'labadie.clotilde@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(49, 'Isobel Jakubowski IV', 'roman.dubuque@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(50, 'Gisselle Monahan', 'turcotte.martine@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(51, 'Fermin Cremin', 'ritchie.eduardo@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(52, 'Mr. Brycen Tremblay MD', 'mills.cade@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(53, 'Jillian Sipes', 'crawford71@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(54, 'Cornelius Marks', 'junius.green@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(55, 'Keenan Hintz', 'erling28@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(56, 'Declan Heller PhD', 'fadel.odell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(57, 'Henderson Hoeger II', 'jwilkinson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(58, 'Kassandra Lowe', 'qconroy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(59, 'Chase Hagenes', 'gwisoky@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(60, 'Nikki Gaylord I', 'lauretta.ruecker@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(61, 'Audreanne Bahringer', 'ynolan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(62, 'Nayeli Kihn Sr.', 'kmckenzie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(63, 'Christop Bruen', 'maybelle23@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(64, 'Kiel Osinski', 'walter.myron@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(65, 'Dr. Bradford Parker DDS', 'xkoss@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(66, 'Eda Hettinger', 'hwatsica@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(67, 'Prof. Rosella Miller II', 'elva35@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(68, 'Vena Prosacco', 'brigitte24@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(69, 'Monserrate Lind', 'fritsch.karlee@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(70, 'Oma Morissette', 'ottis45@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(71, 'Alvina Kunde', 'adolfo26@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(72, 'Mr. Robb Zieme', 'cummerata.trycia@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(73, 'Hiram Zulauf', 'kohler.maverick@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(74, 'Ms. Enola Torp', 'phodkiewicz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(75, 'Keira Stroman', 'lilyan77@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(76, 'Americo Kuhn', 'welch.melisa@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(77, 'Velda Marks', 'issac.jacobson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(78, 'Ms. Lia Jones DVM', 'daron18@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(79, 'Dr. Adrain Weimann IV', 'rey.gorczany@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(80, 'Jamal Wiegand IV', 'torphy.markus@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(81, 'Dr. Ryder Wyman', 'rippin.eula@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44'),
(82, 'Prof. Thea Becker', 'mcclure.cheyenne@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NA', '2024-04-29 23:14:44', '2024-04-29 23:14:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
