-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 12:41 PM
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
(2, 'BLG427EF1F220240213', 'New blog', 'new blog description', '/uploads/blog_img/b2cf049b7c1485279410f48dc568c274.jpg', '2024-02-13 13:46:22', '2024-02-13 13:46:22'),
(3, 'BLG13264C5620240213', 'Blog 2', 'blog 2 description', '/uploads/blog_img/2ffcbab12a8a4a2f2af3d2462761619a.jpg', '2024-02-13 14:50:13', '2024-02-13 14:50:13'),
(2, 'BLG427EF1F220240213', 'New blog', 'new blog description', '/uploads/blog_img/b2cf049b7c1485279410f48dc568c274.jpg', '2024-02-13 13:46:22', '2024-02-13 13:46:22'),
(3, 'BLG13264C5620240213', 'Blog 2', 'blog 2 description', '/uploads/blog_img/2ffcbab12a8a4a2f2af3d2462761619a.jpg', '2024-02-13 14:50:13', '2024-02-13 14:50:13');

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
(4, 'CUS51A422B320240215', 'Rohan ', 'qwertyuiopasdf sdfdgsrtwe fgererdfgv erg45tgy bgbgr  tg t ', '/uploads/cause_img/738b89d12edea2aaa93a03263bd1da50.jpg', '1245', '', '2024-02-15 13:05:30', '2024-02-15 13:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `voter` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `uid`, `name`, `email`, `phone`, `pan`, `aadhar`, `voter`, `amount`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'DONATE2E3C58C820240215', 'Rohan ', 'skohan0420@gmail.com', '6290353314', 'erwerewrwerwe', 'erwrwerwerw', 'erwerweawr', '3453', 'PROD9B4CE5520240212', '2024-02-15 12:32:08', '2024-02-15 12:32:08');

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
(3, 'EVNEBF1E57120240213', 'How To Build A Cleaning Plan', 'Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed', '/uploads/event_img/c4366117e9fed20def14351b5061a65a.jpg', '2024-02-01', 'Kolkata India', '2024-02-13 19:04:56', '2024-02-13 19:04:56'),
(4, 'EVND18B6B7120240213', 'How To Build A Cleaning Plan	', 'Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed	', '/uploads/event_img/af11093f082f0848a3028516935260bf.jpg', '2024-02-05', 'Kolkata India	', '2024-02-13 19:05:54', '2024-02-13 19:05:54'),
(5, 'EVN5B17A44020240213', 'event', 'dyuifgaweryifrfuierfgeruiferguiegfidfhjbdvbdj\r\nfvbufvgbyuyudfyufdhiffbfvhibvuibrbfyivgbfvbui\r\nvbyuibfgrbvbfvbeff', '/uploads/event_img/f938f1daf8764a0819d49e7475fe48e6.jpg', '2024-02-29', 'Kolkata', '2024-02-13 19:12:58', '2024-02-13 19:12:58');

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
(1, 'GAL67890RTY78TY', '/uploads/galary_img/8e31d73ec6eae54bea72e56248247a5b.jpg,/uploads/galary_img/940dd1aca21930bc60011af2f8b306a0.jpg,/uploads/galary_img/22a64a1f496dea019a9153b67b2d1eb3.jpg,/uploads/galary_img/753e565a22e72951f46f990565820140.jpg,/uploads/galary_img/086fdff6867e87273b1c371e60a16795.jpg,/uploads/galary_img/7510d0eb149f77cd883e50107a51b179.png,/uploads/galary_img/98949d921aa1cf0e3890c6110ace2685.jpg,/uploads/galary_img/31250d8d52178cdfe5581ffd1c509fcc.jpg', '2024-02-12 11:36:00', '2024-02-12 16:06:14');

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
(5, 'WDO593E794D20240207', 'Rahim', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '/uploads/work_img/eaa475aada4da370f2d08b7c9239a069.png', 'board_of_trustees', '2024-02-07 11:02:04', '2024-02-07 11:02:04'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `uid`, `project_title`, `project_cover_details`, `project_page_title`, `project_page_video`, `project_page_description`, `project_img`, `project_logo`, `galary_img`, `created_at`, `updated_at`) VALUES
(4, 'PROD9B4CE5520240212', 'Title', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for		\r\n2	Abcd	Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for', '453', 'erwwer', 'Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for		\r\n2	Abcd	Shapath is a catalyst for sustainable impact in the area of nutrition, education, and skill building amongst the underprivileged considering the family as a unit and inclusions at the core. With a committed passion for', '/uploads/project_img/946c50e336c6e135fda3d8fec3593b84.jpg', '/uploads/project_logo/b11500be141a412b2b373fb23d308aa6.jpg', '/uploads/project_galary_img/83d4c8ae7e1fef14871efa37d1591091.jpg,/uploads/project_galary_img/cd1bd65967ccc367076008d5c78e5606.jpg,/uploads/project_galary_img/50cc22d61cf3215887c385788e400bf2.jpg,/uploads/project_galary_img/2439e9de98a97f9c4a1e11d5430dc2bb.jpg,/uploads/project_galary_img/f2bab161a67384bb70dddf0235af33d5.jpg,/uploads/project_galary_img/d5ce32b669f76feba8838ef6ba86d5ce.png,/uploads/project_galary_img/babe79779ac8d84cadbdcb05d47f9fad.jpg,/uploads/project_galary_img/fa7bc272459dbb3de03bee9ee8450a16.jpg', '2024-02-12 12:08:06', '2024-02-12 12:08:06'),
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
(14, 'WDO883618B520240215', 'Women Empowerment', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has', '/uploads/work_img/a5e49211d5fd5a4be2861fe66adab6a9.png', '2024-02-15 13:37:31', '2024-02-15 13:37:31'),
(15, 'WDOC2EC464220240215', 'Education', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has', '/uploads/work_img/65c4740b211f77b1416f7dacd7c8266c.png', '2024-02-15 13:39:07', '2024-02-15 13:39:07'),
(16, 'WDOC7D93E7620240215', 'Livelihood', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has', '/uploads/work_img/a2404ac079fa691d43f00248aa6ab117.png', '2024-02-15 13:39:29', '2024-02-15 13:39:29'),
(17, 'WDOF9C2DD5420240215', 'Child Education', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has', '/uploads/work_img/a284dd1139a26242f0f7fb8b9406a412.png', '2024-02-15 13:39:55', '2024-02-15 13:39:55');

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
(1, 'UMSG05E17B0620240215', 'Rohan ', 'skrohan0420@gmail.com', '6290353314', 'erwtf', 'fwetw3ety', '2024-02-15 16:18:35', '2024-02-15 16:18:35');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_message`
--
ALTER TABLE `user_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
