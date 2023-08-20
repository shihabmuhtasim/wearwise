-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2023 at 07:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wearwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `reference_code` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `name`, `phone`, `username`, `email`, `password`, `reference_code`, `created_at`, `updated_at`) VALUES
(1, 'Shihab ', '01993043534', 'shihabmuhtasim', 'shihabmuhtasim@gmail.com', '1', 'ABCD', NULL, NULL),
(2, 'Test1', '01993043534', 'test1', 'shihab.muhtasim@g.bracu.ac.bd', 'eyJpdiI6IkxCQWlHaEpGMTN5WGxJNUhKSW9xSXc9PSIsInZhbHVlIjoieGZLOG1rL0d1dGloM2tiZXVyQ1lMQT09IiwibWFjIjoiY2EyODVlNTY3YTk1OWYzYjcwNzRkOTQzODFlYTJjOWUyMjgzNDIwNTA1NzA5MmY5MTRlZTIzNDc1NTAyYThlYiIsInRhZyI6IiJ9', 'test1', '2023-07-28 03:23:27', '2023-07-28 03:23:27'),
(3, 'Tasnia Ayesha', '34354543', 'tasnia', 't@hmail.com', 'eyJpdiI6IjRBdGtqZlowVmxzb1dYN1ZxT2VnaXc9PSIsInZhbHVlIjoiSGZ0WHd3UE5GV3ZYNmZKa1cyMXRlQT09IiwibWFjIjoiZjAwZDU2ZmY1ZWQ1ZTkxZjk4YWU0ZGY3YjY1NDAyYTJkZjhjNmMxYjMzOTQ5ZjNjZTA1MjhmYTlkMzVhMGQ4YyIsInRhZyI6IiJ9', 'AYESH', '2023-07-28 11:38:09', '2023-07-28 11:38:09'),
(4, 'Ayesha', '019696969961', 'panda', 'tasnia@gmail.com', 'eyJpdiI6ImhvWFpHRUFzVitHa2dHWW1OMmtVekE9PSIsInZhbHVlIjoiOFRWQjNPY3RKZEsvWFExRzRDbWRnZz09IiwibWFjIjoiMWJhYzUzMTRmNmNhODZjMjU3NTgyNTM4MDk0OWI0YTMxZmE1NjFkNDZhYmJjNmU2NDNkNjcyNDY4MjVmMzJhZiIsInRhZyI6IiJ9', 'PANDA', '2023-07-28 12:59:36', '2023-07-28 12:59:36'),
(5, 'lab 1', '45454', 'lab1', 'lab1@gmail.com', 'eyJpdiI6IkJSdHQzT2pxVCtpQlRXZG1SOHpyK0E9PSIsInZhbHVlIjoiUDQxK0dEZG9nclgwcXpYOXpVTUNMdz09IiwibWFjIjoiN2VmZGRmNDFiNzFiYTYwOThkNDNmNTU3NmZhZWQ5NTcxODYyNzNlYmQxNzdkMmE2NzY2ZWM4MzY2OTk4MDM3NyIsInRhZyI6IiJ9', 'XYZ', '2023-07-29 23:46:23', '2023-07-29 23:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `apparels`
--

CREATE TABLE `apparels` (
  `apparel_id` bigint(20) UNSIGNED NOT NULL,
  `apparel_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apparels`
--

INSERT INTO `apparels` (`apparel_id`, `apparel_name`, `created_at`, `updated_at`) VALUES
(1, 'Suits', '2023-07-28 05:47:56', '2023-07-28 05:47:56'),
(2, 'Shirt', '2023-07-28 05:57:03', '2023-07-28 05:57:03'),
(3, 'Panjabi', '2023-07-28 11:39:02', '2023-07-28 11:39:02'),
(4, 'Gown', '2023-07-28 13:03:09', '2023-07-28 13:03:09'),
(5, 'Skirt', '2023-08-19 11:55:27', '2023-08-19 11:55:27'),
(6, 'Drop shoulder tshirt', '2023-08-19 11:57:13', '2023-08-19 11:57:13'),
(7, 'Sneakers', '2023-08-19 13:55:15', '2023-08-19 13:55:15'),
(8, 'Boots', '2023-08-19 13:55:27', '2023-08-19 13:55:27'),
(9, 'Block heels', '2023-08-19 14:25:05', '2023-08-19 14:25:05'),
(10, 'loafer', '2023-08-19 14:26:15', '2023-08-19 14:26:15'),
(11, 'slippers', '2023-08-19 14:26:23', '2023-08-19 14:26:23'),
(12, 'Saree', '2023-08-19 14:41:18', '2023-08-19 14:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `Product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `day`, `vendor_name`, `quantity`, `image`, `Product_id`, `user_id`, `username`, `created_at`, `updated_at`) VALUES
(3, 'labuser', 'a@gmail.com', '4545', 'fhfjf', 'Blue shirt', '100', NULL, NULL, '1', '1690545468.jpg', '1', '4', 'labuser', '2023-08-06 15:38:23', '2023-08-06 15:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(1, 'Men Casual Wear', '2023-07-28 05:48:05', '2023-07-28 05:48:05'),
(2, 'Men Formal wear', '2023-07-28 05:56:52', '2023-07-28 05:56:52'),
(3, 'Women Party wear', '2023-07-28 13:00:17', '2023-07-28 13:00:17'),
(4, 'women casual wear', '2023-08-19 11:55:11', '2023-08-19 11:55:11'),
(5, 'Mens shoe', '2023-08-19 13:54:53', '2023-08-19 13:54:53'),
(6, 'Womens Shoe', '2023-08-19 14:24:40', '2023-08-19 14:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `name`, `comment`, `created_at`, `updated_at`) VALUES
(1, '2', 'test1', 'hi', '2023-08-17 11:37:19', '2023-08-17 11:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `registered_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_vendors`
--

CREATE TABLE `final_vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `buisness_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `buisness_lisence_no` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_vendors`
--

INSERT INTO `final_vendors` (`id`, `name`, `phone`, `username`, `email`, `password`, `buisness_name`, `address`, `buisness_lisence_no`, `created_at`, `updated_at`) VALUES
(6, 'Mr Hannan Chowdhuri', '01283646373', 'fashionx', 'hannan@gmail.com', 'eyJpdiI6ImtSNGpGT2tEZ0hsdEw3SStTcmd0cnc9PSIsInZhbHVlIjoiRStrUVh0a0FQdWV6Y2R4OGdkNVpDQT09IiwibWFjIjoiOTBmYTcxYTlmZmUzNDA4M2MxNmZmODIwODg0NTEwYzk2OTU0MjQ0ODVlODA2YmM0ZmFhNGZhOWQzOTI4ZjNlMSIsInRhZyI6IiJ9', 'Fashion X', 'Mohakhali, Dhaka', '2343242334', '2023-07-28 11:41:06', '2023-07-28 11:41:06'),
(7, 'Mr Hannan', '345345', 'myntra', 'hanu@gmail.com', 'eyJpdiI6Ik40RytkL1phQVAzd0p3SVp6U285dXc9PSIsInZhbHVlIjoiajZuZVRXNjYrdlRqSDg4aFpWWU5Pdz09IiwibWFjIjoiOTM5MTM0ZjlmZjZhODMzZjEwNWY4NTY3MWU2ZWMzYjg3NjllYWU0OGM4ZDhjMmVhN2RlODNlNDc3OTg3NjkwMSIsInRhZyI6IiJ9', 'Myntra', 'Mogbazar', '342423423', '2023-07-28 13:08:51', '2023-07-28 13:08:51'),
(8, 'Mr. jamil', '01993043567', 'sailor', 'sailor@gmail.com', 'eyJpdiI6Iis5NGtiNHA3eDlpMmhCZWlIRllCelE9PSIsInZhbHVlIjoiTnRRWnkxWXdVOFhqOWhNWWROd1FhZz09IiwibWFjIjoiZjE4YTVhNmE5NGY5YWM0MDVjZDcxNWM2YzQ1YzNkMWQzMGQyMjNiYWFlYzMzMmRiYzNlYjUyZjEyYWIwOGI2YSIsInRhZyI6IiJ9', 'Sailor', 'dhaka', '23456', '2023-08-19 11:06:47', '2023-08-19 11:06:47'),
(9, 'Ms. Ayesha', '01993012345', 'styleash', 'styleash@gmail.com', 'eyJpdiI6IjZHYUcxa1UyeGtnMitvMVVTaDhDV1E9PSIsInZhbHVlIjoiK3R3N1d6bDdNYVIxcWxoK3ZoUDVyQT09IiwibWFjIjoiNjYwYmRlM2MzMjlhNmVlMDA1ZDliYWViZmNkMWFhMTdiODRhNjk2MTJmODg4MzU3MTAxYmNkNzkxY2NmYjE5NSIsInRhZyI6IiJ9', 'styleash', 'dhaka', '4567', '2023-08-19 11:27:06', '2023-08-19 11:27:06'),
(10, 'mr. fahim', '0135687358', 'rise', 'rise@gmail.com', 'eyJpdiI6IitlZnNxMEpIU2J6NmhIOVZHMVoxZUE9PSIsInZhbHVlIjoia01Kc1JQY25NM2gvNHlMZUd4YlRXZz09IiwibWFjIjoiZmY5Y2YzYTg4NzEwNTk3NTEwNmUxNDRjMDE2MzEyNWI1ODNkZTg3NzI2YjlkNTcyZTQ2MWRjOTI2MDA2YzlkNSIsInRhZyI6IiJ9', 'rise', 'dhaka', '9864', '2023-08-19 11:27:17', '2023-08-19 11:27:17'),
(11, 'mr. siam', '01873596452', 'holago', 'holago@gmail.com', 'eyJpdiI6IjMwZjBjL1cwRkNiSEtJKzg2dmd1THc9PSIsInZhbHVlIjoiTDI2UFRMOCtiY2V4dTJyTVpWc2YyZz09IiwibWFjIjoiYjYxYjJhMmJiNTExNDYxMTg0NTkxOGUxMmU4ODg4NzBjMGU4MjFjNzRkZDYxMTM1ZGQyNzA1NjhlODY0MTkyMiIsInRhZyI6IiJ9', 'holago', 'dhaka', '654', '2023-08-19 11:27:23', '2023-08-19 11:27:23'),
(12, 'mr. rafsan', '0156289348', 'justice', 'justice@gmail.com', 'eyJpdiI6Ik5wNDY5Y0g5WGJJSEdLUDIzVHNzOXc9PSIsInZhbHVlIjoiTUIrRWVjQTZLMWtScTRPYzBBRUJrQT09IiwibWFjIjoiZWFlZDFhMTAxYjIxOWY2ZDJmZWI4ODBkZTQ3YTY0ZDk3ZmUxOTQyYmE4OWIxNWY4NTVmMDcwMTM5ODllNWMzYyIsInRhZyI6IiJ9', 'justice', 'dhaka', '673', '2023-08-19 11:27:36', '2023-08-19 11:27:36'),
(13, 'Ms. misha', '01278340965', 'fashionista', 'fashionista@gmail.com', 'eyJpdiI6ImZUL2l6UU1rdEJTeXR0MlhEaWxYbFE9PSIsInZhbHVlIjoiN3I1czJrRitOdVRpNGRyQzViNXZiQT09IiwibWFjIjoiYjZlYjczNGUzMjJmYjhlNmYxMzNlYTE4NjVjOWI5ZjQ0OWQ2ODY0ODllNDUwMTQ3MGI0Yzg2YjZkMjg3YjRjOCIsInRhZyI6IiJ9', 'fashionista', 'dhaka', '1289', '2023-08-19 11:27:41', '2023-08-19 11:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(105, '2023_07_09_042313_create_orders_table', 1),
(111, '2023_07_27_204548_create_carts_table', 2),
(200, '2023_07_09_042313_create_orders_table', 7),
(203, '2023_07_27_204548_create_carts_table', 7),
(223, '2014_10_12_000000_create_users_table', 8),
(224, '2014_10_12_100000_create_password_resets_table', 8),
(225, '2014_10_12_200000_add_two_factor_columns_to_users_table', 8),
(226, '2019_08_19_000000_create_failed_jobs_table', 8),
(227, '2019_12_14_000001_create_personal_access_tokens_table', 8),
(228, '2023_06_29_224104_create_admin_info_table', 8),
(229, '2023_07_02_021309_create_catagories_table', 8),
(230, '2023_07_02_040243_create_apparels_table', 8),
(231, '2023_07_03_042032_create_products_table', 8),
(232, '2023_07_09_031721_create_customers_table', 8),
(233, '2023_07_27_125638_create_usersignups_table', 8),
(234, '2023_07_27_204129_create_sessions_table', 8),
(235, '2023_07_28_074501_create_vendorsignups_table', 8),
(236, '2023_07_28_083919_create_final_vendors_table', 8),
(237, '2023_08_05_194907_create_carts_table', 8),
(238, '2023_08_05_195218_create_orders_table', 8),
(239, '2023_08_06_200708_create_temp_products_table', 8),
(240, '2023_08_13_004346_create_comments_table', 9),
(241, '2023_08_13_004522_create_replies_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `username`, `product_title`, `price`, `day`, `quantity`, `image`, `product_id`, `vendor_name`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(2, 'labuser', 'a@gmail.com', '4545', 'fhfjf', '4', 'labuser', 'Black panjabi', '120', NULL, '1', '1690566023.jpg', '2', NULL, 'cash on delivery', 'processing', '2023-08-06 15:38:13', '2023-08-06 15:38:13'),
(3, 'test1', 'shihab.muhtasim@g.bracu.ac.bd', '01993043534', '21301610', '5', 'test1', 'Blue shirt', '100', NULL, '1', '1690545468.jpg', '1', 'Wear Wise', 'cash on delivery', 'processing', '2023-08-11 03:49:14', '2023-08-11 03:49:14'),
(4, 'test1', 'shihab.muhtasim@g.bracu.ac.bd', '01993043534', '21301610', '5', 'test1', 'Black panjabi', '120', NULL, '1', '1690566023.jpg', '2', 'Wear Wise', 'cash on delivery', 'processing', '2023-08-11 03:51:00', '2023-08-11 03:51:00'),
(6, 'test1', 'shihab.muhtasim@g.bracu.ac.bd', '01993043534', '21301610', '5', 'test1', 'Blue shirt', '500', '5', '1', '1690545468.jpg', '1', 'Wear Wise', 'cash on delivery', 'processing', '2023-08-13 00:06:11', '2023-08-13 00:06:11'),
(7, 'test1', 'shihab.muhtasim@g.bracu.ac.bd', '01993043534', '21301610', '5', 'test1', 'Black panjabi', '6000', '12', '5', '1690566023.jpg', '2', 'Wear Wise', 'cash on delivery', 'processing', '2023-08-17 11:59:09', '2023-08-17 11:59:09'),
(8, 'test1', 'shihab.muhtasim@g.bracu.ac.bd', '01993043534', '21301610', '5', 'test1', 'Antheaa', '2000', '5', '1', '1692294666.jpg', '9', 'Myntra', 'cash on delivery', 'processing', '2023-08-17 11:59:09', '2023-08-17 11:59:09'),
(9, 'test4', 'test4@gmail.com', '014673674', 'dhaka', '6', 'test4', 'pink gown', '2450', '7', '1', '1692467036.jpg', '10', 'fashionista', 'cash on delivery', 'processing', '2023-08-19 12:34:25', '2023-08-19 12:34:25'),
(10, 'test4', 'test4@gmail.com', '014673674', 'dhaka', '6', 'test4', 'black shirt', '2000', '4', '1', '1692466824.jpg', '11', 'fashionista', 'cash on delivery', 'processing', '2023-08-19 12:34:25', '2023-08-19 12:34:25'),
(11, 'test4', 'test4@gmail.com', '014673674', 'dhaka', '6', 'test4', 'Drop shoulder tshirt', '1500', '6', '1', '1692468357.jpg', '12', 'rise', 'cash on delivery', 'processing', '2023-08-19 12:34:25', '2023-08-19 12:34:25'),
(12, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'Antheaa', '2000', '5', '1', '1692294666.jpg', '9', 'Myntra', 'cash on delivery', 'processing', '2023-08-19 14:16:31', '2023-08-19 14:16:31'),
(13, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'New', '1200', '3', '1', '1691512755.png', '6', 'TEST1', 'cash on delivery', 'processing', '2023-08-19 14:16:31', '2023-08-19 14:16:31'),
(14, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'white sneakers', '8400', '12', '1', '1692475257.jpg', '14', 'holago', 'cash on delivery', 'processing', '2023-08-19 14:16:31', '2023-08-19 14:16:31'),
(15, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'black shirt', '2000', '4', '1', '1692466824.jpg', '11', 'fashionista', 'cash on delivery', 'processing', '2023-08-19 14:16:31', '2023-08-19 14:16:31'),
(16, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'Beige block heel', '400', '2', '1', '1692477232.jpg', '18', 'Sailor', 'cash on delivery', 'processing', '2023-08-19 14:52:16', '2023-08-19 14:52:16'),
(17, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'White saree', '1250', '5', '1', '1692477786.jpg', '19', 'Sailor', 'cash on delivery', 'processing', '2023-08-19 14:52:16', '2023-08-19 14:52:16'),
(18, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'Red panjabi', '1000', '5', '1', '1692478040.jpg', '21', 'Sailor', 'cash on delivery', 'processing', '2023-08-19 14:52:16', '2023-08-19 14:52:16'),
(19, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'Red gown', '2000', '5', '1', '1690571136.jpg', '3', 'Wear Wise', 'cash on delivery', 'processing', '2023-08-19 14:52:16', '2023-08-19 14:52:16'),
(20, 'test3', 'test3@gmail.com', '0145824683', 'dhaka', '7', 'test3', 'red skirt', '3178', '7', '1', '1692468807.jpg', '13', 'rise', 'cash on delivery', 'processing', '2023-08-19 14:52:16', '2023-08-19 14:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `catagory_id` varchar(255) NOT NULL,
  `apparel_id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `discounted_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `catagory_id`, `apparel_id`, `image`, `vendor_name`, `price`, `discounted_price`, `quantity`, `days`, `created_at`, `updated_at`) VALUES
(1, 'Blue shirt', 'kkj', '1', '2', '1690545468.jpg', 'Wear Wise', 100, 100, 20, 5, '2023-07-28 05:57:48', '2023-07-28 05:57:48'),
(2, 'Black panjabi', 'Cotton fablic panjabi. Washable.', '1', '3', '1690566023.jpg', 'Wear Wise', 120, 100, 30, 12, '2023-07-28 11:40:23', '2023-08-19 14:46:24'),
(3, 'Red gown', 'Buy Latest Designer Gown For Women', '3', '4', '1690571136.jpg', 'Wear Wise', 500, 400, 5, 5, '2023-07-28 13:05:36', '2023-07-28 13:06:25'),
(4, 'New', 'dgfef', '1', '2', '1690696093.jpg', 'Wear Wise', 122, 100, 123, 5, '2023-07-29 23:48:13', '2023-07-29 23:48:13'),
(6, 'New', 'fe', '1', '2', '1691512755.png', 'TEST1', 650, 400, 30, 3, '2023-08-08 10:40:52', '2023-08-08 10:40:52'),
(9, 'Antheaa', 'Teal Green & Brown Floral Dobby Woven Embellished Maxi Tiered Dress', '3', '4', '1692294666.jpg', 'Myntra', 500, 400, 40, 5, '2023-08-17 11:58:22', '2023-08-17 11:58:22'),
(10, 'pink gown', 'a gorgeous pink gown', '3', '4', '1692467036.jpg', 'fashionista', 500, 350, 19, 7, '2023-08-19 11:54:37', '2023-08-19 11:54:37'),
(11, 'black shirt', 'black full sleeves shirt', '2', '2', '1692466824.jpg', 'fashionista', 700, 500, 10, 4, '2023-08-19 11:54:41', '2023-08-19 11:54:41'),
(12, 'Drop shoulder tshirt', 'black drop shoulder tshirt', '1', '6', '1692468357.jpg', 'rise', 300, 250, 20, 6, '2023-08-19 12:18:09', '2023-08-19 12:18:09'),
(13, 'red skirt', 'a red skirt', '4', '5', '1692468807.jpg', 'rise', 500, 454, 20, 7, '2023-08-19 13:53:55', '2023-08-19 13:53:55'),
(14, 'white sneakers', 'a white sneakers', '5', '7', '1692475257.jpg', 'holago', 800, 700, 20, 12, '2023-08-19 14:08:52', '2023-08-19 14:08:52'),
(15, 'Brown boots', 'a brown boot for men', '5', '8', '1692475374.jpg', 'holago', 567, 500, 5, 3, '2023-08-19 14:09:00', '2023-08-19 14:09:00'),
(16, 'Black gown', 'a stunning black gown', '3', '4', '1692475985.jpg', 'Wear Wise', 567, 454, 5, 7, '2023-08-19 14:13:05', '2023-08-19 14:13:05'),
(17, 'White loafers', 'a white loafer', '5', '10', '1692477161.jpg', 'Sailor', 300, 180, 8, 4, '2023-08-19 14:49:34', '2023-08-19 14:49:34'),
(18, 'Beige block heel', 'A beige block heel', '6', '9', '1692477232.jpg', 'Sailor', 300, 200, 13, 2, '2023-08-19 14:49:40', '2023-08-19 14:49:40'),
(19, 'White saree', 'A white saree', '3', '12', '1692477786.jpg', 'Sailor', 300, 250, 4, 5, '2023-08-19 14:49:47', '2023-08-19 14:49:47'),
(20, 'Black & White shirt', 'a black & white check shirt', '1', '2', '1692478146.jpg', 'Sailor', 300, 230, 8, 8, '2023-08-19 14:49:53', '2023-08-19 14:49:53'),
(21, 'Red panjabi', 'a washable red panjabi', '1', '3', '1692478040.jpg', 'Sailor', 300, 200, 6, 5, '2023-08-19 14:50:06', '2023-08-19 14:50:06'),
(22, 'Black sneakers', 'a comfortable black sneakers', '5', '7', '1692478700.jpg', 'rise', 350, 200, 7, 2, '2023-08-19 14:58:48', '2023-08-19 14:58:48'),
(23, 'Blue saree', 'A designer blue saree', '3', '12', '1692478587.jpg', 'rise', 400, 300, 8, 4, '2023-08-19 14:58:54', '2023-08-19 14:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_products`
--

CREATE TABLE `temp_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `catagory_id` varchar(255) NOT NULL,
  `apparel_id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `discounted_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_products`
--

INSERT INTO `temp_products` (`id`, `product_title`, `product_description`, `catagory_id`, `apparel_id`, `image`, `vendor_name`, `price`, `discounted_price`, `quantity`, `days`, `created_at`, `updated_at`) VALUES
(6, 'green panjabi', 'green panjabi', '1', '3', '1692467408.jpg', 'fashionista', 400, 300, 12, 4, '2023-08-19 11:50:08', '2023-08-19 11:50:08'),
(9, 'navy blue skirt', 'a navy blue skirt', '4', '5', '1692474740.jpg', 'rise', 567, 400, 30, 3, '2023-08-19 13:52:20', '2023-08-19 13:52:20'),
(11, 'Blue sneakers', 'a blue sneakers', '5', '7', '1692475315.jpg', 'holago', 676, 454, 5, 4, '2023-08-19 14:01:55', '2023-08-19 14:01:55'),
(15, 'Brown slippers', 'A brown slippers for women', '6', '11', '1692477310.jpg', 'Sailor', 300, 150, 10, 5, '2023-08-19 14:35:10', '2023-08-19 14:35:10'),
(16, 'Green gown', 'a green gown', '3', '4', '1692477622.jpg', 'Sailor', 500, 300, 9, 6, '2023-08-19 14:40:22', '2023-08-19 14:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usersignups`
--

CREATE TABLE `usersignups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `address` varchar(50) NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usersignups`
--

INSERT INTO `usersignups` (`id`, `name`, `phone`, `username`, `email`, `password`, `address`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'Test5', '01993043534', 't5', 'shihab.muhtasim@g.bracu.ac.bd', 'eyJpdiI6IlNRY2U2ZjVIS3pmdlRRS3lFNEtmNUE9PSIsInZhbHVlIjoiOVh1ZWR1TXNRWFRJMk51YUYwb25pdz09IiwibWFjIjoiMGJjNzc0MGViOTcxNTAzOGQ5MGI3MTNhMTlhYmE0MzNiNjAwNzhhNzIyODcwNWFkZTVlYTlkOGJiNzkxNWMzOCIsInRhZyI6IiJ9', '21301', NULL, '2023-07-28 03:25:48', '2023-07-28 03:25:48'),
(2, 'Nusaiba', '45454', 'nusaiba', 'n@g.bracu.ac.bd', 'eyJpdiI6IkVETXowdThGWFlXdlhrTmFUSnVSK3c9PSIsInZhbHVlIjoiNTVRQS9hbnZuZ0dyY3N4MVRjTlVCUT09IiwibWFjIjoiNTkwN2NmN2I1MDc1ZTE0NzZlMmEwMmQzODBhYTcwMmQ3NTJkY2NmNzc1NTdlYjJhMjg5M2Q4ODY5M2NlMzZjNCIsInRhZyI6IiJ9', 'Chorer elaka', NULL, '2023-07-28 09:35:59', '2023-07-28 09:35:59'),
(3, 'user1', '123412', 'user1', 'user1@gmail.com', 'eyJpdiI6Img1dDdLZkVqdWlyTHJPTXRzS2E1WlE9PSIsInZhbHVlIjoiTVh5ek9HODBiN3lHMzl1N29mR3YwUT09IiwibWFjIjoiNTI5MDYyZmY2YWU5MTE4MTAxZjEyZWQxYzZjMDVmODA4MGFlMzkzYTFlODZiNGJmYjM3NWM5YzFmMTAzYjNmMiIsInRhZyI6IiJ9', 'user', NULL, '2023-07-28 11:42:53', '2023-07-28 11:42:53'),
(4, 'labuser', '4545', 'labuser', 'a@gmail.com', 'eyJpdiI6ImxoUnJQMjdZZTgrbjBwc0l6a2NadXc9PSIsInZhbHVlIjoiNWRXWDJPaEhGMm40RUJvVjVBbXdudz09IiwibWFjIjoiMTZjYTBiYzcyOWRmZGIwMzE2NDNhYmVjM2JkYzE1YWY4MWQzOWEwODBhMjg3YTIzYjlkYTE5NWZlNTIwMzIxOCIsInRhZyI6IiJ9', 'fhfjf', NULL, '2023-07-29 23:51:37', '2023-07-29 23:51:37'),
(5, 'test1', '01993043534', 'test1', 'shihab.muhtasim@g.bracu.ac.bd', 'eyJpdiI6IkJkdXBRYzRXRGhOZW82RVRZK0t1MWc9PSIsInZhbHVlIjoiMndOekprNXlKaVJpQjZIRXhiUzQwdz09IiwibWFjIjoiODA4NGNjNTk2NDM2ZmYzOTE4ZDNkZTY3NmY1MTQ2YjliMGRkZWNkZTFkYjVkMWFiMzRiYTZkNWEyODQ0N2RhNCIsInRhZyI6IiJ9', '21301610', NULL, '2023-08-11 03:48:41', '2023-08-11 03:48:41'),
(6, 'test4', '014673674', 'test4', 'test4@gmail.com', 'eyJpdiI6IjhwNjBHYWw4Qjl5RGREdFFveGRmdEE9PSIsInZhbHVlIjoiMXBPcVJSdHlzV1FTdW9Mbm5ZaVZuQT09IiwibWFjIjoiODg3ZmEyMjhkZmE4MDgzNDNlOTQ4ZGMwNjJiZjQzNjIxZDM0MWU0Nzg1Mzg5YTJlYmRmY2RlZjUxNWMyMjdkYyIsInRhZyI6IiJ9', 'dhaka', NULL, '2023-08-19 12:32:27', '2023-08-19 12:32:27'),
(7, 'test3', '0145824683', 'test3', 'test3@gmail.com', 'eyJpdiI6IkZyN3E4c0dBMS9qWjFtRmxqR0xaV2c9PSIsInZhbHVlIjoic0FwdHdmOFZ4NXdncGRYZDRKYTY3dz09IiwibWFjIjoiNWRlYTg4M2IyYjVkMWJiNWQ1YjNlNjhmNmQxNTJmYmU3ZGQwZjY1ZTYwZTA1MWRjZDIwOTdlMGM3M2FiZmYwZSIsInRhZyI6IiJ9', 'dhaka', NULL, '2023-08-19 14:15:06', '2023-08-19 14:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `vendorsignups`
--

CREATE TABLE `vendorsignups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `buisness_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `buisness_lisence_no` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendorsignups`
--

INSERT INTO `vendorsignups` (`id`, `name`, `phone`, `username`, `email`, `password`, `buisness_name`, `address`, `buisness_lisence_no`, `created_at`, `updated_at`) VALUES
(6, 'Shihab Muhtasim', '01993043534', 'shihab', 'shihab.muhtasim@g.bracu.ac.bd', 'eyJpdiI6ImNLWjk4WmpmUXZuTlgvN0c0d0g5Q1E9PSIsInZhbHVlIjoiWVp3VllUWHpWa3ZCQzQrS3JuQUpxUT09IiwibWFjIjoiNDdlNjkyNjdkZDI4YWZlZTY1NzY3ZjdiNDA0ZWNmMWVhZWJiMDY2MjI0ODAyYzEzNTEzYjAzMjFhYzEyMTRhZiIsInRhZyI6IiJ9', 'TEST1', '21301610', '1234546', '2023-07-28 11:34:27', '2023-07-28 11:34:27'),
(7, 'Sole harvest', '01993043534', 'sole', 'shihab.muhtasim@g.bracu.ac.bd', 'eyJpdiI6IktONUpxcE9nVkNCemczbUFkbzhlOWc9PSIsInZhbHVlIjoiTTZKd1g2dFV0U0lRN3BRTGliaFFuQT09IiwibWFjIjoiOTU2Zjk3NWI2YmVmYTRlNzc0OGFhY2ZiODMyZTVlZDM5NDMzN2JlYjk3NGJlMTczOGIxOTUwZGNhNzZjMTIyNCIsInRhZyI6IiJ9', 'SOLE HARVEST', '21301610, Banani', '1234546', '2023-08-17 11:52:22', '2023-08-17 11:52:22'),
(14, 'mr. awnto', '01993043534', 'myntra', 'awnto@g.bracu.ac.bd', 'eyJpdiI6Imh4Tk5SbEM2akZCV2VMcThWbTVMT3c9PSIsInZhbHVlIjoiTXVJWDY1ajhXMk44c3lXMFdMNERJQT09IiwibWFjIjoiNTVmZTRmOWQ1YWRkNTllY2M3ZjAwOTg5ZGYzNjgyZjRiNDgwZjU5MWFmY2EwMzI2MjIwN2RiNzQxMTQzODJiYyIsInRhZyI6IiJ9', 'Myntra', 'dhaka', '5637', '2023-08-19 11:24:27', '2023-08-19 11:24:27'),
(15, 'mr. tamim', '012348759087', 'lereve', 'lereve@gmaiil.com', 'eyJpdiI6IjdYLzlkOG9JSkcxZU56OTJhRW1pc1E9PSIsInZhbHVlIjoiRExUTVd5SHcwa2VoR2ZLeDByeURnQT09IiwibWFjIjoiMmUyNjJiOGY0NWMzZGI2MGFlZmQ0MDJiODVkYzY1YjQ3N2VhYWUyY2RkYzNiMjM5MTk2NWVlOTkzODEwYzdkMSIsInRhZyI6IiJ9', 'Lereve', 'dhaka', '2367', '2023-08-19 11:25:58', '2023-08-19 11:25:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `apparels`
--
ALTER TABLE `apparels`
  ADD PRIMARY KEY (`apparel_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `final_vendors`
--
ALTER TABLE `final_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `temp_products`
--
ALTER TABLE `temp_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usersignups`
--
ALTER TABLE `usersignups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendorsignups`
--
ALTER TABLE `vendorsignups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apparels`
--
ALTER TABLE `apparels`
  MODIFY `apparel_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_vendors`
--
ALTER TABLE `final_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_products`
--
ALTER TABLE `temp_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usersignups`
--
ALTER TABLE `usersignups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendorsignups`
--
ALTER TABLE `vendorsignups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
