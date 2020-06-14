-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 11:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oraganfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodtable`
--

CREATE TABLE `foodtable` (
  `id` int(11) NOT NULL,
  `idShop` text COLLATE utf8_unicode_ci NOT NULL,
  `NameFood` text COLLATE utf8_unicode_ci NOT NULL,
  `Price` text COLLATE utf8_unicode_ci NOT NULL,
  `Detail` text COLLATE utf8_unicode_ci NOT NULL,
  `PathImage` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `foodtable`
--

INSERT INTO `foodtable` (`id`, `idShop`, `NameFood`, `Price`, `Detail`, `PathImage`) VALUES
(4, '33', 'ลูกชิ้น', '10', 'อร่อย', '/oraganfood/Food/food33733661.jpg'),
(5, '7', 'สลัด', '123', 'detail salat', '/oraganfood/Food/food75250.jpg'),
(9, '7', 'iced cream', '45', 'werg', '/oraganfood/Food/food7337302.jpg'),
(10, '31', 'ร้าน31', '31', 'กัดด', '/oraganfood/Food/food31912650.jpg'),
(11, '31', 'ร้าน312', '312', 'กดเะ', '/oraganfood/Food/food31186360.jpg'),
(12, '7', 'ร้าน33', '33', 'กดแก', '/oraganfood/Food/food7707425.jpg'),
(15, '33', 'ต้มเลือดหมู', '60', 'อร่อย', '/oraganfood/Food/food3310602.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `ChooseType` text COLLATE utf8_unicode_ci NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `User` text COLLATE utf8_unicode_ci NOT NULL,
  `Password` text COLLATE utf8_unicode_ci NOT NULL,
  `NameShop` text COLLATE utf8_unicode_ci NOT NULL,
  `Address` text COLLATE utf8_unicode_ci NOT NULL,
  `Phone` text COLLATE utf8_unicode_ci NOT NULL,
  `UrlPicture` text COLLATE utf8_unicode_ci NOT NULL,
  `Lat` text COLLATE utf8_unicode_ci NOT NULL,
  `Lng` text COLLATE utf8_unicode_ci NOT NULL,
  `Token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `ChooseType`, `Name`, `User`, `Password`, `NameShop`, `Address`, `Phone`, `UrlPicture`, `Lat`, `Lng`, `Token`) VALUES
(1, '$chooseType', '$name', '$user', '$password', '$nameShop', '$address', '$phone', '$urlImage', '$lat', '$lng', ''),
(2, 'Shop', 'ไทย เจ้าของร้าน', '0', '0', 'ร้านไทยๆๆๆๆ', '$address', '$phone', '$urlImage', '$lat', '$lng', ''),
(6, 'User', 'Peter ลูกค้า', '1', '1', '', '', '', '', '', '', ''),
(7, 'Shop', 'ร้านกินคลีน', '2', '2', 'ร้านกินคลีน11', '299/173 ถนนวิภาวดีรังสิต แขวงตลาดบางเขน เขตหลักสี่ กรุงเทพมหานคร', '025751111', '/oraganfood/Shop/shop514511.jpg', '14.2902266', '100.6075825', ''),
(8, 'Rider', 'สมชาย มอไซต์              ', '3', '3', '', '', '', '', '', '', ''),
(18, '$ChooseType', 'ep25 api ไม่พัง ไม่ได้แก้ addUser.php', '$User', '$Password', '', '', '', '', '', '', ''),
(21, 'Shop', '11', '11', '11', '11', '11', '11', '11', '11', '11', ''),
(22, 'Shop', '22 ข้าม 25', '22', '22', '   ', '    ', '    ', '   ', '   ', '  ', ''),
(23, 'rider', '33 ข้าม 25 เพราะ r เล็ก', '33', '33', '', '', '', '', '', '', ''),
(25, 'User', '44 ข้าม 25', '4r', '44', '', '', '', '', '', '', ''),
(26, 'Shop', '55 ข้าม 25 กด login แล้วไม่ไปไหน อยู่หน้าเดิม', '55', '55', '', '', '', '', '', '', ''),
(28, '$ChooseType', '$Name', '$User', '$Password', '', '', '', '', '', '', ''),
(29, 'Shop', 'เทสแก้ ทำ ep25 ใหม่', 'editep25', '25', '', '', '', '', '', '', ''),
(30, 'Shop', '2fromsamsung', '2samsung', '2', '', '', '', '', '', '', ''),
(31, 'Shop', 'Shop สมัครหลังแก้ ep25', '4', '4', '', '', '', '', '', '', ''),
(32, 'Shop', 'eak', 'eak', 'eak', 'eakshop', '456', '123456789', '/oraganfood/Shop/shop323218.jpg', '13.718256', '100.799821', ''),
(33, 'Shop', 'โดรามอน อึ่ง', 'dora', '123456', 'UngDora Shop', '123/456 abc', '12345678', '/oraganfood/Shop/shop22260.jpg', '13.667802', '100.62182', ''),
(34, 'Shop', 'PLE', 'ple', '123', 'Oragan2020', '123', '123', '/oraganfood/Shop/shop607869.jpg', 'null', 'null', ''),
(38, 'Shop', '5', '5', '5', '', '', '', '', '', '', ''),
(39, 'User', '6', '6', '6', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodtable`
--
ALTER TABLE `foodtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foodtable`
--
ALTER TABLE `foodtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
