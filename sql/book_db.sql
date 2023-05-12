-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2023 at 08:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_form`
--

CREATE TABLE `book_form` (
  `book_id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `location` varchar(10) NOT NULL,
  `guests` int(100) NOT NULL,
  `arrivals` date NOT NULL,
  `leaving` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_form`
--

INSERT INTO `book_form` (`book_id`, `name`, `email`, `phone`, `address`, `location`, `guests`, `arrivals`, `leaving`) VALUES
(1, 'Raju', 'harsh123@gmail.com', '12345678', 'amna ad, la, america', 'america', 2, '2023-03-25', '2023-03-28'),
(2, 'Harsh', 'raju123@gmail.com', '838492447', 'amna ad, la, america', 'america', 4, '2023-05-04', '2023-05-07'),
(3, 'Raju', 'raju123@gmail.com', '25253535', 'ggdf', 'bdbbb', 6, '2023-05-10', '2023-05-20'),
(4, 'Raju', 'raju123@gmail.com', '957823505', 'vadodara', 'goa', 4, '2023-05-09', '2023-05-15'),
(5, 'Harsh', 'harsh123@gmail.com', '423525552', 'vadodara', 'america', 6, '2023-05-11', '2023-05-24'),
(6, 'Raju', 'raju123@gmail.com', '43566557444', 'akfka,mumbai', 'america', 4, '2023-05-11', '2023-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `Unexplored_form`
--

CREATE TABLE `Unexplored_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `location` text NOT NULL,
  `guests` int(100) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Unexplored_form`
--

INSERT INTO `Unexplored_form` (`id`, `name`, `email`, `address`, `location`, `guests`, `image`) VALUES
(1, 'harsh', '123@g.c', 'amna ad, la, america', 'america', 4, ''),
(2, 'Raju', 'raju123@gmail.com', 'amna ad, la, america', 'usa', 3, ''),
(3, 'Raju', 'harsh123@gmail.com', 'akfka,mumbai', 'goa', 4, 'th-772722366.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_form`
--
ALTER TABLE `book_form`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `Unexplored_form`
--
ALTER TABLE `Unexplored_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_form`
--
ALTER TABLE `book_form`
  MODIFY `book_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Unexplored_form`
--
ALTER TABLE `Unexplored_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
