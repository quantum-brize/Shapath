-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 02:13 PM
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
(1, 'ABT5678FGHTYUU', 'Empowering Families through Sustainable Impact in Nutrition, Education, and Skill Building', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core.\r\nWith a committed passion for children and a belief that education empowers, Shapath reaches out to the economically weaker section of society. Shapath is founded as a registered charitable trust in 2022. \r\nWe have evolved from the 1st day to deriving learnings about the needs of the development sector by working at the grassroots level and with the ones at the bottom of the pyramid. We are committed to nation building.', '/uploads/about_img/628bf705ce7f364305418d6786b7792c.jpg', '2024-02-06 15:53:38', '2024-02-06 15:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `uid`, `path`, `type`, `created_at`, `updated_at`) VALUES
(1, 'AUD1A0122F520240218', '/uploads/mp3/Tum_Hi_Ho_Aashiqui_2_Full_Song_With_Lyrics__Aditya_Roy_Kapur,_Shraddha_Kapoor(128k)1.mp3', 'audio', '2024-02-18 17:43:21', '2024-02-18 17:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `uid`, `title`, `description`, `description2`, `img`, `img2`, `created_at`, `updated_at`) VALUES
(2, 'BLG427EF1F220240213', 'New blog', 'new blog description', NULL, '/uploads/blog_img/b2cf049b7c1485279410f48dc568c274.jpg', NULL, '2024-02-13 13:46:22', '2024-02-13 13:46:22'),
(3, 'BLG13264C5620240213', 'Blog 2 edited', 'blog 2 description edited', NULL, '/uploads/blog_img/9525577bdcb5d5f4c6f6be183a507b10.jpg', NULL, '2024-02-13 14:50:13', '2024-02-13 14:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `causes`
--

CREATE TABLE `causes` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `goal` varchar(255) NOT NULL,
  `raised` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `causes`
--

INSERT INTO `causes` (`id`, `uid`, `title`, `details`, `img`, `goal`, `raised`, `created_at`, `updated_at`) VALUES
(4, 'CUS51A422B320240215', 'Hope Canva', 'Unlocking Potential Through Art: Join Hope Canva\'s Mission to Empower Underprivileged Children and Blind Women Artisans. Your Support Makes a Difference!', '/uploads/cause_img/5d3fafceec7b8e42b725b9b06370d175.png', '1245', '489', '2024-02-15 13:05:30', '2024-02-15 13:05:30'),
(7, 'CUS95BD877420240215', 'Saraswati Scholarship', 'The Saraswati Scholarship is a beacon of hope for blind women students facing financial challenges in their pursuit of higher education.', '/uploads/cause_img/316a3ef9dfb745113db150e479b03d3b.png', '10000', '8909', '2024-02-15 18:05:51', '2024-02-15 18:05:51'),
(9, 'CUSD50972C820240215', 'Bastra Bondhu', 'Bastra-Bondhu is a compassionate initiative focused on empowering the homeless by allowing them to choose their own clothes with dignity.', '/uploads/cause_img/33fae35e2bcf6eccf8e3bfdcb8ec425a.png', '109233', '12375', '2024-02-15 18:08:17', '2024-02-15 18:08:17'),
(10, 'CUS0D28CFAF20240215', 'Bastra Bondhu', 'Bastra-Bondhu is a compassionate initiative focused on empowering the homeless by allowing them to choose their own clothes with dignity.', '/uploads/cause_img/7aa843ebe048ea55ab63d7bfa324b14c.png', '213422', '145786', '2024-02-15 18:08:55', '2024-02-15 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `pin` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `project_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `uid`, `name`, `email`, `address`, `pin`, `phone`, `pan`, `amount`, `payment_status`, `project_id`, `created_at`, `updated_at`) VALUES
(13, 'DNT4A46CC7D20240216', 'Sk Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\nSurerpukur', '712136', '6290353314', '3422342', '8989', 'pending', 'general-donation', '2024-02-16 19:07:07', '2024-02-16 19:07:07'),
(14, 'DNT3D57A07120240216', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\nSurerpukur', '712136', '6290353314', '121', '1234', 'pending', 'general-donation', '2024-02-16 19:09:17', '2024-02-16 19:09:17'),
(15, 'DNT2242C54320240216', 'Sk Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\nSurerpukur', '712136', '6290353314', '12', '23', 'pending', 'general-donation', '2024-02-16 19:11:25', '2024-02-16 19:11:25'),
(16, 'DNTD1059A1F20240216', 'Sk Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\nSurerpukur', '712136', '6290353314', '121', '8989', 'pending', 'general-donation', '2024-02-16 19:12:30', '2024-02-16 19:12:30'),
(17, 'DNT7BEE94E020240216', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\nSurerpukur', '712136', '6290353314', '3422342', '435', 'pending', 'general-donation', '2024-02-16 19:13:25', '2024-02-16 19:13:25'),
(18, 'DNT56235D3D20240216', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\nSurerpukur', '712136', '6290353314', '121', '45', 'pending', 'general-donation', '2024-02-16 19:14:32', '2024-02-16 19:14:32'),
(19, 'DNT7BE4CB6620240216', 'Rohan ', 'skrohandfgsd@gmail.com', 'Shopiya beauty Parlour\nSurerpukur', '712136', '6290353314', '3422342', '120', 'pending', '', '2024-02-16 23:00:38', '2024-02-16 23:00:38');

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
(12, 'DONA88EF2B220240215', 'Rohan ', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for', '/uploads/donor_img/1e7b9bdf8366da2d964041bf9e0f7092.jpg', '2024-02-15 13:52:15', '2024-02-15 13:52:15'),
(13, 'DONFA34742C20240215', 'Abcd', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for', '/uploads/donor_img/a58da91fa80c80cbfc34bd24e9d65376.jpg', '2024-02-15 13:52:50', '2024-02-15 13:52:50'),
(14, 'DON019360FC20240215', 'Sk Rohan ', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for', '/uploads/donor_img/0eeac3ff14e61d0a94e71f49f049067c.jpg', '2024-02-15 13:53:01', '2024-02-15 13:53:01'),
(15, 'DON436B410920240215', 'Rohan', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for', '/uploads/donor_img/f2df82f915a944c0aed3dc779615ed9f.jpg', '2024-02-15 13:53:16', '2024-02-15 13:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `uid`, `title`, `details`, `img`, `date`, `place`, `created_at`, `updated_at`) VALUES
(3, 'EVNEBF1E57120240213', 'Saraswati Scholarship', 'Each month, recipients are granted a scholarship to support their academic journey. Presently benefiting five individuals, our aim for the upcoming financial year is to extend this support to ten more deserving beneficiaries, empowering them to achieve their educational aspirations.', '/uploads/event_img/9d3fdef7b72363e8a0d634bac21bfcc3.jpg', '2024-02-22', 'Kolkata India', '2024-02-13 19:04:56', '2024-02-13 19:04:56'),
(5, 'EVN5B17A44020240213', 'Hope Canvas', 'Join us in our Sunday drawing schools, where art becomes a tool for expression and hope. Step into our bamboo workshop, where blind women showcase their artistic skills, receiving daily wages for financial assistance.', '/uploads/event_img/7908fccd54df7e6a6a3e83bb823d67c8.png', '2024-02-29', 'Kolkata', '2024-02-13 19:12:58', '2024-02-13 19:12:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery_img`
--

INSERT INTO `gallery_img` (`id`, `uid`, `images`, `created_at`, `updated_at`) VALUES
(19, 'GAL04E2CEFF20240216', '/uploads/galary_img/8f9646dcb6e172c8a395555f1e00b736.jpg', '0000-00-00 00:00:00', '2024-02-16 15:37:13'),
(20, 'GAL6FAF46AC20240216', '/uploads/galary_img/cd4c954d71bc610e1f950c4949415a7f.jpg', '0000-00-00 00:00:00', '2024-02-16 15:37:27'),
(21, 'GAL0CB39FF320240216', '/uploads/galary_img/bc54e2cca9e7394d5c583f241518465f.jpg', '0000-00-00 00:00:00', '2024-02-16 15:37:36'),
(22, 'GAL3A4FF18120240216', '/uploads/galary_img/76b2900115feb06ba24b59d79aee1ba1.jpg', '0000-00-00 00:00:00', '2024-02-16 15:37:45'),
(23, 'GAL47C2E8E820240216', '/uploads/galary_img/62c3f19d596bd26e728c566a48179656.jpg', '0000-00-00 00:00:00', '2024-02-16 15:37:54'),
(24, 'GAL0DDC972120240216', '/uploads/galary_img/81beb11dd8992d52e4436495974082c1.jpg', '0000-00-00 00:00:00', '2024-02-16 15:38:13'),
(25, 'GAL698F72D920240216', '/uploads/galary_img/509c4ee2d66ba7a86b6b9a78cb305aab.jpg', '0000-00-00 00:00:00', '2024-02-16 15:38:28'),
(26, 'GALD85CFA3A20240216', '/uploads/galary_img/358fece07bae3fec7e0756542d723e1a.jpg', '0000-00-00 00:00:00', '2024-02-16 15:38:38'),
(27, 'GAL57B1865420240216', '/uploads/galary_img/77d5b5b864f7a4f23b1d4938e9583ab8.jpg', '0000-00-00 00:00:00', '2024-02-16 15:38:46');

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
-- Table structure for table `news_letter`
--

CREATE TABLE `news_letter` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_letter`
--

INSERT INTO `news_letter` (`id`, `uid`, `email`, `created_at`, `updated_at`) VALUES
(1, 'NL5678FGHTYUU', 'shapath@gmail.com', '2024-02-06 15:53:38', '2024-02-06 15:53:38');

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
(9, 'OUTA86EBADC20240215', 'Mr. Anurag Halder', 'I am honored to serve as the Secretary of Shapath, working alongside dedicated individuals committed to driving positive change in the lives of the underprivileged. As we navigate our journey towards exemplary governance, innovation, and scalability, I look forward to supporting our mission and fostering collaboration within our community. Together, let’s continue to make a meaningful impact through Civic Driven Change.', '/uploads/our_team_img/533df524224ccadb9bcf6928ac15e6ea.jpeg', 'board_of_trustees', '2024-02-15 17:33:06', '2024-02-15 17:33:06'),
(10, 'OUT727A8A6B20240215', 'Mr. Rahul Gupta', 'It is with great dedication and responsibility that I take on the role of Treasurer for Shapath. As we strive for impactful initiatives and sustainable change, I am committed to ensuring transparent financial management. Together, let us uphold the highest standards of fiscal responsibility, making each contribution count towards our shared vision of a brighter, more equitable future.', '/uploads/our_team_img/885323e86ca65d2b8b7f9073db2df888.jpeg', 'board_of_trustees', '2024-02-15 17:33:30', '2024-02-15 17:33:30'),
(11, 'OUT0746703020240215', 'Mr.Prosenjit Mondal', 'As a trustee, I am dedicated to fostering innovative solutions that empower underprivileged individuals through education and livelihood opportunities.', '/uploads/our_team_img/8abf701d5a41abd0b75124a58e2cd58f.png', 'trustees', '2024-02-15 17:37:14', '2024-02-15 17:37:14'),
(12, 'OUTAFD66E7220240215', 'Mr. Namoshi Roy', 'Committed to exemplary governance, my role as a trustee involves ensuring transparency and accountability in every aspect of Shapath\'s operations.', '/uploads/our_team_img/dfc6a141ac4a14d95d10a875b2219097.png', 'trustees', '2024-02-15 17:38:25', '2024-02-15 17:38:25'),
(13, 'OUTC58F630920240215', 'Mr. Amit Bose', 'With a focus on healthcare initiatives, I am proud to contribute to Shapath\'s mission as a trustee, striving to make a lasting impact on the well-being of the underprivileged.', '/uploads/our_team_img/b8b9087405543f9d04448ec5a0954df0.png', 'trustees', '2024-02-15 17:38:58', '2024-02-15 17:38:58'),
(14, 'OUT8D4F6E1E20240215', 'Mr. Sumit Mondal', 'As a trustee, my passion lies in bridging the corporate and social sectors, promoting collaboration that maximizes the social return on investment for Shapath\'s initiatives.', '/uploads/our_team_img/fb79f827383a5bd55928a9b49c8225a4.png', 'trustees', '2024-02-15 17:39:39', '2024-02-15 17:39:39'),
(15, 'OUT4674C47720240215', 'Mr.Sudeep Mondal', 'Guided by the vision of a transformed India, I, as a trustee, am committed to setting high standards for scalability and innovation within Shapath.', '/uploads/our_team_img/c49b1d9a7cc7558cbf32a2d619592eaf.png', 'trustees', '2024-02-15 17:40:06', '2024-02-15 17:40:06'),
(16, 'OUT115251A020240215', 'Mr. Archan Ghosh', 'My role as a trustee involves championing civic-driven change, inspiring privileged individuals to actively contribute to Shapath\'s noble cause.', '/uploads/our_team_img/786afee957fa45186b17b628d8cd2065.png', 'trustees', '2024-02-15 17:40:30', '2024-02-15 17:40:30'),
(17, 'OUT02B28E2620240215', 'Ms.Nisha Shyamal', 'In my role as a trustee, I am passionate about creating opportunities for underprivileged women, contributing to Shapath\'s mission of empowerment and equality.', '/uploads/our_team_img/36b3b42e46711951278f74c5c3f61e0a.png', 'trustees', '2024-02-15 17:41:19', '2024-02-15 17:41:19'),
(18, 'OUT07A6EB2E20240215', 'Mrs. Riya Chakrobarty', 'As a trustee, I am dedicated to fostering an inclusive environment, ensuring that Shapath\'s initiatives leave no one behind in our pursuit of positive change.', '/uploads/our_team_img/d7eaafa16326c21842f468784deb0e26.png', 'trustees', '2024-02-15 17:41:43', '2024-02-15 17:41:43'),
(19, 'OUT37F70C3520240215', 'Ms. Susmita Mondal', 'With a passion for community development, I am honored to be a trustee, steering Shapath towards creating a brighter and more equitable future.', '/uploads/our_team_img/cc0b20f96325664d9aa656150682cec5.png', 'trustees', '2024-02-15 17:42:11', '2024-02-15 17:42:11'),
(20, 'OUT0F914BFB20240215', 'Mr. Sumon Mondal', 'Striving for excellence, I serve as a trustee to elevate Shapath\'s reputation as a leading force in civic-driven change with a focus on exemplary governance.', '/uploads/our_team_img/a9bc6069cc6e7d5d885ede1b3f9e17aa.png', 'trustees', '2024-02-15 17:42:41', '2024-02-15 17:42:41'),
(21, 'OUT93EA53D620240215', 'Mr. Bubai Ghosh', 'My role as a trustee involves leveraging technology to enhance the efficiency and impact of Shapath\'s programs for the underprivileged.', '/uploads/our_team_img/605587cd75b3d0c9d1363106a26a5ded.png', 'trustees', '2024-02-15 17:42:57', '2024-02-15 17:42:57'),
(22, 'OUT8E7969FC20240215', 'Mr. Suvanjan Ghosh', 'Contributing to Shapath as a trustee, my commitment is to uphold ethical standards and support initiatives that make a positive difference in the lives of the underprivileged.', '/uploads/our_team_img/f269c782f4139f3dacedca994e9278e6.png', 'trustees', '2024-02-15 17:43:19', '2024-02-15 17:43:19'),
(24, 'OUTB72800A920240215', 'Mr. Sudipta Naga', 'As a trustee, my focus is on building strong community connections, ensuring that Shapath remains deeply rooted in the diverse needs and aspirations of the underprivileged.\r\n', '/uploads/our_team_img/aefa7ee56d63272097a4d87dd09c569a.png', 'trustees', '2024-02-15 17:44:00', '2024-02-15 17:44:00'),
(25, 'OUT48545BA420240215', 'Mr. Akash Ghosh', 'Embracing my role as a trustee, I am dedicated to fostering collaboration and partnerships that amplify the reach and impact of Shapath\'s initiatives.', '/uploads/our_team_img/dd8a50e87cb5322653cdea61d20c81d4.png', 'trustees', '2024-02-15 17:44:32', '2024-02-15 17:44:32');

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
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `uid`, `project_title`, `project_cover_details`, `project_page_title`, `project_page_video`, `project_page_description`, `project_img`, `project_logo`, `created_at`, `updated_at`) VALUES
(15, 'PROCADBC14820240216', 'Sirsti', 'Where the mind is without fear and the head is held high into that heaven\nof freedom. My father, let my country awake', '', 'dfgsrgr', '', '/uploads/project_img/137a0f126c349fa280315cf6b3ac74c8.jpg', '/uploads/project_logo/4455f61279c6164cde610cb0bddd5d2b.png', '2024-02-16 17:39:12', '2024-02-16 17:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `project_events`
--

CREATE TABLE `project_events` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `uid`, `p_id`, `image`, `created_at`, `updated_at`) VALUES
(16, 'PRGF98D1C2D20240216', 'PROCADBC14820240216', '/uploads/project_galary_img/088889d127c858a24d84dc00cb20db74.jpg', '2024-02-16 17:39:11', '2024-02-16 17:39:11'),
(17, 'PRGF931703020240216', 'PROCADBC14820240216', '/uploads/project_galary_img/78905a7223f53549fb1d4a39b7c4795f.jpg', '2024-02-16 17:39:11', '2024-02-16 17:39:11'),
(18, 'PRG09C9EF3B20240216', 'PROCADBC14820240216', '/uploads/project_galary_img/b8c455b8f1a70a4bfb18c9f5dbd03941.jpg', '2024-02-16 17:39:11', '2024-02-16 17:39:11'),
(19, 'PRGC895852A20240216', 'PROCADBC14820240216', '/uploads/project_galary_img/2e2c63ee908f9c0a1c13cd79ca19e15a.jpg', '2024-02-16 17:39:12', '2024-02-16 17:39:12');

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
(1, 'QOT564678GHFGJVTR', '\"The best way to find\r\nyourself is to lose yourself in the\r\nservice of others.\"\r\n\r\n', 'Mahatma Gandhi', '', 'top', 'home', '2024-02-05 11:22:15', '2024-02-05 11:22:15'),
(2, 'QOT5645678GFHHJU', 'Where the mind is without fear and the head is held high into the heaven of freedom. My father, let my country awake ', 'Rabindranath Thakur', '/uploads/quotes_img/5cd08844778f089fad792e1f22820117.png', 'bottom', 'home', '2024-02-06 10:54:09', '2024-02-06 10:54:09');

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
(18, 'WDO5DB5002320240215', 'Education', 'At Shapath, we\'re committed to nurturing children\'s holistic development. Through quality education, nutritious meals, and holistic support, we empower them to thrive. Our approach fosters lifelong skills, healthy habits, and well-rounded individuals ready to shape a brighter future. Join us in empowering tomorrow\'s leaders.', '/uploads/work_img/8fe643bd402a1a3101ff8feaa9f9703c.png', '2024-02-15 15:44:40', '2024-02-15 15:44:40'),
(19, 'WDOCF44AE9A20240215', 'Empowering Women', 'At Shapath, we\'re committed to empowering women. Through education, skill-building, and advocacy, we pave the way for women to achieve their dreams. Together, we\'re shaping a future where every woman can lead with confidence and contribute to a thriving society. Join us in our mission to empower women and transform communities.', '/uploads/work_img/0acbe07d37744be68319301fcde3ed78.png', '2024-02-15 15:46:44', '2024-02-15 15:46:44'),
(20, 'WDO6A14C17C20240215', 'Livelihood', 'At Shapath, we believe in providing skill training and placement support for underprivileged youth. Through our programs, we equip them with valuable skills and connect them with employment opportunities, empowering them to break the cycle of poverty and build a brighter future. Join us in transforming the lives of young individuals and creating pathways to success.', '/uploads/work_img/76377dbe2fcbe37acd9e33c4f173c274.png', '2024-02-15 15:47:30', '2024-02-15 15:47:30'),
(21, 'WDO0FCE1FA020240215', 'Children Development', 'At Shapath, we are dedicated to fostering comprehensive child development. Our initiatives focus on education, healthcare, and emotional well-being, ensuring that every child has the opportunity to reach their full potential. Through targeted programs, community engagement, and parental support, we strive to create an environment where children thrive and grow into confident, capable individuals. Join us in shaping a brighter future for our children.', '/uploads/work_img/8d3fbe384c66d92a9e358ed10c7f856f.png', '2024-02-15 15:49:52', '2024-02-15 15:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `user_message`
--

CREATE TABLE `user_message` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_message`
--

INSERT INTO `user_message` (`id`, `uid`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'UMSG05E17B0620240215', 'Rohan ', 'skrohan0420@gmail.com', '6290353314', 'erwtf', 'fwetw3ety', '2024-02-15 16:18:35', '2024-02-15 16:18:35'),
(2, 'UMSG41E16C8020240215', 'Arijit', 'admin@gmail.com', '91233 25003', 'asd', 'afdsad', '2024-02-15 17:05:26', '2024-02-15 17:05:26'),
(3, 'UMSGEA7AEB3620240215', 'Casey Frawley Frawley', 'frawley.casey63@gmail.com', '06-76185797', 'I have some bad news for you', 'Hello,\r\n\r\nUnfortunately I have some bad news for you.\r\n\r\nI wanted to write to you here about the fingerprint of your scanner thanks to an app/plugin that I cannot name for privacy reasons. \r\n\r\nEvery Scanner has an identification number. Browser fingerprints are more powerful than a trojan. Since we know what you do, what websites you have, what kind of videos you watch, your fingerprint is proof that you did it. With the system we have, we keep log records of these (as I said above, I won\'t name it now). I don\'t want to embarrass you, just do what\'s necessary.\r\n\r\nWith this system we can track all your activities (even if you use an incognito tab)\r\n\r\nUnfortunately, you have a lot of illegal activities on the Internet. \r\n\r\nYou know very well what your illegal activities are... it\'s not nice. It may not be right to name names here, because I don\'t want to reveal your information yet.\r\n\r\nWe\'re supposed to report this kind of activity. But I have good news for you now.\r\n\r\nAll you have to do is; Sending between 0.02 and 0.20 bitcoins to the bitcoin (BTC network) address I will give you.\r\n\r\nOnce you do that, you will know how I catch you, how I track you. You will use the internet more safely.\r\n\r\nIf you don\'t send me bitcoins, you will receive a high penalty for what you have done. You have 3 days.\r\n\r\nBe sure, I keep my promises.\r\n\r\nYou can easily buy Bitcoin (BTC) here:\r\n\r\nhttps://cex.io/buy-bitcoins\r\nhttps://nexo.com/buy-crypto/bitcoin-btc\r\nhttps://bitpay.com/buy-bitcoin/?crypto=BTC\r\nhttps://paybis.com/\r\nhttps://invity.io/buy-crypto\r\n\r\nOr simply google other exchanger.\r\n\r\nAfter that send the Bitcoin (BTC) directly to my wallet, or install the free software: Atomicwallet, or: Exodus wallet, then receive and send to mine.\r\n\r\nMy Bitcoin (BTC) address is: \r\n\r\nbc1q9708we8uafdkd33kuae696r03k90nzwdr7d0y7\r\n\r\nYes, that\'s how the address looks like, copy and paste my address, it\'s (cAsE-sEnSEtiVE).\r\n\r\nYou are aware that you have committed a huge crime. Instead of paying the penalty for this, send us a tip. And let us teach you privacy. We want to do this in a friendly way.\r\n\r\nHave a good day.', '2024-02-15 19:53:07', '2024-02-15 19:53:07');

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
(1, 'VDO34567GKFJJKGGHJ', 'https://www.youtube.com/embed/ox3VFMNBXjA?&unmute=1&loop=1&playlist=ox3VFMNBXjA', 'url', 'home', '2024-02-05 11:25:55', '2024-02-05 11:25:55');

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
(10, 'VOLUNTEERB1EC2D6320240212', 'Subhankar Sharma', 'i am subhankar sharma.', '/uploads/volunteers_img/91ffcf082d4cdd7bc948fb3bc192982c.jpg', '2024-02-12 13:20:34', '2024-02-12 13:20:34'),
(12, 'VOLUNTEERA5F0F34C20240213', 'Rohan ', 'hrthrh', '/uploads/volunteers_img/331781c40e8bd493f2c22ed155d49dea.jpg', '2024-02-13 11:56:30', '2024-02-13 11:56:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `causes`
--
ALTER TABLE `causes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
-- Indexes for table `news_letter`
--
ALTER TABLE `news_letter`
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
-- Indexes for table `project_events`
--
ALTER TABLE `project_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
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
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_message`
--
ALTER TABLE `user_message`
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
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `causes`
--
ALTER TABLE `causes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery_img`
--
ALTER TABLE `gallery_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mission_vision`
--
ALTER TABLE `mission_vision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_letter`
--
ALTER TABLE `news_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project_events`
--
ALTER TABLE `project_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_message`
--
ALTER TABLE `user_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
