-- phpMyAdmin SQL Dump
-- version 4.3.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 02, 2016 at 02:55 PM
-- Server version: 5.6.23
-- PHP Version: 5.4.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pom`
--

-- --------------------------------------------------------

--
-- Table structure for table `aiml`
--

CREATE TABLE IF NOT EXISTS `aiml` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL DEFAULT '1',
  `aiml` text NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `thatpattern` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `topic` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30133 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aiml`
--

INSERT INTO `aiml` (`id`, `bot_id`, `aiml`, `pattern`, `thatpattern`, `template`, `topic`, `filename`) VALUES
(30132, 1, '<category>  <pattern>WIKI *</pattern>  <template><wiki><star/></wiki></template></category>', 'WIKI *', '', '<wiki><star/></wiki>', '', 'wiki.aiml');

-- --------------------------------------------------------

--
-- Table structure for table `aiml_userdefined`
--

CREATE TABLE IF NOT EXISTS `aiml_userdefined` (
  `id` int(11) NOT NULL,
  `aiml` text NOT NULL,
  `pattern` text NOT NULL,
  `thatpattern` text NOT NULL,
  `template` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `botpersonality`
--

CREATE TABLE IF NOT EXISTS `botpersonality` (
  `id` int(11) NOT NULL,
  `bot_id` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `botpersonality`
--

INSERT INTO `botpersonality` (`id`, `bot_id`, `name`, `value`) VALUES
(1, 1, 'name', 'Chitti'),
(2, 1, 'gender', ''),
(3, 1, 'botmaster', ''),
(4, 1, 'master', 'Manikandan'),
(5, 1, 'age', ''),
(6, 1, 'website', ''),
(7, 1, 'email', ''),
(8, 1, 'birthday', ''),
(9, 1, 'birthplace', ''),
(10, 1, 'size', ''),
(11, 1, 'version', ''),
(12, 1, 'build', ''),
(13, 1, 'language', ''),
(14, 1, 'feelings', ''),
(15, 1, 'etype', ''),
(16, 1, 'emotions', ''),
(17, 1, 'ethics', ''),
(18, 1, 'orientation', ''),
(19, 1, 'baseballteam', ''),
(20, 1, 'footballteam', ''),
(21, 1, 'hockeyteam', ''),
(22, 1, 'favoritesport', ''),
(23, 1, 'vocabulary', ''),
(24, 1, 'celebrities', ''),
(25, 1, 'celebrity', ''),
(26, 1, 'favoriteactor', ''),
(27, 1, 'favoriteactress', ''),
(28, 1, 'favoriteartist', ''),
(29, 1, 'favoritemusician', ''),
(30, 1, 'favoritesong', ''),
(31, 1, 'favoriteauthor', ''),
(32, 1, 'friend', ''),
(33, 1, 'nationality', ''),
(34, 1, 'religion', ''),
(35, 1, 'president', ''),
(36, 1, 'party', ''),
(37, 1, 'kingdom', ''),
(38, 1, 'phylum', ''),
(39, 1, 'class', ''),
(40, 1, 'order', ''),
(41, 1, 'family', ''),
(42, 1, 'genus', ''),
(43, 1, 'species', ''),
(44, 1, 'boyfriend', ''),
(45, 1, 'favoritebook', ''),
(46, 1, 'favoriteband', ''),
(47, 1, 'favoritecolor', ''),
(48, 1, 'favoritefood', ''),
(49, 1, 'favoritemovie', ''),
(50, 1, 'forfun', ''),
(51, 1, 'friends', ''),
(52, 1, 'girlfriend', ''),
(53, 1, 'kindmusic', ''),
(54, 1, 'location', ''),
(55, 1, 'looklike', ''),
(56, 1, 'question', ''),
(57, 1, 'sign', ''),
(58, 1, 'talkabout', ''),
(59, 1, 'wear', ''),
(60, 1, 'loves', '');

-- --------------------------------------------------------

--
-- Table structure for table `bots`
--

CREATE TABLE IF NOT EXISTS `bots` (
  `bot_id` int(11) NOT NULL,
  `bot_name` varchar(255) NOT NULL,
  `bot_desc` varchar(255) NOT NULL,
  `bot_active` int(11) NOT NULL DEFAULT '1',
  `bot_parent_id` int(11) NOT NULL DEFAULT '0',
  `format` varchar(10) NOT NULL DEFAULT 'html',
  `save_state` enum('session','database') NOT NULL DEFAULT 'session',
  `conversation_lines` int(11) NOT NULL DEFAULT '7',
  `remember_up_to` int(11) NOT NULL DEFAULT '10',
  `debugemail` text NOT NULL,
  `debugshow` int(11) NOT NULL DEFAULT '1',
  `debugmode` int(11) NOT NULL DEFAULT '1',
  `error_response` text NOT NULL,
  `default_aiml_pattern` varchar(255) NOT NULL DEFAULT 'RANDOM PICKUP LINE',
  `unknown_user` varchar(255) NOT NULL DEFAULT 'Seeker'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bots`
--

INSERT INTO `bots` (`bot_id`, `bot_name`, `bot_desc`, `bot_active`, `bot_parent_id`, `format`, `save_state`, `conversation_lines`, `remember_up_to`, `debugemail`, `debugshow`, `debugmode`, `error_response`, `default_aiml_pattern`, `unknown_user`) VALUES
(1, 'Chitti', 'v2.0 upgraded', 1, 1, 'json', 'session', 10, 10, 'mani@tadka.com', 4, 1, '', 'RANDOM PICKUP LINE', 'Seeker');

-- --------------------------------------------------------

--
-- Table structure for table `client_properties`
--

CREATE TABLE IF NOT EXISTS `client_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_properties`
--

INSERT INTO `client_properties` (`id`, `user_id`, `bot_id`, `name`, `value`) VALUES
(1, 1, 1, 'name', 'Seeker'),
(2, 2, 1, 'name', 'Seeker'),
(3, 3, 1, 'name', 'Seeker'),
(4, 4, 1, 'name', 'Seeker'),
(5, 5, 1, 'name', 'Seeker'),
(6, 6, 1, 'name', 'Seeker'),
(7, 7, 1, 'name', 'Seeker'),
(8, 8, 1, 'name', 'Seeker'),
(9, 8, 1, 'personality', 'abusive'),
(10, 9, 1, 'name', 'Seeker'),
(11, 10, 1, 'name', 'Seeker'),
(12, 11, 1, 'name', 'Seeker'),
(13, 12, 1, 'name', 'Seeker'),
(14, 13, 1, 'name', 'Seeker'),
(15, 14, 1, 'name', 'Seeker'),
(16, 15, 1, 'name', 'Seeker'),
(17, 16, 1, 'name', 'Seeker'),
(18, 17, 1, 'name', 'Seeker'),
(19, 18, 1, 'name', 'Seeker'),
(20, 18, 1, 'personality', 'abusive'),
(21, 19, 1, 'name', 'Seeker'),
(22, 20, 1, 'name', 'Seeker'),
(23, 21, 1, 'name', 'Seeker'),
(24, 22, 1, 'name', 'Seeker');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_log`
--

CREATE TABLE IF NOT EXISTS `conversation_log` (
  `id` int(11) NOT NULL,
  `input` text NOT NULL,
  `response` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `convo_id` text NOT NULL,
  `bot_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conversation_log`
--

INSERT INTO `conversation_log` (`id`, `input`, `response`, `user_id`, `convo_id`, `bot_id`, `timestamp`) VALUES
(211, 'WIKI SACHIN', '<a href="https://en.wikipedia.org/wiki/Sachin_Tendulkar" target="_blank">Sachin Tendulkar</a><br/>\n<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Sachin.Tendulkar.jpg/50px-Sachin.Tendulkar.jpg" width="50" height="45"/><br/>\nSachin Ramesh Tendulkar (/ˌsətʃɪn tɛnˈduːlkər/; born 24 April 1973) is a former Indian cricketer and captain, widely regarded as one of the greatest batsmen of all time.', 22, 'o6o32m8j7gbjhrhq4qbfts6f61', 1, '2016-04-03 05:43:33'),
(210, 'WIKI MANIKANDAN', '<a href="https://en.wikipedia.org/wiki/Manikandan_(actor)" target="_blank">Manikandan (actor)</a><br/>\n<br/>\nManikandan is an Indian film actor, who has appeared in Tamil language films. He has acted in films including Boys (2003) and Kicha Vayasu 16 (2005).', 22, 'o6o32m8j7gbjhrhq4qbfts6f61', 1, '2016-04-03 05:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `myprogramo`
--

CREATE TABLE IF NOT EXISTS `myprogramo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_ip` varchar(25) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myprogramo`
--

INSERT INTO `myprogramo` (`id`, `user_name`, `password`, `last_ip`, `last_login`) VALUES
(1, 'xqsit94', '42414c02583006fe418be4b110284ae7', '::1', '2016-07-02 14:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `spellcheck`
--

CREATE TABLE IF NOT EXISTS `spellcheck` (
  `id` int(11) NOT NULL,
  `missspelling` varchar(100) NOT NULL,
  `correction` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spellcheck`
--

INSERT INTO `spellcheck` (`id`, `missspelling`, `correction`) VALUES
(1, 'shakespear', 'shakespeare'),
(2, 'shakesper', 'shakespeare'),
(3, 'ws', 'william shakespeare'),
(4, 'shakespaer', 'shakespeare'),
(5, 'shakespere', 'shakespeare'),
(6, 'shakepeare', 'shakespeare'),
(7, 'shakeper', 'shakespeare'),
(8, 'willam', 'william'),
(9, 'willaim', 'william'),
(10, 'romoe', 'romeo'),
(11, 'julet', 'juliet'),
(12, 'juleit', 'juliet'),
(13, 'thats', 'that is'),
(89, 'Youa aare', 'you are'),
(88, 'that s', 'that is'),
(87, 'wot s', 'what is'),
(17, 'whats', 'what is'),
(18, 'wot', 'what'),
(19, 'wots', 'what is'),
(86, 'what s', 'what is'),
(21, 'lool', 'lol'),
(27, 'pogram', 'program'),
(23, 'progam', 'program'),
(26, 'progam', 'program'),
(28, 'r', 'are'),
(29, 'u', 'you'),
(30, 'ur', 'your'),
(31, 'v', 'very'),
(32, 'k', 'ok'),
(33, 'np', 'no problem'),
(34, 'ta', 'thank you'),
(35, 'ty', 'thank you'),
(36, 'omg', 'oh my god'),
(37, 'letts', 'lets'),
(38, 'yeah', 'yes'),
(39, 'yeh', 'yes'),
(40, 'portugues', 'portuguese'),
(41, 'hehe', 'lol'),
(42, 'ha', 'lol'),
(43, 'intersting', 'interesting'),
(44, 'qestion', 'question'),
(45, 'elrond hubbard', 'l.ron hubbard'),
(46, 'programm', 'program'),
(47, 'c''mon', 'come on'),
(48, 'ye', 'yes'),
(49, 'im', 'i am'),
(50, 'fuckahh', 'fucker'),
(51, 'shakespeare bot', 'shakespearebot'),
(52, 'goodf', 'good'),
(53, 'dont', 'do not'),
(54, 'cos', 'because'),
(55, 'cus', 'because'),
(56, 'coz', 'because'),
(57, 'cuz', 'because'),
(58, 'isnt', 'is not'),
(59, 'isn''t', 'is not'),
(60, 'i''m', 'i am'),
(61, 'ima', 'i am a'),
(62, 'chheese', 'cheese'),
(63, 'watsup', 'what is up'),
(64, 'let s', 'let us'),
(65, 'he s', 'he is'),
(66, 'she''s', 'she is'),
(67, 'i ll', 'i will'),
(68, 'they ll', 'they will'),
(69, 'you re', 'you are'),
(70, 'you ve', 'you have'),
(71, 'hy', 'hey'),
(72, 'msician', 'musician'),
(74, 'don t', 'do not'),
(75, 'can t', 'cannot'),
(76, 'favourite', 'favorite'),
(77, 'colour', 'color'),
(78, 'won t', 'will not'),
(79, 'a/s/l', 'asl'),
(80, 'haven t', 'have not'),
(81, 'doesn t', 'does not'),
(82, 'a/s/l/', 'asl'),
(83, 'wht', 'what'),
(84, 'It s been', 'It has been'),
(85, 'its been', 'it has been'),
(90, 'you re', 'you are'),
(91, 'theres', 'there is'),
(92, 'youa re', 'you are'),
(93, 'youa aare', 'you are'),
(94, 'wath', 'what'),
(95, 'waths', 'what is'),
(96, 'hy', 'hey'),
(97, 'oke', 'ok'),
(98, 'okay', 'ok'),
(99, 'errm', 'erm'),
(100, 'aare', 'are'),
(101, 'shakespeare bot', 'william shakespeare'),
(102, 'shakespearebot', 'william shakespeare'),
(103, 'werwerwer', 'war'),
(109, 'program o', 'programo'),
(106, 'ddddddddd', 'ddddddddd'),
(107, 'ddddddddd', 'ddddddddd'),
(108, 'fgfgfgfg', 'fgfgfgfg'),
(110, 'program-o', 'programo'),
(111, 'fav', 'favorite');

-- --------------------------------------------------------

--
-- Table structure for table `srai_lookup`
--

CREATE TABLE IF NOT EXISTS `srai_lookup` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `pattern` text NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Contains previously stored SRAI calls';

--
-- Dumping data for table `srai_lookup`
--

INSERT INTO `srai_lookup` (`id`, `bot_id`, `pattern`, `template_id`) VALUES
(1, 1, 'INTERJECTION', 14079),
(2, 1, 'SO', 14075),
(3, 1, 'HA HA', 916),
(4, 1, 'HA', 23882),
(5, 1, 'HAH', 23879),
(6, 1, 'SMILE', 25559),
(7, 1, 'H G', 997),
(8, 1, 'WHAT IS YOUR NAME', 6773),
(9, 1, 'ARE YOU SAD', 13098);

-- --------------------------------------------------------

--
-- Table structure for table `undefined_defaults`
--

CREATE TABLE IF NOT EXISTS `undefined_defaults` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pattern` text NOT NULL,
  `template` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `undefined_defaults`
--

INSERT INTO `undefined_defaults` (`id`, `bot_id`, `user_id`, `pattern`, `template`) VALUES
(1, 1, 0, 'your name', 'my friend'),
(2, 1, 0, 'your it', 'it'),
(3, 1, 0, 'your location', 'your town'),
(4, 1, 0, 'your does', 'it'),
(5, 1, 0, 'your genus', 'human'),
(6, 1, 0, 'your he', 'him'),
(7, 1, 0, 'your she', 'her'),
(8, 1, 0, 'your them', 'those'),
(9, 1, 0, 'your memory', 'that'),
(10, 1, 0, 'your they', 'those'),
(11, 1, 0, 'your gender', 'woman'),
(12, 1, 0, 'your has', 'that'),
(13, 1, 0, 'your we', 'you and me'),
(14, 1, 0, 'your x', 'x'),
(15, 1, 0, 'your personality', 'chatty'),
(16, 1, 0, 'etype', 'great and witty'),
(17, 1, 0, 'your top', 'om'),
(18, 1, 0, 'your second', 'om'),
(19, 1, 0, 'your third', 'om'),
(20, 1, 0, 'your fourth', 'om'),
(21, 1, 0, 'your fifth', 'om'),
(22, 1, 0, 'your sixth', 'om'),
(23, 1, 0, 'your seventh', 'om'),
(24, 1, 0, 'your last', 'om'),
(25, 1, 0, 'your want', 'it'),
(26, 1, 0, 'your is', 'it'),
(27, 1, 0, 'you dealerhand', 'The dealers hand'),
(28, 1, 0, 'your playerhand', 'Your hand'),
(29, 1, 0, 'your dealerace', 'dealer total'),
(30, 1, 0, 'your playerace', 'your total');

-- --------------------------------------------------------

--
-- Table structure for table `unknown_inputs`
--

CREATE TABLE IF NOT EXISTS `unknown_inputs` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `input` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `chatlines` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `referer` text NOT NULL,
  `browser` text NOT NULL,
  `date_logged_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `session_id`, `bot_id`, `chatlines`, `ip`, `referer`, `browser`, `date_logged_on`, `last_update`, `state`) VALUES
(1, 'Seeker', '5epuuo1a6djhl8e8j0ah9phuc2', 1, 0, '::1', 'http://localhost/pom/gui/plain/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '2016-02-06 05:25:42', '2016-02-06 05:25:42', ''),
(2, 'Seeker', 'nllskp5mt5g3se9gvsjmgb5cv5', 1, 0, '::1', 'http://localhost/pom/gui/plain/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-15 17:58:01', '2016-03-15 17:58:01', ''),
(3, 'Seeker', '46m38fr7ib5j89kog8ri3qroo1', 1, 0, '::1', 'http://localhost/pom/gui/plain/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-15 18:25:14', '2016-03-15 18:25:14', ''),
(4, 'Seeker', 'favd2o719i60rq2p0dqqnl71f7', 1, 0, '::1', 'http://localhost/pom/gui/plain/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-15 18:32:42', '2016-03-15 18:32:42', ''),
(5, 'Seeker', 'ofe87dklgnirrpabgob0dkjdp5', 1, 0, '::1', 'http://localhost/pom/gui/plain/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-15 18:33:02', '2016-03-15 18:33:02', ''),
(6, 'Seeker', 'k3pr5tq379lf9saim2hlsmm8d4', 1, 0, '::1', 'http://localhost/pom/gui/plain/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-15 18:33:54', '2016-03-15 18:33:54', ''),
(7, 'Seeker', 'trsjcn755b6h7jmq8dtmd3r6n6', 1, 0, '::1', 'http://localhost/pom/gui/plain/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-15 18:34:15', '2016-03-15 18:34:15', ''),
(8, 'Seeker', 'rn367rtc4v3lqbjha4jaljasv1', 1, 0, '::1', 'http://localhost/pom/gui/plain/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-16 01:43:21', '2016-03-16 01:43:21', ''),
(9, 'Seeker', 'dol9mv5k56snn8vj7tprqv0j17', 1, 0, '::1', 'http://localhost/pom/gui/plain/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-20 04:37:20', '2016-03-20 04:37:20', ''),
(10, 'Seeker', 'plr1eov860dtqauurjfnctbat4', 1, 0, '::1', 'http://localhost/pom/gui/plain/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-20 05:14:17', '2016-03-20 05:14:17', ''),
(11, 'Seeker', 'a77fo2ucdjon8ah39ml0ke1d27', 1, 0, '172.16.205.49', 'http://172.16.205.49/pom/gui/plain/', 'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; IBALL; Andi4L) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', '2016-03-20 10:25:58', '2016-03-20 10:25:58', ''),
(12, 'Seeker', 'aopad2ks39v6dj08pufq6fmdo6', 1, 0, '::1', 'http://localhost/pom/gui/plain/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-20 14:05:18', '2016-03-20 14:05:18', ''),
(13, 'Seeker', '13a1umgn6igjp598g9jspgdbh1', 1, 0, '::1', 'http://localhost/pom/gui/plain/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-22 13:38:16', '2016-03-22 13:38:16', ''),
(14, 'Seeker', 'f7663cu7ghte58unlpaugblrm2', 1, 0, '::1', 'http://localhost/pom/gui/jquery/?bot_id=1&format=json', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-22 14:05:38', '2016-03-22 14:05:38', ''),
(15, 'Seeker', 'rpgsk7g72512ij4296f6l80ue2', 1, 0, '::1', 'http://localhost/pom/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-22 14:19:32', '2016-03-22 14:19:32', ''),
(16, 'Seeker', '5dj05cquqa50oc8bdbr85ngbj0', 1, 0, '::1', 'http://localhost/pom/index.php', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-22 17:28:13', '2016-03-22 17:28:13', ''),
(17, 'Seeker', '8ejgpg9a9qv7vnr42nt2s36lu3', 1, 0, '172.16.205.49', 'http://172.16.205.49/pom/', 'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; IBALL; Andi4L) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', '2016-03-22 17:34:18', '2016-03-22 17:34:18', ''),
(18, 'Seeker', 'sro4sqjbhg7hr3c9omjj7srbi6', 1, 0, '::1', 'http://localhost/pom/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-26 13:51:09', '2016-03-26 13:51:09', ''),
(19, 'Seeker', '49akeine2cfn71par2id8k0o67', 1, 0, '::1', 'http://localhost/pom/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-27 10:37:09', '2016-03-27 10:37:09', ''),
(20, 'Seeker', '9cfbfv8hcbkom0hoik8t09p7m3', 1, 0, '::1', 'http://localhost/pom/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-28 15:38:05', '2016-03-28 15:38:05', ''),
(21, 'Seeker', 'priv79jum6nsbor146b8hpit75', 1, 0, '::1', 'http://localhost/pom/', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-28 17:36:10', '2016-03-28 17:36:10', ''),
(22, 'Seeker', 'o6o32m8j7gbjhrhq4qbfts6f61', 1, 0, '::1', 'http://localhost/pom/?bot_id=1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-04-03 05:43:17', '2016-04-03 05:43:17', '');

-- --------------------------------------------------------

--
-- Table structure for table `wordcensor`
--

CREATE TABLE IF NOT EXISTS `wordcensor` (
  `censor_id` int(11) NOT NULL,
  `word_to_censor` varchar(50) NOT NULL,
  `replace_with` varchar(50) NOT NULL DEFAULT '****',
  `bot_exclude` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wordcensor`
--

INSERT INTO `wordcensor` (`censor_id`, `word_to_censor`, `replace_with`, `bot_exclude`) VALUES
(1, 'shit', 's***', ''),
(2, 'fuck', 'f***', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aiml`
--
ALTER TABLE `aiml`
  ADD PRIMARY KEY (`id`), ADD KEY `topic` (`topic`);

--
-- Indexes for table `aiml_userdefined`
--
ALTER TABLE `aiml_userdefined`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `botpersonality`
--
ALTER TABLE `botpersonality`
  ADD PRIMARY KEY (`id`), ADD KEY `botname` (`bot_id`,`name`);

--
-- Indexes for table `bots`
--
ALTER TABLE `bots`
  ADD PRIMARY KEY (`bot_id`);

--
-- Indexes for table `client_properties`
--
ALTER TABLE `client_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversation_log`
--
ALTER TABLE `conversation_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myprogramo`
--
ALTER TABLE `myprogramo`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `spellcheck`
--
ALTER TABLE `spellcheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srai_lookup`
--
ALTER TABLE `srai_lookup`
  ADD PRIMARY KEY (`id`), ADD KEY `pattern` (`pattern`(64));

--
-- Indexes for table `undefined_defaults`
--
ALTER TABLE `undefined_defaults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unknown_inputs`
--
ALTER TABLE `unknown_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wordcensor`
--
ALTER TABLE `wordcensor`
  ADD PRIMARY KEY (`censor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aiml`
--
ALTER TABLE `aiml`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30133;
--
-- AUTO_INCREMENT for table `aiml_userdefined`
--
ALTER TABLE `aiml_userdefined`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `botpersonality`
--
ALTER TABLE `botpersonality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `bots`
--
ALTER TABLE `bots`
  MODIFY `bot_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `client_properties`
--
ALTER TABLE `client_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `conversation_log`
--
ALTER TABLE `conversation_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `myprogramo`
--
ALTER TABLE `myprogramo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spellcheck`
--
ALTER TABLE `spellcheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `srai_lookup`
--
ALTER TABLE `srai_lookup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `undefined_defaults`
--
ALTER TABLE `undefined_defaults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `unknown_inputs`
--
ALTER TABLE `unknown_inputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wordcensor`
--
ALTER TABLE `wordcensor`
  MODIFY `censor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
