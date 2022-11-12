-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 11:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestdecision`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitypage`
--

CREATE TABLE `activitypage` (
  `ID` int(11) NOT NULL,
  `Admin` varchar(50) NOT NULL,
  `Activity` varchar(50) NOT NULL,
  `User` varchar(50) DEFAULT NULL,
  `Product` varchar(50) DEFAULT NULL,
  `Date_Time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activitypage`
--

INSERT INTO `activitypage` (`ID`, `Admin`, `Activity`, `User`, `Product`, `Date_Time`) VALUES
(3, 'whitish', 'UPDATED', 'filanitjt', NULL, '2022-04-24 09:38:00.000000'),
(4, 'whitish', 'ADDED', 'testttt', NULL, '2022-04-24 09:44:00.000000'),
(5, 'whitish', 'ADDED', NULL, 'test', '2022-04-24 09:52:00.000000'),
(6, 'whitish', 'UPDATED', NULL, 'test2', '2022-04-24 09:54:00.000000'),
(7, 'whitish', 'ADDED', NULL, 'test2', '2022-04-24 10:00:00.000000'),
(8, 'whitish', 'ADDED', NULL, 'test2', '2022-04-24 10:00:00.000000'),
(9, 'whitish', 'DELETED', NULL, '57', '2022-04-24 10:00:00.000000'),
(10, 'whitish', 'DELETED', '82', NULL, '2022-04-24 10:02:00.000000'),
(11, 'whitish', 'ADDED', 'test3', NULL, '2022-04-24 10:03:00.000000'),
(12, 'Kaboo', 'UPDATED', 'test3', NULL, '2022-04-24 10:06:00.000000'),
(13, 'Kaboo', 'UPDATED', 'test3', NULL, '2022-04-24 10:07:00.000000'),
(14, 'Kaboo', 'ADDED', 'driniii', NULL, '2022-04-24 10:08:00.000000'),
(15, 'Kaboo', 'UPDATED', 'bajramiii', NULL, '2022-04-24 10:10:00.000000'),
(16, 'Kaboo', 'ADDED', NULL, 'Lenovo', '2022-04-24 10:12:00.000000'),
(17, 'Kaboo', 'ADDED', NULL, 'Lenovo', '2022-04-24 10:12:00.000000'),
(18, 'Kaboo', 'ADDED', NULL, 'Lenovo', '2022-04-24 10:13:00.000000'),
(19, 'Kaboo', 'DELETED', '62', NULL, '2022-04-24 10:14:00.000000'),
(20, 'Kaboo', 'ADDED', NULL, 'Lenovo', '2022-04-24 10:15:00.000000'),
(21, 'Kaboo', 'ADDED', NULL, 'Lenovo', '2022-04-24 10:16:00.000000'),
(22, 'whitish', 'ADDED', NULL, 'Lenovo', '2022-04-24 10:17:00.000000'),
(23, 'whitish', 'ADDED', NULL, 'Lenovo', '2022-04-24 10:18:00.000000'),
(24, 'whitish', 'UPDATED', 'driniiii', NULL, '2022-04-24 10:24:00.000000'),
(25, 'whitish', 'UPDATED', NULL, 'Lenovo', '2022-04-24 10:29:00.000000'),
(26, 'whitish', 'UPDATED', NULL, 'Lenovo', '2022-04-24 10:30:00.000000'),
(27, 'Kaboo', 'UPDATED', NULL, 'Lenovoo', '2022-04-24 11:47:00.000000'),
(28, 'whitish', 'UPDATED', 'naimi', NULL, '2022-04-24 11:47:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `ProductText` varchar(50) NOT NULL,
  `Collection` varchar(50) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductText`, `Collection`, `Price`) VALUES
(10, 'Lenovoo', 'Creator 5 15IMH05 15.6 ', 'Legionn', 1100),
(23, 'Lenovo', '14ITL05, 14 \", Intel Core i7, 16GB RAM LPDDR4, 1TB', 'Ideapad', 800),
(36, 'Lenovo', '14 G2 ARE, 14\" Full HD, AMD Ryzen 7, 16GB RAM DDR4', 'Thinkbook', 1049),
(53, 'Lenovo', '14-IIL, 14\'\', Intel Core i5, 8GB RAM, 256GB SSD, I', 'Thinkbook', 850),
(55, 'Lenovo', '14\'\', Intel Core i5, 8GB RAM, 256GB SSD, Intel UHD', 'Thinkbook', 850),
(70, 'Lenovo', '15-IIL, 15.6 \", Intel Core i5, 16GB DDR4 RAM, 512G', 'Thinkbook', 900),
(83, 'Lenovo', 'S340-15IWL, 15.6\'\', 4GB RAM, 128GB SSD plus slot, ', 'Ideapad', 600),
(88, 'Lenovo', 'Y740-17IRHg, 17.3\", Intel Core i7, 16GB RAM DDR4, ', 'Legion', 1727),
(96, 'Lenovo', '1 Fold, 13.3\", Intel Core, 8GB RAM, 1TB SSD', 'Thinkbook', 1419),
(100, 'Lenovo', '15.6\" Full HD, Intel Core i5, 16GB RAM DDR4, 512GB', 'Legion', 1058);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Emri` varchar(50) NOT NULL,
  `Mbiemri` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Emri`, `Mbiemri`, `Username`, `Email`, `Password`, `Role`) VALUES
(1, 'Test', 'Testi', 'testi123', 'test@gmail.com', 'Testi456', 'user'),
(2, 'Bardha', 'Gashi', 'whitish', 'bardhagashi@hotmail.com', 'Bardha456', 'admin'),
(3, 'Dardan', 'Kabashi', 'Kaboo', 'dardankabashi@hotmail.com', 'Dardan456', 'admin'),
(5, 'Sara', 'Dreshaj', 'saraaa', 'sara@hotmail.com', 'Sara741', 'user'),
(8, 'Redman', 'Method', 'redmeth', 'sahs@gmail.com', 'Wutang741', 'user'),
(13, 'Vjosa', 'Curri', 'vjosa741', 'vjosa@gmail.com', 'Vjosa852', 'user'),
(20, 'Drin', 'Krasniqi', 'driniiii', 'drini@hotmail.com', 'Drini542', 'user'),
(24, 'Sara', 'Mulaku', 'saraaaa', 'saram@gmail.com', 'Sara789', 'user'),
(56, 'Bajramm', 'Curri', 'bajramiii', 'bajrambossi@gmail.com', 'Bajram963', 'user'),
(64, 'Muharrem', 'Fejza', 'muharrem12', 'fejza@gmail.com', 'Muharrem123', 'user'),
(81, 'Naim', 'Frasheriii', 'naimi', 'naim@gmail.com', 'Naim852', 'user'),
(84, 'Filanitjeter', 'Fisteku', 'filanitjt', 'filani78@gmail.com', 'Web123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitypage`
--
ALTER TABLE `activitypage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitypage`
--
ALTER TABLE `activitypage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
