-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2019 at 08:11 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

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
  `product_seller` varchar(25) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_condition`, `product_guarantee`, `product_seller`, `product_image`, `product_description`) VALUES
(1, 'Laptop ASUS K401L', 5000000, 'Baru', '2 Tahun', '', '', 'Laptop\r\nMSDOS\r\nIntel Core i5 - 5200U up to 2.7GHz\r\nRAM 4GB\r\nGPU GeForce 940M\r\nHDD 1TB\r\nI/O 4 USB 3.0, 1 HDMI, 1 Audio Jack 3.5mm, LAN Port, SD Card Slot, Charging Port\r\nModel Mirip Apple, Aluminium Finish, Speaker SonicMaster\r\nDisplay up to 1920x1080\r\nTouchpad ASUS SmartGesture'),
(2, 'Smartphone OPPO A6s', 1000000, 'Bekas', 'Tidak Ada', '', '', 'KONDISI BARANG 90%'),
(3, 'Charger ASUS K401L', 300000, 'Baru', '2 Bulan', '', '', 'Charger ASUS K401L (Kecil) ORI'),
(4, 'Mouse Rexus', 150000, 'Baru', '2 Bulan', '', '', 'Mouse gaming kekinian..\r\nLengkap dengan lampu LED biru, serasa seperti pemain professional!!'),
(5, 'Speaker Simbadda', 140000, 'Bekas', '1 Bulan', '', '', 'Suaranya lumayan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
