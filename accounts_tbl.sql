-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 08:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_tbl`
--

CREATE TABLE `accounts_tbl` (
  `id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_tbl`
--

INSERT INTO `accounts_tbl` (`id`, `username`, `password`, `token`, `created_at`, `updated_at`) VALUES
('', 'curt', '$2y$10$viRxppj7P8n00yV2qOMBpeeh/i/TEO8RejKYqCpyeaE3zbdhZqaw.', 'OWJkOGJlZjYzN2Y4NmY0ODgwZmI4NWQwZTAwYzJjNWU4YWJmMjcwZmU4MTNlNmJlYWZhYzc4N2Y4MWRiZDJhYg==', '2024-12-15 06:37:10', '2024-12-15 06:37:10'),
('', 'gabon', '$2y$10$KBwAbOia3qc5RIJw3AHAyuWPzLVQiuBUc9gZw0Ufbg86jHRsF0Nny', 'OGExNjI2MWI0OTFhYzIwM2Q4MjA2MWVjYjBmZTFhYTEyNmJlODM4YzIwN2JjZDk2NGUzY2M1MmI4NGNiODA4Zg==', '2024-12-14 21:07:10', '2024-12-14 21:07:10'),
('', 'gabriel', '$2y$10$wtp/k6qRJYR3nI8xlixvrOzU.kk6k2gzqj2bcY2gxU6RcIyXuM98S', '', '2024-12-14 20:57:05', '2024-12-14 20:57:05'),
('123', 'hatdog', '$2y$10$ZjJlZjhjY2QyZmM2Y2Q1M.x2FOSb876pwD7urqOczOXrlq18G/Wya', '', '2024-12-10 14:43:32', '2024-12-10 14:43:32'),
('1', 'josh', '$2y$10$NjQzZmUwYzMzNWM0OTMwZOd6Z53OsUp8B2Sfy1yRoUbBvgZ1y6Q9O', 'Yzg5YzdiMDE3Njg4MjdmNzQ1Mzg3YjgwMWU5ZTUyZmI5MTk2MmRmNTdhZDk5ZjQ4NzNlZTczYzMwNTkzOTVhNA==', '2024-12-14 20:13:14', '2024-12-14 20:13:14'),
('', 'nameuser', '$2y$10$dykN8RZ58Jkc5YteTWg0guv08aPHLQ1AHBc7zH79oOkuV03BqdO..', 'ODE4NjdlMDViMzA5MWMyNWM1ZDlmNWYxMWEyYmI0MTI3MDZhYjU5NjM4MzIwZWNhMWI2N2ZlMDY4YjNmOGQzNQ==', '2024-12-15 06:56:58', '2024-12-15 06:56:58'),
('', 'tanginaaaaa', '$2y$10$bS3XTM2JnzrJS3F.p9WQlOM2swOFeImKidD.Zp.M/GP2o89/915xi', '', '2024-12-14 20:58:57', '2024-12-14 20:58:57'),
('123', 'test_user', '$2y$10$MzlkNDMyZjFlMDBjMTkyYOHIVHCxHDNhI0D/HUrRt06kMO0Pc.RvS', '', '2024-12-10 14:28:06', '2024-12-10 14:28:06'),
('123', 'tite', '$2y$10$MWVhYzZkNmU1MTAwOGY4O.ETwhWgBvYUAmLkvkNxnl/pN.wWcAbTy', '', '2024-12-10 14:40:54', '2024-12-10 14:40:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_tbl`
--
ALTER TABLE `accounts_tbl`
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
