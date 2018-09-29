-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2018 at 12:55 AM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-19 00:21:42', '2018-09-19 00:21:42', 'Amazing! can''t wait to spend my next Vacation here! thanks for the blog!.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=232 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/38', 'yes'),
(2, 'home', 'http://localhost/38', 'yes'),
(3, 'blogname', 'PHILIPPINES', 'yes'),
(4, 'blogdescription', 'zzzzzzzzzzzzzz', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'izzy.cardenas07@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'image-gallery', 'yes'),
(41, 'stylesheet', 'image-gallery', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar_primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"footer-widget-area";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1538184137;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1538223737;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1538223738;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1538266995;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1538267303;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1537317522;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1538180997;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(141, 'current_theme', 'Image Gallery', 'yes'),
(142, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1537317367;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, '_transient_twentyfifteen_categories', '1', 'yes'),
(149, 'theme_mods_wallstreet', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1537922245;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar_primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"footer-widget-area";a:0:{}}}}', 'yes'),
(161, 'theme_mods_image-gallery', 'a:9:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:12:"header_image";s:67:"http://localhost/38/wp-content/uploads/2018/09/cropped-header-3.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:21;s:3:"url";s:67:"http://localhost/38/wp-content/uploads/2018/09/cropped-header-3.jpg";s:13:"thumbnail_url";s:67:"http://localhost/38/wp-content/uploads/2018/09/cropped-header-3.jpg";s:6:"height";i:667;s:5:"width";i:1000;}s:22:"custom_header_position";s:4:"home";s:28:"social_media_activate_header";i:1;s:27:"image_gallery_sidebar_width";s:2:"18";s:30:"image_gallery_sidebar_position";s:1:"1";}', 'yes'),
(162, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1538181002;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.0.8";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(177, 'theme_mods_llorix-one-lite', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(186, 'theme_switch_menu_locations', 'a:0:{}', 'yes'),
(187, 'theme_switched_via_customizer', '', 'yes'),
(188, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(208, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1538528696', 'no'),
(209, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"69.0.3497.100";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(224, '_transient_is_multi_author', '0', 'yes'),
(225, '_transient_image_gallery_categories', '1', 'yes'),
(229, '_site_transient_timeout_theme_roots', '1538182799', 'no'),
(230, '_site_transient_theme_roots', 'a:6:{s:13:"image-gallery";s:7:"/themes";s:15:"llorix-one-lite";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:10:"wallstreet";s:7:"/themes";}', 'no'),
(231, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1538181001;s:7:"checked";a:6:{s:13:"image-gallery";s:5:"1.2.0";s:15:"llorix-one-lite";s:6:"0.2.17";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";s:10:"wallstreet";s:7:"1.7.8.3";}s:8:"response";a:1:{s:10:"wallstreet";a:4:{s:5:"theme";s:10:"wallstreet";s:11:"new_version";s:7:"1.7.8.4";s:3:"url";s:40:"https://wordpress.org/themes/wallstreet/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/wallstreet.1.7.8.4.zip";}}s:12:"translations";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=97 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_wp_attached_file', '2018/09/ph.jpeg'),
(4, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:423;s:6:"height";i:119;s:4:"file";s:15:"2018/09/ph.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"ph-150x119.jpeg";s:5:"width";i:150;s:6:"height";i:119;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"ph-300x84.jpeg";s:5:"width";i:300;s:6:"height";i:84;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 8, '_customize_restore_dismissed', '1'),
(9, 9, '_edit_lock', '1537920914:1'),
(10, 10, '_wp_attached_file', '2018/09/cropped-ph.jpeg'),
(11, 10, '_wp_attachment_context', 'custom-header'),
(12, 10, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:423;s:6:"height";i:119;s:4:"file";s:23:"2018/09/cropped-ph.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"cropped-ph-150x119.jpeg";s:5:"width";i:150;s:6:"height";i:119;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cropped-ph-300x84.jpeg";s:5:"width";i:300;s:6:"height";i:84;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:6;}'),
(15, 9, '_wp_trash_meta_status', 'publish'),
(16, 9, '_wp_trash_meta_time', '1537920939'),
(17, 11, '_edit_lock', '1537920960:1'),
(18, 11, '_customize_restore_dismissed', '1'),
(19, 12, '_wp_attached_file', '2018/09/header.jpg'),
(20, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:18:"2018/09/header.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"header-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"header-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 13, '_wp_attached_file', '2018/09/cropped-header.jpg'),
(22, 13, '_wp_attachment_context', 'custom-header'),
(23, 13, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:26:"2018/09/cropped-header.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-header-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-header-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:12;}'),
(27, 15, '_wp_attached_file', '2018/09/header-1.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1199;s:6:"height";i:800;s:4:"file";s:20:"2018/09/header-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"header-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"header-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"header-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"header-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(29, 16, '_wp_attached_file', '2018/09/cropped-header-1-2.jpg'),
(30, 16, '_wp_attachment_context', 'custom-header'),
(31, 16, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1199;s:6:"height";i:800;s:4:"file";s:30:"2018/09/cropped-header-1-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-header-1-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-header-1-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"cropped-header-1-2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"cropped-header-1-2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:15;}'),
(34, 14, '_customize_restore_dismissed', '1'),
(35, 17, '_wp_attached_file', '2018/09/cropped-header-1-1.jpg'),
(36, 17, '_wp_attachment_context', 'custom-logo'),
(37, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1199;s:6:"height";i:800;s:4:"file";s:30:"2018/09/cropped-header-1-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-header-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-header-1-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"cropped-header-1-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"cropped-header-1-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 19, '_wp_attached_file', '2018/09/cropped-header-2.jpg'),
(40, 19, '_wp_attachment_context', 'custom-header'),
(41, 19, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:28:"2018/09/cropped-header-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-header-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"cropped-header-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"cropped-header-2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:12;}'),
(44, 18, '_customize_restore_dismissed', '1'),
(45, 20, '_wp_trash_meta_status', 'publish'),
(46, 20, '_wp_trash_meta_time', '1537922246'),
(47, 21, '_wp_attached_file', '2018/09/cropped-header-3.jpg'),
(48, 21, '_wp_attachment_context', 'custom-header'),
(49, 21, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:28:"2018/09/cropped-header-3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-header-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"cropped-header-3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"cropped-header-3-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:12;}'),
(50, 21, '_wp_attachment_custom_header_last_used_image-gallery', '1537922295'),
(51, 21, '_wp_attachment_is_custom_header', 'image-gallery'),
(52, 22, '_wp_trash_meta_status', 'publish'),
(53, 22, '_wp_trash_meta_time', '1537922295'),
(55, 23, '_customize_restore_dismissed', '1'),
(56, 24, '_edit_lock', '1537922572:1'),
(57, 24, '_wp_trash_meta_status', 'publish'),
(58, 24, '_wp_trash_meta_time', '1537922582'),
(59, 1, '_edit_lock', '1537923594:1'),
(60, 26, '_wp_attached_file', '2018/09/el-nido-photo-gallery-4237.jpg'),
(61, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:805;s:4:"file";s:38:"2018/09/el-nido-photo-gallery-4237.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"el-nido-photo-gallery-4237-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"el-nido-photo-gallery-4237-300x242.jpg";s:5:"width";i:300;s:6:"height";i:242;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"el-nido-photo-gallery-4237-768x618.jpg";s:5:"width";i:768;s:6:"height";i:618;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(62, 27, '_wp_attached_file', '2018/09/el-nido-photo-gallery-04437.jpg'),
(63, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:812;s:6:"height";i:1000;s:4:"file";s:39:"2018/09/el-nido-photo-gallery-04437.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04437-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04437-244x300.jpg";s:5:"width";i:244;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04437-768x946.jpg";s:5:"width";i:768;s:6:"height";i:946;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 28, '_wp_attached_file', '2018/09/el-nido-photo-gallery-04484.jpg'),
(65, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:39:"2018/09/el-nido-photo-gallery-04484.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04484-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04484-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04484-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 29, '_wp_attached_file', '2018/09/el-nido-photo-gallery-04702.jpg'),
(67, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:39:"2018/09/el-nido-photo-gallery-04702.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04702-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04702-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"el-nido-photo-gallery-04702-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 30, '_menu_item_type', 'custom'),
(69, 30, '_menu_item_menu_item_parent', '0'),
(70, 30, '_menu_item_object_id', '30'),
(71, 30, '_menu_item_object', 'custom'),
(72, 30, '_menu_item_target', ''),
(73, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 30, '_menu_item_xfn', ''),
(75, 30, '_menu_item_url', 'http://localhost/38/'),
(76, 30, '_menu_item_orphaned', '1537922870'),
(77, 31, '_menu_item_type', 'post_type'),
(78, 31, '_menu_item_menu_item_parent', '0'),
(79, 31, '_menu_item_object_id', '2'),
(80, 31, '_menu_item_object', 'page'),
(81, 31, '_menu_item_target', ''),
(82, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 31, '_menu_item_xfn', ''),
(84, 31, '_menu_item_url', ''),
(85, 31, '_menu_item_orphaned', '1537922871'),
(86, 1, '_edit_last', '1'),
(93, 2, '_edit_lock', '1537924758:1'),
(94, 38, '_wp_attached_file', '2018/09/1.jpg'),
(95, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:820;s:6:"height";i:547;s:4:"file";s:13:"2018/09/1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 2, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-19 00:21:42', '2018-09-19 00:21:42', '<h1 style="text-align: center;"><strong>EL NIDO PALAWAN</strong></h1>\r\n<p style="text-align: center;">El Nido is a small region in the north of the island of Palawan, Philippines. It is most commonly accessed either by <a href="https://server6.kproxy.com/servlet/redirect.srv/sruj/sjbpkrbgkfb/sqrs/p2/el-nido-to-coron-ferry/">ferry from Coron</a> or by van from Puerto Princesa as there is only a tiny airport with minimal flight options.It is a remarkable region, highlighted by breathtaking islands, lagoons, secret beaches and grandiose cliffs. Despite the unbelievable natural beauty the town is still relatively undeveloped with less major hotels and luxury accommodations than similar tropical destinations in Southeast Asia.</p>\r\n<p style="text-align: center;">This makes El Nido the perfect place for a getaway full of adventure, exploration beautiful natural scenery. These El Nido, Philippines images will hopefully inspire you to travel to the region and enjoy the stunning scenery. It will be the highlight of your trip to the Philippines I promise.</p>\r\n&nbsp;\r\n<h2 style="text-align: center;"><strong>Unwind and Enjoy the Scenery.</strong></h2>\r\n<h2 style="text-align: center;"><img class="aligncenter wp-image-26 size-full" style="text-align: center;" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-4237.jpg" alt="" width="1000" height="805" /></h2>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h3 style="text-align: center;"><strong>DEVOUR on the fiesty Meal Perfect for the Beach.</strong></h3>\r\n&nbsp;\r\n\r\n<img class="aligncenter wp-image-27 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04437.jpg" alt="" width="812" height="1000" />\r\n<h3 style="text-align: center;"></h3>\r\n<h3 style="text-align: center;"><strong>Island hopping on Tour moments to be Cherrished.</strong></h3>\r\n&nbsp;\r\n\r\n<img class="aligncenter wp-image-28 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04484.jpg" alt="" width="1000" height="667" />\r\n\r\n&nbsp;\r\n<h2 style="text-align: center;">Get Wild and Explore your inner Tarzan!</h2>\r\n&nbsp;\r\n\r\n<img class="aligncenter wp-image-29 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04702.jpg" alt="" width="1000" height="667" />', 'EL NIDO PALAWAN', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-26 01:01:49', '2018-09-26 01:01:49', '', 0, 'http://localhost/38/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-19 00:21:42', '2018-09-19 00:21:42', '<h1 style="text-align: center;"><strong>HERE''S WHY!</strong></h1>\r\n<p style="text-align: left;">                           Visiting the Philippines is big fun. Perfect beaches. Friendly locals. Beautiful nature. Plus, it''s a cheap country to travel, you''ll get a great value for your money.</p>\r\n<img class="aligncenter wp-image-38 size-full" src="http://localhost/38/wp-content/uploads/2018/09/1.jpg" alt="" width="820" height="547" />\r\n<div id="cc-m-7088797084" class="j-module n j-text ">\r\n\r\n                           I''ve been f̶o̶u̶r̶  ten times to the Philippines and spent in total more than eight months there and hell... This place blew my mind! Whenever I meet travelers, I encourage them to                         travel the Philippines, but for some reasons, people are still hesitant and stick to the ordinary "Thailand-Laos-Cambodia-Vietnam Route". Don''t miss out on such an amazing country!! In                  my opinion, Philippines is better than all of these countries together. And I tell you why!\r\n\r\n</div>\r\n<h2 style="text-align: center;">HERE ARE MY 10 REASONS WHY YOU SHOULD TRAVEL TO THE PHILIPPINES!</h2>\r\n&nbsp;\r\n\r\n&nbsp;', 'WHY THE PHILIPPINES?', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-09-26 01:19:17', '2018-09-26 01:19:17', '', 0, 'http://localhost/38/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-19 00:21:42', '2018-09-19 00:21:42', '<h2>Who we are</h2><p>Our website address is: http://localhost/38.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-19 00:21:42', '2018-09-19 00:21:42', '', 0, 'http://localhost/38/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-09-19 00:54:45', '2018-09-19 00:54:45', '', 'ph', '', 'inherit', 'open', 'closed', '', 'ph', '', '', '2018-09-19 00:54:45', '2018-09-19 00:54:45', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/ph.jpeg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-09-26 00:03:58', '0000-00-00 00:00:00', '{\n    "image-gallery::header_image": {\n        "value": "random-default-image",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:03:58"\n    },\n    "image-gallery::header_image_data": {\n        "value": "random-default-image",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:03:58"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd58815c7-a300-4dce-a881-d7dfe2837783', '', '', '2018-09-26 00:03:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2018-09-26 00:15:38', '2018-09-26 00:15:38', '{\n    "blogname": {\n        "value": "PHILIPPINES",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:15:13"\n    },\n    "blogdescription": {\n        "value": "zzzzzzzzzzzzzz",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:15:13"\n    },\n    "image-gallery::header_image": {\n        "value": "http://localhost/38/wp-content/uploads/2018/09/cropped-ph.jpeg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:15:38"\n    },\n    "image-gallery::header_image_data": {\n        "value": {\n            "url": "http://localhost/38/wp-content/uploads/2018/09/cropped-ph.jpeg",\n            "thumbnail_url": "http://localhost/38/wp-content/uploads/2018/09/cropped-ph.jpeg",\n            "timestamp": 1537920927395,\n            "attachment_id": 10,\n            "width": 423,\n            "height": 119\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:15:38"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd90113f0-acaf-4057-83de-d9ba9c44f0b4', '', '', '2018-09-26 00:15:38', '2018-09-26 00:15:38', '', 0, 'http://localhost/38/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2018-09-26 00:15:27', '2018-09-26 00:15:27', '', 'cropped-ph.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-ph-jpeg', '', '', '2018-09-26 00:15:27', '2018-09-26 00:15:27', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/cropped-ph.jpeg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-09-26 00:16:00', '0000-00-00 00:00:00', '{\n    "image-gallery::header_image": {\n        "value": "random-default-image",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:16:00"\n    },\n    "image-gallery::header_image_data": {\n        "value": "random-default-image",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:16:00"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b9b1fdac-5f52-4faf-acf9-8fb8623eab23', '', '', '2018-09-26 00:16:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2018-09-26 00:18:42', '2018-09-26 00:18:42', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2018-09-26 00:18:42', '2018-09-26 00:18:42', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/header.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-09-26 00:18:50', '2018-09-26 00:18:50', '', 'cropped-header.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-jpg', '', '', '2018-09-26 00:18:50', '2018-09-26 00:18:50', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/cropped-header.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-09-26 00:19:13', '0000-00-00 00:00:00', '{\n    "image-gallery::header_image": {\n        "value": "http://localhost/38/wp-content/uploads/2018/09/cropped-header.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:19:13"\n    },\n    "image-gallery::header_image_data": {\n        "value": {\n            "url": "http://localhost/38/wp-content/uploads/2018/09/cropped-header.jpg",\n            "thumbnail_url": "http://localhost/38/wp-content/uploads/2018/09/cropped-header.jpg",\n            "timestamp": 1537921131303,\n            "attachment_id": 13,\n            "width": 1000,\n            "height": 667\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:19:13"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'df046725-8c6d-4758-9c51-2c95beb79c88', '', '', '2018-09-26 00:19:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2018-09-26 00:24:08', '2018-09-26 00:24:08', '', 'header', '', 'inherit', 'open', 'closed', '', 'header-2', '', '', '2018-09-26 00:24:08', '2018-09-26 00:24:08', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/header-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-09-26 00:27:55', '2018-09-26 00:27:55', '', 'cropped-header-1-2.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-header-1-jpg', '', '', '2018-09-26 00:27:55', '2018-09-26 00:27:55', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/cropped-header-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-09-26 00:27:22', '2018-09-26 00:27:22', 'http://localhost/38/wp-content/uploads/2018/09/cropped-header-1-1.jpg', 'cropped-header-1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-1-1-jpg', '', '', '2018-09-26 00:27:22', '2018-09-26 00:27:22', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/cropped-header-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-09-26 00:35:12', '0000-00-00 00:00:00', '{\n    "image-gallery::custom_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:28:24"\n    },\n    "image-gallery::header_image": {\n        "value": "http://localhost/38/wp-content/uploads/2018/09/cropped-header-2.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:29:36"\n    },\n    "image-gallery::header_image_data": {\n        "value": {\n            "url": "http://localhost/38/wp-content/uploads/2018/09/cropped-header-2.jpg",\n            "thumbnail_url": "http://localhost/38/wp-content/uploads/2018/09/cropped-header-2.jpg",\n            "timestamp": 1537921765076,\n            "attachment_id": 19,\n            "width": 1000,\n            "height": 667\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:29:36"\n    },\n    "image-gallery::header_height": {\n        "value": "00",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:28:36"\n    },\n    "image-gallery::custom_header_position": {\n        "value": "home",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:29:36"\n    },\n    "image-gallery::custom_header_overlay": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:29:36"\n    },\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjc6IlBhbGF3YW4iO3M6NjoibnVtYmVyIjtpOjE7czo5OiJzaG93X2RhdGUiO2I6MDt9",\n            "title": "Palawan",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "f9fbbb0baa35ed024ce4a2de0cd9599c"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:33:12"\n    },\n    "widget_recent-comments[2]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "6cc3d80ce86c418655859c16d417f166"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:34:12"\n    },\n    "blogname": {\n        "value": "PHILIPPINES",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:35:12"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e89c8c66-7d30-4beb-bea4-c724bb3f6435', '', '', '2018-09-26 00:35:12', '2018-09-26 00:35:12', '', 0, 'http://localhost/38/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2018-09-26 00:29:24', '2018-09-26 00:29:24', '', 'cropped-header-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-2-jpg', '', '', '2018-09-26 00:29:24', '2018-09-26 00:29:24', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/cropped-header-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-09-26 00:37:26', '2018-09-26 00:37:26', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [\n\n            ],\n            "sidebar_primary": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "footer-widget-area": [\n\n            ]\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:37:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6dd876c3-a280-45a9-b1d4-dc0a77924c05', '', '', '2018-09-26 00:37:26', '2018-09-26 00:37:26', '', 0, 'http://localhost/38/index.php/2018/09/26/6dd876c3-a280-45a9-b1d4-dc0a77924c05/', 0, 'customize_changeset', '', 0),
(21, 1, '2018-09-26 00:37:58', '2018-09-26 00:37:58', '', 'cropped-header-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-3-jpg', '', '', '2018-09-26 00:37:58', '2018-09-26 00:37:58', '', 0, 'http://localhost/38/wp-content/uploads/2018/09/cropped-header-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-09-26 00:38:15', '2018-09-26 00:38:15', '{\n    "image-gallery::header_image": {\n        "value": "http://localhost/38/wp-content/uploads/2018/09/cropped-header-3.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:38:15"\n    },\n    "image-gallery::header_image_data": {\n        "value": {\n            "url": "http://localhost/38/wp-content/uploads/2018/09/cropped-header-3.jpg",\n            "thumbnail_url": "http://localhost/38/wp-content/uploads/2018/09/cropped-header-3.jpg",\n            "timestamp": 1537922279077,\n            "attachment_id": 21,\n            "width": 1000,\n            "height": 667\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:38:15"\n    },\n    "image-gallery::custom_header_position": {\n        "value": "home",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:38:15"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a1de523-d428-480a-88c5-32d4ce2dddc8', '', '', '2018-09-26 00:38:15', '2018-09-26 00:38:15', '', 0, 'http://localhost/38/index.php/2018/09/26/2a1de523-d428-480a-88c5-32d4ce2dddc8/', 0, 'customize_changeset', '', 0),
(23, 1, '2018-09-26 00:40:54', '0000-00-00 00:00:00', '{\n    "image-gallery::nav_menu_locations[primary]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:40:54"\n    },\n    "nav_menu[-1539885305]": {\n        "value": {\n            "name": "Palawan",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:40:54"\n    },\n    "nav_menu_item[-1129903942]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/38",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": -1539885305,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:40:54"\n    },\n    "nav_menu_item[-1556927795]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:40:54"\n    },\n    "nav_menu_item[-2069473985]": {\n        "value": {\n            "object_id": 1,\n            "object": "post",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Hello world!",\n            "url": "http://localhost/38/index.php/2018/09/19/hello-world/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Hello world!",\n            "nav_menu_term_id": -1539885305,\n            "_invalid": false,\n            "type_label": "Post"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:40:54"\n    },\n    "nav_menu_item[-252466463]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:40:54"\n    },\n    "nav_menu_item[-570762011]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:40:54"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '684aa37f-5f07-4534-9a38-0dcde3d60cd4', '', '', '2018-09-26 00:40:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2018-09-26 00:43:01', '2018-09-26 00:43:01', '{\n    "image-gallery::social_media_activate_header": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:42:52"\n    },\n    "image-gallery::image_gallery_sidebar_width": {\n        "value": "18",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:42:52"\n    },\n    "image-gallery::image_gallery_sidebar_position": {\n        "value": "1",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-26 00:42:52"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '73e1d205-385b-48b2-bed6-a9f4bf675467', '', '', '2018-09-26 00:43:01', '2018-09-26 00:43:01', '', 0, 'http://localhost/38/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2018-09-26 01:01:32', '2018-09-26 01:01:32', '<h1 style="text-align: center;"><strong>EL NIDO PALAWAN</strong></h1>\n<p style="text-align: center;">El Nido is a small region in the north of the island of Palawan, Philippines. It is most commonly accessed either by <a href="https://server6.kproxy.com/servlet/redirect.srv/sruj/sjbpkrbgkfb/sqrs/p2/el-nido-to-coron-ferry/">ferry from Coron</a> or by van from Puerto Princesa as there is only a tiny airport with minimal flight options.It is a remarkable region, highlighted by breathtaking islands, lagoons, secret beaches and grandiose cliffs. Despite the unbelievable natural beauty the town is still relatively undeveloped with less major hotels and luxury accommodations than similar tropical destinations in Southeast Asia.</p>\n<p style="text-align: center;">This makes El Nido the perfect place for a getaway full of adventure, exploration beautiful natural scenery. These El Nido, Philippines images will hopefully inspire you to travel to the region and enjoy the stunning scenery. It will be the highlight of your trip to the Philippines I promise.</p>\n&nbsp;\n<h2 style="text-align: center;"><strong>Unwind and Enjoy the Scenery.</strong></h2>\n<h2 style="text-align: center;"><img class="aligncenter wp-image-26 size-full" style="text-align: center;" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-4237.jpg" alt="" width="1000" height="805" /></h2>\n&nbsp;\n\n&nbsp;\n<h3 style="text-align: center;"><strong>DEVOUR on the fiesty Meal Perfect for the Beach.</strong></h3>\n&nbsp;\n\n<img class="aligncenter wp-image-27 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04437.jpg" alt="" width="812" height="1000" />\n<h3 style="text-align: center;"></h3>\n<h3 style="text-align: center;"><strong>Island hopping on Tour moments to be Cherrished.</strong></h3>\n&nbsp;\n\n<img class="aligncenter wp-image-28 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04484.jpg" alt="" width="1000" height="667" />\n\n&nbsp;\n<h3 style="text-align: center;">Get Wild and Explore your inner Tarzan!</h3>\n&nbsp;\n\n<img class="aligncenter wp-image-29 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04702.jpg" alt="" width="1000" height="667" />', 'EL NIDO PALAWAN', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-09-26 01:01:32', '2018-09-26 01:01:32', '', 1, 'http://localhost/38/index.php/2018/09/26/1-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2018-09-26 00:47:13', '2018-09-26 00:47:13', '', 'el-nido-photo-gallery-4237', '', 'inherit', 'open', 'closed', '', 'el-nido-photo-gallery-4237', '', '', '2018-09-26 00:47:13', '2018-09-26 00:47:13', '', 1, 'http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-4237.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-09-26 00:47:14', '2018-09-26 00:47:14', '', 'el-nido-photo-gallery-04437', '', 'inherit', 'open', 'closed', '', 'el-nido-photo-gallery-04437', '', '', '2018-09-26 00:47:14', '2018-09-26 00:47:14', '', 1, 'http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04437.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-09-26 00:47:15', '2018-09-26 00:47:15', '', 'el-nido-photo-gallery-04484', '', 'inherit', 'open', 'closed', '', 'el-nido-photo-gallery-04484', '', '', '2018-09-26 00:47:15', '2018-09-26 00:47:15', '', 1, 'http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04484.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-09-26 00:47:16', '2018-09-26 00:47:16', '', 'el-nido-photo-gallery-04702', '', 'inherit', 'open', 'closed', '', 'el-nido-photo-gallery-04702', '', '', '2018-09-26 00:47:16', '2018-09-26 00:47:16', '', 1, 'http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04702.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-09-26 00:47:49', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-26 00:47:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-09-26 00:47:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-26 00:47:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-09-26 00:49:27', '2018-09-26 00:49:27', '<p style="text-align: center;">El Nido is a small region in the north of the island of Palawan, Philippines. It is most commonly accessed either by <a href="https://server6.kproxy.com/servlet/redirect.srv/sruj/sjbpkrbgkfb/sqrs/p2/el-nido-to-coron-ferry/">ferry from Coron</a> or by van from Puerto Princesa as there is only a tiny airport with minimal flight options.It is a remarkable region, highlighted by breathtaking islands, lagoons, secret beaches and grandiose cliffs. Despite the unbelievable natural beauty the town is still relatively undeveloped with less major hotels and luxury accommodations than similar tropical destinations in Southeast Asia.</p>\r\n<p style="text-align: center;">This makes El Nido the perfect place for a getaway full of adventure, exploration beautiful natural scenery. These El Nido, Philippines images will hopefully inspire you to travel to the region and enjoy the stunning scenery. It will be the highlight of your trip to the Philippines I promise.</p>\r\n&nbsp;', 'EL NIDO PALAWAN', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-26 00:49:27', '2018-09-26 00:49:27', '', 1, 'http://localhost/38/index.php/2018/09/26/1-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-09-26 00:51:29', '2018-09-26 00:51:29', '<p style="text-align: center;"><img class="alignnone size-medium wp-image-26" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-4237-300x242.jpg" alt="" width="300" height="242" />El Nido is a small region in the north of the island of Palawan, Philippines. It is most commonly accessed either by <a href="https://server6.kproxy.com/servlet/redirect.srv/sruj/sjbpkrbgkfb/sqrs/p2/el-nido-to-coron-ferry/">ferry from Coron</a> or by van from Puerto Princesa as there is only a tiny airport with minimal flight options.It is a remarkable region, highlighted by breathtaking islands, lagoons, secret beaches and grandiose cliffs. Despite the unbelievable natural beauty the town is still relatively undeveloped with less major hotels and luxury accommodations than similar tropical destinations in Southeast Asia.</p>\r\n<p style="text-align: center;">This makes El Nido the perfect place for a getaway full of adventure, exploration beautiful natural scenery. These El Nido, Philippines images will hopefully inspire you to travel to the region and enjoy the stunning scenery. It will be the highlight of your trip to the Philippines I promise.</p>\r\n&nbsp;', 'EL NIDO PALAWAN', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-26 00:51:29', '2018-09-26 00:51:29', '', 1, 'http://localhost/38/index.php/2018/09/26/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-09-26 01:01:49', '2018-09-26 01:01:49', '<h1 style="text-align: center;"><strong>EL NIDO PALAWAN</strong></h1>\r\n<p style="text-align: center;">El Nido is a small region in the north of the island of Palawan, Philippines. It is most commonly accessed either by <a href="https://server6.kproxy.com/servlet/redirect.srv/sruj/sjbpkrbgkfb/sqrs/p2/el-nido-to-coron-ferry/">ferry from Coron</a> or by van from Puerto Princesa as there is only a tiny airport with minimal flight options.It is a remarkable region, highlighted by breathtaking islands, lagoons, secret beaches and grandiose cliffs. Despite the unbelievable natural beauty the town is still relatively undeveloped with less major hotels and luxury accommodations than similar tropical destinations in Southeast Asia.</p>\r\n<p style="text-align: center;">This makes El Nido the perfect place for a getaway full of adventure, exploration beautiful natural scenery. These El Nido, Philippines images will hopefully inspire you to travel to the region and enjoy the stunning scenery. It will be the highlight of your trip to the Philippines I promise.</p>\r\n&nbsp;\r\n<h2 style="text-align: center;"><strong>Unwind and Enjoy the Scenery.</strong></h2>\r\n<h2 style="text-align: center;"><img class="aligncenter wp-image-26 size-full" style="text-align: center;" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-4237.jpg" alt="" width="1000" height="805" /></h2>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h3 style="text-align: center;"><strong>DEVOUR on the fiesty Meal Perfect for the Beach.</strong></h3>\r\n&nbsp;\r\n\r\n<img class="aligncenter wp-image-27 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04437.jpg" alt="" width="812" height="1000" />\r\n<h3 style="text-align: center;"></h3>\r\n<h3 style="text-align: center;"><strong>Island hopping on Tour moments to be Cherrished.</strong></h3>\r\n&nbsp;\r\n\r\n<img class="aligncenter wp-image-28 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04484.jpg" alt="" width="1000" height="667" />\r\n\r\n&nbsp;\r\n<h2 style="text-align: center;">Get Wild and Explore your inner Tarzan!</h2>\r\n&nbsp;\r\n\r\n<img class="aligncenter wp-image-29 size-full" src="http://localhost/38/wp-content/uploads/2018/09/el-nido-photo-gallery-04702.jpg" alt="" width="1000" height="667" />', 'EL NIDO PALAWAN', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-26 01:01:49', '2018-09-26 01:01:49', '', 1, 'http://localhost/38/index.php/2018/09/26/1-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-09-26 01:04:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-26 01:04:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-09-26 01:04:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-26 01:04:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/38/?p=36', 0, 'post', '', 0),
(37, 1, '2018-09-26 01:19:14', '2018-09-26 01:19:14', '<h1 style="text-align: center;"><strong>HERE''S WHY!</strong></h1>\n<p style="text-align: left;">                           Visiting the Philippines is big fun. Perfect beaches. Friendly locals. Beautiful nature. Plus, it''s a cheap country to travel, you''ll get a great value for your money.</p>\n<img class="aligncenter wp-image-38 size-full" src="http://localhost/38/wp-content/uploads/2018/09/1.jpg" alt="" width="820" height="547" />\n<div id="cc-m-7088797084" class="j-module n j-text ">\n\n                           I''ve been f̶o̶u̶r̶  ten times to the Philippines and spent in total more than eight months there and hell... This place blew my mind! Whenever I meet travelers, I encourage them to                         travel the Philippines, but for some reasons, people are still hesitant and stick to the ordinary "Thailand-Laos-Cambodia-Vietnam Route". Don''t miss out on such an amazing country!! In                  my opinion, Philippines is better than all of these countries together. And I tell you why!\n\n</div>\n<h2 style="text-align: center;">HERE ARE MY 10 REASONS WHY YOU SHOULD TRAVEL TO THE PHILIPPINES!</h2>\n&nbsp;\n\n&nbsp;', 'WHY THE PHILIPPINES?', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-09-26 01:19:14', '2018-09-26 01:19:14', '', 2, 'http://localhost/38/index.php/2018/09/26/2-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2018-09-26 01:15:28', '2018-09-26 01:15:28', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-09-26 01:15:28', '2018-09-26 01:15:28', '', 2, 'http://localhost/38/wp-content/uploads/2018/09/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-09-26 01:19:17', '2018-09-26 01:19:17', '<h1 style="text-align: center;"><strong>HERE''S WHY!</strong></h1>\r\n<p style="text-align: left;">                           Visiting the Philippines is big fun. Perfect beaches. Friendly locals. Beautiful nature. Plus, it''s a cheap country to travel, you''ll get a great value for your money.</p>\r\n<img class="aligncenter wp-image-38 size-full" src="http://localhost/38/wp-content/uploads/2018/09/1.jpg" alt="" width="820" height="547" />\r\n<div id="cc-m-7088797084" class="j-module n j-text ">\r\n\r\n                           I''ve been f̶o̶u̶r̶  ten times to the Philippines and spent in total more than eight months there and hell... This place blew my mind! Whenever I meet travelers, I encourage them to                         travel the Philippines, but for some reasons, people are still hesitant and stick to the ordinary "Thailand-Laos-Cambodia-Vietnam Route". Don''t miss out on such an amazing country!! In                  my opinion, Philippines is better than all of these countries together. And I tell you why!\r\n\r\n</div>\r\n<h2 style="text-align: center;">HERE ARE MY 10 REASONS WHY YOU SHOULD TRAVEL TO THE PHILIPPINES!</h2>\r\n&nbsp;\r\n\r\n&nbsp;', 'WHY THE PHILIPPINES?', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-26 01:19:17', '2018-09-26 01:19:17', '', 2, 'http://localhost/38/index.php/2018/09/26/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'izzy'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"39c66d72b29941767af31f3063ccec877d26d9c3dc8736e992676fa22a712055";a:4:{s:10:"expiration";i:1538526194;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1537316594;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '36'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&advImgDetails=show'),
(19, 1, 'wp_user-settings-time', '1537923706'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'izzy', '$P$BUG9o8LZjCijCTQiAo90IvBqU4Hwc6.', 'izzy', 'izzy.cardenas07@gmail.com', '', '2018-09-19 00:21:41', '', 0, 'izzy');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
