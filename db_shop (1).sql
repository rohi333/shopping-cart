-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 08:29 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'John Doe', 'admin', 'john@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Acer'),
(3, 'Samsung'),
(4, 'Iphone'),
(5, 'Canon'),
(8, 'Jade'),
(9, 'Zara'),
(10, 'Nike'),
(11, 'realme');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Mobile Phones'),
(4, 'Desktop'),
(5, 'Laptop'),
(6, 'Software'),
(7, 'Sports &amp; Fitness'),
(8, 'Footwear'),
(9, 'Jewellery'),
(10, 'Clothing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'abc11', 'Agonda', 'delhi', 'India', '111', '99999', 'abc@gmail.com', '900150983cd24fb0d6963f7d28e17f72'),
(4, 'rohina', 'Agonda', 'margao', 'India', '444', '3333333333', 'rohinabandekar@gmail.com', '6046f8bd05a4cdd037eca7dedf8a6311'),
(7, 'Sara', 'dddd', 'dddddd', 'ddd', '22222', '222222', 'sara@gmail.com', 'f3e682b9fbe501561d2bae03867c37a0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(2, 'inspiron', 5, 1, '<p>Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.</p>\r\n<p>Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.Awsome product with 8 GB.</p>', 40000.00, 'uploads/6e44c496a5.jpg', 0),
(6, 'treadmill', 7, 3, '<p>this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.</p>\r\n<p>this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.this is treadmill.ththis is treadmill.is is treadmill.this is treadmill.</p>', 6000.00, 'uploads/f92b0cd6a5.jpeg', 0),
(7, 'test pro', 9, 5, '<p>test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.test pro goes here.</p>', 200.00, 'uploads/180641ff8b.jpeg', 1),
(8, 'this is led tv', 4, 3, '<p>this is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tv</p>', 30000.00, 'uploads/cfd75a88e5.jpg', 0),
(9, 'this is led tv', 1, 4, '<p>this is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tvthis is led tv</p>', 50000.00, 'uploads/8d44f63da4.jpg', 1),
(10, 'high heel sandal', 8, 8, '<p>this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.this is sandal.</p>', 800.00, 'uploads/f335d731ed.jpeg', 0),
(11, 'Top with knot', 10, 9, '<p>this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.</p>\r\n<p>this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.this is a crop top with knot.</p>', 900.00, 'uploads/cad4c97d29.jpeg', 0),
(12, 'Shoes', 8, 10, '<p>hhhhhhhhsijdfiehgld sdfnvsoir dsjfgbsihgw djfsrg sjdosrgu pzsjpdhg djgkspdg dognspij bbbb dvjssssssssssssssgosihoooooooooooooooooooooooooooooonk.</p>\r\n<p>vbsu eoriuodv sihgdkvnsporjg kasnom fnosjvp spshpnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn.</p>', 4000.00, 'uploads/fc5beee5ae.jpeg', 1),
(13, 'Realme X', 1, 11, '<p>this is a realme X phone with good features.this is a realme X phone with good features.this is a realme X phone with good features.this is a realme X phone with good features.this is a realme X phone with good features.this is a realme X phone with good features.</p>\r\n<p>this is a realme X phone with good features.this is a realme X phone with good features.this is a realme X phone with good features.this is a realme X phone with good features.</p>', 15000.00, 'uploads/c10a52ef9a.jpeg', 1),
(14, 'casual shoes', 8, 9, '<p>this is casual shoes.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.this is footwear.</p>', 750.00, 'uploads/f70c5f2295.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
