-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 06:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(7, 'Medicine'),
(8, 'Essential');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(1, 'Emman Medina', 'Bacoor City, Cavite', '09090909090'),
(6, 'Niko Aguilar', 'Metro Manila', '123'),
(7, 'Mercy Ponillas', 'Bacoor, Cavite', '123');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(70, 1, 'Purchase', 83, 4, '2021-05-30 22:57:42'),
(71, 1, 'Purchase', 83, 6, '2021-05-30 23:07:35'),
(72, 5, 'Purchase', 83, 5, '2021-05-30 23:15:13'),
(73, 5, 'Purchase', 84, 5, '2021-05-30 23:15:13'),
(74, 5, 'Purchase', 85, 5, '2021-05-30 23:15:13'),
(75, 5, 'Purchase', 87, 5, '2021-05-31 00:14:33'),
(76, 6, 'Purchase', 88, 5, '2021-05-31 00:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `exp_date` int(30) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `exp_date`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(83, 7, 'ALAXAN FR CAPSULE', 0, 1, 85, 'upload/ALAXAN FR CAPSULE_1622281780.png', 10),
(84, 1, 'APOLLO PETROLEUM JELLY 25G', 0, 1, 7, 'upload/APOLLO PETROLEUM JELLY 25G_1622281818.png', 10),
(85, 1, 'APOLLO PETROLEUM JELLY 50G', 0, 1, 7, 'upload/APOLLO PETROLEUM JELLY 50G_1622281856.jpg', 10),
(86, 1, 'ASCORBIC ACID CAPSULE 500MG ', 0, 1, 20, 'upload/ATC_1622281936.jpg', 10),
(87, 1, 'VITALAKAS MULTIVITAMINS CAPSULE', 0, 1, 17, 'upload/VITALAKAS_1622282003.jpg', 10),
(88, 1, 'BETADINE WOUND SOLUTION 7.5ML', 0, 1, 7, 'upload/BETADINE WOUND SOLUTION 7.5ML_1622282049.jpg', 10),
(89, 1, 'BIOFLU TABLET 500MG ', 0, 1, 100, 'upload/BIOFLU TABLET 500MG_1622282084.jpg', 10),
(90, 1, 'DIATABS LOPERAMIDE CAPSULE', 0, 1, 100, 'upload/DIATABS LOPERAMIDE CAPSULE_1622282106.png', 10),
(91, 1, 'DYNATUSSIN CAPSULE', 0, 1, 100, 'upload/DYNATUSSIN CAPSULE_1622282127.png', 10),
(92, 1, 'IMODIUM LOPERAMIDE 2MG', 0, 1, 10, 'upload/IMODIUM_1622282212.jpg', 10),
(94, 1, 'INSTANCE HAND SANITIZER 75% ALCOHOL 100ML', 0, 1, 5, 'upload/INSTANCE_1622285866.jpg', 10),
(95, 1, 'KIDDILETS 120MG CHEWABLE TABLET', 0, 1, 60, 'upload/KIDDILETS 120MG CHEWABLE TABLET_1622282400.png', 10),
(96, 1, 'LOLA REMEDIOS 15ML SACHET', 0, 1, 48, 'upload/LOLA REMEDIOS 15ML SACHET_1622282457.jpg', 10),
(97, 1, 'MEDIPLAST BANTAM P.STRIPS 25S', 0, 1, 10, 'upload/MEDIPLAST_1622282618.jpg', 10),
(98, 1, 'MEDIPLAST ELASTIC BANDAGE (WHITE) 2X5', 0, 1, 10, 'upload/MEDIPLAST ELASTIC BANDAGE (WHITE) 2X5_1622282659.jpg', 10),
(99, 1, 'MENTOPAS MEDICATED PLASTER 2S', 0, 1, 20, 'upload/MENTOPAS_1622282781.jpg', 10),
(100, 1, 'MENTOPAS MEDICATED PLASTER 6S', 0, 1, 20, 'upload/MENTOPAS7s_1622282862.jpg', 10),
(101, 1, 'MUCOBRON FORTE CAPSULE', 0, 1, 100, 'upload/MUCOBRON FORTE CAPSULE_1622282911.jpg', 10),
(102, 1, 'NEOZEP ORAL DROPS 10ML', 0, 1, 10, 'upload/NEOZEP ORAL DROPS 10ML_1622282948.png', 10),
(103, 1, 'NEUROGEN-E (REF) TABLET', 0, 1, 32, 'upload/NEUROGEN-E (REF) TABLET_1622282981.jpg', 10),
(104, 1, 'OMEGA PAIN KILLER 15ML', 0, 1, 10, 'upload/OMEGA PAIN KILLER 15ML_1622283043.jpg', 10),
(105, 1, 'PGOLDEN CUP BALM OINTMENT 50g', 0, 1, 10, 'upload/PGOLDEN CUP BALM OINTMENT 50g_1622283135.jpg', 10),
(106, 1, 'PROPAN TLC SYRUP 60ML', 0, 1, 10, 'upload/PROPAN TLC SYRUP 60ML_1622283176.jpg', 10),
(107, 1, 'PROPAN W/ IRON CAPSULE', 0, 1, 30, 'upload/PROPAN W IRON CAPSULE_1622283212.jpg', 10),
(108, 1, 'RM AMLODIPINE 10MG TABLET', 0, 1, 100, 'upload/RM AMLODIPINE 10MG TABLET_1622283243.jpg', 10),
(110, 1, 'RM MEFENAMIC ACID 500MG TABLET', 0, 1, 200, 'upload/RM MEFENAMIC ACID 500MG TABLET_1622283287.jpg', 10),
(111, 1, 'RM METOPROLOL 50MG TABLET', 0, 1, 200, 'upload/RM METOPROLOL 50MG TABLET_1622286372.jpg', 10),
(112, 1, 'RM CLOXACILLIN 500MG CAPSULE', 0, 1, 100, 'upload/RM CLOXACILLIN 500MG CAPSULE_1622283374.jpg', 10),
(113, 1, 'ROBIKIDS 250MG/5ML SUSPENSION 60ML', 0, 1, 10, 'upload/ROBIKIDS 250MG5ML SUSPENSION_1622283437.jpg', 10),
(114, 1, 'ROBITUSSIN EXPECTORANT SYRUP 60ML (Y)', 0, 1, 10, 'upload/ROBITUSSIN EXPECTORANT SYRUP 60ML (Y)_1622283467.jpg', 10),
(115, 1, 'SOLMUX PED 200MG SYRUP 60ML', 0, 1, 10, 'upload/SOLMUX PED 200MG SYRUP 60ML_1622283492.jpg', 10),
(116, 2, 'TEMPRA 100MG/ML DROPS 15ML (GRAPES)', 0, 1, 20, 'upload/TEMPRA 100MGML DROPS 15ML (GRAPES)_1622286549.jpg', 10),
(117, 1, 'TEMPRA 120MG SYRUP (ORANGE) 120ML', 0, 1, 10, 'upload/TEMPRA 120MG SYRUP (ORANGE) 120ML_1622283539.jpg', 10),
(118, 1, 'TEMPRA 120MG SYRUP (ORANGE) 60ML', 0, 1, 10, 'upload/TEMPRA 120MG SYRUP (ORANGE) 60ML_1622283594.jpg', 10),
(119, 1, 'TEMPRA FORTE SYRUP 250MG (ORANGE) 60ML', 0, 1, 10, 'upload/TEMPRA FORTE SYRUP 250MG (ORANGE) 60ML_1622283615.jpg', 10),
(120, 1, 'TYLENOL EXTENDED RELEASE 650MG TABLET', 0, 1, 30, 'upload/TYLENOL EXTENDED RELEASE 650MG TABLET_1622283634.jpg', 10),
(121, 1, 'UH CALACTATE 650MG TABLET x100S', 0, 1, 10, 'upload/UH_1622283748.jpg', 10),
(122, 1, 'UH WHITFIELDS OINTMENT 15g', 0, 1, 10, 'upload/UH OINTMENT_1622283816.jpg', 10),
(123, 1, 'VICKS BABY RUB 20G', 0, 1, 10, 'upload/VICKS BABY RUB 20G_1622283856.jpg', 10),
(124, 1, 'VICKS INHALER (KEY-CHAIN)', 0, 1, 12, 'upload/VICKS INHALER (KEY-CHAIN)_1622283894.jpg', 10),
(125, 1, 'VISINE ORIGINAL EYE DROP 15ML (RED)', 0, 1, 10, 'upload/VISINE ORIGINAL EYE DROP 15ML (RED)_1622283935.jpg', 10),
(126, 2, ' CERELAC  WHEAT BANANA & MILK 120G', 0, 1, 10, 'upload/Cerelac-Wheat-Banana-Milk120g_1622284017.jpg', 10),
(127, 2, 'COFFEE MATE 170G', 0, 1, 10, 'upload/COFFEEMATE 170G_1622286671.jpg', 10),
(128, 2, 'MILO ACTIV-GO WINNER 24G', 0, 1, 10, 'upload/MILO-ACTIV-GO-WINNER-24G_1622284078.jpg', 10),
(129, 2, 'NESCAFE CLASSIC 25G', 0, 1, 10, 'upload/105_1622284230.jpg', 10),
(130, 2, 'NESTOGEN 1 340G', 0, 1, 5, 'upload/NESTOGEN 1 340G_1622284351.png', 10),
(131, 2, 'NESTOGEN 2 340G', 0, 1, 5, 'upload/NESTOGEN 1 340G_1622284387.png', 10),
(132, 2, 'NIDO 3+ 370G', 0, 1, 5, 'upload/NIDO 3+ 370G_1622284422.png', 10),
(133, 2, 'NIDO 5+ 370G', 0, 1, 5, 'upload/NIDO 5+ 370G_1622284445.jpg', 10),
(134, 2, 'NIDO FORTIGROW 700G', 0, 1, 3, 'upload/NIDO FORTIGROW 700G_1622284494.png', 10),
(135, 2, 'NIDO JUNIOR 370G', 0, 1, 5, 'upload/NIDO JUNIOR 370G_1622284539.jpg', 10),
(136, 2, 'HB DISINFECTANT SPRAY (CITRUS SCENT) 170G ', 0, 1, 9, 'upload/citrus scent_1622285936.jpg', 10),
(137, 2, 'HB DISINFECTANT SPRAY (COUNTRY SCENT) 170G', 0, 1, 10, 'upload/HB DISINFECTANT SPRAY (COUNTRY SCENT) 170G_1622284598.jpg', 10),
(138, 2, 'HB DISINFECTANT SPRAY (LINEN SCENT) 170G', 0, 1, 10, 'upload/HB DISINFECTANT SPRAY (LINEN SCENT) 170G_1622284620.jpg', 10),
(139, 2, 'OFF OVERTIME LOTION SACHET 6ML', 0, 1, 96, 'upload/OFF OVERTIME LOTION SACHET 6ML_1622284658.jpg', 10),
(140, 2, 'OFF SOFT & SCENTED LOTION 100ML', 0, 1, 10, 'upload/OFF SOFT & SCENTED LOTION 100ML_1622284924.jpg', 10),
(141, 2, 'OFF SOFT & SCENTED LOTION 50ML', 0, 1, 10, 'upload/OFF SOFT & SCENTED LOTION 50ML_1622286522.jpg', 10),
(142, 2, 'OFF SOFT & SCENTED LOTION SACHET 6ML', 0, 1, 96, 'upload/OFF SOFT & SCENTED LOTION SACHET 6ML_1622285037.jpg', 10),
(143, 2, 'OILGANICS SHAMPOO (ANTI HEADLICE/KUTO) 10ML SACHET', 0, 1, 24, 'upload/OILGANICS SHAMPOO_1622285092.jpg', 10),
(144, 2, 'PH CARE FEMININE WASH \"PASSIONATE BLOOM\" 150ML', 0, 1, 10, 'upload/PH CARE FEMININE WASH_1622285468.jpg', 10),
(145, 2, 'PH CARE FEMININE WASH \"SHOWER SPASH\" 150ML', 0, 1, 10, 'upload/PH CARE FEMININE WASH SHOWER SPASH 150ML_1622285530.jpg', 10),
(146, 2, 'WIPE COTTON BALLS 50S', 0, 1, 20, 'upload/WIPE_1622285635.png', 10),
(147, 2, 'WIPE COTTON BUDS 72S', 0, 1, 93, 'upload/WIPE COTTON_1622285684.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(15, 1, 4, '2021-05-30 22:57:42'),
(16, 1, 6, '2021-05-30 23:07:35'),
(17, 5, 15, '2021-05-30 23:15:13'),
(18, 5, 5, '2021-05-31 00:14:33'),
(19, 6, 5, '2021-05-31 00:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(25, 15, 83, 4),
(26, 16, 83, 6),
(27, 17, 83, 5),
(28, 17, 84, 5),
(29, 17, 85, 5),
(30, 18, 87, 5),
(31, 19, 88, 5);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin123', '0192023a7bbd73250516f069df18b500', 1),
(6, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 2),
(7, 'user2', '7e58d63b60197ceb55a1c487989a3720', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
