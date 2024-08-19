-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 19, 2024 lúc 09:55 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_app_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `logo`, `name`, `slug`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_66a62ca6e0f54.png', 'MSI', 'msi', 1, 1, '2024-07-28 04:05:32', '2024-07-28 04:33:58'),
(2, 'uploads/media_66a6262cb705d.png', 'ASUS', 'asus', 1, 1, '2024-07-28 04:06:20', '2024-07-28 04:42:14'),
(6, 'uploads/media_66b0ad0e9740a.png', 'Apple', 'apple', 1, 1, '2024-08-05 03:43:44', '2024-08-05 03:44:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Electronics', 'electronics', 'fas fa-mobile-alt', 1, '2024-07-27 05:55:48', '2024-07-27 05:55:48'),
(11, 'Mens Fashion', 'mens-fashion', 'fas fa-tshirt', 1, '2024-07-27 05:56:29', '2024-07-27 05:56:29'),
(12, 'Womens Fashion', 'womens-fashion', 'fas fa-star', 1, '2024-07-27 05:56:51', '2024-07-27 05:56:51'),
(13, 'Shoes', 'shoes', 'fas fa-shoe-prints', 1, '2024-07-27 05:57:14', '2024-07-27 05:57:14'),
(14, 'Health and Beauty', 'health-and-beauty', 'fas fa-hands-helping', 1, '2024-07-27 05:58:01', '2024-07-27 05:59:00'),
(15, 'Groceries', 'groceries', 'fas fa-layer-group', 1, '2024-07-27 06:00:00', '2024-07-27 06:00:00'),
(16, 'Home and Life', 'home-and-life', 'fas fa-home', 1, '2024-07-27 06:00:27', '2024-07-27 06:00:27'),
(17, 'Sports and Outdoors', 'sports-and-outdoors', 'fab fa-hubspot', 1, '2024-07-27 06:00:51', '2024-07-27 06:00:51'),
(18, 'Automotive', 'automotive', 'fas fa-car-alt', 1, '2024-07-27 06:01:22', '2024-07-27 06:01:22'),
(19, 'Babies and Toys', 'babies-and-toys', 'fas fa-atom', 1, '2024-07-27 06:01:43', '2024-07-28 00:17:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(6, 10, 8, 'Canon', 'canon', 1, '2024-07-27 06:05:09', '2024-07-27 06:05:09'),
(7, 10, 8, 'DJI', 'dji', 1, '2024-07-27 06:05:24', '2024-07-27 06:05:24'),
(8, 10, 8, 'GoPro', 'gopro', 1, '2024-07-27 06:05:39', '2024-07-27 06:05:39'),
(9, 10, 8, 'Pentax', 'pentax', 1, '2024-07-27 06:05:49', '2024-07-27 06:05:49'),
(10, 10, 9, 'Acer', 'acer', 1, '2024-07-27 06:05:58', '2024-07-27 06:05:58'),
(11, 10, 9, 'ASUS', 'asus', 1, '2024-07-27 06:06:13', '2024-07-27 06:06:13'),
(12, 10, 9, 'Lenovo', 'lenovo', 1, '2024-07-27 06:06:44', '2024-07-27 06:06:44'),
(13, 10, 9, 'MSI', 'msi', 1, '2024-07-27 06:07:03', '2024-07-27 06:07:03'),
(14, 10, 10, 'Google Pixel', 'google-pixel', 1, '2024-07-27 06:07:24', '2024-07-27 06:07:24'),
(15, 10, 10, 'One Plus', 'one-plus', 1, '2024-07-27 06:07:41', '2024-07-27 06:07:41'),
(16, 10, 10, 'SAMSUNG', 'samsung', 1, '2024-07-27 06:08:00', '2024-07-28 00:48:52'),
(17, 10, 10, 'Sony Xperia', 'sony-xperia', 1, '2024-07-27 06:08:22', '2024-07-28 00:48:46'),
(18, 10, 11, 'Apple', 'apple', 1, '2024-07-27 06:08:48', '2024-07-27 06:08:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `max_use` int UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_used` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `quantity`, `max_use`, `start_date`, `end_date`, `discount_type`, `discount`, `status`, `total_used`, `created_at`, `updated_at`) VALUES
(1, '30% discount', 'OFFER30', 100, 1, '2024-08-02', '2024-08-12', 'percent', 30, 1, 0, '2024-08-02 06:07:38', '2024-08-02 06:27:25'),
(2, '40% discount', 'OFFER40', 150, 1, '2024-08-02', '2024-08-20', 'percent', 40, 1, 0, '2024-08-02 06:08:26', '2024-08-19 00:56:35'),
(4, 'Flat discount 100', 'FLAT100', 100, 2, '2024-08-06', '2024-08-10', 'amount', 100, 1, 0, '2024-08-05 23:01:45', '2024-08-05 23:01:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '2024-08-31', '2024-08-04 04:24:34', '2024-08-04 04:26:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flash_sale_items`
--

CREATE TABLE `flash_sale_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `flash_sale_id` bigint UNSIGNED NOT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flash_sale_items`
--

INSERT INTO `flash_sale_items` (`id`, `product_id`, `flash_sale_id`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 1, 1, '2024-08-04 07:12:02', '2024-08-04 07:12:02'),
(5, 4, 1, 1, 1, '2024-08-05 00:38:14', '2024-08-05 00:38:14'),
(6, 6, 1, 1, 1, '2024-08-05 03:50:08', '2024-08-05 03:50:08'),
(7, 7, 1, 1, 1, '2024-08-05 03:58:26', '2024-08-05 03:58:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `layout`, `contact_email`, `currency_name`, `currency_icon`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'Sazao', 'LTR', 'Sazao@contact.mail', 'USD', '$', 'Asia/Ho_Chi_Minh', '2024-08-05 07:26:16', '2024-08-19 00:28:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_07_18_031915_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2024_07_18_033016_create_categories_table', 3),
(4, '2024_07_18_033402_create_sub_categories_table', 4),
(5, '2024_07_18_033625_create_child_categories_table', 5),
(6, '2024_07_18_032418_create_products_table', 6),
(24, '2024_07_18_034124_create_product_image_galleries_table', 7),
(25, '2024_07_18_034333_create_product_variants_table', 8),
(26, '2024_07_18_034627_create_product_variant_item_table', 9),
(27, '2024_07_18_035333_create_user_addresses_table', 10),
(28, '2024_07_18_040027_create_orders_table', 11),
(29, '2024_07_18_040729_create_order_products_table', 12),
(30, '2024_07_18_041119_create_product_reviews_table', 13),
(31, '2024_07_18_041346_create_blogs_table', 14),
(32, '2024_07_18_041609_create_product_review_galleries_table', 15),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 16),
(34, '2019_08_19_000000_create_failed_jobs_table', 16),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 16),
(36, '2024_07_18_033959_create_brands_table', 16),
(37, '2024_07_18_034927_create_coupons_table', 16),
(38, '2024_07_18_035650_create_sliders_table', 16),
(39, '2024_07_18_042011_create_wishlists_table', 16),
(40, '2024_07_18_044640_create_shipping_rules_table', 16),
(41, '2014_10_12_100000_create_password_resets_table', 17),
(42, '2024_07_28_102529_add_brands_table', 17),
(44, '2024_07_28_131817_create_vendors_table', 18),
(47, '2024_07_29_075811_change_products_table', 19),
(48, '2024_07_31_075427_rename_product_variant_item_table_to_product_variant_items_table', 20),
(50, '2024_08_01_014342_add_shop_name_to_vendors_table', 21),
(51, '2024_08_04_065025_create_flash_sales_table', 22),
(52, '2024_08_04_091401_create_flash_sale_items_table', 22),
(53, '2024_08_05_111318_create_general_settings_table', 23),
(54, '2024_08_06_074328_add_order_products_table', 24),
(55, '2024_08_16_020104_create_paypal_settings_table', 25),
(56, '2024_08_19_072437_create_transactions_table', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `sub_total` double NOT NULL,
  `amount` double NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `order_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `user_id`, `sub_total`, `amount`, `currency_name`, `currency_symbol`, `product_qty`, `payment_method`, `payment_status`, `order_address`, `shipping_method`, `coupon`, `order_status`, `created_at`, `updated_at`) VALUES
(4, '324638', 4, 3350, 2060, 'USD', '$', 3, 'paypal', 1, '{\"id\":5,\"user_id\":4,\"name\":\"\\u0110\\u1eb7ng Thanh Phong\",\"email\":\"phongzau2004@gmail.com\",\"phone\":\"0375566576\",\"zip\":\"11700\",\"country\":\"Vietnam\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"address\":\"S\\u1ed1 81 ng\\u00f5 42 Th\\u1ecbnh Li\\u1ec7t ho\\u00e0ng mai h\\u00e0 n\\u1ed9i\",\"created_at\":\"2024-08-13T12:13:10.000000Z\",\"updated_at\":\"2024-08-13T12:13:10.000000Z\"}', '{\"id\":2,\"name\":\"Ahamove\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"40% discount\",\"coupon_code\":\"OFFER40\",\"discount_type\":\"percent\",\"discount\":40}', '0', '2024-08-19 02:44:16', '2024-08-19 02:44:16'),
(5, '762257', 4, 1422, 903.2, 'USD', '$', 1, 'paypal', 1, '{\"id\":5,\"user_id\":4,\"name\":\"\\u0110\\u1eb7ng Thanh Phong\",\"email\":\"phongzau2004@gmail.com\",\"phone\":\"0375566576\",\"zip\":\"11700\",\"country\":\"Vietnam\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"address\":\"S\\u1ed1 81 ng\\u00f5 42 Th\\u1ecbnh Li\\u1ec7t ho\\u00e0ng mai h\\u00e0 n\\u1ed9i\",\"created_at\":\"2024-08-13T12:13:10.000000Z\",\"updated_at\":\"2024-08-13T12:13:10.000000Z\"}', '{\"id\":2,\"name\":\"Ahamove\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"40% discount\",\"coupon_code\":\"OFFER40\",\"discount_type\":\"percent\",\"discount\":40}', '0', '2024-08-19 02:52:44', '2024-08-19 02:52:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `vendor_id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variants` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_total` int UNSIGNED NOT NULL,
  `unit_price` int UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `vendor_id`, `product_name`, `variants`, `variant_total`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(7, 4, 4, 3, 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W', '[]', 0, 900, 1, '2024-08-19 02:44:16', '2024-08-19 02:44:16'),
(8, 4, 6, 1, 'iPhone 15 | Chính hãng VN/A', '[]', 0, 1000, 1, '2024-08-19 02:44:16', '2024-08-19 02:44:16'),
(9, 4, 7, 1, 'Samsung Galaxy S24 Ultra', '[]', 0, 1450, 1, '2024-08-19 02:44:16', '2024-08-19 02:44:16'),
(10, 5, 1, 1, 'Laptop MSI Gaming GF63 12UC-887VN', '{\"Capacity\":{\"name\":\"512 GB\",\"price\":0},\"Ram\":{\"name\":\"8GB\",\"price\":0}}', 0, 711, 2, '2024-08-19 02:52:44', '2024-08-19 02:52:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paypal_settings`
--

CREATE TABLE `paypal_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `paypal_settings`
--

INSERT INTO `paypal_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `client_id`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'United States', 'USD', 1, 'AT6LsMSCKFmxWf49DKTgHXgB970SnZyGYHBYHCS4KtNNWIMReYlj4N8Ge3FxGNb9yhpBZ5jYBjbsx1aQ', 'EGPLW137hz_rlJatIZRPEvFAv5j4kW670tKcTuzX0moqWwf1T4GosYTUV2jAqR5v2OMVfHMSiSbEmM2U', '2024-08-15 19:47:35', '2024-08-16 06:19:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED DEFAULT NULL,
  `child_category_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_approved` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 'Laptop MSI Gaming GF63 12UC-887VN', 'laptop-msi-gaming-gf63-12uc-887vn', 'uploads/media_66a77da92b807.webp', 1, 10, 9, 13, 1, 100, 'Laptop MSI (Micro-Star International) nổi tiếng với thiết kế mạnh mẽ, chuyên dụng cho game thủ và người dùng cần hiệu năng cao.', '<h1 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); font-size: 20px; text-align: center;\"><span style=\"margin: 0px; font-weight: bolder;\"><span style=\"margin: 0px; font-size: 24pt;\">MSI GF63 Thin 12VE-460VN: Gaming chính hãng siêu khỏe i5-12450H + RTX 4050 chiến game cực mượt - Nâng cấp cực đỉnh</span></span></h1><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(0, 0, 0);\"><a href=\"https://laptop88.vn/new-100-laptop-msi-gaming-gf63-thin-12ve-460vn-intel-core-i5-12450h-rtx-4050-4gb-15.6-inch-full-hd-144hz.html\" style=\"margin: 0px; color: rgb(0, 0, 0);\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN</span></a> là mẫu <a href=\"https://laptop88.vn/laptop-gaming.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">laptop gaming</a> đang cực kỳ HOT trong thời gian gần đây đến từ thương hiệu l<a href=\"https://laptop88.vn/laptop-msi.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">aptop MSI</a>. Mẫu <a href=\"https://laptop88.vn/may-tinh-xach-tay.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">laptop</a>/ <a href=\"https://laptop88.vn/may-tinh-xach-tay.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">máy tính xách tay</a> này không chỉ sở hữu thiết kế cơ động, dễ dàng mang theo mọi nơi, mà máy còn sở hữu sức mạnh vượt trội để đáp ứng nhu cầu làm việc, giải trí và chơi game với chip i5 12450H + RTX 4050 và khả năng nâng cấp RAM cực tốt, làm đa nhiệm cực mượt,... Cùng Laptop88 tìm hiểu kỹ hơn về sản phẩm trên thông qua nội dung bài viết sau đây nhé!</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; color: rgb(0, 0, 0);\"> </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Cấu hình siêu chất khi sở hữu chip core i5 gen 12 đời mới được tích hợp card rời RTX 4050 cho phép chiến mọi tựa game đồ họa nặng đều siêu mượt mà</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Sẵn 8GB RAM đa nhiệm cực mượt mà. Khả năng nâng cấp cực tốt đến 64GB tha hồ mở nhiều tabs không giật lag</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Màn 15.6 Full HD với tần số quét 144Hz cho hình ảnh được chuyển động mượt mà, sắc nét, chơi game cực phê không có hiện tượng bị xé hình</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Hệ thống tản nhiệt tốt nhất giúp máy luôn duy trì nhiệt độ ổn định khi chiến game và thao tác trên các ứng dụng đồ họa nặng</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Thiết kế mạnh mẽ, đậm chất gaming cùng build máy chắc chắn, sử dụng bền bỉ trong nhiều năm dài</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Bảo hành chính hãng 12 tháng dài lâu cực yên tâm</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><br><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN: Hiệu năng mạnh mẽ chiến tốt mọi tựa game</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN mang đến hiệu năng tuyệt vời với trang bị cấu hình chip i5 - 12450H có tới 8 nhân 12 luồng, xung nhịp giao động cũng cực cao: Tần số Turbo tối đa của E-core là 3.30 GHz và Tần số Turbo tối đa của P-core là 4.40 GHz. Hậu tố H trên tên chip cho thấy hiệu năng xử lý vượt trội cho các dòng laptop gaming, đáp ứng tốt mọi tác vụ nặng nhất như chơi các tựa game AAA cấu hình cao, hay chỉnh sửa ảnh, đồ hoạ,...</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Kết hợp với đó là card đồ họa RTX 4050. Đây là một sản phẩm card có series mới nhất hiện nay và sở hữu tất cả những công nghệ mới, mạnh mẽ nhất như: Lõi Tensor thế hệ thứ 4 được hỗ trợ nhiều hơn từ công nghệ trí thông minh nhân tạo (AI); cải thiện được hiệu suất đổ bóng tốt,... Và đặc biệt là cho hiệu năng hoạt động cực ấn tượng với 1440 pixel, khiến nhiều game thủ cảm thấy ngợp với với hiệu suất 4K.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-3.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Với bộ cấu hình kể trên, game thủ có thể thoải mái chơi mọi tựa game bom tấn như GTA V, PUBG, Tomb Raider, ... trên MSI GF63 Thin 12VE-460VN. Ngoài ra, với công nghệ Ray Tracing đổ bóng, khử răng cưa mượt, tối ưu rất tốt cho mọi tác vụ đồ họa nặng như 3Ds Max, Sketchup, PTS, chỉnh sửa video, dựng phim, sáng tạo nội dung, thiết kế công trình... siêu mượt mà.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Chưa kể, MSI GF63 Thin 12VE-460VN còn có sẵn dung lượng RAM 8GB DDR4, có khả năng nâng cấp tốt đến tối đa 64GB RAM và ổ cứng SSD 512GB tốc độ cao hỗ trợ cho mọi nhu cầu sử dụng đa nhiệm không giật lag/ khởi động game, các phần mềm, ứng dụng siêu nhanh giúp các game thủ chinh phục mọi cuộc chơi dễ dàng</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><table width=\"402\" style=\"margin: 0px auto; font-family: Roboto, sans-serif; max-width: 100%; width: 768.312px; color: rgb(34, 34, 34);\"><tbody style=\"margin: 0px;\"><tr style=\"margin: 0px;\"><td style=\"margin: 0px; text-align: right;\"><br></td><td style=\"margin: 0px;\"></td></tr></tbody></table><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN sở hữu màn hình sắc nét, 144Hz siêu mượt mà</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN sở hữu màn hình kích thước 15.6 inch, với độ phân giải đạt Full HD (1920 x 1080) cho khả năng hiển thị hình ảnh cực kỳ sắc nét và chân thực. Tần số quét màn hình lên tới 144Hz giúp loại bỏ hiện tượng chuyển động nhòe và để lại trải nghiệm hình ảnh hoàn hảo mượt mà, tạo ra một cái nhìn rõ ràng về kẻ thù và là chìa khóa để dẫn chiến thắng.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-1.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Ngoài ra, tấm màn IPS tiên tiến cung cấp góc nhìn rộng lên đến 178 độ, giúp nâng cao trải nghiệm hình ảnh so với các loại màn hình thông thường, dù ở góc nhìn nào thì hình ảnh vẫn luôn giữ được chất lượng tốt nhất.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN: Thiết kế cơ động, dễ dàng di chuyển</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN sở hữu ngoại hình mỏng nhẹ đến bất ngờ vì chỉ có trọng lượng 1.86kg. Đây là thiết kế đề cao tính di động cao - cực phù hợp với những bạn có nhu cầu di chuyển nhiều.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-4.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Mỏng nhẹ nhưng MSI Gaming GF63 Thin 12VE-460VN vẫn vô cùng chắc chắn khi vỏ và mặt bàn phím được làm từ chất liệu nhôm phay xước. Các góc máy được làm vuông vức với màu đen đầy quyền lực, logo rồng đỏ đặc trưng mang đến phong cách thiết kế tối giản, tinh tế nhưng mạnh mẽ và đầy quyền lực đậm chất MSI.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Bản lề chắc chắn, build máy được hoàn thiện cứng cáp giúp bạn yên tâm sử dụng máy trong nhiều năm liền mà không lo tã máy.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><br><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN: Tản nhiệt mát mẻ</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Ở phiên bản MSI GF63 Thin 12VE-460VN này, MSI đã tinh chỉnh hướng đến khả năng thoát nhiệt êm hơn, mát hơn giúp đem lại hiệu năng sử dụng mạnh mẽ nhất đến game thủ. Các khe thoát khí được trang bị ở mặt dưới cùng 2 bên cạnh máy của máy giúp quá trình lưu thông khí nóng diễn ra nhanh chóng hơn.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"> <img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-2.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">Bàn phím gõ sướng, độ nảy tốt với MSI GF63 Thin 12VE-460VN</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Do sở hữu màn hình rộng 15.6 inch nên chiếc laptop gaming HP Victus RTX 2050 này được trang bị cả bàn phím số riêng biệt cực kỳ tiện lợi từ các công việc tính toán, nhập liệu đến chơi game. Trải nghiệm gõ phím cũng cực kỳ thích, độ nảy tốt, hành trình phím sâu. Bên cạnh đó, máy cũng có trang bị LED phím đơn sắc có độ sáng đèn lại đủ nhìn, tiện dụng khi sử dụng trong điều kiện thiếu sáng.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-5.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI Gaming GF63 Thin 12VE-460VN có hành trình phím sâu, êm, độ nảy tốt mang lại trải nghiệm gõ phím cực đã. Đèn nền phím với công nghệ Single Backlit màu đỏ cho phép điều chỉnh độ sáng tạo hiệu ứng bắt mắt khi chơi game.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\"><br></span></p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">Cổng kết nối đa dạng đáp ứng mọi nhu cầu</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN sở hữu hàng loạt cổng kết nối đa dạng đáp ứng mọi nhu cầu làm việc và giải trí bao gồm: 1x Type-C USB3.2 Gen1; 3x Type-A USB3.2 Gen1; 1x (4K @ 30Hz) HDMI; 1x Mic-in; 1x Headphone-out</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Đồng thời, việc trang bị thêm cổng kết nối WIFI 6, Bluetooth 5.1 còn giúp gia tăng tốc độ kết nối, mạng internet được truyền tải nhanh hơn và hạn chế các tình trạng giật, lag trong quá trình chơi game.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><em style=\"margin: 0px;\"><span style=\"margin: 0px; font-size: 14pt;\">Trong tầm giá này, <span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN</span> thực sự là một lựa chọn xuất sắc dành cho các game thủ mong muốn sở hữu một chiếc máy cấu hình khỏe chiến mượt mọi tựa game nặng nhưng vẫn giữ được dáng vẻ gọn nhẹ, dễ dàng di chuyển. Liên hệ Laptop88 ngay nhé!</span></em></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><br></p>', 'ELEC-6312887', 711, 650, '2024-07-30', '2024-08-11', 'new_arrival', 1, 1, '2024-07-29 04:31:53', '2024-08-04 06:47:50'),
(4, 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W', 'laptop-asus-tuf-gaming-a15-fa507nu-lp140w', 'uploads/media_66b09cf0dee16.jfif', 3, 10, 9, 11, 2, 100, 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nCáp, sạc, sách hướng dẫn sử dụng\r\nBảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', '<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; font-size: 18px; font-weight: 600; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; overflow-y: auto; scrollbar-width: none;\"><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Một chiếc laptop dành cho game thủ, với cấu hình khủng và thiết kế độc đáo</li><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Bộ vi xử lý AMD R5-7535HS và card đồ họa NVIDIA Geforce RTX 4050 giúp bạn chinh phục mọi tựa game nặng và đòi hỏi cao về đồ họa</li><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">RAM 8 GB cùng ổ cứng SSD 512 GB cho không gian lưu trữ rộng rãi, hỗ trợ mở máy, mở ứng dụng nhanh chóng</li><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Màn hình IPS 15.6 inch cho hình ảnh sắc nét, mượt mà và rực rỡ, với tần số quét 144 Hz, độ phân giải FHD và dải màu sRGB rộng</li><li style=\"box-sizing: inherit; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Laptop còn có thiết kế chắc chắn, chống va đập và bụi bẩn hiệu quả</li></ul><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"></p></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W </span>đem tới hiệu suất xử lý khủng nhờ được trang bị chipset AMD Ryzen 5 7535HS và VGA NVIDIA GeForce RTX 4050 6GB. Cùng với đó là khả năng lưu trữ và đa nhiệm xuất sắc thông qua dung lượng RAM 8GB DDR5-4800 SO-DIMM cùng ổ cứng 512GB PCIe 4.0 NVMe M.2 SSD. Ngoài ra, dòng <a href=\"https://cellphones.com.vn/laptop/asus/tuf.html\" title=\"laptop Asus Tuf gaming\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">laptop Asus Tuf gaming</span></a> này còn sở hữu màn hình 15.6 inches với công nghệ hiển thị tiên tiến, hỗ trợ độ sáng 250nits và độ phủ màu sRGB 100% siêu thực.</p><h2 style=\"box-sizing: inherit; font-size: 21px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W - Hiệu năng đỉnh cao, chất lượng hình ảnh sắc nét</span></h2><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W </span>không chỉ nổi bật với cấu hình khủng mà còn thu hút người dùng bởi thiết kế độc đáo và hiện đại. Sở hữu một kiểu dáng góc cạnh, cứng cáp, Asus TUF Gaming A15 FA507NU-LP140W cực kỳ phù hợp với phong cách mạnh mẽ của game thủ và người dùng cá tính. Bên cạnh đó, dòng laptop Gaming tới từ nhà Asus này còn hỗ trợ kết nối đa dạng, từ HDMI, USB, đến Wifi 6, mang lại sự tiện lợi và đảm bảo linh hoạt trong sử dụng.</p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Dễ dàng xử lý mọi tác vụ đồ họa, chiến game khủng với hiệu năng mạnh</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W khẳng định vị thế của mình trong thế giới gaming bằng thông số cấu hình cực khủng. Cụ thể, nhờ được hỗ trợ bởi bộ vi xử lý AMD Ryzen 5 và card đồ họa NVIDIA GeForce RTX 4050, dòng laptop gaming này không chỉ đảm bảo hiệu suất cao khi xử lý các tác vụ hằng ngày mà còn làm chủ mọi tựa game đòi hỏi cấu hình cao. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-1.jpg\" alt=\"Cấu hình laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%; float: none;\" class=\"\"></p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Sự kết hợp ấn tượng giữa CPU mạnh mẽ và GPU hiệu quả, cùng công nghệ làm mát tiên tiến, đã cho phép Asus TUF Gaming A15 FA507NU-LP140W duy trì hiệu suất ổn định dài lâu, đem lại trải nghiệm gaming mượt mà, không giới hạn.</p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bộ nhớ ổn định giúp đa nhiệm linh hoạt và ghi nhớ dữ liệu cỡ lớn dễ dàng</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Asus TUF Gaming A15 FA507NU-LP140W không chỉ mạnh mẽ về hiệu suất mà còn ấn tượng với khả năng lưu trữ và đa nhiệm. Với RAM DDR5 8GB và ổ cứng SSD PCIe 4.0 NVMe M.2 512GB, phân khúc laptop Gaming nhà Asus này cung cấp tới người dùng một không gian lưu trữ rộng rãi và tốc độ truy cập dữ liệu cực nhanh. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-4.jpg\" alt=\"Cấu hình laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Ngoài bộ nhớ tiêu chuẩn trên máy <a href=\"https://cellphones.com.vn/laptop/asus/gaming.html\" title=\"Asus Gaming\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">Asus Gaming</span></a> thì bạn cũng có thể mở rộng RAM lên tới 32GB và nâng cấp thêm ổ cứng để đáp ứng nhu cầu lưu trữ cũng như đa nhiệm mà không gặp bất kỳ khó khăn nào. Điểm nhấn về bộ nhớ này đặc biệt hữu ích cho game thủ và những người sử dụng cần xử lý công việc nặng như chỉnh sửa video, đồ họa mà không cần lo lắng về không gian lưu trữ và đa nhiệm.</p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Kiểu dáng hầm hố, mạnh mẽ chuẩn Gaming</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Thiết kế của Asus TUF Gaming A15 FA507NU-LP140W hội tụ đầy đủ các nét nổi trội của một phân khúc laptop gaming: mạnh mẽ, cứng cáp và đầy cá tính. Theo đó, Asus TUF Gaming A15 FA507NU-LP140W mang một vẻ ngoài hiện đại với góc cạnh được tinh chỉnh kỹ lưỡng, cùng màu sắc và hoàn thiện bề mặt độc đáo, tạo nên điểm nhấn nổi bật cho không gian làm việc hay giải trí của bạn. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Thông qua đó, thế hệ laptop nhà Asus này không chỉ thu hút người dùng bởi hiệu suất ấn tượng mà còn bởi thiết kế ngoại hình cuốn hút, phản ánh phong cách và đẳng cấp của người sở hữu.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-5.jpg\" alt=\"Thiết kế  laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%; float: none;\" class=\"\"></p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hiển thị siêu thực, mượt mà trong từng khung hình với tần số quét lớn</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Màn hình của Asus TUF Gaming A15 FA507NU-LP140W đem lại trải nghiệm hình ảnh đỉnh cao với độ phân giải Full HD 1920 x 1080 pixels, cùng công nghệ màn hình IPS chống chói giúp màu sắc hiển thị thêm phần rực rỡ, sống động. Đặc biệt, tần số quét trên Asus TUF Gaming A15 FA507NU-LP140W còn lên đến 144Hz, mang lại khả năng hiển thị mượt mà, giảm nhiễu và xé hình. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Nhờ vậy mà mọi nhu cầu chiến game hay xem phim của người dùng đều được đáp ứng với trải nghiệm mượt mà hàng đầu. Kèm theo đó là độ phủ màu NTSC 72%, SRGB 100%, Adobe 75.35%, cho phép dòng máy tính xách tay Gaming nhà Asus đảm bảo trải nghiệm hình ảnh chân thực và sắc nét, trong từng chi tiết nhỏ.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-3.jpg\" alt=\"Màn hình laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Viên pin lớn, cho phép thoải mái chiến game hay xử lý đồ hoạ suốt ngày dài</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Asus TUF Gaming A15 FA507NU-LP140W không chỉ mạnh mẽ về hiệu suất mà còn ấn tượng với khả năng sử dụng pin dài lâu. Theo đó, Asus TUF Gaming A15 FA507NU-LP140W sở hữu viên pin dung lượng lớn 90WHrs, hỗ trợ người dùng trong nhiều giờ làm việc, giải trí mà không cần sạc liên tục. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-2.jpg\" alt=\"Pin laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Kết hợp với mức năng lượng lớn này công nghệ sạc nhanh xuất sắc giúp giảm thiểu thời gian chờ đợi của người dùng trong quá trình nạp lại năng lượng cho máy. Thông qua tính năng ấn tượng về pin và khả năng sạc này, Asus TUF Gaming A15 FA507NU-LP140W trở thành lựa chọn lý tưởng cho những ai cần một phiên bản laptop đáng tin cậy mà không lo lắng về việc cạn kiệt năng lượng.</p><h2 style=\"box-sizing: inherit; font-size: 21px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Mua laptop Asus TUF Gaming A15 FA507NU-LP140W tại CellphoneS</span></h2><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Khi bạn tìm kiếm một địa chỉ đáng tin cậy để mua laptop Asus TUF Gaming A15 FA507NU-LP140W, CellphoneS chính là lựa chọn không nên bỏ qua. Với hơn 100 chi nhánh trên toàn quốc cùng các ưu đãi giảm giá hấp dẫn, CellphoneS không chỉ cung cấp sản phẩm chính hãng mà còn mang đến cho bạn những phút giây mua sắm đồ công nghệ trên cả tuyệt vời. Ngoài ra, khi đến với CellphoneS, bạn sẽ còn nhận được sự chăm sóc và hỗ trợ chuyên nghiệp, giúp bạn yên tâm về chất lượng sản phẩm và dịch vụ sau bán hàng. Ghé thăm CellphoneS ngay hôm nay để không bỏ lỡ cơ hội sở hữu chiếc laptop gaming mạnh mẽ và ấn tượng này bạn nhé! </p></div>', 'ELEC-6823923', 900, 800, '2024-08-01', '2024-08-11', 'top_product', 1, 1, '2024-07-31 21:01:27', '2024-08-05 02:35:44');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(6, 'iPhone 15 | Chính hãng VN/A', 'iphone-15-chinh-hang-vna', 'uploads/media_66b0ae94b8f5f.webp', 1, 10, NULL, NULL, 6, 60, 'Thiết kế bằng nhôm\r\nMặt trước Ceramic Shield\r\nMặt sau bằng kính pha màu', '<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow-y: auto; scrollbar-width: none;\"><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Thiết kế thời thượng và bền bỉ - Mặt lưng kính được pha màu xu hướng cùng khung viền nhôm bền bỉ</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Dynamic Island hiển thị linh động mọi thông báo ngay lập tức giúp bạn nắm bắt mọi thông tin</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Chụp ảnh đẹp nức lòng - Camera chính 48MP, Độ phân giải lên đến 4x và Tele 2x chụp chân dung hoàn hảo</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Pin dùng cả ngày không lắng lo - Thời gian xem video lên đến 20 giờ và sạc nhanh qua cổng USB-C tiện lợi</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Cải tiến hiệu năng vượt bậc - A16 Bionic mạnh mẽ giúp bạn cân mọi tác vụ dù có yêu cầu đồ hoạ cao</li></ul></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><blockquote style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> được trang bị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">màn hình Dynamic Island kích thước 6.1 inch</span> với công nghệ hiển thị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Super Retina XDR</span> màn lại trải nghiệm hình ảnh vượt trội. Điện thoại với mặt lưng kính nhám chống bám mồ hôi cùng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">5 phiên bản màu sắc</span> lựa chọn: <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hồng, Vàng, Xanh lá, Xanh dương và đen</span>. Camera trên <a href=\"https://cellphones.com.vn/mobile/apple/iphone-15.html\" title=\"iPhone 15 series\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">iPhone 15 series</span></a> cũng được nâng cấp lên <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">cảm biến 48MP</span> cùng tính năng chụp<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> zoom quang học tới 2x</span>. Cùng với thiết kế cổng sạc thay đổi từ lightning sang USB-C vô cùng ấn tượng.</p></blockquote><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/apple-iphone-15-12.JPG\" alt=\"iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Tại sao nên mua điện thoại iPhone 15 tại CellphoneS</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Là một trong những hệ thống bán lẻ lớn nhất tại Việt Nam do đó có nhiều lý do để khách hàng chọn mua <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">điện thoại iPhone 15</span> mới nhất tại hệ thống như:</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Sản phẩm chính hãng với chất lượng được đảm bảo</span>: CellphoneS là một trong số ít những chuỗi bán lẻ chính hãng Apple tại Việt Nam sở hữu chuỗi trung tâm bảo hành chính hãng uỷ quyền Apple - CARES.vn. Nhờ đó, khi khách hàng mua hàng tại CellphoneS có thể  hoàn toàn yên tâm với chính sách bảo hành đổi mới 30 ngày đầu khi có lỗi từ nhà sản xuất, bảo hành 12 tháng tiện lợi, nhanh chóng tại các trung tâm bảo hành CARES.vn.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Thu cũ lên đời – trợ giá cao</span>: CellphoneS có chương trình thiết bị cũ với định giá cao đồng thời trợ giá hấp dẫn khi khách hàng lên đời iPhone 15 mới. Nhờ đó khách hàng mua iP15 qua chương trình thu cũ – lên đời có thể sở hữu được siêu phẩm iPhone mới nhất với mức chi phí tiết kiệm nhất.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Trả góp 0% cùng trả trước thấp</span>: Khi mua điện thoại qua chương trình trả góp tại CellphoneS, khách hàng có thể mua iP15 với mức lãi suất 0% - không trả dước cùng với đó là không phát sinh phí phụ thu. Đặc biệt, ở một số phương thức thanh toán, khách hàng còn có thể mua trả góp trên giá bán vô cùng ấn tượng.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giảm giá sâu cho phụ kiện mua kèm chính hãng</span>: Khi mua điện thoại iPhone kèm các phụ kiện chính hãng như bao da, ốp lưng, củ - cáp sạc thì khách hàng sẽ được mua phụ kiện chính hãng với mức giá ưu đãi.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hệ thống cửa hàng toàn quốc</span>: Với hệ thống cửa hàng phân bố rộng khắp, quý khách hàng có thể dễ dàng đến và trải nghiệm trực tiếp sản phẩm tại cửa hàng hoặc mua hàng online - giao hàng nhanh chóng (Giao hàng 2 giờ với đơn hàng nội thành Hà Nội và Hồ Chí Minh).</p></li></ul><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 giá bao nhiêu tiền, bảng giá chi tiết</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 thường 128GB</span> là phiên bản chuẩn, có giá bán rẻ nhất trong series. Điện thoại có giá bán <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">khởi điểm 799 USD</span> cho phiên bản 128GB (Phiên bản cấu hình chuẩn). Giá bán iPhone 15 chính hãng tại các đại lý bán lẻ Việt Nam dao động <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">từ 22.99 triệu đồng – 31.99 triệu</span>, chi tiết <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">giá bán iPhone 15</span> như sau (Giá bán được tham khảo theo trang Apple.com):</p><table class=\"table table-bordered\" style=\"box-sizing: inherit; border-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(54, 54, 54); border-color: rgb(211, 211, 211); width: 800px; margin-bottom: 1.5rem; margin-left: auto; margin-right: auto;\"><tbody style=\"box-sizing: inherit; background-color: transparent;\"><tr class=\"success\" style=\"box-sizing: inherit; background-color: rgb(223, 240, 216); color: rgb(61, 102, 17); font-size: 12px;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Phiên bản cấu hình</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá mở bán quốc tế</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá bán chính hãng Việt Nam</span></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 128GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">799 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Từ 22.999.000 VND</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 256GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">899 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Từ 25.999.000 VND</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 512GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">1099 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Từ 31.999.000 VND</p></td></tr></tbody></table><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Đánh giá chi tiết điện thoại iPhone 15 về các thông số</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Là mẫu điện thoại cao cấp, điện thoại iPhone 15 sở hữu nhiều thông số cấu hình nổi trội giúp đem lại những trải nghiệm dùng mượt mà cho người dùng.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Màn hình Dynamic Island 6.1 inch</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> với màn hình <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Super Retina XDR</span> kích thước 6.1 inch cùng tấm nền OLED mang lại màu sắc trung thực. Cùng với đó là thiết kế Dynamic Island giúp hiển thị các thông báo một cách linh động. Độ trang trên màn hình cũng được nâng cấp, gấp đôi trên iPhone 14 khi ở dưới ánh nắng mặt trời nhờ đó giúp hiển thị rõ nét kể cả dưới trời nắng.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-5.png\" alt=\"Màn hình điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Con chip Apple A16 Bionic hoạt động mượt mà</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 được trang bị con <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">chip A16 Bionic</span>. Con chip với CPU 6 lõi nhờ đó hỗ trợ xử lý trơn tru các công việc phức tạp. Cùng với đó, điện thoại được trang bị GPU 5 lõi hỗ trợ xử lý những tác vụ đồ họa phức tạp.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Pin dùng lâu</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> được trang bị viên pin dung lượng lớn cùng với con chip A16 giúp tiết kiệm pin hiệu quả. Cụ thể, máy có thể mang lại 20giờ xem video trực tuyến hay 80 giờ nghe nhạc. Cùng với đó là công nghệ sạc nhanh có dây và không dây vô cùng tiện lợi. iPhone 15 sẽ được sạc bị sạc nhanh công suất 20W và sạc nhanh không dây MagSafe công suất 15W.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Hỗ trợ mạng 5G tốc độ cao</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 tiêu chuẩnvới 2 sim, trong đó có <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">1 sim vật lý và 1 esim</span>. Điện thoại hỗ trợ mạng di động 5G NR, FDD-LTE hay TD-LTE với tốc độ truyền – tải ấn tượng. Cùng với đó là kết nối wifi 6 cùng Bluetooth 5.3 ổn định.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Thiết kế chắc chắn cùng kháng nước IP68</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại iPhone 15 128GB với quy trình trao đổi i-on kép nhờ đó máy có thể sử dụng bền bỉ, giảm thiểu tối đa tình trạng sứt mẻ và trầy xước. Điện thoại với khung nhôm chuẩn hàng không vũ trụ bền bỉ.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-2_1.png\" alt=\"Thiết kế  điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại cũng sẽ được trang bị chuẩn khác nước và bụi bẩn IP68 hỗ trợ sử dụng trong nhiều điều kiện môi trường. Tuy nhiên hãng sản xuất không khuyến khích người dùng test thử tính năng này.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Nhiều màu sắc trẻ trung – Đa dạng sự lựa chọn</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 thường</span> sở hữu bộ sưu tập màu sắc đa dạng. Cụ thể điện thoại có tới <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">5 phiên bản màu sắc</span> khác nhau cho người dùng lựa chọn bao gồm:</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Xanh dương</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Hồng</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Vàng</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Xanh lá</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đen</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-1.png\" alt=\"Màu sắc điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Camera chính 48MP – Hỗ trợ quay phim chụp ảnh thông minh</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 thường</span> được trang bị cụm camera kép với độ phân giải 48MP. Trong đó camera chính sử dụng thấu kính bảy thành phần cùng khẩu độ ƒ/1.6 và camera góc rộng ƒ/2.4 hỗ trợ chụp góc 120 độ. Máy được trang bị nhiều chế độ chụp từ cơ bản đến chụp nâng cao như Photonic Engine, Deep Fusion hay chụp chân dung với 6 chế độ ánh sáng. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đặc biệt, với khả năng xử lý hình ảnh được cải thiện, máy cho khả năng chụp hình ấn tượng, kể cả trong điều kiện ánh sáng yếu. Trong các bức hình đặc biệt, chế độ Photonic Engine hỗ trợ mang lại màu sắc tươi sáng cùng đường nét chân thực, chi tiết đẹp mắt.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-4.png\" alt=\"Camera điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera TrueDepth</span> với khẩu độ lớn cùng khả năng tự động lấy nét mang lại những bức ảnh selfie cận cảnh rõ nét và rực rỡ. Cùng với đó, điện thoại cũng hỗ trợ tự động lấy nét nhiều chủ thể đảm bảo mang lại một bức ảnh selfie sắc nét nhất.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại với chế độ hành động hỗ trợ tối ưu trong quá trình quay video, các thước phim vẫn giữ được sự ổn định cần thiết kể cả khi người dùng rung lắc mạnh.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Cùng với đó, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> được cải thiện khả năng chụp zoom, hỗ trợ chụp ảnh cận cảnh hiệu quả. Theo đó, máy sẽ có ba chế độ zoom hỗ trợ người dùng là 0.5x - 1x và 2x. Trong đó chế độ zoom 2x hỗ trợ chụp ảnh phóng đại, 0.5x hỗ trợ chụp phong ảnh hoặc hình ảnh với góc rộng.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Chế độ bảo mật cao cùng tôn trọng sự riêng tư</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> sẽ được trang bị bảo mật qua gương mặt <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">FaceID</span> thông qua camera TrueDepth. Bên cạnh đó người dùng có nhưng không gian riêng tư như album bị ẩn. Thiết bị cũng minh bạch trong quyền theo dõi các ứng dụng nhờ đó người dùng có quyền tự quyết cho phép những ứng dụng cụ thể được theo dõi hoạt động của bản thân.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Cá nhân hóa giao diện với iOS 17</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với hệ điều hành <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iOS 17</span> mới, người dùng có thể tùy chỉnh màn hình khóa theo phong cách cá nhân. Cùng với đó là nhiều tính năng thông minh được nâng cấp như vuốt để trả lời, tìm kiếm nhanh qua bộ lọc hay kiểm tra an toàn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-3.png\" alt=\"Hệ điều hành điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"font-size: 15px;\"><br>Bên cạnh thông số bản tiêu chuẩn, mời bạn xem ngay thông số và giá</span><span style=\"font-size: 15px;\"> </span><a href=\"https://cellphones.com.vn/iphone-15-plus.html\" title=\"iPhone 15 Plus\" style=\"font-size: 15px; background-color: rgb(255, 255, 255); box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">iPhone 15 Plus</span></a><span style=\"font-size: 15px;\"> </span><span style=\"font-size: 15px;\">xem có chênh lệch gì nhé.</span><br></h2><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Điện thoại iPhone 15 có gì nâng cấp?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Nếu iPhone 14 được nhận định không quá khác biệt so với iPhone 13 thì sang iPhone 15, mẫu điện thoại thông minh này được được Apple nâng cấp nhiều điểm so với iPhone 14 từ thiết kế đến camera.</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Màn hình Dynamic Island</span>: Thiết thế màn hình mới thay cho thiết kế tai thỏ mai lại các hiển thị thông báo độc đáo, không chiếm nhiều không gian hiển thị của màn hình. Cùng với đó viền màn hình trên iPhone 15 cũng được hoàn hiện mỏng hơn. Độ sáng tối đa trên màn hình cũng được nâng cấp tới 2000 nits nhờ đó hỗ trợ hiển thị rõ nét trong điều kiện nắng gắt như ngoài trời.</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/apple-iphone-15-7_1.JPG\" alt=\"Điện thoại iPhone 15 có gì nâng cấp\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Màu sắc mới cùng mặt lưng kính pha màu</span>: iPhone 15 sở hữu thiết kế mặt lưng kính pha màu nhám nhờ đó hỗ trợ chống bám vân tay hiệu quả. Màu sắc trên điện thoại cũng có nhiều thay đổi khi không còn hai màu trắng và đỏ quen thuộc. Cụ thể iPhone 15 có 5 lựa chọn màu bao gồm: Hồng, vàng, xanh lá, xanh dương và đen.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Thay đổi cổng sạc sang USB-C</span>: Thế hệ điện thoại mới này đã được Apple nâng cấp lên cổng UBC-C phổ biến thay cho cổng lightning. Thay đổi này giúp điện thoại có thể kết nối với các phụ kiện gắn ngoài, truyền tải dữ liệu một cách nhanh chóng.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Cấu hình nâng cấp</span>: Điện thoại được trang bị con chip A16 Bionic với 6 lõi CPU và 5 lõi GPU mang lại hiệu năng sử dụng vượt trội.</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/apple-iphone-15-10_1.JPG\" alt=\"Điện thoại iPhone 15 có gì nâng cấp\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera cảm biến 48MP cùng zoom quang 2x</span>: Vẫn sở hữu camera kép nhưng ống kính chính đã được nâng cấp lên 48MP. Cùng với đó khả năng thu phóng quang học trên thiết bị cũng được cải thiện với 2x. Cùng với đó là nhiều tính năng chụp ảnh thông minh mới như chụp ảnh chân dung thế hệ mới với Focus và Depth Control.</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài những điểm nâng cấp trên thì iPhone 15 sẽ tiếp tục kế thừa một số thiết kế khác của thế hệ tiền nhiệm với màn hình 6.1 inch, ba phiên bản cấu hình bộ nhớ trong cũng như các chuẩn kháng nước – bụi bẩn. Tuy nhiên những nâng cấp trên cũng rất đáng giá để người dùng nâng cấp và trải nghiệm.</p></div>', 'ELEC-6312824', 1100, 1000, '2024-08-05', '2024-08-31', 'top_product', 1, 1, '2024-08-05 03:49:35', '2024-08-05 03:51:00');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(7, 'Samsung Galaxy S24 Ultra', 'samsung-galaxy-s24-ultra', 'uploads/media_66b0b04782ad7.jpg', 1, 10, NULL, NULL, 6, 80, 'Samsung S24 Ultra là siêu phẩm smartphone đỉnh cao mở đầu năm 2024 đến từ nhà Samsung với chip Snapdragon 8 Gen 3 For Galaxy mạnh mẽ, công nghệ tương lai Galaxy AI cùng khung viền Titan đẳng cấp hứa hẹn sẽ mang tới nhiều sự thay đổi lớn về mặt thiết kế và cấu hình. SS Galaxy S24 bản Ultra sở hữu màn hình 6.8 inch Dynamic AMOLED 2X tần số quét 120Hz. Máy cũng sở hữu camera chính 200MP, camera zoom quang học 50MP, camera tele 10MP và camera góc siêu rộng 12MP.', '<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow-y: auto; scrollbar-width: none;\"><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Trải nghiệm đỉnh cao với hiệu năng mạnh mẽ từ vi xử lý tân tiến, kết hợp cùng RAM 12GB cho khả năng đa nhiệm mượt mà.</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Lưu trữ thoải mái mọi ứng dụng, hình ảnh và video với bộ nhớ trong 256GB.</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Nâng tầm nhiếp ảnh di động với hệ thống camera tiên tiến, cho ra đời những bức ảnh và video chất lượng chuyên nghiệp.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Thiết kế sang trọng, đẳng cấp, khẳng định phong cách thời thượng.</li></ul></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><blockquote style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"><a href=\"https://cellphones.com.vn/samsung-galaxy-s24-ultra.html\" title=\"Samsung Galaxy S24 Ultra\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\">Samsung S24 Ultra</a></span> là siêu phẩm <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">smartphone</span> đỉnh cao mở đầu năm 2024 đến từ nhà Samsung với chip <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Snapdragon 8 Gen 3 For Galaxy</span> mạnh mẽ, công nghệ tương lai <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy AI</span> cùng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">khung viền Titan</span> đẳng cấp hứa hẹn sẽ mang tới nhiều sự thay đổi lớn về mặt thiết kế và cấu hình. <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">SS Galaxy S24 bản Ultra</span> sở hữu màn hình <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">6.8 inch</span> <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Dynamic AMOLED 2X</span> tần số quét <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">120Hz</span>. Máy cũng sở hữu <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">camera chính 200MP</span>, camera zoom quang học 50MP, camera tele 10MP và camera góc siêu rộng 12MP.</p></blockquote><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Vì sao nên mua Samsung Galaxy S24 Ultra?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đầu năm 2024, Samsung cho ra mắt <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 Ultra</span> – Flagship dẫn đầu xu hướng với <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">công nghệ AI</span> tích hợp cùng nhiều tính năng và ưu điểm vượt trội khác. Các tính năng AI nổi bật trên điện thoại <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung mới nhất</span> bao gồm:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy AI với các tính năng Khoanh tròn để tìm kiếm, Photo Assist, Live Translate, Note Assist</span>.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Khung viền bằng titan cứng cáp</span>, giúp thiết bị bền bỉ theo thời gian.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Các phiên bản màu lấy cảm hứng từ chất liệu đá tự nhiên</span>, mang đến vẻ đẹp sang trọng và hiện đại.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera tích hợp công nghệ AI tuyệt đỉnh</span>, nâng tầm chất lượng và khả năng xử lý hình ảnh.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hiệu năng cực đỉnh với chip Snapdragon 8 Gen3 for Galaxy</span>, chiến game mượt mà.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">-<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> Pin khoẻ 5000mAh,</span> kéo dài thời gian sử dụng cả ngày dài, để không bỏ lỡ khoảnh khắc quan trọng.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Màn hình Dynamic AMOLED 2X với độ sáng lên đến 2600 nit,</span> chìm đắm trong thế giới hình ảnh rực rỡ đầy màu sắc.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-11.jpg\" alt=\"Samsung Galaxy S24 Ultra là smartphone AI đáng sở hữu đầu năm 2024\" loading=\"lazy\" title=\"Samsung Galaxy S24 Ultra là smartphone AI đáng sở hữu đầu năm 2024\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung Galaxy S24 Ultra là smartphone AI đáng sở hữu đầu năm 2024</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Có thể thấy, sở hữu sớm Samsung S24 Ultra đồng nghĩa với việc bạn là một trong những người đầu tiên khám phá,<span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\"> trải nghiệm</span> công nghệ hoàn toàn mới được tích hợp ngay trên chiếc điện thoại thông minh. Ngoài thiết kế sang trọng, có nhiều điểm cải tiến mới, thì thiết bị này còn hỗ trợ nâng cao trải nghiệm trong giải trí, học tập, làm việc thông qua AI - tính năng mà trước nay có thể các sản phẩm khác chưa làm được.</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Mua Samsung S24 Ultra ưu đãi đặc quyền tại CellphoneS</span></span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Là đại lý ủy quyền chính hãng của Samsung tại Việ Nam, do đó khi khách hàng mua Samsung S24 Ultra tại hệ thống sẽ được nhận nhiều ưu đãi hấp dẫn như:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Mua hàng trả góp 3 KHÔNG: KHÔNG  lãi suất - KHÔNG phụ phí - KHÔNG trả trước để sở hữu sớm S24 Ultra với chi phí hàng tháng hợp lý</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Ưu đãi dành thêm khi là học sinh sinh viên: Xuất trình thẻ sinh viên khi mua hàng</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Trợ giá lên đời hấp dẫn cùng nhiều ưu đãi thanh toán ngân hàng vô cùng giá trị</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><br style=\"box-sizing: inherit;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-37.jpg\" alt=\"Mua Samsung S24 Ultra tại CellphoneS ưu đãi 10,5 triệu, trả góp 0%\" loading=\"lazy\" title=\"Mua Samsung S24 Ultra tại CellphoneS ưu đãi 10,5 triệu, trả góp 0%\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Mua Samsung S24 Ultra tại CellphoneS ưu đãi hấp dẫn, trả góp 0%</em></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra - AI Phone với nhiều công nghệ vượt bậc </span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra</span> gây háo hức với người dùng nhờ những thay đổi lớn trong cả thiết kế lẫn hiệu năng. Những nâng cấp trên phiên bản cao cấp nhất của dòng Galaxy S24 Series là gì? Cùng CellphoneS tìm hiểu chi tiết hơn về mẫu flagship mới của Samsung trong bài đánh giá dưới đây:</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2; font-size: 13.5px;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Là smartphone AI đầu tiên của Samsung với nhiều tính năng mới lạ</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Camera thông số khủng 200MP và công nghệ vượt trội</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Pin lớn 5000mAh sử dụng liên tục hơn 30 giờ</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Bút S-Pen hữu ích, thao tác dễ dàng</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Màn hình 6.8 inch tần số quét 120Hz</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Thiết kế có sự thay đổi lớn với khung viền Titanium</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Chipset Snapdragon 8 Gen 3 for Galaxy mạnh mẽ hàng đầu</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Chia sẻ nhanh chóng với Quick Share</li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/nhung-ly-do-nen-mua-samsung-galaxy-s24-ultra.jpg\" alt=\"Những lý do nên mua Samsung Galaxy S24 Ultra ở thời điểm hiện tại\" loading=\"lazy\" title=\"Những lý do nên mua Samsung Galaxy S24 Ultra ở thời điểm hiện tại\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Những lý do nên mua Samsung Galaxy S24 Ultra ở thời điểm hiện tại</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Cụ thể như sau:</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">AI phone đầu tiên của Samsung, mang đến trải nghiệm mới lạ và tiện nghi</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại Samsung S24. S24 Plus và Ultra sẽ là<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> AI Phone đầu tiên</span> của hãng được tích hợp nhiều công nghệ trí tuệ nhân tạo tiên tiến. Điều này được mong chờ bởi mới đây, Samsung đã cho ra mắt mô hình trí tuệ nhân tạo với tên gọi <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Gauss AI</span>. Mô hình AI này trang bị nhiều tính năng, có thể kể đến như:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Khoanh tròn vùng bất kỳ để tìm kiếm thông tin:</span> Sử dụng bút S-Pen hoặc dùng tay khoanh tròn khu vực cần tìm kiếm khi lướt mạng xã hội</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Phiên dịch cuộc gọi trực tiếp:</span> Nhận được thông tin dịch thuật theo thời gian thực trong quá trình nói chuyện điện thoại</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Trợ lý chỉnh ảnh chuyên nghiệp</span>: Sử dụng các tuỳ chọn chỉnh sửa AI mới để bức ảnh hoàn hảo hơn như lấp đầy chỗ trống, di chuyển đối tượng,...</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Trợ lý quyền năng Note Assist:</span> Giúp tóm tắt được ý chính  trong tích tắc với đoạn văn bản bạn note vào</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-4_1.jpg\" alt=\"Samsung Gauss AI nâng tầm trải nghiệm trên SS Galaxy S24 Ultra\" loading=\"lazy\" title=\"Samsung Gauss AI nâng tầm trải nghiệm trên SS Galaxy S24 Ultra\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung Gauss AI nâng tầm trải nghiệm trên SS Galaxy S24 Ultra</em></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Camera cao cấp 200MP với nhiều tính năng vượt trội</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Một nâng cấp mới và chắc chắn là ấn tượng nhất của <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra</span> chính là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">hệ thống camera</span>. Samsung trang bị cho mẫu flagship cao cấp của mình hệ thống camera với độ phân giải lần lượt là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">200MP + 50MP +12MP +10MP</span>.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-6_1.jpg\" alt=\"S24 bản Ultra có hệ thống camera độ phân giải 200MP + 50MP +12MP +10MP\" loading=\"lazy\" title=\"S24 bản Ultra có hệ thống camera độ phân giải 200MP + 50MP +12MP +10MP\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">S24 Ultra sẽ sử dụng cảm biến cao cấp với độ phân giải lên đến 200MP</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Camera chính của S24 Ultra sẽ sử dụng cảm biến cao cấp thế hệ mới, với độ phân giải lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">200MP</span>. Ngoài camera chính, camera tele của điện thoại cũng sẽ được trang bị cảm biến mới để có thể phóng quang học 3x và 5x nhưng không làm giảm chất lượng hình ảnh thu được. Đồng thời camera tele còn có khả năng thu phóng kỹ thuật số lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">100x</span>.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Không chỉ vậy, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">công nghệ ProVisual</span> còn có thể phân tích đối tượng và cải thiện chất lượng hình ảnh một cách tự động, bao gồm việc điều chỉnh tông màu, giảm nhiễu và làm sắc nét.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Dung lượng pin lớn 5000mAh, sử dụng lên đến ngày dài</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với viên pin dung lượng lớn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">5.000 mAh</span> và khả năng tối ưu hiệu năng vượt trội, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">SS Galaxy S24 Ultra</span> mang đến thời lượng sử dụng ấn tượng. Thời gian xem video lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">30 giờ</span> và nghe nhạc lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">90 giờ</span> (tuỳ theo tình hình thực tế mà thời gian sử dụng có thể thay đổi). Nhờ vậy, bạn có thể thoải mái giải trí cả ngày dài mà không lo hết pin.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-1_1.jpg\" alt=\"S24 Ultra pin 5000mAh xem video lên đến 30 giờ và nghe nhạc lên đến 90 giờ\" loading=\"lazy\" title=\"S24 Ultra pin 5000mAh xem video lên đến 30 giờ và nghe nhạc lên đến 90 giờ\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Tích hợp bút S-Pen, thực hiện nhiều tác vụ thoải mái</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bút S-Pen</span> là một công cụ đa năng có thể được sử dụng để viết, vẽ, chỉnh sửa, và nhiều tác vụ khác. Việc tích hợp bút S-Pen giúp <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">điện thoại S24 mới</span> có khả năng tương thích cao với các ứng dụng và tính năng của bút.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Cụ thể, bút S-Pen có thể được sử dụng với các ứng dụng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">ghi chú, vẽ, và chỉnh sửa ảnh</span>. Bút cũng có thể được sử dụng để điều khiển điện thoại từ xa, chẳng hạn như chụp ảnh, tua video, và điều hướng. Ngoài ra, bút S-Pen còn có thể được sử dụng để thực hiện các thao tác phức tạp hơn, chẳng hạn như chỉnh sửa văn bản, vẽ bản đồ, và tạo các bản trình bày.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-7.jpg\" alt=\"Bút S-Pen trên S24 Ultra có thể được sử dụng với các ứng dụng ghi chú, vẽ, và chỉnh sửa ảnh\" loading=\"lazy\" title=\"Bút S-Pen trên S24 Ultra có thể được sử dụng với các ứng dụng ghi chú, vẽ, và chỉnh sửa ảnh\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 Ultra </em><em style=\"box-sizing: inherit;\">tích hợp </em><em style=\"box-sizing: inherit;\">với bút S-Pen </em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700; font-size: 1.17em;\">Màn hình 6.8 inch lớn, tích hợp nhiều công nghệ tân tiến</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra</span> là mẫu flagship có màn hình kích thước lớn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">6.8 inch, </span>lớn hơn so với thế hệ tiền nhiệm S23 Ultra. Với kích thước này, thiết bị sẽ hoàn toàn có thể thay thế cho các mẫu tablet mini hiện có trên thị trường.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tần số quét lên đến 120Hz giúp hạn chế tình trạng giật lag trong quá trình trải nghiệm. Với tấm nền <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">QHD+ Dynamic AMOLED 2X</span>, độ phân giải <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">3120x1440 pixel</span> và độ sáng đạt kỷ lục đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">2.600 nits</span> mà người dùng dễ dàng sử dụng ngoài trời, ngay khi có nắng gắt.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-5_1.jpg\" alt=\"Samsung S24 Ultra tấm nền QHD+ Dynamic AMOLED 2X, tần số quét 120Hz\" loading=\"lazy\" title=\"Samsung S24 Ultra tấm nền QHD+ Dynamic AMOLED 2X, tần số quét 120Hz\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Màn hình lớn 6.8 inch, công nghệ QHD+ xịn xò</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài ra,thiết bị còn tích hợp công nghệ Corning Gorilla Armor nhằm hỗ trợ tăng độ rõ nét hình ảnh và hạn chế ánh sáng phản xạ ngay cả dưới ánh nắng trực tiếp. Thêm vào đó, hình ảnh trở nên sống động bất ngờ nhờ vào công nghệ Vision Booster tăng cường độ màu sắc và sự tương phản.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Thiết kế có sự thay đổi lớn với khung viền Titanium</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Smartphone Galaxy S24 Ultra</span> có sự thay đổi lớn trong thiết kế. Chi tiết hơn:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Khung viền dược chế tạo bởi <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">CHẤT LIỆU TITANIUM</span> bền bỉ, cứng cáp</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Màn hình <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">phẳng, vuông vức</span> kích thước lớn 6.8 inch</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Công nghệ <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Corning Gorilla Armor</span> bảo vệ màn hình vượt trội</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Kháng nước, kháng bụi đạt chuẩn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">IP68</span>, an tâm thoả sức phiêu lưu</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Các phiên bản màu sắc mới: <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Xám Titan, Tím Titan, Đen Titan, Vàng Titan</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-60.jpg\" alt=\"Smartphone Galaxy S24 Ultra khác biệt với chất liệu Titanium, màu sắc mới và màn hình phẳng\" loading=\"lazy\" title=\"Smartphone Galaxy S24 Ultra khác biệt với chất liệu Titanium, màu sắc mới và màn hình phẳng\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Smartphone Galaxy S24 Ultra khác biệt với chất liệu Titanium, màu sắc mới và màn hình phẳng</em></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Hiệu năng mạnh mẽ với chipset Snapdragon 8 Gen 3 for Galaxy</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Snapdragon® 8 Gen 3 for Galaxy</span> là con chip mạnh nhất Qualcomm tính đến hiện tại. Với tốc độ xử lý <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">nhanh hơn 20%</span> so với thế hệ trước, bạn có thể chơi các trò chơi đòi hỏi nhiều đồ họa cao trên Galaxy S24 Ultra. Công nghệ dò tia tiên tiến mang đến trải nghiệm đồ họa chân thực và sống động, với bóng mờ và hình ảnh phản chiếu siêu thực.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-9.jpg\" alt=\"Snapdragon 8 Gen 3 For Galaxy trên SS S24 Ultra xử lý nhanh hơn 20% so với thế hệ trước\" loading=\"lazy\" title=\"Snapdragon 8 Gen 3 For Galaxy trên SS S24 Ultra xử lý nhanh hơn 20% so với thế hệ trước\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Sử dụng Snapdragon 8 Gen 3 For Galaxy mạnh mẽ bậc nhất hiện tại</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài ra, GPU cải thiện đến 30%, giúp đồ hoạ và hiệu suất mạnh mẽ hơn, NPU cải thiện đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">41%</span> giúp cải thiện hoạt động với AI. Và để các tác vụ đa nhiệm diễn ra mượt mà, ổn định, Samsung còn trang bị 12GB RAM với dụng lượng lưu trữ 256GB ở phiên bản chuẩn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài ra, điện thoại vẫn sẽ bao gồm thêm 2 tuỳ biến là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">512GB và 1TB</span> để người dùng lựa chọn sao cho phù hợp nhất với nhu cầu sử dụng của cá nhân. Đi kèm với điện thoại vẫn là một bút S-Pen được tích hợp đầy đủ các tính năng cảm ứng theo cử chỉ.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Chia sẻ nhanh chóng với Quick Share</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Quick Share</span> là một tính năng chia sẻ không dây mới được giới thiệu trên các thiết bị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy</span>. Tính năng này cho phép bạn chia sẻ ảnh, video, tài liệu và hơn thế nữa với các thiết bị Galaxy khác một cách nhanh chóng và dễ dàng.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-41_1.jpg\" alt=\"Chia sẻ nhanh chóng với Quick Share\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tuy nhiên, Quick Share không chỉ giới hạn ở các thiết bị Galaxy. Bạn cũng có thể sử dụng Quick Share để chia sẻ dữ liệu từ <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy S24</span> với người dùng iOS hoặc bạn bè và gia đình ở xa.</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Điện thoại Samsung Galaxy S24 Ultra giá bao nhiêu?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 Ultra</span> có mức giá khởi điểm cho bản 256GB là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">từ 1.299,99 USD</span>, bản 512GB với 1.419,99 USD và bản 1TB cao cấp nhất với 1.659,99 USD tại thị trường Mỹ. Tại Việt Nam, sản phẩm bản 256GB có giá khởi điểm từ 33.990.000đ, bản 512GB với 37.490.000đ và 1TB là 44.490.000đ. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Dưới đây là Bảng giá Samsung S24 mới nhất:</span></p><table class=\"table table-bordered\" style=\"box-sizing: inherit; border-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(54, 54, 54); border-color: rgb(211, 211, 211); width: 800px; margin-bottom: 1.5rem;\"><tbody style=\"box-sizing: inherit; background-color: transparent;\"><tr class=\"success\" style=\"box-sizing: inherit; background-color: rgb(223, 240, 216); color: rgb(61, 102, 17); font-size: 12px;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Sản phẩm</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá khởi điểm tại Mỹ</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá khởi điểm tại Việt Nam</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Ưu đãi đặt trước tại CellphoneS</span></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Samsung Galaxy S24 Ultra 256GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 1.299,99 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 33.990.000đ</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">7.500.000đ - trả góp 0%</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Samsung Galaxy S24 Ultra 512GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 1.419,99 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 37.490.000đ</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">7.500.000đ - trả góp 0%</span></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Samsung Galaxy S24 Ultra 1TB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 1.659,99 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 44.490.000đ</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">7.500.000đ - trả góp 0%</span></p></td></tr></tbody></table><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-8.jpg\" alt=\"Giá Samsung Galaxy S24 Ultra khởi điểm từ 33.990.000đ cho phiên bản 12GB 256GB\" loading=\"lazy\" title=\"Giá Samsung Galaxy S24 Ultra khởi điểm từ 33.990.000đ cho phiên bản 12GB 256GB\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 Ultra sẽ có mức giá khởi điểm cho bản 256GB tại Việt Nam là từ 33.990.000VND</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với kích thước, cấu hình, camera và thời lượng sử dụng vượt trội hơn hẳn so với mặt bằng chung, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy Ultra thế hệ 24</span> có thể sẽ là đối thủ đáng gờm để vươn lên vị trí dẫn đầu phân khúc smartphone cao cấp.</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24, S24 Ultra và S24 Plus ra mắt khi nào?</span></h2><blockquote style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\">Chính thức: điện thoại Samsung Galaxy S24 Ultra và series S24 đã được ra mắt ngày <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">17/01/2024</span> tại sự kiện <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy Unpacked 2024 ở Mỹ </span>(tức 1:00 AM ngày 18/1/2024 theo giờ Việt Nam). </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-2_1.jpg\" alt=\"Samsung Galaxy S24 Ultra và series S24 đã được ra mắt ngày 17/01/2024 tại sự kiện Galaxy Unpacked 2024 ở Mỹ\" loading=\"lazy\" title=\"Samsung Galaxy S24 Ultra và series S24 đã được ra mắt ngày 17/01/2024 tại sự kiện Galaxy Unpacked 2024 ở Mỹ\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p></blockquote><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 series sẽ được ra mắt ngày 17/01/2024 (theo giờ Mỹ) tại sự kiện Galaxy Unpacked 2024 ở  (Mỹ)</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đây là sự kiện được nhiều tín đồ công nghệ quan tâm và đánh giá cao bởi siêu phẩm mang những tính năng nổi bật, tích hợp những công nghệ dẫn đầu xu hướng. </p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 bản Ultra có chống nước, chống bụi không?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Câu trả lời là có: <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 Ultra có khả năng chống nước và chống bụi với xếp hạng IP68</span>. Điều này có nghĩa là điện thoại có thể ở trong nước ở độ sâu <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">1,5 mét trong tối đa 30 phút</span> (Lưu ý: tuỳ theo điều kiện khác nhau và thời gian sử dụng mà khả năng chống nước có thể thay đổi). Khả năng chống nước và chống bụi của Samsung S24 bản Ultra là một tính năng hữu ích cho những người muốn sử dụng điện thoại của họ trong nhiều điều kiện khác nhau.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-31.jpg\" alt=\"S24 Ultra có thể ở trong nước ở độ sâu 1,5 mét trong tối đa 30 phút với chuẩn IP68\" loading=\"lazy\" title=\"S24 Ultra có thể ở trong nước ở độ sâu 1,5 mét trong tối đa 30 phút với chuẩn IP68\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Điện thoại Samsung Galaxy S24 Ultra có mấy màu? Màu nào mới?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24</span> còn có nhiều phiên bản màu sắc để người dùng lựa chọn. Lấy cảm hứng từ vẻ đẹp rực rỡ của các loại đá quý, mỗi sắc màu đều được tô điểm thêm nét mềm mại của chất liệu satin, mang đến cảm giác như một viên đá quý được mài giũa tinh xảo đến từng đường nét.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Phiên bản màu sắc của Samsung Galaxy S24 Ultra bao gồm <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">4 màu</span>:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">-<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> Xám Titan:</span> Màu sắc này mang đến vẻ ngoài sang trọng và lịch lãm</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Tím Titan:</span> Màu sắc mới lạ và độc đáo, mang đến vẻ ngoài</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">-<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> Đen Titan:</span> Mang đến vẻ ngoài thời thượng và tinh tế</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Vàng Titan:</span> Mang đến vẻ ngoài quý phái, đẳng cấp</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Bạn có thể lựa chọn phiên bản <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">màu sắc titan</span> phù hợp với sở thích và phong cách của mình.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-40_1.jpg\" alt=\"Samsung S24 Ultra có 4 màu sắc titan độc đáo là Xám, Tím, Đen và Vàng\" loading=\"lazy\" title=\"Samsung S24 Ultra có 4 màu sắc titan độc đáo là Xám, Tím, Đen và Vàng\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 Ultra có 4 màu sắc titan độc đáo là Xám, Tím, Đen và Vàng</em></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy S24 Ultra có dung lượng RAM/ROM là bao nhiêu?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">SS Galaxy S24 Ultra</span> được trang bị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB</span>. Dung lượng RAM lớn giúp điện thoại xử lý đa nhiệm mượt mà, không bị giật lag khi chạy nhiều ứng dụng cùng lúc. Dung lượng ROM lớn mang đến không gian lưu trữ rộng rãi, cho phép người dùng lưu trữ nhiều ảnh, video, nhạc, ứng dụng và trò chơi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-39.jpg\" alt=\"SS Galaxy S24 Ultra được trang bị RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB\" loading=\"lazy\" title=\"SS Galaxy S24 Ultra được trang bị RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">SS Galaxy S24 Ultra được trang bị RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB</em></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy S24 Ultra có đi kèm bút S-Pen không?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bút S-Pen</span> là một trong những tính năng nổi bật của dòng Galaxy Note của Samsung. Với sự ra mắt của Galaxy S24 phiên bản Ultra, bút S Pen đã được tích hợp vào điện thoại, mang đến cho người dùng trải nghiệm viết vẽ và điều khiển máy một cách tiện lợi và thoải mái hơn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-42_1.jpg\" alt=\"Bút S Pen tích hợp trên Galaxy S24 Ultra có thiết kế nhỏ gọn và sang trọng\" loading=\"lazy\" title=\"Bút S Pen tích hợp trên Galaxy S24 Ultra có thiết kế nhỏ gọn và sang trọng\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Bút S Pen tích hợp trên Galaxy S24 Ultra có thiết kế nhỏ gọn và sang trọng</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><br></p></div>', 'ELEC-63128878', 1500, 1450, '2024-08-05', '2024-08-22', 'featured_product', 1, 1, '2024-08-05 03:58:15', '2024-08-05 04:06:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image_galleries`
--

CREATE TABLE `product_image_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image_galleries`
--

INSERT INTO `product_image_galleries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_66a99d21793aa.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(2, 'uploads/media_66a99d21799b7.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(3, 'uploads/media_66a99d2179c2c.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(4, 'uploads/media_66a99d2179fa9.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(15, 'uploads/media_66ab37b980f47.jfif', 4, '2024-08-01 00:22:33', '2024-08-01 00:22:33'),
(16, 'uploads/media_66ab37b98149b.jfif', 4, '2024-08-01 00:22:33', '2024-08-01 00:22:33'),
(17, 'uploads/media_66ab37b9816de.jfif', 4, '2024-08-01 00:22:33', '2024-08-01 00:22:33'),
(20, 'uploads/media_66ab3ac7a2584.jfif', 4, '2024-08-01 00:35:35', '2024-08-01 00:35:35'),
(21, 'uploads/media_66ab3ac7a28df.jfif', 4, '2024-08-01 00:35:35', '2024-08-01 00:35:35'),
(29, 'uploads/media_66b0af00a632f.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(30, 'uploads/media_66b0af00a6709.jpg', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(31, 'uploads/media_66b0af00a6b69.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(32, 'uploads/media_66b0af00a6ea8.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(33, 'uploads/media_66b0af00a7255.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(34, 'uploads/media_66b0f2cc41596.webp', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04'),
(35, 'uploads/media_66b0f2cc41c63.png', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04'),
(36, 'uploads/media_66b0f2cc41f8a.png', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04'),
(37, 'uploads/media_66b0f2cc42287.png', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_review_galleries`
--

CREATE TABLE `product_review_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_review_id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Capacity', 1, '2024-07-30 20:37:03', '2024-07-31 07:29:22'),
(3, 1, 'Ram', 1, '2024-07-30 20:54:27', '2024-07-30 20:54:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `name`, `price`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '16GB', 70, 0, 1, '2024-07-31 00:57:22', '2024-08-02 01:24:41'),
(2, 3, '8GB', 0, 1, 1, '2024-07-31 00:59:10', '2024-08-02 01:37:52'),
(3, 3, '32GB', 140, 0, 1, '2024-07-31 01:11:01', '2024-08-02 01:24:49'),
(27, 1, '512 GB', 0, 1, 1, '2024-08-02 01:16:33', '2024-08-02 01:37:41'),
(28, 1, '1 T', 150, 0, 1, '2024-08-02 01:17:14', '2024-08-02 01:26:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Vendor', NULL, NULL),
(3, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_cost` double DEFAULT NULL,
  `cost` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `name`, `type`, `min_cost`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Freeship', 'min_cost', 1500, 0, 1, '2024-08-02 07:55:40', '2024-08-06 00:14:25'),
(2, 'Ahamove', 'flat_cost', NULL, 50, 1, '2024-08-02 08:04:46', '2024-08-02 08:38:08'),
(6, 'J&T Express', 'flat_cost', NULL, 20, 1, '2024-08-06 00:03:47', '2024-08-06 00:03:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_price` int UNSIGNED DEFAULT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `banner`, `type`, `title`, `starting_price`, `btn_url`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(8, 'uploads/media_669dfa3407741.jpg', 'new arrivals', 'men\'s fashion', 99, 'http://ecommerce.test/admin/slider/create', 1, 1, '2024-07-21 23:20:36', '2024-07-21 23:26:27'),
(9, 'uploads/media_669dfa59331f8.jpg', 'new arrivals', 'kid\'s fashion', 69, 'http://ecommerce.test/admin/slider/create', 2, 1, '2024-07-21 23:21:13', '2024-07-21 23:21:13'),
(10, 'uploads/media_669dfa72c2b6f.jpg', 'Hot Deals', 'winter collection', 40, 'http://ecommerce.test/admin/slider/create', 3, 1, '2024-07-21 23:21:38', '2024-07-21 23:21:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 10, 'Camera', 'camera', 1, '2024-07-27 06:02:28', '2024-07-28 00:47:38'),
(9, 10, 'Laptop', 'laptop', 1, '2024-07-27 06:02:35', '2024-07-27 06:02:35'),
(10, 10, 'Smart Phones', 'smart-phones', 1, '2024-07-27 06:02:47', '2024-07-27 06:02:47'),
(11, 10, 'Tablet', 'tablet', 1, '2024-07-27 06:02:57', '2024-07-27 06:02:57'),
(12, 10, 'Logic', 'logic', 1, '2024-07-27 08:43:12', '2024-07-28 00:47:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `amount_real_currency` double NOT NULL,
  `amount_real_currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_id`, `payment_method`, `amount`, `amount_real_currency`, `amount_real_currency_name`, `created_at`, `updated_at`) VALUES
(1, 4, '7FE87192PW8345309', 'paypal', 2060, 2060, 'USD', '2024-08-19 02:44:16', '2024-08-19 02:44:16'),
(2, 5, '42W06245UL027470P', 'paypal', 903.2, 903.2, 'USD', '2024-08-19 02:52:44', '2024-08-19 02:52:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `phone`, `email`, `role_id`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'phongz', NULL, '/uploads/225590323_anh.PNG', NULL, 'admin@gmail.com', 1, 'active', NULL, '$2y$10$JC2VdTEazwV21URKv9pEP.Y4w7aSgrDDYPx1nfKcE1fURrlhGvVci', NULL, '2024-07-20 05:28:39', '2024-07-20 05:30:56'),
(5, 'anhnt', NULL, '/uploads/1645996341_Phong2.PNG', NULL, 'user@gmail.com', 3, 'active', NULL, '$2y$10$pFt4XdexaQSctj3UEMtXKeTfcOdEkKX1/b0CS5///keTuaW1v0zPq', NULL, '2024-07-20 05:29:33', '2024-07-20 05:30:09'),
(6, 'Vendor', NULL, '/uploads/805371357_team_1.jpg', NULL, 'vendor@gmail.com', 2, 'active', NULL, '$2y$10$572iwD0uDPaWgycZodytveMme.gS6X1qNZ4/lngZpYy/kvNnm2XnC', NULL, '2024-07-22 00:26:56', '2024-07-31 17:30:11'),
(7, 'admin', NULL, NULL, NULL, 'admin1@gmail.com', 1, 'active', NULL, '$2y$10$5Y21L16vvsCbKvVfOT02xeXFecPnZ.s69Uk7JUGs1J3yMEGfBGPpm', NULL, '2024-07-23 04:59:16', '2024-07-23 04:59:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `name`, `email`, `phone`, `zip`, `country`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 5, 'Đặng Thanh Phong', 'phongzau2004@gmail.com', '0375566576', '11700', 'Vietnam', 'Hà Nội', 'Số 81 ngõ 42 Thịnh Liệt hoàng mai hà nội', '2024-08-02 10:02:05', '2024-08-02 10:02:05'),
(2, 5, 'Nguyễn Thị Anh', 'anhnt@gmail.com', '0836808980', '11700', 'Vietnam', 'Hà Nội', 'Số 81 ngõ 42 Vĩnh Phúc Hà Nội', '2024-08-02 10:03:24', '2024-08-02 10:03:24'),
(4, 5, 'Nguyễn Thị Bông', 'phongdtph38207@fpt.edu.vn', '0836808980', '11700', '0', 'Hà Nội', 'Số 81 ngõ 42 Thịnh Liệt hoàng mai hà nội', '2024-08-05 23:42:17', '2024-08-05 23:42:17'),
(5, 4, 'Đặng Thanh Phong', 'phongzau2004@gmail.com', '0375566576', '11700', 'Vietnam', 'Hà Nội', 'Số 81 ngõ 42 Thịnh Liệt hoàng mai hà nội', '2024-08-13 05:13:10', '2024-08-13 05:13:10'),
(6, 6, 'Đặng Thanh Phong', 'phongzau2004@gmail.com', '0375566576', '12345', 'Vietnam', 'Quận Hoàng Mai', 'Số 81 ngõ 42 phố thịnh liệt quận hoàng mai hà nội', '2024-08-16 06:04:21', '2024-08-16 06:04:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` text COLLATE utf8mb4_unicode_ci,
  `tw_link` text COLLATE utf8mb4_unicode_ci,
  `insta_link` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `banner`, `phone`, `email`, `address`, `description`, `fb_link`, `tw_link`, `insta_link`, `user_id`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'uploads/media_66ac9ff56a610.jfif', '0836808980', 'admin@gmail.com', 'No. 81, Alley 42 Thinh Liet, Hoang Mai District, Hanoi', '<h2><strong>Tech&nbsp; Store</strong></h2><h3><strong>Giới thiệu:</strong></h3><p>Tech Store là một cửa hàng công nghệ hiện đại, chuyên cung cấp các sản phẩm điện tử cao cấp như laptop, điện thoại di động, máy tính bảng, và các phụ kiện công nghệ. Chúng tôi tự hào mang đến cho khách hàng những sản phẩm mới nhất từ các thương hiệu hàng đầu thế giới với chất lượng đảm bảo và giá cả cạnh tranh.</p><h3><strong>Sản phẩm của chúng tôi:</strong></h3><ol><li><p><strong>Laptop:</strong></p><ul><li>Các dòng laptop từ các hãng nổi tiếng như Apple, Dell, HP, Lenovo, Asus, Acer, MSI, và nhiều thương hiệu khác.</li><li>Đa dạng mẫu mã từ laptop phổ thông, laptop chơi game, đến laptop đồ họa và laptop doanh nhân.</li><li>Cung cấp các tùy chọn cấu hình từ cơ bản đến cao cấp, đáp ứng nhu cầu sử dụng khác nhau.</li></ul></li><li><p><strong>Điện thoại di động:</strong></p><ul><li>Điện thoại thông minh từ các thương hiệu hàng đầu như Apple, Samsung, Xiaomi, Huawei, Oppo, và Vivo.</li><li>Đầy đủ các dòng sản phẩm từ flagship cao cấp đến điện thoại tầm trung và giá rẻ.</li><li>Hỗ trợ cập nhật phần mềm và dịch vụ sửa chữa chuyên nghiệp.</li></ul></li><li><p><strong>Máy tính bảng:</strong></p><ul><li>Sản phẩm từ các hãng như Apple, Samsung, Huawei, và Lenovo.</li><li>Đáp ứng nhu cầu giải trí, học tập, và làm việc di động với các dòng sản phẩm đa dạng.</li></ul></li><li><p><strong>Phụ kiện công nghệ:</strong></p><ul><li>Phụ kiện đi kèm như tai nghe, bàn phím, chuột, sạc dự phòng, và ốp lưng.</li><li>Cung cấp thiết bị lưu trữ như ổ cứng di động, thẻ nhớ, và USB.</li></ul></li></ol><h3><strong>Dịch vụ khách hàng:</strong></h3><ul><li><strong>Tư vấn chuyên nghiệp:</strong> Đội ngũ nhân viên am hiểu công nghệ, nhiệt tình tư vấn giúp khách hàng lựa chọn sản phẩm phù hợp.</li><li><strong>Hỗ trợ kỹ thuật:</strong> Dịch vụ hỗ trợ kỹ thuật và bảo hành chuyên nghiệp, nhanh chóng.</li><li><strong>Giao hàng tận nơi:</strong> Dịch vụ giao hàng tận nơi nhanh chóng và an toàn.</li></ul><h3><strong>Tầm nhìn và sứ mệnh:</strong></h3><p>TechGears Store hướng đến trở thành điểm đến tin cậy cho tất cả những ai yêu thích và đam mê công nghệ. Chúng tôi cam kết mang đến những sản phẩm chất lượng nhất cùng với dịch vụ khách hàng xuất sắc, góp phần nâng cao trải nghiệm công nghệ cho khách hàng.</p><hr><p>Cửa hàng TechGears Store sẽ là nơi bạn tìm thấy những sản phẩm công nghệ chất lượng cao, đáp ứng mọi nhu cầu từ làm việc, học tập đến giải trí.</p>\"', NULL, NULL, NULL, 4, '2024-07-28 07:27:11', '2024-08-02 02:07:36', 'Tech Store'),
(3, 'uploads/media_66aae7b1dfff1.jfif', '0375566576', 'vendor@gmail.com', 'Ha noi', 'Shop bán máy tính', NULL, NULL, NULL, 6, '2024-07-31 18:09:14', '2024-08-01 21:22:59', 'Future Tech');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_categories_category_id_foreign` (`category_id`),
  ADD KEY `child_categories_sub_category_id_foreign` (`sub_category_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_items_product_id_foreign` (`product_id`),
  ADD KEY `flash_sale_items_flash_sale_id_foreign` (`flash_sale_id`);

--
-- Chỉ mục cho bảng `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_vendor_id_foreign` (`vendor_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `paypal_settings`
--
ALTER TABLE `paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_child_category_id_foreign` (`child_category_id`),
  ADD KEY `products_vendor_id_foreign` (`vendor_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image_galleries_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_galleries_product_review_id_foreign` (`product_review_id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_item_product_variant_id_foreign` (`product_variant_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendors_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `paypal_settings`
--
ALTER TABLE `paypal_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  ADD CONSTRAINT `child_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_categories_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD CONSTRAINT `flash_sale_items_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_child_category_id_foreign` FOREIGN KEY (`child_category_id`) REFERENCES `child_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD CONSTRAINT `product_image_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD CONSTRAINT `product_review_galleries_product_review_id_foreign` FOREIGN KEY (`product_review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD CONSTRAINT `product_variant_item_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
