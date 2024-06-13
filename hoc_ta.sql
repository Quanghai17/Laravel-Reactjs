-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2024 at 07:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoc_ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `role_id`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 'users/default.png', 'admin@admin.com', NULL, '$2y$10$a.nZvJYX.BgFOxFt5trfTOexgXnYyhWL8mq0NMWbGjIDnZJFe6VRW', 'asy89kP4N75CThDGZKf8U1YNSCHzMO3m8aqPWLZYU1qH3QwzxMJ3uTuIEJIA', '2023-10-13 05:54:20', '2023-10-13 05:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-10-13 05:31:15', '2023-10-13 05:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `title`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Tiếng anh 1', NULL, NULL, '2024-05-07 08:10:43', '2024-05-07 08:10:43'),
(2, 'Tiếng anh 2', NULL, NULL, '2024-05-07 08:10:53', '2024-05-07 08:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Tên môn', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 8, 'a', 'text', 'A', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 3),
(64, 8, 'b', 'text', 'B', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 4),
(65, 8, 'c', 'text', 'C', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 5),
(66, 8, 'd', 'text', 'D', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 6),
(67, 8, 'answer', 'select_dropdown', 'Kết quả', 0, 1, 1, 1, 1, 1, '{\"default\":\"a\",\"display\":{\"width\":\"6\"},\"options\":{\"a\":\"A\",\"b\":\"B\",\"c\":\"C\",\"d\":\"D\"}}', 7),
(68, 8, 'type', 'select_dropdown', 'Loại câu hỏi', 0, 1, 1, 1, 1, 1, '{\"default\":\"abcd\",\"display\":{\"width\":\"6\"},\"options\":{\"abcd\":\"ABCD\",\"audio\":\"audio\"}}', 8),
(69, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(70, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(71, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 9, 'subject_id', 'text', 'Subject Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 9, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 3),
(74, 9, 'description', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 9, 'time', 'text', 'Thời gian thi', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"default\":60}', 6),
(76, 9, 'number', 'text', 'Số lượt đã thi', 1, 1, 0, 0, 0, 0, '{\"display\":{\"width\":\"6\"},\"default\":0}', 7),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(79, 9, 'test_hasone_subject_relationship', 'relationship', 'Môn', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Subject\",\"table\":\"subjects\",\"type\":\"belongsTo\",\"column\":\"subject_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"admins\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(80, 8, 'question_belongsto_test_relationship', 'relationship', 'Bài kiểm tra', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Test\",\"table\":\"tests\",\"type\":\"belongsTo\",\"column\":\"test_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"admins\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(81, 8, 'test_id', 'text', 'Test Id', 1, 1, 1, 1, 1, 1, '{}', 12),
(82, 8, 'content', 'rich_text_box', 'Nội dung', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 9, 'code', 'text', 'Mã đề', 1, 1, 1, 1, 1, 1, '{\"placeholder\":\"D\\u1eef li\\u1ec7u tr\\u01b0\\u1eddng n\\u00e0y s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u1ea1o t\\u1ef1 \\u0111\\u1ed9ng\",\"disabled\":true}', 4),
(85, 9, 'question_number', 'number', 'Số lượng câu hỏi', 1, 1, 1, 1, 1, 1, '{\"default\":10}', 8),
(86, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 10, 'title', 'text', 'Tên lớp', 0, 1, 1, 1, 1, 1, '{}', 2),
(88, 10, 'user_id', 'text', 'Người tạo', 0, 1, 1, 1, 1, 1, '{}', 3),
(89, 10, 'code', 'text', 'mã lớp', 0, 1, 1, 1, 1, 1, '{\"placeholder\":\"D\\u1eef li\\u1ec7u tr\\u01b0\\u1eddng n\\u00e0y s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u1ea1o t\\u1ef1 \\u0111\\u1ed9ng\",\"disabled\":true}', 4),
(90, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 10, 'classroom_belongsto_user_relationship', 'relationship', 'Người tạo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"admins\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(93, 10, 'classroom_belongstomany_user_relationship', 'relationship', 'Danh sách lớp', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"pivot_classroom_user\",\"pivot\":\"1\",\"taggable\":\"0\"}', 8),
(94, 5, 'file', 'file', 'File', 0, 0, 1, 1, 1, 1, '{}', 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(4, 'categories', 'categories', 'Categories', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-10-13 05:31:15', '2024-05-09 03:02:41'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-10-13 05:31:15', '2024-05-20 07:17:29'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(7, 'subjects', 'subjects', 'Subject', 'Subjects', NULL, 'App\\Models\\Subject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-18 00:07:28', '2023-10-18 18:24:22'),
(8, 'questions', 'questions', 'Câu hỏi', 'Câu hỏi', NULL, 'App\\Models\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-18 00:11:50', '2023-10-22 05:31:47'),
(9, 'tests', 'tests', 'Bài kiểm tra', 'Bài kiểm tra', NULL, 'App\\Models\\Test', NULL, 'App\\Http\\Controllers\\Admin\\TestController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-18 00:15:52', '2023-10-20 01:34:10'),
(10, 'classrooms', 'classrooms', 'Lớp', 'Lớp', NULL, 'App\\Models\\Classroom', NULL, 'App\\Http\\Controllers\\Admin\\ClassroomController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-22 04:07:38', '2023-10-22 04:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-10-13 05:31:14', '2023-10-13 05:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-10-13 05:31:14', '2023-10-13 05:31:14', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2023-10-13 05:31:14', '2024-05-20 07:43:51', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', NULL, 5, '2023-10-13 05:31:14', '2024-05-20 07:43:51', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', NULL, 4, '2023-10-13 05:31:14', '2024-05-20 07:43:51', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2023-10-13 05:31:14', '2024-05-20 07:43:51', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-10-13 05:31:14', '2023-10-18 01:10:01', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-10-13 05:31:14', '2023-10-18 01:10:01', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-10-13 05:31:14', '2023-10-18 01:10:01', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-10-13 05:31:14', '2023-10-18 01:10:01', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2023-10-13 05:31:14', '2024-05-20 07:43:51', 'voyager.settings.index', NULL),
(11, 1, 'Danh mục tài liệu', '', '_self', 'voyager-categories', '#000000', 19, 2, '2023-10-13 05:31:15', '2024-05-09 06:06:34', 'voyager.categories.index', 'null'),
(12, 1, 'Tài liệu học tập', '', '_self', 'voyager-news', '#000000', 19, 1, '2023-10-13 05:31:15', '2024-05-09 06:06:14', 'voyager.posts.index', 'null'),
(14, 1, 'Môn học', '', '_self', NULL, '#000000', 17, 1, '2023-10-18 00:07:28', '2024-05-20 07:43:20', 'voyager.subjects.index', 'null'),
(15, 1, 'Câu hỏi', '', '_self', NULL, NULL, 17, 3, '2023-10-18 00:11:50', '2024-05-20 07:43:20', 'voyager.questions.index', NULL),
(16, 1, 'Bài kiểm tra', '', '_self', NULL, '#000000', 17, 2, '2023-10-18 00:15:52', '2024-05-20 07:43:20', 'voyager.tests.index', 'null'),
(17, 1, 'Bài kiểm tra', '', '_self', 'voyager-book', '#000000', NULL, 3, '2023-10-18 01:09:56', '2024-05-20 07:43:12', NULL, ''),
(18, 1, 'Lớp', '', '_self', 'voyager-bar-chart', '#000000', NULL, 6, '2023-10-22 04:07:38', '2024-05-20 07:43:51', 'voyager.classrooms.index', 'null'),
(19, 1, 'Tài liệu học tập', '', '_self', 'voyager-window-list', '#000000', NULL, 2, '2024-05-09 06:06:06', '2024-05-20 07:43:12', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2016_01_01_000000_add_voyager_user_fields', 3),
(11, '2016_01_01_000000_create_data_types_table', 3),
(12, '2016_05_19_173453_create_menu_table', 3),
(13, '2016_10_21_190000_create_roles_table', 3),
(14, '2016_10_21_190000_create_settings_table', 3),
(15, '2016_11_30_135954_create_permission_table', 3),
(16, '2016_11_30_141208_create_permission_role_table', 3),
(17, '2016_12_26_201236_data_types__add__server_side', 3),
(18, '2017_01_13_000000_add_route_to_menu_items_table', 3),
(19, '2017_01_14_005015_create_translations_table', 3),
(20, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 3),
(21, '2017_03_06_000000_add_controller_to_data_types_table', 3),
(22, '2017_04_21_000000_add_order_to_data_rows_table', 3),
(23, '2017_07_05_210000_add_policyname_to_data_types_table', 3),
(24, '2017_08_05_000000_add_group_to_settings_table', 3),
(25, '2017_11_26_013050_add_user_role_relationship', 3),
(26, '2017_11_26_015000_create_user_roles_table', 3),
(27, '2018_03_11_000000_add_user_settings', 3),
(28, '2018_03_14_000000_add_details_to_data_types_table', 3),
(29, '2018_03_16_000000_make_settings_value_nullable', 3),
(30, '2016_01_01_000000_create_pages_table', 4),
(31, '2016_01_01_000000_create_posts_table', 4),
(32, '2016_02_15_204651_create_categories_table', 4),
(33, '2017_04_11_000000_alter_post_nullable_fields_table', 4),
(34, '2014_10_12_000000_create_admins_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0162452b04fabb1601035272eab7042d7a5761bcc1b8c60da7199ab7125b5fc81dde1c32f44ef6d0', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:06:21', '2023-10-14 00:06:21', '2024-10-14 07:06:21'),
('058cb45a109e89ea5812485ec88828fd0492ac25423cf94468c10752f34638d30d97d94ba92ce0f4', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:06:11', '2023-10-14 00:06:11', '2024-10-14 07:06:11'),
('05e27ec87ffeb758a9b6680b3bb1464370af21ebb919e4ffe6645ab50f9c344fad797861987794d9', 1, 1, 'viethungit', '[]', 0, '2023-10-23 03:53:22', '2023-10-23 03:53:22', '2024-10-23 10:53:22'),
('0c842c64e9bd6b48f0d5c7b0bb7b499ad0fdbfe4549dde16c38fe1b807c44a10f08fe29b652fc3b0', 9, 1, 'viethungit', '[]', 0, '2024-05-08 20:57:30', '2024-05-08 20:57:30', '2025-05-09 03:57:30'),
('0cbf0e71962021f01dd6e233dd1e94966c938fbf1b89eb80e80faa0bfae40be0d35fe8507f15676f', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:14:57', '2023-10-14 00:14:57', '2024-10-14 07:14:57'),
('1335cefc9cde7a6abaf5d4928847d472e87e2d97a2b25b12837d0fce6cd8f9d4f84389054d7c330a', 9, 1, 'viethungit', '[]', 0, '2024-05-08 04:44:58', '2024-05-08 04:44:58', '2025-05-08 11:44:58'),
('17a085da5e083105e66d107290d3ddd965c12ffd2d68e429cc0fa1189ede54fe2c0ac1ecc63df74b', 1, 1, 'viethungit', '[]', 0, '2024-05-07 04:05:46', '2024-05-07 04:05:46', '2025-05-07 11:05:46'),
('1c9265b5257278e5f1fa11fa026e29cc6bf0663de325ebd854702d0644160868832703d2479d579c', 9, 1, 'viethungit', '[]', 1, '2024-05-07 03:38:46', '2024-05-07 03:42:28', '2025-05-07 10:38:46'),
('1dc96235af16e894ae38969da5b954ceb357a5bca4b2425b9ed23b05b6fbfcc7234c539e4f53dbe7', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:14:41', '2023-10-14 00:14:41', '2024-10-14 07:14:41'),
('293501476b02caa477ea26e78f88c3a51beb184a331433d2f64ec6f7bf2b713c4f2a5c96ec54c9f9', 1, 1, 'viethungit', '[]', 1, '2024-05-07 23:19:54', '2024-05-07 23:21:45', '2025-05-08 06:19:54'),
('2af1c566f264dc1ced9ba28e2d9cc06e6349e0ab89947fd02897ebc3197f48bcd1f6f6435c513d19', 9, 1, 'viethungit', '[]', 0, '2024-05-09 00:41:19', '2024-05-09 00:41:19', '2025-05-09 07:41:19'),
('2d7897bb9a5cd0199b220ae44c738268b2525935417a7336718c3a29415e7ad6b332804bdff372c6', 1, 1, 'viethungit', '[]', 1, '2024-05-07 23:57:57', '2024-05-08 04:53:55', '2025-05-08 06:57:57'),
('3298c382c790790bdf39d843bab8d9cfeff03a94827090398d11f8f61da692d3b910f42ae9a407f2', 2, 1, 'viethungit', '[]', 0, '2023-10-21 08:47:33', '2023-10-21 08:47:33', '2024-10-21 15:47:33'),
('32b9ad927e4b211db23cac609d7fee839d5e9a273774d28c9dd3adc54455ea4bc988cc8842788e4d', 9, 1, 'viethungit', '[]', 0, '2024-05-09 00:48:13', '2024-05-09 00:48:13', '2025-05-09 07:48:13'),
('4bc8f73410137443e67142ad5a72758b16e365c5a0dac309f8799fffef41f395e934c5eb11ac3ff7', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 01:05:39', '2023-10-14 01:05:39', '2024-10-14 08:05:39'),
('4bf2604cae57d2070d2d133a2c160fb22e71774f6a11103bbf6bdb253e48f7b47cac065b6d5a3bb7', 9, 1, 'viethungit', '[]', 0, '2024-05-07 18:16:35', '2024-05-07 18:16:35', '2025-05-08 01:16:35'),
('50701c7525eacb59e80fab55f06ecc09cfd05fdff0e8c2e84b68c0d9bcaf3df7d665a90080465c38', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:05:37', '2023-10-14 00:05:38', '2024-10-14 07:05:37'),
('58d9faa0fc30d70e865af64a0b89e2cb2a96d13e805e29cb2e28926a32a619d08f7d3de048d601a8', 9, 1, 'viethungit', '[]', 0, '2024-05-08 21:18:43', '2024-05-08 21:18:43', '2025-05-09 04:18:43'),
('58eea5003877bc6a5a8d3fe784d3710558ad88a538db68b9d9328c63be93b74172cc05f761d16473', 9, 1, 'viethungit', '[]', 0, '2024-05-09 00:22:28', '2024-05-09 00:22:28', '2025-05-09 07:22:28'),
('613b8bf983a297bf9debd29916642e23977536be7906ec03cafadaaa490fcb01b397b6a1de936cb2', 9, 1, 'viethungit', '[]', 0, '2024-05-09 00:58:11', '2024-05-09 00:58:12', '2025-05-09 07:58:11'),
('631d7a150d98bdbfd2f238ace511ad3b38028e6fb387e70cde480d628ca86433a49f80d2b811e4df', 1, 1, 'viethungit', '[]', 0, '2024-05-20 06:57:09', '2024-05-20 06:57:09', '2025-05-20 13:57:09'),
('6a91da2872dfe39174275889fb999b4693b895e925326d6f8037f87e177e5161a3f1e540a440cadd', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:14:14', '2023-10-14 00:14:14', '2024-10-14 07:14:14'),
('719caa6a1f708b26353c90bf2a920dcf7aa4c03b04e3cfdb3f0c31a211356590d1acdebb975ce2a1', 1, 1, 'viethungit', '[]', 1, '2023-10-21 07:53:22', '2023-10-21 07:54:21', '2024-10-21 14:53:22'),
('72232c140ee208cb6df271171c85dc5da35c77a07188f53349cf73ca9da953954d90c3a1ec6e2997', 9, 1, 'viethungit', '[]', 0, '2024-05-09 01:35:55', '2024-05-09 01:35:55', '2025-05-09 08:35:55'),
('75c1d7ac5b79c4737feef2ef62503ac07f641e750df3bb4584c55c01ea3fc306446dfba9125b06ac', 1, 1, 'viethungit', '[]', 0, '2024-05-20 06:28:41', '2024-05-20 06:28:41', '2025-05-20 13:28:41'),
('77011196267d95a35697ea7acf6277f4aa1e90d4fc4a7db9ff3bb0193d716bb08e14bd6c90598367', 9, 1, 'viethungit', '[]', 0, '2024-05-09 00:45:50', '2024-05-09 00:45:50', '2025-05-09 07:45:50'),
('7b3c2fa2c58035340971472cd04ebd0974a5fe95f58f119b5986093616887ddcf089cf7c0933429d', 1, 1, 'viethungit', '[]', 1, '2024-05-07 08:27:19', '2024-05-07 08:35:04', '2025-05-07 15:27:19'),
('7b561f2a867620dce19abb39a90c94a91f83f2ab33da07bec36d81d5a28a15f40dd2acee59bdf468', 8, 1, 'viethungit', '[]', 1, '2024-05-06 07:42:48', '2024-05-06 07:47:10', '2025-05-06 14:42:48'),
('7d4beb162940dc57b4a93e3294e196fef9e18d8e01c0114bad21555c4efcaba21c20dd1dfb2a766d', 1, 1, 'viethungit', '[]', 1, '2023-10-21 07:54:28', '2023-10-21 07:55:10', '2024-10-21 14:54:28'),
('7f93b880443946a7e013891c00cca1439ef0888acaf6bf005561d4e81375d6de6ed694603f0ff3fb', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:12:10', '2023-10-14 00:12:10', '2024-10-14 07:12:10'),
('829dc364fa62e6b59c9f7e522e16c20e05757a0ef0a365e6a8a832309edf49e5210ddb712d47e963', 9, 1, 'viethungit', '[]', 1, '2024-05-07 20:45:09', '2024-05-07 20:59:13', '2025-05-08 03:45:09'),
('830e825185a09231f78c56e8875975819a491fe4e6380629fab786c6f2a48815d4bf14de2c1466cb', 1, 1, 'viethungit', '[]', 0, '2023-10-24 00:06:47', '2023-10-24 00:06:47', '2024-10-24 07:06:47'),
('83cc1353379a4c38dae6727f38dc34cdf03bff2c5f4f4e3c5a20cc08474269be253ac4a50d44bad4', 9, 1, 'viethungit', '[]', 1, '2024-05-08 20:49:31', '2024-05-08 20:51:26', '2025-05-09 03:49:31'),
('8c51f9cbdac16a1e2c23478c227d4ab81c54622a4fa07ebfbf3c3fd2303779a3251e923c5d28572c', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:24:03', '2023-10-14 00:24:03', '2024-10-14 07:24:03'),
('8ca219663ba2822410d98c9584dfafaaf50a2a506e6f796eae978e20ee1d02316f12281b317e1063', 5, 1, 'viethungit', '[]', 0, '2023-10-24 02:03:12', '2023-10-24 02:03:12', '2024-10-24 09:03:12'),
('8d4a4514a771c26309c5465ca4f687836e8421cdeecb7b4d021e0ebddc0892d8a88020405963a303', 9, 1, 'viethungit', '[]', 0, '2024-05-09 01:56:54', '2024-05-09 01:56:54', '2025-05-09 08:56:54'),
('8eca7bd7a6398573f5e1d2eab93a6fe419deed7127f0d5498279d7e47a4bccee83311d4dac30aa51', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-13 18:19:31', '2023-10-13 18:19:31', '2024-10-14 01:19:31'),
('93770a0c5432865c69e86ed8bbea420b1908fc489f4ebf89590fae5ad5ef8b6beba58f72841d3964', 1, 1, 'viethungit', '[]', 0, '2023-10-22 04:20:33', '2023-10-22 04:20:33', '2024-10-22 11:20:33'),
('942938e388b5849051facdeba4658705a082f5466aeb4d2a7c40e1fffd8e12367c6c98f4bf0a2ebe', 9, 1, 'viethungit', '[]', 0, '2024-05-08 19:41:06', '2024-05-08 19:41:08', '2025-05-09 02:41:06'),
('976ecea0c9b935ee0e1044228474c0bf4d181c8084902a3fb84067d82d887bdf389df3495409e01f', 11, 1, 'viethungit', '[]', 0, '2024-05-23 00:43:55', '2024-05-23 00:43:55', '2025-05-23 07:43:55'),
('98236626f0092ba407f570dcf7d9b7c64184b21c346016ab093c9281220e35ec2883fbfe92058df8', 7, 1, 'viethungit', '[]', 0, '2023-10-24 02:27:53', '2023-10-24 02:27:53', '2024-10-24 09:27:53'),
('9bafa2db68b3f3f982f29769655727a38f1348c04a8d2023fe7eaec072108aa1e530a1a30a3b4c40', 9, 1, 'viethungit', '[]', 0, '2024-05-08 20:51:41', '2024-05-08 20:51:41', '2025-05-09 03:51:41'),
('9bfa5201945d9eb7b4b5dba22ff3381a9b7e8085b6f3e4347e82cc1fc68509ede8412332c8cb0b59', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:06:43', '2023-10-14 00:06:43', '2024-10-14 07:06:43'),
('9c969bb07987d54f2c26138c662f339f09a88b17d7ef656e0bbad458649b4c483bdf467e375acf9c', 9, 1, 'viethungit', '[]', 0, '2024-05-07 08:12:07', '2024-05-07 08:12:07', '2025-05-07 15:12:07'),
('a3be8770c4a21956a6846cf82e99cc2fb216800c91d37a0e0296ef9dd0eecfe8962d6ceb6db6a0b2', 10, 1, 'viethungit', '[]', 0, '2024-05-08 04:56:57', '2024-05-08 04:56:58', '2025-05-08 11:56:57'),
('a90f3d17b0d0f956de8ab889fe3f82d51b9474e50e7429d4d19a6cacd5da5a24e138d27ca32b84d4', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-13 18:06:53', '2023-10-13 18:06:53', '2024-10-14 01:06:53'),
('a97a23aeffb6b430680f59299ddcd371293eefc1c0c7be96f143755a9e05bb35280c6717b86a114b', 9, 1, 'viethungit', '[]', 0, '2024-05-07 21:01:32', '2024-05-07 21:01:32', '2025-05-08 04:01:32'),
('a9aa69706782c86917bafcb0b0e843e69ae899a6ba587660315a032f3ab36ccfe84399c66e50388b', 9, 1, 'viethungit', '[]', 0, '2024-05-08 23:58:01', '2024-05-08 23:58:01', '2025-05-09 06:58:01'),
('aeaf6586aed720357d643b112b599b3f8bb36af018c80c1c26a0909c8fd024dabefef3daad20c716', 1, 1, 'viethungit', '[]', 1, '2023-10-21 09:12:02', '2023-10-22 04:18:19', '2024-10-21 16:12:02'),
('afbd7a653110b5ceeeb6dd89b21b53940337b78ab9901459b36c202ff191e14dad2ab8f67dc9cddd', 9, 1, 'viethungit', '[]', 1, '2024-05-07 08:04:02', '2024-05-07 08:12:00', '2025-05-07 15:04:02'),
('b25ec834dbc180033c2cd7802cbbc2264a9084c298bacbee81b934fd6203b15c1aa301a3574e4aff', 9, 1, 'viethungit', '[]', 0, '2024-05-08 23:56:54', '2024-05-08 23:56:54', '2025-05-09 06:56:54'),
('b4c0f8ee8b20e8cf072fb0671e73f5710a27d5b76dd82e219fa264edd7c897dfc3f807e7f18f3f30', 4, 1, 'viethungit', '[]', 1, '2023-10-21 09:01:35', '2023-10-21 09:01:44', '2024-10-21 16:01:35'),
('ba793c0ac89462268fc2aa13f8141ff556db311bfc07f1977cfd0ab5c36c8ce0fb7e8e16d43b27d1', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-18 19:42:04', '2023-10-18 19:42:04', '2024-10-19 02:42:04'),
('bcf7bc6cd15e1d6ce68ee48badb4cbdffb8248a31157a0f866d56572cafc86afd9b1bd3b731e4134', 1, 1, 'viethungit', '[]', 0, '2023-10-13 05:51:21', '2023-10-13 05:51:21', '2024-10-13 12:51:21'),
('c0d511267fcb58a9a27f14fa8e9a0fe469e2472e2b1a34a512412a124e3ae3a54b07724b0d591616', 1, 1, 'viethungit', '[]', 0, '2024-05-13 06:05:28', '2024-05-13 06:05:29', '2025-05-13 13:05:28'),
('c360f1b5b42f79e07ea80260de09b928abae55ed8eb3c976de980c5481fa8d05cc1d3c1eb7781f49', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:13:20', '2023-10-14 00:13:21', '2024-10-14 07:13:20'),
('c732f13699da1ede58e1ecd39d5d94ef52a53e1858ba51de79e1236953b58c607d95ad739c2ea806', 10, 1, 'viethungit', '[]', 0, '2024-05-09 06:16:42', '2024-05-09 06:16:42', '2025-05-09 13:16:42'),
('ca3a5308ebfef9edbd1c6803da98996c4690839d8cddaa3f9bf87763b715697731587d19ec8c76fc', 9, 1, 'viethungit', '[]', 0, '2024-05-07 18:19:06', '2024-05-07 18:19:06', '2025-05-08 01:19:06'),
('cad3d82a7f3f16be8a45dd428907964f0f04a9f451a6ab4a57172b9fe5efbcce113b9cfd8f06aae6', 6, 1, 'viethungit', '[]', 1, '2024-05-07 08:35:54', '2024-05-07 23:17:06', '2025-05-07 15:35:54'),
('d094fb64090c8b7eb8c92198064ff03466c773b82b3f327b6ed645ac3154881354f7c9a088820739', 9, 1, 'viethungit', '[]', 0, '2024-05-08 21:27:45', '2024-05-08 21:27:45', '2025-05-09 04:27:45'),
('d363f04fd8762937f67f05225135d7549a4a3269019f42ff44f7d38d860099f4235c8f54f6398006', 9, 1, 'viethungit', '[]', 0, '2024-05-09 00:49:25', '2024-05-09 00:49:25', '2025-05-09 07:49:25'),
('d71a853d5bbfaaa01e1afedf5236e6c8a78a24ada3e4e4b228bacf0977cbc48f165f51af151ae38e', 6, 1, 'viethungit', '[]', 0, '2023-10-24 02:03:39', '2023-10-24 02:03:39', '2024-10-24 09:03:39'),
('dde8e325f078f94eb53e226de729b9c496f0b446710f6e33e1f5f86a7489a7ffdf4b2f1295972f5b', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:07:02', '2023-10-14 00:07:02', '2024-10-14 07:07:02'),
('e9041f697c21e9cd98f0873047a09f19a183ce7dc952aed8b3137fe944c7c342fc229a54e0e57184', 1, 1, 'fsdaklffjksadfkjhwi', '[]', 0, '2023-10-14 00:16:00', '2023-10-14 00:16:00', '2024-10-14 07:16:00'),
('ef149678935dbdc0403227985077bb4dd642b851c7cabd35db842842be58604e2e95afcc340c1e7f', 9, 1, 'viethungit', '[]', 0, '2024-05-09 00:39:24', '2024-05-09 00:39:25', '2025-05-09 07:39:24'),
('ef216aa66115cc7a6fdbae61ff635aa89f1a0e8140d6162806b108a1946bcd706a6831018d7aaedc', 1, 1, 'viethungit', '[]', 0, '2023-10-13 05:52:05', '2023-10-13 05:52:05', '2024-10-13 12:52:05'),
('f49a49471c9d76f7e087777da8902fbc59b5132bc4a4fa3017a35771dc8a75e5780a1a38568a13a5', 9, 1, 'viethungit', '[]', 0, '2024-05-09 03:37:47', '2024-05-09 03:37:47', '2025-05-09 10:37:47'),
('f4daa2567b03e81b14cfc11cc82e8a9305e8502bc14d169a514b9c1bda6fb43a37af0b9c5463c661', 9, 1, 'viethungit', '[]', 0, '2024-05-08 21:01:37', '2024-05-08 21:01:37', '2025-05-09 04:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'dViB0zxXBeXrxf4iPVWYia4tuOB5yqCo1RIs6Xfw', NULL, 'http://localhost', 1, 0, 0, '2023-10-13 05:22:51', '2023-10-13 05:22:51'),
(2, NULL, 'Laravel Password Grant Client', '8ldsnqdXAVKEIWhjuQWmchGJmMJcLfhPwtTEkdtN', 'users', 'http://localhost', 0, 1, 0, '2023-10-13 05:22:51', '2023-10-13 05:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-13 05:22:51', '2023-10-13 05:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-10-13 05:31:15', '2023-10-13 05:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(2, 'browse_bread', NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(3, 'browse_database', NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(4, 'browse_media', NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(5, 'browse_compass', NULL, '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(6, 'browse_menus', 'menus', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(7, 'read_menus', 'menus', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(8, 'edit_menus', 'menus', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(9, 'add_menus', 'menus', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(10, 'delete_menus', 'menus', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(11, 'browse_roles', 'roles', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(12, 'read_roles', 'roles', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(13, 'edit_roles', 'roles', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(14, 'add_roles', 'roles', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(15, 'delete_roles', 'roles', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(16, 'browse_users', 'users', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(17, 'read_users', 'users', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(18, 'edit_users', 'users', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(19, 'add_users', 'users', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(20, 'delete_users', 'users', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(21, 'browse_settings', 'settings', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(22, 'read_settings', 'settings', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(23, 'edit_settings', 'settings', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(24, 'add_settings', 'settings', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(25, 'delete_settings', 'settings', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(26, 'browse_categories', 'categories', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(27, 'read_categories', 'categories', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(28, 'edit_categories', 'categories', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(29, 'add_categories', 'categories', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(30, 'delete_categories', 'categories', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(31, 'browse_posts', 'posts', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(32, 'read_posts', 'posts', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(33, 'edit_posts', 'posts', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(34, 'add_posts', 'posts', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(35, 'delete_posts', 'posts', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(36, 'browse_pages', 'pages', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(37, 'read_pages', 'pages', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(38, 'edit_pages', 'pages', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(39, 'add_pages', 'pages', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(40, 'delete_pages', 'pages', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(41, 'browse_subjects', 'subjects', '2023-10-18 00:07:28', '2023-10-18 00:07:28'),
(42, 'read_subjects', 'subjects', '2023-10-18 00:07:28', '2023-10-18 00:07:28'),
(43, 'edit_subjects', 'subjects', '2023-10-18 00:07:28', '2023-10-18 00:07:28'),
(44, 'add_subjects', 'subjects', '2023-10-18 00:07:28', '2023-10-18 00:07:28'),
(45, 'delete_subjects', 'subjects', '2023-10-18 00:07:28', '2023-10-18 00:07:28'),
(46, 'browse_questions', 'questions', '2023-10-18 00:11:50', '2023-10-18 00:11:50'),
(47, 'read_questions', 'questions', '2023-10-18 00:11:50', '2023-10-18 00:11:50'),
(48, 'edit_questions', 'questions', '2023-10-18 00:11:50', '2023-10-18 00:11:50'),
(49, 'add_questions', 'questions', '2023-10-18 00:11:50', '2023-10-18 00:11:50'),
(50, 'delete_questions', 'questions', '2023-10-18 00:11:50', '2023-10-18 00:11:50'),
(51, 'browse_tests', 'tests', '2023-10-18 00:15:52', '2023-10-18 00:15:52'),
(52, 'read_tests', 'tests', '2023-10-18 00:15:52', '2023-10-18 00:15:52'),
(53, 'edit_tests', 'tests', '2023-10-18 00:15:52', '2023-10-18 00:15:52'),
(54, 'add_tests', 'tests', '2023-10-18 00:15:52', '2023-10-18 00:15:52'),
(55, 'delete_tests', 'tests', '2023-10-18 00:15:52', '2023-10-18 00:15:52'),
(56, 'browse_classrooms', 'classrooms', '2023-10-22 04:07:38', '2023-10-22 04:07:38'),
(57, 'read_classrooms', 'classrooms', '2023-10-22 04:07:38', '2023-10-22 04:07:38'),
(58, 'edit_classrooms', 'classrooms', '2023-10-22 04:07:38', '2023-10-22 04:07:38'),
(59, 'add_classrooms', 'classrooms', '2023-10-22 04:07:38', '2023-10-22 04:07:38'),
(60, 'delete_classrooms', 'classrooms', '2023-10-22 04:07:38', '2023-10-22 04:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'viethungit', '6a9ead701f0fb3320e1149a1485e90f5bab4f2c84dba0c0a135a8acc47f70932', '[\"*\"]', NULL, '2023-10-13 05:43:32', '2023-10-13 05:43:32'),
(2, 'App\\Models\\User', 1, 'viethungit', 'fd93606797d4f62014a37b01eb030ac1c9ed4119c2d2dc9e8e10a4961cec54dc', '[\"*\"]', NULL, '2023-10-13 05:44:13', '2023-10-13 05:44:13'),
(3, 'App\\Models\\User', 1, 'viethungit', '231d6a00e874407b5e3cafc1395784c1979c9083b032340e27ae686ac837b75d', '[\"*\"]', NULL, '2023-10-13 05:47:43', '2023-10-13 05:47:43'),
(4, 'App\\Models\\User', 1, 'viethungit', '9b883d6364129f56708c4aa17db493716024c4f2d38ed7ae8912a4bc77b6b0fc', '[\"*\"]', NULL, '2023-10-13 05:48:28', '2023-10-13 05:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `pivot_classroom_user`
--

CREATE TABLE `pivot_classroom_user` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `classroom_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `file`) VALUES
(8, 1, 1, 'Sách tiếng anh \"Hook on phonics\"', NULL, NULL, '<p><a href=\"https://drive.google.com/drive/folders/1y2iNEeDbkL8wS7PEtxj9ze2-5cEFYFJL\" title=\"Link\" target=\"_blank\" rel=\"noopener\">https://drive.google.com/drive/folders/1y2iNEeDbkL8wS7PEtxj9ze2-5cEFYFJL</a></p>', 'posts\\May2024\\QyrxUxTkymBuHk0OHK3t.jpg', 'sach-tieng-anh-hook-on-phonics', NULL, NULL, 'PUBLISHED', 0, '2024-05-11 03:02:02', '2024-05-11 03:09:07', NULL),
(9, 1, 1, 'Sách tiếng anh \"My Little Island\"', NULL, NULL, '<p><a href=\"https://drive.google.com/drive/folders/1Fry4X6uq2RybiocskUmiUb9jKqv3wpH1\" title=\"Link\" target=\"_blank\" rel=\"noopener\">https://drive.google.com/drive/folders/1Fry4X6uq2RybiocskUmiUb9jKqv3wpH1</a></p>', 'posts\\May2024\\g4lKLOBYAAmnZ69FnBKG.jpg', 'sach-tieng-anh-my-little-island', NULL, NULL, 'PUBLISHED', 0, '2024-05-11 03:04:18', '2024-05-11 03:09:16', NULL),
(10, 1, 1, 'Sách tiếng anh \"Family and Friends\"', NULL, NULL, '<p><a href=\"https://drive.google.com/drive/folders/1mk2OE_Wu7HsiuEfuqLBV3mqTS6lVQ4Jw\" title=\"Link\" target=\"_blank\" rel=\"noopener\">https://drive.google.com/drive/folders/1mk2OE_Wu7HsiuEfuqLBV3mqTS6lVQ4Jw</a></p>', 'posts\\May2024\\AxQhdp5rSkOFKIdvVRNs.jpg', 'sach-tieng-anh-family-and-friends', NULL, NULL, 'PUBLISHED', 0, '2024-05-11 03:07:10', '2024-05-11 03:09:30', NULL),
(11, 1, 1, 'Giáo trình tiếng Anh cho bé - Get it Up', NULL, NULL, '<p><a href=\"https://drive.google.com/drive/folders/1UtbBvU3pHEvWIocFrGbL27_jwyHW0G1-\" title=\"Link\" target=\"_blank\" rel=\"noopener\">https://drive.google.com/drive/folders/1UtbBvU3pHEvWIocFrGbL27_jwyHW0G1-</a></p>', 'posts\\May2024\\DGZn9h5DBZ24RNhqYH3U.png', 'giao-trinh-tieng-anh-cho-be-get-it-up', NULL, NULL, 'PUBLISHED', 0, '2024-05-11 03:12:23', '2024-05-11 03:12:23', NULL),
(12, 1, 1, 'Ngữ pháp tiếng anh lớp 3', NULL, NULL, '<p><a href=\"https://apollo.edu.vn/goc-se-chia/ngu-phap-tieng-anh-lop-3\" title=\"Link\" target=\"_blank\" rel=\"noopener\">https://apollo.edu.vn/goc-se-chia/ngu-phap-tieng-anh-lop-3</a></p>', 'posts\\May2024\\nO029aeviF9w8TabV2CE.jpg', 'ngu-phap-tieng-anh-lop-3', NULL, NULL, 'PUBLISHED', 0, '2024-05-11 03:20:15', '2024-05-11 03:20:15', NULL),
(13, 1, 1, 'Từ vựng tiếng anh lớp 3', NULL, NULL, '<p><a href=\"https://apollo.edu.vn/goc-se-chia/tu-vung-tieng-anh-lop-3\" title=\"Link\" target=\"_blank\" rel=\"noopener\">https://apollo.edu.vn/goc-se-chia/tu-vung-tieng-anh-lop-3</a></p>', 'posts\\May2024\\KcpKAg3Oerfjgsg5sVSc.jpg', 'tu-vung-tieng-anh-lop-3', NULL, NULL, 'PUBLISHED', 0, '2024-05-11 03:22:22', '2024-05-20 07:17:47', '[{\"download_link\":\"posts\\\\May2024\\\\SiSnPEZVuSeb74WpEbl5.docx\",\"original_name\":\"NGUYEN_QUANG_LINH_BAO_CAO_DO_AN_TOT_NGHIEP.docx\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `content`, `a`, `b`, `c`, `d`, `answer`, `type`, `created_at`, `updated_at`, `test_id`) VALUES
(75, '<div>It was the longest film I’ve ever seen, it ______ four hours.</div>', 'ended', 'finished', 'lasted', 'stayed', 'c', 'abcd', '2024-05-07 23:38:52', '2024-05-07 23:38:52', 5),
(76, '<div>It is time to ______ the table for dinner.</div>', 'place', 'lay', 'lay out', 'put out', 'b', 'abcd', '2024-05-07 23:39:31', '2024-05-07 23:39:31', 5),
(77, '<div>She tried to ______ out of the window to see the procession more clearly.</div>', 'bend', 'curve', 'bow', 'lean', 'd', 'abcd', '2024-05-07 23:40:26', '2024-05-07 23:40:26', 5),
(78, '<p><span>The house was burgled while the family was____________ in a card game.</span></p>', 'buried', 'busy', 'absorbed', 'helping', 'a', 'abcd', '2024-05-07 23:43:46', '2024-05-07 23:43:46', 5),
(79, '<p><span>I am sorry that I can\'t________ your invitation.</span></p>', 'take', 'except', 'agree', 'accept', 'c', 'abcd', '2024-05-07 23:44:24', '2024-05-07 23:44:24', 5),
(80, '<p><span>If you_________ money to mine, we shall have enough.</span></p>', 'add', 'combine', 'unite', 'bank', 'd', 'abcd', '2024-05-07 23:45:07', '2024-05-07 23:45:07', 5),
(81, '<p><span>He was full of________ for her bravery.</span></p>', 'energy', 'admiration', 'surprise', 'pride', 'b', 'abcd', '2024-05-07 23:45:53', '2024-05-07 23:45:53', 5),
(82, '<p><span>This ticket__________ one person to the show.</span></p>', 'permits', 'enters', 'delivers', 'admits', 'a', 'abcd', '2024-05-07 23:59:13', '2024-05-07 23:59:13', 5),
(83, '<p>If we__________ the plan you suggest, we are more likely to be successful.</p>', 'elect', 'command', 'vote', 'adopt', 'b', 'abcd', '2024-05-07 23:59:50', '2024-05-07 23:59:50', 5),
(84, '<p>Is anyone_________ to fish in this river?</p>', 'borne', 'allowed', 'admitted', 'passed', 'b', 'abcd', '2024-05-08 00:00:24', '2024-05-08 00:00:24', 5),
(85, '<p>His_________ had always been to become an architect.</p>', 'study', 'ambition', 'imagination', 'direction', 'c', 'abcd', '2024-05-08 00:01:03', '2024-05-08 00:01:03', 5),
(86, '<p>The child was told to_________ for being rude to his uncle.</p>', 'excuse', 'apologize', 'punish', 'confess', 'd', 'abcd', '2024-05-08 00:01:49', '2024-05-08 00:01:49', 5),
(87, '<p>He is__________ a very old man but in fact he is only fifty.</p>\r\n<p>A. apparently B. evidently C. obviously D. actually</p>', 'apparently', 'evidently', 'obviously', 'actually', 'c', 'abcd', '2024-05-08 00:02:21', '2024-05-08 00:02:21', 5),
(88, '<p>Let me know if any difficulties__________.</p>', 'arise', 'come', 'rise', 'happen', 'a', 'abcd', '2024-05-08 00:02:56', '2024-05-08 00:02:56', 5),
(89, '<p>He couldn\'t________ the thought of leaving his home town for ever.</p>', 'think', 'bear', 'carry', 'hold', 'd', 'abcd', '2024-05-08 00:03:35', '2024-05-08 00:03:35', 5),
(91, '<p>Developing<span> new </span><u>technologies</u><span> </span><u>are</u><span> </span><u>time-consuming</u><span> and expensive.</span></p>', 'Developing', 'technologies', 'are', 'time-consuming', 'c', 'abcd', '2024-05-11 03:30:00', '2024-05-11 03:31:33', 6),
(92, '<p><span>The assumption </span><u>that</u><span> smoking has bad </span><u>effects</u><span> on our health </span><u>have been proved</u><span>.</span></p>', 'that', 'effects', 'have been', 'proved', 'd', 'abcd', '2024-05-11 03:33:05', '2024-05-11 03:33:05', 6),
(93, '<p><span>A novel is a story </span><u>long enough</u><span> to fill a </span><u>complete</u><span> book, in </span><u>that</u><span> the characters and events are usually </span><u>imaginary</u><span>.</span></p>', 'long enough', 'complete', 'that', 'imaginary', 'c', 'abcd', '2024-05-11 03:34:02', '2024-05-11 03:34:02', 6),
(94, '<p><span>The earth is </span><u>the</u><span> only planet with a large </span><u>number</u><span> of </span><u>oxygen</u><span> in </span><u>its</u><span> atmosphere.</span></p>', 'the', 'number', 'oxygen', 'its', 'b', 'abcd', '2024-05-11 03:35:25', '2024-05-11 03:35:25', 6),
(95, '<p><span>Not until he </span><u>got</u><span> home </span><u>he realized</u><span> he had forgotten to give </span><u>her</u><span> </span><u>the present</u><span>.</span></p>', 'got', 'he realized', 'her', 'the present', 'b', 'abcd', '2024-05-11 03:36:25', '2024-05-11 03:36:25', 6),
(96, '<p><span>If one type of manufacturing </span><u>expands</u><span>, it is </span><u>like</u><span> that </span><u>another</u><span> type will shrink </span><u>considerably</u><span>.</span></p>', 'expands', 'like', 'another', 'considerably', 'b', 'abcd', '2024-05-11 03:37:00', '2024-05-11 03:37:00', 6),
(97, '<p><span>The grass </span><u>needs</u><span> </span><u>cutting</u><span>, so </span><u>let</u><span> us have one of the men </span><u>to take</u><span> lawn-mower and do it.</span></p>', 'needs', 'cutting', 'let', 'to take', 'd', 'abcd', '2024-05-11 03:37:40', '2024-05-11 03:37:40', 6),
(98, '<p><u>Each</u><span> of the beautiful </span><u>cars</u><span> in the shop was </span><u>quickly</u><span> sold to </span><u>their</u><span> owner</span></p>', 'Each', 'cars', 'quickly', 'their', 'd', 'abcd', '2024-05-11 03:38:32', '2024-05-11 03:38:32', 6),
(99, '<p><span>If </span><u>you work</u><span> hard, you </span><u>would be</u><span> successful </span><u>in</u><span> </span><u>anything</u><span> you do.</span></p>', 'you work', 'would be', 'in', 'anything', 'b', 'abcd', '2024-05-11 03:39:12', '2024-05-11 03:39:12', 6),
(100, '<p><span>Had it </span><u>not</u><span> been for </span><u>you help me</u><span>, I </span><u>wouldn\'t</u><span> have </span><u>succeeded</u><span>.</span></p>', 'not', 'you help me', 'wouldn\'t', 'succeeded', 'b', 'abcd', '2024-05-11 03:39:48', '2024-05-11 03:39:48', 6),
(101, '<p><span>I enjoyed </span><u>talking</u><span> to </span><u>the</u><span> people </span><u>with that</u><span> I met </span><u>at the party</u><span> last night.</span></p>', 'talking', 'the', 'with that', 'at the party', 'c', 'abcd', '2024-05-11 03:40:24', '2024-05-11 03:40:24', 6),
(102, '<p><span>It is </span><u>vitally</u><span> important </span><u>that</u><span> she </span><u>takes</u><span> this </span><u>medication</u><span> night and morning.</span></p>', 'vitally', 'that', 'takes', 'medication', 'c', 'abcd', '2024-05-11 03:41:01', '2024-05-11 03:41:01', 6),
(103, '<p><span>The </span><u>number</u><span> of women </span><u>earning</u><span> Master\'s Degrees </span><u>have risen</u><span> sharply in </span><u>recent years</u><span>.</span></p>', 'number', 'earning', 'have risen', 'recent years', 'c', 'abcd', '2024-05-11 03:41:38', '2024-05-11 03:41:38', 6),
(104, '<p><span>She only </span><u>had</u><span> a </span><u>twenty-dollars</u><span> bill with her </span><u>when</u><span> she landed </span><u>at</u><span> Healthrow airport.</span></p>', 'had', 'twenty-dollars', 'when', 'at', 'c', 'abcd', '2024-05-11 03:42:13', '2024-05-11 03:42:13', 6),
(105, '<p><u>Sometimes</u><span> it takes </span><u>me</u><span> about three </span><u>hours</u><span> </span><u>finishing</u><span> my round.</span></p>', 'Sometimes', 'me', 'hours', 'finishing', 'd', 'abcd', '2024-05-11 03:42:48', '2024-05-11 03:42:48', 6),
(106, '<p><img src=\"http://localhost/hoc_ta/public//storage/questions/May2024/6Tpx6UxhbjCVMFLC39Z31.png\" width=\"300\" height=\"296\" alt=\"\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>\r\n<p>What is this?</p>', 'milk', 'apple', 'water', 'coca', 'a', 'abcd', '2024-05-11 03:44:00', '2024-05-11 03:45:24', 7);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-10-13 05:31:14', '2023-10-13 05:31:14'),
(2, 'user', 'Normal User', '2023-10-13 05:31:14', '2023-10-13 05:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Tiếng anh', 'tieng-anh', '2023-10-18 00:16:53', '2023-10-18 00:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int UNSIGNED NOT NULL,
  `subject_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `time` int NOT NULL DEFAULT '60',
  `number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_number` int NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `subject_id`, `title`, `description`, `time`, `number`, `created_at`, `updated_at`, `code`, `question_number`) VALUES
(5, 2, 'Lesson 1', NULL, 15, 4, '2024-05-07 23:37:50', '2024-05-23 00:44:41', 'sSR7Vs', 15),
(6, 2, 'Lesson 2', NULL, 15, 2, '2024-05-07 23:47:14', '2024-05-11 03:49:08', 'EvhlsK', 15),
(7, 2, 'Lesson 3', NULL, 15, 1, '2024-05-07 23:47:38', '2024-05-11 03:45:40', 'ThCSNp', 15),
(8, 2, 'Lesson 4', NULL, 10, 0, '2024-05-07 23:48:03', '2024-05-07 23:48:03', 'enNSpd', 10);

-- --------------------------------------------------------

--
-- Table structure for table `test_histories`
--

CREATE TABLE `test_histories` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `test_id` int DEFAULT NULL,
  `correct` int DEFAULT NULL,
  `wrong` int DEFAULT NULL,
  `time` int DEFAULT NULL,
  `answers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `point` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `test_histories`
--

INSERT INTO `test_histories` (`id`, `user_id`, `test_id`, `correct`, `wrong`, `time`, `answers`, `created_at`, `updated_at`, `point`) VALUES
(20, 9, 5, 2, 13, 15, '[{\"questionId\":85,\"answer\":\"a\",\"correct\":false},{\"questionId\":75,\"answer\":\"d\",\"correct\":false},{\"questionId\":79,\"answer\":\"b\",\"correct\":false},{\"questionId\":76,\"answer\":\"b\",\"correct\":true},{\"questionId\":78,\"answer\":\"a\",\"correct\":true},{\"questionId\":84,\"answer\":\"c\",\"correct\":false},{\"questionId\":81,\"answer\":\"d\",\"correct\":false},{\"questionId\":82,\"answer\":null,\"correct\":false},{\"questionId\":89,\"answer\":null,\"correct\":false},{\"questionId\":83,\"answer\":null,\"correct\":false},{\"questionId\":87,\"answer\":null,\"correct\":false},{\"questionId\":80,\"answer\":null,\"correct\":false},{\"questionId\":86,\"answer\":null,\"correct\":false},{\"questionId\":77,\"answer\":null,\"correct\":false},{\"questionId\":88,\"answer\":null,\"correct\":false}]', '2024-05-09 03:39:40', '2024-05-09 03:39:40', 1.25),
(21, 10, 5, 4, 11, 38, '[{\"questionId\":86,\"answer\":\"a\",\"correct\":false},{\"questionId\":87,\"answer\":\"c\",\"correct\":true},{\"questionId\":79,\"answer\":\"a\",\"correct\":false},{\"questionId\":88,\"answer\":\"b\",\"correct\":false},{\"questionId\":77,\"answer\":\"d\",\"correct\":true},{\"questionId\":78,\"answer\":\"a\",\"correct\":true},{\"questionId\":84,\"answer\":\"c\",\"correct\":false},{\"questionId\":83,\"answer\":\"a\",\"correct\":false},{\"questionId\":75,\"answer\":\"d\",\"correct\":false},{\"questionId\":76,\"answer\":\"a\",\"correct\":false},{\"questionId\":80,\"answer\":\"b\",\"correct\":false},{\"questionId\":85,\"answer\":\"c\",\"correct\":true},{\"questionId\":89,\"answer\":\"a\",\"correct\":false},{\"questionId\":81,\"answer\":\"d\",\"correct\":false},{\"questionId\":82,\"answer\":\"b\",\"correct\":false}]', '2024-05-09 08:02:46', '2024-05-09 08:02:46', 2.75),
(22, 10, 6, 1, 0, 6, '[{\"questionId\":91,\"answer\":\"c\",\"correct\":true}]', '2024-05-11 03:30:25', '2024-05-11 03:30:25', 10),
(23, 10, 7, 1, 0, 12, '[{\"questionId\":106,\"answer\":\"a\",\"correct\":true}]', '2024-05-11 03:45:40', '2024-05-11 03:45:40', 10),
(24, 10, 6, 1, 14, 27, '[{\"questionId\":105,\"answer\":\"b\",\"correct\":false},{\"questionId\":104,\"answer\":\"d\",\"correct\":false},{\"questionId\":103,\"answer\":\"a\",\"correct\":false},{\"questionId\":101,\"answer\":\"c\",\"correct\":true},{\"questionId\":100,\"answer\":\"a\",\"correct\":false},{\"questionId\":95,\"answer\":\"d\",\"correct\":false},{\"questionId\":102,\"answer\":\"d\",\"correct\":false},{\"questionId\":92,\"answer\":\"c\",\"correct\":false},{\"questionId\":91,\"answer\":\"d\",\"correct\":false},{\"questionId\":97,\"answer\":\"b\",\"correct\":false},{\"questionId\":98,\"answer\":\"c\",\"correct\":false},{\"questionId\":96,\"answer\":\"a\",\"correct\":false},{\"questionId\":94,\"answer\":\"a\",\"correct\":false},{\"questionId\":93,\"answer\":\"d\",\"correct\":false},{\"questionId\":99,\"answer\":\"c\",\"correct\":false}]', '2024-05-11 03:49:08', '2024-05-11 03:49:08', 0.75),
(25, 1, 5, 4, 11, 140, '[{\"questionId\":77,\"answer\":\"d\",\"correct\":true},{\"questionId\":78,\"answer\":\"c\",\"correct\":false},{\"questionId\":89,\"answer\":\"c\",\"correct\":false},{\"questionId\":83,\"answer\":\"d\",\"correct\":false},{\"questionId\":75,\"answer\":\"d\",\"correct\":false},{\"questionId\":80,\"answer\":\"d\",\"correct\":true},{\"questionId\":87,\"answer\":\"d\",\"correct\":false},{\"questionId\":85,\"answer\":\"c\",\"correct\":true},{\"questionId\":82,\"answer\":\"d\",\"correct\":false},{\"questionId\":76,\"answer\":\"d\",\"correct\":false},{\"questionId\":79,\"answer\":\"c\",\"correct\":true},{\"questionId\":88,\"answer\":\"b\",\"correct\":false},{\"questionId\":86,\"answer\":\"c\",\"correct\":false},{\"questionId\":81,\"answer\":\"c\",\"correct\":false},{\"questionId\":84,\"answer\":\"c\",\"correct\":false}]', '2024-05-20 08:09:05', '2024-05-20 08:09:05', 2.75),
(26, 11, 5, 4, 11, 20, '[{\"questionId\":76,\"answer\":\"d\",\"correct\":false},{\"questionId\":82,\"answer\":\"d\",\"correct\":false},{\"questionId\":89,\"answer\":\"c\",\"correct\":false},{\"questionId\":86,\"answer\":\"a\",\"correct\":false},{\"questionId\":84,\"answer\":\"b\",\"correct\":true},{\"questionId\":83,\"answer\":\"b\",\"correct\":true},{\"questionId\":81,\"answer\":\"b\",\"correct\":true},{\"questionId\":87,\"answer\":\"d\",\"correct\":false},{\"questionId\":88,\"answer\":\"b\",\"correct\":false},{\"questionId\":80,\"answer\":\"c\",\"correct\":false},{\"questionId\":77,\"answer\":\"b\",\"correct\":false},{\"questionId\":85,\"answer\":\"c\",\"correct\":true},{\"questionId\":78,\"answer\":\"c\",\"correct\":false},{\"questionId\":79,\"answer\":\"a\",\"correct\":false},{\"questionId\":75,\"answer\":\"a\",\"correct\":false}]', '2024-05-23 00:44:41', '2024-05-23 00:44:41', 2.75);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-10-13 05:31:15', '2023-10-13 05:31:15'),
(31, 'data_rows', 'display_name', 71, 'en', 'Id', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(32, 'data_rows', 'display_name', 72, 'en', 'Subject Id', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(33, 'data_rows', 'display_name', 73, 'en', 'Title', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(34, 'data_rows', 'display_name', 74, 'en', 'Description', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(35, 'data_rows', 'display_name', 75, 'en', 'Time', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(36, 'data_rows', 'display_name', 76, 'en', 'Number', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(37, 'data_rows', 'display_name', 77, 'en', 'Created At', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(38, 'data_rows', 'display_name', 78, 'en', 'Updated At', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(39, 'data_rows', 'display_name', 79, 'en', 'subjects', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(40, 'data_types', 'display_name_singular', 9, 'en', 'Test', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(41, 'data_types', 'display_name_plural', 9, 'en', 'Tests', '2023-10-18 00:18:00', '2023-10-18 00:18:00'),
(42, 'data_rows', 'display_name', 61, 'en', 'Id', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(43, 'data_rows', 'display_name', 62, 'en', 'Title', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(44, 'data_rows', 'display_name', 63, 'en', 'A', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(45, 'data_rows', 'display_name', 64, 'en', 'B', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(46, 'data_rows', 'display_name', 65, 'en', 'C', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(47, 'data_rows', 'display_name', 66, 'en', 'D', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(48, 'data_rows', 'display_name', 67, 'en', 'Answer', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(49, 'data_rows', 'display_name', 68, 'en', 'Type', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(50, 'data_rows', 'display_name', 69, 'en', 'Created At', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(51, 'data_rows', 'display_name', 70, 'en', 'Updated At', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(52, 'data_rows', 'display_name', 80, 'en', 'tests', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(53, 'data_types', 'display_name_singular', 8, 'en', 'Câu hỏi', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(54, 'data_types', 'display_name_plural', 8, 'en', 'Câu hỏi', '2023-10-18 01:08:46', '2023-10-18 01:08:46'),
(55, 'menu_items', 'title', 14, 'en', 'Môn học', '2023-10-18 01:10:13', '2023-10-18 18:21:44'),
(56, 'menu_items', 'title', 16, 'en', 'Bài kiểm tra', '2023-10-18 01:10:44', '2023-10-18 18:21:51'),
(57, 'menu_items', 'title', 17, 'en', 'Bài kiểm tra', '2023-10-18 01:11:35', '2024-05-09 06:07:02'),
(58, 'data_rows', 'display_name', 81, 'en', 'Test Id', '2023-10-18 18:23:53', '2023-10-18 18:23:53'),
(59, 'data_rows', 'display_name', 56, 'en', 'Id', '2023-10-18 18:24:22', '2023-10-18 18:24:22'),
(60, 'data_rows', 'display_name', 57, 'en', 'Name', '2023-10-18 18:24:22', '2023-10-18 18:24:22'),
(61, 'data_rows', 'display_name', 58, 'en', 'Slug', '2023-10-18 18:24:22', '2023-10-18 18:24:22'),
(62, 'data_rows', 'display_name', 59, 'en', 'Created At', '2023-10-18 18:24:22', '2023-10-18 18:24:22'),
(63, 'data_rows', 'display_name', 60, 'en', 'Updated At', '2023-10-18 18:24:22', '2023-10-18 18:24:22'),
(64, 'data_types', 'display_name_singular', 7, 'en', 'Subject', '2023-10-18 18:24:22', '2023-10-18 18:24:22'),
(65, 'data_types', 'display_name_plural', 7, 'en', 'Subjects', '2023-10-18 18:24:22', '2023-10-18 18:24:22'),
(66, 'data_rows', 'display_name', 84, 'en', 'Code', '2023-10-20 01:04:25', '2023-10-20 01:04:25'),
(67, 'data_rows', 'display_name', 85, 'en', 'Số lượng câu hỏi', '2023-10-20 01:04:25', '2023-10-20 01:04:25'),
(68, 'data_rows', 'display_name', 86, 'en', 'Id', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(69, 'data_rows', 'display_name', 87, 'en', 'Tên lớp', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(70, 'data_rows', 'display_name', 88, 'en', 'User Id', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(71, 'data_rows', 'display_name', 89, 'en', 'mã lớp', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(72, 'data_rows', 'display_name', 90, 'en', 'Created At', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(73, 'data_rows', 'display_name', 91, 'en', 'Updated At', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(74, 'data_rows', 'display_name', 92, 'en', 'users', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(75, 'data_types', 'display_name_singular', 10, 'en', 'Lớp', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(76, 'data_types', 'display_name_plural', 10, 'en', 'Lớp', '2023-10-22 04:09:02', '2023-10-22 04:09:02'),
(77, 'data_rows', 'display_name', 93, 'en', 'users', '2023-10-22 04:10:42', '2023-10-22 04:10:42'),
(78, 'data_rows', 'display_name', 82, 'en', 'Nội dung', '2023-10-22 04:52:42', '2023-10-22 04:52:42'),
(79, 'data_rows', 'display_name', 29, 'en', 'ID', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(80, 'data_rows', 'display_name', 30, 'en', 'Author', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(81, 'data_rows', 'display_name', 31, 'en', 'Category', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(82, 'data_rows', 'display_name', 32, 'en', 'Title', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(83, 'data_rows', 'display_name', 42, 'en', 'SEO Title', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(84, 'data_rows', 'display_name', 33, 'en', 'Excerpt', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(85, 'data_rows', 'display_name', 34, 'en', 'Body', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(86, 'data_rows', 'display_name', 35, 'en', 'Post Image', '2024-05-09 02:13:05', '2024-05-09 02:13:05'),
(87, 'data_rows', 'display_name', 36, 'en', 'Slug', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(88, 'data_rows', 'display_name', 37, 'en', 'Meta Description', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(89, 'data_rows', 'display_name', 38, 'en', 'Meta Keywords', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(90, 'data_rows', 'display_name', 39, 'en', 'Status', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(91, 'data_rows', 'display_name', 43, 'en', 'Featured', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(92, 'data_rows', 'display_name', 40, 'en', 'Created At', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(93, 'data_rows', 'display_name', 41, 'en', 'Updated At', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(94, 'data_types', 'display_name_singular', 5, 'en', 'Post', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(95, 'data_types', 'display_name_plural', 5, 'en', 'Posts', '2024-05-09 02:13:06', '2024-05-09 02:13:06'),
(102, 'menu_items', 'title', 11, 'en', 'Danh mục tài liệu', '2024-05-09 03:00:11', '2024-05-09 06:05:38'),
(103, 'data_rows', 'display_name', 22, 'en', 'ID', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(104, 'data_rows', 'display_name', 23, 'en', 'Parent', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(105, 'data_rows', 'display_name', 24, 'en', 'Order', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(106, 'data_rows', 'display_name', 25, 'en', 'Name', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(107, 'data_rows', 'display_name', 26, 'en', 'Slug', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(108, 'data_rows', 'display_name', 27, 'en', 'Created At', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(109, 'data_rows', 'display_name', 28, 'en', 'Updated At', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(110, 'data_types', 'display_name_singular', 4, 'en', 'Category', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(111, 'data_types', 'display_name_plural', 4, 'en', 'Categories', '2024-05-09 03:01:34', '2024-05-09 03:01:34'),
(112, 'posts', 'title', 5, 'en', 'teszt', '2024-05-09 03:34:46', '2024-05-09 03:34:46'),
(113, 'posts', 'excerpt', 5, 'en', 'asd', '2024-05-09 03:34:46', '2024-05-09 03:34:46'),
(114, 'posts', 'body', 5, 'en', '<p>asd</p>', '2024-05-09 03:34:46', '2024-05-09 03:34:46'),
(115, 'posts', 'slug', 5, 'en', 'teszt', '2024-05-09 03:34:46', '2024-05-09 03:34:46'),
(116, 'menu_items', 'title', 18, 'en', 'Lớp', '2024-05-09 06:03:37', '2024-05-09 06:03:37'),
(117, 'menu_items', 'title', 4, 'en', 'Phân quyền', '2024-05-09 06:04:15', '2024-05-09 06:04:15'),
(118, 'menu_items', 'title', 3, 'en', 'Tài khoản', '2024-05-09 06:04:33', '2024-05-09 06:04:33'),
(119, 'menu_items', 'title', 12, 'en', 'Tài liệu học tập', '2024-05-09 06:04:54', '2024-05-09 06:04:54'),
(121, 'menu_items', 'title', 19, 'en', 'Tài liệu học tập', '2024-05-09 06:06:06', '2024-05-09 06:06:06'),
(122, 'posts', 'meta_description', 5, 'en', 'vip', '2024-05-09 06:17:42', '2024-05-09 06:17:42'),
(123, 'posts', 'meta_keywords', 5, 'en', 'vip', '2024-05-09 06:17:42', '2024-05-09 06:17:42'),
(124, 'posts', 'seo_title', 5, 'en', 'vip', '2024-05-09 06:17:42', '2024-05-09 06:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Quang Linh', 'quanglinh@gmail.com', 'users/default.png', NULL, '$2y$10$n3WzAumqneJ3GJ4MzhBc9uEBykkERQzEAMRvIZgq4DJ6aVQBNEaHq', 'AiMzNBbCv62zZwd2pJOIC9MIiNUDU3rimrCynpgQ5wo7rvs8mle6tVTkUUUn', '{\"locale\":\"vi\"}', '2023-10-13 05:31:15', '2024-05-07 08:26:58'),
(5, NULL, 'Mai Hoàng', 'cocatvn2003@gmai.com', 'users/default.png', NULL, '$2y$10$OdcCuLxA3DrVZjrI5WhRHeut1GlYak7DE8MoaUFBLNOCpThDhglZW', NULL, NULL, '2023-10-24 02:03:11', '2023-10-24 02:03:11'),
(6, NULL, 'Hoàng Dương', 'hd@gmail.com', 'users/default.png', NULL, '$2y$10$XutrXXi4aKEV9AcCEDwbFuODb0qzsC.JqVBQvhHTn1KE5xUDjvMkS', NULL, '{\"locale\":\"en\"}', '2023-10-24 02:03:39', '2024-05-07 08:35:32'),
(7, NULL, 'Trịnh Trung Kiên', 'kiennttna3@gmail.com', 'users/default.png', NULL, '$2y$10$qdEQjR1uROgANny.5OpNg.hRQCGoFLyqjazdfNXTwhG1llvVh6BKi', NULL, NULL, '2023-10-24 02:27:53', '2023-10-24 02:27:53'),
(8, NULL, 'Super admin', 'superadmin@admin.com', 'users/default.png', NULL, '$2y$10$MvnUsG7XMOsKE1P4kU2cq.isDNWXdTsPT92Sb914QuoJIlRthInle', NULL, NULL, '2024-05-06 07:42:47', '2024-05-06 07:42:47'),
(9, NULL, 'Develop', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$nB5yL0bOk9gs3UsyWUbo1.brSDkB3aUlTQe9cTNu3tz2DqnZHkDPe', NULL, NULL, '2024-05-07 03:38:46', '2024-05-07 03:38:46'),
(10, NULL, 'Quang Huy', 'quanghuy@gmail.com', 'users/default.png', NULL, '$2y$10$lxwPVIdaWncUN8ECJMsqZeB/Tylx8tTURTBho7rUs9YMIkgTj/hX.', NULL, '{\"locale\":\"en\"}', '2024-05-08 04:56:57', '2024-05-09 06:16:26'),
(11, NULL, 'Nguyễn Quang hải', 'nguyenquanghai@gmail.com', 'users/default.png', NULL, '$2y$10$yfLn3OVEneB701aFHGE4LuoOZqBacBqs7DqbFiSwn225Ev/WkSaju', NULL, NULL, '2024-05-23 00:43:55', '2024-05-23 00:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pivot_classroom_user`
--
ALTER TABLE `pivot_classroom_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_histories`
--
ALTER TABLE `test_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pivot_classroom_user`
--
ALTER TABLE `pivot_classroom_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test_histories`
--
ALTER TABLE `test_histories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
