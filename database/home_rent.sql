-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 09:45 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home_rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `register_houses`
--

CREATE TABLE `register_houses` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `altmobile` varchar(10) NOT NULL,
  `rooms` varchar(25) NOT NULL,
  `plot` varchar(25) NOT NULL,
  `facilities` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rent` int(30) NOT NULL,
  `deposit` int(30) NOT NULL,
  `town` varchar(30) NOT NULL,
  `pincode` int(10) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `verified` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_houses`
--

INSERT INTO `register_houses` (`id`, `user_id`, `fullname`, `email`, `mobile`, `altmobile`, `rooms`, `plot`, `facilities`, `address`, `status`, `image`, `rent`, `deposit`, `town`, `pincode`, `district`, `state`, `verified`) VALUES
(1, 2, 'Rohit Mishra', 'rakesh651@gmail.com', '9876543210', '9876543210', '3bhk', '3bhk', '24 hours water and electricity', 'G.T ROAD Asansol', 'Vacant', '../houseimg/house2.jpg', 10000, 30000, 'Asansol', 713325, 'Burdwan', 'Vacant', 1),
(4, 2, 'Monoj Saha', 'manoj@gmail.com', '9832740648', '9832740648', '3bhk', '204', '24 hours water, electricity and many more', 'City Center, Durgapur', 'Vacant', '../houseimg/house5.jpeg', 15000, 35000, 'Durgapur', 713326, 'Paschim Bardhaman', 'West Bengal', 1),
(5, 2, 'Abhijit Dutta', 'abhijit@gmail.com', '9832745896', '9832745896', '3bhk', '301', 'Water and Elcetricity', 'Andal More', 'Vacant', '../houseimg/house3.jpg', 12000, 25000, 'Andal', 713321, 'Paschin Burdhwan', 'West Bengal', 1),
(6, 3, 'Saikat Mudi', 'saikat@gamil.com', '9832745652', '9832745652', '2bkh', '435', 'Water and Electricity', 'Kajora', 'Vacant', '../houseimg/house4.jpg', 10000, 20000, 'Kajora', 713321, 'Burdhwan', 'West Bengal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `role` varchar(6) NOT NULL,
  `reqhomeno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `mobile`, `email`, `password`, `role`, `reqhomeno`) VALUES
(2, 'RAKESH MANDAL', 'RAKESH_123', 2147483647, 'rakesh@gmail.com', 'rakesh', 'admin', '  1  4'),
(3, 'SAIKAT MUDI', '', 2147483647, 'saikat@gmail.com', 'saikat', 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `verified_houses`
--

CREATE TABLE `verified_houses` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `altmobile` int(10) NOT NULL,
  `rooms` varchar(25) NOT NULL,
  `plot` varchar(25) NOT NULL,
  `facilities` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rent` int(30) NOT NULL,
  `deposit` int(30) NOT NULL,
  `town` varchar(30) NOT NULL,
  `pincode` int(10) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `verified` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verified_houses`
--

INSERT INTO `verified_houses` (`id`, `user_id`, `fullname`, `email`, `mobile`, `altmobile`, `rooms`, `plot`, `facilities`, `address`, `status`, `image`, `rent`, `deposit`, `town`, `pincode`, `district`, `state`, `verified`) VALUES
(1, 2, 'Rohit Mishra', 'rakesh651@gmail.com', 2147483647, 2147483647, '3bhk', '3bhk', '24 hours water and electricity', 'G.T ROAD Asansol', 'Vacant', '../houseimg/house2.jpg', 10000, 30000, 'Asansol', 713325, 'Burdwan', 'Vacant', 1),
(4, 2, 'Monoj Saha', 'manoj@gmail.com', 2147483647, 2147483647, '3bhk', '204', '24 hours water, electricity and many more', 'City Center, Durgapur', 'Vacant', '../houseimg/house5.jpeg', 15000, 35000, 'Durgapur', 713326, 'Paschim Bardhaman', 'West Bengal', 1),
(5, 2, 'Abhijit Dutta', 'abhijit@gmail.com', 2147483647, 2147483647, '3bhk', '301', 'Water and Elcetricity', 'Andal More', 'Vacant', '../houseimg/house3.jpg', 12000, 25000, 'Andal', 713321, 'Paschin Burdhwan', 'West Bengal', 1),
(6, 3, 'Saikat Mudi', 'saikat@gamil.com', 2147483647, 2147483647, '2bkh', '435', 'Water and Electricity', 'Kajora', 'Vacant', '../houseimg/house4.jpg', 10000, 20000, 'Kajora', 713321, 'Burdhwan', 'West Bengal', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register_houses`
--
ALTER TABLE `register_houses`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `verified_houses`
--
ALTER TABLE `verified_houses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register_houses`
--
ALTER TABLE `register_houses`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verified_houses`
--
ALTER TABLE `verified_houses`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
