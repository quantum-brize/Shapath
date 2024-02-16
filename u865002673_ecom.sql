-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2024 at 07:58 PM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u865002673_ecom`
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
(1, 'ABT5678FGHTYUU', 'Empowering Families through Sustainable Impact in Nutrition, Education, and Skill Building', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core.\r\nWith a committed passion for children and a belief that education empowers, Shapath reaches out to the economically weaker section of society. Shapath is founded as a registered charitable trust in 2022. \r\nWe have evolved from the 1st day to deriving learnings about the needs of the development sector by working at the grassroots level and with the ones at the bottom of the pyramid. We are committed to nation building.', '/uploads/about_img/628bf705ce7f364305418d6786b7792c.jpg', '2024-02-06 15:53:38', '2024-02-06 15:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `uid`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(0, 'BLGD127B31620240215', 'Empowering Agriculture: How Solar Irrigation Transformed Pinjrat Village', 'Nestled amidst the verdant landscapes of Surat district, Pinjrat village stands as a testament to the transformative power of sustainable agriculture. Home to 86 families whose livelihoods depend on the land, this picturesque village is located next to a serene water stream. However, the idyllic setting belied the challenges faced by the farmers, who primarily relied on a costly and environmentally unfriendly diesel-powered irrigation system.\r\n<br>\r\n\r\nAccessing the diesel-powered system was a constant struggle for the farmers of Pinjrat. Often, they had to incur extra expenses and rely on external help to irrigate their fields. The daily ordeal of a 10 km journey to fetch water from the stream took its toll, leading to reduced crop yields and income for the villagers.\r\n\r\n<br>\r\nTo make ends meet, some farmers sought alternative employment opportunities, such as manual labor, further straining their finances. Eventually, the cost of operating the diesel motor pump became unsustainable, prompting the community to seek a more viable solution.\r\n\r\n<br>\r\nIn 2020, CARE India, in partnership with Shell India Pvt Ltd, launched a solar lift irrigation program after recognizing the challenges faced by the farmers during an annual meeting. An exposure visit to Dundhi village in the Kheda district provided the farmers of Pinjrat with firsthand experience of a successful solar lift irrigation system. Inspired by the economic and environmental benefits of the system, representatives from 96 homes formed the \'Sichai Samiti,\' a Solar User Group (SUG), committed to installing and maintaining the system. To ensure the success of this technical installation, farmers received assistance with administrative facilities and small loans.\r\n\r\n<br>\r\nThe impact of the solar lift irrigation system was transformative. Farmers using solar irrigation saved a staggering INR 4,14,525 by paying only INR 36,675 for three irrigations in one crop cycle, compared to the previous cost of INR 4,51,200. Moreover, the new system reduced travel time and ensured year-round vegetable cultivation, even during water-scarce seasons.\r\n\r\n<br>\r\nThe success of the solar lift irrigation program in Pinjrat is a shining example of sustainable agriculture. It not only empowered the farmers economically but also contributed to environmental conservation. The Secure and Resilient Livelihoods (SRL) programme, supported by Shell Energy Private Limited, aims to promote secure and resilient livelihoods for 5750 poor smallholder households. In Pinjrat, 94 farmers covering 94 acres experienced increased income through the solar lift irrigation system, demonstrating the transformative impact of sustainable and innovative solutions in agriculture.\r\n<br>\r\n\r\nThe story of Pinjrat village serves as a beacon of hope, showcasing how green and innovative solutions can empower farmers and transform agriculture, paving the way for a more sustainable future.', '/uploads/blog_img/4147c23bd6d8dd384ebe3120c5f99ea7.jpg', '2024-02-15 16:26:33', '2024-02-15 16:26:33');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `causes`
--

INSERT INTO `causes` (`id`, `uid`, `title`, `details`, `img`, `goal`, `raised`, `created_at`, `updated_at`) VALUES
(4, 'CUS51A422B320240215', 'Hope Canva', 'Unlocking Potential Through Art: Join Hope Canva\'s Mission to Empower Underprivileged Children and Blind Women Artisans. Your Support Makes a Difference!', '/uploads/cause_img/5d3fafceec7b8e42b725b9b06370d175.png', '1245', '489', '2024-02-15 13:05:30', '2024-02-15 13:05:30'),
(7, 'CUS95BD877420240215', 'Saraswati Scholarship', 'The Saraswati Scholarship is a beacon of hope for blind women students facing financial challenges in their pursuit of higher education.', '/uploads/cause_img/316a3ef9dfb745113db150e479b03d3b.png', '10000', '8909', '2024-02-15 18:05:51', '2024-02-15 18:05:51'),
(9, 'CUSD50972C820240215', 'Bastra Bondhu', 'Bastra-Bondhu is a compassionate initiative focused on empowering the homeless by allowing them to choose their own clothes with dignity.', '/uploads/cause_img/Picsart_23-10-20_19-20-48-636.jpg', '109233', '', '2024-02-15 18:08:17', '2024-02-15 18:08:17'),
(10, 'CUS0D28CFAF20240215', 'Bastra Bondhu', 'Bastra-Bondhu is a compassionate initiative focused on empowering the homeless by allowing them to choose their own clothes with dignity.', '/uploads/cause_img/Picsart_23-10-20_19-20-48-636.jpg', '213422', '', '2024-02-15 18:08:55', '2024-02-15 18:08:55'),
(11, 'CUS68AF32B320240216', 'cause 1.2', 'details', '/uploads/cause_img/Picsart_23-10-20_19-22-06-781.jpg', '10', '', '2024-02-15 18:32:41', '2024-02-15 18:32:41');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `uid`, `name`, `email`, `address`, `pin`, `phone`, `pan`, `amount`, `payment_status`, `project_id`, `created_at`, `updated_at`) VALUES
(2, 'DNTD6AC139320240215', 'Rohan ', 'skohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '100', 'pending', 'general-donation', '2024-02-15 17:50:54', '2024-02-15 17:50:54'),
(3, 'DNTF674B53820240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 17:56:33', '2024-02-15 17:56:33'),
(4, 'DNTE8792A6A20240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 17:58:14', '2024-02-15 17:58:14'),
(5, 'DNTD1CFD55F20240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 17:58:23', '2024-02-15 17:58:23'),
(6, 'DNTFC4163A120240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 17:59:14', '2024-02-15 17:59:14'),
(7, 'DNTE7E9D59B20240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 18:01:02', '2024-02-15 18:01:02'),
(8, 'DNT2B7C9BA020240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 18:02:55', '2024-02-15 18:02:55'),
(9, 'DNT9D72747620240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 18:06:01', '2024-02-15 18:06:01'),
(10, 'DNTEB7389AA20240215', 'Rohan ', 'skrohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '121', '23423', 'pending', 'general-donation', '2024-02-15 18:18:39', '2024-02-15 18:18:39'),
(11, 'DNT530ACC5A20240215', 'Rohan ', 'skohan0420@gmail.com', 'Shopiya beauty Parlour\r\nSurerpukur', '712136', '6290353314', '3422342', '34234', 'pending', 'general-donation', '2024-02-15 18:37:58', '2024-02-15 18:37:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_img`
--

INSERT INTO `gallery_img` (`id`, `uid`, `images`, `created_at`, `updated_at`) VALUES
(1, 'GAL67890RTY78TY', '/uploads/galary_img/Picsart_23-10-20_19-22-29-504.jpg,/uploads/galary_img/Picsart_23-10-20_19-24-48-141.jpg,/uploads/galary_img/Picsart_23-10-20_19-25-10-300.jpg', '2024-02-12 11:36:00', '2024-02-12 16:06:14');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `galary_img` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `uid`, `project_title`, `project_cover_details`, `project_page_title`, `project_page_video`, `project_page_description`, `project_img`, `project_logo`, `galary_img`, `created_at`, `updated_at`) VALUES
(4, 'PROD9B4CE5520240212', 'Sristi', 'Welcome to Sristi, where we empower blind women through our Dhup Kathi (sun-dried sticks) workshop. As they skillfully weave and craft with these natural materials, we provide daily wages for their financial support. Join us in creating a sustainable and inclusive future through the artistry of Sristi.', '453', 'erwwer', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for		\r\n2	Abcd	Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for', '/uploads/project_img/Picsart_23-10-20_19-16-35-995.jpg', '/uploads/project_logo/b11500be141a412b2b373fb23d308aa6.jpg', '/uploads/project_galary_img/83d4c8ae7e1fef14871efa37d1591091.jpg,/uploads/project_galary_img/cd1bd65967ccc367076008d5c78e5606.jpg,/uploads/project_galary_img/50cc22d61cf3215887c385788e400bf2.jpg,/uploads/project_galary_img/2439e9de98a97f9c4a1e11d5430dc2bb.jpg,/uploads/project_galary_img/f2bab161a67384bb70dddf0235af33d5.jpg,/uploads/project_galary_img/d5ce32b669f76feba8838ef6ba86d5ce.png,/uploads/project_galary_img/babe79779ac8d84cadbdcb05d47f9fad.jpg,/uploads/project_galary_img/fa7bc272459dbb3de03bee9ee8450a16.jpg', '2024-02-12 12:08:06', '2024-02-12 12:08:06'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- AUTO_INCREMENT for table `causes`
--
ALTER TABLE `causes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mission_vision`
--
ALTER TABLE `mission_vision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
