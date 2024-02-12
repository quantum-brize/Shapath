-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 02:19 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `uid`, `about_title`, `about`, `about_img`, `created_at`, `updated_at`) VALUES
(1, 'ABT5678FGHTYUU', 'about us title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has', '/uploads/about_img/ad9c66d89ac8a092a0945fc5c59d643c.jpg', '2024-02-06 15:53:38', '2024-02-06 15:53:38');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `uid`, `name`, `doner_about`, `img`, `created_at`, `updated_at`) VALUES
(8, 'DONOR448D016320240210', 'SUBHANKAR', 'subhankar sharma', '/uploads/donor_img/4adabc7de7797fab059d41ca36831e89.jpg', '2024-02-10 16:56:12', '2024-02-10 16:56:12'),
(9, 'DONORD78081EC20240210', 'Rohan', 'sk rohan ali', '/uploads/donor_img/fd4d64d5d27b11d3251a39885d6d7f4c.jpg', '2024-02-10 17:04:36', '2024-02-10 17:04:36'),
(11, 'DONOR3A93602A20240210', 'Admin', 'admin panel', '/uploads/donor_img/d6be9baf78d47c21a5d0ac23fa312d71.jpg', '2024-02-10 18:45:38', '2024-02-10 18:45:38');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mission_vision`
--

INSERT INTO `mission_vision` (`id`, `uid`, `title`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 'MV5678VGKVKFVK56', 'SHAPATH\'S MISSION', 'To drive sustainable change for underprivileged children, youth, and women across India. Employing a life-cycle development approach, we encourage active participation from civil society through civic-driven change. Committed to exemplary governance, we strive to emerge as a leading, innovative, and scalable development organization within the Indian context. Our focus remains on empowering the underprivileged through tailored education, healthcare, and livelihood programs, ensuring optimal Social Return on Investment (SROI). Bridging corporate competitiveness with social initiatives, we aim to sensitize privileged individuals within India to champion Civic Driven Change.', 'mission', '2024-02-06 15:54:58', '2024-02-06 15:54:58'),
(2, 'MV5656758CGGHTF', 'SHAPATH\'S VISION', 'Envisioning a transformed India where the lives of underprivileged individuals undergo lasting positive change. As a pioneering force in civic-driven change, we aspire to be a recognized leader, setting standards for governance, innovation, and scalability. Our vision is to provide relevant education, healthcare, and livelihood opportunities tailored to the Indian context. Employing cutting-edge methodologies, we aim for ideal Social Return on Investment (SROI), fostering collaboration between corporate and social sectors. We inspire privileged individuals within India to actively contribute to and champion Civic Driven Change, fostering a brighter and more equitable future for all.', 'vision', '2024-02-06 15:55:55', '2024-02-06 15:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about_member` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `uid`, `name`, `about_member`, `img`, `type`, `created_at`, `updated_at`) VALUES
(5, 'WDO593E794D20240207', 'Rahim', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/eaa475aada4da370f2d08b7c9239a069.png', 'board_of_trustees', '2024-02-07 11:02:04', '2024-02-07 11:02:04'),
(6, 'WDO07DBE79820240207', 'Sham', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/d65e4740386191ba891c7b04b3ca0c1c.png', 'trustees', '2024-02-07 11:02:44', '2024-02-07 11:02:44'),
(7, 'OUR_TEAMA384E88620240212', 'Subhankar Sharma', 'i am subhankar sharma', '/uploads/our_team_img/1fec36b1ad227f8cda59009c78f7fa00.jpg', 'board_of_trustees', '2024-02-12 17:06:01', '2024-02-12 17:06:01'),
(8, 'OUR_TEAMA65F1CDA20240212', 'Rohan ali', 'i am rohan ali', '/uploads/our_team_img/17347b020da703e97c5acffd34134519.jpg', 'trustees', '2024-02-12 18:24:54', '2024-02-12 18:24:54');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `uid`, `project_title`, `project_cover_details`, `project_page_title`, `project_page_video`, `project_page_description`, `project_img`, `project_logo`, `galary_img`, `created_at`, `updated_at`) VALUES
(5, 'PRO9BC73B2E20240209', 'Project 2', 'Project 2 details', 'new project 2', 'https://youtu.be/UkFCE25-XTs?si=j5dFOwymvDe6DzXe', 'project 2 description', '/uploads/project_img/56f10ffa59a5960bd7030b25de23900f.jpg', '/uploads/project_logo/29feae2e4ee4db047bf4c2037ce836ab.jpg', '/uploads/project_galary_img/732132cfe47fab6a6cb1150ef479b732.jpg,/uploads/project_galary_img/129270be5d1bf2ac20a8944657fb1695.jpg', '2024-02-09 14:46:54', '2024-02-09 14:46:54'),
(6, 'PROAE486ADA20240209', 'Project 3', 'Project 3 details', 'project 3 page title', 'https://www.youtube.com/embed/ox3VFMNBXjA?autoplay=1&unmute=1&loop=1&playlist=ox3VFMNBXjA', 'project 3 description', '/uploads/project_img/4a98f9e9e7f2774dc011f67398220adf.jpg', '/uploads/project_logo/2c0c210d5a5f837ae688beb3dc8ac8a2.jpg', '/uploads/project_galary_img/819d0fda46ce7f47aa3bb8c622612527.jpg,/uploads/project_galary_img/311c459f8434480272ffcff51240ed3e.jpg', '2024-02-09 15:55:34', '2024-02-09 15:55:34'),
(7, 'PROFE81152E20240209', 'Project 4', 'project 4 details', 'Project 4 page details', 'htttps://google.com', 'project 4 description', '/uploads/project_img/52dc16bab7f2620273b72d6d948ac3a2.jpg', '/uploads/project_logo/b89319057afef37fe5e7152bf9084332.jpg', '/uploads/project_galary_img/f9c2fb6894fe96e5daef7f819dae6727.jpg,/uploads/project_galary_img/f25bea79c9cafcff907db70b8e63f004.jpg', '2024-02-09 15:57:46', '2024-02-09 15:57:46'),
(8, 'PRO142A0CCB20240210', 'Project 5', 'project 5 details', 'Project 5 page', 'https://youtu.be/UkFCE25-XTs?si=j5dFOwymvDe6DzXe', 'project 5 description', '/uploads/project_img/8066d171d08c7cc3dc7a80013994a9e5.jpg', '/uploads/project_logo/128400d94fbd1ae6b30df9ebe3521ac5.jpg', '/uploads/project_galary_img/19561c97f2b13636e76ed07a7f9b2eb7.jpg,/uploads/project_galary_img/649d80a395ade22b76c164b9ec54fec4.jpg', '2024-02-10 11:49:35', '2024-02-10 11:49:35');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `uid`, `quote`, `quote_by`, `quote_img`, `position`, `type`, `created_at`, `updated_at`) VALUES
(1, 'QOT564678GHFGJVTR', 'The best way to find yourself is to lose yourself in the service of others.', 'Mahatma Gandhi', '', 'top', 'home', '2024-02-05 11:22:15', '2024-02-05 11:22:15'),
(2, 'QOT5645678GFHHJU', 'Where the mind is without fear and the head is held high into the heaven of freedom. My father, let my country awake ', 'Rabindranath Thakur', '/uploads/quotes_img/f90979754b1b7eb7711c13e646ef41d8.jpg', 'bottom', 'home', '2024-02-06 10:54:09', '2024-02-06 10:54:09');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `uid`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(9, 'WDO6D0BB5E220240210', 'Education', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/db47f18f602c3c2f9d23e6e5c6f041f0.jpg', '2024-02-10 13:07:00', '2024-02-10 13:07:00'),
(10, 'WDO1605215220240210', 'Women Empowerment', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/684b802dfb086eae702dbc452d87481a.jpg', '2024-02-10 13:07:58', '2024-02-10 13:07:58'),
(11, 'WDOC2E0437A20240210', 'Livelihood', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/aa4fa241dc49c93dc86abff59b4a3757.jpg', '2024-02-10 13:08:45', '2024-02-10 13:08:45'),
(12, 'WDODB59472320240210', 'Child Education', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/655021de81bcc11392785ce119b65592.jpg', '2024-02-10 13:09:23', '2024-02-10 13:09:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uid`, `path`, `type`, `page`, `created_at`, `updated_at`) VALUES
(1, 'VDO34567GKFJJKGGHJ', 'https://www.youtube.com/embed/ox3VFMNBXjA?autoplay=1&unmute=1&loop=1&playlist=ox3VFMNBXjA', 'url', 'home', '2024-02-05 11:25:55', '2024-02-05 11:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `volunteer_about` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `uid`, `name`, `volunteer_about`, `img`, `created_at`, `updated_at`) VALUES
(10, 'VOLUNTEERB1EC2D6320240212', 'Subhankar Sharma', 'i am subhankar sharma.', '/uploads/volunteers_img/91ffcf082d4cdd7bc948fb3bc192982c.jpg', '2024-02-12 13:20:34', '2024-02-12 13:20:34');

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
-- Indexes for table `mission_vision`
--
ALTER TABLE `mission_vision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
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
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
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
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mission_vision`
--
ALTER TABLE `mission_vision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
