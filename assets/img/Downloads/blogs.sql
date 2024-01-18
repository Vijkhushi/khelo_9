-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 11:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(252) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `flag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`, `flag`) VALUES
(1, 'admin', 'khushi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-11-28 07:17:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_details`
--

CREATE TABLE `blogs_details` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(255) NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs_details`
--

INSERT INTO `blogs_details` (`id`, `author_name`, `role`, `title`, `description`, `date`, `image`, `flag`, `created_at`, `updated_at`) VALUES
(32, ' kujkkuj hbjkj', ' eeee', ' ddd', ' ed', '2023-11-29 10:40:57', ' assets/slider-gloves.jpg', 0, '2023-11-29 06:19:38', '2023-11-29 10:41:50'),
(34, ' jkbgkj ', ' jkbkjhik', ' jkbjk', ' jkbjjj', '2023-11-29 10:41:12', ' assets/slidee4-png.png', 2, '2023-11-29 06:24:13', '2023-11-29 10:41:12'),
(35, ' rtty ', ' yyyyyy', ' tttttttttttt', ' 555555555555', '2023-11-29 10:41:05', 'assets/slider-gloves.jpg', 0, '2023-11-29 06:28:41', '2023-11-29 10:41:05'),
(36, ' jbnkjnklnklnkl ', ' hjvjjkjkhb', ' sss', ' ssss', '2023-11-29 07:18:22', 'assets/slider-gloves.jpg', 0, '2023-11-29 06:29:48', '2023-11-29 07:26:25'),
(37, ' fbgg ', ' gggg', ' ggggg', ' gggg', '0000-00-00 00:00:00', ' assets/slider-gloves.jpg', 0, '2023-11-29 10:41:29', '2023-11-29 10:41:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_details`
--
ALTER TABLE `blogs_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs_details`
--
ALTER TABLE `blogs_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
