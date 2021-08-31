-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 09:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `Id` int(11) NOT NULL COMMENT 'post id with auto increment',
  `UserId` int(11) NOT NULL COMMENT 'user id who created post',
  `Title` text NOT NULL COMMENT 'post title',
  `SubTitle` text NOT NULL COMMENT 'post subtitle',
  `Content` longtext NOT NULL COMMENT 'post content',
  `CreatedAt` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'create time',
  `ModifiedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'update time',
  `IsDeleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'if record deleted this will be 1 otherwise 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`Id`, `UserId`, `Title`, `SubTitle`, `Content`, `CreatedAt`, `ModifiedAt`, `IsDeleted`) VALUES
(1, 3, 'What Is a Blog?', '17 Blogging Mistakes to Avoid in 2021, According to HubSpot Bloggers', '<p>Sometimes, when I tell people that I blog for a living, they roll their eyes. &#34;That\'s so easy,&#34; they say. &#34;You get a paycheck for sitting on the internet all day and writing. A monkey could do your job!&#34;</p><p>That\'s when<em>&#160;I</em>&#160;roll my eyes. See, people are quick to deem blogging as a no-brainer job. But when they actually sit down to write their first couple of posts, it hits them:&#160;<em>This is way harder than I thought</em>.&#160;Like any person starting a new job, they mess things up.</p><p>That\'s okay -- it happens to pretty much every new blogger. Luckily, it\'s pretty easy to avoid these roadblocks if you know they\'re coming.</p>', '2021-09-01 00:16:00', '2021-09-01 01:13:40', '0'),
(2, 3, 'ETERNALS OFFICIAL FINAL TRAILER', 'good movie so far', '<p>It is their time to fight as Marvel Studios releases the official final trailer for director Chloe Zhao&#8217;s upcoming superhero film titled&#160;<span>Eternals</span>. View trailer below.<span></span></p><p><span>After an unexpected tragedy following the events of&#160;Avengers: Endgame&#160;(2019),<span class=\"reference\"></span>&#160;the&#160;Eternals&#8212;an immortal alien race created by the&#160;Celestials&#160;who have secretly lived on Earth for over 7,000 years<span class=\"reference\"></span><span class=\"reference\"></span>&#8212;reunite to protect humanity from their evil counterparts, the&#160;Deviants.</span></p>', '2021-09-01 00:16:46', '2021-09-01 00:17:19', '0'),
(3, 1, 'new post', 'testing new post', '<font face=\"Arial\">Here is content</font>', '2021-09-01 01:11:52', '2021-09-01 01:12:30', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_tags`
--

CREATE TABLE `tbl_post_tags` (
  `Id` int(11) NOT NULL COMMENT 'tag id with auto increment',
  `PostId` int(11) NOT NULL COMMENT 'related post id',
  `Tag` varchar(255) NOT NULL COMMENT 'tag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post_tags`
--

INSERT INTO `tbl_post_tags` (`Id`, `PostId`, `Tag`) VALUES
(8, 2, 'Angelina Jolie'),
(9, 2, 'Chloé Zhao'),
(10, 2, 'Eternals'),
(11, 2, 'Films'),
(12, 2, 'Gemma Chan'),
(13, 2, 'Marvel'),
(14, 2, 'movie trailers'),
(15, 2, 'movies'),
(16, 2, 'Richard Madden'),
(17, 2, 'Selma Hayek'),
(23, 3, 'test'),
(24, 3, 'new'),
(25, 1, 'blogs'),
(26, 1, 'what is blog'),
(27, 1, 'blog correction');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `Id` int(11) NOT NULL COMMENT 'user id with auto increment',
  `Name` varchar(255) NOT NULL COMMENT 'name',
  `Email` varchar(255) NOT NULL COMMENT 'email',
  `Password` varchar(255) NOT NULL COMMENT 'encrypted password',
  `CreatedAt` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'create time',
  `ModifiedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'update time',
  `IsDeleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'if record deleted this will be 1 otherwise 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`Id`, `Name`, `Email`, `Password`, `CreatedAt`, `ModifiedAt`, `IsDeleted`) VALUES
(1, 'Komal', 'komal@gmail.com', '$2y$10$fY4gixaFTOvOnGuaOx8tLux9Ifc7gM4mDigrzXMKMGaRKF1AKdMf.', '2021-08-31 22:08:40', '2021-08-31 22:08:40', '0'),
(3, 'test', 'test@gmail.com', '$2y$10$yJ1CTwCOlLjydG8jZjIxNeQAC4Txk1iF.etwW0N7i3YXtHlMJjiyu', '2021-08-31 22:12:35', '2021-08-31 22:12:35', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_post_tags`
--
ALTER TABLE `tbl_post_tags`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'post id with auto increment', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_post_tags`
--
ALTER TABLE `tbl_post_tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'tag id with auto increment', AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'user id with auto increment', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
