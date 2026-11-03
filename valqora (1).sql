-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2026 at 01:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `valqora`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal` varchar(20) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `firstname`, `lastname`, `email`, `phone`, `address`, `city`, `postal`, `payment_method`, `subtotal`, `shipping`, `total`, `created_at`) VALUES
(1, 'jessi', 'jasmine', 'mamamo@gmail.com', '0912345686879', 'lagundi', 'Plaridel', '211', 'cod', 500.00, 100.00, 600.00, '2026-08-26 15:14:05'),
(2, 'jessi', 'jasmine', 'mamamo@gmail.com', '0912345686879', 'lagundi', 'Plaridel', '211', 'cod', 500.00, 100.00, 600.00, '2026-08-26 15:14:19'),
(3, 'unt7i', 'yj', 'jeiji@gmail.com', '093452112356', 'amamaoinh', 'bulacan', '2001', 'cod', 500.00, 100.00, 600.00, '2026-08-26 15:20:23'),
(8, 'mamamo', 'blue', 'mamamoblue@gmail.com', '76567746565', 'wkdhquehsfkcbadiue', 'jrjt7ti7', 'jtd8kt', 'cod', 1250.00, 100.00, 1350.00, '2026-08-28 04:14:56'),
(9, 'Jasmine', 'Ramos', 'jasmineramos@gmail.com', '092384534534652', 'fnluksgrfdygbgyr', 'malolos', '3000', 'card', 1250.00, 100.00, 1350.00, '2026-08-28 06:58:35'),
(10, 'michaela may', 'ramirez', 'ramirezmichaela@gmail.com', '6565866562', 'mamamoblue@gmail.com', 'jrjt7ti7', '20001', 'cod', 130.00, 100.00, 230.00, '2026-09-07 16:52:13'),
(11, 'michaela may', 'ramirez', 'ramirezmichaela@gmail.com', '6565866562', 'mamamoblue@gmail.com', 'jrjt7ti7', '20001', 'cod', 280.00, 100.00, 380.00, '2026-09-08 05:39:11'),
(12, 'Rhey', 'Pogi', 'rheypogi@gmail.com', '6565866562', 'mamamoblue@gmail.com', 'jrjt7ti7', '3000', 'cod', 390.00, 100.00, 490.00, '2026-09-08 09:49:50'),
(13, 'Rhey', 'Pogi', 'rheypogi@gmail.com', '6565866562', 'mamamoblue@gmail.com', 'jrjt7ti7', '3000', 'cod', 280.00, 100.00, 380.00, '2026-09-08 09:53:31'),
(14, 'hans', 'nabong', 'carlo123@gmail.com', '0999999999', 'block 19 lot 31', 'afsfa', '31212', 'cod', 1250.00, 100.00, 1350.00, '2026-10-27 05:16:47'),
(15, 'hans', 'nabong', 'carlo123@gmail.com', '999999999', 'block 19 lot 31', 'afsfa', '31212', 'cod', 260.00, 100.00, 360.00, '2026-10-27 15:18:41'),
(16, 'RANNY', 'SANTOS', 'rannylynsantos@gmail.com', '+5845+526', 'aagve5y', 'h5t r6', 'e5j47j', 'cod', 380.00, 100.00, 480.00, '2026-10-27 15:28:57'),
(17, 'RANNY', 'SANTOS', 'rannylynsantos@gmail.com', 'lncLWRUIURV', 'tKNJKKJBJ', 'ET', 'UT,,RY', 'cod', 190.00, 100.00, 290.00, '2026-10-27 15:30:05'),
(18, 'RANNY', 'SANTOS', 'rannylynsantos@gmail.com', '5ui eo6', 'utpctfmkc', 'd,c.dylid;', 'du,ud,,u', 'cod', 220.00, 100.00, 320.00, '2026-10-27 15:40:46'),
(19, 'RANNY', 'SANTOS', 'rannylynsantos@gmail.com', '4326', 'gfyum,', 'eahehha', '97', 'cod', 140.00, 100.00, 240.00, '2026-10-27 16:09:12'),
(20, 'hans', 'nabong', 'carlo123@gmail.com', '999999999', 'block 19 lot 31', 'afsfa', '31212', 'cod', 260.00, 100.00, 360.00, '2026-11-01 15:22:23'),
(21, 'hans', 'nabong', 'carlo123@gmail.com', '0999999999', 'block 19 lot 31', 'afsfa', '31212', 'cod', 700.00, 100.00, 800.00, '2026-11-03 07:28:35'),
(22, 'hans', 'nabong', 'carlo123@gmail.com', '999999999', 'block 19 lot 31', 'afsfa', '31212', 'cod', 0.00, 100.00, 100.00, '2026-11-03 07:35:13'),
(23, 'Jenard', 'Ramirez', 'rjenard2@gmail.com', '09876543211', 'lagundi', 'Plaridel', '211', 'cod', 120.00, 100.00, 220.00, '2026-11-03 07:45:01'),
(24, 'Jenard', 'Ramirez', 'rjenard2@gmail.com', '09876543211', 'lagundi', 'Plaridel', '211', 'gcash', 130.00, 100.00, 230.00, '2026-11-03 09:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `price`, `size`, `quantity`, `image`) VALUES
(1, 1, '1787757214571', 'VALQORA Classic T-Shirt', 250.00, 'M', 2, 'banners/banner-1.jpg'),
(2, 2, '1787757214571', 'VALQORA Classic T-Shirt', 250.00, 'M', 2, 'banners/banner-1.jpg'),
(3, 3, '1787757214571', 'VALQORA Classic T-Shirt', 250.00, 'M', 2, 'banners/banner-1.jpg'),
(8, 8, '1787890451207', 'VALQORA Classic T-Shirt', 250.00, 'L', 5, 'banners/banner-1.jpg'),
(9, 9, '1787900193668', 'VALQORA Classic T-Shirt', 250.00, 'M', 3, 'banners/banner-1.jpg'),
(10, 9, '1787900258523', 'VALQORA Classic T-Shirt', 250.00, 'XL', 2, 'banners/banner-1.jpg'),
(11, 10, '2', 'MEN\'S BEIGE POLO SHIRT', 130.00, 'L', 1, 'img/2ndbanner/banner-5.jpg'),
(12, 11, '3', 'MEN\'S BROWN ZIP NECK T-SHIRT', 280.00, 'M', 1, 'img/2ndbanner/banner-3.jpg'),
(13, 12, '2', 'MEN\'S BEIGE POLO SHIRT', 130.00, 'L', 2, 'img/2ndbanner/banner-5.jpg'),
(14, 12, '2', 'MEN\'S BEIGE POLO SHIRT', 130.00, 'S', 1, 'img/2ndbanner/banner-5.jpg'),
(15, 13, '3', 'MEN\'S BROWN ZIP NECK T-SHIRT', 280.00, 'M', 1, 'img/2ndbanner/banner-3.jpg'),
(16, 14, '2', 'MEN\'S BEIGE POLO SHIRT', 130.00, 'L', 1, 'img/2ndbanner/banner-5.jpg'),
(17, 14, '3', 'MEN\'S BROWN ZIP NECK T-SHIRT', 280.00, 'S', 4, 'img/2ndbanner/banner-3.jpg'),
(18, 15, '2', 'MEN\'S BEIGE POLO SHIRT', 130.00, 'S', 2, 'img/2ndbanner/banner-5.jpg'),
(19, 16, '1', 'WOMEN\'S V-NECK TOP BLUE PLAID LOOSE', 190.00, 'L', 2, 'img/2ndbanner/banner-1.jpg'),
(20, 17, '1', 'WOMEN\'S V-NECK TOP BLUE PLAID LOOSE', 190.00, 'M', 1, 'img/2ndbanner/banner-1.jpg'),
(21, 18, '7', 'WOMEN\'S FLORAL EMBROIDERY', 220.00, 'M', 1, 'img/2ndbanner/banner-8.jpg'),
(22, 19, '5', 'WOMEN\'S ROUND NECK LOOSE FIT SHIRT', 140.00, 'XL', 1, 'img/2ndbanner/banner-6.jpg'),
(23, 20, '2', 'MEN\'S BEIGE POLO SHIRT', 130.00, 'M', 2, 'img/2ndbanner/banner-5.jpg'),
(24, 21, '4', 'WOMEN\'S ELEGANT GREEN OFFICE WEAR', 350.00, 'M', 2, 'img/2ndbanner/banner-4.jpg'),
(25, 22, '', '', 0.00, 'N/A', 1, ''),
(26, 23, '103', 'MEN GRAY SERIES', 120.00, 'M', 1, 'img/new-arrive/mengray.png'),
(27, 24, '2', 'MEN\'S BEIGE POLO SHIRT', 130.00, 'M', 1, 'img/2ndbanner/banner-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock_quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `stock_quantity`) VALUES
(1, 'WOMEN\'S V-NECK TOP BLUE PLAID LOOSE', 190.00, 20),
(2, 'MEN\'S BEIGE POLO SHIRT', 130.00, 20),
(3, 'MEN\'S BROWN ZIP NECK T-SHIRT', 280.00, 20),
(4, 'WOMEN\'S ELEGANT GREEN OFFICE WEAR', 350.00, 20),
(5, 'WOMEN\'S ROUND NECK LOOSE FIT SHIRT', 140.00, 20),
(6, 'MEN\'S BROWN CAT-PRINTED SHIRT', 250.00, 20),
(7, 'WOMEN\'S FLORAL EMBROIDERY', 220.00, 20),
(8, 'MEN\'S COLLAR CASUAL SHIRT', 260.00, 20),
(9, 'MEN\'S BROWN HOODIE', 250.00, 20),
(10, 'WOMEN\'S CASUAL LOOSE SWEATSHIRT', 230.00, 20),
(11, 'WOMEN\'S PRINTED HOODIE', 250.00, 20),
(12, 'MEN\'S CASUAL SWEATSHIRT', 210.00, 20),
(13, 'MEN\'S BEIGE TRACK PANTS', 180.00, 20),
(14, 'WOMEN\'S WIDE LEG PANTS', 250.00, 20),
(15, 'WOMEN\'S HIGH WAIST WIDE LEG PANTS', 190.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_stock`
--

CREATE TABLE `product_stock` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0
) ;

--
-- Dumping data for table `product_stock`
--

INSERT INTO `product_stock` (`product_id`, `product_name`, `stock_quantity`) VALUES
(1, 'WOMENS V-NECK TOP BLUE PLAID LOOSE', 20),
(2, 'MENS BEIGE POLO SHIRT', 20),
(3, 'MENS BROWN ZIP NECK T-SHIRT', 20),
(4, 'WOMENS ELEGANT GREEN OFFICE WEAR', 20),
(5, 'WOMENS ROUND NECK LOOSE FIT SHIRT', 20),
(6, 'MENS BROWN CAT-PRINTED SHIRT', 20),
(7, 'WOMENS FLORAL EMBROIDERY', 20),
(8, 'MENS COLLAR CASUAL SHIRT', 20),
(9, 'MENS BROWN HOODIE', 20),
(10, 'WOMENS CASUAL LOOSE SWEATSHIRT', 20),
(11, 'WOMENS PRINTED HOODIE', 20),
(12, 'MENS CASUAL SWEATSHIRT', 20),
(13, 'MENS BEIGE TRACK PANTS', 20),
(14, 'WOMENS WIDE LEG PANTS', 20),
(15, 'WOMENS HIGH WAIST WIDE LEG PANTS', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `created_at`, `role`) VALUES
(4, 'jenard', 'ramirez', 'rjenard2@gmail.com', '09318615351', '$2y$10$abV5Se/PqV3x8fQvcop.6ecJDwQTVQGwkfkIhMasuKgcf6BOWFw8G', '2026-08-28 04:28:09', 'customer'),
(5, 'Jasmine', 'Ramos', 'jasmineramos@gmail.com', '0976534354565', 'mamamo', '2026-08-28 06:54:37', 'customer'),
(6, 'dexuz', 'wei', 'carlo1234@gmail.com', '09123456789', '$2y$10$nhbZGEqChFlk/ZfL8zmPL.L3LlgUx4F8I.B8cIw9a/5BALXnPAyQu', '2026-10-28 07:17:48', 'customer'),
(7, 'Jenard', 'Ramirez', 'rjenard122@gmail.com', '09876543211', '$2y$10$i72sMBh5o17AU4j1xGG4wOun8w9y5lZ/pbJycBfAMWZAoY/AyIxL.', '2026-11-03 10:06:23', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
