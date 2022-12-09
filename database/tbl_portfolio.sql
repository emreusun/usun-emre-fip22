

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




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
(1, 'ThermoSecure Hackathon project', 'This hackathon team project is to create an interactive application using 3D, video, and still images. Design and develop an engaging experience for the end-user with which they can interact in a one-page mobile-first web application. In this project, I was responsible for UX/UI design part but I had to collaborate and adapt for graphic design, GUI design and development steps in a limited time.', 'desktop.jpg', 'watch.jpg', 'device.jpg', 'UX/UI', '', '1'),
(2, 'Morphing Project', 'Software used: Cinema4d and Adobe Aftereffects\r\n\r\nIn this class project, I have created morphing animations to promote Futurima Sound speakers. For animations, I used morphing animation on objects with my plane morphing features on Cinema 4d and created a promo video with Aftereffects.\r\n', 'speaker.png', '', '', 'Motion', 'AQ2b8B0OhRc', '1'),
(3, 'Kavorka Makeup Brand Design', 'Software used: Adobe Illustrator, Adobe Photoshop, and Adobe Aftereffects\r\n\r\nThis project was made for the Kavorka brand. I created the whole brand design with my original Kavorka logo. Also, create mock-up designs and social media ads for various social media platforms of various sizes. A Promo video was created to introduce the product on YouTube.\r\n', 'kavorka.jpg', 'image4.jpg', '', 'Video', 'btQDapMf-A4', '1'),
(4, 'Favorite Things Project', 'This front-end project was made to show my hobbies on the web page application. I have used vanilla JavaScript, data JSON, node modules and CSS on this page. For all the details you can check my GitHub page from the social icons.', 'fav.png', 'fav2.png', 'fav3.png', 'Front-End', '', '0'),
(6, 'Wikimedia NGO Project', 'Team Members:\r\nAsim Mehta Developer\r\nEmre Usun Graphic Designer and Videographer\r\nParminder Kumar UX/UI Designer\r\n\r\nIn this project our team created, we have created awareness for information service and humanitarian NGO Wikimedia. Our motto was “Save Knowledge”. Wikimedia doesn’t only need donations also they need volunteers too. \r\n', 'stroy.png', '', '', 'Video', 'ISzZeLe9SGM', '1'),
(8, 'Roku Flashback Application', 'In this project, I have created UX/UI design in Adobe XD and for the front-end part, I’ve used Vue js, sass and HTML. Roku flashbacks UX/UI design made for two users: Adults and kids profiles. This is the first part of the project. For the second part of the project, I will add a MySQL database and a PHP connection.', 'roku.jpg', '', '', 'Front-End', '', '0');

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
