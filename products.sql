-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2019 at 09:54 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sku_id` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku_id`, `category_id`, `category_name`, `product_name`, `image`, `price`, `brand`, `material`, `size`, `qty`, `created_date`, `updated_date`) VALUES
(1, 'Cocp21_Beige_ Free Size', 1, 'Women Clothing', 'Viva Women\'s Salwar Suit Dress Material', '715KDuUxMhL._UY500_.jpg', 800, 'Divastri', 'Cotton', '30', 6, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(2, 'sr_1_2', 1, 'Women Clothing', 'Viva N Diva Cotton Blend Printed Salwar Suit Material', '51XVWrQCvBL.jpg', 700, 'Divastri', 'Cotton', '36', 5, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(3, 'V1667', 1, 'Women Clothing', 'Woven Unstitched Printed Synthetic Crepe Suit Dupatta', '71SbtW5k5vL._UL1500_.jpg', 1100, 'Woven', 'Synthetic', '32', 1, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(4, 'V1669', 1, 'Women Clothing', 'Woven Prints Orange Unstitched Printed Synthetic Crepe Patiyala Suit with Mangalgiri Border', '71Apqt3vaBL._UL1500_.jpg', 450, 'Woven', 'Synthetic', '28', 6, '2016-10-03 00:00:00', '2019-10-11 17:35:35'),
(5, 'JM8956', 1, 'Women Clothing', 'Shonaya Women\'s Pink Net Semi Stitched Dress', '51dIT3DALsL._UL1500_.jpg', 1500, 'Shonaya', 'Fabric', '28', 5, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(6, 'PAS245', 1, 'Women Clothing', 'Floral Patiala Salwar Embroidered Cotton Salwar Kameez Suit', '61-rBuCls-L._UL1500_.jpg', 1200, 'Floral', 'Cotton', '34', 8, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(7, 'Sut658', 1, 'Women Clothing', 'Applique Georgette Semi-Stitched salwar suits', '71A9vgzYDCL._UL1500_.jpg', 1100, 'Applique', 'Fabric', '38', 3, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(8, 'sky_245_8', 1, 'Women Clothing', 'Paisley Green Georgette Unstitched Salwar Suit?', '61l1K8Zc-fL._UL1500_.jpg', 2400, 'Paisley', 'Fabric', '36', 8, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(9, 'JNE0937-BLUE-DR-COPPER', 1, 'Women Clothing', 'Janasya Women\'s Blue Net Semi Stiched Dress', '61w4SxGAbWL._UL1500_.jpg', 8578, 'Janasya', 'Synthetic', '38', 1, '2016-10-03 00:00:00', '2019-10-11 17:35:35'),
(10, 'sky_85_cotton', 1, 'Women Clothing', 'Polka Printed Unstitched Regular Wear Salwar Suit Dress Material', '71JQGZnfzDL._UL1500_.jpg', 1300, 'Polka', 'Cotton', '32', 8, '2019-10-03 00:00:00', '2019-10-11 17:35:35'),
(11, 'sku_12h67_ty', 1, 'Women Clothing', 'Ratnavati Cotton Blend Embellished Salwar Suit Material ', 'ratnavati.jpeg', 1100, 'Ratnavati', 'Cotton ', '36', 10, '2019-10-09 00:00:00', '2019-10-11 17:35:35'),
(12, 'sku_12h67', 1, 'Women Clothing', 'shonaya Cotton Blend Embellished Salwar Suit Material ', 'shonaya_1.jpeg', 1500, 'shonaya', 'Cotton ', '36', 10, '2019-10-09 00:23:56', '2019-10-11 17:35:35'),
(13, 'sku_347j', 1, 'Women Clothing', 'Viva N Diva Cotton Blend Embroidered Salwar Suit Material', 'viva.jpeg', 1200, 'Viva ', 'cotton', '34', 8, '2019-10-09 00:00:00', '2019-10-11 17:35:35'),
(14, 'sku_uuru', 1, 'Women Clothing', 'Viva N Diva Polycotton Embroidered Salwar Suit Material', 'viva2.jpeg', 1600, 'Viva', 'Polycotton', '36', 12, '2019-10-09 00:00:00', '2019-10-11 17:35:35'),
(15, 'sku_men_001kh', 2, 'Men Clothing', 'Striped Men Round Neck Light Green, Black T-Shirt', 'nike1.jpeg', 1200, 'Nike', 'Cotton', '40', 10, '2019-10-11 00:00:00', '2019-10-11 17:39:18'),
(16, 'sku_dgsdgd42', 2, 'Men Clothing', 'Graphic Print Men Round or Crew Blue T-Shirt', 'duke1.jpeg', 1500, 'Duke', 'PolyCotton', '38', 12, '2019-10-12 00:00:00', '2019-10-11 19:43:23'),
(17, 'sku_gfhgfhfg', 2, 'Men Clothing', 'Graphic Print Men Round Neck Blue T-Shirt', 'duke2.jpeg', 2000, 'Duke', 'Cotton Blend', '42', 4, '2019-10-12 00:00:00', '2019-10-11 19:43:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
