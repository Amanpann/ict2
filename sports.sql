-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 10:17 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubbaseinfos`
--

CREATE TABLE `clubbaseinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addedby` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_value` bigint(20) NOT NULL DEFAULT 0,
  `cups_won` int(11) NOT NULL DEFAULT 0,
  `date_founded` date NOT NULL,
  `club_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user2-160x160.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `userid`, `name`, `club_value`, `cups_won`, `date_founded`, `club_logo`, `created_at`, `updated_at`) VALUES
(1, 17, 'Your Football', 254000, 300, '2021-07-06', 'club-1625240151.jpg', '2021-07-02 10:05:51', '2021-07-02 10:05:51'),
(2, 20, 'Hero Club', 1000, 12, '2021-07-17', 'club-1628094423.jpg', '2021-07-04 06:54:12', '2021-08-04 10:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) NOT NULL,
  `clubid` bigint(20) NOT NULL,
  `cups_won` int(11) NOT NULL DEFAULT 0,
  `dob` date NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coach_prime_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user2-160x160.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`id`, `userid`, `clubid`, `cups_won`, `dob`, `country`, `coach_prime_pic`, `created_at`, `updated_at`) VALUES
(1, 19, 1, 300, '1987-02-11', 'India', 'coach-1628065616.jpg', '2021-07-04 01:17:46', '2021-08-04 02:56:56'),
(2, 22, 2, 412, '1972-05-11', 'Australia', 'coach-1628065646.jpg', '2021-07-15 10:47:51', '2021-08-04 02:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactuses`
--

INSERT INTO `contactuses` (`id`, `name`, `email`, `message`, `ipaddress`, `created_at`, `updated_at`) VALUES
(1, 'Binary Matter', 'vickychhetri4@gmail.com', 'hi message saved or not said me', '127.0.0.1', '2021-08-03 12:35:59', '2021-08-03 12:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `latestnews`
--

CREATE TABLE `latestnews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Pagename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Posttype` int(11) NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `visible` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `latestnews`
--

INSERT INTO `latestnews` (`id`, `Pagename`, `Title`, `Thumbnail`, `Description`, `Content`, `Posttype`, `userid`, `visible`, `created_at`, `updated_at`) VALUES
(12, 'post-1627834157-whistle-blower-policy', 'Whistle Blower Policy', 'post-1627834157-whistle-blower-policy-1627834157.jpg', 'Our Whistleblower Policy allows employees to report any instance of unethical behaviour, actual or suspected fraud or violation of our code of conduct without fear of reproach.', 'post-1627834157-whistle-blower-policylongArticle.dat', 27, 20, 1, '2021-08-01 10:39:17', '2021-08-01 10:39:17'),
(13, 'post-1627834355-code-of-conduct-for-directors-and-senior-management', 'Code of Conduct for directors and senior management', 'post-1627834355-code-of-conduct-for-directors-and-senior-management-1627834355.jpg', 'A company\'s code of conduct reflects the daily operations, core values, and culture. At more, all the members of the senior management are dedicated towards the growth and learning of its employees', 'post-1627834355-code-of-conduct-for-directors-and-senior-managementlongArticle.dat', 27, 20, 1, '2021-08-01 10:42:35', '2021-08-01 10:42:35'),
(14, 'post-1627834572-posh-policy', 'POSH Policy', 'post-1627834572-posh-policy-1627834572.jpg', 'Our Prevention of Sexual Harassment Policy is designed to protect women and promote a healthy work culture at', 'post-1627834572-posh-policylongArticle.dat', 27, 20, 1, '2021-08-01 10:46:12', '2021-08-01 10:48:42'),
(15, 'post-1627834698-food-safety-policy', 'Food Safety Policy', 'post-1627834698-food-safety-policy-1627834698.jpg', 'We strive to deliver products that meet all the regulatory and statutory requirements of food safety.', 'post-1627834698-food-safety-policylongArticle.dat', 27, 20, 1, '2021-08-01 10:48:18', '2021-08-01 10:48:18'),
(17, 'post-1627886953-career-statistics', 'Career statistics - Harry James Souttar', 'post-1627886953-career-statistics-1627886953.png', 'As of match played 1 May 2021. On 6 March 2019 he was called up to the Australia national under-23 soccer team.', 'post-1627886953-career-statisticslongArticle.dat', 33, 22, 1, '2021-08-02 01:19:13', '2021-08-02 04:25:36'),
(18, 'post-1627895984-transfer-history---harry-james-souttar', 'TRANSFER HISTORY - Harry James Souttar', 'post-1627895984-transfer-history---harry-james-souttar-1627895984.jpg', 'As of match played 1 May 2021. On 6 March 2019 he was called up to the Australia national under-23 soccer team.', 'post-1627895984-transfer-history---harry-james-souttarlongArticle.dat', 33, 22, 1, '2021-08-02 03:49:45', '2021-08-02 04:25:16'),
(19, 'post-1627897949-international-career---harry-james-souttar', 'International career - Harry James Souttar', 'post-1627897949-international-career---harry-james-souttar-1627897949.jpg', 'Souttar made his debut for the Scotland under-17 team against Romania in February 2015.  On 6 March 2019 he was\r\ncalled up to the Australia national under-23 soccer team.', 'post-1627897949-international-career---harry-james-souttarlongArticle.dat', 33, 22, 1, '2021-08-02 04:22:30', '2021-08-02 04:22:30'),
(20, 'post-1627914341-stoke-city-boss-seeing-the-bright-side-as-harry-souttar-suffers-olympic-heartbreak-with-australia', 'Stoke City boss seeing the bright side as Harry Souttar suffers Olympic heartbreak with Australia', 'post-1627914341-stoke-city-boss-seeing-the-bright-side-as-harry-souttar-suffers-olympic-heartbreak-with-australia-1627914341.jpg', 'Boss Michael O’Neill had been preparing for next Saturday’s 2021/22 curtain-raiser against Reading (3pm) knowing he would most likely be without key defender Harry Souttar.', 'post-1627914341-stoke-city-boss-seeing-the-bright-side-as-harry-souttar-suffers-olympic-heartbreak-with-australialongArticle.dat', 32, 22, 1, '2021-08-02 08:55:41', '2021-08-02 08:55:41'),
(21, 'post-1627914963-could-be-a-fit-journalist-makes-transfer-admission-involving-stoke-city-defender-and-celtic', 'COULD BE A FIT’ – JOURNALIST MAKES TRANSFER ADMISSION INVOLVING STOKE CITY DEFENDER AND CELTIC', 'post-1627914963-could-be-a-fit-journalist-makes-transfer-admission-involving-stoke-city-defender-and-celtic-1627914963.png', 'Celtic Way journalist Anthony Haggerty has identified Stoke City’s Harry Souttar as someone manager Ange Postecoglou should be looking at as a potential signing this summer, speaking to This is Futbol.', 'post-1627914963-could-be-a-fit-journalist-makes-transfer-admission-involving-stoke-city-defender-and-celticlongArticle.dat', 32, 22, 1, '2021-08-02 09:06:03', '2021-08-02 09:06:03'),
(22, 'post-1627915189-meet-the-olyroos-the-defenders', 'Meet the Olyroos: The Defenders', 'post-1627915189-meet-the-olyroos-the-defenders-1627915189.jpg', 'With Australia almost set to kick off their first Olympic Men\'s Football tournament since 2008, here\'s your chance to get to know every member of the Olyroos\' squad.', 'post-1627915189-meet-the-olyroos-the-defenderslongArticle.dat', 32, 22, 1, '2021-08-02 09:09:49', '2021-08-02 09:09:49'),
(23, 'post-1627926509-monaco-vs-nantes-line-up', 'Monaco vs Nantes Line Up', 'post-1627926509-monaco-vs-nantes-line-up-1627926509.jpg', 'Monaco vs Nantes Line Up', 'post-1627926509-monaco-vs-nantes-line-uplongArticle.dat', 34, 21, 1, '2021-08-02 12:18:29', '2021-08-02 12:18:29'),
(24, 'post-1627973256-england-tour-of-pakistan-2021', 'England tour of Pakistan, 2021', 'post-1627973256-england-tour-of-pakistan-2021-1627973256.jpg', 'England tour of Pakistan, 2021', 'post-1627973256-england-tour-of-pakistan-2021longArticle.dat', 35, 21, 1, '2021-08-03 01:17:36', '2021-08-03 01:17:36'),
(25, 'post-1627977570-aus-vs-ger-november-2021', 'AUS vs GER November 2021', 'post-1627977570-aus-vs-ger-november-2021-1627977570.jpg', 'AUS vs GER November 2021', 'post-1627977570-aus-vs-ger-november-2021longArticle.dat', 36, 21, 1, '2021-08-03 02:29:30', '2021-08-03 12:00:46'),
(26, 'post-1627983896-manchester-united-agree-deal-to-sign-real-madrid-s-raphael-varane', 'Manchester United Agree Deal To Sign Real Madrid\'s Raphael Varane', 'post-1627983896-manchester-united-agree-deal-to-sign-real-madrid-s-raphael-varane-1627983896.png', 'Manchester United have agreed a deal with Real Madrid to sign France centre-back Raphael Varane, the Premier League giants announced Tuesday.', 'post-1627983896-manchester-united-agree-deal-to-sign-real-madrid-s-raphael-varanelongArticle.dat', 26, 20, 1, '2021-08-03 04:14:56', '2021-08-03 04:14:56'),
(27, 'post-1627987668-lee-carsley-appointed-new-england-under-21-head-coach-with-former-chelsea-star-his-assistant', 'Lee Carsley appointed new England Under-21 head coach with former Chelsea star his assistant', 'post-1627987668-lee-carsley-appointed-new-england-under-21-head-coach-with-former-chelsea-star-his-assistant-1627987668.jpg', 'The FA have been searching for a successor since Aidy Boothroyd\'s departure in April', 'post-1627987668-lee-carsley-appointed-new-england-under-21-head-coach-with-former-chelsea-star-his-assistantlongArticle.dat', 37, 22, 1, '2021-08-03 05:17:49', '2021-08-03 05:17:49'),
(28, 'post-1628015347-regular-season-2021', 'Regular Season 2021', 'post-1628015347-regular-season-2021-1628015347.png', 'Regular season — The league expanded the regular season from a 16-game schedule to 17 games. The regular season is scheduled to start on September 9, 2021', 'post-1628015347-regular-season-2021longArticle.dat', 38, 21, 1, '2021-08-03 12:59:07', '2021-08-03 12:59:07'),
(29, 'post-1628017983-indian-national-football-team', 'Indian National Football team', 'post-1628017983-indian-national-football-team-1628017983.jpg', 'The Indian Football Team is a national football team representing the nation of India in the sport of football. The team works under the aegis of the All India Football Federation (AIFF) which is headed by the politician Praful Patel.', 'post-1628017983-indian-national-football-teamlongArticle.dat', 39, 21, 1, '2021-08-03 13:43:03', '2021-08-03 13:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2021_06_24_073410_create_usertypes_table', 1),
(3, '2021_06_24_074917_create_usercollections_table', 1),
(4, '2021_06_28_062115_create_clubs_table', 2),
(5, '2021_07_04_043857_create_coaches_table', 3),
(6, '2021_07_11_063437_create_sports_table', 4),
(7, '2021_07_11_070548_create_teamtypes_table', 5),
(8, '2021_07_11_071228_create_teams_table', 6),
(9, '2021_07_11_071804_create_teamcoaches_table', 7),
(10, '2021_07_11_072247_create_news_table', 8),
(11, '2021_07_11_072655_create_events_table', 9),
(12, '2021_07_11_072935_create_tickets_table', 10),
(13, '2021_07_23_052358_create_players_table', 11),
(14, '2021_07_27_035108_create_userpersonals_table', 12),
(16, '2021_07_27_065835_create_sportsproperties_table', 13),
(19, '2021_07_27_074251_create_playerproperties_table', 14),
(20, '2021_07_29_091626_create_latestnews_table', 15),
(21, '2021_07_31_052819_create_pagecategories_table', 16),
(22, '2021_08_02_041544_create_playerpages_table', 17),
(23, '2021_08_02_061756_create_playerimages_table', 18),
(24, '2021_08_02_165105_create_upcomingevents_table', 19),
(25, '2021_08_03_173754_create_contactuses_table', 20),
(26, '2021_08_05_083236_create_clubbaseinfos_table', 21),
(28, '2021_08_11_101304_create_playervideos_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagecategories`
--

CREATE TABLE `pagecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` enum('ADMIN','COACH','SELECTOR','CLUB','PLAYER','COMMON') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagecategories`
--

INSERT INTO `pagecategories` (`id`, `page_category`, `page_category_description`, `usertype`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'ARTICLES', 'Different sports information Article', 'COMMON', 21, '2021-07-31 00:21:10', '2021-07-31 00:21:10'),
(6, 'PLAYER NEWS', 'PLAYER NEWS', 'COMMON', 21, '2021-07-31 00:26:28', '2021-07-31 00:26:28'),
(10, 'GENERAL', 'GENERAL', 'COMMON', 21, '2021-07-31 00:29:43', '2021-07-31 00:29:43'),
(11, 'INFORMATION BROADCASTING', 'INFORMATION BROADCASTING', 'COMMON', 21, '2021-07-31 00:30:29', '2021-07-31 00:30:29'),
(25, 'CLUB-NOTICE', 'Notice is the legal concept describing a requirement that a party be aware of legal process affecting their rights, obligations or duties.', 'CLUB', 21, '2021-08-01 05:22:24', '2021-08-01 05:22:24'),
(26, 'CLUB-NEWS', 'Newly received or noteworthy information, especially about recent events.', 'CLUB', 21, '2021-08-01 05:23:17', '2021-08-01 05:23:17'),
(27, 'CLUB-POLICY', 'A course or principle of action adopted or proposed by an organization or individual.', 'CLUB', 21, '2021-08-01 05:24:17', '2021-08-01 05:24:17'),
(28, 'CLUB-EMPLOYEE', 'PERSONS RELATED TO CLUB', 'CLUB', 21, '2021-08-01 05:26:01', '2021-08-01 05:26:01'),
(29, 'CLUB-VIDEOS', 'REPRESENT CLUB IN MEDIA', 'CLUB', 21, '2021-08-01 05:26:44', '2021-08-01 05:26:44'),
(30, 'CLUB-BLOG', 'UPDATES ON VARIOUS CONCEPTS', 'CLUB', 21, '2021-08-01 05:27:18', '2021-08-01 05:27:18'),
(31, 'CLUB-CONTACT', 'CONTACTS', 'CLUB', 21, '2021-08-01 05:29:04', '2021-08-01 05:29:04'),
(32, 'PLAYER-BLOG', 'NEWS, INFO, ARTICLES, AND OTHER INFORMATION ONLY RELATED TO PLAYER', 'COACH', 21, '2021-08-01 22:10:48', '2021-08-01 22:10:48'),
(33, 'PLAYER DATA', 'player  playing kind of data or info', 'COACH', 21, '2021-08-01 23:18:12', '2021-08-01 23:18:12'),
(34, 'Football', 'Football', 'ADMIN', 21, '2021-08-02 12:12:49', '2021-08-02 12:12:49'),
(35, 'Cricket', 'Cricket matches', 'ADMIN', 21, '2021-08-03 01:07:56', '2021-08-03 01:07:56'),
(36, 'Hockey', 'Hockey information', 'ADMIN', 21, '2021-08-03 02:20:24', '2021-08-03 02:20:24'),
(37, 'COACH NEWS', 'COACH NEWS INFORMATION ARTICLES OR TOTHERS', 'COACH', 21, '2021-08-03 04:54:30', '2021-08-03 04:54:30'),
(38, 'STATS', 'STATS TIME TO TIME OF VARIOUS MATCH , PLAYER , TEAM', 'ADMIN', 21, '2021-08-03 12:51:24', '2021-08-03 12:51:24'),
(39, 'Team', 'team data', 'ADMIN', 21, '2021-08-03 13:37:19', '2021-08-03 13:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `playerimages`
--

CREATE TABLE `playerimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `playerid` bigint(20) NOT NULL,
  `imagetype` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playerimages`
--

INSERT INTO `playerimages` (`id`, `playerid`, `imagetype`, `image`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 'player-1627890843.png', '2021-08-02 02:24:03', '2021-08-02 02:24:03'),
(2, 16, 2, 'player-1627891870.png', '2021-08-02 02:41:10', '2021-08-02 02:41:10'),
(3, 16, 1, 'player-1627893280.jpg', '2021-08-02 03:04:40', '2021-08-02 03:04:40'),
(4, 16, 1, 'player-1627895206.jpg', '2021-08-02 03:36:46', '2021-08-02 03:36:46'),
(5, 16, 1, 'player-1627895317.jpg', '2021-08-02 03:38:37', '2021-08-02 03:38:37'),
(6, 16, 1, 'player-1627895328.jpg', '2021-08-02 03:38:48', '2021-08-02 03:38:48'),
(7, 16, 1, 'player-1627895454.jpg', '2021-08-02 03:40:54', '2021-08-02 03:40:54'),
(9, 15, 2, 'player-1628712684.jpg', '2021-08-11 14:41:24', '2021-08-11 14:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `playerpages`
--

CREATE TABLE `playerpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pageid` bigint(20) NOT NULL,
  `playerid` bigint(20) NOT NULL,
  `addedby` bigint(20) NOT NULL,
  `pageLocation` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playerpages`
--

INSERT INTO `playerpages` (`id`, `pageid`, `playerid`, `addedby`, `pageLocation`, `created_at`, `updated_at`) VALUES
(1, 16, 16, 22, 1, '2021-08-01 23:28:56', '2021-08-01 23:28:56'),
(4, 17, 16, 22, 1, '2021-08-02 01:20:15', '2021-08-02 01:20:15'),
(5, 18, 16, 22, 1, '2021-08-02 03:50:12', '2021-08-02 03:50:12'),
(6, 19, 16, 22, 1, '2021-08-02 04:23:04', '2021-08-02 04:23:04'),
(7, 20, 16, 22, 1, '2021-08-02 08:57:32', '2021-08-02 08:57:32'),
(8, 21, 16, 22, 1, '2021-08-02 09:06:28', '2021-08-02 09:06:28'),
(9, 22, 16, 22, 1, '2021-08-02 09:10:08', '2021-08-02 09:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `playerproperties`
--

CREATE TABLE `playerproperties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `property_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playerproperties`
--

INSERT INTO `playerproperties` (`id`, `player_id`, `property_id`, `property_value`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 15, 2, '51', 22, '2021-07-30 01:38:33', '2021-08-03 22:09:04'),
(2, 15, 4, 'Defender - Centre-Back', 22, '2021-08-02 00:01:10', '2021-08-02 00:01:10'),
(3, 15, 3, '5.7\'', 22, '2021-08-02 00:49:51', '2021-08-02 00:49:51'),
(4, 15, 5, 'Center', 22, '2021-08-02 00:50:40', '2021-08-02 00:51:17'),
(5, 16, 2, '55kg', 22, '2021-08-02 04:01:18', '2021-08-02 04:01:18'),
(6, 16, 3, '5.11\' inch', 22, '2021-08-02 04:01:41', '2021-08-02 04:01:41'),
(7, 16, 4, 'back-center', 22, '2021-08-02 04:02:04', '2021-08-02 04:02:04'),
(8, 16, 5, 'Center', 22, '2021-08-02 04:02:21', '2021-08-02 04:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `sports_id` bigint(20) NOT NULL,
  `coach_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `country`, `dob`, `gender`, `created_by`, `team_id`, `sports_id`, `coach_id`, `created_at`, `updated_at`) VALUES
(15, 'Ram Nath Yadav', 'Australia', '1995-09-11', 'male', 22, 3, 1, 2, '2021-07-27 02:27:41', '2021-07-27 02:27:41'),
(16, 'Harry James Souttar', 'Scotland', '1998-10-22', 'male', 22, 3, 1, 2, '2021-08-01 23:15:22', '2021-08-01 23:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `playervideos`
--

CREATE TABLE `playervideos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `playerid` bigint(20) NOT NULL,
  `videotype` int(11) NOT NULL DEFAULT 3,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playervideos`
--

INSERT INTO `playervideos` (`id`, `playerid`, `videotype`, `video`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 16, 3, 'playerVideo-1628710084.mp4', 'Match Highlights | Socceroos v Jordan | Australia\'s FIFA World Cup 2022 qualifier', 'Watch all the highlights from the Socceroos\' FIFA World Cup qualifying win over Jordan!', '2021-08-11 13:58:04', '2021-08-11 13:58:04'),
(2, 16, 3, 'playerVideo-1628710434.mp4', 'Every Harry Souttar goal for the Socceroos', 'Watch Harry Souttar\'s six goals in five games for the Socceroos!', '2021-08-11 14:03:54', '2021-08-11 14:03:54'),
(3, 16, 3, 'playerVideo-1628710601.mp4', 'Harry Souttar \'delighted\' after scoring Socceroos\' winner | Interview | Australia v Jordan', 'Hear from Harry Souttar after he scored the Socceroos\' winning goal against Jordan!', '2021-08-11 14:06:42', '2021-08-11 14:06:42'),
(4, 16, 3, 'playerVideo-1628710828.mp4', 'HARRY SOUTTAR - Goals, Tackles and Passes (HD)', 'Highlights of the Stoke City prospects goals, tackles and passes from his career so far..\r\n\r\nHARRY SOUTTAR best pieces of play from the football league and international football.', '2021-08-11 14:10:28', '2021-08-11 14:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sports_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `sports_name`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Football', 'Football', 'Football, also called association football or soccer, is a game involving two teams of 11 players who try to maneuver the ball into the other team\'s goal without using their hands or arms. The team that scores more goals wins.', '2021-07-11 02:46:38', '2021-07-11 02:46:38'),
(2, 'Cricket', 'Cricket', 'Cricket is a bat-and-ball game played between two teams of eleven players on a field at the centre of which is a 22-yard pitch with a wicket at each end, each comprising two bails balanced on three stumps.', '2021-07-11 02:50:02', '2021-07-11 02:50:02'),
(3, 'Basketball', 'Basketball', 'The primary objective of shooting a basketball through the defender\'s hoop while preventing the opposing team from shooting through their own hoop.', '2021-07-11 02:55:29', '2021-07-11 02:55:29'),
(4, 'Baseball', 'Baseball', 'Baseball is a bat-and-ball game played between two opposing teams who take turns batting and fielding.', '2021-07-11 03:01:48', '2021-07-11 03:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `sportsproperties`
--

CREATE TABLE `sportsproperties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_name_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sports_id` bigint(20) NOT NULL,
  `added_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sportsproperties`
--

INSERT INTO `sportsproperties` (`id`, `property_name`, `property_name_description`, `sports_id`, `added_by`, `created_at`, `updated_at`) VALUES
(2, 'Weight', 'Weight of the player', -999, 21, '2021-07-27 01:54:34', '2021-07-27 01:54:34'),
(3, 'Height', 'Height of the player', -999, 21, '2021-07-27 01:54:56', '2021-07-27 01:54:56'),
(4, 'Defensive', 'defense types or other defense type players', 1, 21, '2021-07-27 02:01:54', '2021-07-27 02:01:54'),
(5, 'Midfield', 'Midfield players', 1, 21, '2021-07-27 02:02:06', '2021-07-27 02:02:06'),
(6, 'Attacking', 'Attacking player property ?', 1, 21, '2021-07-27 02:02:26', '2021-07-27 02:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `teamcoaches`
--

CREATE TABLE `teamcoaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `coach_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teamcoaches`
--

INSERT INTO `teamcoaches` (`id`, `team_id`, `coach_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2021-07-15 11:11:27', '2021-07-15 11:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sports_id` bigint(20) NOT NULL,
  `team_type_id` bigint(20) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_name`, `team_logo`, `sports_id`, `team_type_id`, `club_id`, `created_at`, `updated_at`) VALUES
(3, 'Hero Football', 'team-1626332931.jpg', 1, 2, 2, '2021-07-15 01:38:51', '2021-07-15 01:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `teamtypes`
--

CREATE TABLE `teamtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_type_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teamtypes`
--

INSERT INTO `teamtypes` (`id`, `team_type`, `team_type_description`, `created_at`, `updated_at`) VALUES
(1, 'Under-14', 'Playing Age', '2021-07-11 05:26:31', '2021-07-11 05:26:31'),
(2, 'Under-16', 'Playing Age', '2021-07-11 05:26:57', '2021-07-11 05:26:57'),
(3, 'Under-19', 'Playing Age', '2021-07-11 05:27:13', '2021-07-11 05:27:13'),
(4, 'Under-23', 'Playing Age', '2021-07-11 05:27:26', '2021-07-11 05:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1001) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `description`, `content`, `image`, `userid`, `created_at`, `updated_at`) VALUES
(1, 'PLAYER NEWS', 'Wrong PLAYER NEWS', 'PLAYER NEWS', NULL, '26', '2021-08-05 00:48:46', '2021-08-05 00:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `upcomingevents`
--

CREATE TABLE `upcomingevents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pageid` bigint(20) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `typeOfEvent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upcomingevents`
--

INSERT INTO `upcomingevents` (`id`, `pageid`, `startDate`, `endDate`, `typeOfEvent`, `created_at`, `updated_at`) VALUES
(1, 23, '2021-08-05 01:19:00', '2021-08-18 23:21:00', 1, '2021-08-02 12:34:44', '2021-08-02 12:34:44'),
(2, 23, '2021-08-05 20:30:00', '2021-08-08 20:36:00', 1, '2021-08-02 12:36:37', '2021-08-02 12:36:37'),
(3, 24, '2021-10-14 18:30:00', '2021-10-14 19:30:00', 2, '2021-08-03 01:19:23', '2021-08-03 01:19:23'),
(4, 25, '2021-11-15 15:32:00', '2021-11-26 13:35:00', 4, '2021-08-03 02:32:54', '2021-08-03 02:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `usercollections`
--

CREATE TABLE `usercollections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gencat` enum('MALE','FEMALE','ENTITY','OTHER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `approvedBy` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usercollections`
--

INSERT INTO `usercollections` (`id`, `firstname`, `lastname`, `gencat`, `username`, `password`, `approved`, `approvedBy`, `created_at`, `updated_at`) VALUES
(17, 'Vimal', 'Chhetri', 'OTHER', 'vimal', '$2y$10$o5LRZ3QB5tJChM2GAY8EzO6tzsIU96rez413FeOoaZidJzK9A2uGS', 'YES', 5, '2021-06-25 11:53:19', '2021-07-07 13:16:08'),
(19, 'rama', 'kanta', 'MALE', 'ramak', '$2y$10$Hdo45UaZL.KT8mYQoKzGj./R2uNhyUiwMk.cGANTtvm6NOMLicdlq', 'NO', 21, '2021-07-03 23:04:15', '2021-08-04 00:20:27'),
(20, 'Hero', 'Club', 'ENTITY', 'heroclub', '$2y$10$q48X.pBctgTyOD92R7l64u9zUia7bg62KAKvCTF13EsGpWpY1Wd7O', 'YES', 21, '2021-07-04 06:51:50', '2021-07-04 06:55:15'),
(21, 'vicky', 'Chhetri', 'MALE', 'vickychhetri', '$2y$10$DWPRXt2ijvDTzYtd9cv69ud02JksYPWPzQDgumRxOTTWMDKZT.DBO', 'YES', -999, '2021-07-04 11:07:33', '2021-07-04 11:07:33'),
(22, 'Salman', 'Khan', 'MALE', 'salman', '$2y$10$.ilKO6j1mVy/1CwuNlM8m.rVNbnkw0nPCaxqIDb.GbiY2Wp3Az90u', 'YES', 21, '2021-07-15 10:46:26', '2021-08-11 04:18:06'),
(24, 'demo', 'johns', 'MALE', 'priyankajonas', '$2y$10$dXlO8uUNACTCmb/NytI5K.evs5bVaN5Jk.djnwaS/fH3AQZc4dvZC', 'NO', 21, '2021-07-31 04:21:40', '2021-07-31 21:53:10'),
(25, 'Binary', 'Matter', 'OTHER', 'vickychhetri4@gmail.com', '$2y$10$fwc0m9SpWZaTr0lybk0lY.VF3v1ib3kPLYiImSX7p23plKJUqJmf2', 'YES', 21, '2021-07-31 21:32:28', '2021-07-31 21:54:31'),
(26, 'SAHIL', 'BHATTI', 'MALE', 'sahil123', '$2y$10$LLa9qeZ7.cOVAwkWwyhztOqaJPoohMrl3vp1NAG0NO5V6sXOCp7h2', 'YES', 21, '2021-08-03 23:08:40', '2021-08-04 23:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `userpersonals`
--

CREATE TABLE `userpersonals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userpersonals`
--

INSERT INTO `userpersonals` (`id`, `phone`, `mobile`, `email`, `address`, `bio`, `description`, `userid`, `user_category`, `created_at`, `updated_at`) VALUES
(3, '123456789', '4380553712', 'salman123@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '22', '1', '2021-07-31 05:10:49', '2021-08-04 03:07:11'),
(4, '0', '+919780553734', 'vickychhetri4@gmail.com', '-', '-', '-', '25', '10', '2021-07-31 21:32:28', '2021-07-31 21:32:28'),
(5, '9785473734', NULL, 'kumarvikram48@gmail.com', 'denom', 'demo', 'deno', '20', '1', '2021-08-01 12:16:50', '2021-08-01 12:17:46'),
(6, '0', '4380553712', 'demo123@gmail.com', '-', 'info', '-', '26', '11', '2021-08-03 23:08:41', '2021-08-04 22:58:26'),
(7, '0181205419', '4380553712', 'Rama123@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '19', '1', '2021-08-04 02:56:56', '2021-08-04 03:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) NOT NULL,
  `utype` enum('ADMIN','COACH','SELECTOR','CLUB','PLAYER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`id`, `userid`, `utype`, `created_at`, `updated_at`) VALUES
(2, 17, 'CLUB', '2021-07-02 10:01:53', '2021-07-02 10:01:53'),
(3, 19, 'COACH', '2021-07-03 23:04:15', '2021-07-03 23:04:15'),
(4, 20, 'CLUB', '2021-07-04 06:51:50', '2021-07-04 06:51:50'),
(5, 21, 'ADMIN', '2021-07-04 11:07:33', '2021-07-04 11:07:33'),
(6, 22, 'COACH', '2021-07-15 10:46:26', '2021-07-15 10:46:26'),
(8, 24, 'SELECTOR', '2021-07-31 04:21:42', '2021-07-31 04:21:42'),
(9, 25, 'SELECTOR', '2021-07-31 21:32:28', '2021-07-31 21:32:28'),
(10, 26, 'SELECTOR', '2021-08-03 23:08:40', '2021-08-03 23:08:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubbaseinfos`
--
ALTER TABLE `clubbaseinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `latestnews`
--
ALTER TABLE `latestnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `latestnews_userid_foreign` (`userid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagecategories`
--
ALTER TABLE `pagecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerimages`
--
ALTER TABLE `playerimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerpages`
--
ALTER TABLE `playerpages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pageid` (`pageid`);

--
-- Indexes for table `playerproperties`
--
ALTER TABLE `playerproperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playervideos`
--
ALTER TABLE `playervideos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sportsproperties`
--
ALTER TABLE `sportsproperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamcoaches`
--
ALTER TABLE `teamcoaches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_id` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamtypes`
--
ALTER TABLE `teamtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcomingevents`
--
ALTER TABLE `upcomingevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercollections`
--
ALTER TABLE `usercollections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpersonals`
--
ALTER TABLE `userpersonals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubbaseinfos`
--
ALTER TABLE `clubbaseinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `latestnews`
--
ALTER TABLE `latestnews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagecategories`
--
ALTER TABLE `pagecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `playerimages`
--
ALTER TABLE `playerimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `playerpages`
--
ALTER TABLE `playerpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `playerproperties`
--
ALTER TABLE `playerproperties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `playervideos`
--
ALTER TABLE `playervideos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sportsproperties`
--
ALTER TABLE `sportsproperties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teamcoaches`
--
ALTER TABLE `teamcoaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teamtypes`
--
ALTER TABLE `teamtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `upcomingevents`
--
ALTER TABLE `upcomingevents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usercollections`
--
ALTER TABLE `usercollections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userpersonals`
--
ALTER TABLE `userpersonals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `latestnews`
--
ALTER TABLE `latestnews`
  ADD CONSTRAINT `latestnews_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `usercollections` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
