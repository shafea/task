-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 12:09 AM
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
-- Database: `myoffers_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Fashion'),
(2, 'Cars & Trucks'),
(3, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  `orig_price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `promoter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `description`, `orig_price`, `discount`, `start_date`, `end_date`, `cat_id`, `amount`, `promoter_id`) VALUES
(7, 'The new Toyota Corolla', 'the all new totyota corolla is here now', 22000, 7, '2017-11-15', '2017-11-30', 2, 0, 2),
(8, 'Golden Rolex watches', 'you can find the best quality of rolex golden watches here', 4000, 25, '2017-11-01', '2025-06-17', 1, 0, 2),
(9, 'Iphone X best offers', 'you wil find the lowest price with us', 1000, 5, '2017-11-02', '2017-11-23', 3, 0, 2),
(10, 'New Offer for all shoes', 'here we will show the best and latest models of hails and shoes for women', 4000, 20, '2017-11-01', '2017-11-30', 1, 0, 3),
(11, 'test', 'test-desc', 60, 25, '2018-01-01', '2018-01-20', 2, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `registerations`
--

CREATE TABLE `registerations` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reg_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id_task` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `star_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id_task`, `name`, `star_date`, `end_date`) VALUES
(3, 'shafea', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(90) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `bus_name` varchar(45) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `bus_name`, `location`, `email`, `phone`, `user_type`) VALUES
(1, 'username', 'password', 'busname', 'location', 'email', 'phone', 1),
(2, 'ahmad', '12345', 'ahmad co', 'ksa', 'a7mad.tr@gmail.com', '0931283274', 1),
(3, 'Ameera', '12345', 'Ameera company', 'Saudi Arabia-Dammam', 'Ameera@gmail.com', '0096614565432', 1),
(4, 'ambaqasah', 'ambaqasah1234', '', '', 'ambaqasah@gmail.com', '', 0),
(5, 'badr', '123456789', 'kk', 'kk', 'kk', 'kk', 2),
(6, 'hasan', 'jj', 'jj', 'jj', 'jj', 'jj', 0),
(7, 'hamd', '123', '2', 'ss', 's@gmail.com', '22', 1),
(8, 'hamood', '123', '1', 'ww', 'd@gmail.com', '44', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_offers_users1_idx` (`promoter_id`),
  ADD KEY `fk_offers_sub_categories1_idx` (`cat_id`);

--
-- Indexes for table `registerations`
--
ALTER TABLE `registerations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_registerations_users1_idx` (`user_id`),
  ADD KEY `fk_registerations_offers1_idx` (`offer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registerations`
--
ALTER TABLE `registerations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `fk_offers_users1` FOREIGN KEY (`promoter_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `registerations`
--
ALTER TABLE `registerations`
  ADD CONSTRAINT `fk_registerations_offers1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_registerations_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
