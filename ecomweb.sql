-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 10:59 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'CANON'),
(2, 'NIKON'),
(3, 'HP'),
(4, 'SONY');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(7, 2, '0', 6, 'Canon EOS 1300d DSLR', 'canon-eos-1300d.jpeg', 1, 23999, 23999),
(10, 3, '0', 4, 'Canon EOS 3000D DSLR', 'canon eos 3000d.jpeg', 1, 22990, 22990);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Cameras'),
(6, 'Lenses'),
(7, 'Printers');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(2, 1, 1, 'Canon EOS 1300d DSLR', 23999, 'Canon DSLR', 'canon-eos-1300d.jpeg', 'DSLR'),
(3, 1, 1, 'Canon EOS 3000D DSLR', 22990, 'DSLR', 'canon eos 3000d.jpeg', 'DSLR'),
(4, 1, 1, 'Canon EOS 200D', 40000, 'DSLR ', 'Canon200d.jpg', 'DSLR'),
(5, 1, 1, 'Canon EOS 80D DSLR ', 71999, 'DSLR', 'canoneos80d.jpg', 'DSLR'),
(6, 7, 1, 'Canon PIXMA MG2470 All-in-One Inkjet Printer ', 2599, 'All in one printer', 'Canon PIXMA MG2470 All-in-One Inkjet Printer.jpg', 'All in one Printer'),
(7, 7, 3, 'HP DeskJet Ink Advantage 3775 All-in-One Printer', 5499, 'Hp Deskjet Printer', 'HP deskjet 3775.jpg', 'Cheap printer deskjet hp'),
(10, 2, 1, 'Canon EOS 5D Mark IV DSLR ', 1000, 'DSLR', 'canoneos5d.jpg', 'DSLR '),
(11, 2, 1, 'Canon EOS 6D Mark II DSLR', 1200, 'Canon EOS 6D Mark II DSLR', 'Canon EOS 6D Mark II DSLR.jpg', 'DSLR'),
(12, 6, 1, 'Canon EF-S 55 - 250 mm f/4-5.6 IS II Lens  (Black, 55 - 210)', 1500, 'Canon EF-S 55 - 250 mm f/4-5.6 IS II Lens  (Black, 55 - 210)', 'lense1.jpg', 'lens'),
(13, 7, 1, 'Canon Pixma E3177 Multi-function Printer', 3999, 'Multi Function Printer', 'canon-pixma-e3177-original-imaezynucmxb8rbh.jpeg', 'Multi Function Printer'),
(14, 7, 1, 'Canon E510 Multi-function Printer ', 5985, 'Multi Fucntion Printer', 'canon-e510-original-imadrjgfr9dgsgrg.jpeg', 'Multi Function Printer E510'),
(15, 1, 2, 'Nikon Coolpix A10 Point and Shoot Digital Camera (Black) ', 5089, ' Easy to use and 16.1 effective megapixels\r\nNikkor 5x optical zoom lens\r\nScene auto selector ', 'Nikon A10.jpg', 'Compact Digital Cameras'),
(16, 1, 2, 'Nikon D5300 24.2MP Digital SLR Camera (Black)', 37990, ' 24.2 effective megapixels\r\n23.5 x 15.6 mm DX format CMOS sensor\r\n3.2-inch LCD vari-angle monitor\r\nEXPEED 4 processor\r\nBuilt-in WiFi\r\nFull HD (1920 x 1080) movie, frame rate selectable from 60p/50p/30p/25p/24p ', 'Nikon D5300 24.2MP Digital SLR Camera (Black).jpg', 'DSLR D5300'),
(17, 1, 1, 'Canon G7X Mark II', 40999, 'Compact Camera', 'Canon_G7X_MarkII_L_1.jpg', 'Compact Digital Camera'),
(18, 1, 4, 'Sony DSC W830 Cyber-shot 20.1 MP Point and Shoot Camera (Black) ', 7990, 'Sony Compact Camera', 'sony cybershot.jpg', 'Cyber Shot Compact camera Digital camera'),
(19, 7, 3, 'HP deskjet 1112 Color Printer', 1699, 'Hp printer', 'HP deskjet 1112.jpg', 'Hp printer color cheap '),
(20, 7, 3, 'HP DeskJet Ink Advantage Ultra 4729 Wi-Fi All-in-One Printer ', 8499, 'Hp WIFI printer', 'HP deskjet 4729.jpg', 'HP WIFI printer all in one '),
(21, 6, 1, '\r\nCanon EF-S 10-18MM f/4.5-5.6 IS STM Zoom Lens', 18688, 'Canon Zoom lens', '\r\nCanon EF 10-18.jpg', 'LENS zoom canon '),
(22, 6, 1, 'Canon EF 75-300 mm f/4-5.6 III Telephoto Zoom Lens for Canon SLR Cameras ', 9600, 'Canon LENS', 'Canon EF 75-300 mm.jpg', 'Canon Lens Telephoto');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(4, 'Adarsh', 'Pandey', 'adarshpandey.pandey355@gmail.com', '982d29c28c2a30d2f25a56bb997145ac', '9643779124', 'Sector 105', 'Noida'),
(5, 'Test ', 'User', 'testuser@gmail.com', '68a24878cc568766b735c62be5f306ed', '8575905940', 'sector 105', 'Noida'),
(6, 'Rohit', 'Kr', 'rohitkr@gmail.com', 'bb40f428251f0ba04a42afccfd43822b', '9717529545', 'Sector 93', 'Noida'),
(7, 'Aditya', 'Gusain', 'adityagusain@gmail.com', 'efc301d6999b8d521669fc636732cec0', '9903699531', 'Ballabgarh', 'Faridabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
