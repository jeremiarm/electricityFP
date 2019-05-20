-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 11:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricity`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_condition` varchar(25) NOT NULL,
  `product_guarantee` varchar(20) NOT NULL,
  `product_seller` int(11) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_condition`, `product_guarantee`, `product_seller`, `product_image`, `product_description`) VALUES
(1, 'Laptop ASUS K401L', 5000000, 'Lebih Baru', '2 Tahun', 1, 'image1.jpg', 'LaptopMSDOSIntel Core i5 - 5200U up to 2.7GHzRAM 4GBGPU GeForce 940MHDD 1TBI/O 4 USB 3.0, 1 HDMI, 1 Audio Jack 3.5mm, LAN Port, SD Card Slot, Charging PortModel Mirip Apple, Aluminium Finish, Speaker SonicMasterDisplay up to 1920x1080Touchpad ASUS SmartGesture'),
(2, 'Smartphone OPPO A6s', 1000000, 'Bekas', 'Tidak Ada', 2, 'image2.jpg', 'KONDISI BARANG 90%'),
(3, 'Charger ASUS K401L', 300000, 'Baru', '2 Bulan', 1, 'image3.jpg', 'Charger ASUS K401L (Kecil) ORI'),
(4, 'Mouse Rexus', 150000, 'Baru', '2 Bulan', 1, 'image4.jpg', 'Mouse gaming kekinian..\r\nLengkap dengan lampu LED biru, serasa seperti pemain professional!!'),
(5, 'Speaker Simbadda', 140000, 'Bekas', '1 Bulan', 2, 'image5.jpg', 'Suaranya lumayan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_seller` (`product_seller`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
