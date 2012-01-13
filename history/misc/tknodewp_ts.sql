-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2011 at 09:03 PM
-- Server version: 5.1.56
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tknodewp_ts`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_user` varchar(30) DEFAULT NULL,
  `com_dis` text,
  `youtubecode` varchar(25) DEFAULT NULL,
  `upload_date` datetime NOT NULL,
  PRIMARY KEY (`com_id`),
  KEY `youtubecode` (`youtubecode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=197 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `com_user`, `com_dis`, `youtubecode`, `upload_date`) VALUES
(1, 'redeye', 'bitttch', 'ABqh9N-Mw5E', '2011-11-06 20:41:55'),
(2, 'test', 'test', 'esALI7kQiSQ', '2011-11-06 20:41:55'),
(3, 'redeye', 'new test', 'esALI7kQiSQ', '2011-11-06 20:41:55'),
(14, 'redeye', 'test\r\nxh4Rk-RDX5A', 'xh4Rk-RDX5A', '2011-11-06 20:41:55'),
(55, 'Diana', 'Calvin is soooo hot', 'xh4Rk-RDX5A', '2011-11-06 21:52:15'),
(62, 'Redeye', 'Shit is working?!', 'xh4Rk-RDX5A', '2011-11-07 09:25:10'),
(84, 'redeye', 'dfd', 'NI2b7qXUlnE', '2011-11-08 00:20:09'),
(85, 'redeye', 'df', 'n01UOw5uEhw', '2011-11-08 00:20:14'),
(86, 'redeye', 'fd', 'NI2b7qXUlnE', '2011-11-08 00:23:30'),
(87, 'redeye', 'dfd', 'NI2b7qXUlnE', '2011-11-08 00:24:55'),
(88, 'redeye', 'aa', 'n01UOw5uEhw', '2011-11-08 00:25:01'),
(89, 'redeye', 'aaaaa', 'NI2b7qXUlnE', '2011-11-08 00:27:17'),
(90, 'redeye', 'zas', 'NI2b7qXUlnE', '2011-11-08 00:28:37'),
(95, 'redeye', 'SERIOUSLY!?', 'n01UOw5uEhw', '2011-11-08 00:33:01'),
(101, 'redeye', 'AWESOME NEW MAU5!!!', 'b7XF3kry_Ck', '2011-11-08 00:38:52'),
(104, 'agd''f', 'adf', 'NI2b7qXUlnE', '2011-11-08 00:57:55'),
(107, 'daf', 'dfa', 'lFg299gDDSw', '2011-11-08 01:00:37'),
(112, 'redeye', 'Awesome. ', 'QJMarLOxzNk', '2011-11-08 09:58:06'),
(116, 'redeye', 'One of my favorite of netsky''s', 'cG7cRDcPY3k', '2011-11-08 15:55:22'),
(118, 'redeye', 'still amazed the comments work', 'Eed_x1LeUu8', '2011-11-08 16:28:33'),
(119, 'Reed', 'jizz jizz jizz jizz jizz', 'TAx0eLxsYr0', '2011-11-08 16:34:49'),
(120, 'Randy', 'He''s amazing', 'xdaGfBjNB-Q', '2011-11-08 17:09:54'),
(123, 'calvin', 'test', 'YFRxGc8vlaU', '2011-11-09 14:00:17'),
(126, 'aflock', 'yeaaa', 'kVk1HOlkq_o', '2011-11-09 15:59:25'),
(127, 'Calvin', 'why does shit work on my machine but not online! damn you science', 'YFRxGc8vlaU', '2011-11-09 19:14:23'),
(129, 'Calvin', 'nvm it works everywhere if I upload the correct files...', 'YFRxGc8vlaU', '2011-11-09 19:46:16'),
(130, 'Hursh', 'Lol, I just gave like 20 upvotes. Oops.', 'YFRxGc8vlaU', '2011-11-09 19:49:34'),
(131, 'Angry Calvin Says:', 'h4x0rz!', 'YFRxGc8vlaU', '2011-11-09 19:53:09'),
(138, 'Aflock', 'fuckya', 'TAx0eLxsYr0', '2011-11-09 22:37:14'),
(140, 'Calvin', 'Welcome! Click other songs to open them up. Vote on shit here -->', 'esALI7kQiSQ', '2011-11-10 01:45:33'),
(141, 'Mark-', 'cool 8)', 'LOJIMJBcBz4', '2011-11-10 12:51:29'),
(142, 'Calvin', 'I like this a lot', 'DZ5EdLfCMN4', '2011-11-10 15:31:27'),
(143, 'Anonymous', 'asdfad', 'X13ocJRMEYI', '2011-11-10 19:31:48'),
(144, 'Anonymous', 'oh hey', 'LaIZ0mUJzr0', '2011-11-10 19:51:14'),
(145, 'aflock', 'we gotta find a way to up the bitrate....', 'esALI7kQiSQ', '2011-11-10 20:38:45'),
(146, 'Anonymous', 'asdfasdfasdfas', 'X13ocJRMEYI', '2011-11-10 20:53:13'),
(147, 'Anonymous', 'while(1){alert(\\"haxx\\")}\n', 'kVk1HOlkq_o', '2011-11-10 20:55:14'),
(148, 'Anonymous', 'ubuntu test', 'esALI7kQiSQ', '2011-11-10 22:08:39'),
(149, 'Anonymous', 'DELETE FROM songs WHERE youtubecode=youtubecode', 'esALI7kQiSQ', '2011-11-10 22:09:45'),
(150, 'Anonymous', 'Nope, fixed that shit', 'esALI7kQiSQ', '2011-11-10 22:10:08'),
(151, 'Anonymous', 'afads', 'esALI7kQiSQ', '2011-11-10 23:15:20'),
(152, 'Anonymous', 'kj', 'esALI7kQiSQ', '2011-11-11 03:18:59'),
(153, 'Sexually Confused Calvin', 'anyone looking for some fun...', 'YFRxGc8vlaU', '2011-11-11 10:11:33'),
(154, 'Redeye', 'BACK UP', 'X13ocJRMEYI', '2011-11-11 15:59:41'),
(155, 'Anonymous', 'f', 'X13ocJRMEYI', '2011-11-14 13:44:38'),
(156, 'Anonymous', 'test', 'X13ocJRMEYI', '2011-11-14 14:24:45'),
(157, 'Anonymous', 'est', 'X13ocJRMEYI', '2011-11-14 14:24:48'),
(158, 'Anonymous', 'test', 'X13ocJRMEYI', '2011-11-14 14:24:53'),
(159, 'Anonymous', 'test', 'X13ocJRMEYI', '2011-11-14 14:25:03'),
(160, 'Anonymous', 'Mobile test', 'X13ocJRMEYI', '2011-11-17 14:39:10'),
(161, 'Calvin', 'Love the bloody beetroots', '5Kh2zAjcUR0', '2011-11-19 03:12:40'),
(162, 'Anonymous', 'Uber sick', 'xrQFC1dqXz8', '2011-11-19 12:50:30'),
(163, 'Anonymous', 'This site design is puke.', 'X13ocJRMEYI', '2011-11-20 17:17:44'),
(164, 'Calvin', 'lol I know, working on it', 'X13ocJRMEYI', '2011-11-20 18:18:57'),
(165, 'TorrThizz', 'love it', 'o4MvKCqook0', '2011-11-20 22:45:16'),
(166, 'TorrThizz', 'This song is bomb.com', '6TQVB-SbzJI', '2011-11-20 22:48:38'),
(167, 'Anonymous', 'Zedd does it again!? great jam', '5KFjrbR49bo', '2011-11-20 22:56:47'),
(168, 'TorrThizz', 'Zedd does it again!? great jam', '5KFjrbR49bo', '2011-11-20 22:57:17'),
(169, 'redeye', 'Dirty ', 'o4MvKCqook0', '2011-11-21 14:52:58'),
(170, 'Cal', 'very nice', 'WZJaH0ZXBGo', '2011-11-21 17:47:12'),
(171, 'TorrThizz', 'nice and relaxing', 'B72qpdCdznk', '2011-11-22 01:18:54'),
(172, 'DirtySanchez69(torrthizz)', 'great song', 'WZJaH0ZXBGo', '2011-11-22 01:42:00'),
(173, 'CumBrotherWhereArtThou', 'WATAAH?!', 'Q7YrriC-1nM', '2011-11-22 13:47:48'),
(174, 'Anonymous', '^Has a douches name, but he is right.', '6TQVB-SbzJI', '2011-11-23 14:34:58'),
(175, 'Anonymous', 'test & shit', 'aIDzHxb8b_s', '2011-11-25 13:57:39'),
(176, 'Anonymous', 'yeaaaa ampersands work', 'aIDzHxb8b_s', '2011-11-25 13:57:55'),
(177, 'Anonymous', 'Makes me all tingly inside', 'LuS_Tnf0zRw', '2011-11-25 14:09:20'),
(178, 'Hyperfaiq', 'Wasn\\''t sure of the category; please don\\''t kill me. ', '02kTX2rav4w', '2011-11-26 23:22:56'),
(179, 'Hyperfaiq', 'Just give it a chance - is all I ask. Enjoy.', 'nEJHueJiBvc', '2011-11-26 23:37:16'),
(180, 'cal', 'Zedd is kicking ass lately', '9bcu33Be2Sw', '2011-11-28 13:53:19'),
(181, 'Anonymous', 'So awesome', 'TYMj1vxsehY', '2011-11-28 17:15:25'),
(182, 'redeye', 'Love Rammstein and love this remix', 'hwfOxLt0GNM', '2011-11-29 22:28:22'),
(183, 'Anonymous', 'test', 'UzbdD5BubC4', '2011-12-02 21:21:31'),
(184, 'Anonymous', 'Get\\''s epic at 1:00', 'iOu3FExWw2E', '2011-12-02 21:33:04'),
(185, 'redeye', 'Still remember the first time I heard this, dislocated my neck headbanging', 'Venj1n7zH-M', '2011-12-02 21:50:41'),
(186, 'Vtor', 'Loving this song. Good Up OjoRojo', 'iOu3FExWw2E', '2011-12-05 10:53:19'),
(187, 'diana', 'stuck in my head 4eva\nstuck in my head 4eva.', 'BWvmlqHsZ1Y', '2011-12-06 01:07:54'),
(188, 'calvin', 'stuck in my head', 'KzGklOozcPo', '2011-12-06 01:21:19'),
(189, 'Anonymous', 'bassex', '4i8CpyRKTF8', '2011-12-06 01:43:23'),
(190, 'proc', 'This song is infectious', 'iOu3FExWw2E', '2011-12-06 14:10:52'),
(191, 'sound so chill', 'sound so chill', 'wgQkPkHEkBg', '2011-12-06 19:41:44'),
(192, 'Anonymous', 'daf', 'Opxrm1sEQEM', '2011-12-07 02:59:25'),
(193, 'Anonymous', 'How do you even classify this as one genre?', 'uTRoM4WMhss', '2011-12-08 21:56:47'),
(194, 'Anonymous', 'l;daksfj', 'uTRoM4WMhss', '2011-12-09 01:38:51'),
(195, 'Anonymous', 'l;kjlk', 'lziHJxIXJ2w', '2011-12-09 01:39:52'),
(196, 'Sanchezthizzle', 'verrrryyy niiiiiice', '5X-t0H-HOUE', '2011-12-11 22:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `ipcheck`
--

CREATE TABLE IF NOT EXISTS `ipcheck` (
  `ytcode` text NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipcheck`
--

INSERT INTO `ipcheck` (`ytcode`, `ip`) VALUES
('TAx0eLxsYr0', '10854'),
('QJMarLOxzNk', '108.54.58.61'),
('TAx0eLxsYr0', '68.175.4.129'),
('esALI7kQiSQ', '108.54.58.61'),
('esALI7kQiSQ', '74.95.143.2'),
('Eed_x1LeUu8', '144.92.123.129'),
('9rH1kT8EIOU', '144.92.123.129'),
('esALI7kQiSQ', '72.130.186.61'),
('DZ5EdLfCMN4', '108.54.58.61'),
('X13ocJRMEYI', '108.54.58.61'),
('BWvmlqHsZ1Y', '128.54.7.234'),
('F1K-BFbCTU8', '128.54.7.234'),
('kVk1HOlkq_o', '68.175.4.129'),
('esALI7kQiSQ', '216.165.95.71'),
('esALI7kQiSQ', '24.6.17.8'),
('LaIZ0mUJzr0', '24.6.17.8'),
('b7XF3kry_Ck', '72.130.186.61'),
('BWvmlqHsZ1Y', '72.130.186.61'),
('F1K-BFbCTU8', '72.130.186.61'),
('X13ocJRMEYI', '24.218.52.240'),
('X13ocJRMEYI', '216.165.95.64'),
('ABqh9N-Mw5E', '108.54.58.61'),
('FPoQsOBzlgQ', '108.54.58.61'),
('7z8PZJPm82Q', '108.54.58.61'),
('T84L69gdS40', '68.175.4.129'),
('HZBGSg1Jnck', '67.106.136.197'),
('7z8PZJPm82Q', '216.165.95.70'),
('T84L69gdS40', '216.165.95.69'),
('5Kh2zAjcUR0', '108.54.58.61'),
('aIDzHxb8b_s', '108.54.58.61'),
('xrQFC1dqXz8', '108.54.58.61'),
('LuS_Tnf0zRw', '216.165.95.71'),
('LuS_Tnf0zRw', '108.54.58.61'),
('o4MvKCqook0', '69.204.251.67'),
('o4MvKCqook0', '98.207.177.213'),
('6TQVB-SbzJI', '98.207.177.213'),
('msEM0LwfiHY', '98.207.177.213'),
('5KFjrbR49bo', '98.207.177.213'),
('o4MvKCqook0', '108.54.58.61'),
('xPbbVfTxEQY', '108.54.58.61'),
('zcFMkSt9jMk', '46.193.128.173'),
('WZJaH0ZXBGo', '108.54.58.61'),
('Al8JCExkYOc', '108.54.58.61'),
('B72qpdCdznk', '98.207.177.213'),
('WSaLbpeGH_I', '98.207.177.213'),
('WZJaH0ZXBGo', '98.207.177.213'),
('J3C4RSUBaY8', '98.207.177.213'),
('Q7YrriC-1nM', '98.207.177.213'),
('LuS_Tnf0zRw', '108.14.113.48'),
('OtFWQ-EDL58', '108.14.113.48'),
('6TQVB-SbzJI', '204.246.138.4'),
('J3C4RSUBaY8', '204.246.138.4'),
('LuS_Tnf0zRw', '68.175.57.112'),
('s2rc1m8Pt1M', '69.86.85.125'),
('LuS_Tnf0zRw', '108.14.113.209'),
('zAU67tES9ak', '108.14.113.243'),
('LuS_Tnf0zRw', '173.73.156.219'),
('BWvmlqHsZ1Y', '173.73.156.219'),
('U-9w4BkLA4U', '173.73.156.219'),
('6xeg95XvynM', '173.73.156.219'),
('6I8NgRxTmhc', '173.73.156.219'),
('9PthCKaA2UE', '173.73.156.219'),
('W6OHq7WWcG0', '173.73.156.219'),
('y_x1-3X26iQ', '173.73.156.219'),
('QJMarLOxzNk', '173.73.156.219'),
('02kTX2rav4w', '173.73.156.219'),
('nEJHueJiBvc', '173.73.156.219'),
('HMh_jMz-ZoY', '108.14.113.243'),
('RpR8RkAQ7F8', '108.14.113.243'),
('02kTX2rav4w', '108.14.113.243'),
('b5PfYX2q0cI', '108.14.113.243'),
('U-9w4BkLA4U', '108.14.113.243'),
('6xeg95XvynM', '108.14.113.243'),
('9bcu33Be2Sw', '75.128.10.204'),
('9bcu33Be2Sw', '75.128.10.204'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('9bcu33Be2Sw', '216.165.95.64'),
('qEtwlhYbG9k', '216.165.95.64'),
('qEtwlhYbG9k', '216.165.95.64'),
('qEtwlhYbG9k', '216.165.95.64'),
('qEtwlhYbG9k', '216.165.95.64'),
('b5PfYX2q0cI', '216.165.95.64'),
('b5PfYX2q0cI', '216.165.95.64'),
('b5PfYX2q0cI', '216.165.95.64'),
('b5PfYX2q0cI', '216.165.95.64'),
('b5PfYX2q0cI', '216.165.95.64'),
('b5PfYX2q0cI', '216.165.95.64'),
('x_Db9qI11GY', '216.165.95.64'),
('x_Db9qI11GY', '216.165.95.64'),
('aIDzHxb8b_s', '216.165.95.64'),
('T84L69gdS40', '216.165.95.64'),
('gcejLp72iCE', '216.165.95.64'),
('B72qpdCdznk', '216.165.95.64'),
('nEJHueJiBvc', '46.193.128.173'),
('nEJHueJiBvc', '46.193.128.173'),
('nEJHueJiBvc', '46.193.128.173'),
('TYMj1vxsehY', '108.14.113.243'),
('TYMj1vxsehY', '108.14.113.243'),
('b5PfYX2q0cI', '108.14.113.243'),
('TYMj1vxsehY', '68.173.20.22'),
('TYMj1vxsehY', '68.173.20.22'),
('9bcu33Be2Sw', '69.86.85.125'),
('9bcu33Be2Sw', '69.86.85.125'),
('9bcu33Be2Sw', '69.86.85.125'),
('9bcu33Be2Sw', '69.86.85.125'),
('aIDzHxb8b_s', '140.247.160.61'),
('aIDzHxb8b_s', '140.247.160.61'),
('3oc5b5MetPE', '216.165.95.70'),
('JbNsBK3hi5Y', '216.165.95.70'),
('02kTX2rav4w', '108.14.113.243'),
('g8pT1IAAZ9A', '108.14.113.243'),
('qEa5C3P_GIY', '108.14.113.243'),
('g8pT1IAAZ9A', '108.14.113.243'),
('g8pT1IAAZ9A', '108.14.113.243'),
('Al8JCExkYOc', '108.14.113.243'),
('r0a-o16i_Gw', '108.14.113.243'),
('zAU67tES9ak', '98.207.177.213'),
('JSNbBZRTW34', '216.165.95.74'),
('hwfOxLt0GNM', '216.165.95.73'),
('w9XFUuZ8urU', '108.14.113.243'),
('b5PfYX2q0cI', '98.249.36.127'),
('b5PfYX2q0cI', '98.249.36.127'),
('EGPCXDn8hsI', '98.249.36.127'),
('_hLdHi1wWVc', '108.14.115.198'),
('FcmHgZjOqwQ', '98.249.36.127'),
('w9XFUuZ8urU', '98.249.36.127'),
('3W72wuTlbDg', '98.249.36.127'),
('iOu3FExWw2E', '108.14.115.198'),
('Venj1n7zH-M', '108.14.115.198'),
('ducIVKsKwEI', '108.14.115.198'),
('iOu3FExWw2E', '108.14.115.198'),
('Gb4Tmpu0iXQ', '216.165.95.68'),
('Gb4Tmpu0iXQ', '216.165.95.68'),
('Gb4Tmpu0iXQ', '216.165.95.68'),
('Gb4Tmpu0iXQ', '216.165.95.68'),
('iOu3FExWw2E', '216.165.95.73'),
('ducIVKsKwEI', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.72'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.72'),
('KzGklOozcPo', '216.165.95.72'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.74'),
('KzGklOozcPo', '216.165.95.72'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.74'),
('KzGklOozcPo', '216.165.95.74'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '216.165.95.72'),
('KzGklOozcPo', '216.165.95.72'),
('KzGklOozcPo', '216.165.95.73'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '74.66.133.10'),
('KzGklOozcPo', '108.14.115.198'),
('iHKkppVXHxQ', '108.14.115.198'),
('zAU67tES9ak', '108.14.115.198'),
('KzGklOozcPo', '137.54.26.173'),
('KzGklOozcPo', '137.54.26.173'),
('FcmHgZjOqwQ', '137.54.26.173'),
('FcmHgZjOqwQ', '137.54.26.173'),
('FcmHgZjOqwQ', '137.54.26.173'),
('lctrfB9QNUA', '108.54.61.203'),
('BWvmlqHsZ1Y', '68.175.57.112'),
('KzGklOozcPo', '108.54.61.203'),
('KzGklOozcPo', '108.54.61.203'),
('lctrfB9QNUA', '108.54.61.203'),
('HcMsGX855zo', '108.54.61.203'),
('T84L69gdS40', '98.116.197.134'),
('T84L69gdS40', '98.116.197.134'),
('T84L69gdS40', '98.116.197.134'),
('T84L69gdS40', '98.116.197.134'),
('X13ocJRMEYI', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('iOu3FExWw2E', '98.116.197.134'),
('OoDHA8dy7JM', '108.54.61.203'),
('UnPuY6GMCgs', '98.165.91.41'),
('UnPuY6GMCgs', '98.165.91.41'),
('UnPuY6GMCgs', '98.165.91.41'),
('UnPuY6GMCgs', '98.165.91.41'),
('UnPuY6GMCgs', '98.165.91.41'),
('lctrfB9QNUA', '216.165.95.72'),
('KzGklOozcPo', '216.165.95.72'),
('Opxrm1sEQEM', '108.54.61.203'),
('Lu3z9UhOA5M', '108.54.61.203'),
('draHobtKr10', '108.54.61.203'),
('5X-t0H-HOUE', '98.207.177.213'),
('5X-t0H-HOUE', '98.207.177.213'),
('C8466KXzWFg', '216.165.95.72'),
('kG5ND29OTwU', '216.165.95.74'),
('C8466KXzWFg', '108.54.49.177'),
('kG5ND29OTwU', '108.54.49.177'),
('5X-t0H-HOUE', '108.54.49.177'),
('u2Uif9N5dac', '98.207.177.213'),
('C8466KXzWFg', '98.207.177.213'),
('kG5ND29OTwU', '98.207.177.213'),
('3fuRBIfw-uc', '98.207.177.213'),
('lziHJxIXJ2w', '98.207.177.213'),
('OoDHA8dy7JM', '98.207.177.213'),
('6j3mDO3GVHM', '68.98.142.41'),
('89KV_LcbqsA', '68.98.142.41'),
('SrrMAbvQc9A', '24.6.17.8'),
('SrrMAbvQc9A', '24.6.17.8'),
('SrrMAbvQc9A', '24.6.17.8'),
('SrrMAbvQc9A', '24.6.17.8'),
('SrrMAbvQc9A', '24.6.17.8');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `title` varchar(255) NOT NULL COMMENT 'song title',
  `artist` varchar(255) NOT NULL,
  `genre` varchar(75) NOT NULL,
  `youtubecode` varchar(25) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `user` varchar(30) NOT NULL COMMENT 'username of submitting user',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ups` int(11) NOT NULL,
  `downs` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `youtubecode` (`youtubecode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=197 ;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`title`, `artist`, `genre`, `youtubecode`, `uploaded_on`, `user`, `id`, `ups`, `downs`, `score`) VALUES
('Feel So Close (Special Features Remix)', 'Calvin Harris', 'House', 'esALI7kQiSQ', '2011-11-02 12:35:56', 'Cal', 1, 3, 2, 1),
('The Longest Road (Deadmau5 Remix)', 'Deadmau5', 'House', 'xh4Rk-RDX5A', '2011-11-04 12:52:25', 'Cal', 3, 0, 0, 0),
('Hold On (Sub Focus Remix)', 'Rusko', 'Dubstep', 'NI2b7qXUlnE', '2011-11-04 13:01:43', 'Cal', 4, 0, 0, 0),
('Coming Home (Dirty South Remix)', 'Dirty Money ft. Skyler Grey', 'House', '6xeg95XvynM', '2011-11-05 14:47:33', 'Cal', 5, 1, 1, 0),
('Rotunda (Original Mix)', 'Markus Schulz & Jochen Miller', 'House', 'U-9w4BkLA4U', '2011-11-05 15:11:39', 'Cal', 6, 1, 1, 0),
('Levels', 'Avicii', 'House', 'kVk1HOlkq_o', '2011-11-05 16:27:32', 'Cal', 7, 1, 0, 1),
('Slam', 'Pendulum', 'DnB', 'ABqh9N-Mw5E', '2011-11-05 16:28:39', 'Cal', 8, 1, 0, 1),
('Could You Believe', 'ATB', 'Trance', '9rH1kT8EIOU', '2011-11-05 22:35:06', 'Cal', 9, 1, 0, 1),
('The Electric Dream', 'Mord Fustang', 'Electro', 'fGksXB6a6s0', '2011-11-05 22:36:18', 'Cal', 10, 0, 0, 0),
('Grand Theft Ecstasy', 'Feed Me', 'Electro', 'SvRt-NEuV28', '2011-11-05 23:39:40', 'Cal', 11, 0, 0, 0),
('Pink Lady', 'Feed Me', 'Electro', 'n01UOw5uEhw', '2011-11-05 23:56:32', 'Cal', 12, 0, 0, 0),
('To The Stars', 'Feed Me', 'Electro', 'lFg299gDDSw', '2011-11-05 23:57:46', 'Cal', 13, 0, 0, 0),
('Fake Tan', 'Louis La Roche', 'House', 'BWvmlqHsZ1Y', '2011-11-06 00:33:54', 'Cal', 14, 4, 0, 4),
('Why Do I Care?', 'tyDi ft. Tania Zygar', 'Trance', 'Eed_x1LeUu8', '2011-11-06 00:38:23', 'Cal', 15, 1, 0, 1),
('Aural Psynapse (2nd Edit)', 'Deadmau5', 'House', 'b7XF3kry_Ck', '2011-11-06 09:55:55', 'Cal', 16, 1, 0, 1),
('Simple Things', 'Foyle & Zo', 'Trance', 'DT5sF1kBDGE', '2011-11-06 09:58:00', 'Cal', 17, 0, 0, 0),
('Strobe (Special Features Remix)', 'Deadmau5', 'House', 'QJMarLOxzNk', '2011-11-06 10:00:19', 'Cal', 18, 1, 0, 1),
('Breakn a Sweat', 'Skrillex ft. The Doors', 'Dubstep', 'F1K-BFbCTU8', '2011-11-06 10:05:10', 'Cal', 19, 2, 0, 2),
('Everyday (Netsky Remix)', 'Rusko', 'DnB', 'jsGGHeq1W2M', '2011-11-07 10:42:29', 'Cal', 20, 0, 0, 0),
('Memory Lane', 'Netsky', 'DnB', 'cG7cRDcPY3k', '2011-11-07 10:44:34', 'Cal', 21, 0, 0, 0),
('Iron Heart', 'Netsky', 'DnB', 'FPoQsOBzlgQ', '2011-11-07 10:50:32', 'Cal', 22, 1, 0, 1),
('Promises (Skrillex Remix)', 'Nero', 'Dubstep', 'zcFMkSt9jMk', '2011-11-08 09:44:04', 'Cal', 23, 0, 1, -1),
('Sick Bubblegum (Skrillex)', 'Rob Zombie', 'Electro', 'PekC-hMgabw', '2011-11-08 09:46:00', 'Cal', 24, 0, 0, 0),
('Reptile Theme', 'Skrillex', 'Electro', 'yZA91uQO9VU', '2011-11-08 09:46:41', 'Cal', 25, 0, 0, 0),
('Ice (Original Mix)', 'Kaskade & Dada Life', 'Electro', 'qbgza5zSNRU', '2011-11-08 16:30:28', 'Cal', 26, 0, 0, 0),
('Sunday Girl (Them Jeans Remix)', 'Love U More', 'House', 'cR-r63teTHA', '2011-11-08 16:32:09', 'Grant K', 27, 0, 0, 0),
('It''s Too Late (First State Remix)', 'Jes', 'Trance', 'TAx0eLxsYr0', '2011-11-08 16:33:52', 'Duncan', 28, 1, 0, 1),
('Cobra (Original Mix)', 'Hardwell', 'House', 'xdaGfBjNB-Q', '2011-11-08 17:09:06', 'Duncan', 29, 0, 0, 0),
('Bipolar', 'Mat Zo', 'Trance', 'YFRxGc8vlaU', '2011-11-08 17:16:33', 'Michael', 30, 0, 0, 0),
('Horsey (Lazerdisk Party Sex Remix)', 'Diplo', 'Electro', 'avIsjk1wjFs', '2011-11-10 01:32:16', 'Frank', 31, 0, 0, 0),
('Lights (Bassnectar Remix)', 'Ellie Goulding', 'Dubstep', 'X13ocJRMEYI', '2011-11-10 10:14:39', 'Cal', 32, 4, 0, 4),
('The Wonder', 'Arty', 'Trance', 'LOJIMJBcBz4', '2011-11-10 12:50:34', 'Mark-', 33, 0, 0, 0),
('Circles (Eric Prydz Remix)', 'Digitalism', 'House', 'DZ5EdLfCMN4', '2011-11-10 12:58:19', 'Mark-', 34, 1, 0, 1),
('Watch the Club Go', 'DJ Bam Bam feat. Mr. Robotic', 'House', 'DiV6hZAkxww', '2011-11-10 16:50:47', 'Vineeth', 35, 0, 0, 0),
('Close To Me (Michael Woods Remix)', 'Benny Benassi feat. Gary Go', 'House', '6hWvgQrmiBU', '2011-11-10 18:44:04', 'MKwon', 36, 0, 0, 0),
('Cinema (Skrillex Remix)', 'Benny Benassi', 'Dubstep', 'LaIZ0mUJzr0', '2011-11-10 19:49:10', 'Calvin', 37, 1, 0, 1),
('Happy Violence (Caveat Remix)', 'Dada Life', 'Electro', '7z8PZJPm82Q', '2011-11-11 23:28:20', 'Kevin', 38, 2, 0, 2),
('Never Good Enough (Killabits Remix)', 'Major Lazer', 'DnB', 'T84L69gdS40', '2011-11-14 15:52:08', 'sara', 41, 4, 0, 4),
('Sweet Disposition (Axwell & Dirty South Remix)', 'Temper Trap', 'House', 'aIDzHxb8b_s', '2011-11-14 16:48:23', 'Cal', 42, 3, 0, 3),
('Flying Blind (Original Mix)', 'Cosmic Gate ft. Jes', 'House', 'HZBGSg1Jnck', '2011-11-14 16:54:01', 'Reed', 43, 1, 0, 1),
('Church of Noise', 'Bloody Beetroots', 'Electro', '5Kh2zAjcUR0', '2011-11-19 02:56:01', 'Mike', 44, 1, 0, 1),
('Wildfire feat. Little Dragon (Paper Diamond Remix)', 'SBTRKT', 'Dubstep', 'xrQFC1dqXz8', '2011-11-19 03:18:19', 'Mike', 45, 1, 0, 1),
('Fucking Down (Original Mix)', 'Tristan Garner, Gregori Klosman', 'House', 'Fw-lYJjycjk', '2011-11-19 15:04:47', 'Randy', 46, 0, 0, 0),
('Fences (GTA Bootleg)', 'Phoenix', 'House', 'LuS_Tnf0zRw', '2011-11-19 15:17:52', 'Mark', 47, 6, 0, 6),
('Firepower (Munchi Remix)', 'Datsik', 'Dubstep', 'D329fvEdRxc', '2011-11-19 15:19:30', 'Sam', 48, 0, 0, 0),
('Dumbin\\'' feat. Reggie B (Diplo Remix)', 'Star Slinger', 'Dubstep', 'ewTbUazPViE', '2011-11-19 15:21:11', 'George', 49, 0, 0, 0),
('Colossal (Original Mix)', 'Sam Gold', 'Trance', 'WZJaH0ZXBGo', '2011-11-19 15:23:49', 'Sam', 50, 2, 0, 2),
('Generation Noise (Afrojack Remix)', 'Laidback Luke ft Boogshe', 'House', 'WSaLbpeGH_I', '2011-11-19 15:35:23', 'Dillon', 51, 1, 0, 1),
('Slats Slats Slats', 'Skrillex', 'Dubstep', 'UjzJjWUEj-4', '2011-11-19 17:32:22', 'Johnathan', 52, 0, 0, 0),
('Anticipate (Ft. Sam Frank) (Netsky Remix)', 'Skream', 'DnB', 'O3Z1X4MPsqk', '2011-11-19 17:33:42', 'Johnathan', 53, 0, 0, 0),
('Future Folk (Original Mix)', 'Tommy Trash', 'House', '2KunqwXOPys', '2011-11-19 17:43:10', 'Alex', 54, 0, 0, 0),
('Stars Come Out', 'Zedd', 'Electro', '5KFjrbR49bo', '2011-11-20 17:44:20', 'Ben', 56, 1, 0, 1),
('Raise Your Weapon (Noisia Remix) (The Killabits Moombahcore Edit)', 'Deadmau5', 'Dubstep', '0BJW4jsRT4g', '2011-11-20 18:19:32', 'Grant', 57, 0, 0, 0),
('Devil\\''s Nest (PockX ReEdit)', 'Skrillex ft. 12th Planet', 'Dubstep', 'laIUihI2ymA', '2011-11-20 19:11:08', 'Cal', 58, 1, 0, 1),
('Kyoto (Disics Extended Mix)', 'Skillex ft. Sirah', 'Dubstep', 'o4MvKCqook0', '2011-11-20 19:14:16', 'Cal', 59, 2, 1, 1),
('Solar Sailer (Pretty Lights Remix)', 'Daft Punk', 'Electro', 'xPbbVfTxEQY', '2011-11-20 21:29:22', 'boobs', 60, 1, 0, 1),
('What You Know', 'Two Door Cinema Club (Feed Me Remix)', 'Dubstep', '6TQVB-SbzJI', '2011-11-20 22:47:48', 'TorrThizz', 61, 2, 0, 2),
('Adagio for Tron (Teddybears Remix)', 'Daft Punk', 'Electro', 's2rc1m8Pt1M', '2011-11-21 00:09:24', 'Cal', 62, 1, 0, 1),
('Force of Nature (Norid Rad Remix)', 'Arkadi', 'Trance', 'xsik20Xd3aI', '2011-11-21 14:38:21', 'Grant', 63, 0, 0, 0),
('Resurrection (Axwell\\''s Recut Club Version)', 'Michael Calfan', 'House', '1PSBwHeVCok', '2011-11-21 14:56:08', 'Mike', 64, 0, 0, 0),
('Arizona Bounce', 'JayyFresh', 'Electro', 'aM01XJE6cqM', '2011-11-21 16:46:53', 'Sean', 65, 0, 0, 0),
('Exposure [Garuda]', 'Gareth Emery', 'Trance', 'LVmmuzZu384', '2011-11-21 17:52:54', 'Cal', 66, 0, 0, 0),
('Antidote (Original Mix)', 'Swedish House Maffia vs. Knife Party', 'House', 'y_x1-3X26iQ', '2011-11-21 18:03:02', 'calvin', 67, 0, 1, -1),
('Community Nap (StrobeHypnoticz Remix)', 'Deadmau5', 'House', 'B72qpdCdznk', '2011-11-21 18:13:48', 'calvin', 68, 2, 0, 2),
('Lies (Nathovan Remix)', 'Trifonic', 'Trance', 'Al8JCExkYOc', '2011-11-21 18:16:05', 'Nate', 69, 2, 0, 2),
('Sexy Back', 'Cry Wolf Remix', 'Dubstep', 'J3C4RSUBaY8', '2011-11-22 13:43:51', 'TorrThizz', 70, 1, 1, 0),
('Water', 'BLITZKIDS(Dem Slackers Remix)', 'House', 'Q7YrriC-1nM', '2011-11-22 13:46:54', 'TorrThizz', 71, 1, 0, 1),
('Turn It Down (Le Castle Vania Remix)', 'Kaskade', 'House', '6I8NgRxTmhc', '2011-11-22 17:47:43', 'Duncan', 72, 1, 0, 1),
('Nobody Gets Out Alive', 'Le Castle Vania', 'House', '9PthCKaA2UE', '2011-11-22 17:50:03', 'Cal', 73, 0, 1, -1),
('Forever Is Over (Marco Van Bassken Remix)', 'Basslovers United', 'House', 'OtFWQ-EDL58', '2011-11-23 14:25:34', 'Alex', 74, 1, 0, 1),
('Time (Memro Remix)', 'Chase and Status', 'DnB', 'q8-N8ygjHAE', '2011-11-23 14:27:13', 'Cal', 75, 0, 0, 0),
('It\\''s You It\\''s Hertz (Kaskade Mash Up)', 'Kaskade vs. Deniz Koyu', 'House', 'W6OHq7WWcG0', '2011-11-24 21:41:52', 'QuadStackedMusic', 76, 1, 0, 1),
('Bassive', 'Felguk', 'Dubstep', '-xoBEwNd0lw', '2011-11-25 12:14:37', 'CrashIt', 77, 0, 0, 0),
('Bang This (Original Mix)', 'Hirshee', 'Electro', 'EGPCXDn8hsI', '2011-11-25 12:16:22', 'CrashIt', 78, 1, 0, 1),
('Back to the Streets', 'Popeska', 'Electro', 'zAU67tES9ak', '2011-11-25 12:17:18', 'CrashIt', 79, 2, 1, 1),
('Shave It (Tommy Trash Remix)', 'Zedd', 'Electro', 'zAHt50MuPk4', '2011-11-25 12:18:25', 'CrashIt', 80, 0, 0, 0),
('Spitfire (Original Mix)', 'Porter Robinson', 'Electro', '89KV_LcbqsA', '2011-11-25 00:00:00', 'Cal', 81, 1, 0, 1),
('Unison', 'Porter Robinson', 'Electro', 'Y_J3WWYp8Gc', '2009-02-28 00:00:00', 'Cal', 82, 0, 0, 0),
('Internet Friends', 'Knife Party', 'Electro', 'gcejLp72iCE', '2011-11-25 00:00:00', 'Cal', 83, 1, 0, 1),
('Zoology', 'Knife Party ', 'Electro', 'zTng-TtAV7Y', '2011-11-25 17:50:20', 'Cal', 84, 0, 0, 0),
('Innocence', 'Nero', 'Dubstep', '1S35THmZD_E', '2009-02-28 00:00:00', 'Cal', 85, 0, 0, 0),
('Good For Me', 'Above & Beyond', 'Trance', 'Zj5XqPErLoc', '2009-02-28 00:00:00', 'Cal', 86, 0, 0, 0),
('Sun and Moon', 'Above & Beyond', 'Trance', 'qEa5C3P_GIY', '2009-02-28 00:00:00', 'Cal', 87, 1, 0, 1),
('Home', 'Above & Beyond', 'Trance', 'QxdSAAWRs3E', '2009-02-28 00:00:00', 'Cal', 88, 0, 0, 0),
('Relic', 'BetaTraxx', 'Electro', 'RpR8RkAQ7F8', '2011-11-25 22:23:59', 'Aleksey', 89, 1, 0, 1),
('Shutterbug (Jack Beats Remix)', 'Big Boi', 'Electro', 'QLHag6cMPrs', '2011-11-26 17:54:17', 'Cal', 90, 0, 0, 0),
('Dying ft. Ultravoilet Sound & Emily Hudson', 'Kill the Noise', 'Dubstep', 'HMh_jMz-ZoY', '2011-11-26 18:07:29', 'Cal', 91, 1, 0, 1),
('How it Goes (Kalendr Remix)', 'Joey C & DJ Torrio feat. Nikki K', 'House', '02kTX2rav4w', '2011-11-26 23:22:08', 'Hyperfaiq', 92, 3, 0, 3),
('Something Special', 'Miguel Campbell', 'House', 'nEJHueJiBvc', '2011-11-26 23:36:38', 'Hyperfaiq', 93, 1, 1, 0),
('Levels (FTampa Remix)', 'Avicii', 'Electro', 'qEtwlhYbG9k', '2011-11-27 16:04:35', 'Drew', 94, 1, 0, 1),
('Believe It (Cazzette\\''s Androids Sound)', 'Spencer & Hill & Nadia Ali', 'House', 'b5PfYX2q0cI', '2011-11-27 23:37:49', 'Matt', 95, 2, 0, 2),
('Ass on the Floor (Zedd Remix)', 'Diddy-Dirty Money feat. Swizz Beatz', 'House', '9bcu33Be2Sw', '2011-11-28 13:01:54', 'Sam', 96, 3, 0, 3),
('Miscommunication (Remix)', 'Bloody Beetroots', 'Electro', 'x_Db9qI11GY', '2009-03-03 00:00:00', 'Ben', 97, 1, 0, 1),
('Crush On You (Knife Party Remix)', 'Nero', 'Electro', 'TYMj1vxsehY', '2011-11-28 16:01:28', 'Ben', 98, 1, 1, 0),
('Lotus', 'Mumbai Science', 'Trance', 'Pe9YKGhe-SU', '2011-11-28 23:08:07', 'Duncan', 99, 0, 0, 0),
('Alive (Mat Zo Unreleased Bootleg)', 'Daft Punk', 'Trance', 'FQCpsP8X7oY', '2011-11-28 23:09:14', 'Alex', 100, 0, 0, 0),
('Kill the Noise (Dillon Francis Remix)', 'Kill the Noise', 'Electro', 'JbNsBK3hi5Y', '2011-11-28 23:17:09', 'Duncan', 102, 1, 0, 1),
('Be There 4 You One More Time (Above & Beyond Bootleg)', 'Kyau and Albert vs Daft Punk', 'House', 'sRjbgCe641s', '2011-11-28 23:19:06', 'Duncan', 103, 0, 0, 0),
('Something Wild', 'Patch Werk', 'Electro', '3oc5b5MetPE', '2011-11-28 23:53:19', 'Crash-it.com', 104, 1, 0, 1),
('Fuck School (And Party Instead)', 'Avicii & Nicky Romero', 'House', 'ztJUDoEhYzc', '2011-11-29 12:49:15', 'Reed', 105, 0, 0, 0),
('Dance (Original Mix)', 'EDX', 'House', 'zd9l-kdYCJM', '2011-11-29 14:34:27', 'Mark', 106, 0, 0, 0),
('Silhouettes (Original Mix)', 'Avicii ft. Salem Al Fakir', 'House', 'c0TJmcAOQ2w', '2011-11-29 14:40:48', 'Cal', 107, 0, 0, 0),
('Drowning (Avicii)', 'Armin van Buuren', 'House', 'AbB3z2fZ7PM', '2009-03-04 00:00:00', 'Cal', 108, 0, 0, 0),
('Status Excessu D', 'Armin van Buuren', 'Trance', 'g8pT1IAAZ9A', '2009-03-04 00:00:00', 'Cal', 109, 2, 0, 2),
('Strobe (Klaypex Remix)', 'Deadmau5', 'Dubstep', 'JSNbBZRTW34', '2011-11-29 14:46:43', 'Cal', 110, 1, 0, 1),
('Lights', 'Klaypex', 'Dubstep', 'r0a-o16i_Gw', '2011-11-29 14:47:24', 'Cal', 111, 1, 0, 1),
('MÃ©nage Ã  Trois', 'Wolfgang Gartner', 'House', 'm14UrWretlE', '2011-11-29 21:11:13', 'Tom', 112, 0, 0, 0),
('Where my keys?', 'Deadmau5', 'House', 'SYIXLx7on7w', '2011-11-29 21:14:41', 'Cal', 113, 0, 0, 0),
('HR 8938 Cephei', 'Deadmau5', 'House', 'wRpHj75U804', '2009-03-04 00:00:00', 'Cal', 114, 0, 0, 0),
('Fifths', 'Deadmau5', 'House', '3W72wuTlbDg', '2011-11-29 21:17:21', 'Cal', 115, 0, 1, -1),
('Limit Break (Original Mix)', 'Deadmau5', 'House', 'wM5IzDqNuRI', '2009-03-04 00:00:00', 'Cal', 116, 0, 0, 0),
('Ghosts n Stuff', 'Deadmau5', 'House', '4uEanuV4waY', '2009-03-04 00:00:00', 'Cal', 117, 0, 0, 0),
('Sofi Needs a Ladder', 'Deadmau5', 'House', 'yNy5xcs0W3w', '2009-03-04 00:00:00', 'Cal', 118, 0, 0, 0),
('Sonne (DnB Remix)', 'Rammstein', 'DnB', 'hwfOxLt0GNM', '2011-11-29 22:27:46', 'Cal', 119, 1, 0, 1),
('Feel Good Inc. (DnB Remix)', 'Gorillaz', 'DnB', 'QJBkSwtpreQ', '2009-03-04 00:00:00', 'Cal', 120, 0, 0, 0),
('The Nth Degree', 'Overwerk', 'Electro', 'w9XFUuZ8urU', '2011-11-30 10:53:48', 'Clark', 121, 2, 0, 2),
('Afterthought (Heatbeat Remix)', 'Parker & Hanson', 'Trance', 'UzbdD5BubC4', '2011-11-30 10:55:28', 'Duncan', 122, 0, 0, 0),
('Save the World (Knife Party Remix)', 'Swedish House Maffia', 'House', 'Gb4Tmpu0iXQ', '2011-11-30 12:21:49', 'Chels', 123, 1, 0, 1),
('Save the World', 'Swedish House Maffia', 'House', 'BXpdmKELE1k', '2009-03-06 00:00:00', 'Cal', 124, 0, 0, 0),
('Paperchase', 'Danny Byrd & Brookes Brothers', 'DnB', 'FcmHgZjOqwQ', '2011-12-01 15:48:07', 'Cal', 125, 2, 0, 2),
('Syndicate', 'Skrillex', 'Dubstep', 'y3TrjEuXuNw', '2011-12-01 15:50:43', 'Tom', 126, 0, 0, 0),
(' Phoenix from the Flames [Maor Levi Remix]', 'Boom Jinx feat. Justine Suissa', 'Trance', 'MCDyWPu_XpQ', '2011-12-01 15:51:30', 'Reed', 127, 0, 0, 0),
('Mask Off (Original Mix)', 'BEATBENDER', 'Electro', '8UA0buqEaTg', '2011-12-01 15:52:33', 'Paulo', 128, 0, 0, 0),
('Needle (Original Mix)', 'Dirtyloud', 'Electro', '_hLdHi1wWVc', '2011-12-01 16:01:57', 'Crash-It', 129, 1, 0, 1),
('Bring it On', 'Rusko', 'Dubstep', 'cTpcfDKV0wA', '2009-03-06 00:00:00', 'Cal', 130, 0, 0, 0),
('Barbara Streisand', 'Duck Sauce', 'House', 'uu_zwdmz0hE', '2009-03-06 00:00:00', 'Cal', 131, 0, 0, 0),
('Buzzin', 'Overwerk', 'House', 'iOu3FExWw2E', '2011-12-02 21:31:49', 'Cal', 132, 4, 0, 4),
('Chop Suey (Sinister Souls Remix)', 'System of a Down', 'Dubstep', 'Venj1n7zH-M', '2011-12-02 21:50:05', 'Cal', 133, 1, 0, 1),
('Feel Good Inc. (Stanton Warriors Remix)', 'Gorillaz', 'House', 'ducIVKsKwEI', '2011-12-02 21:53:54', 'Vtor', 134, 2, 0, 2),
('To forever (moonbeam remix)', 'Tiesto Ft. Rachael Starr', 'Trance', 'KzGklOozcPo', '2011-12-03 16:20:18', 'AFlock', 135, 5, 2, 3),
('Paradigm ft. Nick Nikon', 'Overwerk', 'Electro', 'SdVcHFdx0Zs', '2011-12-04 13:06:13', 'Johnathan', 136, 0, 0, 0),
('Pacifica (Chasing Shadows Remix)', 'Spor', 'Electro', 'DWqDAjKurbk', '2011-12-04 13:07:55', 'Justin', 137, 0, 0, 0),
('Disco Electrique (Vocal Mix)', 'Chocolate Puma & Bingo Players', 'House', 'YtRXUNOZoQw', '2011-12-04 14:07:36', 'Johnathan', 138, 0, 0, 0),
('The Drummer (Fake Blood Remix)', 'Niki And The Dove', 'House', 'S3OwNxbIMfc', '2011-12-04 18:37:53', 'calvin', 139, 0, 0, 0),
('Pyramid Song (Zeds Dead Remix)', 'Radiohead', 'Dubstep', 'iHKkppVXHxQ', '2011-12-04 18:42:54', 'Pasta', 140, 1, 0, 1),
('Work Hard, Play Hard', 'Tiesto ft. Kay', 'House', '54snhIMA-pQ', '2011-12-05 13:56:13', 'Randy', 141, 0, 0, 0),
('Kick Out the Epic Motherf**cker', 'Dada Life', 'Electro', 'c6igu-lkDKk', '2011-12-05 16:05:04', 'Cal', 142, 0, 0, 0),
('Anticipate', 'Skream ft. Sam Frank', 'House', 'tgU0Nw6cZOI', '2011-12-05 16:07:52', 'Cal', 143, 0, 0, 0),
('Top of the Pops 2011 (What the Fuck)', 'Mashup-Germany', 'House', 'HcMsGX855zo', '2011-12-05 16:10:17', 'Cal', 144, 1, 0, 1),
('Svenska (Original Mix)', 'Matisse & Sadko', 'House', 'lctrfB9QNUA', '2011-12-05 21:56:22', 'Mark', 145, 3, 0, 3),
(' Work Hard, Play Hard (AutoErotique Remix)', 'Tiesto ft. Kay', 'House', 'UnPuY6GMCgs', '2011-12-06 00:39:24', 'Kevin', 146, 1, 0, 1),
('No Way Back', 'Zatox', 'Hardstyle', '4i8CpyRKTF8', '2011-12-06 01:42:44', 'Oscar', 147, 0, 0, 0),
('Black Anthem', 'Showtek', 'Hardstyle', 'JJx6dIKAAUY', '2009-03-11 00:00:00', 'Oscar', 148, 0, 0, 0),
('Organ Donor', 'Zomboy', 'Dubstep', 'pJ3K_zDHYFA', '2011-12-06 10:03:57', 'Johnathan', 149, 0, 0, 0),
('Mode (Original Mix)', 'Bingo Players', 'House', 'OoDHA8dy7JM', '2011-12-06 16:16:03', 'Mark', 150, 2, 0, 2),
('Where You Are', 'ATB feat. Kate Louise Smith', 'Trance', 'draHobtKr10', '2011-12-06 16:16:50', 'Ross', 151, 1, 0, 1),
('Misunderstood', 'Seiza', 'Dubstep', 'Lu3z9UhOA5M', '2011-12-06 16:17:39', 'Donald', 152, 1, 0, 1),
('Otherside (Third Party Remix)', 'Red Hot Chili Peppers', 'House', '-L0IRgYLQ44', '2011-12-06 16:18:43', 'Johnathan', 153, 0, 0, 0),
('Supercell (Norin & Rad Remix)', 'Dan Stone vs. Ost & Meyer', 'Trance', 'GCaQ9BYw1sY', '2011-12-06 16:20:49', 'Duncan', 154, 0, 0, 0),
('Cracks (Flux Pavilion Remix)', 'Freestylers', 'Dubstep', 'K1VLaXoRRdk', '2011-12-06 19:29:40', 'arc', 155, 0, 0, 0),
('From Where I Stand', 'Chicane', 'Trance', 'wgQkPkHEkBg', '2011-12-06 19:38:19', 'AFlock', 156, 0, 0, 0),
('Starlight (Outwork remix)', 'Sophie Ellis Bextor', 'House', 'PRaFb5DGPZ0', '2011-12-06 19:45:51', 'Duncan', 157, 0, 0, 0),
('Unforgivable', 'Armin Van Buuren feat Jaren', 'Trance', 'Opxrm1sEQEM', '2011-12-06 20:36:19', 'AF', 158, 1, 0, 1),
('Ruckus the Jam', 'Zeds Dead', 'Dubstep', 'lZJCwDONLqA', '2011-12-07 10:00:45', 'Aiden', 159, 0, 0, 0),
('Choose Me II', 'Xilent', 'Dubstep', 'TBMPiTOHR0o', '2011-12-07 10:01:34', 'Justin', 160, 0, 0, 0),
('Better Blitz of Serenity Rush (AlexDD Mashup)', 'Dash Berlin vs Norin & Rad', 'Trance', 'aBYZUqNmGBM', '2011-12-07 10:03:20', 'Drew', 161, 0, 0, 0),
('Mirage (Original Mix)', 'Pryda', 'House', '1Cy14tullrk', '2011-12-07 11:53:04', 'Cal', 162, 0, 0, 0),
('Floating (D.I.M Remix)', 'Jape', 'House', 'e3_PKoEhLII', '2011-12-07 14:58:05', 'Vtor', 163, 0, 0, 0),
('Lose My Mind', 'Brennan Heart & Wildstylez', 'Hardstyle', 'JP6Tz5tP8EE', '2011-12-07 16:22:59', 'Oscar', 164, 0, 0, 0),
('Recalled  to Life', 'Dutch Master', 'Hardstyle', 'OD7SlWxZrUI', '2011-12-07 16:23:55', 'Oscar', 165, 0, 0, 0),
('Wake Up!', 'Brennan Heart & The Prophet', 'Hardstyle', 'HzRfjbmZ7iw', '2011-12-07 16:25:03', 'Oscar', 166, 0, 0, 0),
('Vita', 'Technoboy', 'Hardstyle', 'oAY0hQPmWkM', '2011-12-07 16:26:41', 'Oscar', 167, 0, 0, 0),
('Power of the Mind', 'Headhunterz', 'Hardstyle', '_F0hN1nOBcw', '2011-12-07 16:27:28', 'Oscar', 168, 0, 0, 0),
('Colours of the Harder Style', 'Showtek', 'Hardstyle', 'CAw-71bfpmM', '2011-12-07 16:28:16', 'Oscar', 169, 0, 0, 0),
('The Sacrifice ', 'Headhunterz', 'Hardstyle', 'a7uToulRNeQ', '2011-12-07 16:29:20', 'Oscar', 170, 0, 0, 0),
(' Odissea', 'Zatox & The R3belz', 'Hardstyle', 'jYj51uQZRDg', '2011-12-07 16:30:27', 'Oscar', 171, 0, 0, 0),
('Levels (Clockwork Remix)', 'Avicii', 'House', '3fuRBIfw-uc', '2011-12-08 00:41:45', 'Tom', 172, 1, 0, 1),
('Here Below', 'Ghosts Of Paraguay feat. Jett', 'Trance', 'on4oZZ5EEDQ', '2011-12-08 01:59:35', 'Johnathan', 173, 0, 0, 0),
('Till Sunshine (Pixel Cheese Bootleg)', 'David Guetta & Avicii vs. Laidback Luke', 'House', 'lziHJxIXJ2w', '2011-12-08 02:01:29', 'Ross', 174, 1, 0, 1),
('Dark Side Of The Tomahawk (Myon & Shane 54 Mashup)', 'BT & Adam K vs. Ernesto vs. Bastian', 'Dubstep', 'uTRoM4WMhss', '2011-12-08 21:56:27', 'Paul', 175, 0, 0, 0),
('Psychedelic Trip', 'Dj Zany', 'DnB', 'GEmUPUQ1YfA', '2009-03-14 00:00:00', 'Andrew', 176, 0, 0, 0),
('Strength in Numbers (Coldplay x Daft Punk x Porter Robinson)', 'Basic Physics', 'House', '29iQVI956GM', '2011-12-09 09:48:48', 'Cal', 177, 0, 0, 0),
('Body Work (Club Mix)', 'Morgan Page ft. Tegan and Sara', 'House', 'uyh3y1hZEGI', '2011-12-09 09:49:58', 'Cal', 178, 0, 0, 0),
('Kiss My Lips (It\\''s The DJ Kue Remix!)', 'Dev ft. Fabolous', 'House', 'hhzSIOE0Eeg', '2011-12-09 10:04:27', 'Cal', 179, 0, 0, 0),
('Eyes on Fire (Zeds Dead Remix)', 'Blue Foundation', 'Dubstep', 'IUGzY-ihqWc', '2011-12-09 10:09:56', 'Cal', 180, 0, 0, 0),
('Marry The Night (Dimitri Vegas & Like Mike Remix)', 'Lady Gaga', 'House', '4RtT_L1ps94', '2011-12-09 10:36:03', 'Vince', 181, 0, 0, 0),
('Destroy Them With Lazers', 'Knife Party', 'Electro', 'XVM0cWu13go', '2011-12-09 10:36:58', 'Cal', 182, 0, 0, 0),
('Tourniquet', 'Knife Party', 'Electro', 'Y35n_1XLPy4', '2011-12-09 10:55:17', 'Cal', 183, 0, 0, 0),
('Stars Come Out (Ryan Enzed Remix)', 'Zedd', 'Electro', '6j3mDO3GVHM', '2011-12-09 11:38:00', 'Cal', 184, 1, 0, 1),
('Levels (Skrillex Remix)', 'Avicii', 'Dubstep', '6s4n76ti3Xs', '2011-12-09 23:54:08', 'Carl', 185, 0, 0, 0),
('Future Sound (Nero vs Knife Party vs Gorillaz)', 'Loo & Placido', 'Dubstep', '5X-t0H-HOUE', '2011-12-11 14:54:10', 'Cal', 186, 2, 0, 2),
('Bass Embrace', 'DJ i6', 'House', 'kG5ND29OTwU', '2011-12-11 15:25:40', 'Cal', 187, 2, 1, 1),
('Perfect Moments', 'Lang & Yep', 'Trance', 'C8466KXzWFg', '2011-12-11 17:05:55', 'Cal', 188, 3, 0, 3),
('Lost (Chill Mix)', 'Sunlounger ft. Zara', 'Trance', 'd5oPCC0Xcyo', '2011-12-12 23:59:04', 'Mark', 189, 0, 0, 0),
('Promises (Calvin Harris Remix)', 'Nero', 'House', 'u2Uif9N5dac', '2011-12-13 00:00:12', 'TorrThizz', 190, 1, 0, 1),
('Rebound', 'Arty & Mat Zo', 'Trance', 'U80l-YzcGsQ', '2011-12-13 13:30:39', 'ALott', 191, 0, 0, 0),
('Pyramid (Dirty South Remix)', 'John Dahlback', 'House', 'ZKqvmusVJIY', '2009-03-18 00:00:00', 'Randy', 192, 0, 0, 0),
('Ladi Dadi (Original Mix)', 'Steve Aoki feat. Wynter Gordon', 'Dubstep', 'UO86l97ssi0', '2011-12-13 14:57:01', 'Mark', 193, 0, 0, 0),
('Collect Call (Adventure Club Remix)', 'Metric', 'Dubstep', 'kY-GOD1j5kw', '2011-12-14 09:48:47', 'Cal', 194, 0, 0, 0),
('The Immortals (RÃ¶yksopp Remix) Radio Edit', 'Kings of Leon', 'House', 'SrrMAbvQc9A', '2011-12-14 10:04:01', 'Cal', 195, 1, 0, 1),
('Crave You (Adventure Club Dubstep Remix)', 'Flight Facilities', 'Dubstep', 'ZeaIvjoH1FY', '2011-12-18 20:27:04', 'sara', 196, 0, 0, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`youtubecode`) REFERENCES `songs` (`youtubecode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;