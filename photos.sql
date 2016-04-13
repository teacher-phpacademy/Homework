-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 13 2016 г., 11:44
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `photos`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_nick` varchar(20) DEFAULT NULL,
  `addr_first` varchar(40) DEFAULT NULL,
  `addr_last` varchar(40) DEFAULT NULL,
  `addr_company` varchar(40) DEFAULT NULL,
  `address_name` varchar(20) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `address_nick`, `addr_first`, `addr_last`, `addr_company`, `address_name`, `address`, `city`, `state`, `zip`, `country`) VALUES
(1, 50, 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'dfh', 'dfh', 'sdfh', 'fghfgh', 'fgh');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_settings`
--

CREATE TABLE IF NOT EXISTS `admin_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `welcome_message` text COLLATE utf8_unicode_ci NOT NULL,
  `top_message` text COLLATE utf8_unicode_ci NOT NULL,
  `top_href` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `email`, `welcome_message`, `top_message`, `top_href`) VALUES
(1, 'ivan@ecwm.com', '<p>\r\n	Welcome</p>\r\n', 'Great place for pure linen fabric. Free samples, sales and discounts.', '');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `img_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contest_id` int(11) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `img`, `alt`, `href`, `title`, `active`, `img_title`, `contest_id`, `type`, `position`) VALUES
(29, '88374812.gif', 'rr', 'www.fabric-store.com', '250', 1, 'rrr', 62, 1, 0),
(83, '88374812.gif', '250', 'www.fabric-store.com', '250', 1, '250', 63, 1, 0),
(84, '88374812.gif', '250', 'www.fabric-store.com', '250', 1, '250', 65, 1, 0),
(85, '88374812.gif', '250', 'www.fabric-store.com', '250', 1, '250', 62, 3, 0),
(88, '54552506.jpg', '300', 'www.fabric-store.com', '300', 1, '300', 65, 0, 0),
(89, '54552506.jpg', '300', 'www.fabric-store.com', '300', 1, '300', 62, 2, 0),
(90, '54552506.jpg', '300', 'www.fabric-store.com', '300', 1, '300', 62, 5, 0),
(95, '35269166.png', 'sdfsdfsdf', 'http://cbcvbvb', 'sdfsdfsdf', 1, 'sdfsdfsdf', 62, 10, 0),
(96, '76156617.jpg', 'Head', 'http://johnhost.com', 'Head', 1, 'Head', 10000000, 6, 0),
(97, '72183228.jpg', 'Reg', 'http://fabriscs-store.com', 'Reg', 1, 'Reg', 10000000, 7, 0),
(98, '6326294.jpg', 'login', 'http://fabrics-store.com', 'login', 1, 'login', 10000000, 8, 0),
(99, '82980347.jpg', 'sasfddsf', 'http://sdfsdfsdf', 'sasfddsf', 1, 'sasfddsf', 10000000, 11, 0),
(100, '54552506.jpg', '300', 'www.fabric-store.com', '300', 1, '300', 65, 0, 1),
(101, '189209.jpg', 'sdfsdfsdf', 'http://sdfsdsdf', 'sdfsdfsdf', 1, 'sdfsdfsdf', 10000000, 12, 0),
(102, '35269166.png', '_', '_', '_', 0, '_', 0, 9, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(5) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `date_add` int(12) NOT NULL,
  `txt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `contest_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_photocomment` (`parent_id`),
  KEY `FK_usercomment` (`author_id`),
  KEY `parent_id` (`parent_id`),
  KEY `author_id` (`author_id`),
  KEY `contest_id` (`contest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=280 ;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `parent_id`, `author_id`, `date_add`, `txt`, `state`, `type`, `contest_id`) VALUES
(259, 50, 50, 1380925259, 'Hello! I made a costume today. ', 0, 3, NULL),
(260, 27, 50, 1380925467, 'I started working on this new project today. ', 0, 3, NULL),
(264, 295, 27, 1381315163, 'New comment', 0, 0, 62),
(265, 343, 27, 1383131003, 'sdfsdf', 0, 0, 63),
(266, 343, 53, 1383212835, 'sef sdf sf s', 0, 0, 63),
(267, 317, 53, 1383213199, 'cvxc xc vx', 0, 0, 63),
(268, 337, 53, 1383213946, 'sdf sdf s', 0, 0, NULL),
(269, 322, 27, 1383214048, 'gh fgh fg gh ', 0, 0, NULL),
(270, 30, 27, 1383216341, 'AZxZx', 0, 2, NULL),
(273, 319, 27, 1383817237, 'asdasd as das as s ', 0, 0, 63),
(274, 328, 27, 1384338656, 'f sdf sdfs f', 0, 0, 65),
(275, 53, 27, 1384504937, 'werwerwer', 0, 3, NULL),
(276, 53, 27, 1384504943, 'asda sasdasd ', 0, 3, NULL),
(277, 337, 27, 1385630024, 'dfgdf dfg dfgdfg d', 0, 0, NULL),
(278, 301, 27, 1385630284, 'ert ert ert erw ry rty ', 0, 0, NULL),
(279, 301, 27, 1385630291, 'gwertert er ert yerertetr', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `contest`
--

CREATE TABLE IF NOT EXISTS `contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `prizes` text COLLATE utf8_unicode_ci NOT NULL,
  `start_entry` int(12) NOT NULL,
  `end_entry` int(12) NOT NULL,
  `start_votes` int(12) NOT NULL,
  `end_votes` int(12) NOT NULL,
  `max_photos` int(2) DEFAULT NULL,
  `publish_winners` int(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countplaces` int(11) NOT NULL,
  `publish` int(1) NOT NULL,
  `multiple_vote` int(1) NOT NULL,
  `frequency_vote` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=66 ;

--
-- Дамп данных таблицы `contest`
--

INSERT INTO `contest` (`id`, `banner`, `about`, `prizes`, `start_entry`, `end_entry`, `start_votes`, `end_votes`, `max_photos`, `publish_winners`, `name`, `countplaces`, `publish`, `multiple_vote`, `frequency_vote`) VALUES
(62, '99384638.gif', '<p>\r\n	ddddddddd</p>\r\n', '<p>\r\n	10,000$ 1st place winner!</p>\r\n', 1383004800, 1385683200, 1383264000, 1385769600, 20, 1, '2013 CONTEST', 5, 1, 1, 0),
(63, '83354546.jpg', '<p>\r\n	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Hello! Welcome to the Fabrics-store.com testing contest! This seems to be the body of the contest rules so I&#39;ll write a basic description of what the contest will be like. </span></span></p>\r\n<p>\r\n	<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">First Prize: LINEN!&nbsp; </span></span></p>\r\n<p>\r\n	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Second Prize: Linen </span></span></p>\r\n<p>\r\n	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Third Prize: $$$</span></span></p>\r\n', 1383177600, 1383782400, 1383868800, 1385078400, 10, 1, 'Testing Contest 2013', 10, 1, 1, 1),
(65, '66201444.png', '<h2>\r\n	<span style="font-size:28px;"><span style="font-family: arial,helvetica,sans-serif;">Calling Talented Designers: Fabrics-store.com Sewing Awards 2014&nbsp; </span></span></h2>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">We are teaming up with <a href="http://www.knittinguniverse.com/Midwest/">STITCHES</a> and <a href="http://www.fiestayarns.com/">Fiesta Yarns</a> to offer all Craftsy knit and crochet designers the opportunity to compete for a chance to have their one of a kind design featured in a fashion show! As an added bonus, the winning designer will also receive a $1,000 grand prize!</span></span></p>\r\n<p>\r\n	<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">At every STITCHES event there is a highly anticipated fashion show, where industry&nbsp;professionals and attendees eagerly await to see unique designs handmade by top designers.</span></span></p>\r\n<p>\r\n	<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">We want to give the Craftsy designer community the chance to have their unique shawl, sweater, vest or accessory walk down the runway to an audience of influencers, designers and professionals.</span></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '<p>\r\n	<span style="font-size:24px;"><span style="font-family: arial,helvetica,sans-serif;">How to enter:</span></span></p>\r\n<ol>\r\n	<li>\r\n		<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">Design a pattern and knit or crochet your piece using <a href="http://www.fiestayarns.com/" target="_blank"> Fiesta Yarns</a> (any color, combination or line).</span></span></li>\r\n	<li>\r\n		<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">Take a picture of your finished piece.</span></span></li>\r\n	<li>\r\n		<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;"><a href="http://www.craftsy.com/pattern/sell" target="_blank">Upload both your pattern and your photos</a> by September 4, 2012.</span></span></li>\r\n	<li>\r\n		<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">Include this somewhere in the title: &ldquo;STITCHES Fashion Show&rdquo; and the name of your design.</span></span></li>\r\n</ol>\r\n<p>\r\n	<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">The designs will then be juried by Craftsy, STITCHES, and Fiesta Yarns. We will announce winners&nbsp;September 4th. We encourage designers to promote themselves and we will consider community votes in the form of &ldquo;hearts&rdquo; on your projects. The top 3 designs will be featured on our blog.</span></span></p>\r\n<p>\r\n	<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">The first place winner will be featured in the STITCHES East Fashion Show in&nbsp;October, 2012. The pattern will be publicized at our booth and on&nbsp;Craftsy.com. And remember, the winner also receives a $1,000 grand prize!</span></span></p>\r\n<p>\r\n	<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">Good luck, we can&rsquo;t wait to see what you make!</span></span></p>\r\n<p>\r\n	<span style="font-size:16px;"><span style="font-family: arial,helvetica,sans-serif;">- <em>The Craftsy Team</em></span></span></p>\r\n', 1383955200, 1388361600, 1384214400, 1388448000, 30, 0, 'Design Awards 2014', 15, 1, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `credit_history`
--

CREATE TABLE IF NOT EXISTS `credit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `winner_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `date_award` int(12) NOT NULL,
  `contest_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `winner_id` (`winner_id`),
  KEY `photo_id` (`photo_id`),
  KEY `contest_id` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `photo_id` int(7) NOT NULL DEFAULT '0',
  `author_id` int(8) NOT NULL DEFAULT '0',
  `date_like` int(12) NOT NULL,
  `action` int(1) NOT NULL,
  KEY `photo_id` (`photo_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`photo_id`, `author_id`, `date_like`, `action`) VALUES
(316, 27, 1385977032, 1),
(338, 27, 1385977059, 0),
(338, 53, 1385977171, 1),
(337, 53, 1385977193, 0),
(336, 53, 1385977921, 0),
(335, 53, 1385977992, 1),
(366, 27, 1386329634, 1),
(355, 27, 1386329643, 1),
(350, 27, 1386329649, 1),
(346, 27, 1386329653, 1),
(324, 27, 1386329662, 1),
(322, 27, 1386329673, 1),
(320, 27, 1386329893, 0),
(368, 27, 1386329931, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contest_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `place` int(5) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `contest_id` (`contest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=371 ;

--
-- Дамп данных таблицы `photo`
--

INSERT INTO `photo` (`id`, `author_id`, `photo`, `description`, `contest_id`, `type`, `place`) VALUES
(295, 27, '28869521.jpg', '111', 62, 0, 100),
(296, 27, '28869521.jpg', '111', 62, 2, 100),
(301, 50, '30202611.jpg', 'Nikolai at work. ', 0, 2, 100),
(304, 50, '25178315.jpg', 'BLOGPHOTO', 260, 1, 100),
(315, 50, '31443858.jpg', 'Ice climber', 65, 0, 100),
(316, 50, '31443858.jpg', 'Ice climber', 65, 2, 100),
(317, 27, '92529074.JPEG', 'Family', 63, 0, 0),
(318, 27, '92529074.JPEG', 'Family', 63, 2, 100),
(319, 27, '63932094.png', 'King and queen', 63, 0, 0),
(320, 27, '63932094.png', 'King and queen', 63, 2, 100),
(321, 27, '69482498.JPG', 'New', 63, 0, 0),
(322, 27, '69482498.JPG', 'New', 63, 2, 100),
(323, 27, '20801593.jpg', 'girl in linen', 65, 0, 100),
(324, 27, '20801593.jpg', 'girl in linen', 65, 2, 100),
(325, 53, '2315840.jpg', 'Beauty', 0, 2, 100),
(326, 53, '27499831.jpg', 'Cherry', 0, 2, 100),
(327, 53, '59566628.jpg', 'Linen and Cherry', 0, 2, 100),
(328, 53, '59566628.jpg', 'Linen and Cherry', 65, 0, 100),
(329, 53, '44986532.jpg', 'Baby I got your money', 0, 2, 100),
(330, 53, '68799220.jpg', 'Morning', 0, 2, 100),
(331, 53, '44986532.jpg', 'Baby I got your money', 63, 0, 100),
(332, 53, '44986532.jpg', 'Baby I got your money', 65, 0, 100),
(333, 53, '84492724.jpg', 'Linen bed', 0, 2, 100),
(334, 53, '16724204.jpg', 'linen', 0, 2, 100),
(335, 53, '42923809.jpg', 'Wedding-Dress', 0, 2, 100),
(336, 53, '31180089.jpg', 'Veil cape', 0, 2, 100),
(337, 53, '8383566.jpg', 'Thank you', 0, 2, 100),
(338, 53, '55104478.jpg', 'Braid', 0, 2, 100),
(339, 53, '55104478.jpg', 'Braid', 65, 0, 100),
(340, 53, '42923809.jpg', 'Wedding-Dress', 65, 0, 100),
(341, 53, '31180089.jpg', 'Veil cape', 65, 0, 100),
(342, 53, '8383566.jpg', 'Thank you', 63, 0, 0),
(343, 53, '27499831.jpg', 'Cherry', 63, 0, 1),
(344, 27, '68799221.jpg', 'Morning', 63, 0, 0),
(345, 27, '12783814.jpg', 'Love', 65, 0, 100),
(346, 27, '12783814.jpg', 'Love', 65, 2, 100),
(348, 27, '22329712.jpg', 'sdfsdfsdf', 62, 0, 100),
(349, 27, '22329712.jpg', 'sdfsdfsdf', 65, 0, 100),
(350, 27, '46640015.jpg', 'asd', 0, 2, 100),
(351, 27, '46640015.jpg', 'asd', 62, 0, 100),
(352, 27, '46640015.jpg', 'asd', 65, 0, 100),
(355, 27, '61413575.jpg', 'hi', 0, 2, 100),
(356, 27, '61413575.jpg', 'hi', 62, 0, 100),
(357, 27, '61413575.jpg', 'hi', 65, 0, 100),
(358, 27, '7656861.jpg', 'see sdf sd f', 0, 2, 100),
(359, 27, '7656861.jpg', 'see sdf sd f', 62, 0, 100),
(360, 27, '7656861.jpg', 'see sdf sd f', 65, 0, 100),
(361, 55, '17837525.jpg', 'sadfsdf', 0, 2, 100),
(362, 58, '39321900.jpg', 'werwer', 0, 2, 100),
(363, 57, '12344361.jpg', 'wer', 0, 2, 100),
(364, 54, '74533082.jpg', 'asfasf', 0, 2, 100),
(365, 27, '59735108.jpg', 'sdf', 65, 0, 100),
(366, 27, '59735108.jpg', 'sdf', 65, 2, 100),
(367, 27, '64550782.JPG', 'wer', 65, 0, 100),
(368, 27, '64550782.JPG', 'wer', 65, 2, 100),
(369, 27, '38229371.JPEG', 'dgdfg', 65, 0, 100),
(370, 27, '38229371.JPEG', 'dgdfg', 65, 2, 100);

-- --------------------------------------------------------

--
-- Структура таблицы `previewphoto`
--

CREATE TABLE IF NOT EXISTS `previewphoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contest_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `contest_id` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `previewreview`
--

CREATE TABLE IF NOT EXISTS `previewreview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(12) NOT NULL,
  `sum_rates` int(12) NOT NULL,
  `count_rates` int(12) NOT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `photo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `about` text,
  `rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(12) NOT NULL,
  `sum_rates` int(12) NOT NULL,
  `count_rates` int(12) NOT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `photo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `review`
--

INSERT INTO `review` (`id`, `rate`, `sum_rates`, `count_rates`, `html`, `author_id`, `photo1`, `photo2`, `photo3`, `title`) VALUES
(29, 3, 3, 1, 'new', 27, '59576141.jpg', '25466838.jpg', '80846072.jpg', 'new'),
(30, 4, 4, 1, 'I like this dress so much', 27, '29449155.jpg', '80961033.jpg', '21883504.jpg', 'Awesom'),
(31, 0, 0, 0, 'vxcvxcv', 27, '20510865.jpg', '', '', 'xcvzx');

-- --------------------------------------------------------

--
-- Структура таблицы `review_rates`
--

CREATE TABLE IF NOT EXISTS `review_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(12) NOT NULL,
  `review_id` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `review_rates`
--

INSERT INTO `review_rates` (`id`, `author_id`, `review_id`) VALUES
(24, 27, 30),
(25, 27, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `statistics`
--

CREATE TABLE IF NOT EXISTS `statistics` (
  `ip_address` char(15) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `visitdate` int(12) NOT NULL,
  `action` int(2) NOT NULL,
  `contest_id` int(11) NOT NULL,
  KEY `author_id` (`author_id`),
  KEY `contest_id` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `statistics`
--

INSERT INTO `statistics` (`ip_address`, `author_id`, `visitdate`, `action`, `contest_id`) VALUES
('127.0.0.1', 27, 1383131103, 2, 65),
('127.0.0.1', 53, 1383131474, 2, 65),
('127.0.0.1', 27, 1383131648, 1, 65),
('127.0.0.1', 0, 1383133682, 5, 63),
('127.0.0.1', 0, 1383133849, 5, 65),
('127.0.0.1', 54, 1383134215, 3, 65),
('127.0.0.1', 27, 1383211759, 1, 63),
('127.0.0.1', 27, 1383211819, 2, 65),
('127.0.0.1', 0, 1383212054, 5, 63),
('127.0.0.1', 0, 1383212195, 5, 65),
('127.0.0.1', 27, 1383295602, 4, 0),
('127.0.0.1', 0, 1383300328, 5, 65),
('127.0.0.1', 0, 1383395672, 5, 65),
('127.0.0.1', 0, 1383555185, 5, 65),
('127.0.0.1', 27, 1383555403, 1, 65),
('127.0.0.1', 0, 1383643401, 5, 63),
('127.0.0.1', 0, 1383645273, 5, 62),
('127.0.0.1', 53, 1383645326, 2, 62),
('127.0.0.1', 0, 1383645359, 5, 65),
('127.0.0.1', 27, 1383645578, 1, 65),
('127.0.0.1', 27, 1383645587, 1, 62),
('127.0.0.1', 0, 1383730852, 5, 65),
('127.0.0.1', 0, 1383731865, 5, 63),
('127.0.0.1', 27, 1383737160, 2, 63),
('127.0.0.1', 27, 1383817216, 4, 0),
('127.0.0.1', 27, 1383817237, 4, 0),
('127.0.0.1', 55, 1383819353, 3, 0),
('127.0.0.1', 0, 1383819373, 5, 63),
('127.0.0.1', 0, 1383821658, 5, 62),
('127.0.0.1', 0, 1383821709, 5, 65),
('127.0.0.1', 27, 1383822012, 2, 62),
('127.0.0.1', 27, 1383822202, 1, 65),
('127.0.0.1', 27, 1383822216, 1, 65),
('127.0.0.1', 27, 1383822220, 1, 65),
('127.0.0.1', 27, 1383822225, 4, 0),
('127.0.0.1', 27, 1383822253, 1, 65),
('127.0.0.1', 27, 1383822267, 1, 65),
('127.0.0.1', 27, 1383822269, 4, 0),
('127.0.0.1', 27, 1383822369, 4, 0),
('127.0.0.1', 27, 1383822385, 4, 0),
('127.0.0.1', 0, 1384336018, 5, 65),
('127.0.0.1', 0, 1384337807, 5, 63),
('127.0.0.1', 27, 1384338656, 4, 0),
('127.0.0.1', 56, 1384340442, 3, 0),
('127.0.0.1', 57, 1384340662, 3, 0),
('127.0.0.1', 58, 1384340850, 3, 0),
('127.0.0.1', 59, 1384340949, 3, 0),
('127.0.0.1', 27, 1384342470, 1, 62),
('127.0.0.1', 27, 1384342743, 1, 62),
('127.0.0.1', 27, 1384343032, 1, 62),
('127.0.0.1', 27, 1384343087, 1, 62),
('127.0.0.1', 27, 1384343195, 1, 62),
('127.0.0.1', 0, 1384503825, 5, 65),
('127.0.0.1', 27, 1384504937, 4, 0),
('127.0.0.1', 27, 1384504943, 4, 0),
('127.0.0.1', 0, 1384766965, 5, 65),
('127.0.0.1', 0, 1384774467, 5, 63),
('127.0.0.1', 0, 1384852677, 5, 65),
('127.0.0.1', 0, 1384853026, 5, 63),
('127.0.0.1', 27, 1384858845, 2, 65),
('127.0.0.1', 27, 1385025634, 1, 63),
('127.0.0.1', 27, 1385028469, 1, 63),
('127.0.0.1', 27, 1385028767, 1, 65),
('127.0.0.1', 27, 1385028773, 1, 65),
('127.0.0.1', 0, 1385376161, 5, 65),
('127.0.0.1', 0, 1385458491, 5, 65),
('127.0.0.1', 0, 1385463271, 5, 63),
('127.0.0.1', 27, 1385630024, 4, 0),
('127.0.0.1', 27, 1385630284, 4, 0),
('127.0.0.1', 27, 1385630291, 4, 0),
('127.0.0.1', 27, 1385630394, 1, 65),
('127.0.0.1', 27, 1385630796, 2, 0),
('127.0.0.1', 27, 1385630886, 1, 62),
('127.0.0.1', 27, 1385631182, 2, 0),
('127.0.0.1', 27, 1385631230, 1, 62),
('127.0.0.1', 27, 1385631492, 2, 0),
('127.0.0.1', 27, 1385631634, 2, 0),
('127.0.0.1', 27, 1385632376, 2, 0),
('127.0.0.1', 27, 1385632388, 1, 62),
('127.0.0.1', 27, 1385632405, 1, 65),
('127.0.0.1', 27, 1385633964, 4, 0),
('127.0.0.1', 55, 1386234809, 2, 0),
('127.0.0.1', 58, 1386234859, 2, 0),
('127.0.0.1', 57, 1386234949, 2, 0),
('127.0.0.1', 54, 1386234993, 2, 0),
('127.0.0.1', 27, 1386242684, 2, 0),
('127.0.0.1', 27, 1386242874, 2, 65),
('127.0.0.1', 27, 1386322412, 2, 65),
('127.0.0.1', 27, 1386322517, 2, 65),
('127.0.0.1', 27, 1386322557, 2, 65);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `privs` int(3) NOT NULL DEFAULT '1',
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `confirm_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `verifyCode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` int(10) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `taxid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sew1` tinyint(1) NOT NULL,
  `sew2` tinyint(1) NOT NULL,
  `sew3` tinyint(1) NOT NULL,
  `sew4` tinyint(1) NOT NULL,
  `needlework` tinyint(1) NOT NULL,
  `quilting` tinyint(1) NOT NULL,
  `crafting` tinyint(1) NOT NULL,
  `sewex1` tinyint(1) NOT NULL,
  `sewex2` tinyint(1) NOT NULL,
  `sewex3` tinyint(1) NOT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datereg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credits` int(11) NOT NULL,
  `activeblog` tinyint(1) NOT NULL DEFAULT '1',
  `rate` int(11) NOT NULL,
  `photo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `loyal` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `email`, `sname`, `fname`, `privs`, `profile`, `confirm_password`, `verifyCode`, `prefix`, `phone`, `address`, `city`, `country`, `state`, `zip`, `company`, `age`, `taxid`, `fax`, `sew1`, `sew2`, `sew3`, `sew4`, `needlework`, `quilting`, `crafting`, `sewex1`, `sewex2`, `sewex3`, `other`, `companyurl`, `datereg`, `credits`, `activeblog`, `rate`, `photo`, `loyal`) VALUES
(27, 'admin', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'admin@ecwm.com', 'Admin', 'Admin', 2, '', '', 'calunan', 'Mrs.', '9999499', 'ul A o', 'Kiev', 'Angola', 'Cunene', 898989, 'home', 'Select', '234567', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fsdfsdf', '', '0000-00-00 00:00:00', 742, 1, 3, '28775025.jpg', 1),
(50, 'pkarpushin', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'pk@gmail.com', '', '', 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-10-04 22:07:23', 0, 1, 3, '13718698.jpg', 1),
(53, 'Nikolai', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'nikolai@ecwm.com', 'Karpushin', '', 1, '', '', '', 'Selec', '', '', 'asad', 'USA', 'Illinois', 345345, '', 'Select', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-10-28 21:20:54', 0, 1, 3, '17213669.png', 1),
(54, 'asd', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'sdf@r.net', 'asd', '', 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-10-30 11:56:55', 0, 1, 1, 'default.jpg', 1),
(55, 'Anton', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'anton.katrus@ukr.net', 'Katrus', '', 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-11-07 10:15:53', 0, 1, 1, 'default.jpg', 1),
(56, 'Ant', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 't@a.net', 'And', '', 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-11-13 11:00:42', 0, 1, 1, '19775391.jpg', 1),
(57, 'fir', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'nik@rt.com', 'sec', '', 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-11-13 11:04:22', 0, 1, 1, 'default.jpg', 1),
(58, 'sdf', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'Asd@n.net', 'ddd', '', 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-11-13 11:07:30', 0, 1, 1, 'default.jpg', 1),
(59, 'asd', '3e8c5cfdf0472a1cf4f095979ec0f4b7', '28b206548469ce62182048fd9cf91760', 'my@df.net', 'ddd', 'asd', 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '2013-11-13 11:09:09', 0, 1, 1, 'default.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `photo_id` int(7) NOT NULL DEFAULT '0',
  `author_id` int(8) NOT NULL DEFAULT '0',
  `date_vote` int(12) NOT NULL,
  KEY `photo_id` (`photo_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `votes`
--

INSERT INTO `votes` (`photo_id`, `author_id`, `date_vote`) VALUES
(341, 27, 1385630394),
(348, 27, 1385630886),
(351, 27, 1385631230),
(359, 27, 1385632388),
(360, 27, 1385632405),
(357, 27, 1385720374);

-- --------------------------------------------------------

--
-- Структура таблицы `winner`
--

CREATE TABLE IF NOT EXISTS `winner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `place` int(11) NOT NULL DEFAULT '100',
  `contest_id` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `photo_id` (`photo_id`),
  KEY `contest_id` (`contest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `winner`
--

INSERT INTO `winner` (`id`, `author_id`, `photo_id`, `place`, `contest_id`, `credits`) VALUES
(1, 53, 343, 1, 63, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
