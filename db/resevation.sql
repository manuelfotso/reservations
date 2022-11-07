-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 05:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resevation`
--

-- --------------------------------------------------------

--
-- Table structure for table `cottage/hall`
--

CREATE TABLE `cottage/hall` (
  `id` int(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `max_person` int(250) NOT NULL,
  `price` int(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cottage/hall`
--

INSERT INTO `cottage/hall` (`id`, `img`, `name`, `type`, `category`, `max_person`, `price`) VALUES
(12, 'uploads/3-1.jpg', 'cottage 4', 'Cottage', 'Cottage', 15, 400),
(11, 'uploads/7-1.jpg', 'cottage 3', 'Cottage', 'Cottage', 10, 300),
(10, 'uploads/crimson-resort-spa-mactan-workshop-and-training-event-space-cebu-philippines-medium.jpg', 'function hall', 'Hall', '1st Class', 200, 5000),
(9, 'uploads/3-1.jpg', 'cottage 2', 'Cottage', '2nd Class', 20, 3000),
(15, 'uploads/cml-beach-resort-water.jpg', 'cottage 5', 'Cottage', '2nd Class', 15, 500);

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `desc` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `img`, `name`, `desc`) VALUES
(12, 'uploads/crimson-resort-spa-mactan-workshop-and-training-event-space-cebu-philippines-medium.jpg', 'sample', 'this is sample description'),
(13, 'uploads/crimson-resort-spa-mactan-workshop-and-training-event-space-cebu-philippines-medium.jpg', 'sample', 'this is sample description'),
(10, 'uploads/crimson-resort-spa-mactan-workshop-and-training-event-space-cebu-philippines-medium.jpg', 'sample', 'sample'),
(11, 'uploads/crimson-resort-spa-mactan-workshop-and-training-event-space-cebu-philippines-medium.jpg', 'sample', 'this is sample description');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(250) NOT NULL,
  `cust_id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `cust_id`, `name`, `description`) VALUES
(9, 0, 'emely', 'Sarap balik-balikan, sulit ang aming binayad'),
(8, 0, 'Anonymous', 'Nice resort, Good customer service and nakaka relax talaga dito'),
(10, 0, 'jenellyn', 'Nice experience, sa uulitin. Maganda yung place');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(250) NOT NULL,
  `transaction_id` int(250) NOT NULL,
  `ammount_payment` int(250) NOT NULL,
  `payment_status` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `transaction_id`, `ammount_payment`, `payment_status`) VALUES
(1, 2036071676, 275, 'Paid'),
(2, 607500262, 275, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `des` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `img`, `name`, `des`) VALUES
(6, 'uploads/3-1.jpg', 'sample', 'sample'),
(7, 'uploads/7-1.jpg', 'sample', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(250) NOT NULL,
  `trans_no` varchar(250) NOT NULL,
  `date_reserve` date NOT NULL,
  `child` int(250) NOT NULL,
  `adult` int(250) NOT NULL,
  `check_in` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `check_out` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(250) NOT NULL,
  `cottage/hall_id` int(250) NOT NULL,
  `customer_id` int(250) NOT NULL,
  `date_created` date NOT NULL,
  `downpayment` int(250) NOT NULL,
  `balance` int(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `trans_no`, `date_reserve`, `child`, `adult`, `check_in`, `check_out`, `status`, `cottage/hall_id`, `customer_id`, `date_created`, `downpayment`, `balance`) VALUES
(1, '2036071676', '2022-05-19', 2, 2, '2022-05-17 23:25:50', '0000-00-00 00:00:00', 'Reserved', 12, 4, '2022-05-18', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `contact_no` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `uname` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `user_type_id` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `contact_no`, `address`, `uname`, `pass`, `user_type_id`) VALUES
(1, 'admin', 'admin', '0', 'poblacion', 'admin', 'admin', 1),
(2, 'Melody', 'Marks', '09054234567', 'poblacion, kabacan', 'melody', '1234', 3),
(4, 'john', 'loyd', '09762132056', 'matalam, poblacion', 'john', '1234', 3),
(5, 'shiela', 'sin', '09673927462', 'address', 'shiela', '1234', 2),
(8, 'Aine', 'Macalanas', '', '', 'aine', '1234', 4),
(12, 'Danna', 'Santos', '', '', 'dandan', '12345', 4),
(14, 'kianna', 'Lomoljo', '0909288101', 'Malamote Matalam Cotabato', 'kianna', '12345', 3),
(16, 'eman', 'hemeniz', '', '', 'eman', '1234', 3),
(17, 'Juan ', 'Delacruz', '09762132056', 'Matalam, poblacion', 'juan', '1234', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(250) NOT NULL,
  `user_type_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type_name`) VALUES
(1, 'admin'),
(2, 'superadmin'),
(3, 'customer'),
(4, 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cottage/hall`
--
ALTER TABLE `cottage/hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cottage/hall`
--
ALTER TABLE `cottage/hall`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
