-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 11:44 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Apple', 'apple', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 1),
(2, 'Sam Sung', 'sam-sung', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 1),
(3, 'Xiaomi', 'xiaomi', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 1),
(4, 'Oppo', 'oppo', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 1),
(5, 'Dell', 'dell', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 2),
(6, 'Asus', 'asus', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 2),
(7, 'Macbook', 'macbook', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 2),
(8, 'Lenovo', 'lenovo', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45', 2);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'mobile', 'This is desc mobile category', 'https://cdn2.iconfinder.com/data/icons/devicecons/32/da-icons-perfume_copy_2-512.png', 'mobile', 'mobile', 'mobile', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45'),
(2, 'Laptop', 'laptop', 'This is desc laptop category', 'http://icons.iconarchive.com/icons/iconsmind/outline/512/Laptop-3-icon.png', 'mobile', 'mobile', 'mobile', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45'),
(3, 'Tablet', 'tablet', 'This is desc tablet category', 'https://cdn0.iconfinder.com/data/icons/simplicity/512/tablet-512.png', 'tablet', 'tablet', 'tablet', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45'),
(4, 'Smart Watch', 'smart-watch', 'This is desc Smart Watch category', 'https://cdn1.iconfinder.com/data/icons/device-5/500/watch-512.png', 'tablet', 'tablet', 'tablet', 0, '2023-01-11 03:42:45', '2023-01-11 03:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_products`
--

CREATE TABLE `comment_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_05_140724_add_details_to_users_table', 1),
(6, '2022_11_06_071734_create_categories_table', 1),
(7, '2022_11_07_073106_create_brands_table', 1),
(8, '2022_11_08_064858_create_products_table', 1),
(9, '2022_11_08_070352_create_product_images_table', 1),
(10, '2022_11_08_144705_create_colors_table', 1),
(11, '2022_11_09_015254_create_product_colors_table', 1),
(12, '2022_11_09_073218_create_sliders_table', 1),
(13, '2022_11_10_073320_add_category_id_to_brands_table', 1),
(14, '2022_11_11_123055_create_wishlists_table', 1),
(15, '2022_11_12_091221_create_carts_table', 1),
(16, '2022_11_14_075335_create_orders_table', 1),
(17, '2022_11_14_075736_create_order_items_table', 1),
(18, '2022_11_17_141728_create_settings_table', 1),
(19, '2022_11_18_082025_create_user_details_table', 1),
(20, '2022_12_21_073626_create_comment_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending, 0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured, 0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden, 0=visible',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iphone 13 Pro Max', 'iphone-13-pro-max', '1', 'iPhone 13 Pro Max 1 TB thuộc phân khúc điện thoại cao cấp mà không một iFan nào có thể bỏ qua, với màn hình lớn sắc nét, cấu hình vượt trội, dung lượng lưu trữ \"khủng\", thời gian sử dụng dài, mỗi lần trải nghiệm đều cho bạn cảm giác thỏa mãn đáng ngạc nhiên.', 1500, 1452, 15, 1, 1, 0, 'Iphone 13 Pro Max', 'Iphone 13 Pro Max', 'Iphone 13 Pro Max', '2023-01-11 03:42:45', '2023-01-11 03:42:45'),
(2, 1, 'Iphone 12', 'iphone-12', '1', 'iPhone 12 thuộc phân khúc điện thoại cao cấp mà không một iFan nào có thể bỏ qua, với màn hình lớn sắc nét, cấu hình vượt trội, dung lượng lưu trữ \"khủng\", thời gian sử dụng dài, mỗi lần trải nghiệm đều cho bạn cảm giác thỏa mãn đáng ngạc nhiên.', 1300, 1260, 15, 1, 1, 0, 'Iphone 12', 'Iphone 12', 'Iphone 12', '2023-01-11 03:42:45', '2023-01-11 03:42:45'),
(3, 1, 'Samsung Galaxy S20 FE', 'samsung-galaxy-s20-fe', '2', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng S20 Series đó chính là điện thoại Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 1601, 1590, 15, 1, 1, 0, 'Samsung Galaxy S20 FE', 'Samsung Galaxy S20 FE', 'Samsung Galaxy S20 FE', '2023-01-11 03:42:45', '2023-01-11 03:42:45'),
(4, 1, 'Samsung Galaxy S22 Ultra 5G 128GB', 'samsung-galaxy-s20-fe', '2', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.', 1401, 1300, 15, 1, 1, 0, 'Samsung Galaxy S22 Ultra 5G 128GB ', 'Samsung Galaxy S22 Ultra 5G 128GB ', 'Samsung Galaxy S22 Ultra 5G 128GB ', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(5, 1, 'Xiaomi Redmi Note 11', 'xiaomi-redmi-note-11', '3', 'Điện thoại Redmi được mệnh danh là dòng sản phẩm quốc dân ngon - bổ  - rẻ của Xiaomi và Redmi Note 11 (4GB/64GB) cũng không phải ngoại lệ, máy sở hữu một hiệu năng ổn định, màn hình 90 Hz mượt mà, cụm camera AI đến 50 MP cùng một mức giá vô cùng tốt.', 800, 759, 15, 1, 1, 0, 'Xiaomi Redmi Note 11', 'Xiaomi Redmi Note 11', 'Xiaomi Redmi Note 11', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(6, 1, 'Xiaomi Redmi Note 11S', 'xiaomi-redmi-note-11s', '3', 'Điện thoại Redmi được mệnh danh là dòng sản phẩm quốc dân ngon - bổ  - rẻ của Xiaomi và Redmi Note 11 (4GB/64GB) cũng không phải ngoại lệ, máy sở hữu một hiệu năng ổn định, màn hình 90 Hz mượt mà, cụm camera AI đến 50 MP cùng một mức giá vô cùng tốt.', 850, 810, 15, 1, 1, 0, 'Xiaomi Redmi Note 11S', 'Xiaomi Redmi Note 11S', 'Xiaomi Redmi Note 11S', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(7, 1, 'OPPO Reno8 Pro 5G', 'oppo-reno8-pro-5g', '4', 'OPPO Reno8 Pro 5G là chiếc điện thoại cao cấp được nhà OPPO ra mắt vào thời điểm 09/2022, máy hướng đến sự hoàn thiện cao cấp ở phần thiết kế cùng khả năng quay chụp chuyên nghiệp nhờ trang bị vi xử lý hình ảnh MariSilicon X chuyên dụng.', 1355, 1300, 15, 1, 1, 0, 'OPPO Reno8 Pro 5G', 'OPPO Reno8 Pro 5G', 'OPPO Reno8 Pro 5G', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(8, 1, ' OPPO A55', 'oppo-a55', '4', 'OPPO cho ra mắt OPPO A55 4G chiếc smartphone giá rẻ tầm trung có thiết kế đẹp mắt, cấu hình khá ổn, cụm camera chất lượng và dung lượng pin ấn tượng, mang đến một lựa chọn trải nghiệm thú vị vừa túi tiền cho người tiêu dùng.', 1355, 1300, 15, 1, 1, 0, ' OPPO A55', ' OPPO A55', ' OPPO A55', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(9, 2, 'Laptop Dell Gaming G15 5511 i5 11400H/8GB/256GB/4GB RTX3050/120Hz/OfficeHS/Win11', 'laptop-dell-gaming-g15-5511', '5', 'Không những mang đến cho người dùng hiệu năng ấn tượng nhờ con chip Intel thế hệ 11 tân tiến, laptop Dell Gaming G15 5511 i5 11400H (70266676) còn sở hữu thiết kế thời thượng, lôi cuốn, hứa hẹn sẽ là người cộng sự lý tưởng cùng bạn chinh phục mọi chiến trường.', 1800, 1750, 15, 1, 1, 0, 'Laptop Dell Gaming G15 5511 i5 11400H/8GB/256GB/4GB RTX3050/120Hz/OfficeHS/Win11', 'Laptop Dell Gaming G15 5511 i5 11400H/8GB/256GB/4GB RTX3050/120Hz/OfficeHS/Win11', 'Laptop Dell Gaming G15 5511 i5 11400H/8GB/256GB/4GB RTX3050/120Hz/OfficeHS/Win11', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(10, 2, 'Laptop Dell Vostro 3510 i5 1135G7/8GB/512GB/2GB MX350/OfficeHS/Win11', 'laptop-dell-vostro-3510', '5', 'Laptop Dell Vostro 3510 i5 (P112F002BBL) sở hữu cấu hình mạnh mẽ, đa nhiệm mượt mà trên sức mạnh của bộ vi xử lý Intel thế hệ 11, cùng một thiết kế đơn giản mà sang đẹp, sẽ là lựa chọn đắt giá đáp ứng nhu cầu học tập, làm việc hay giải trí của bạn.', 1750, 1500, 15, 1, 1, 0, 'Laptop Dell Vostro 3510 i5 1135G7/8GB/512GB/2GB MX350/OfficeHS/Win11', 'Laptop Dell Vostro 3510 i5 1135G7/8GB/512GB/2GB MX350/OfficeHS/Win11', 'Laptop Dell Vostro 3510 i5 1135G7/8GB/512GB/2GB MX350/OfficeHS/Win11', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(11, 2, 'Laptop Asus TUF Gaming FX506LHB i5 10300H/8GB/512GB/4GB GTX1650/144Hz/Win11', 'laptop-asus-tuf-gaming-fx5-6-i5', '6', 'Nếu bạn đang tìm kiếm một chiếc laptop gaming nhưng vẫn sở hữu một mức giá phải chăng thì laptop Asus TUF Gaming FX506LHB i5 (HN188W) sẽ là sự lựa chọn đáng cân nhắc với card đồ họa rời NVIDIA GeForce GTX mạnh mẽ cùng phong cách thiết kế cứng cáp, độc đáo.', 1750, 1500, 15, 1, 1, 0, 'Laptop Asus TUF Gaming FX506LHB i5 10300H/8GB/512GB/4GB GTX1650/144Hz/Win11', 'Laptop Asus TUF Gaming FX506LHB i5 10300H/8GB/512GB/4GB GTX1650/144Hz/Win11', 'Laptop Asus TUF Gaming FX506LHB i5 10300H/8GB/512GB/4GB GTX1650/144Hz/Win11', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(12, 2, 'Laptop Asus VivoBook 15X OLED A1503ZA i5 12500H/8GB/512GB/Win11', 'laptop-asus-vivobook-15x-qled', '6', 'Laptop Asus VivoBook 15X OLED A1503ZA i5 (L1290W) là phiên bản laptop cao cấp - sang trọng không chỉ giải quyết triệt để các tác vụ học tập, văn phòng nhờ sức mạnh bùng nổ đến từ bộ vi xử lý Intel thế hệ 12 mà còn mang đến không gian giải trí trọn vẹn khi sở hữu những thông số màn hình ấn tượng. ', 1750, 1500, 15, 1, 1, 0, 'Laptop Asus VivoBook 15X OLED A1503ZA i5 12500H/8GB/512GB/Win11', 'Laptop Asus VivoBook 15X OLED A1503ZA i5 12500H/8GB/512GB/Win11', 'Laptop Asus VivoBook 15X OLED A1503ZA i5 12500H/8GB/512GB/Win11', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(13, 2, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU', 'laptop-apple-macbook-air-m1-2020', '7', 'Laptop Apple Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.', 2100, 2050, 15, 1, 1, 0, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU', 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU', 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(14, 2, 'Laptop Apple MacBook Pro M2 2022 8GB/256GB/10-core GPU', 'laptop-apple-macbook-pro-m2-2022', '7', 'Sở hữu thiết kế thanh lịch, sang trọng cùng hiệu năng vượt trội đến từ bộ vi xử lý Apple M2 tân tiến, Macbook Pro M2 hứa hẹn sẽ đáp ứng hoàn hảo cho người dùng sáng tạo, phục vụ tốt cho các nhu cầu thiết kế đồ họa nâng cao.', 2100, 2050, 15, 1, 1, 0, 'Laptop Apple MacBook Pro M2 2022 8GB/256GB/10-core GPU', 'Laptop Apple MacBook Pro M2 2022 8GB/256GB/10-core GPU', 'Laptop Apple MacBook Pro M2 2022 8GB/256GB/10-core GPU', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(15, 2, 'Laptop Lenovo Yoga Duet 7 13ITL6 i7 1165G7/16GB/1TB SSD/Touch/Pen/Win10', 'laptop-lenovo-yoga-duet-7-14itl6', '8', 'Laptop Lenovo Yoga Duet 7 13ITL6 i7 (82MA003UVN) là sự kết hợp hoàn hảo giữa một chiếc máy tính Windows và Tablet từ đó mang đến một siêu phẩm có thiết kế cơ động, nhỏ gọn cùng hiệu năng mạnh mẽ, phù hợp cho mọi tác vụ giải trí, sáng tạo nội dung với bút cảm ứng Digital Pen tặng kèm.', 1700, 1650, 15, 1, 1, 0, 'Laptop Lenovo Yoga Duet 7 13ITL6 i7 1165G7/16GB/1TB SSD/Touch/Pen/Win10', 'Laptop Lenovo Yoga Duet 7 13ITL6 i7 1165G7/16GB/1TB SSD/Touch/Pen/Win10', 'Laptop Lenovo Yoga Duet 7 13ITL6 i7 1165G7/16GB/1TB SSD/Touch/Pen/Win10', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(16, 2, 'Laptop Lenovo Ideapad 3 15IAU7 i3 1215U/8GB/256GB/Win11 (82RK005LVN) ', 'laptop-lenovo-ideapad-3-15IAU7-i3', '8', 'Laptop Lenovo Yoga Duet 7 13ITL6 i7 (82MA003UVN) là sự kết hợp hoàn hảo giữa một chiếc máy tính Windows và Tablet từ đó mang đến một siêu phẩm có thiết kế cơ động, nhỏ gọn cùng hiệu năng mạnh mẽ, phù hợp cho mọi tác vụ giải trí, sáng tạo nội dung với bút cảm ứng Digital Pen tặng kèm.', 1500, 1490, 15, 1, 1, 0, 'Laptop Lenovo Ideapad 3 15IAU7 i3 1215U/8GB/256GB/Win11 (82RK005LVN) ', 'Laptop Lenovo Ideapad 3 15IAU7 i3 1215U/8GB/256GB/Win11 (82RK005LVN) ', 'Laptop Lenovo Ideapad 3 15IAU7 i3 1215U/8GB/256GB/Win11 (82RK005LVN) ', '2023-01-11 03:42:46', '2023-01-11 03:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://cdn.tgdd.vn/Products/Images/42/250728/Slider/vi-vn-iphone-13-pro-max-1tb--(1).jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(2, 1, 'https://cdn.tgdd.vn/Products/Images/42/250728/Slider/vi-vn-iphone-13-pro-max-1tb--(13).jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(3, 1, 'https://cdn.tgdd.vn/Products/Images/42/250728/Slider/vi-vn-iphone-13-pro-max-1tb--(12).jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(4, 1, 'https://cdn.tgdd.vn/Products/Images/42/250728/Slider/vi-vn-iphone-13-pro-max-1tb--(11).jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(5, 2, 'https://cdn.tgdd.vn/Products/Images/42/228736/Slider/iphone-12-128gb-281120-1020380.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(6, 2, 'https://cdn.tgdd.vn/Products/Images/42/228736/Slider/iphone-12-slider-thiet-ke-780x433.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(7, 2, 'https://cdn.tgdd.vn/Products/Images/42/228736/Slider/iphone-12-128gb-281120-1020412.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(8, 2, 'https://cdn.tgdd.vn/Products/Images/42/228736/Slider/iphone-12-128gb-281120-1020465.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(9, 3, 'https://cdn.tgdd.vn/Products/Images/42/224859/Slider/samsung-galaxy-s20-fan-edition-tongquan-780x433-1.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(10, 3, 'https://cdn.tgdd.vn/Products/Images/42/224859/Slider/vi-vn-samsung-galaxy-s20-fan-edition-manhinh.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(11, 3, 'https://cdn.tgdd.vn/Products/Images/42/224859/Slider/vi-vn-samsung-galaxy-s20-fan-edition-camera.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(12, 3, 'https://cdn.tgdd.vn/Products/Images/42/224859/Slider/samsung-galaxy-s20-fan-edition-rom-780x433.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(13, 4, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/2.ButSpen-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(14, 4, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/3.Trainghiemthigiac-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(15, 4, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/8.Matthanbongdem-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(16, 4, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/6.Dungluongpin-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(17, 5, 'https://cdn.tgdd.vn/Products/Images/42/245261/Slider/note-11-1020x570.jpeg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(18, 5, 'https://cdn.tgdd.vn/Products/Images/42/245261/Slider/SLIDE5-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(19, 5, 'https://cdn.tgdd.vn/Products/Images/42/245261/Slider/SLIDE4new-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(20, 5, 'https://cdn.tgdd.vn/Products/Images/42/245261/Slider/tongquan-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(21, 6, 'https://cdn.tgdd.vn/Products/Images/42/267871/Slider/Artboard1-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(22, 6, 'https://cdn.tgdd.vn/Products/Images/42/267871/Slider/Artboard4-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(23, 6, 'https://cdn.tgdd.vn/Products/Images/42/267871/Slider/Artboard2-1020x570.jpg', '2023-01-11 03:42:46', '2023-01-11 03:42:46'),
(24, 6, 'https://cdn.tgdd.vn/Products/Images/42/267871/Slider/Artboard6-1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(25, 7, 'https://cdn.tgdd.vn/Products/Images/42/260546/Slider/oppo-reno8-pro---1--1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(26, 7, 'https://cdn.tgdd.vn/Products/Images/42/260546/Slider/oppo-reno8-pro---1--1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(27, 7, 'https://cdn.tgdd.vn/Products/Images/42/260546/Slider/oppo-reno8-pro---6--1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(28, 7, 'https://cdn.tgdd.vn/Products/Images/42/260546/Slider/oppo-reno8-pro---6--1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(29, 8, 'https://cdn.tgdd.vn/Products/Images/42/249944/Slider/oppo-a55-4g637701573072514668.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(30, 8, 'https://cdn.tgdd.vn/Products/Images/42/249944/Slider/oppo-a55-slider-man-hinh-1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(31, 8, 'https://cdn.tgdd.vn/Products/Images/42/249944/Slider/oppo-a55-slider-man-hinh-1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(32, 8, 'https://cdn.tgdd.vn/Products/Images/42/249944/Slider/oppo-a55-slider-camera-1020x570.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(33, 9, 'https://cdn.tgdd.vn/Products/Images/44/264354/Slider/dell-gaming-g15-5511-i5-70266676-fix-ab-01-1020x570-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(34, 9, 'https://cdn.tgdd.vn/Products/Images/44/264354/Slider/vi-vn-dell-gaming-g15-5511-i5-70266676-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(35, 9, 'https://cdn.tgdd.vn/Products/Images/44/264354/Slider/vi-vn-dell-gaming-g15-5511-i5-70266676-5.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(36, 9, 'https://cdn.tgdd.vn/Products/Images/44/264354/Slider/vi-vn-dell-gaming-g15-5511-i5-70266676-4.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(37, 10, 'https://cdn.tgdd.vn/Products/Images/44/266280/Slider/vi-vn-dell-vostro-3510-i5-p112f002bbl-1.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(38, 10, 'https://cdn.tgdd.vn/Products/Images/44/266280/Slider/vi-vn-dell-vostro-3510-i5-p112f002bbl-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(39, 10, 'https://cdn.tgdd.vn/Products/Images/44/266280/Slider/vi-vn-dell-vostro-3510-i5-p112f002bbl-3.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(40, 10, 'https://cdn.tgdd.vn/Products/Images/44/266280/Slider/vi-vn-dell-vostro-3510-i5-p112f002bbl-5.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(41, 11, 'https://cdn.tgdd.vn/Products/Images/44/279259/Slider/vi-vn-asus-tuf-gaming-fx506lhb-i5-hn188w-1.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(42, 11, 'https://cdn.tgdd.vn/Products/Images/44/279259/Slider/vi-vn-asus-tuf-gaming-fx506lhb-i5-hn188w-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(43, 11, 'https://cdn.tgdd.vn/Products/Images/44/279259/Slider/vi-vn-asus-tuf-gaming-fx506lhb-i5-hn188w-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(44, 11, 'https://cdn.tgdd.vn/Products/Images/44/279259/Slider/vi-vn-asus-tuf-gaming-fx506lhb-i5-hn188w-4.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(45, 12, 'https://cdn.tgdd.vn/Products/Images/44/284257/Slider/vi-vn-asus-vivobook-15x-oled-a1503za-i5-l1290w-1.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(46, 12, 'https://cdn.tgdd.vn/Products/Images/44/284257/Slider/vi-vn-asus-vivobook-15x-oled-a1503za-i5-l1290w-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(47, 12, 'https://cdn.tgdd.vn/Products/Images/44/284257/Slider/vi-vn-asus-vivobook-15x-oled-a1503za-i5-l1290w-3.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(48, 12, 'https://cdn.tgdd.vn/Products/Images/44/284257/Slider/vi-vn-asus-vivobook-15x-oled-a1503za-i5-l1290w-3.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(49, 13, 'https://cdn.tgdd.vn/Products/Images/44/239552/Slider/vi-vn-apple-macbook-air-m1-2020-z124000de-1.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(50, 13, 'https://cdn.tgdd.vn/Products/Images/44/239552/Slider/vi-vn-apple-macbook-air-m1-2020-z124000de-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(51, 13, 'https://cdn.tgdd.vn/Products/Images/44/239552/Slider/apple-macbook-air-m1-2020-z124000de-4-1-1-1020x570.jpeg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(52, 13, 'https://cdn.tgdd.vn/Products/Images/44/239552/Slider/vi-vn-apple-macbook-air-m1-2020-z124000de-5.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(53, 14, 'https://cdn.tgdd.vn/Products/Images/44/282828/Slider/vi-vn-apple-macbook-pro-13-inch-m2-2022-01.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(54, 14, 'https://cdn.tgdd.vn/Products/Images/44/282828/Slider/vi-vn-apple-macbook-pro-13-inch-m2-2022-02.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(55, 14, 'https://cdn.tgdd.vn/Products/Images/44/282828/Slider/vi-vn-apple-macbook-pro-13-inch-m2-2022-02.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(56, 14, 'https://cdn.tgdd.vn/Products/Images/44/282828/Slider/vi-vn-apple-macbook-pro-13-inch-m2-2022-05.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(57, 15, 'https://cdn.tgdd.vn/Products/Images/44/279450/Slider/vi-vn-lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(58, 15, 'https://cdn.tgdd.vn/Products/Images/44/279450/Slider/vi-vn-lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-3.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(59, 15, 'https://cdn.tgdd.vn/Products/Images/44/279450/Slider/vi-vn-lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-5.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(60, 15, 'https://cdn.tgdd.vn/Products/Images/44/279450/Slider/vi-vn-lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-4.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(61, 16, 'https://cdn.tgdd.vn/Products/Images/44/287769/Slider/vi-vn-lenovo-ideapad-3-15iau7-i3-82rk005lvn-1.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(62, 16, 'https://cdn.tgdd.vn/Products/Images/44/287769/Slider/vi-vn-lenovo-ideapad-3-15iau7-i3-82rk005lvn-2.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(63, 16, 'https://cdn.tgdd.vn/Products/Images/44/287769/Slider/vi-vn-lenovo-ideapad-3-15iau7-i3-82rk005lvn-3.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(64, 16, 'https://cdn.tgdd.vn/Products/Images/44/287769/Slider/vi-vn-lenovo-ideapad-3-15iau7-i3-82rk005lvn-3.jpg', '2023-01-11 03:42:47', '2023-01-11 03:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wedsite_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wedsite_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden, 0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '', '', 'https://theme.hstatic.net/1000026716/1000440777/14/slideshow_3.jpg?v=32719', 0, '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(2, '', '', 'https://theme.hstatic.net/1000026716/1000440777/14/slideshow_9.jpg?v=32719', 0, '2023-01-11 03:42:47', '2023-01-11 03:42:47'),
(3, '', '', 'https://theme.hstatic.net/1000026716/1000440777/14/slideshow_10.jpg?v=32719', 0, '2023-01-11 03:42:47', '2023-01-11 03:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user, 1=admin',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_products`
--
ALTER TABLE `comment_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_products_product_id_foreign` (`product_id`),
  ADD KEY `comment_products_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_products`
--
ALTER TABLE `comment_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_products`
--
ALTER TABLE `comment_products`
  ADD CONSTRAINT `comment_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
