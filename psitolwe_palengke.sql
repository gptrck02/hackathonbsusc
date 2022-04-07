-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2022 at 09:38 PM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psitolwe_palengke`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_ID` int(100) NOT NULL,
  `user_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_ID`, `user_ID`) VALUES
(1, 1),
(14, 74);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `item_ID` int(100) NOT NULL,
  `user_ID` int(100) NOT NULL,
  `seller_ID` int(100) NOT NULL,
  `product_ID` int(100) NOT NULL,
  `price` int(110) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total_price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`item_ID`, `user_ID`, `seller_ID`, `product_ID`, `price`, `quantity`, `total_price`) VALUES
(172, 80, 18, 11, 10, 2, 10),
(196, 90, 20, 15, 50, 1, 50),
(199, 92, 18, 22, 25, 4, 25),
(205, 98, 28, 41, 45, 1, 45),
(206, 99, 28, 41, 45, 1, 45),
(233, 107, 27, 46, 69, 1, 69),
(234, 107, 27, 43, 129, 1, 129),
(235, 107, 31, 51, 230, 1, 230),
(236, 107, 18, 24, 130, 1, 130),
(283, 108, 18, 11, 10, 1, 10),
(291, 58, 18, 11, 10, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_ID` int(100) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_ID`, `category_name`) VALUES
(1, 'Vegetables'),
(2, 'Canned Goods'),
(3, 'Fruits'),
(4, 'Snacks'),
(9, 'Drinks'),
(13, 'Meat'),
(15, 'Apparel');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(100) NOT NULL,
  `user_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_ID`, `user_ID`) VALUES
(44, 57),
(45, 58),
(55, 77),
(56, 79),
(57, 80),
(58, 81),
(59, 82),
(61, 84),
(62, 85),
(63, 88),
(64, 89),
(65, 90),
(66, 91),
(67, 92),
(68, 93),
(69, 94),
(70, 95),
(71, 97),
(72, 98),
(73, 99),
(74, 100),
(75, 101),
(76, 102),
(77, 103),
(80, 108),
(81, 109),
(82, 111);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_ID` int(20) NOT NULL,
  `user_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_ID` int(100) NOT NULL,
  `seller_ID` int(200) NOT NULL,
  `product_ID` int(100) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `item_price` int(110) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total_price` int(100) NOT NULL,
  `service_fee` decimal(10,2) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_status` varchar(200) NOT NULL,
  `paypal_txn_ID` varchar(255) NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `paypal_fee` int(110) NOT NULL,
  `shipping_fee` int(110) NOT NULL,
  `status` varchar(200) NOT NULL,
  `rating_status` varchar(255) NOT NULL,
  `date_purchased` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `identifier`, `user_ID`, `seller_ID`, `product_ID`, `customer_name`, `address`, `phone`, `product_name`, `product_image`, `item_price`, `quantity`, `total_price`, `service_fee`, `payment_mode`, `payment_status`, `paypal_txn_ID`, `paypal_email`, `paypal_fee`, `shipping_fee`, `status`, `rating_status`, `date_purchased`) VALUES
('21123085WW0O7Q', '2112306020', 57, 27, 46, 'Customer Customer', '2, 2, 2', '09555555555', 'Coconut', '61c978c80510d0.56624119.jpeg', 69, 10, 690, 55.20, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2021-12-30 01:05:34'),
('2112309EL42UMA', '2112303549', 57, 28, 42, 'Customer Customer', '2, 2, 2', '09555555555', 'Carrots', '61c978302a1e31.95676237.jpeg', 15, 10, 150, 12.00, 'E-wallet', 'Paid', '7L491037W47543334', 'buyer@palengkeapp.com', 83, 40, 'Completed', 'waiting', '2021-12-30 01:14:01'),
('211230BHPIRZD2', '2112303181', 80, 18, 11, 'Dan Astillero', 'asdasdasd, Antipolo, Naga', '09450928187', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2021-12-30 21:15:39'),
('211230BPSUI0LZ', '2112303181', 80, 27, 43, 'Dan Astillero', 'asdasdasd, Antipolo, Naga', '09450928187', 'Dragon Fruit', '61c978393f2925.02478557.jpeg', 129, 2, 258, 20.64, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2021-12-30 21:15:39'),
('211230E20E3Q6U', '2112306852', 79, 28, 47, 'Jhon Rhay Parreno', '1977C FB PASAY CITY, 1, SAGAY', '09321764095', 'Sayote', '61c9799f732d76.93684455.jpeg', 15, 15, 225, 18.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2021-12-30 16:57:41'),
('211230SAWDN6AK', '2112306020', 57, 18, 22, 'Customer Customer', '2, 2, 2', '09555555555', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 10, 250, 20.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2021-12-30 01:05:34'),
('211230TTH0MSDZ', '2112306020', 57, 18, 11, 'Customer Customer', '2, 2, 2', '09555555555', 'Orange', '61c458126235e7.25135406.png', 10, 10, 100, 8.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2021-12-30 01:05:34'),
('211230V7KBTO5E', '2112303549', 57, 28, 47, 'Customer Customer', '2, 2, 2', '09555555555', 'Sayote', '61c9799f732d76.93684455.jpeg', 15, 10, 150, 12.00, 'E-wallet', 'Paid', '7L491037W47543334', 'buyer@palengkeapp.com', 83, 40, 'Completed', 'waiting', '2021-12-30 01:14:01'),
('211230YT38EF0B', '2112303549', 57, 18, 24, 'Customer Customer', '2, 2, 2', '09555555555', 'Meat', '61a5c1ecee7155.10833137.png', 130, 10, 1300, 104.00, 'E-wallet', 'Paid', '7L491037W47543334', 'buyer@palengkeapp.com', 83, 40, 'Completed', 'waiting', '2021-12-30 01:14:01'),
('220101024RKXK7', '2201015465', 81, 31, 51, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Beef', '61d02a5d509013.03479005.jpeg', 230, 1, 230, 18.40, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 18:30:01'),
('2201016SKH7RJB', '2201016441', 88, 18, 24, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Meat', '61a5c1ecee7155.10833137.png', 130, 1, 130, 10.40, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101B68XW04H', '2201016441', 88, 27, 43, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Dragon Fruit', '61c978393f2925.02478557.jpeg', 129, 1, 129, 10.32, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101B6YVHWC2', '2201014506', 91, 18, 24, 'Judith Tusi', '0164 Nabus, Bigte, Norzagaray', '09611824661', 'Meat', '61a5c1ecee7155.10833137.png', 130, 1, 130, 10.40, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 18:41:47'),
('220101C03LENSW', '2201014506', 91, 18, 38, 'Judith Tusi', '0164 Nabus, Bigte, Norzagaray', '09611824661', 'Juice', '61c32dcb891b74.00793190.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 18:41:47'),
('220101E1GGIF43', '2201016441', 88, 20, 15, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Pineapple', '61c34ed5ada0e8.49049373.png', 50, 1, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101E7AH266N', '2201016441', 88, 18, 33, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'San Marino', '61b5fe4d4ffc27.48882488.png', 50, 1, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101GFZ2678N', '2201015902', 81, 18, 11, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:10:22'),
('220101GXFAZU55', '2201016441', 88, 30, 49, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Special Mango Graham', '61d0225c5b3a76.90018539.jpg', 100, 1, 100, 8.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101HL1QBX3U', '2201016441', 88, 20, 39, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Nova', '61c34f403dc4d5.57345031.png', 15, 1, 15, 1.20, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101IHE0IYIW', '2201014765', 81, 20, 15, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Pineapple', '61c34ed5ada0e8.49049373.png', 50, 1, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 16:49:28'),
('220101IT3PGJQ9', '2201014765', 81, 18, 11, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 16:49:28'),
('220101IVZOMA0D', '2201016441', 88, 28, 41, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Banana', '61c977d12311f9.50525609.jpeg', 45, 1, 45, 3.60, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101JI9JLTIS', '2201015839', 83, 18, 11, 'John Wick', 'Blk.13 Lot.23 Dreamland Ville, Kaypian, San Jose Del Monte', '09312061035', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:06:14'),
('220101O9YXX6CD', '2201016441', 88, 27, 46, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Coconut', '61c978c80510d0.56624119.jpeg', 69, 1, 69, 5.52, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101ORV4B2SX', '2201016441', 88, 18, 11, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101RK4RY20H', '2201014765', 81, 18, 22, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 2, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 16:49:28'),
('220101SIHL4YSC', '2201018003', 81, 28, 41, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Banana', '61c977d12311f9.50525609.jpeg', 45, 3, 135, 10.80, 'E-wallet', 'Paid', '5UC79687D7846054A', 'buyer@palengkeapp.com', 31, 40, 'Completed', 'waiting', '2022-01-01 17:24:52'),
('220101SM4WEXNJ', '2201014187', 81, 18, 24, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Meat', '61a5c1ecee7155.10833137.png', 130, 2, 260, 20.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 16:37:26'),
('220101U808Z2BM', '2201019467', 90, 18, 11, 'Jorha Mariz Dela Rosa', '0223 Kaypaya St. Inner Crusher, Bigte, Norzagaray', '09669183997', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 18:26:31'),
('220101UGOLWK60', '2201012628', 83, 18, 11, 'John Wick', 'Blk.13 Lot.23 Dreamland Ville, Kaypian, San Jose Del Monte', '09312061035', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:14:50'),
('220101UUH24I6K', '2201014187', 81, 20, 39, 'Aubrey Pomida', 'Blk 9 Lot 12 Alaska St. Towerville, Santo Cristo, City of San Jose del Monte Bulacan', '09279829152', 'Nova', '61c34f403dc4d5.57345031.png', 15, 2, 30, 2.40, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 16:37:26'),
('220101VLE3PKSE', '2201016441', 88, 18, 38, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Juice', '61c32dcb891b74.00793190.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101WX5KWUAV', '2201016441', 88, 27, 45, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Kiwi', '61c9787ec65e12.48771995.jpeg', 35, 1, 35, 2.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('220101YJVLT4J2', '2201016441', 88, 18, 22, 'Florence May Acosta', 'Blk. 29 Lot 1 Area D Pag-Asa St. , Brgy. Sta. Cruz IV, San Jose del Monte, Bulacan', '09382404208', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 1, 25, 2.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-01 17:56:30'),
('2201025F2XVZ2B', '2201023282', 97, 31, 51, 'Jay Toby', 'secret, kaypian, San Jose', '09501409789', 'Beef', '61d02a5d509013.03479005.jpeg', 230, 7, 1610, 128.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-02 21:53:36'),
('22010274OY2MJB', '2201026320', 95, 28, 41, 'Marjorie Caimor', 'BLk 100 lot 22 area D, Sta cruz, San jose del monte ', '09979252696', 'Banana', '61c977d12311f9.50525609.jpeg', 45, 1, 45, 3.60, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-02 18:07:17'),
('220102H0MTT8AQ', '2201023282', 97, 27, 46, 'Jay Toby', 'secret, kaypian, San Jose', '09501409789', 'Coconut', '61c978c80510d0.56624119.jpeg', 69, 2, 138, 11.04, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-02 21:53:36'),
('220102R2M0C98H', '2201023282', 97, 31, 52, 'Jay Toby', 'secret, kaypian, San Jose', '09501409789', 'Lettuce', '61d02b50502d19.09807041.jpeg', 100, 9, 900, 72.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-02 21:53:36'),
('220102ZNMZ2MPP', '2201023282', 97, 27, 43, 'Jay Toby', 'secret, kaypian, San Jose', '09501409789', 'Dragon Fruit', '61c978393f2925.02478557.jpeg', 129, 1, 129, 10.32, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-02 21:53:36'),
('2201032PI3FDLD', '2201038038', 101, 18, 33, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'San Marino', '61b5fe4d4ffc27.48882488.png', 50, 1, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('2201033OYIXA5G', '2201038038', 101, 27, 46, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Coconut', '61c978c80510d0.56624119.jpeg', 69, 1, 69, 5.52, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('2201038UZQWQVC', '2201038038', 101, 18, 24, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Meat', '61a5c1ecee7155.10833137.png', 130, 1, 130, 10.40, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('220103BJVDNO4A', '2201039451', 103, 20, 15, 'Customer  Customer ', 'B1 B2, Kalbo, Sjdm', '09155246457', 'Pineapple', '61c34ed5ada0e8.49049373.png', 50, 1, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:52:55'),
('220103EWEBYK01', '2201038038', 101, 18, 38, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Juice', '61c32dcb891b74.00793190.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('220103F08G7MIE', '2201038038', 101, 20, 15, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Pineapple', '61c34ed5ada0e8.49049373.png', 50, 1, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('220103G0P8E9SK', '2201038038', 101, 31, 51, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Beef', '61d02a5d509013.03479005.jpeg', 230, 1, 230, 18.40, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('220103JYCK64LR', '2201036379', 100, 32, 54, 'Kyle Madrid', 'Blk 34 Lot22 sindangan St., Guiho Francisco, San jose del monte', '09275461888', 'Talong', '61d1b10324d388.05011230.jpg', 100, 2, 200, 16.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 16:13:35'),
('220103MQX6ME1U', '2201038038', 101, 18, 11, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('220103Q88D3N93', '2201039451', 103, 18, 11, 'Customer  Customer ', 'B1 B2, Kalbo, Sjdm', '09155246457', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:52:55'),
('220103QV0Z3SSQ', '2201038038', 101, 27, 45, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Kiwi', '61c9787ec65e12.48771995.jpeg', 35, 1, 35, 2.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('220103R8VB1WJF', '2201038038', 101, 31, 50, 'Benigno Concepcion', 'Blk 23 Lt 24, Kaypian, San Jose del Monte', '09157754499', 'Chicken', '61d029e37454e2.98795067.jpeg', 160, 1, 160, 12.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-03 17:14:32'),
('22010625JP43BJ', '2201069221', 57, 18, 11, 'Customer Customer', '2, 2, 2', '09555555555', 'Orange', '61c458126235e7.25135406.png', 10, 5, 50, 4.00, 'E-wallet', 'Paid', '4LL79085A24993534', 'buyer@palengkeapp.com', 55, 40, 'Completed', 'waiting', '2022-01-06 16:17:54'),
('22010665GFRVM2', '2201063387', 104, 27, 43, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09450928188', 'Dragon Fruit', '61c978393f2925.02478557.jpeg', 129, 1, 129, 10.32, 'E-wallet', 'Paid', '7V543705TU235144L', 'buyer@palengkeapp.com', 39, 40, 'Completed', 'waiting', '2022-01-06 03:19:58'),
('22010681EHLRB1', '2201069221', 57, 18, 22, 'Customer Customer', '2, 2, 2', '09555555555', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 5, 125, 10.00, 'E-wallet', 'Paid', '4LL79085A24993534', 'buyer@palengkeapp.com', 55, 40, 'Completed', 'waiting', '2022-01-06 16:17:54'),
('22010694DL1QWT', '2201064238', 107, 18, 22, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09658540526', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 1, 25, 2.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-06 14:18:10'),
('220106FO2B7Z3Q', '2201063387', 104, 31, 51, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09450928188', 'Beef', '61d02a5d509013.03479005.jpeg', 230, 1, 230, 18.40, 'E-wallet', 'Paid', '7V543705TU235144L', 'buyer@palengkeapp.com', 39, 40, 'Completed', 'waiting', '2022-01-06 03:19:58'),
('220106L89912JT', '2201063410', 104, 28, 41, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09450928188', 'Banana', '61c977d12311f9.50525609.jpeg', 45, 6, 270, 21.60, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-06 03:15:02'),
('220106L9OWYHRU', '2201064238', 107, 31, 50, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09658540526', 'Chicken', '61d029e37454e2.98795067.jpeg', 160, 1, 160, 12.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-06 14:18:10'),
('220106N4UGWINX', '2201064329', 107, 31, 52, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09658540526', 'Lettuce', '61d02b50502d19.09807041.jpeg', 100, 3, 300, 24.00, 'E-wallet', 'Paid', '2UJ95455KT6443931', 'buyer@palengkeapp.com', 37, 40, 'Completed', 'waiting', '2022-01-06 13:56:17'),
('220106O2ZDLMGW', '2201063410', 104, 31, 52, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09450928188', 'Lettuce', '61d02b50502d19.09807041.jpeg', 100, 2, 200, 16.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-06 03:15:02'),
('220106PN49EFBV', '2201065881', 104, 31, 52, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09450928188', 'Lettuce', '61d02b50502d19.09807041.jpeg', 100, 1, 100, 8.00, 'E-wallet', 'Paid', '1RG54755T2771031T', 'buyer@palengkeapp.com', 32, 40, 'Completed', 'waiting', '2022-01-06 10:09:33'),
('220106TOLPU7GY', '2201065881', 104, 28, 41, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09450928188', 'Banana', '61c977d12311f9.50525609.jpeg', 45, 1, 45, 3.60, 'E-wallet', 'Paid', '1RG54755T2771031T', 'buyer@palengkeapp.com', 32, 40, 'Completed', 'waiting', '2022-01-06 10:09:33'),
('220106VA2DH2M8', '2201069221', 57, 27, 43, 'Customer Customer', '2, 2, 2', '09555555555', 'Dragon Fruit', '61c978393f2925.02478557.jpeg', 129, 5, 645, 51.60, 'E-wallet', 'Paid', '4LL79085A24993534', 'buyer@palengkeapp.com', 55, 40, 'Completed', 'waiting', '2022-01-06 16:17:54'),
('220106XB19DJTP', '2201068715', 108, 31, 52, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09658540526', 'Lettuce', '61d02b50502d19.09807041.jpeg', 100, 3, 300, 24.00, 'E-wallet', 'Paid', '0AU510878F045562A', 'buyer@palengkeapp.com', 37, 40, 'Completed', 'waiting', '2022-01-06 14:29:47'),
('220106Z4DABGRC', '2201063410', 104, 18, 11, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09450928188', 'Orange', '61c458126235e7.25135406.png', 10, 5, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-06 03:15:02'),
('2201070V1R2885', '2201076824', 108, 18, 22, 'Alvin Adan', '005 Zone 7 Santo Nino, Antipolo, Minalabac', '09658540526', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 1, 25, 2.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-07 13:11:49'),
('220107ALPXIJMH', '2201075126', 57, 18, 38, 'Customer Customer', '2, 2, 2', '09555555555', 'Juice', '61c32dcb891b74.00793190.png', 10, 10, 100, 8.00, 'E-wallet', 'Paid', '79E65380B16636006', 'buyer@palengkeapp.com', 30, 40, 'Completed', 'waiting', '2022-01-07 13:04:07'),
('220107CA4A7QI6', '2201075642', 57, 18, 11, 'Customer Customer', '2, 2, 2', '09555555555', 'Orange', '61c458126235e7.25135406.png', 10, 10, 100, 8.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-07 13:02:43'),
('2201087RKTACK0', '2201085590', 57, 27, 43, 'Customer Customer', '2, 2, 2', '09555555555', 'Dragon Fruit', '61c978393f2925.02478557.jpeg', 129, 10, 1290, 103.20, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-08 08:38:12'),
('2201088PZAMFN9', '2201088141', 57, 31, 50, 'Customer Customer', '2, 2, 2', '09555555555', 'Chicken', '61d029e37454e2.98795067.jpeg', 160, 10, 1600, 128.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-08 08:24:04'),
('220108DZG5K0VO', '2201088141', 57, 18, 24, 'Customer Customer', '2, 2, 2', '09555555555', 'Meat', '61a5c1ecee7155.10833137.png', 130, 10, 1300, 104.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-08 08:24:04'),
('220108G5AX2U3R', '2201082376', 58, 20, 15, 'Cutie Customerr', '6, 5, 4', '09556565656', 'Pineapple', '61c34ed5ada0e8.49049373.png', 50, 1, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-08 08:39:45'),
('220108KKQ0DE2A', '2201086728', 57, 32, 54, 'Customer Customer', '2, 2, 2', '09555555555', 'Talong', '61d1b10324d388.05011230.jpg', 100, 1, 100, 8.00, 'E-wallet', 'Paid', '0GE74663T0166381H', 'buyer@palengkeapp.com', 30, 40, 'Completed', 'waiting', '2022-01-08 08:42:17'),
('220108LVHT0J01', '2201081970', 57, 18, 11, 'Customer Customer', '2, 2, 2', '09555555555', 'Orange', '61c458126235e7.25135406.png', 10, 1, 10, 0.80, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-08 08:47:34'),
('220108MGJNT3EE', '2201081037', 57, 27, 46, 'Customer Customer', '2, 2, 2', '09555555555', 'Coconut', '61c978c80510d0.56624119.jpeg', 69, 10, 690, 55.20, 'E-wallet', 'Paid', '78T402207E773970J', 'buyer@palengkeapp.com', 51, 40, 'Completed', 'waiting', '2022-01-08 08:49:06'),
('220108UZ8VHPSC', '2201082710', 57, 20, 39, 'Customer Customer', '2, 2, 2', '09555555555', 'Nova', '61c34f403dc4d5.57345031.png', 15, 10, 150, 12.00, 'E-wallet', 'Paid', '44W47506BD7963424', 'buyer@palengkeapp.com', 50, 40, 'Completed', 'waiting', '2022-01-08 08:22:15'),
('220108Z9SFOF3M', '2201082710', 57, 18, 33, 'Customer Customer', '2, 2, 2', '09555555555', 'San Marino', '61b5fe4d4ffc27.48882488.png', 50, 10, 500, 40.00, 'E-wallet', 'Paid', '44W47506BD7963424', 'buyer@palengkeapp.com', 50, 40, 'Completed', 'waiting', '2022-01-08 08:22:15'),
('2201092X2AMZCH', '2201099913', 57, 27, 43, 'Customer Customer', '2, 2, 2', '09555555555', 'Dragon Fruit', '61c978393f2925.02478557.jpeg', 129, 10, 1290, 103.20, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-09 01:02:20'),
('2201093CE4OKYU', '2201094210', 57, 27, 46, 'Customer Customer', '2, 2, 2', '09555555555', 'Coconut', '61c978c80510d0.56624119.jpeg', 69, 1, 69, 5.52, 'E-wallet', 'Paid', '81M61111P2350145Y', 'buyer@palengkeapp.com', 43, 40, 'Completed', 'waiting', '2022-01-09 17:59:12'),
('2201096Y7FCTAE', '2201094210', 57, 31, 51, 'Customer Customer', '2, 2, 2', '09555555555', 'Beef', '61d02a5d509013.03479005.jpeg', 230, 1, 230, 18.40, 'E-wallet', 'Paid', '81M61111P2350145Y', 'buyer@palengkeapp.com', 43, 40, 'Completed', 'waiting', '2022-01-09 17:59:12'),
('220109CIYJHY8M', '2201094210', 57, 20, 39, 'Customer Customer', '2, 2, 2', '09555555555', 'Nova', '61c34f403dc4d5.57345031.png', 15, 10, 150, 12.00, 'E-wallet', 'Paid', '81M61111P2350145Y', 'buyer@palengkeapp.com', 43, 40, 'Completed', 'waiting', '2022-01-09 17:59:12'),
('220109T8CPNA0Y', '2201099084', 57, 18, 22, 'Customer Customer', '2, 2, 2', '09555555555', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 10, 250, 20.00, 'E-wallet', 'Paid', '2G3084250P1836647', 'buyer@palengkeapp.com', 50, 40, 'Completed', 'waiting', '2022-01-09 01:08:34'),
('220109W1QRYOT5', '2201094210', 57, 18, 22, 'Customer Customer', '2, 2, 2', '09555555555', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 1, 25, 2.00, 'E-wallet', 'Paid', '81M61111P2350145Y', 'buyer@palengkeapp.com', 43, 40, 'Completed', 'waiting', '2022-01-09 17:59:12'),
('220109WPEH4BPA', '2201099913', 57, 20, 15, 'Customer Customer', '2, 2, 2', '09555555555', 'Pineapple', '61c34ed5ada0e8.49049373.png', 50, 10, 500, 40.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-09 01:02:20'),
('220109X45CTA61', '2201099084', 57, 27, 45, 'Customer Customer', '2, 2, 2', '09555555555', 'Kiwi', '61c9787ec65e12.48771995.jpeg', 35, 10, 350, 28.00, 'E-wallet', 'Paid', '2G3084250P1836647', 'buyer@palengkeapp.com', 50, 40, 'Completed', 'waiting', '2022-01-09 01:08:34'),
('220109Z9C0I3GY', '2201099084', 57, 27, 46, 'Customer Customer', '2, 2, 2', '09555555555', 'Coconut', '61c978c80510d0.56624119.jpeg', 69, 1, 69, 5.52, 'E-wallet', 'Paid', '2G3084250P1836647', 'buyer@palengkeapp.com', 50, 40, 'Completed', 'waiting', '2022-01-09 01:08:34'),
('220125F0KGRNUA', '2201259245', 57, 18, 22, 'John Patrick Cruz', '2, 2, 2', '09555555555', 'Banana', '61a4a482d2c2c5.48186033.png', 25, 4, 100, 8.00, 'E-wallet', 'Paid', '8TJ41638PP2776227', 'buyer@palengkeapp.com', 34, 40, 'Delivered', 'waiting', '2022-01-25 17:44:37'),
('220125OVXG76LO', '2201254190', 57, 18, 11, 'John Patrick Sujetado', '2, 2, 2', '09555555555', 'Orange', '61c458126235e7.25135406.png', 10, 10, 100, 8.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-01-25 23:55:21'),
('220125Z1O1FHY7', '2201259245', 57, 20, 39, 'John Patrick Cruz', '2, 2, 2', '09555555555', 'Nova', '61c34f403dc4d5.57345031.png', 15, 7, 105, 8.40, 'E-wallet', 'Paid', '8TJ41638PP2776227', 'buyer@palengkeapp.com', 34, 40, 'Delivered', 'waiting', '2022-01-25 17:44:37'),
('220203F0O39UH2', '2202037523', 99, 18, 11, 'Gio Patrick Prequencia', 'Blk. 5 Lot 3 FVR Phase 2, FVR, Norzagaray', '09454228750', 'Orange', '61c458126235e7.25135406.png', 10, 5, 50, 4.00, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 40, 'Completed', 'waiting', '2022-02-03 23:38:33'),
('2202063IR0HRFK', '2202067673', 57, 18, 24, 'John Patrick Sujetado', '2, 2, 2', '09555555555', 'Meat', '61a5c1ecee7155.10833137.png', 130, 1, 130, 10.40, 'Cash on Delivery', 'Paid', 'none', 'none', 0, 45, 'Completed', 'waiting', '2022-02-06 09:06:13'),
('22020655ZKPVEP', '2202067673', 57, 31, 51, 'John Patrick Sujetado', '2, 2, 2', '09555555555', 'Beef', '61d02a5d509013.03479005.jpeg', 230, 1, 230, 18.40, 'Cash on Delivery', 'Pending', 'none', 'none', 0, 45, 'To process', 'waiting', '2022-02-06 09:06:13'),
('2202068JWIGRGV', '2202067673', 57, 28, 58, 'John Patrick Sujetado', '2, 2, 2', '09555555555', 'Buto Buto (baboy)', '61da685ddde403.69903767.jpeg', 100, 1, 100, 8.00, 'Cash on Delivery', 'Pending', 'none', 'none', 0, 45, 'To process', 'waiting', '2022-02-06 09:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_ID` int(100) NOT NULL,
  `seller_ID` int(100) NOT NULL,
  `rating_ID` int(100) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_name_2` varchar(255) NOT NULL,
  `category_name_3` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(100) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `stocks` int(100) NOT NULL,
  `sold` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_uploaded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `seller_ID`, `rating_ID`, `category_name`, `category_name_2`, `category_name_3`, `product_name`, `description`, `price`, `unit`, `stocks`, `sold`, `image`, `status`, `date_uploaded`) VALUES
(11, 18, 0, 'Fruits', '', '', 'Orange', 'Fresh oranges! Buy now :)', 10, '.3', 10, '85', '61c458126235e7.25135406.png', 'available', '2021-10-24 03:23:34'),
(15, 20, 0, 'Fruits', '', '', 'Pineapple', 'Best pineapple in town', 50, '1', 63, '16', '61c34ed5ada0e8.49049373.png', 'available', '2021-11-04 23:06:05'),
(16, 20, 0, 'Fruits', '', '', 'Banana', 'fresh', 50, '1', 6, '0', '61c34edf1dabd5.66084276.png', 'unlisted', '2021-11-04 23:06:33'),
(22, 18, 0, 'Fruits', '', '', 'Banana', '', 25, '1', 33, '46', '61a4a482d2c2c5.48186033.png', 'available', '2021-11-15 22:23:03'),
(23, 18, 0, 'Fruits', '', '', 'Bananaa', '12', 12, '1', 169, '1', '61c4581f32de49.47265906.png', 'deleted', '2021-11-15 22:53:01'),
(24, 18, 0, 'Meat', '', '', 'Meat', '', 130, '1', 74, '26', '61a5c1ecee7155.10833137.png', 'available', '2021-11-30 14:17:16'),
(31, 18, 0, 'Vegetables', '', '', 'Meat2', '12121', 212, '1', 2110, '0', '61b4b893ef4b48.49687873.png', 'deleted', '2021-12-11 22:41:23'),
(33, 18, 0, 'Canned Goods', 'Snacks', 'Meat', 'San Marino', '', 50, '.5', 88, '12', '61b5fe4d4ffc27.48882488.png', 'available', '2021-12-12 21:51:09'),
(38, 18, 0, 'Drinks', '', '', 'Juice', '', 10, '.1', 32, '13', '61c32dcb891b74.00793190.png', 'available', '2021-12-18 18:59:33'),
(39, 20, 0, 'Snacks', '', '', 'Nova', '', 15, '.1', 60, '31', '61c34f403dc4d5.57345031.png', 'available', '2021-12-23 00:16:00'),
(40, 20, 0, 'Vegetables', '', '', 'Bananaa', 'A', 40, '1', 10, '0', '61c6ae62be53c0.98257368.jpg', 'deleted', '2021-12-25 13:38:42'),
(41, 28, 0, 'Fruits', '', '', 'Banana', 'Sweet', 45, '1', 0, '20', '61c977d12311f9.50525609.jpeg', 'sold out', '2021-12-27 16:22:41'),
(42, 28, 0, 'Vegetables', '', '', 'Carrots', 'Kjbw', 15, '.5', 0, '10', '61c978302a1e31.95676237.jpeg', 'sold out', '2021-12-27 16:24:16'),
(43, 27, 0, 'Fruits', '', '', 'Dragon Fruit', 'A pitaya or pitahaya (dragon fruit) is the fruit of several different cactus species indigenous to the Americas. ', 129, '.5', 152, '40', '61c978393f2925.02478557.jpeg', 'available', '2021-12-27 16:24:25'),
(44, 28, 0, 'Vegetables', '', '', 'Kf', 'M', 43, '1', 12, '0', '61c9785daeb4b5.72776342.jpg', 'deleted', '2021-12-27 16:25:01'),
(45, 27, 0, 'Fruits', '', '', 'Kiwi', 'Kiwifruit or Chinese gooseberry is the edible berry of several species of woody vines in the genus Actinidia. ', 35, '1', 181, '12', '61c9787ec65e12.48771995.jpeg', 'available', '2021-12-27 16:25:34'),
(46, 27, 0, 'Fruits', '', '', 'Coconut', 'A coconut is the edible fruit of the coconut palm (Cocos nucifera), a tree of the palm family. Coconut flesh is high in fat and can be dried or eaten fresh or processed into coconut milk or coconut oil. The liquid of the nut, known as coconut water, is used in beverages.', 69, '1', 174, '26', '61c978c80510d0.56624119.jpeg', 'available', '2021-12-27 16:26:48'),
(47, 28, 0, 'Vegetables', '', '', 'Sayote', '', 15, '1', 0, '30', '61c9799f732d76.93684455.jpeg', 'sold out', '2021-12-27 16:30:23'),
(48, 18, 0, 'Vegetables', '', '', 'Latundan', '', 40, '1', 1, '0', '61cc86e6f3c005.83309912.jpg', 'deleted', '2021-12-30 00:03:50'),
(49, 30, 0, 'Snacks', '', '', 'Special Mango Graham', 'Maasim na matamis solid pang Noche Buena ', 100, '1', 49, '1', '61d0225c5b3a76.90018539.jpg', 'deleted', '2022-01-01 17:43:56'),
(50, 31, 0, 'Meat', '', '', 'Chicken', 'Fresh chicken meat!', 160, '1', 485, '12', '61d029e37454e2.98795067.jpeg', 'available', '2022-01-01 18:16:03'),
(51, 31, 0, 'Meat', '', '', 'Beef', 'Fresh beef!', 230, '1', 487, '11', '61d02a5d509013.03479005.jpeg', 'available', '2022-01-01 18:18:05'),
(52, 31, 0, 'Vegetables', '', '', 'Lettuce', 'Fresh lettuce!', 100, '1', 182, '18', '61d02b50502d19.09807041.jpeg', 'available', '2022-01-01 18:22:08'),
(53, 31, 0, 'Vegetables', '', '', 'Broccoli', 'Fresh Broccoli!', 150, '1', 199, '0', '61d02c465cc5b1.54167494.jpeg', 'available', '2022-01-01 18:26:14'),
(54, 32, 0, 'Vegetables', '', '', 'Talong', 'Fresh', 100, '1', 997, '3', '61d1b10324d388.05011230.jpg', 'available', '2022-01-02 22:04:51'),
(55, 32, 0, 'Meat', '', '', 'Zach', 'Baliw', 1, '1', 1, '0', '61d1b8342401d8.19338860.jpg', 'deleted', '2022-01-02 22:35:32'),
(56, 28, 0, 'Fruits', '', '', 'Apple', 'Sweet', 10, '1', 10, '0', '61da666cd99590.32351371.jpeg', 'available', '2022-01-09 12:37:00'),
(57, 28, 0, 'Fruits', '', '', 'Green Apple', 'Sour but sweet', 15, '1', 15, '0', '61da67882a3790.80202927.jpeg', 'available', '2022-01-09 12:41:44'),
(58, 28, 0, 'Meat', '', '', 'Buto Buto (baboy)', 'Fresh meat', 100, '1', 2, '0', '61da685ddde403.69903767.jpeg', 'available', '2022-01-09 12:45:17'),
(59, 18, 0, 'Fruits', '', '', 'Grapes', 'Fresh Grapes', 10, '1', 1000, '0', '61dab30a4dcb14.05049161.jpg', 'deleted', '2022-01-09 18:03:54'),
(60, 18, 0, 'Fruits', '', '', 'Grapes', 'Fresh Grapes', 10, '1', 1000, '0', '61dc14533abde1.89973258.jpg', 'available', '2022-01-10 19:11:15'),
(61, 36, 0, 'Snacks', '', '', 'Pikachu', 'pika', 130, '1', 99, '0', '61f0d35b4a7718.41072713.jpg', 'available', '2022-01-26 12:51:39'),
(62, 18, 0, 'Vegetables', 'Canned Goods', 'Fruits', 'Ampalaya', 'Fresh ampalaya', 50, '2', 500, '0', '61ff1c65e709d4.24264338.jpg', 'available', '2022-02-06 08:55:01'),
(63, 18, 0, 'Vegetables', 'Snacks', '', 'Baguio Beans', 'Fresh Baguio Beans', 30, '10', 100, '0', '61ff21e29ebb24.15584857.jpg', 'available', '2022-02-06 09:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_ID` int(100) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `product_ID` int(100) NOT NULL,
  `user_ID` varchar(255) NOT NULL,
  `user_rating` int(100) NOT NULL,
  `comment` text NOT NULL,
  `image_review` varchar(255) NOT NULL,
  `rating_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_ID` int(100) NOT NULL,
  `user_ID` int(100) NOT NULL,
  `seller_username` varchar(200) NOT NULL,
  `valid_id_front` varchar(255) NOT NULL,
  `valid_id_back` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_ID`, `user_ID`, `seller_username`, `valid_id_front`, `valid_id_back`, `store_name`, `description`) VALUES
(18, 55, 'Gpatrick02', '', '', 'Gio\'s Sari-sari Store', 'I do sell affordable goods. Buy now! ðŸ˜„ Please give fair reviews. ðŸ˜’'),
(20, 56, 'Seller2', '', '', 'My Store', 'Selling best goods '),
(27, 75, 'Mangremedios', 'Remedios_frontid_61c9744433219.jpg', 'Remedios_backid_61c9744433299.jpg', 'Mang Remedios Store', 'Bagsakan ng nga Imported Fruits '),
(28, 76, 'Juliet', 'Sy_frontid_61c976851faf5.jpg', 'Sy_backid_61c976851fbde.jpg', 'Juls Store', 'Fresh Vegetables and Fruits'),
(29, 78, 'Pauli', 'Aguilar_frontid_61cd681bb8348.jpg', 'Aguilar_backid_61cd681bb8444.jpg', 'Selpstore', 'Rates Depend on Face Value. PM for more details.'),
(30, 86, 'Johnwrick', 'Wick_frontid_61d01f0f55214.png', 'Wick_backid_61d01f0f555fd.png', '', ''),
(31, 87, 'Aubreng', 'Pomida_frontid_61d0200b15b1b.jpg', 'Pomida_backid_61d0200b168a2.jpg', 'Fresh Finds', 'Fresher than fresh'),
(32, 96, 'TepiRara', 'Carranza_frontid_61d1ab8ba7da2.jpg', 'Carranza_backid_61d1ab8ba7f8e.jpg', 'Tepilol', 'Sarisari'),
(33, 105, 'wenwen', 'Hero_frontid_61d59a30207ad.jpg', 'Hero_backid_61d59a30208d5.jpg', '', ''),
(34, 106, 'seller1', 'Adan_frontid_61d670fedca49.png', 'Adan_backid_61d670fedcc95.png', '', ''),
(35, 110, 'gseller02', 'Prequencia_frontid_61eecd944109f.jpg', 'Prequencia_backid_61eecd9441119.jpg', '', ''),
(36, 112, 'kenji0003x', 'Salivio_frontid_61f0d25d44b08.jpg', 'Salivio_backid_61f0d25d44c49.jpg', 'Tindahan Ni Ra', 'sari sari');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `m_i` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(11) NOT NULL,
  `detailed_address` varchar(255) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `postal_code` int(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL,
  `verification_status` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `user_type`, `last_name`, `first_name`, `m_i`, `gender`, `birth_date`, `age`, `detailed_address`, `barangay`, `city`, `province`, `region`, `postal_code`, `mobile_number`, `email`, `username`, `password`, `image`, `verification_status`, `date_created`) VALUES
(1, 'Administrator', 'Empleo', 'Daniel', '', 'Male', '2003-01-01', 18, 'Naga', 'Citrus', 'SJDM', 'bulacan', 'region 3', 1, '+639532356111', 'laazada08@gmail.com', 'Admin', '03c7c0ace395d80182db07ae2c30f034', '617d2d0bd35bc6.68625288.png', 'Verified', '2021-10-18 20:02:28'),
(55, 'Seller', 'Prequencia', 'Gio Patrick', 'A', 'Male', '1999-08-05', 22, 'Blk. 5 Lot 8', 'TIGBE', 'NORZAGARAY', 'III', 'BULACAN', 3055, '+639662874075', 'giopatrick.prequencia.s@bulsu.edu.ph', 'Gpatrick02', '64c9ac2bb5fe46c3ac32844bb97be6bc', '61f492cc75c2c1.71426494.png', 'Verified', '2021-10-31 13:23:10'),
(56, 'Seller', 'Seller2', 'Seller22', 'S', 'Female', '2000-01-01', 21, '6', '5', '4', '3', '2', 1, '+639565656553', 'seller2@s.com', 'Seller2', '64c9ac2bb5fe46c3ac32844bb97be6bc', '617e2872c45066.62356492.png', 'Verified', '2021-10-31 13:24:02'),
(57, 'Customer', 'Sujetado', 'John Patrick', '', 'Male', '2005-01-01', 16, '2', '2', '2', '2', '12', 1, '+639555555555', 'cust@s.com', 'Customer', '91ec1f9324753048c0096d036a694f86', '61ff2485842673.23726135.jpg', 'Verified', '2021-10-31 15:20:28'),
(58, 'Customer', 'Customerr', 'Cutie', '', 'Male', '2005-01-01', 16, '6', '5', '4', '3', '2', 12, '+639556565656', 'cutie@s.com', '7', '91ec1f9324753048c0096d036a694f86', '61810c9ba92001.60622797.png', 'Verified', '2021-11-02 18:02:12'),
(74, 'Administrator', 'Prequencia', 'Gio Patrick', 'S', 'Male', '1999-10-02', 22, 'Blk. 2 Lot 8 Area 5', 'Tigbe', 'Norzagaray', 'Bulacan', 'III', 3022, '+639662874124', 'xyz@gmail.com', 'Gptrck02', 'e99a18c428cb38d5f260853678922e03', 'Prequencia_profile_61c89b5f6bf60.png', 'Verified', '2021-12-27 00:42:07'),
(75, 'Seller', 'Remedios', 'Ronaldo', 'R', 'Male', '1980-12-25', 41, 'Blk69 lot69 phase69', 'Kaypian', 'San jose del monte', 'Bulacan', 'Region 3', 3023, '+639774526100', 'zachmantos17@gmail.com', 'Mangremedios', '25f9e794323b453885f5181f1b624d0b', '61c9797439d038.90880489.jpg', 'Verified', '2021-12-27 16:08:40'),
(76, 'Seller', 'Sy', 'Juliet', 'T.', 'Female', '2004-03-18', 17, '0383 Nabus', 'Bigte', 'Norzagaray', 'Bulacan', '7', 33, '+639487071794', 'juliettusi19@gmail.com', 'Juliet', 'c20ad4d76fe97759aa27a0c99bff6710', '61c97aeca0e574.47542437.jpg', 'Verified', '2021-12-27 16:19:05'),
(77, 'Customer', 'Aguilar', 'Paul Christian', 'D', 'Male', '2000-06-02', 21, '885 Estrella Village', 'Ilang-Ilang', 'Guiguinto', 'Bulacan', '3', 3015, '+639430926145', 'abc123@gmail.com', 'Abc', '90253759ffa2cbdc7fb565401037df70', 'Aguilar_profile_61c987b67807b.png', 'Verified', '2021-12-27 17:38:24'),
(78, 'Seller', 'Aguilar', 'Paul Christian', 'D', 'Male', '2000-06-02', 21, '885 Estrella Village', 'Ilang-Ilang', 'Guiguinto', 'Bulacan', '3', 3015, '+639430926116', 'pcdaguilar@gmail.com', 'Pauli', '90253759ffa2cbdc7fb565401037df70', 'Aguilar_profile_61cd681bb828d.png', 'Verified', '2021-12-30 16:05:21'),
(79, 'Customer', 'Parreno', 'Jhon Rhay', 'L', 'Male', '1997-12-22', 24, '1977C FB PASAY CITY', '1', 'SAGAY', 'NEGROS', 'NCR', 1305, '+639321764095', 'jhonrhayparreno22@gmail.com', 'jrparreno', '373354d0c196de3b7d4edc70b43cd18a', 'Parreno_profile_61cd729739bd5.png', 'Verified', '2021-12-30 16:50:09'),
(80, 'Customer', 'Astillero', 'Dan', '', 'Male', '0000-00-00', 0, 'asdasdasd', 'Antipolo', 'Naga', 'Camarines Sur', '5', 4414, '+639450928187', 'allanadan1999@gmail.com', 'danastillero', '5b4f25aa6a5fdd9655e3f86fa7acd443', 'Astillero_profile_61cd737f3f2bb.png', 'Verified', '2021-12-30 16:54:09'),
(81, 'Customer', 'Pomida', 'Aubrey', 'R', 'Female', '1999-12-12', 22, 'Blk 9 Lot 12 Alaska St. Towerville', 'Santo Cristo', 'City of San Jose del Monte Bulacan', 'Bulacan', 'Region III', 3023, '+639279829152', 'aubaub1212x@gmail.com', 'Aubaubs', '2f637b4df66effea1278349a9de0146e', 'Pomida_profile_61d01065c4659.jpg', 'Verified', '2022-01-01 16:29:29'),
(82, 'Customer', 'Nolasco', 'Renzo', 'C', 'Male', '1999-10-28', 22, 'Block 6 Lot 13 Phase 7 Brgy. Santo Cristo City of San Jose Del Monte Bulacan', 'San Jose del Monte City', 'San Jose del Monte City', 'Bulacan', 'Bulacan', 3023, '+639550983541', 'renzonolasco1028@gmail.com', 'Renzozozo', 'ff1bac14ed14bb4eda1e61f88ea21799', 'Nolasco_profile_61d0173fe9df2.png', 'Verified', '2022-01-01 16:57:36'),
(84, 'Customer', 'Elfa', 'Daisy', 'D.', 'Female', '1995-12-20', 26, 'Lot 9 Block 19 Phase 3', 'FVR', 'Norzagaray', 'Bulacan', 'Christian', 3013, '+639061675456', 'daisydayday0@gmail.com', 'DaisyElfa19', '6a39a838d6a5220b1d5c0063362d4143', 'Elfa_profile_61d0194f0ef01.png', 'Verified', '2022-01-01 17:06:13'),
(85, 'Customer', 'Tan', 'Jasper', 'L.', 'Male', '1999-05-23', 22, 'B-19 L-29 phase 3b', 'kaypian', 'San Jose del Monte', 'Bulacan', 'Central Luzon', 3023, '+639458663676', 'kamitaizen23@gmail.com', 'Taizen', 'b6c83c869d36d14a2f15fb3ea3791af6', 'Tan_profile_61d01d12b14f7.png', 'Verified', '2022-01-01 17:22:03'),
(86, 'Seller', 'Wick', 'John', '', 'Male', '2004-12-17', 17, 'Blk. 13 Lot. 23 Dreamland Ville', 'Kaypian', 'San Jose Del Monte ', 'Bulacan', '3', 3023, '+639312061035', 'johnrick.orioque@fcpc.com.ph', 'Johnwrick', 'a7f70e73021a2222bec75bb63787b8ef', 'Wick_profile_61d01dcca5c2e.png', 'Verified', '2022-01-01 17:30:16'),
(87, 'Seller', 'Pomida', 'Aubrey', 'R', 'Male', '1999-12-12', 22, 'Blk 9 Lot 12 Alaska St. Towerville', 'Santo Cristo', 'City of San Jose del Monte Bulacan', 'Bulacan', 'Region III', 3023, '+639916753680', 'aubrengp@gmail.com', 'Aubreng', '3a18aa3017f5bed0a3834f36d11fde96', 'Pomida_profile_61d0200b15709.jpg', 'Verified', '2022-01-01 17:35:22'),
(88, 'Customer', 'Acosta', 'Florence May', '', 'Female', '2000-05-09', 21, 'Blk. 29 Lot 1 Area D Pag-Asa St. ', 'Brgy. Sta. Cruz IV', 'San Jose del Monte, Bulacan', 'Quezon Province', '3', 3024, '+639382404208', 'mayaacosta09@yahoo.com', 'Renceeeeey', '2e60f4f9f9f9549d1256bd4a553ae6e2', 'Acosta_profile_61d023934f364.png', 'Verified', '2022-01-01 17:50:21'),
(89, 'Customer', 'Viojan', 'Mary Rose', 'S', 'Female', '1999-09-20', 22, 'Blk 4 Lt 33 Rosal St. ', 'Minuyan II', 'San Jose Del Monte', 'Bulacan', 'Region III', 3023, '+639353590638', 'mroseviojan20@gmail.com', 'mroseviojan', '9e90bd560d27f8a2e9cffbd11eb63db6', 'Viojan_profile_61d023d1902d0.png', 'Verified', '2022-01-01 17:50:52'),
(90, 'Customer', 'Dela Rosa', 'Jorha Mariz', 'S', 'Female', '2000-09-26', 21, '0223 Kaypaya St. Inner Crusher', 'Bigte', 'Norzagaray', 'Bulacan', '3', 3023, '+639669183997', 'jorhamariz26@gmail.com', 'jayem', '04b3f41ac0cdc6edbfc2428cc95ebebf', 'Dela Rosa_profile_61d02b3a5846c.png', 'Verified', '2022-01-01 18:22:20'),
(91, 'Customer', 'Tusi', 'Judith', 'T', 'Female', '1996-09-25', 25, '0164 Nabus', 'Bigte', 'Norzagaray', 'BULACAN', '3', 3013, '+639611824661', 'judithstephenson07@gmail.com', 'Judithtusi', '6f0f4d469eaead0ac18da3a460f263b6', 'Tusi_profile_61d02df633bfc.png', 'Verified', '2022-01-01 18:39:22'),
(92, 'Customer', 'Canuday', 'Rommel', 'Dacera', 'Male', '2002-03-12', 19, '867 Sitio dynamite matictic norzagaray bulacan', 'Matictic', 'Norzagaray', 'Bulacan', 'lll', 3013, '+639458564331', 'canudayrommel25@gmail.com', 'Canudayrommel', 'f439b9f13ef68d91184cc9ac8af2de68', 'Canuday_profile_61d03872257a0.png', 'Verified', '2022-01-01 19:20:10'),
(93, 'Customer', 'Solsona', 'Jennifer', 'T', 'Female', '2004-12-25', 17, 'Blk 1 Lot 2', 'Upper Bicutan', 'Taguig', 'Manila', 'NCR', 1630, '+639175289455', 'jhensolsona02@gmail.com', 'Jennifer', 'c1a6946894adf1f0933530c5e806a0ba', 'Solsona_profile_61d1653a882b4.png', 'Verified', '2022-01-02 16:44:10'),
(94, 'Customer', 'MariÃ±o', 'Jowell', 'L', 'Male', '1999-12-24', 22, 'Blk 16 Lot 9 Carissa 4a', 'Kaypian', 'San Jose Del Monte', 'Bulacan', '3', 3023, '+639953410826', 'jowelmarino24@gmail.com', 'Knodz', 'e266ce80f615db1ac8e2de7c584ec965', 'MariÃ±o_profile_61d1702eddcfa.png', 'Verified', '2022-01-02 17:28:43'),
(95, 'Customer', 'Caimor', 'Marjorie', 'M', 'Female', '2000-03-07', 21, 'BLk 100 lot 22 area D', 'Sta cruz', 'San jose del monte ', 'Bulacan', '3', 3023, '+639979252696', 'marjoriecaimor29@gmail.com', 'Marjo', '1736b2b50980ea6ea69defe63567b298', 'Caimor_profile_61d17720dd71b.png', 'Verified', '2022-01-02 17:58:55'),
(96, 'Seller', 'Carranza', 'Janelle', 'L', 'Female', '2000-07-08', 21, 'Blk 43 Lot 36 Area I Brgy. Lawang Pari', 'Lawang Pari', 'San Jose Del Monte', 'Bulacan', 'lll', 3023, '+639123528801', 'carranza.janelle8@gmail.com', 'TepiRara', '8d0f90619d25ed7ed08c606f21469c23', 'Carranza_profile_61d1a7e1ef1db.jpg', 'Verified', '2022-01-02 21:42:47'),
(97, 'Customer', 'Toby', 'Jay', 'B.', 'Male', '2004-08-22', 17, 'secret', 'kaypian', 'San Jose', 'Bulacan', '3', 3023, '+639501409789', 'jaytorralba88@gmail.com', 'Jaytoby', 'bf3bcab3bbcefa273c955e8729d09bdc', 'Toby_profile_61d1ac7603b0a.png', 'Verified', '2022-01-02 21:46:26'),
(98, 'Customer', 'Creido', 'Joshua John ', 'Alvarez', 'Male', '1998-02-03', 23, 'Block 53 Lot 58 Phase 1', 'Brgy San Rafael 2', 'San Jose delmonte ', 'Bulacan ', '3', 3023, '+639060763241', 'joshuacreido@gmail.com', 'Narzo18', '25d55ad283aa400af464c76d713c07ad', 'Creido_profile_61d1b9831274b.png', 'Verified', '2022-01-02 22:42:33'),
(99, 'Customer', 'Prequencia', 'Gio Patrick', 'S', 'Male', '1999-10-02', 22, 'Blk. 5 Lot 3 FVR Phase 2', 'FVR', 'Norzagaray', 'Bulacan', 'III', 3013, '+639454228750', 'gptrck12345@gmail.com', 'Gptrck123', '827ccb0eea8a706c4c34a16891f84e7b', 'Prequencia_profile_61d1da2ac73d1.png', 'Verified', '2022-01-03 01:00:26'),
(100, 'Customer', 'Madrid', 'Kyle', 'S', 'Male', '2000-08-28', 21, 'Blk 34 Lot22 sindangan St.', 'Guiho Francisco', 'San jose del monte', 'Bulacan', 'Region3', 3023, '+639275461888', 'kyle.madrid.522@gmail.com', 'KyleMadrid', '25f9e794323b453885f5181f1b624d0b', 'Madrid_profile_61d2af6a70f69.png', 'Verified', '2022-01-03 16:11:44'),
(101, 'Customer', 'Concepcion', 'Benigno', 'B', 'Male', '1998-10-31', 23, 'Blk 23 Lt 24', 'Kaypian', 'San Jose del Monte', 'Bulacan', '3', 3023, '+639157754499', 'aquinosophiafelicityblanche@gmail.com', 'concepcionben', 'f469f144a88219c2d7c78f26e7f88bb4', 'Concepcion_profile_61d2bd5077b0e.png', 'Verified', '2022-01-03 17:10:49'),
(102, 'Customer', 'Seller', 'Seller', '', 'Male', '2004-11-23', 17, 'B1 B2', 'Kalbo', 'San Jose del monte', 'Bulacan', '1', 3023, '+639484594504', 'lestervillamor23@gmail.com', 'sampleSeller', '3233e6d301daf3d98b3718f3d885db31', 'Seller_profile_61d2c2c71a892.png', 'Verified', '2022-01-03 17:36:16'),
(103, 'Customer', 'Customer ', 'Customer ', '', 'Male', '2004-12-01', 17, 'B1 B2', 'Kalbo', 'Sjdm', 'Bulacan', '1', 3023, '+639155246457', 'lestervillamor11@gmail.com', 'SampleCustomer', '81701069fedd4ea7b968e4b2d3fb30b6', 'Customer _profile_61d2c64b27130.png', 'Verified', '2022-01-03 17:49:47'),
(105, 'Seller', 'Hero', 'War', 'C', 'Male', '1999-12-25', 22, 'B2 L7 Palmera', 'Kaypian', 'San Jose Del Monte', 'Bulacan', '3', 3023, '+639567646098', 'heromo.warren25@gmail.com', 'wenwen', 'cd409a72e9ce76e151d63cd113a10ae7', 'Hero_profile_61d59a30206cb.png', 'Verified', '2022-01-05 21:17:14'),
(106, 'Seller', 'Adan', 'Alvin', 'A', 'Male', '2004-12-30', 17, '005 Zone 7 Santo Nino', 'Antipolo', 'Minalabac', 'Camarines Sur', 'V', 4414, '+639450928188', 'alvin.adan.a@bulsu.edu.ph', 'seller1', '81dc9bdb52d04dc20036dbd8313ed055', 'Adan_profile_61d670fedb25b.jpg', 'Verified', '2022-01-06 12:34:21'),
(108, 'Customer', 'Adan', 'Alvin', 'A', 'Male', '2004-12-28', 17, '005 Zone 7 Santo Nino', 'Antipolo', 'Minalabac', 'Camarines Sur', 'V', 4414, '+639658540526', 'alvin.adan.12@gmail.com', 'buyer', '81dc9bdb52d04dc20036dbd8313ed055', 'Adan_profile_61d68b56e66b8.png', 'Verified', '2022-01-06 14:27:01'),
(109, 'Customer', 'Prequencia', 'Gio Patrick', 'S.', 'Male', '1999-10-02', 22, 'Blk 4 Lot 2 Phase 1', 'FVR', 'Norzagaray', 'Bulacan', 'III', 3013, '+639476722313', 'gio100299@gmail.com', 'giopatrick02', '9c8636c8bb5069deb35af6da95597f66', 'Prequencia_profile_61eecc6697c63.png', 'Verified', '2022-01-24 23:58:17'),
(110, 'Seller', 'Prequencia', 'Gio Patrick', 'S.', 'Male', '1999-10-02', 22, 'Blk 1 Lot 2 Phase 3', 'FVR', 'Norzagaray', 'Bulacan', 'III', 3013, '+639662874073', '2018500807@bulsumain.onmicrosoft.com', 'gseller02', '827ccb0eea8a706c4c34a16891f84e7b', 'Prequencia_profile_61eecd9440e25.png', 'Verified', '2022-01-25 00:03:39'),
(111, 'Customer', 'Salivio', 'Richard', 'C', 'Male', '0000-00-00', 0, '224466', 'wawa', 'Balagtas', 'Bulacan', '3', 3016, '+639294403378', 'rasalivio0003@gmail.com', 'kenji0003', '32250170a0dca92d53ec9624f336ca24', 'Salivio_profile_61f0d008a51d8.png', 'Verified', '2022-01-26 12:38:18'),
(112, 'Seller', 'Salivio', 'Ra', 'C', 'Male', '1993-12-22', 28, '22345', 'wawa', 'Balagtas', 'Bulacan', 'Bulacan', 3016, '+639267087944', 'richard.salivio@bulsu.edu.ph', 'kenji0003x', '32250170a0dca92d53ec9624f336ca24', 'Salivio_profile_61f0d242cc035.png', 'Verified', '2022-01-26 12:47:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_ID`),
  ADD KEY `userinfo_ID` (`user_ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`item_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`),
  ADD KEY `customertb_ibfk_1` (`user_ID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_ID`),
  ADD KEY `userinfo_ID` (`user_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_ID`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_ID`),
  ADD KEY `sellertb_ibfk_1` (`user_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `item_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
