-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 02:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  `about_img` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `uid`, `about_title`, `about`, `about_img`, `created_at`, `updated_at`) VALUES
(1, 'ABT5678FGHTYUU', 'about us title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has', '/uploads/about_img/628bf705ce7f364305418d6786b7792c.jpg', '2024-02-06 15:53:38', '2024-02-06 15:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `doner_about` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `uid`, `name`, `doner_about`, `img`, `created_at`, `updated_at`) VALUES
(0, 'DONOR96F3C14F20240212', 'Rohan ', 'fsgfhjfhdjtyjkh', '/uploads/donor_img/8380b93c7e90d626ac39f24291b9ad51.jpg', '2024-02-12 11:55:00', '2024-02-12 11:55:00'),
(4, 'WDOD893B77220240207', 'Ram', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/0efcfe3b6f11d5fa8a9ebe6fc4b18356.png', '2024-02-07 11:01:39', '2024-02-07 11:01:39'),
(5, 'WDO593E794D20240207', 'Rahim', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/eaa475aada4da370f2d08b7c9239a069.png', '2024-02-07 11:02:04', '2024-02-07 11:02:04'),
(6, 'WDO07DBE79820240207', 'Sham', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/d65e4740386191ba891c7b04b3ca0c1c.png', '2024-02-07 11:02:44', '2024-02-07 11:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_img`
--

CREATE TABLE `gallery_img` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `images` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_img`
--

INSERT INTO `gallery_img` (`id`, `uid`, `images`, `created_at`, `updated_at`) VALUES
(1, 'GAL67890RTY78TY', '/uploads/galary_img/920335dd36bfd1e1c38abc40bff8d6bc.jpg,/uploads/galary_img/ea35d51fc6cfbd2513166b2600ca3687.jpg,/uploads/galary_img/552e9cbfbb4edea2935f40c9389d2b25.jpg,/uploads/galary_img/5ec204b32cbfaa150785f15a5b88630a.jpg,/uploads/galary_img/05ee1ca2a7aa7db0ffbbed9b585818b8.jpg,/uploads/galary_img/0ef380f36b957a17b309521504c449e9.jpg,/uploads/galary_img/f5c10545b5a311ea558c1586aa143504.jpg,/uploads/galary_img/b1f40d446f183c0bbed8d8980acce91b.jpg,/uploads/galary_img/a6c9b1c87334fe1e39d9092827c0d183.jpg,/uploads/galary_img/c933338de96685993ab90489ffb28541.jpg', '2024-02-12 11:36:00', '2024-02-12 16:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `mission_vision`
--

CREATE TABLE `mission_vision` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mission_vision`
--

INSERT INTO `mission_vision` (`id`, `uid`, `title`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 'MV5678VGKVKFVK56', 'SHAPATH\'S MISSION', 'To drive sustainable change for underprivileged children, youth, and women across India. Employing a life-cycle development approach, we encourage active participation from civil society through civic-driven change. Committed to exemplary governance, we strive to emerge as a leading, innovative, and scalable development organization within the Indian context. Our focus remains on empowering the underprivileged through tailored education, healthcare, and livelihood programs, ensuring optimal Social Return on Investment (SROI). Bridging corporate competitiveness with social initiatives, we aim to sensitize privileged individuals within India to champion Civic Driven Change.', 'mission', '2024-02-06 15:54:58', '2024-02-06 15:54:58'),
(2, 'MV5656758CGGHTF', 'SHAPATH\'S VISION', 'Envisioning a transformed India where the lives of underprivileged individuals undergo lasting positive change. As a pioneering force in civic-driven change, we aspire to be a recognized leader, setting standards for governance, innovation, and scalability. Our vision is to provide relevant education, healthcare, and livelihood opportunities tailored to the Indian context. Employing cutting-edge methodologies, we aim for ideal Social Return on Investment (SROI), fostering collaboration between corporate and social sectors. We inspire privileged individuals within India to actively contribute to and champion Civic Driven Change, fostering a brighter and more equitable future for all.', 'vision', '2024-02-06 15:55:55', '2024-02-06 15:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_cover_details` longtext NOT NULL,
  `project_page_title` varchar(255) NOT NULL,
  `project_page_video` varchar(255) NOT NULL,
  `project_page_description` longtext NOT NULL,
  `project_img` varchar(255) NOT NULL,
  `project_logo` varchar(255) NOT NULL,
  `galary_img` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `uid`, `project_title`, `project_cover_details`, `project_page_title`, `project_page_video`, `project_page_description`, `project_img`, `project_logo`, `galary_img`, `created_at`, `updated_at`) VALUES
(4, 'PROD9B4CE5520240212', 'Title', 'qwerer', '453', 'erwwer', 'fgdzgfg', '/uploads/project_img/946c50e336c6e135fda3d8fec3593b84.jpg', '/uploads/project_logo/b11500be141a412b2b373fb23d308aa6.jpg', '/uploads/project_galary_img/e9ee3a36cf2d4e333ae61d8fe9b2cebd.jpg,/uploads/project_galary_img/060a099280ad07393bda9414d387315e.jpg,/uploads/project_galary_img/6fb88bd414ba946bcf5a1cc4a5b56b83.jpg,/uploads/project_galary_img/3471a181b59ff8077037563fe08dccb2.jpg,/uploads/project_galary_img/ddf32e8d53a5c03578c21b9b8938d477.jpg', '2024-02-12 12:08:06', '2024-02-12 12:08:06'),
(5, 'PRO3C8AAF5C20240212', 'dfs', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'rtaesr', 'rgedrg', 'rget5tgser', '/uploads/project_img/fb58a7a8f6cb50eacb9193c3159546c7.jpg', '/uploads/project_logo/2a546b2dd5ba8851ae337df56b5009c0.jpg', '/uploads/project_galary_img/9be9b324f8a7f9af2eacac9ee287a867.jpg,/uploads/project_galary_img/408698ba6b1c1d44a6c6fea86da9e9e1.jpg,/uploads/project_galary_img/526c7cb6eadafd8aeed78b53cd696629.jpg,/uploads/project_galary_img/a93fbd1e32cbb2a75d41a50443c404aa.jpg,/uploads/project_galary_img/a808cd8c8c7b15d2287fe200aa285c09.jpg,/uploads/project_galary_img/60e2e190d51d5c2830c01eaac830a4e0.png,/uploads/project_galary_img/05e325001f7f55d0f9fed3fcb03859cd.jpg,/uploads/project_galary_img/b709b325025e53188736f3185183976e.jpg,/uploads/project_galary_img/28b57b5fad38cea680a330d3d0928460.jpg,/uploads/project_galary_img/efcf0b143dd798c39f2afd05b0e84832.jpg,/uploads/project_galary_img/1d10bd95e0c07e86abbc1d0767dd79e8.png,/uploads/project_galary_img/535b77b28447e371db952eebd64d1e85.png', '2024-02-12 17:06:53', '2024-02-12 17:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `quote_by` varchar(255) NOT NULL,
  `quote_img` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `uid`, `quote`, `quote_by`, `quote_img`, `position`, `type`, `created_at`, `updated_at`) VALUES
(1, 'QOT564678GHFGJVTR', 'The best way to find yourself is to lose yourself in the service of others.', 'Mahatma Gandhi', '', 'top', 'home', '2024-02-05 11:22:15', '2024-02-05 11:22:15'),
(2, 'QOT5645678GFHHJU', 'Where the mind is without fear and the head is held high into the heaven of freedom. My father, let my country awake ', 'Rabindranath Thakur', '/uploads/quotes_img/ec6c329334b560733044e9c795278b4d.png', 'bottom', 'home', '2024-02-06 10:54:09', '2024-02-06 10:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `uid`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(4, 'WDOD893B77220240207', 'Education', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/0efcfe3b6f11d5fa8a9ebe6fc4b18356.png', '2024-02-07 11:01:39', '2024-02-07 11:01:39'),
(5, 'WDO593E794D20240207', 'Women Empowerment', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/eaa475aada4da370f2d08b7c9239a069.png', '2024-02-07 11:02:04', '2024-02-07 11:02:04'),
(6, 'WDO07DBE79820240207', 'Livelihood', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/d65e4740386191ba891c7b04b3ca0c1c.png', '2024-02-07 11:02:44', '2024-02-07 11:02:44'),
(7, 'WDO56AB3AD620240207', 'Child Education', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/b95ac18230f8a0043fdac9ab9fa54ca0.png', '2024-02-07 11:03:33', '2024-02-07 11:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `user_name`, `password`, `type`, `created_at`, `updated_at`) VALUES
(1, 'USR49TYOJ127856', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2024-02-03 11:21:43', '2024-02-03 11:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uid`, `path`, `type`, `page`, `created_at`, `updated_at`) VALUES
(1, 'VDO34567GKFJJKGGHJ', 'https://www.youtube.com/embed/ox3VFMNBXjA?autoplay=1&unmute=1&loop=1&playlist=ox3VFMNBXjA', 'url', 'home', '2024-02-05 11:25:55', '2024-02-05 11:25:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_img`
--
ALTER TABLE `gallery_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mission_vision`
--
ALTER TABLE `mission_vision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_img`
--
ALTER TABLE `gallery_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mission_vision`
--
ALTER TABLE `mission_vision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
