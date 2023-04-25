-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 03:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(5) NOT NULL,
  `email` varchar(200) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `adminname`, `password`, `created_at`) VALUES
(1, 'admin.first@gmail.com', 'admin.first@gmail.com', '$2y$10$4sJ.8GuXiAj.81oiGXK2MuXaAIRNhzPgGlOcBJNnOj8iTiA2SxHEG', '2023-03-23 10:11:06'),
(2, 'second.admin@gmail.com', 'second.admin@gmail.com', '$2y$10$5XGuwvU6zufWHPqITS8CCeWyc3A70dbjrWAlgeMJF3hhCoTxQKaai', '2023-03-23 11:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'nbmbnm', '2023-03-26'),
(2, 'nmbnm', '2023-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(5) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `user_id` int(5) NOT NULL,
  `user_image` varchar(200) NOT NULL,
  `topic_id` int(5) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `reply`, `user_id`, `user_image`, `topic_id`, `user_name`, `created_at`) VALUES
(1, 'Completely initiate out-of-the-box leadership with ', 1, 'gravatar.png', 10, 'Mohamed@gmail.com', '2023-03-21 09:34:20'),
(4, 'first reply', 1, 'gravatar.png', 3, 'Mohamed@gmail.com', '2023-03-21 15:36:32'),
(5, 'this is a reply by me at one of my posts', 1, 'gravatar.png', 10, 'Mohamed@gmail.com', '2023-03-21 15:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(5) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `category`, `body`, `user_name`, `user_image`, `created_at`) VALUES
(3, 'topic one', 'Development', 'Professionally disintermediate 2.0 data through tactical innovation. Authoritatively impact parallel bandwidth rather than high-quality infrastructures. Uniquely build web-enabled outsourcing for extensive best practices. Energistically optimize pandemic niches vis-a-vis just in time value. Competently formulate corporate quality vectors for granular value.\r\n\r\nUniquely whiteboard covalent resources through global bandwidth.', 'johndoe@gmail.com', 'gravatar.png', '2023-03-21 14:11:23'),
(9, 'topic two ', 'SEO', 'Rapidiously promote strategic synergy without B2C expertise. Holisticly communicate emerging e-services through plug-and-play catalysts for change. Proactively customize prospective communities vis-a-vis economically sound processes. Energistically parallel task fully researched channels via functionalized total linkage. Conveniently enable distinctive resources rather than exceptional systems.\r\n\r\nIntrinsicly reinvent long-term high-impact niches.', 'Mohamed@gmail.com', 'gravatar.png', '2023-03-21 15:20:58'),
(11, 'third topic', 'Marketing ', 'Dynamically reconceptualize emerging paradigms through alternative paradigms. Professionally foster superior interfaces via team driven processes. Uniquely recaptiualize orthogonal benefits and e-business channels. Completely leverage other\'s fully tested ROI without multimedia based services. Continually leverage existing premium users via reliable products.\r\n\r\nProactively incentivize enterprise-wide e-markets for integrated \"outside.', 'johndoe@gmail.com', 'gravatar.png', '2023-03-22 10:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `about`, `avatar`, `created_at`) VALUES
(1, 'Mohamed@gmail.com', 'Mohamed@gmail.com', 'Mohamed@gmail.com', '$2y$10$4sJ.8GuXiAj.81oiGXK2MuXaAIRNhzPgGlOcBJNnOj8iTiA2SxHEG', 'Rapidiously disintermediate superior bandwidth without real-time web-readiness. Authoritatively synthesize premier applications rather than leadin', 'gravatar.png', '2023-03-20 12:35:45'),
(2, 'johndoe@gmail.com', 'johndoe@gmail.com', 'johndoe@gmail.com', '$2y$10$ilWzPtpmMtdmdImK/RmElO8b64kOJ6tVyUgBlmTvDNDmasDzjK25i', 'Rapidiously brand end-to-end niche markets before distributed processes. Enthusiastically harness next-generation potentialities vis-a-vis flexible scenarios. Competently leverage existing compelling portals and performance based interfaces. Assertively evisculate enabled results through distributed alignments. Holisticly fashion bleeding-edge innovation before long-term high-impact growth strategies.\r\n\r\nIntrinsicly grow go forward opportunities without value-added.', 'gravatar.png', '2023-03-21 14:03:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
