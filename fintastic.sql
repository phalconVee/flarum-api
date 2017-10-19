-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2017 at 02:44 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fintastic`
--

-- --------------------------------------------------------

--
-- Table structure for table `fintaccess_tokens`
--

CREATE TABLE `fintaccess_tokens` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_activity` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fintapi_keys`
--

CREATE TABLE `fintapi_keys` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fintauth_tokens`
--

CREATE TABLE `fintauth_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fintdiscussions`
--

CREATE TABLE `fintdiscussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `participants_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_index` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL,
  `start_user_id` int(10) UNSIGNED DEFAULT NULL,
  `start_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `last_user_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_number` int(10) UNSIGNED DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintdiscussions`
--

INSERT INTO `fintdiscussions` (`id`, `title`, `comments_count`, `participants_count`, `number_index`, `start_time`, `start_user_id`, `start_post_id`, `last_time`, `last_user_id`, `last_post_id`, `last_post_number`, `hide_time`, `hide_user_id`, `slug`, `is_private`, `is_approved`, `is_locked`, `is_sticky`) VALUES
(1, 'Welcome to Fint Lending Community Forum', 4, 3, 4, '2017-10-10 16:06:09', 1, 1, '2017-10-10 16:26:07', 2, 9, 4, NULL, NULL, 'welcome-to-fint-lending-community-forum', 0, 1, 0, 0),
(2, 'MAKING LOANS SMARTER', 4, 2, 4, '2017-10-10 16:16:47', 1, 2, '2017-10-11 13:26:25', 1, 11, 4, NULL, NULL, 'making-loans-smarter', 0, 1, 0, 0),
(3, 'We are making borrowing money effortless.', 3, 2, 3, '2017-10-10 16:17:25', 1, 3, '2017-10-10 16:21:14', 2, 5, 3, NULL, NULL, 'we-are-making-borrowing-money-effortless', 0, 1, 0, 0),
(4, 'Major Bottlenecks to look out for when investing', 2, 2, 2, '2017-10-11 15:29:41', 3, 12, '2017-10-11 15:52:29', 1, 17, 2, NULL, NULL, 'major-bottlenecks-to-look-out-for-when-investing', 0, 1, 0, 0),
(5, 'I have an excellent credit score, but investors still reject me anyway. Why? ', 3, 3, 3, '2017-10-11 15:33:48', 2, 13, '2017-10-11 15:37:00', 4, 15, 3, NULL, NULL, 'i-have-an-excellent-credit-score-but-investors-still-reject-me-anyway-why', 0, 1, 0, 0),
(6, 'Is it true that I need to go into debt in order to have a good credit score?', 2, 1, 2, '2017-10-11 15:39:09', 4, 16, '2017-10-12 08:56:52', 4, 18, 2, NULL, NULL, 'is-it-true-that-i-need-to-go-into-debt-in-order-to-have-a-good-credit-score', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fintdiscussions_tags`
--

CREATE TABLE `fintdiscussions_tags` (
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintdiscussions_tags`
--

INSERT INTO `fintdiscussions_tags` (`discussion_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fintemail_tokens`
--

CREATE TABLE `fintemail_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintemail_tokens`
--

INSERT INTO `fintemail_tokens` (`id`, `email`, `user_id`, `created_at`) VALUES
('MQbPthklWfnB2ecVB3mMxeE2r5I77aer64gsBwD6', 'ugostein1000@gmail.com', 4, '2017-10-11 14:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `fintflags`
--

CREATE TABLE `fintflags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintflags`
--

INSERT INTO `fintflags` (`id`, `post_id`, `type`, `user_id`, `reason`, `reason_detail`, `time`) VALUES
(1, 6, 'user', 1, 'inappropriate', '', '2017-10-11 13:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `fintgroups`
--

CREATE TABLE `fintgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintgroups`
--

INSERT INTO `fintgroups` (`id`, `name_singular`, `name_plural`, `color`, `icon`) VALUES
(1, 'Admin', 'Admins', '#B72A2A', 'wrench'),
(2, 'Guest', 'Guests', NULL, NULL),
(3, 'Member', 'Members', NULL, NULL),
(4, 'Mod', 'Mods', '#80349E', 'bolt');

-- --------------------------------------------------------

--
-- Table structure for table `fintmentions_posts`
--

CREATE TABLE `fintmentions_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fintmentions_users`
--

CREATE TABLE `fintmentions_users` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintmentions_users`
--

INSERT INTO `fintmentions_users` (`post_id`, `mentions_id`) VALUES
(9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fintmigrations`
--

CREATE TABLE `fintmigrations` (
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintmigrations`
--

INSERT INTO `fintmigrations` (`migration`, `extension`) VALUES
('2015_02_24_000000_create_access_tokens_table', NULL),
('2015_02_24_000000_create_api_keys_table', NULL),
('2015_02_24_000000_create_config_table', NULL),
('2015_02_24_000000_create_discussions_table', NULL),
('2015_02_24_000000_create_email_tokens_table', NULL),
('2015_02_24_000000_create_groups_table', NULL),
('2015_02_24_000000_create_notifications_table', NULL),
('2015_02_24_000000_create_password_tokens_table', NULL),
('2015_02_24_000000_create_permissions_table', NULL),
('2015_02_24_000000_create_posts_table', NULL),
('2015_02_24_000000_create_users_discussions_table', NULL),
('2015_02_24_000000_create_users_groups_table', NULL),
('2015_02_24_000000_create_users_table', NULL),
('2015_09_15_000000_create_auth_tokens_table', NULL),
('2015_09_20_224327_add_hide_to_discussions', NULL),
('2015_09_22_030432_rename_notification_read_time', NULL),
('2015_10_07_130531_rename_config_to_settings', NULL),
('2015_10_24_194000_add_ip_address_to_posts', NULL),
('2015_12_05_042721_change_access_tokens_columns', NULL),
('2015_12_17_194247_change_settings_value_column_to_text', NULL),
('2016_02_04_095452_add_slug_to_discussions', NULL),
('2017_04_07_114138_add_is_private_to_discussions', NULL),
('2017_04_07_114138_add_is_private_to_posts', NULL),
('2017_04_09_152230_change_posts_content_column_to_mediumtext', NULL),
('2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval'),
('2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval'),
('2017_07_22_000000_add_default_permissions', 'flarum-approval'),
('2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags'),
('2015_09_02_000000_create_flags_table', 'flarum-flags'),
('2017_07_22_000000_add_default_permissions', 'flarum-flags'),
('2015_05_11_000000_create_posts_likes_table', 'flarum-likes'),
('2015_09_04_000000_add_default_like_permissions', 'flarum-likes'),
('2015_02_24_000000_add_locked_to_discussions', 'flarum-lock'),
('2017_07_22_000000_add_default_permissions', 'flarum-lock'),
('2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions'),
('2015_05_11_000000_create_mentions_users_table', 'flarum-mentions'),
('2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky'),
('2017_07_22_000000_add_default_permissions', 'flarum-sticky'),
('2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions'),
('2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend'),
('2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend'),
('2017_07_22_000000_add_default_permissions', 'flarum-suspend'),
('2015_02_24_000000_create_discussions_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_users_tags_table', 'flarum-tags'),
('2015_02_24_000000_set_default_settings', 'flarum-tags'),
('2015_10_19_061223_make_slug_unique', 'flarum-tags'),
('2017_07_22_000000_add_default_permissions', 'flarum-tags');

-- --------------------------------------------------------

--
-- Table structure for table `fintnotifications`
--

CREATE TABLE `fintnotifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `data` blob,
  `time` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintnotifications`
--

INSERT INTO `fintnotifications` (`id`, `user_id`, `sender_id`, `type`, `subject_type`, `subject_id`, `data`, `time`, `is_read`, `is_deleted`) VALUES
(1, 3, 2, 'userMentioned', NULL, 9, NULL, '2017-10-10 16:26:07', 0, 0),
(2, 2, 1, 'postLiked', NULL, 5, NULL, '2017-10-11 13:31:26', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fintpassword_tokens`
--

CREATE TABLE `fintpassword_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fintpermissions`
--

CREATE TABLE `fintpermissions` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintpermissions`
--

INSERT INTO `fintpermissions` (`group_id`, `permission`) VALUES
(2, 'viewDiscussions'),
(3, 'discussion.flagPosts'),
(3, 'discussion.likePosts'),
(3, 'discussion.reply'),
(3, 'discussion.replyWithoutApproval'),
(3, 'discussion.startWithoutApproval'),
(3, 'startDiscussion'),
(3, 'viewUserList'),
(4, 'discussion.approvePosts'),
(4, 'discussion.editPosts'),
(4, 'discussion.hide'),
(4, 'discussion.lock'),
(4, 'discussion.rename'),
(4, 'discussion.sticky'),
(4, 'discussion.tag'),
(4, 'discussion.viewFlags'),
(4, 'discussion.viewIpsPosts'),
(4, 'user.suspend');

-- --------------------------------------------------------

--
-- Table structure for table `fintposts`
--

CREATE TABLE `fintposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED DEFAULT NULL,
  `time` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` datetime DEFAULT NULL,
  `edit_user_id` int(10) UNSIGNED DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintposts`
--

INSERT INTO `fintposts` (`id`, `discussion_id`, `number`, `time`, `user_id`, `type`, `content`, `edit_time`, `edit_user_id`, `hide_time`, `hide_user_id`, `ip_address`, `is_private`, `is_approved`) VALUES
(1, 1, 1, '2017-10-10 16:06:09', 1, 'comment', '<r><p>FINT is a debt financing platform that connects borrowers and investors. The borrowers on one end can apply for loans by determining their credit worthiness (credit score), if credit worthy the loans are made public to investors who in-turn provide loans to borrowers in return for a 26-38% interest on the actual loan value provided.</p>\n\n<p>*For example, a twelve month ₦120,000 loan with a rate of 24% APR would have 12 scheduled monthly payments of ₦12,400. An eighteen month ₦360,000 loan with a rate of 30% APR would have 18 scheduled monthly payments of ₦26,000. Annual percentage rates (APRs) through FINT range from 24% APR (AA) to 37% APR (E<EMOJI seq=\"1f60e\">B)</EMOJI> for first-time borrowers, with the lowest rates for the most creditworthy borrowers.These rates vary based on FINT’s Interest pricing model. Eligibility is not guaranteed, and requires that a sufficient number of investors commit funds to your account and that you meet credit and other conditions. Refer to Borrower’s Agreement for details and all terms and conditions.</p>\n\n<p>FINT takes your privacy seriously. Please see FINT\'s Privacy Policy for more details.</p>\n\n<p>Investment Notes offered by FINT. Notes investors receive are dependent for payment on unsecured loans made to individual borrowers. Not NDIC-insured; investments may lose value; no FINT or bank guarantee. FINT does not verify all information provided by borrowers in listings. Investors should review the profile of the borrower before investing.</p></r>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(2, 2, 1, '2017-10-10 16:16:47', 1, 'comment', '<t><p>We\'re built on simplicity, speed and transparency.<br/>\nHere\'s how it works.</p>\n\n<p>Fill in our 30 second form</p>\n\n<p>We need a few basic details from you to perform our soft credit search.</p>\n\n\n<p>Instant decision</p>\n\n<p>Our algorithms assess hundreds of data points, to give you a rate personalised to your circumstances.</p>\n\n\n<p>Like our quote? Hit Accept. Done.</p>\n\n<p>We use the fastest systems around to get the money in your account. No more waiting 5 days.</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(3, 3, 1, '2017-10-10 16:17:25', 1, 'comment', '<t><p>Using technology, we have trimmed the fat from the traditional loan application process. The result allows us to make an instant decision, offer personalised rates, and transfer funds within minutes.</p>\n\n<p>We look beyond your credit score, offering loans to people with less-than-perfect credit histories, and charging them less than banks. This way, we provide fair rates to a wider range of borrowers.</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(4, 3, 2, '2017-10-10 16:20:31', 2, 'comment', '<t><p>How am i sure that this is not a scam..ehn</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(5, 3, 3, '2017-10-10 16:21:14', 2, 'comment', '<t><p>am still waiting for a reply o!</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(6, 2, 2, '2017-10-10 16:21:41', 2, 'comment', '<t><p>Please can you explain in plain terms for me</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(7, 1, 2, '2017-10-10 16:22:33', 2, 'comment', '<t><p>This is quite impressive and encouraging, but how do i know you are not a scam like those ponzi guys</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(8, 1, 3, '2017-10-10 16:23:51', 3, 'comment', '<t><p>see if you are not hear to ask constructive questions go to nairaland now o!</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(9, 1, 4, '2017-10-10 16:26:07', 2, 'comment', '<r><p>pls <USERMENTION id=\"3\" username=\"fatboi\">@fatboi</USERMENTION> mind your business, i am here to be enloghtened. we don\'t need ur like here o!</p></r>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(10, 2, 3, '2017-10-11 13:15:52', 1, 'comment', '<t><p>Pls ask responsible questions and move from asking inappropriate and insensitive ones</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(11, 2, 4, '2017-10-11 13:26:25', 1, 'comment', '<r><p><EMOJI seq=\"1f60a\">:blush:</EMOJI> <EMOJI seq=\"1f1ee-1f1f9\">:it:</EMOJI></p> </r>', '2017-10-11 13:26:53', 1, NULL, NULL, '::1', 0, 1),
(12, 4, 1, '2017-10-11 15:29:41', 3, 'comment', '<t><p>I will really like to now the major things to look out for when providing loans to borrowers. <br/>\nAny help will do thanks.</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(13, 5, 1, '2017-10-11 15:33:48', 2, 'comment', '<t><p>I started my banking career in credit risk management, which is the department usually responsible for building and implementing credit scores. Scores can be a great tool for risk management. But, at the same time, scores can be incredibly frustrating for borrowers. When an algorithm determines your ability to obtain credit, anger often follow a confusing rejection.</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(14, 5, 2, '2017-10-11 15:35:30', 3, 'comment', '<r><p>Just because you have a good credit score does not mean you will still get approved.<br/>\nMay be they are following you from your village <EMOJI seq=\"1f608\">:smiling_imp:</EMOJI></p> </r>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(15, 5, 3, '2017-10-11 15:37:00', 4, 'comment', '<t><p>You may not make enough money. Your credit score is based upon your credit report, which does not know your income.</p> </t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(16, 6, 1, '2017-10-11 15:39:09', 4, 'comment', '<t><p>Please i will really like to know as am almost approaching bankruptcy, so i feel it\'s like the perfect time to get a good credit score</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1),
(17, 4, 2, '2017-10-11 15:52:29', 1, 'comment', '<r><p>Just believe in urself and pray <EMOJI seq=\"1f64f\">:pray:</EMOJI></p> </r>', '2017-10-11 15:52:52', 1, NULL, NULL, '::1', 0, 1),
(18, 6, 2, '2017-10-12 08:56:52', 4, 'comment', '<t><p>thyn</p></t>', NULL, NULL, NULL, NULL, '::1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fintposts_likes`
--

CREATE TABLE `fintposts_likes` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintposts_likes`
--

INSERT INTO `fintposts_likes` (`post_id`, `user_id`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fintsettings`
--

CREATE TABLE `fintsettings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintsettings`
--

INSERT INTO `fintsettings` (`key`, `value`) VALUES
('allow_post_editing', 'reply'),
('allow_renaming', '10'),
('allow_sign_up', '1'),
('custom_header', ''),
('custom_less', ''),
('default_locale', 'en'),
('default_route', '/all'),
('extensions_enabled', '[\"flarum-approval\",\"flarum-bbcode\",\"flarum-emoji\",\"flarum-english\",\"flarum-flags\",\"flarum-likes\",\"flarum-lock\",\"flarum-markdown\",\"flarum-mentions\",\"flarum-sticky\",\"flarum-subscriptions\",\"flarum-suspend\",\"flarum-tags\"]'),
('favicon_path', 'favicon-by22zo3j.png'),
('flarum-tags.max_primary_tags', '3'),
('flarum-tags.max_secondary_tags', '3'),
('flarum-tags.min_primary_tags', '1'),
('flarum-tags.min_secondary_tags', '0'),
('forum_description', 'A community of borrowers and investors looking to benefit one another and create a prosperous ecosystem in the process.'),
('forum_title', 'Fint Lending Community Forum'),
('logo_path', 'logo-okptsjsm.png'),
('mail_driver', 'mail'),
('mail_encryption', 'ssl'),
('mail_from', 'support@fint.ng'),
('mail_host', 'sub5.mail.dreamhost.com'),
('mail_password', 'krAFRICA00'),
('mail_port', '465'),
('mail_username', 'support@fint.ng'),
('show_language_selector', '1'),
('theme_colored_header', '0'),
('theme_dark_mode', '0'),
('theme_primary_color', '#40a0d8'),
('theme_secondary_color', '#23303d'),
('version', '0.1.0-beta.7'),
('welcome_message', 'We were founded to make money simple and fair, for everyone: whether you’re looking for a loan, or to get better rewards for your investments.'),
('welcome_title', 'Welcome to Fint Lending Community Forum');

-- --------------------------------------------------------

--
-- Table structure for table `finttags`
--

CREATE TABLE `finttags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` datetime DEFAULT NULL,
  `last_discussion_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finttags`
--

INSERT INTO `finttags` (`id`, `name`, `slug`, `description`, `color`, `background_path`, `background_mode`, `position`, `parent_id`, `default_sort`, `is_restricted`, `is_hidden`, `discussions_count`, `last_time`, `last_discussion_id`) VALUES
(1, 'General', 'general', NULL, '#888', NULL, NULL, 0, NULL, NULL, 0, 0, 6, '2017-10-11 15:52:29', 4),
(2, 'Borrowers', 'borrowers', 'A place for borrowers to vent their frustration', '#df3826', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, '2017-10-11 15:52:29', 4),
(3, 'investors', 'investors', 'A place for investors to plot their evil ways', '#fc9000', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '2017-10-11 15:29:41', 4),
(4, 'Credit', 'credit', 'Discover and learn more about credit', '#bc6789', NULL, NULL, NULL, NULL, NULL, 0, 0, 2, '2017-10-11 15:39:09', 6);

-- --------------------------------------------------------

--
-- Table structure for table `fintusers`
--

CREATE TABLE `fintusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `join_time` datetime DEFAULT NULL,
  `last_seen_time` datetime DEFAULT NULL,
  `read_time` datetime DEFAULT NULL,
  `notifications_read_time` datetime DEFAULT NULL,
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `flags_read_time` datetime DEFAULT NULL,
  `suspend_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintusers`
--

INSERT INTO `fintusers` (`id`, `username`, `email`, `is_activated`, `password`, `bio`, `avatar_path`, `preferences`, `join_time`, `last_seen_time`, `read_time`, `notifications_read_time`, `discussions_count`, `comments_count`, `flags_read_time`, `suspend_until`) VALUES
(1, 'phalconVee', 'ugo@fint.ng', 1, '$2y$10$GmqroCRxgdIf7cTTLkie6uba.eqPeEFsEbhahmMn46hGToYvmdWmC', 'I don\'t give a fling.', 'iyays1n8388zmqw7.png', NULL, '2017-10-10 15:26:22', '2017-10-12 12:44:12', NULL, '2017-10-11 13:28:07', 3, 6, '2017-10-12 08:50:57', NULL),
(2, 'machinegun_kelly', 'phalcon.vee@gmail.com', 1, '$2y$10$GcS672zf/VVxrG45oYCOs.wv5MQU96.f8WrCogbVZEmA8hpSXQ2g.', 'i shoot to kill', 'subdmpmnnrl7d2tb.png', NULL, '2017-10-10 16:18:31', '2017-10-11 15:33:52', NULL, '2017-10-11 06:33:21', 1, 6, NULL, NULL),
(3, 'fatboi', 'fatboi@gmail.com', 1, '$2y$10$qOQB4Pdr2P4w3t2ZsuQJTOlOwgLNYh.QdP3FIDGONeDnevvX1y9Yy', 'white guys are trash', '0gtkso5xc9q0nkq7.png', NULL, '2017-10-10 16:22:56', '2017-10-11 15:35:54', NULL, NULL, 1, 3, NULL, NULL),
(4, 'chill_zone', 'ugostein1000@gmail.com', 1, '$2y$10$0KqYDGwQFgrJgDjP.14vdOULdPADT.pwbXDb1dc9llNf2M.2CyUUe', NULL, '227s3494knol4c1p.png', NULL, '2017-10-11 15:36:13', '2017-10-12 11:11:22', NULL, '2017-10-12 08:58:14', 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fintusers_discussions`
--

CREATE TABLE `fintusers_discussions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `read_number` int(10) UNSIGNED DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintusers_discussions`
--

INSERT INTO `fintusers_discussions` (`user_id`, `discussion_id`, `read_time`, `read_number`, `subscription`) VALUES
(1, 1, '2017-10-11 12:57:00', 4, NULL),
(1, 2, '2017-10-11 13:26:25', 4, NULL),
(1, 3, '2017-10-11 13:28:37', 3, NULL),
(1, 4, '2017-10-11 15:52:30', 2, NULL),
(1, 6, '2017-10-12 11:16:54', 2, NULL),
(2, 1, '2017-10-10 16:26:08', 4, 'follow'),
(2, 2, '2017-10-10 16:21:41', 2, NULL),
(2, 3, '2017-10-10 16:21:14', 3, 'follow'),
(2, 5, '2017-10-11 15:33:49', 1, NULL),
(3, 1, '2017-10-10 16:23:51', 3, NULL),
(3, 4, '2017-10-11 15:29:42', 1, NULL),
(3, 5, '2017-10-11 15:35:30', 2, NULL),
(4, 5, '2017-10-11 15:37:00', 3, NULL),
(4, 6, '2017-10-12 08:56:52', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fintusers_groups`
--

CREATE TABLE `fintusers_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintusers_groups`
--

INSERT INTO `fintusers_groups` (`user_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fintusers_tags`
--

CREATE TABLE `fintusers_tags` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fintaccess_tokens`
--
ALTER TABLE `fintaccess_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintapi_keys`
--
ALTER TABLE `fintapi_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintauth_tokens`
--
ALTER TABLE `fintauth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintdiscussions`
--
ALTER TABLE `fintdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintdiscussions_tags`
--
ALTER TABLE `fintdiscussions_tags`
  ADD PRIMARY KEY (`discussion_id`,`tag_id`);

--
-- Indexes for table `fintemail_tokens`
--
ALTER TABLE `fintemail_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintflags`
--
ALTER TABLE `fintflags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintgroups`
--
ALTER TABLE `fintgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintmentions_posts`
--
ALTER TABLE `fintmentions_posts`
  ADD PRIMARY KEY (`post_id`,`mentions_id`);

--
-- Indexes for table `fintmentions_users`
--
ALTER TABLE `fintmentions_users`
  ADD PRIMARY KEY (`post_id`,`mentions_id`);

--
-- Indexes for table `fintnotifications`
--
ALTER TABLE `fintnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintpassword_tokens`
--
ALTER TABLE `fintpassword_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fintpermissions`
--
ALTER TABLE `fintpermissions`
  ADD PRIMARY KEY (`group_id`,`permission`);

--
-- Indexes for table `fintposts`
--
ALTER TABLE `fintposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`);
ALTER TABLE `fintposts` ADD FULLTEXT KEY `content` (`content`);

--
-- Indexes for table `fintposts_likes`
--
ALTER TABLE `fintposts_likes`
  ADD PRIMARY KEY (`post_id`,`user_id`);

--
-- Indexes for table `fintsettings`
--
ALTER TABLE `fintsettings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `finttags`
--
ALTER TABLE `finttags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `fintusers`
--
ALTER TABLE `fintusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `fintusers_discussions`
--
ALTER TABLE `fintusers_discussions`
  ADD PRIMARY KEY (`user_id`,`discussion_id`);

--
-- Indexes for table `fintusers_groups`
--
ALTER TABLE `fintusers_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `fintusers_tags`
--
ALTER TABLE `fintusers_tags`
  ADD PRIMARY KEY (`user_id`,`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fintdiscussions`
--
ALTER TABLE `fintdiscussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fintflags`
--
ALTER TABLE `fintflags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fintgroups`
--
ALTER TABLE `fintgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fintnotifications`
--
ALTER TABLE `fintnotifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fintposts`
--
ALTER TABLE `fintposts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `finttags`
--
ALTER TABLE `finttags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fintusers`
--
ALTER TABLE `fintusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
