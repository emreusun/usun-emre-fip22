-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 09, 2022 at 04:14 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `path` text NOT NULL,
  `path2` text NOT NULL,
  `path3` text NOT NULL,
  `categories` text NOT NULL,
  `video_link` text NOT NULL,
  `is_video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`id`, `title`, `description`, `path`, `path2`, `path3`, `categories`, `video_link`, `is_video`) VALUES
(1, 'ThermoSecure Hackathon project', 'This hackathon team project is to create an interactive application using 3D, video, and still images. Design and develop an engaging experience for the end-user with which they can interact in a one-page mobile-first web application. In this project, I was responsible for UX/UI design part but I had to collaborate and adapt for graphic design, GUI design and development steps in a limited time.', 'desktop.jpg', 'watch.jpg', 'device.jpg', 'UX/UI', '01oh_4hPXgI', '0'),
(2, 'Morphing Project', 'Software used: Cinema4d and Adobe Aftereffects\r\n\r\nIn this class project, I have created morphing animations to promote Futurima Sound speakers. For animations, I used morphing animation on objects with my plane morphing features on Cinema 4d and created a promo video with Aftereffects.\r\n', 'speaker.png', '', '', 'Motion', 'AQ2b8B0OhRc', '1'),
(3, 'Kavorka Makeup Brand Design', 'Software used: Adobe Illustrator, Adobe Photoshop, and Adobe Aftereffects\r\n\r\nThis project was made for the Kavorka brand. I created the whole brand design with my original Kavorka logo. Also, create mock-up designs and social media ads for various social media platforms of various sizes. A Promo video was created to introduce the product on YouTube.\r\n', 'kavorka.jpg', '', '', 'Video', 'btQDapMf-A4', '1'),
(4, 'Favorite Things Project', 'This front-end project was made to show my hobbies on the web page application. I have used vanilla JavaScript, data JSON, node modules and CSS on this page. For all the details you can check my GitHub page from the social icons.', 'fav.png', 'fav2.png', 'fav3.png', 'Front-End', '', '0'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut iaculis.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC.', 'stroy.png', '', '', 'Motion', 'd6ymJeOu6YQ', '1'),
(8, 'Roku Flasback Application', 'In this project, I have created UX/UI design in Adobe XD and for the front-end part, I’ve used Vue js, sass and HTML. Roku flashbacks UX/UI design made for two users: Adults and kids profiles. This is the first part of the project. For the second part of the project, I will add a MySQL database and a PHP connection.', 'roku.jpg', '', '', 'Front-End', '', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
