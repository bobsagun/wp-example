-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 16, 2016 at 01:59 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyagers`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_commentmeta`
--

CREATE TABLE `wpproject_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_comments`
--

CREATE TABLE `wpproject_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_comments`
--

INSERT INTO `wpproject_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-04-14 19:22:05', '2016-04-14 19:22:05', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_links`
--

CREATE TABLE `wpproject_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_options`
--

CREATE TABLE `wpproject_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1910 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_options`
--

INSERT INTO `wpproject_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://voyagers.local:8888/wp', 'yes'),
(2, 'home', 'http://voyagers.local:8888/wp', 'yes'),
(3, 'blogname', 'Voyagers Bible Church', 'yes'),
(4, 'blogdescription', 'Glorifying God by loving Jesus, one another and the world', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nick@brandastic.com', 'yes'),
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
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:170:{s:10:"clients/?$";s:32:"index.php?post_type=kleo_clients";s:40:"clients/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=kleo_clients&feed=$matches[1]";s:35:"clients/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=kleo_clients&feed=$matches[1]";s:27:"clients/page/([0-9]{1,})/?$";s:50:"index.php?post_type=kleo_clients&paged=$matches[1]";s:15:"testimonials/?$";s:37:"index.php?post_type=kleo-testimonials";s:45:"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=kleo-testimonials&feed=$matches[1]";s:40:"testimonials/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=kleo-testimonials&feed=$matches[1]";s:32:"testimonials/page/([0-9]{1,})/?$";s:55:"index.php?post_type=kleo-testimonials&paged=$matches[1]";s:12:"portfolio/?$";s:29:"index.php?post_type=portfolio";s:42:"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:37:"portfolio/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:29:"portfolio/page/([0-9]{1,})/?$";s:47:"index.php?post_type=portfolio&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"clients/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"clients/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"clients/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"clients/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"clients/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"clients/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"clients/([^/]+)/embed/?$";s:45:"index.php?kleo_clients=$matches[1]&embed=true";s:28:"clients/([^/]+)/trackback/?$";s:39:"index.php?kleo_clients=$matches[1]&tb=1";s:48:"clients/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?kleo_clients=$matches[1]&feed=$matches[2]";s:43:"clients/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?kleo_clients=$matches[1]&feed=$matches[2]";s:36:"clients/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?kleo_clients=$matches[1]&paged=$matches[2]";s:43:"clients/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?kleo_clients=$matches[1]&cpage=$matches[2]";s:32:"clients/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?kleo_clients=$matches[1]&page=$matches[2]";s:24:"clients/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"clients/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"clients/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"clients/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"clients/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"clients/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:52:"clients-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?clients-tag=$matches[1]&feed=$matches[2]";s:47:"clients-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?clients-tag=$matches[1]&feed=$matches[2]";s:28:"clients-tag/([^/]+)/embed/?$";s:44:"index.php?clients-tag=$matches[1]&embed=true";s:40:"clients-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?clients-tag=$matches[1]&paged=$matches[2]";s:22:"clients-tag/([^/]+)/?$";s:33:"index.php?clients-tag=$matches[1]";s:40:"testimonials/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"testimonials/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"testimonials/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"testimonials/([^/]+)/embed/?$";s:50:"index.php?kleo-testimonials=$matches[1]&embed=true";s:33:"testimonials/([^/]+)/trackback/?$";s:44:"index.php?kleo-testimonials=$matches[1]&tb=1";s:53:"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?kleo-testimonials=$matches[1]&feed=$matches[2]";s:48:"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?kleo-testimonials=$matches[1]&feed=$matches[2]";s:41:"testimonials/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?kleo-testimonials=$matches[1]&paged=$matches[2]";s:48:"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?kleo-testimonials=$matches[1]&cpage=$matches[2]";s:37:"testimonials/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?kleo-testimonials=$matches[1]&page=$matches[2]";s:29:"testimonials/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"testimonials/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"testimonials/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:57:"testimonials-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?testimonials-tag=$matches[1]&feed=$matches[2]";s:52:"testimonials-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?testimonials-tag=$matches[1]&feed=$matches[2]";s:33:"testimonials-tag/([^/]+)/embed/?$";s:49:"index.php?testimonials-tag=$matches[1]&embed=true";s:45:"testimonials-tag/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?testimonials-tag=$matches[1]&paged=$matches[2]";s:27:"testimonials-tag/([^/]+)/?$";s:38:"index.php?testimonials-tag=$matches[1]";s:37:"portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"portfolio/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"portfolio/([^/]+)/embed/?$";s:42:"index.php?portfolio=$matches[1]&embed=true";s:30:"portfolio/([^/]+)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:50:"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:45:"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:38:"portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:45:"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:34:"portfolio/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:26:"portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"portfolio/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:57:"portfolio-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?portfolio-category=$matches[1]&feed=$matches[2]";s:52:"portfolio-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?portfolio-category=$matches[1]&feed=$matches[2]";s:33:"portfolio-category/(.+?)/embed/?$";s:51:"index.php?portfolio-category=$matches[1]&embed=true";s:45:"portfolio-category/(.+?)/page/?([0-9]{1,})/?$";s:58:"index.php?portfolio-category=$matches[1]&paged=$matches[2]";s:27:"portfolio-category/(.+?)/?$";s:40:"index.php?portfolio-category=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:27:"js_composer/js_composer.php";i:2;s:20:"k-elements/setup.php";i:3;s:23:"revslider/revslider.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kleo', 'yes'),
(41, 'stylesheet', 'kleo-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wpproject_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;s:5:"extra";N;s:6:"shop-1";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:6:{i:1460661751;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1460661774;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1460666372;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1460673956;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"c4b66550e50f6ae8347c6592ebc1a4d1";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:21;}}}}i:1460681604;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"26e9e6ff95b3d23cf3d0202a8d7dfd36";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:22;}}}}s:7:"version";i:2;}', 'yes'),
(104, '_transient_doing_cron', '1460764735.2451810836791992187500', 'yes'),
(105, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"4.5";s:12:"last_checked";i:1460736760;}', 'yes'),
(109, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1460736772;}', 'yes'),
(110, 'can_compress_scripts', '1', 'yes'),
(111, '_transient_timeout_plugin_slugs', '1460760944', 'no'),
(112, '_transient_plugin_slugs', 'a:4:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:20:"k-elements/setup.php";i:2;s:23:"revslider/revslider.php";i:3;s:27:"js_composer/js_composer.php";}', 'no'),
(113, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1460704979', 'no'),
(114, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: A feed could not be found at http://wordpress.org/news/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: A feed could not be found at https://planet.wordpress.org/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(115, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1460661869;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(116, 'current_theme', 'Voyagers', 'yes'),
(117, 'theme_mods_kleo-child', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(118, 'theme_switched', '', 'yes'),
(119, 'widget_kleo_recent_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_item_likes_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'kleo_voyagers', 'a:237:{s:8:"last_tab";s:1:"1";s:16:"maintenance_mode";s:1:"0";s:15:"maintenance_msg";s:62:"We are currently in maintenance mode. Please check back later.";s:4:"logo";a:5:{s:3:"url";s:59:"http://voyagers.local:8888/content/uploads/2016/04/Logo.png";s:2:"id";s:2:"36";s:6:"height";s:2:"79";s:5:"width";s:3:"366";s:9:"thumbnail";s:66:"http://voyagers.local:8888/content/uploads/2016/04/Logo-150x79.png";}s:11:"logo_retina";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:7:"favicon";a:5:{s:3:"url";s:58:"http://voyagers.local:8888/content/uploads/2016/04/fav.png";s:2:"id";s:2:"43";s:6:"height";s:2:"19";s:5:"width";s:2:"32";s:9:"thumbnail";s:58:"http://voyagers.local:8888/content/uploads/2016/04/fav.png";}s:7:"apple57";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:8:"apple114";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:7:"apple72";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:8:"apple144";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:9:"analytics";s:0:"";s:9:"quick_css";s:0:"";s:13:"socket_enable";s:1:"1";s:11:"footer_text";s:71:"SUNDAY CELEBRATION SERVICES AT 9 AND 10:45 AM | 6000 Irvine Center Dr |";s:10:"site_style";s:4:"wide";s:10:"boxed_size";s:4:"1440";s:7:"body_bg";a:7:{s:16:"background-color";s:0:"";s:17:"background-repeat";s:6:"repeat";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:69:"http://voyagers.local:8888/content/themes/kleo/assets/img/bg-body.gif";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:14:"global_sidebar";s:2:"no";s:16:"main_width_2cols";s:1:"9";s:16:"main_width_3cols";s:1:"6";s:6:"go_top";s:1:"1";s:14:"title_location";s:10:"breadcrumb";s:12:"contact_form";s:1:"0";s:20:"contact_form_builtin";s:1:"0";s:15:"contact_form_to";s:0:"";s:18:"contact_form_title";s:10:"CONTACT US";s:17:"contact_form_text";s:89:"We''re not around right now. But you can send us an email and we''ll get back to you, asap.";s:13:"header_layout";s:6:"normal";s:13:"header_banner";s:19:"Banner text/AD here";s:15:"menu_full_width";s:1:"0";s:9:"menu_size";s:2:"15";s:11:"menu_height";s:2:"35";s:12:"show_top_bar";s:1:"0";s:14:"top_bar_darker";s:1:"1";s:9:"show_lang";s:1:"1";s:11:"sticky_menu";s:1:"1";s:11:"resize_logo";s:1:"0";s:16:"transparent_logo";s:1:"0";s:11:"ajax_search";s:1:"0";s:17:"breadcrumb_status";s:1:"0";s:10:"title_info";s:0:"";s:12:"title_layout";s:6:"normal";s:13:"title_padding";a:2:{s:11:"padding-top";s:4:"10px";s:14:"padding-bottom";s:4:"10px";}s:9:"side_menu";s:1:"0";s:16:"side_menu_button";s:1:"1";s:16:"side_menu_mobile";s:1:"0";s:18:"side_menu_position";s:4:"left";s:14:"side_menu_type";s:7:"default";s:16:"side_menu_before";s:0:"";s:15:"side_menu_after";s:19:"[kleo_social_icons]";s:11:"blog_layout";s:5:"right";s:10:"cat_layout";s:5:"right";s:16:"blog_post_layout";s:7:"default";s:9:"blog_type";s:7:"masonry";s:12:"blog_columns";s:1:"3";s:18:"blog_switch_layout";s:1:"0";s:20:"blog_enabled_layouts";a:3:{i:0;s:7:"masonry";i:1;s:5:"small";i:2;s:8:"standard";}s:23:"featured_content_layout";s:8:"carousel";s:21:"featured_grid_columns";s:1:"3";s:17:"blog_archive_meta";s:1:"1";s:16:"blog_meta_status";s:1:"1";s:18:"blog_meta_elements";a:5:{i:0;s:4:"date";i:1;s:11:"author_link";i:2;s:10:"categories";i:3;s:4:"tags";i:4;s:8:"comments";}s:13:"blog_meta_sep";s:2:", ";s:18:"blog_standard_meta";s:4:"left";s:16:"blog_single_meta";s:4:"left";s:16:"blog_tags_footer";s:1:"0";s:17:"blog_media_status";s:1:"1";s:14:"blog_get_image";s:1:"1";s:18:"blog_default_image";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:15:"post_navigation";s:1:"1";s:13:"related_posts";s:1:"1";s:20:"related_custom_posts";s:1:"0";s:10:"page_media";s:1:"0";s:13:"page_comments";s:1:"0";s:17:"blog_social_share";s:1:"1";s:16:"blog_share_types";a:1:{i:0;s:4:"post";}s:18:"blog_share_exclude";s:0:"";s:26:"blog_social_share_facebook";s:1:"1";s:25:"blog_social_share_twitter";s:1:"1";s:28:"blog_social_share_googleplus";s:1:"1";s:27:"blog_social_share_pinterest";s:1:"1";s:26:"blog_social_share_linkedin";s:1:"0";s:26:"blog_social_share_whatsapp";s:1:"0";s:22:"blog_social_share_mail";s:1:"1";s:12:"likes_status";s:1:"1";s:13:"likes_exclude";s:0:"";s:10:"likes_ajax";s:1:"0";s:15:"likes_zero_text";s:5:"likes";s:14:"likes_one_text";s:4:"like";s:15:"likes_more_text";s:5:"likes";s:13:"likes_already";s:21:"You already like this";s:14:"like_this_text";s:9:"Like this";s:16:"st__header__text";s:7:"#565759";s:20:"st__header__headings";s:7:"#111111";s:14:"st__header__bg";s:7:"#ffffff";s:20:"st__header__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:18:"st__header__border";s:7:"#eeeeee";s:16:"st__header__link";s:7:"#565759";s:22:"st__header__link_hover";s:7:"#565759";s:22:"st__header__high_color";s:7:"#ffffff";s:19:"st__header__high_bg";s:7:"#026185";s:18:"st__header__alt_bg";s:7:"#f7f7f7";s:22:"st__header__alt_border";s:7:"#e5e5e5";s:14:"st__main__text";s:7:"#717271";s:18:"st__main__headings";s:7:"#565759";s:12:"st__main__bg";s:7:"#ffffff";s:18:"st__main__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:16:"st__main__border";s:7:"#006c90";s:14:"st__main__link";s:7:"#006c90";s:20:"st__main__link_hover";s:7:"#4d868e";s:20:"st__main__high_color";s:7:"#ffffff";s:17:"st__main__high_bg";s:7:"#006c90";s:16:"st__main__alt_bg";s:7:"#f7f7f7";s:20:"st__main__alt_border";s:7:"#e5e5e5";s:19:"st__alternate__text";s:7:"#777777";s:23:"st__alternate__headings";s:7:"#444444";s:17:"st__alternate__bg";s:7:"#f7f7f7";s:23:"st__alternate__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:21:"st__alternate__border";s:7:"#e5e5e5";s:19:"st__alternate__link";s:7:"#367bb7";s:25:"st__alternate__link_hover";s:7:"#00b9f7";s:25:"st__alternate__high_color";s:7:"#ffffff";s:22:"st__alternate__high_bg";s:7:"#00b9f7";s:21:"st__alternate__alt_bg";s:7:"#ffffff";s:25:"st__alternate__alt_border";s:7:"#e5e5e5";s:14:"st__side__text";s:7:"#777777";s:18:"st__side__headings";s:7:"#aaaaaa";s:12:"st__side__bg";s:7:"#1c1c1c";s:18:"st__side__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:16:"st__side__border";s:7:"#333333";s:14:"st__side__link";s:7:"#cccccc";s:20:"st__side__link_hover";s:7:"#777777";s:20:"st__side__high_color";s:7:"#ffffff";s:17:"st__side__high_bg";s:7:"#00b9f7";s:16:"st__side__alt_bg";s:7:"#272727";s:20:"st__side__alt_border";s:7:"#333333";s:16:"st__footer__text";s:7:"#777777";s:20:"st__footer__headings";s:7:"#aaaaaa";s:14:"st__footer__bg";s:7:"#1c1c1c";s:20:"st__footer__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:18:"st__footer__border";s:7:"#333333";s:16:"st__footer__link";s:7:"#cccccc";s:22:"st__footer__link_hover";s:7:"#777777";s:22:"st__footer__high_color";s:7:"#ffffff";s:19:"st__footer__high_bg";s:7:"#00b9f7";s:18:"st__footer__alt_bg";s:7:"#272727";s:22:"st__footer__alt_border";s:7:"#333333";s:16:"st__socket__text";s:7:"#ffffff";s:20:"st__socket__headings";s:7:"#cccccc";s:14:"st__socket__bg";s:7:"#006c90";s:20:"st__socket__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:18:"st__socket__border";s:7:"#333333";s:16:"st__socket__link";s:7:"#515151";s:22:"st__socket__link_hover";s:7:"#777777";s:22:"st__socket__high_color";s:7:"#ffffff";s:19:"st__socket__high_bg";s:7:"#006c90";s:18:"st__socket__alt_bg";s:7:"#f7f7f7";s:22:"st__socket__alt_border";s:7:"#272727";s:7:"font_h1";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"36px";s:11:"line-height";s:4:"48px";}s:7:"font_h2";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"28px";s:11:"line-height";s:4:"36px";}s:7:"font_h3";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"22px";s:11:"line-height";s:4:"28px";}s:7:"font_h4";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"18px";s:11:"line-height";s:4:"28px";}s:7:"font_h5";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"17px";s:11:"line-height";s:4:"27px";}s:7:"font_h6";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"16px";s:11:"line-height";s:4:"24px";}s:9:"font_body";a:10:{s:11:"font-family";s:9:"Open Sans";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"13px";s:11:"line-height";s:4:"20px";}s:24:"portfolio_custom_archive";s:1:"0";s:14:"portfolio_page";s:0:"";s:14:"portfolio_name";s:9:"Portfolio";s:14:"portfolio_slug";s:9:"portfolio";s:15:"portfolio_style";s:7:"default";s:21:"portfolio_title_style";s:6:"normal";s:17:"portfolio_excerpt";s:1:"1";s:17:"portfolio_per_row";s:1:"4";s:16:"portfolio_filter";s:3:"yes";s:15:"portfolio_image";s:7:"480x270";s:22:"portfolio_media_status";s:1:"1";s:17:"portfolio_back_to";s:1:"1";s:18:"portfolio_comments";s:1:"0";s:20:"portfolio_navigation";s:1:"1";s:9:"bp_layout";s:5:"right";s:21:"bp_layout_members_dir";s:7:"default";s:17:"bp_layout_profile";s:7:"default";s:16:"bp_layout_groups";s:7:"default";s:18:"bp_layout_activity";s:7:"default";s:18:"bp_layout_register";s:7:"default";s:17:"bp_title_location";s:7:"default";s:20:"bp_breadcrumb_status";s:1:"1";s:14:"bp_custom_info";s:1:"0";s:13:"bp_title_info";s:153:"<em class="muted">feel free to call us</em>   <i class="icon-phone"></i> +91.33.26789234     <i class="icon-mail-alt"></i> support@seventhqueen.com";s:29:"bp_profile_breadcrumb_disable";s:1:"0";s:15:"bp_full_profile";s:1:"0";s:13:"bp_full_group";s:1:"0";s:16:"bp_online_status";s:1:"1";s:17:"member_navigation";s:1:"1";s:17:"bp_notif_interval";s:5:"20000";s:18:"bp_members_perpage";s:2:"24";s:17:"bp_groups_perpage";s:2:"24";s:18:"mobile_app_capable";s:1:"1";s:24:"apple_mobile_app_capable";s:1:"0";s:16:"meta_theme_color";s:0:"";s:19:"sitewide_animations";s:7:"enabled";s:9:"admin_bar";s:1:"1";s:14:"login_redirect";s:7:"default";s:21:"login_redirect_custom";s:0:"";s:17:"homepage_redirect";s:8:"disabled";s:24:"homepage_redirect_custom";s:0:"";s:14:"facebook_login";s:1:"0";s:9:"fb_app_id";s:0:"";s:15:"facebook_avatar";s:1:"0";s:17:"facebook_register";s:1:"0";s:11:"let_it_snow";s:1:"0";s:24:"magnific_disable_gallery";s:1:"0";s:8:"dev_mode";s:1:"0";s:17:"show_social_icons";s:1:"1";s:14:"social_twitter";s:0:"";s:15:"social_facebook";s:31:"https://www.facebook.com/vygrs/";s:15:"social_dribbble";s:0:"";s:20:"social_vimeo-squared";s:0:"";s:13:"social_tumblr";s:0:"";s:15:"social_linkedin";s:0:"";s:12:"social_gplus";s:0:"";s:13:"social_flickr";s:0:"";s:14:"social_youtube";s:0:"";s:24:"social_pinterest-circled";s:0:"";s:17:"social_foursquare";s:0:"";s:17:"social_instagramm";s:0:"";s:13:"social_github";s:0:"";s:11:"social_xing";s:0:"";s:11:"tf_username";s:8:"jrnassie";s:9:"tf_apikey";s:32:"c9ofbqkpgh5nacd2x47ncbwrjtlo1f81";s:14:"search_context";s:0:"";s:18:"st__header__preset";i:0;s:16:"st__main__preset";i:0;s:21:"st__alternate__preset";i:0;s:16:"st__side__preset";i:0;s:18:"st__footer__preset";i:0;s:18:"st__socket__preset";i:0;}', 'yes'),
(122, 'kleo_voyagers-transients', 'a:3:{s:14:"changed_values";a:1:{s:14:"title_location";s:4:"main";}s:9:"last_save";i:1460747368;s:13:"last_compiler";i:1460747368;}', 'yes'),
(125, 'WPLANG', '', 'yes'),
(138, 'revslider-update-check-short', '1460666607', 'yes'),
(140, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(142, 'revslider-global-settings', 'a:0:{}', 'yes'),
(148, 'revslider_update_version', '5.1.1', 'yes'),
(149, 'widget_rev-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(150, 'vc_version', '4.11.1', 'yes'),
(154, 'recently_activated', 'a:1:{s:27:"js_composer/js_composer.php";i:1460672080;}', 'yes'),
(155, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(157, 'gform_enable_background_updates', '1', 'yes'),
(158, 'rg_form_version', '1.9.18.3', 'yes'),
(161, '_transient_timeout_GFCache_61579ed8f6a32547a1a77279c85391db', '1460667646', 'no'),
(162, '_transient_GFCache_61579ed8f6a32547a1a77279c85391db', '1', 'no'),
(163, 'rg_gforms_key', '2a6390ca0bc7305e69a225137c41dfb9', 'yes'),
(164, 'rg_gforms_captcha_public_key', '', 'yes'),
(165, 'rg_gforms_captcha_private_key', '', 'yes'),
(166, 'rg_gforms_currency', 'USD', 'yes'),
(167, 'rg_gforms_message', '', 'yes'),
(509, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1460736766;s:8:"response";a:0:{}}', 'yes'),
(510, 'revslider-templates-check', '1460674416', 'yes'),
(511, 'revslider_checktables', '1', 'yes'),
(512, 'revslider_table_version', '1.0.6', 'yes'),
(525, '_transient_timeout_kleo_js_composer', '1460851139', 'no'),
(526, '_transient_kleo_js_composer', '4.11.2', 'no'),
(527, '_transient_timeout_kleo_revslider', '1460851140', 'no'),
(528, '_transient_kleo_revslider', '5.2.4.1', 'no'),
(529, '_transient_timeout_kleo_go_pricing', '1460851140', 'no'),
(530, '_transient_kleo_go_pricing', '3.2.1', 'no'),
(535, 'revslider-valid-notice', 'false', 'yes'),
(546, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(603, '_transient_timeout_settings_errors', '1460747398', 'no'),
(604, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(797, '_site_transient_timeout_theme_roots', '1460738572', 'yes'),
(798, '_site_transient_theme_roots', 'a:2:{s:10:"kleo-child";s:7:"/themes";s:4:"kleo";s:7:"/themes";}', 'yes'),
(1323, '_transient_timeout_voyagers_google_link', '1460790574', 'no'),
(1324, '_transient_voyagers_google_link', '//fonts.googleapis.com/css?family=Roboto+Condensed:300|Open+Sans:400', 'no'),
(1508, '_transient_timeout_gform_update_info', '1460839718', 'no'),
(1509, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:0:{}s:4:"body";s:0:"";s:8:"response";a:2:{s:4:"code";i:0;s:7:"message";s:0:"";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(1906, '_transient_timeout_GFCache_97fdac5a123f3b0926a1b91f6a910baf', '1460764770', 'no'),
(1907, '_transient_GFCache_97fdac5a123f3b0926a1b91f6a910baf', 'a:0:{}', 'no'),
(1908, '_transient_timeout_GFCache_81d3ab1e97a90488d1667640968c720d', '1460764770', 'no'),
(1909, '_transient_GFCache_81d3ab1e97a90488d1667640968c720d', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_postmeta`
--

CREATE TABLE `wpproject_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_postmeta`
--

INSERT INTO `wpproject_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_item_likes', '0'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1460666368'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 5, '_edit_last', '1'),
(7, 5, '_wp_page_template', 'default'),
(12, 5, '_kleo_transparent_menu_color', 'white'),
(13, 5, '_kleo_title_color', '#'),
(14, 5, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(15, 5, '_kleo_title_bg_color', '#'),
(16, 5, '_kleo_page_menu', 'default'),
(19, 5, '_edit_lock', '1460762635:1'),
(20, 7, '_edit_last', '1'),
(21, 7, '_wp_page_template', 'default'),
(26, 7, '_kleo_transparent_menu_color', 'white'),
(27, 7, '_kleo_title_color', '#'),
(28, 7, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(29, 7, '_kleo_title_bg_color', '#'),
(30, 7, '_kleo_page_menu', 'default'),
(31, 7, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(32, 7, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(33, 7, '_edit_lock', '1460666249:1'),
(34, 9, '_edit_last', '1'),
(35, 9, '_wp_page_template', 'default'),
(40, 9, '_kleo_transparent_menu_color', 'white'),
(41, 9, '_kleo_title_color', '#'),
(42, 9, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(43, 9, '_kleo_title_bg_color', '#'),
(44, 9, '_kleo_page_menu', 'default'),
(45, 9, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(46, 9, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(47, 9, '_edit_lock', '1460666267:1'),
(48, 11, '_edit_last', '1'),
(49, 11, '_wp_page_template', 'default'),
(54, 11, '_kleo_transparent_menu_color', 'white'),
(55, 11, '_kleo_title_color', '#'),
(56, 11, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(57, 11, '_kleo_title_bg_color', '#'),
(58, 11, '_kleo_page_menu', 'default'),
(59, 11, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(60, 11, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(61, 11, '_edit_lock', '1460666292:1'),
(62, 13, '_edit_last', '1'),
(63, 13, '_wp_page_template', 'default'),
(68, 13, '_kleo_transparent_menu_color', 'white'),
(69, 13, '_kleo_title_color', '#'),
(70, 13, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(71, 13, '_kleo_title_bg_color', '#'),
(72, 13, '_kleo_page_menu', 'default'),
(73, 13, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(74, 13, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(75, 13, '_edit_lock', '1460666304:1'),
(76, 15, '_edit_last', '1'),
(77, 15, '_edit_lock', '1460666327:1'),
(78, 15, '_wp_page_template', 'default'),
(83, 15, '_kleo_transparent_menu_color', 'white'),
(84, 15, '_kleo_title_color', '#'),
(85, 15, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(86, 15, '_kleo_title_bg_color', '#'),
(87, 15, '_kleo_page_menu', 'default'),
(88, 15, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(89, 15, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(90, 17, '_edit_last', '1'),
(91, 17, '_wp_page_template', 'default'),
(96, 17, '_kleo_transparent_menu_color', 'white'),
(97, 17, '_kleo_title_color', '#'),
(98, 17, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(99, 17, '_kleo_title_bg_color', '#'),
(100, 17, '_kleo_page_menu', 'default'),
(101, 17, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(102, 17, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(103, 17, '_edit_lock', '1460666339:1'),
(104, 19, '_edit_last', '1'),
(105, 19, '_wp_page_template', 'default'),
(110, 19, '_kleo_transparent_menu_color', 'white'),
(111, 19, '_kleo_title_color', '#'),
(112, 19, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(113, 19, '_kleo_title_bg_color', '#'),
(114, 19, '_kleo_page_menu', 'default'),
(115, 19, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(116, 19, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(117, 19, '_edit_lock', '1460666723:1'),
(135, 24, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(136, 24, '_menu_item_type', 'post_type'),
(137, 24, '_menu_item_menu_item_parent', '0'),
(138, 24, '_menu_item_object_id', '7'),
(139, 24, '_menu_item_object', 'page'),
(140, 24, '_menu_item_target', ''),
(141, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 24, '_menu_item_xfn', ''),
(143, 24, '_menu_item_url', ''),
(145, 24, '_menu_item_mega', NULL),
(146, 24, '_menu_item_icon', ''),
(147, 24, '_menu_item_iconpos', ''),
(148, 25, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(149, 25, '_menu_item_type', 'post_type'),
(150, 25, '_menu_item_menu_item_parent', '0'),
(151, 25, '_menu_item_object_id', '17'),
(152, 25, '_menu_item_object', 'page'),
(153, 25, '_menu_item_target', ''),
(154, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 25, '_menu_item_xfn', ''),
(156, 25, '_menu_item_url', ''),
(158, 25, '_menu_item_mega', NULL),
(159, 25, '_menu_item_icon', ''),
(160, 25, '_menu_item_iconpos', ''),
(161, 26, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(162, 26, '_menu_item_type', 'post_type'),
(163, 26, '_menu_item_menu_item_parent', '0'),
(164, 26, '_menu_item_object_id', '5'),
(165, 26, '_menu_item_object', 'page'),
(166, 26, '_menu_item_target', ''),
(167, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(168, 26, '_menu_item_xfn', ''),
(169, 26, '_menu_item_url', ''),
(170, 26, '_menu_item_orphaned', '1460674627'),
(171, 26, '_menu_item_mega', NULL),
(172, 26, '_menu_item_icon', NULL),
(173, 26, '_menu_item_iconpos', NULL),
(174, 27, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(175, 27, '_menu_item_type', 'post_type'),
(176, 27, '_menu_item_menu_item_parent', '0'),
(177, 27, '_menu_item_object_id', '13'),
(178, 27, '_menu_item_object', 'page'),
(179, 27, '_menu_item_target', ''),
(180, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(181, 27, '_menu_item_xfn', ''),
(182, 27, '_menu_item_url', ''),
(184, 27, '_menu_item_mega', NULL),
(185, 27, '_menu_item_icon', ''),
(186, 27, '_menu_item_iconpos', ''),
(187, 28, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(188, 28, '_menu_item_type', 'post_type'),
(189, 28, '_menu_item_menu_item_parent', '0'),
(190, 28, '_menu_item_object_id', '15'),
(191, 28, '_menu_item_object', 'page'),
(192, 28, '_menu_item_target', ''),
(193, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 28, '_menu_item_xfn', ''),
(195, 28, '_menu_item_url', ''),
(197, 28, '_menu_item_mega', NULL),
(198, 28, '_menu_item_icon', ''),
(199, 28, '_menu_item_iconpos', ''),
(200, 29, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(201, 29, '_menu_item_type', 'post_type'),
(202, 29, '_menu_item_menu_item_parent', '0'),
(203, 29, '_menu_item_object_id', '11'),
(204, 29, '_menu_item_object', 'page'),
(205, 29, '_menu_item_target', ''),
(206, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 29, '_menu_item_xfn', ''),
(208, 29, '_menu_item_url', ''),
(210, 29, '_menu_item_mega', NULL),
(211, 29, '_menu_item_icon', ''),
(212, 29, '_menu_item_iconpos', ''),
(213, 30, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(214, 30, '_menu_item_type', 'post_type'),
(215, 30, '_menu_item_menu_item_parent', '0'),
(216, 30, '_menu_item_object_id', '19'),
(217, 30, '_menu_item_object', 'page'),
(218, 30, '_menu_item_target', ''),
(219, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(220, 30, '_menu_item_xfn', ''),
(221, 30, '_menu_item_url', ''),
(223, 30, '_menu_item_mega', NULL),
(224, 30, '_menu_item_icon', ''),
(225, 30, '_menu_item_iconpos', ''),
(226, 31, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(227, 31, '_menu_item_type', 'post_type'),
(228, 31, '_menu_item_menu_item_parent', '0'),
(229, 31, '_menu_item_object_id', '9'),
(230, 31, '_menu_item_object', 'page'),
(231, 31, '_menu_item_target', ''),
(232, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 31, '_menu_item_xfn', ''),
(234, 31, '_menu_item_url', ''),
(236, 31, '_menu_item_mega', NULL),
(237, 31, '_menu_item_icon', ''),
(238, 31, '_menu_item_iconpos', ''),
(239, 32, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(240, 32, '_menu_item_type', 'custom'),
(241, 32, '_menu_item_menu_item_parent', '0'),
(242, 32, '_menu_item_object_id', '32'),
(243, 32, '_menu_item_object', 'custom'),
(244, 32, '_menu_item_target', ''),
(245, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(246, 32, '_menu_item_xfn', ''),
(247, 32, '_menu_item_url', '#'),
(249, 32, '_menu_item_mega', NULL),
(250, 32, '_menu_item_icon', ''),
(251, 32, '_menu_item_iconpos', ''),
(252, 33, '_wp_attached_file', '2016/04/Layer-36.jpeg'),
(253, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:389;s:4:"file";s:21:"2016/04/Layer-36.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Layer-36-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Layer-36-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(254, 34, '_wp_attached_file', '2016/04/Layer-37.jpeg'),
(255, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:389;s:4:"file";s:21:"2016/04/Layer-37.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Layer-37-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Layer-37-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(256, 35, '_wp_attached_file', '2016/04/Layer-38.jpeg'),
(257, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:388;s:6:"height";i:388;s:4:"file";s:21:"2016/04/Layer-38.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Layer-38-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Layer-38-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(258, 36, '_wp_attached_file', '2016/04/Logo.png'),
(259, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:366;s:6:"height";i:79;s:4:"file";s:16:"2016/04/Logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"Logo-150x79.png";s:5:"width";i:150;s:6:"height";i:79;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"Logo-300x65.png";s:5:"width";i:300;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(260, 37, '_wp_attached_file', '2016/04/Rectangle-35-copy-2.jpeg'),
(261, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:32:"2016/04/Rectangle-35-copy-2.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Rectangle-35-copy-2-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(262, 38, '_wp_attached_file', '2016/04/Rectangle-35-copy-3.jpeg'),
(263, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:32:"2016/04/Rectangle-35-copy-3.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Rectangle-35-copy-3-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(264, 39, '_wp_attached_file', '2016/04/Rectangle-35-copy-4.jpeg'),
(265, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:32:"2016/04/Rectangle-35-copy-4.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Rectangle-35-copy-4-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(266, 40, '_wp_attached_file', '2016/04/Rectangle-35-copy-5.jpeg'),
(267, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:32:"2016/04/Rectangle-35-copy-5.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Rectangle-35-copy-5-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(268, 41, '_wp_attached_file', '2016/04/Rectangle-35-copy.jpeg'),
(269, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:30:"2016/04/Rectangle-35-copy.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Rectangle-35-copy-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(270, 42, '_wp_attached_file', '2016/04/Slider.jpg'),
(271, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1592;s:6:"height";i:732;s:4:"file";s:18:"2016/04/Slider.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Slider-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Slider-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"Slider-768x353.jpg";s:5:"width";i:768;s:6:"height";i:353;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Slider-1024x471.jpg";s:5:"width";i:1024;s:6:"height";i:471;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Slider-672x309.jpg";s:5:"width";i:672;s:6:"height";i:309;s:9:"mime-type";s:10:"image/jpeg";}s:15:"kleo-full-width";a:4:{s:4:"file";s:19:"Slider-1038x477.jpg";s:5:"width";i:1038;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(272, 43, '_wp_attached_file', '2016/04/fav.png'),
(273, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:32;s:6:"height";i:19;s:4:"file";s:15:"2016/04/fav.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(276, 5, 'slide_template', 'default'),
(279, 5, '_wpb_vc_js_status', 'true'),
(280, 5, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(281, 5, '_wpb_shortcodes_custom_css', '.vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(306, 5, '_kleo_title_checkbox', '1'),
(307, 5, '_kleo_hide_breadcrumb', '1'),
(308, 5, '_kleo_hide_info', '1'),
(321, 51, '_wp_attached_file', '2016/04/Rectangle-35-copy-2-1.jpeg'),
(322, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:34:"2016/04/Rectangle-35-copy-2-1.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Rectangle-35-copy-2-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(323, 52, '_wp_attached_file', '2016/04/Rectangle-35-copy-3-1.jpeg'),
(324, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:34:"2016/04/Rectangle-35-copy-3-1.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Rectangle-35-copy-3-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(325, 53, '_wp_attached_file', '2016/04/Rectangle-35-copy-4-1.jpeg'),
(326, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:34:"2016/04/Rectangle-35-copy-4-1.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Rectangle-35-copy-4-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(327, 54, '_wp_attached_file', '2016/04/Rectangle-35-copy-5-1.jpeg'),
(328, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:34:"2016/04/Rectangle-35-copy-5-1.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Rectangle-35-copy-5-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(329, 55, '_wp_attached_file', '2016/04/Rectangle-35-copy-1.jpeg'),
(330, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:32:"2016/04/Rectangle-35-copy-1.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Rectangle-35-copy-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(345, 5, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(346, 5, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}');

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_posts`
--

CREATE TABLE `wpproject_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_posts`
--

INSERT INTO `wpproject_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-04-14 19:22:05', '2016-04-14 19:22:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-04-14 19:22:05', '2016-04-14 19:22:05', '', 0, 'http://voyagers.local:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2016-04-14 19:22:05', '2016-04-14 19:22:05', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://voyagers.local:8888/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-04-14 20:39:28', '2016-04-14 20:39:28', '', 0, 'http://voyagers.local:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-04-14 19:22:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-14 19:22:56', '0000-00-00 00:00:00', '', 0, 'http://voyagers.local:8888/?p=3', 0, 'post', '', 0),
(4, 1, '2016-04-14 20:39:28', '2016-04-14 20:39:28', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://voyagers.local:8888/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-14 20:39:28', '2016-04-14 20:39:28', '', 2, 'http://voyagers.local:8888/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-04-14 20:39:37', '2016-04-14 20:39:37', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37,51,52,53,54,55" img_size="medium" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-04-15 23:23:54', '2016-04-15 23:23:54', '', 0, 'http://voyagers.local:8888/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-04-14 20:39:37', '2016-04-14 20:39:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-14 20:39:37', '2016-04-14 20:39:37', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-04-14 20:39:50', '2016-04-14 20:39:50', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-04-14 20:39:50', '2016-04-14 20:39:50', '', 0, 'http://voyagers.local:8888/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-04-14 20:39:50', '2016-04-14 20:39:50', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-04-14 20:39:50', '2016-04-14 20:39:50', '', 7, 'http://voyagers.local:8888/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-04-14 20:39:58', '2016-04-14 20:39:58', '', 'Weekends', '', 'publish', 'closed', 'closed', '', 'weekends', '', '', '2016-04-14 20:39:58', '2016-04-14 20:39:58', '', 0, 'http://voyagers.local:8888/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-04-14 20:39:58', '2016-04-14 20:39:58', '', 'Weekends', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-04-14 20:39:58', '2016-04-14 20:39:58', '', 9, 'http://voyagers.local:8888/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-04-14 20:40:18', '2016-04-14 20:40:18', '', 'Serve', '', 'publish', 'closed', 'closed', '', 'serve', '', '', '2016-04-14 20:40:18', '2016-04-14 20:40:18', '', 0, 'http://voyagers.local:8888/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-04-14 20:40:18', '2016-04-14 20:40:18', '', 'Serve', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-14 20:40:18', '2016-04-14 20:40:18', '', 11, 'http://voyagers.local:8888/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-04-14 20:40:45', '2016-04-14 20:40:45', '', 'Messages', '', 'publish', 'closed', 'closed', '', 'messages', '', '', '2016-04-14 20:40:45', '2016-04-14 20:40:45', '', 0, 'http://voyagers.local:8888/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-04-14 20:40:45', '2016-04-14 20:40:45', '', 'Messages', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-04-14 20:40:45', '2016-04-14 20:40:45', '', 13, 'http://voyagers.local:8888/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-04-14 20:41:08', '2016-04-14 20:41:08', '', 'Ministries', '', 'publish', 'closed', 'closed', '', 'ministries', '', '', '2016-04-14 20:41:08', '2016-04-14 20:41:08', '', 0, 'http://voyagers.local:8888/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-04-14 20:41:08', '2016-04-14 20:41:08', '', 'Ministries', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-04-14 20:41:08', '2016-04-14 20:41:08', '', 15, 'http://voyagers.local:8888/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-04-14 20:41:20', '2016-04-14 20:41:20', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2016-04-14 20:41:20', '2016-04-14 20:41:20', '', 0, 'http://voyagers.local:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-04-14 20:41:20', '2016-04-14 20:41:20', '', 'Events', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-04-14 20:41:20', '2016-04-14 20:41:20', '', 17, 'http://voyagers.local:8888/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-04-14 20:41:32', '2016-04-14 20:41:32', '', 'Stories', '', 'publish', 'closed', 'closed', '', 'stories', '', '', '2016-04-14 20:41:32', '2016-04-14 20:41:32', '', 0, 'http://voyagers.local:8888/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-04-14 20:41:32', '2016-04-14 20:41:32', '', 'Stories', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-04-14 20:41:32', '2016-04-14 20:41:32', '', 19, 'http://voyagers.local:8888/19-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=25', 6, 'nav_menu_item', '', 0),
(26, 1, '2016-04-14 22:57:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-14 22:57:07', '0000-00-00 00:00:00', '', 0, 'http://voyagers.local:8888/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=30', 8, 'nav_menu_item', '', 0),
(31, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2016-04-14 22:58:33', '2016-04-14 22:58:33', '', 'Give', '', 'publish', 'closed', 'closed', '', 'give', '', '', '2016-04-14 23:35:09', '2016-04-14 23:35:09', '', 0, 'http://voyagers.local:8888/?p=32', 7, 'nav_menu_item', '', 0),
(33, 1, '2016-04-14 23:10:07', '2016-04-14 23:10:07', '', 'Layer 36', '', 'inherit', 'closed', 'closed', '', 'layer-36', '', '', '2016-04-14 23:10:07', '2016-04-14 23:10:07', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Layer-36.jpeg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-04-14 23:10:39', '2016-04-14 23:10:39', '', 'Layer 37', '', 'inherit', 'closed', 'closed', '', 'layer-37', '', '', '2016-04-14 23:10:39', '2016-04-14 23:10:39', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2016-04-14 23:11:10', '2016-04-14 23:11:10', '', 'Layer 38', '', 'inherit', 'closed', 'closed', '', 'layer-38', '', '', '2016-04-14 23:11:10', '2016-04-14 23:11:10', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2016-04-14 23:11:42', '2016-04-14 23:11:42', '', 'Logo', '', 'inherit', 'closed', 'closed', '', 'logo', '', '', '2016-04-14 23:11:42', '2016-04-14 23:11:42', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Logo.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2016-04-14 23:12:15', '2016-04-14 23:12:15', '', 'Rectangle 35 copy 2', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-2', '', '', '2016-04-14 23:12:15', '2016-04-14 23:12:15', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-04-14 23:12:47', '2016-04-14 23:12:47', '', 'Rectangle 35 copy 3', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-3', '', '', '2016-04-14 23:12:47', '2016-04-14 23:12:47', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-04-14 23:13:18', '2016-04-14 23:13:18', '', 'Rectangle 35 copy 4', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-4', '', '', '2016-04-14 23:13:18', '2016-04-14 23:13:18', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2016-04-14 23:13:52', '2016-04-14 23:13:52', '', 'Rectangle 35 copy 5', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-5', '', '', '2016-04-14 23:13:52', '2016-04-14 23:13:52', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-5.jpeg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2016-04-14 23:14:25', '2016-04-14 23:14:25', '', 'Rectangle 35 copy', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy', '', '', '2016-04-14 23:14:25', '2016-04-14 23:14:25', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy.jpeg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-04-14 23:15:00', '2016-04-14 23:15:00', '', 'Slider', '', 'inherit', 'closed', 'closed', '', 'slider', '', '', '2016-04-14 23:15:00', '2016-04-14 23:15:00', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/Slider.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2016-04-14 23:19:50', '2016-04-14 23:19:50', '', 'fav', '', 'inherit', 'closed', 'closed', '', 'fav', '', '', '2016-04-14 23:19:50', '2016-04-14 23:19:50', '', 0, 'http://voyagers.local:8888/content/uploads/2016/04/fav.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2016-04-15 21:26:13', '2016-04-15 21:26:13', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\n\n<hr />\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\n\n<hr />\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\n<p style="text-align: center;"><a href="#">Read More</a></p>\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\n\n<hr />\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\n<p style="text-align: center;"><a href="#">Read More</a></p>\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\n\n<hr />\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\n<p style="text-align: center;"><a href="#">Read More</a></p>\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\n<h1 style="text-align: center;">Stay Connected</h1>\n\n<hr />\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\n<p style="text-align: center;">[social-icons]</p>\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2016-04-15 21:26:13', '2016-04-15 21:26:13', '', 5, 'http://voyagers.local:8888/5-autosave-v1/', 0, 'revision', '', 0),
(45, 1, '2016-04-14 23:46:40', '2016-04-14 23:46:40', '[vc_row inner_container="no" el_class="slider"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-14 23:46:40', '2016-04-14 23:46:40', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-04-15 00:15:41', '2016-04-15 00:15:41', '[vc_row inner_container="no" el_class="slider"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 00:15:41', '2016-04-15 00:15:41', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-04-15 18:49:25', '2016-04-15 18:49:25', '[vc_row inner_container="no" el_class="slider"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 18:49:25', '2016-04-15 18:49:25', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-04-15 19:07:42', '2016-04-15 19:07:42', '[vc_row inner_container="no" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 19:07:42', '2016-04-15 19:07:42', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-04-15 19:27:31', '2016-04-15 19:27:31', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 19:27:31', '2016-04-15 19:27:31', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-04-15 21:26:36', '2016-04-15 21:26:36', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 21:26:36', '2016-04-15 21:26:36', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-04-15 22:23:20', '2016-04-15 22:23:20', '', 'Rectangle 35 copy 2', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-2-2', '', '', '2016-04-15 22:23:20', '2016-04-15 22:23:20', '', 5, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-2-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2016-04-15 22:23:21', '2016-04-15 22:23:21', '', 'Rectangle 35 copy 3', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-3-2', '', '', '2016-04-15 22:23:21', '2016-04-15 22:23:21', '', 5, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-3-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-04-15 22:23:22', '2016-04-15 22:23:22', '', 'Rectangle 35 copy 4', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-4-2', '', '', '2016-04-15 22:23:22', '2016-04-15 22:23:22', '', 5, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-4-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2016-04-15 22:23:23', '2016-04-15 22:23:23', '', 'Rectangle 35 copy 5', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-5-2', '', '', '2016-04-15 22:23:23', '2016-04-15 22:23:23', '', 5, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-5-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2016-04-15 22:23:24', '2016-04-15 22:23:24', '', 'Rectangle 35 copy', '', 'inherit', 'closed', 'closed', '', 'rectangle-35-copy-6', '', '', '2016-04-15 22:23:24', '2016-04-15 22:23:24', '', 5, 'http://voyagers.local:8888/content/uploads/2016/04/Rectangle-35-copy-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2016-04-15 22:23:36', '2016-04-15 22:23:36', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37,51,52,53,54,55" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 22:23:36', '2016-04-15 22:23:36', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2016-04-15 22:23:51', '2016-04-15 22:23:51', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37,51,52,53,54,55" img_size="medium" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 22:23:51', '2016-04-15 22:23:51', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_revslider_css`
--

CREATE TABLE `wpproject_revslider_css` (
  `id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `settings` longtext,
  `hover` longtext,
  `params` text NOT NULL,
  `advanced` longtext
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wpproject_revslider_css`
--

INSERT INTO `wpproject_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(1, '.tp-caption.medium_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","border-width":"0px","border-style":"none","background-color":"#888"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","margin":"0px","white-space":"nowrap"},"hover":""}'),
(2, '.tp-caption.small_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","margin":"0px","white-space":"nowrap"},"hover":""}'),
(3, '.tp-caption.medium_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","margin":"0px","white-space":"nowrap"},"hover":""}'),
(4, '.tp-caption.large_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","margin":"0px","white-space":"nowrap"},"hover":""}'),
(5, '.tp-caption.very_large_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","margin":"0px","white-space":"nowrap","letter-spacing":"-2px"},"hover":""}'),
(6, '.tp-caption.very_big_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","border-width":"0px","border-style":"none","padding":"0px 4px","background-color":"#000"}', '{"idle":{"position":"absolute","text-shadow":"none","margin":"0px","white-space":"nowrap","padding-top":"1px"},"hover":""}'),
(7, '.tp-caption.very_big_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","border-width":"0px","border-style":"none","padding":"0px 4px","background-color":"#fff"}', '{"idle":{"position":"absolute","text-shadow":"none","margin":"0px","white-space":"nowrap","padding-top":"1px"},"hover":""}'),
(8, '.tp-caption.modern_medium_fat', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","margin":"0px","white-space":"nowrap"},"hover":""}'),
(9, '.tp-caption.modern_medium_fat_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","margin":"0px","white-space":"nowrap"},"hover":""}'),
(10, '.tp-caption.modern_medium_light', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","margin":"0px","white-space":"nowrap"},"hover":""}'),
(11, '.tp-caption.modern_big_bluebg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","border-width":"0px","border-style":"none","background-color":"#4e5b6c"}', '{"idle":{"position":"absolute","text-shadow":"none","margin":"0px","letter-spacing":"0"},"hover":""}'),
(12, '.tp-caption.modern_big_redbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","border-width":"0px","border-style":"none","background-color":"#de543e"}', '{"idle":{"position":"absolute","text-shadow":"none","padding-top":"1px","margin":"0px","letter-spacing":"0"},"hover":""}'),
(13, '.tp-caption.modern_small_text_dark', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#555","font-size":"14px","line-height":"22px","font-family":"Arial","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","margin":"0px","white-space":"nowrap"},"hover":""}'),
(14, '.tp-caption.boxshadow', '{"translated":5,"type":"text","version":"4"}', 'null', '[]', '{"idle":{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"},"hover":""}'),
(15, '.tp-caption.black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(16, '.tp-caption.noshadow', '{"translated":5,"type":"text","version":"4"}', 'null', '[]', '{"idle":{"text-shadow":"none"},"hover":""}'),
(17, '.tp-caption.thinheadline_dark', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"rgba(0,0,0,0.85)","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}', '{"idle":{"position":"absolute","text-shadow":"none"},"hover":""}'),
(18, '.tp-caption.thintext_dark', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"rgba(0,0,0,0.85)","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}', '{"idle":{"position":"absolute","text-shadow":"none"},"hover":""}'),
(19, '.tp-caption.largeblackbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(20, '.tp-caption.largepinkbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(21, '.tp-caption.largewhitebg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(22, '.tp-caption.largegreenbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(23, '.tp-caption.excerpt', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","padding":"1px 4px 0px 4px","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}', '{"idle":{"text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","width":"150px","white-space":"normal !important","height":"auto"},"hover":""}'),
(24, '.tp-caption.large_bold_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":{"text-shadow":"none","margin":"0px"},"hover":""}'),
(25, '.tp-caption.medium_thin_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":{"text-shadow":"none","margin":"0px"},"hover":""}'),
(26, '.tp-caption.small_thin_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":{"text-shadow":"none","margin":"0px"},"hover":""}'),
(27, '.tp-caption.lightgrey_divider', '{"translated":5,"type":"text","version":"4"}', 'null', '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}', '{"idle":{"width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial"},"hover":""}'),
(28, '.tp-caption.large_bold_darkblue', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(29, '.tp-caption.medium_bg_darkblue', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(30, '.tp-caption.medium_bold_red', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(31, '.tp-caption.medium_light_red', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(32, '.tp-caption.medium_bg_red', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(33, '.tp-caption.medium_bold_orange', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(34, '.tp-caption.medium_bg_orange', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(35, '.tp-caption.grassfloor', '{"translated":5,"type":"text","version":"4"}', 'null', '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}', '{"idle":{"width":"4000px","height":"150px"},"hover":""}'),
(36, '.tp-caption.large_bold_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(37, '.tp-caption.medium_light_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(38, '.tp-caption.mediumlarge_light_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(39, '.tp-caption.mediumlarge_light_white_center', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":{"text-align":"center"},"hover":""}'),
(40, '.tp-caption.medium_bg_asbestos', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(41, '.tp-caption.medium_light_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(42, '.tp-caption.large_bold_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(43, '.tp-caption.mediumlarge_light_darkblue', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(44, '.tp-caption.small_light_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(45, '.tp-caption.roundedimage', '{"translated":5,"type":"text","version":"4"}', 'null', '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}', '{"idle":[],"hover":""}'),
(46, '.tp-caption.large_bg_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(47, '.tp-caption.mediumwhitebg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(48, '.tp-caption.MarkerDisplay', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ff0000","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"font-style":"normal","font-family":"Permanent Marker","padding":"0px 0px 0px 0px","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"#000000","border-style":"none","border-width":"0px","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(49, '.tp-caption.Restaurant-Display', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"120px","line-height":"120px","font-weight":"700","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(50, '.tp-caption.Restaurant-Cursive', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"30px","line-height":"30px","font-weight":"400","font-style":"normal","font-family":"Nothing you could do","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(51, '.tp-caption.Restaurant-ScrollDownText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"17px","line-height":"17px","font-weight":"400","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(52, '.tp-caption.Restaurant-Description', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"20px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(53, '.tp-caption.Restaurant-Price', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"30px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(54, '.tp-caption.Restaurant-Menuitem', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"500","easing":"Power2.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"400","font-style":"normal","font-family":"Roboto","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(55, '.tp-caption.Furniture-LogoText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#e6cfa3","color-transparency":"1","font-size":"160px","line-height":"150px","font-weight":"300","font-style":"normal","font-family":"\\"Raleway\\"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(56, '.tp-caption.Furniture-Plus', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0.5","easing":"Linear.easeNone"}', '{"color":"#e6cfa3","color-transparency":"1","font-size":"20","line-height":"20px","font-weight":"400","font-style":"normal","font-family":"\\"Raleway\\"","padding":["6px","7px","4px","7px"],"text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none","box-shadow":"rgba(0,0,0,0.1) 0 1px 3px"},"hover":""}'),
(57, '.tp-caption.Furniture-Title', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"700","font-style":"normal","font-family":"\\"Raleway\\"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none","letter-spacing":"3px"},"hover":""}'),
(58, '.tp-caption.Furniture-Subtitle', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"17px","line-height":"20px","font-weight":"300","font-style":"normal","font-family":"\\"Raleway\\"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(59, '.tp-caption.Gym-Display', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"80px","line-height":"70px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(60, '.tp-caption.Gym-Subline', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"5px"},"hover":""}'),
(61, '.tp-caption.Gym-SmallText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"22","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(62, '.tp-caption.Fashion-SmallText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"12px","line-height":"20px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(63, '.tp-caption.Fashion-BigDisplay', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"60px","line-height":"60px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(64, '.tp-caption.Fashion-TextBlock', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"20px","line-height":"40px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(65, '.tp-caption.Sports-Display', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"130px","line-height":"130px","font-weight":"100","font-style":"normal","font-family":"\\"Raleway\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"13px"},"hover":""}'),
(66, '.tp-caption.Sports-DisplayFat', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"130px","line-height":"130px","font-weight":"900","font-style":"normal","font-family":"\\"Raleway\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":[""],"hover":""}'),
(67, '.tp-caption.Sports-Subline', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"32px","line-height":"32px","font-weight":"400","font-style":"normal","font-family":"\\"Raleway\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"4px"},"hover":""}'),
(68, '.tp-caption.Instagram-Caption', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"900","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(69, '.tp-caption.News-Title', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"70px","line-height":"60px","font-weight":"400","font-style":"normal","font-family":"Roboto Slab","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(70, '.tp-caption.News-Subtitle', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"0.65","text-decoration":"none","background-color":"#ffffff","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"solid","border-width":"0px","border-radius":["0","0","0px","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"300","easing":"Power3.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"24px","font-weight":"300","font-style":"normal","font-family":"Roboto Slab","padding":["0","0","0","0"],"text-decoration":"none","background-color":"#ffffff","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(71, '.tp-caption.Photography-Display', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"80px","line-height":"70px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"5px"},"hover":""}'),
(72, '.tp-caption.Photography-Subline', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#777777","color-transparency":"1","font-size":"20px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(73, '.tp-caption.Photography-ImageHover', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"0.5","scalex":"0.8","scaley":"0.8","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"1000","easing":"Power3.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20","line-height":"22","font-weight":"400","font-style":"normal","font-family":"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"#ffffff","border-transparency":"0","border-style":"none","border-width":"0px","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(74, '.tp-caption.Photography-Menuitem', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#00ffde","background-transparency":"0.65","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"200","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["3px","5px","3px","8px"],"text-decoration":"none","background-color":"#000000","background-transparency":"0.65","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(75, '.tp-caption.Photography-Textblock', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"17px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(76, '.tp-caption.Photography-Subline-2', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"0.35","font-size":"20px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}');
INSERT INTO `wpproject_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(77, '.tp-caption.Photography-ImageHover2', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"0.5","scalex":"0.8","scaley":"0.8","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"500","easing":"Back.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20","line-height":"22","font-weight":"400","font-style":"normal","font-family":"Arial","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"#ffffff","border-transparency":"0","border-style":"none","border-width":"0px","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(78, '.tp-caption.WebProduct-Title', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#333333","color-transparency":"1","font-size":"90px","line-height":"90px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(79, '.tp-caption.WebProduct-SubTitle', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#999999","color-transparency":"1","font-size":"15px","line-height":"20px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(80, '.tp-caption.WebProduct-Content', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#999999","color-transparency":"1","font-size":"16px","line-height":"24px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(81, '.tp-caption.WebProduct-Menuitem', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#999999","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"200","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"20px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["3px","5px","3px","8px"],"text-decoration":"none","text-align":"left","background-color":"#333333","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(82, '.tp-caption.WebProduct-Title-Light', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"90px","line-height":"90px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(83, '.tp-caption.WebProduct-SubTitle-Light', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"0.35","font-size":"15px","line-height":"20px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(84, '.tp-caption.WebProduct-Content-Light', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"0.65","font-size":"16px","line-height":"24px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(85, '.tp-caption.FatRounded', '{"hover":"true","type":"text","version":"5.0","translated":"5"}', '{"color":"#fff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"#d3d3d3","border-transparency":"1","border-style":"none","border-width":"0px","border-radius":["50px","50px","50px","50px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["20px","22px","20px","25px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0.5","border-color":"#d3d3d3","border-transparency":"1","border-style":"none","border-width":"0px","border-radius":["50px","50px","50px","50px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(86, '.tp-caption.NotGeneric-Title', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"70px","line-height":"70px","font-weight":"800","font-style":"normal","font-family":"Raleway","padding":"10px 0px 10px 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"[object Object]","hover":""}'),
(87, '.tp-caption.NotGeneric-SubTitle', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"13px","line-height":"20px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"4px","text-align":"left"},"hover":""}'),
(88, '.tp-caption.NotGeneric-CallToAction', '{"hover":"true","translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":"0px 0px 0px 0px","opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power3.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":"10px 30px 10px 30px","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"1","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}'),
(89, '.tp-caption.NotGeneric-Icon', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"default","speed":"300","easing":"Power3.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":"0px 0px 0px 0px","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0","border-style":"solid","border-width":"0px","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}'),
(90, '.tp-caption.NotGeneric-Menuitem', '{"hover":"true","translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":"0px 0px 0px 0px","opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":"27px 30px 27px 30px","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.15","border-style":"solid","border-width":"1px","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}'),
(91, '.tp-caption.MarkerStyle', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"30px","font-weight":"100","font-style":"normal","font-family":"\\"Permanent Marker\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"text-align":"left","0":""},"hover":""}'),
(92, '.tp-caption.Gym-Menuitem', '{"hover":"true","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"2px","border-radius":["3px","3px","3px","3px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"200","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["3px","5px","3px","8px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"1","border-color":"#ffffff","border-transparency":"0","border-style":"solid","border-width":"2px","border-radius":["3px","3px","3px","3px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(93, '.tp-caption.Newspaper-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"#FFFFFF","background-transparency":"1","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"13px","line-height":"17px","font-weight":"700","font-style":"normal","font-family":"Roboto","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#ffffff","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(94, '.tp-caption.Newspaper-Subtitle', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#a8d8ee","color-transparency":"1","font-size":"15px","line-height":"20px","font-weight":"900","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(95, '.tp-caption.Newspaper-Title', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"50px","line-height":"55px","font-weight":"400","font-style":"normal","font-family":"\\"Roboto Slab\\"","padding":["0","0","10px","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(96, '.tp-caption.Newspaper-Title-Centered', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"50px","line-height":"55px","font-weight":"400","font-style":"normal","font-family":"\\"Roboto Slab\\"","padding":["0","0","10px","0"],"text-decoration":"none","text-align":"center","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(97, '.tp-caption.Hero-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(98, '.tp-caption.Video-Title', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["5px","5px","5px","5px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"-20%","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(99, '.tp-caption.Video-SubTitle', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"12px","line-height":"12px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["5px","5px","5px","5px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0.35","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"-20%","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(100, '.tp-caption.NotGeneric-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}'),
(101, '.tp-caption.NotGeneric-BigButton', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["27px","30px","27px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.15","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(102, '.tp-caption.WebProduct-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#333333","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"#000000","border-transparency":"1","border-style":"none","border-width":"2","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"300","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"16px","line-height":"48px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0px","40px","0px","40px"],"text-decoration":"none","text-align":"left","background-color":"#333333","background-transparency":"1","border-color":"#000000","border-transparency":"1","border-style":"none","border-width":"2","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"1px"},"hover":""}'),
(103, '.tp-caption.Restaurant-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffe081","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"300","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"500","font-style":"normal","font-family":"Roboto","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#0a0a0a","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(104, '.tp-caption.Gym-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#72a800","background-transparency":"1","border-color":"#000000","border-transparency":"0","border-style":"solid","border-width":"0","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["13px","35px","13px","35px"],"text-decoration":"none","text-align":"left","background-color":"#8bc027","background-transparency":"1","border-color":"#000000","border-transparency":"0","border-style":"solid","border-width":"0","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"1px"},"hover":""}'),
(105, '.tp-caption.Gym-Button-Light', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#72a800","background-transparency":"0","border-color":"#8bc027","border-transparency":"1","border-style":"solid","border-width":"2px","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power2.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"2px","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(106, '.tp-caption.Sports-Button-Light', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"500","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(107, '.tp-caption.Sports-Button-Red', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"#000000","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"500","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#db1c22","background-transparency":"1","border-color":"#db1c22","border-transparency":"0","border-style":"solid","border-width":"2px","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(108, '.tp-caption.Photography-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"300","easing":"Power3.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["13px","35px","13px","35px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"1px","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"1px"},"hover":""}'),
(109, '.tp-caption.Newspaper-Button-2', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["3px","3px","3px","3px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"900","font-style":"normal","font-family":"Roboto","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"2","border-radius":["3px","3px","3px","3px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(110, '.tp-caption.voyagers-txt', '{"hover":"false","type":"text","version":"custom","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20","line-height":"22","font-weight":"400","font-style":"normal","font-family":"Arial","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":[],"hover":[]}'),
(111, '.tp-caption.voyagers-txt', '{"hover":"false","type":"text","version":"custom","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20","line-height":"22","font-weight":"400","font-style":"normal","font-family":"Arial","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":[],"hover":[]}'),
(112, '.tp-caption.voyagers-btn', '{"hover":"false","type":"text","version":"custom","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20","line-height":"22","font-weight":"400","font-style":"normal","font-family":"Open Sans","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":[],"hover":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_revslider_layer_animations`
--

CREATE TABLE `wpproject_revslider_layer_animations` (
  `id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  `settings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_revslider_navigations`
--

CREATE TABLE `wpproject_revslider_navigations` (
  `id` int(9) NOT NULL,
  `name` varchar(191) NOT NULL,
  `handle` varchar(191) NOT NULL,
  `css` mediumtext NOT NULL,
  `markup` mediumtext NOT NULL,
  `settings` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_revslider_sliders`
--

CREATE TABLE `wpproject_revslider_sliders` (
  `id` int(9) NOT NULL,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` longtext NOT NULL,
  `settings` text,
  `type` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wpproject_revslider_sliders`
--

INSERT INTO `wpproject_revslider_sliders` (`id`, `title`, `alias`, `params`, `settings`, `type`) VALUES
(1, 'home', 'home', '{"hero_active":"-1","source_type":"gallery","instagram-count":"","instagram-transient":"1200","instagram-access-token":"","instagram-type":"user","instagram-user-id":"","instagram-hash-tag":"","flickr-count":"","flickr-transient":"1200","flickr-api-key":"","flickr-type":"publicphotos","flickr-user-url":"","flickr-photoset":"","flickr-photoset-select":"","flickr-gallery-url":"","flickr-group-url":"","facebook-count":"","facebook-transient":"1200","facebook-page-url":"","facebook-type-source":"album","facebook-album":"","facebook-album-select":"","facebook-app-id":"","facebook-app-secret":"","twitter-count":"","twitter-transient":"1200","twitter-user-id":"","twitter-image-only":"off","twitter-include-retweets":"off","twitter-exclude-replies":"off","twitter-consumer-key":"","twitter-consumer-secret":"","twitter-access-token":"","twitter-access-secret":"","youtube-count":"","youtube-transient":"1200","youtube-api":"","youtube-channel-id":"","youtube-type-source":"channel","youtube-playlist":"","youtube-playlist-select":"","vimeo-count":"","vimeo-transient":"1200","vimeo-type-source":"user","vimeo-username":"","vimeo-groupname":"","vimeo-albumid":"","vimeo-channelname":"","product_types":"product","product_category":"","posts_list":"","fetch_type":"cat_tag","post_types":"post","post_category":"","product_sortby":"ID","product_sort_direction":"DESC","max_slider_products":"30","excerpt_limit_product":"55","reg_price_from":"","reg_price_to":"","sale_price_from":"","sale_price_to":"","instock_only":"off","featured_only":"off","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","title":"home","alias":"home","shortcode":"[rev_slider alias=\\\\\\"home\\\\\\"]","slider-type":"standard","slider_type":"fullwidth","width":"1240","height":"730","width_notebook":"1024","height_notebook":"730","enable_custom_size_notebook":"on","width_tablet":"778","height_tablet":"400","enable_custom_size_tablet":"on","width_mobile":"480","height_mobile":"720","enable_custom_size_iphone":"off","full_screen_align_force":"off","fullscreen_min_height":"","autowidth_force":"off","fullscreen_offset_container":"","fullscreen_offset_size":"","main_overflow_hidden":"off","auto_height":"off","min_height":"","max_width":"","force_full_width":"on","next_slide_on_window_focus":"off","disable_focus_listener":"off","def-layer_selection":"off","slider_id":"","delay":"9000","start_js_after_delay":"0","def-slide_transition":"fade","def-transition_duration":"300","def-image_source_type":"full","def-background_fit":"cover","def-bg_fit_x":"100","def-bg_fit_y":"100","def-bg_position":"center center","def-bg_position_x":"0","def-bg_position_y":"0","def-bg_repeat":"no-repeat","def-kenburn_effect":"off","def-kb_start_fit":"100","def-kb_easing":"Linear.easeNone","def-kb_end_fit":"100","def-kb_start_offset_x":"0","def-kb_start_offset_y":"0","def-kb_end_offset_x":"0","def-kb_end_offset_y":"0","def-kb_start_rotate":"0","def-kb_end_rotate":"0","def-kb_duration":"10000","0":"blank","start_with_slide_enable":"off","start_with_slide":"1","first_transition_active":"off","first_transition_type":"fade","first_transition_duration":"300","first_transition_slot_amount":"7","stop_on_hover":"on","stop_slider":"off","stop_after_loops":"0","stop_at_slide":"2","shuffle":"off","loop_slide":"off","label_viewport":"off","viewport_start":"wait","viewport_area":"80","waitforinit":"off","enable_progressbar":"off","show_timerbar":"top","progress_height":"5","progress_opa":"15","progressbar_color":"#000000","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":"0","hide_defined_layers_under":"0","hide_all_layers_under":"0","shadow_type":"0","background_dotted_overlay":"none","background_color":"transparent","padding":"0","show_background_image":"off","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center center","position":"center","margin_top":"0","margin_bottom":"0","margin_left":"0","margin_right":"0","use_spinner":"0","spinner_color":"#FFFFFF","enable_arrows":"on","rtl_arrows":"off","navigation_arrow_style":"uranus","navigation_arrows_preset":"default","ph-uranus-arrows-width-custom-def":"off","ph-uranus-arrows-width-custom":"50","ph-uranus-arrows-background-color-rgba-def":"off","ph-uranus-arrows-background-color-rgba":"rgba(255,255,255,0)","ph-uranus-arrows-font-size-custom-def":"off","ph-uranus-arrows-font-size-custom":"40","ph-uranus-arrows-height-custom-def":"off","ph-uranus-arrows-height-custom":"50","arrows_always_on":"false","hide_arrows":"200","hide_arrows_mobile":"1200","hide_arrows_on_mobile":"off","arrows_under_hidden":"0","hide_arrows_over":"off","arrows_over_hidden":"0","leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":"20","leftarrow_offset_vert":"0","leftarrow_position":"slider","rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":"20","rightarrow_offset_vert":"0","rightarrow_position":"slider","enable_bullets":"off","rtl_bullets":"off","navigation_bullets_style":"round","navigation_bullets_preset":"default","ph-round-bullets-hover-bullet-bg-color-def":"off","ph-round-bullets-hover-bullet-bg-color":"#666666","ph-round-bullets-border-size-custom-def":"off","ph-round-bullets-border-size-custom":"3","ph-round-bullets-border-color-color-def":"off","ph-round-bullets-border-color-color":"#e5e5e5","ph-round-bullets-bullet-bg-bottom-color-def":"off","ph-round-bullets-bullet-bg-bottom-color":"#e1e1e1","ph-round-bullets-bullet-bg-top-color-def":"off","ph-round-bullets-bullet-bg-top-color":"#999999","ph-round-bullets-bullet-size-custom-def":"off","ph-round-bullets-bullet-size-custom":"12","bullets_space":"5","bullets_direction":"horizontal","bullets_always_on":"false","hide_bullets":"200","hide_bullets_mobile":"1200","hide_bullets_on_mobile":"off","bullets_under_hidden":"0","hide_bullets_over":"off","bullets_over_hidden":"0","bullets_align_hor":"center","bullets_align_vert":"bottom","bullets_offset_hor":"0","bullets_offset_vert":"20","bullets_position":"slider","enable_thumbnails":"off","rtl_thumbnails":"off","thumbnails_padding":"5","span_thumbnails_wrapper":"off","thumbnails_wrapper_color":"transparent","thumbnails_wrapper_opacity":"100","thumbnails_style":"round","navigation_thumbs_preset":"default","ph-round-thumbs-title-font-size-custom-def":"off","ph-round-thumbs-title-font-size-custom":"12","ph-round-thumbs-title-color-color-rgba-def":"off","ph-round-thumbs-title-color-color-rgba":"#ffffff","ph-round-thumbs-title-bg-color-rgba-def":"off","ph-round-thumbs-title-bg-color-rgba":"rgba(0,0,0,0.85)","thumb_amount":"5","thumbnails_space":"5","thumbnail_direction":"horizontal","thumb_width":"100","thumb_height":"50","thumb_width_min":"100","thumbs_always_on":"false","hide_thumbs":"200","hide_thumbs_mobile":"1200","hide_thumbs_on_mobile":"off","thumbs_under_hidden":"0","hide_thumbs_over":"off","thumbs_over_hidden":"0","thumbnails_inner_outer":"inner","thumbnails_align_hor":"center","thumbnails_align_vert":"bottom","thumbnails_offset_hor":"0","thumbnails_offset_vert":"20","thumbnails_position":"slider","enable_tabs":"off","rtl_tabs":"off","tabs_padding":"5","span_tabs_wrapper":"off","tabs_wrapper_color":"transparent","tabs_wrapper_opacity":"5","tabs_style":"round","navigation_tabs_preset":"default","ph-round-tabs-param2-size-custom-def":"off","ph-round-tabs-param2-size-custom":"14","ph-round-tabs-param2-color-color-rgba-def":"off","ph-round-tabs-param2-color-color-rgba":"0,0,0,0","ph-round-tabs-contentcolor-color-rgba-def":"off","ph-round-tabs-contentcolor-color-rgba":"#333333","ph-round-tabs-bgcolor-color-rgba-def":"off","ph-round-tabs-bgcolor-color-rgba":"rgba(0,0,0,0)","ph-round-tabs-hover-bg-color-color-rgba-def":"off","ph-round-tabs-hover-bg-color-color-rgba":"#eeeeee","ph-round-tabs-param1-size-custom-def":"off","ph-round-tabs-param1-size-custom":"12","ph-round-tabs-param1-color-color-rgba-def":"off","ph-round-tabs-param1-color-color-rgba":"rgba(51,51,51,0.5)","ph-round-tabs-image-size-custom-def":"off","ph-round-tabs-image-size-custom":"60","ph-round-tabs-border-size-custom-def":"off","ph-round-tabs-border-size-custom":"1","ph-round-tabs-border-color-color-rgba-def":"off","ph-round-tabs-border-color-color-rgba":"#e5e5e5","ph-round-tabs-font-family-font_family-def":"off","ph-round-tabs-font-family-font_family":"Roboto","tabs_amount":"5","tabs_space":"5","tabs_direction":"horizontal","tabs_width":"100","tabs_height":"50","tabs_width_min":"100","tabs_always_on":"false","hide_tabs":"200","hide_tabs_mobile":"1200","hide_tabs_on_mobile":"off","tabs_under_hidden":"0","hide_tabs_over":"off","tabs_over_hidden":"0","tabs_inner_outer":"inner","tabs_align_hor":"center","tabs_align_vert":"bottom","tabs_offset_hor":"0","tabs_offset_vert":"20","tabs_position":"slider","touchenabled":"on","drag_block_vertical":"off","swipe_velocity":"75","swipe_min_touches":"1","swipe_direction":"horizontal","keyboard_navigation":"off","keyboard_direction":"horizontal","mousescroll_navigation":"off","mousescroll_navigation_reverse":"default","previewimage_width":"100","previewimage_height":"50","carousel_infinity":"off","carousel_space":"0","carousel_borderr":"0","carousel_borderr_unit":"px","carousel_padding_top":"0","carousel_padding_bottom":"0","carousel_maxitems":"3","carousel_stretch":"off","carousel_fadeout":"on","carousel_varyfade":"off","carousel_rotation":"off","carousel_varyrotate":"off","carousel_maxrotation":"0","carousel_scale":"off","carousel_varyscale":"off","carousel_scaledown":"50","carousel_hposition":"center","carousel_vposition":"center","use_parallax":"on","disable_parallax_mobile":"on","ddd_parallax":"off","ddd_parallax_shadow":"off","ddd_parallax_bgfreeze":"off","ddd_parallax_overflow":"off","ddd_parallax_layer_overflow":"off","ddd_parallax_zcorrection":"65","parallax_type":"scroll","parallax_origo":"enterpoint","parallax_speed":"400","parallax_level_16":"55","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"46","parallax_level_11":"47","parallax_level_12":"48","parallax_level_13":"49","parallax_level_14":"50","parallax_level_15":"51","lazy_load_type":"none","simplify_ie8_ios4":"off","show_alternative_type":"off","show_alternate_image":"","jquery_noconflict":"off","js_to_body":"false","output_type":"none","jquery_debugmode":"off","custom_css":"","custom_javascript":""}', '{"version":5}', '');

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_revslider_slides`
--

CREATE TABLE `wpproject_revslider_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wpproject_revslider_slides`
--

INSERT INTO `wpproject_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`, `settings`) VALUES
(1, 1, 1, '{"background_type":"image","rs-gallery-type":"gallery","bg_external":"","bg_color":"#E7E7E7","0":"Clear","slide_bg_youtube":"","slide_bg_vimeo":"","slide_bg_html_mpeg":"","slide_bg_html_webm":"","slide_bg_html_ogv":"","image_source_type":"full","alt_option":"media_library","alt_attr":"","ext_width":"1920","ext_height":"1080","title_option":"media_library","title_attr":"","video_force_cover":"on","video_dotted_overlay":"none","video_ratio":"16:9","video_start_at":"","video_end_at":"","video_loop":"none","video_nextslide":"off","video_force_rewind":"on","video_mute":"on","video_volume":"","video_speed":"1","video_arguments":"hd=1&wmode=opaque&showinfo=0&rel=0;","video_arguments_vim":"title=0&byline=0&portrait=0&api=1","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_repeat":"no-repeat","slide_parallax_level":"2","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_start_offset_x":"0","kb_end_offset_x":"0","kb_start_offset_y":"0","kb_end_offset_y":"0","kb_start_rotate":"0","kb_end_rotate":"0","kb_easing":"Linear.easeNone","kb_duration":"10000","image_id":"42","title":"Slide","delay":"","stoponpurpose":"false","invisibleslide":"false","state":"published","hideslideafter":"0","hideslideonmobile":"off","date_from":"","date_to":"","save_performance":"off","slide_thumb":"","thumb_dimension":"slider","thumb_for_admin":"off","slide_transition":["fade"],"slot_amount":["default"],"transition_rotation":["0"],"transition_duration":["300"],"transition_ease_in":["default"],"transition_ease_out":["default"],"ph-uranus-arrows-height-custom-slide":"off","ph-uranus-arrows-height-custom":"50","ph-uranus-arrows-font-size-custom-slide":"off","ph-uranus-arrows-font-size-custom":"40","ph-uranus-arrows-background-color-rgba-slide":"off","ph-uranus-arrows-background-color-rgba":"rgba(255,255,255,0)","ph-uranus-arrows-width-custom-slide":"off","ph-uranus-arrows-width-custom":"50","ph-round-bullets-bullet-size-custom-slide":"off","ph-round-bullets-bullet-size-custom":"12","ph-round-bullets-bullet-bg-top-color-slide":"off","ph-round-bullets-bullet-bg-top-color":"#999999","ph-round-bullets-bullet-bg-bottom-color-slide":"off","ph-round-bullets-bullet-bg-bottom-color":"#e1e1e1","ph-round-bullets-border-color-color-slide":"off","ph-round-bullets-border-color-color":"#e5e5e5","ph-round-bullets-border-size-custom-slide":"off","ph-round-bullets-border-size-custom":"3","ph-round-bullets-hover-bullet-bg-color-slide":"off","ph-round-bullets-hover-bullet-bg-color":"#666666","ph-round-tabs-font-family-font_family-slide":"off","ph-round-tabs-font-family-font_family":"Roboto","ph-round-tabs-border-color-color-rgba-slide":"off","ph-round-tabs-border-color-color-rgba":"#e5e5e5","ph-round-tabs-border-size-custom-slide":"off","ph-round-tabs-border-size-custom":"1","ph-round-tabs-image-size-custom-slide":"off","ph-round-tabs-image-size-custom":"60","ph-round-tabs-param1-color-color-rgba-slide":"off","ph-round-tabs-param1-color-color-rgba":"rgba(51,51,51,0.5)","ph-round-tabs-param1-size-custom-slide":"off","ph-round-tabs-param1-size-custom":"12","ph-round-tabs-hover-bg-color-color-rgba-slide":"off","ph-round-tabs-hover-bg-color-color-rgba":"#eeeeee","ph-round-tabs-bgcolor-color-rgba-slide":"off","ph-round-tabs-bgcolor-color-rgba":"rgba(0,0,0,0)","ph-round-tabs-contentcolor-color-rgba-slide":"off","ph-round-tabs-contentcolor-color-rgba":"#333333","ph-round-tabs-param2-color-color-rgba-slide":"off","ph-round-tabs-param2-color-color-rgba":"0,0,0,0","ph-round-tabs-param2-size-custom-slide":"off","ph-round-tabs-param2-size-custom":"14","ph-round-thumbs-title-bg-color-rgba-slide":"off","ph-round-thumbs-title-bg-color-rgba":"rgba(0,0,0,0.85)","ph-round-thumbs-title-color-color-rgba-slide":"off","ph-round-thumbs-title-color-color-rgba":"#ffffff","ph-round-thumbs-title-font-size-custom-slide":"off","ph-round-thumbs-title-font-size-custom":"12","params_1":"","params_1_chars":"10","params_2":"","params_2_chars":"10","params_3":"","params_3_chars":"10","params_4":"","params_4_chars":"10","params_5":"","params_5_chars":"10","params_6":"","params_6_chars":"10","params_7":"","params_7_chars":"10","params_8":"","params_8_chars":"10","params_9":"","params_9_chars":"10","params_10":"","params_10_chars":"10","slide_description":"","class_attr":"","id_attr":"","data_attr":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_bg_color":"#E7E7E7","slide_bg_external":"","image":"http:\\/\\/voyagers.local:8888\\/content\\/uploads\\/2016\\/04\\/Slider.jpg","0":"Clear"}', '[{"text":"Glorifiying god by loving jesus, one another and the world","type":"text","special_type":null,"subtype":"","specialsettings":{},"unique_id":1,"left":{"desktop":0},"top":{"desktop":0},"internal_class":"","hover":false,"alias":"Glorifiying god by l...","loop_animation":"none","loop_easing":"linearEaseNone","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","html_tag":"div","mask_start":false,"mask_end":false,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","animation":"tp-fade","easing":"Power2.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":{"desktop":"auto"},"max_width":{"desktop":"auto"},"video_width":{"desktop":"480"},"video_height":{"desktop":"360"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"static_end":"last","speed":300,"align_hor":{"desktop":"center"},"align_vert":{"desktop":"middle"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link_slide":"nothing","scrollunder_offset":"","style":"voyagers-txt","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","time":500,"endspeed":300,"endtime":9300,"endanimation":"fadeout","endeasing":"nothing","width":-1,"height":-1,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"20"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"400"},"color":{"desktop":"#ffffff"}},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","deformation":{"font-family":"Arial","padding":["0","0","0","0"],"font-style":"normal","color-transparency":"1","text-decoration":"none","text-align":"left","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":0,"split_in_extratime":-10,"split_out_extratime":-10,"endWithSlide":true,"toggle":false,"toggle_use_hover":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","static_start":"1","layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]},"parallax_layer_ddd_zlevel":"front","mask_speed_start":"inherit","mask_ease_start":"inherit","link":"","link_open_in":"same","pers_start":"inherit","pers_end":"inherit"},{"text":"<a href=\\"#\\" class=\\"learn\\">Learn more<\\/a>","type":"text","special_type":null,"subtype":"","specialsettings":{},"unique_id":2,"left":{"desktop":-100},"top":{"desktop":50},"internal_class":"","hover":false,"alias":"Learn more","loop_animation":"none","loop_easing":"linearEaseNone","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","html_tag":"div","mask_start":false,"mask_end":false,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","animation":"tp-fade","easing":"Power2.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":{"desktop":"auto"},"max_width":{"desktop":"auto"},"video_width":{"desktop":"480"},"video_height":{"desktop":"360"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"static_end":"last","speed":300,"align_hor":{"desktop":"center"},"align_vert":{"desktop":"middle"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link_slide":"nothing","scrollunder_offset":"","style":"voyagers-btn","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","time":500,"endspeed":300,"endtime":9300,"endanimation":"fadeout","endeasing":"nothing","width":-1,"height":-1,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"20"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"400"},"color":{"desktop":"#ffffff"}},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","deformation":{"font-family":"Arial","padding":["0","0","0","0"],"font-style":"normal","color-transparency":"1","text-decoration":"none","text-align":"left","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":1,"split_in_extratime":-10,"split_out_extratime":-10,"endWithSlide":true,"toggle":false,"toggle_use_hover":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","static_start":"1","layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]},"parallax_layer_ddd_zlevel":"front","mask_speed_start":"inherit","mask_ease_start":"inherit","link":"","link_open_in":"same","pers_start":"inherit","pers_end":"inherit"},{"text":"<a href=\\"#\\" class=\\"join\\">Join out praise<\\/a>","type":"text","special_type":null,"subtype":"","specialsettings":{},"unique_id":2,"left":{"desktop":100},"top":{"desktop":50},"internal_class":"","hover":false,"alias":"Learn more","loop_animation":"none","loop_easing":"linearEaseNone","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","html_tag":"div","mask_start":false,"mask_end":false,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","animation":"tp-fade","easing":"Power2.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":{"desktop":"auto"},"max_width":{"desktop":"auto"},"video_width":{"desktop":"480"},"video_height":{"desktop":"360"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"static_end":"last","speed":300,"align_hor":{"desktop":"center"},"align_vert":{"desktop":"middle"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link_slide":"nothing","scrollunder_offset":"","style":"voyagers-btn","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","time":500,"endspeed":300,"endtime":9300,"endanimation":"fadeout","endeasing":"nothing","width":102,"height":22,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"20"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"400"},"color":{"desktop":"#ffffff"}},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","deformation":{"font-family":"Open Sans","padding":["0","0","0","0"],"font-style":"normal","color-transparency":"1","text-decoration":"none","text-align":"left","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":2,"split_in_extratime":-10,"split_out_extratime":-10,"endWithSlide":true,"toggle":false,"toggle_use_hover":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","static_start":"1","layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]},"parallax_layer_ddd_zlevel":"front","mask_speed_start":"inherit","mask_ease_start":"inherit","link":"","link_open_in":"same","pers_start":"inherit","pers_end":"inherit"}]', '""'),
(3, 1, 2, '{"background_type":"image","rs-gallery-type":"gallery","bg_external":"","bg_color":"#E7E7E7","0":"Clear","slide_bg_youtube":"","slide_bg_vimeo":"","slide_bg_html_mpeg":"","slide_bg_html_webm":"","slide_bg_html_ogv":"","image_source_type":"full","alt_option":"media_library","alt_attr":"","ext_width":"1920","ext_height":"1080","title_option":"media_library","title_attr":"","video_force_cover":"on","video_dotted_overlay":"none","video_ratio":"16:9","video_start_at":"","video_end_at":"","video_loop":"none","video_nextslide":"off","video_force_rewind":"on","video_mute":"on","video_volume":"","video_speed":"1","video_arguments":"hd=1&wmode=opaque&showinfo=0&rel=0;","video_arguments_vim":"title=0&byline=0&portrait=0&api=1","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_repeat":"no-repeat","slide_parallax_level":"2","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_start_offset_x":"0","kb_end_offset_x":"0","kb_start_offset_y":"0","kb_end_offset_y":"0","kb_start_rotate":"0","kb_end_rotate":"0","kb_easing":"Linear.easeNone","kb_duration":"10000","image_id":"42","title":"Slide","delay":"","stoponpurpose":"false","invisibleslide":"false","state":"published","hideslideafter":"0","hideslideonmobile":"off","date_from":"","date_to":"","save_performance":"off","slide_thumb":"","thumb_dimension":"slider","thumb_for_admin":"off","slide_transition":["fade"],"slot_amount":["default"],"transition_rotation":["0"],"transition_duration":["300"],"transition_ease_in":["default"],"transition_ease_out":["default"],"ph-uranus-arrows-height-custom-slide":"off","ph-uranus-arrows-height-custom":"50","ph-uranus-arrows-font-size-custom-slide":"off","ph-uranus-arrows-font-size-custom":"40","ph-uranus-arrows-background-color-rgba-slide":"off","ph-uranus-arrows-background-color-rgba":"rgba(255,255,255,0)","ph-uranus-arrows-width-custom-slide":"off","ph-uranus-arrows-width-custom":"50","ph-round-bullets-bullet-size-custom-slide":"off","ph-round-bullets-bullet-size-custom":"12","ph-round-bullets-bullet-bg-top-color-slide":"off","ph-round-bullets-bullet-bg-top-color":"#999999","ph-round-bullets-bullet-bg-bottom-color-slide":"off","ph-round-bullets-bullet-bg-bottom-color":"#e1e1e1","ph-round-bullets-border-color-color-slide":"off","ph-round-bullets-border-color-color":"#e5e5e5","ph-round-bullets-border-size-custom-slide":"off","ph-round-bullets-border-size-custom":"3","ph-round-bullets-hover-bullet-bg-color-slide":"off","ph-round-bullets-hover-bullet-bg-color":"#666666","ph-round-tabs-font-family-font_family-slide":"off","ph-round-tabs-font-family-font_family":"Roboto","ph-round-tabs-border-color-color-rgba-slide":"off","ph-round-tabs-border-color-color-rgba":"#e5e5e5","ph-round-tabs-border-size-custom-slide":"off","ph-round-tabs-border-size-custom":"1","ph-round-tabs-image-size-custom-slide":"off","ph-round-tabs-image-size-custom":"60","ph-round-tabs-param1-color-color-rgba-slide":"off","ph-round-tabs-param1-color-color-rgba":"rgba(51,51,51,0.5)","ph-round-tabs-param1-size-custom-slide":"off","ph-round-tabs-param1-size-custom":"12","ph-round-tabs-hover-bg-color-color-rgba-slide":"off","ph-round-tabs-hover-bg-color-color-rgba":"#eeeeee","ph-round-tabs-bgcolor-color-rgba-slide":"off","ph-round-tabs-bgcolor-color-rgba":"rgba(0,0,0,0)","ph-round-tabs-contentcolor-color-rgba-slide":"off","ph-round-tabs-contentcolor-color-rgba":"#333333","ph-round-tabs-param2-color-color-rgba-slide":"off","ph-round-tabs-param2-color-color-rgba":"0,0,0,0","ph-round-tabs-param2-size-custom-slide":"off","ph-round-tabs-param2-size-custom":"14","ph-round-thumbs-title-bg-color-rgba-slide":"off","ph-round-thumbs-title-bg-color-rgba":"rgba(0,0,0,0.85)","ph-round-thumbs-title-color-color-rgba-slide":"off","ph-round-thumbs-title-color-color-rgba":"#ffffff","ph-round-thumbs-title-font-size-custom-slide":"off","ph-round-thumbs-title-font-size-custom":"12","params_1":"","params_1_chars":"10","params_2":"","params_2_chars":"10","params_3":"","params_3_chars":"10","params_4":"","params_4_chars":"10","params_5":"","params_5_chars":"10","params_6":"","params_6_chars":"10","params_7":"","params_7_chars":"10","params_8":"","params_8_chars":"10","params_9":"","params_9_chars":"10","params_10":"","params_10_chars":"10","slide_description":"","class_attr":"","id_attr":"","data_attr":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_bg_color":"#E7E7E7","slide_bg_external":"","image":"http:\\/\\/voyagers.local:8888\\/content\\/uploads\\/2016\\/04\\/Slider.jpg","0":"Clear"}', '[{"text":"Glorifiying god by loving jesus, one another and the world","type":"text","special_type":null,"subtype":"","specialsettings":{},"unique_id":1,"left":{"desktop":0},"top":{"desktop":0},"internal_class":"","hover":false,"alias":"Glorifiying god by l...","loop_animation":"none","loop_easing":"linearEaseNone","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","html_tag":"div","mask_start":false,"mask_end":false,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","animation":"tp-fade","easing":"Power2.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":{"desktop":"auto"},"max_width":{"desktop":"auto"},"video_width":{"desktop":"480"},"video_height":{"desktop":"360"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"static_end":"last","speed":300,"align_hor":{"desktop":"center"},"align_vert":{"desktop":"middle"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link_slide":"nothing","scrollunder_offset":"","style":"voyagers-txt","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","time":500,"endspeed":300,"endtime":9300,"endanimation":"fadeout","endeasing":"nothing","width":-1,"height":-1,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"20"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"400"},"color":{"desktop":"#ffffff"}},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","deformation":{"font-family":"Arial","padding":["0","0","0","0"],"font-style":"normal","color-transparency":"1","text-decoration":"none","text-align":"left","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":0,"split_in_extratime":-10,"split_out_extratime":-10,"endWithSlide":true,"toggle":false,"toggle_use_hover":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","static_start":"1","layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]},"parallax_layer_ddd_zlevel":"front","mask_speed_start":"inherit","mask_ease_start":"inherit","link":"","link_open_in":"same","pers_start":"inherit","pers_end":"inherit"},{"text":"<a href=\\"#\\" class=\\"learn\\">Learn more<\\/a>","type":"text","special_type":null,"subtype":"","specialsettings":{},"unique_id":2,"left":{"desktop":-100},"top":{"desktop":50},"internal_class":"","hover":false,"alias":"Learn more","loop_animation":"none","loop_easing":"linearEaseNone","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","html_tag":"div","mask_start":false,"mask_end":false,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","animation":"tp-fade","easing":"Power2.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":{"desktop":"auto"},"max_width":{"desktop":"auto"},"video_width":{"desktop":"480"},"video_height":{"desktop":"360"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"static_end":"last","speed":300,"align_hor":{"desktop":"center"},"align_vert":{"desktop":"middle"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link_slide":"nothing","scrollunder_offset":"","style":"voyagers-btn","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","time":500,"endspeed":300,"endtime":9300,"endanimation":"fadeout","endeasing":"nothing","width":-1,"height":-1,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"20"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"400"},"color":{"desktop":"#ffffff"}},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","deformation":{"font-family":"Arial","padding":["0","0","0","0"],"font-style":"normal","color-transparency":"1","text-decoration":"none","text-align":"left","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":1,"split_in_extratime":-10,"split_out_extratime":-10,"endWithSlide":true,"toggle":false,"toggle_use_hover":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","static_start":"1","layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]},"parallax_layer_ddd_zlevel":"front","mask_speed_start":"inherit","mask_ease_start":"inherit","link":"","link_open_in":"same","pers_start":"inherit","pers_end":"inherit"},{"text":"<a href=\\"#\\" class=\\"join\\">Join out praise<\\/a>","type":"text","special_type":null,"subtype":"","specialsettings":{},"unique_id":2,"left":{"desktop":100},"top":{"desktop":50},"internal_class":"","hover":false,"alias":"Learn more","loop_animation":"none","loop_easing":"linearEaseNone","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","html_tag":"div","mask_start":false,"mask_end":false,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","animation":"tp-fade","easing":"Power2.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":{"desktop":"auto"},"max_width":{"desktop":"auto"},"video_width":{"desktop":"480"},"video_height":{"desktop":"360"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"static_end":"last","speed":300,"align_hor":{"desktop":"center"},"align_vert":{"desktop":"middle"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link_slide":"nothing","scrollunder_offset":"","style":"voyagers-btn","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","time":500,"endspeed":300,"endtime":9300,"endanimation":"fadeout","endeasing":"nothing","width":102,"height":22,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"20"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"400"},"color":{"desktop":"#ffffff"}},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","deformation":{"font-family":"Open Sans","padding":["0","0","0","0"],"font-style":"normal","color-transparency":"1","text-decoration":"none","text-align":"left","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":2,"split_in_extratime":-10,"split_out_extratime":-10,"endWithSlide":true,"toggle":false,"toggle_use_hover":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","static_start":"1","layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]},"parallax_layer_ddd_zlevel":"front","mask_speed_start":"inherit","mask_ease_start":"inherit","link":"","link_open_in":"same","pers_start":"inherit","pers_end":"inherit"}]', '""');

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_revslider_static_slides`
--

CREATE TABLE `wpproject_revslider_static_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_form`
--

CREATE TABLE `wpproject_rg_form` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_form_meta`
--

CREATE TABLE `wpproject_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_form_view`
--

CREATE TABLE `wpproject_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_incomplete_submissions`
--

CREATE TABLE `wpproject_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_lead`
--

CREATE TABLE `wpproject_rg_lead` (
  `id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_lead_detail`
--

CREATE TABLE `wpproject_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_lead_detail_long`
--

CREATE TABLE `wpproject_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_lead_meta`
--

CREATE TABLE `wpproject_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_rg_lead_notes`
--

CREATE TABLE `wpproject_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_termmeta`
--

CREATE TABLE `wpproject_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_terms`
--

CREATE TABLE `wpproject_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_terms`
--

INSERT INTO `wpproject_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_term_relationships`
--

CREATE TABLE `wpproject_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_term_relationships`
--

INSERT INTO `wpproject_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 2, 0),
(25, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_term_taxonomy`
--

CREATE TABLE `wpproject_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_term_taxonomy`
--

INSERT INTO `wpproject_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_usermeta`
--

CREATE TABLE `wpproject_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_usermeta`
--

INSERT INTO `wpproject_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'voyagers_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wpproject_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wpproject_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"5fa6da4d38509412ad01da703eaac211ccc08ad8c5fcf854343e762d4d36f9b6";a:4:{s:10:"expiration";i:1460834566;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1460661766;}s:64:"a89fa2cbc0f5a7f520f2ecbc0bf20df59f81079f5be2df5a9cf76464dbcd980b";a:4:{s:10:"expiration";i:1460834566;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1460661766;}s:64:"cc43ee890fe44dfb47e4c183d02afa61107fea74448480894cfa91a934cd9887";a:4:{s:10:"expiration";i:1460834573;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1460661773;}}'),
(15, 1, 'wpproject_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'tgmpa_dismissed_notice_tgmpa-kleo-3.0.7', '1'),
(17, 1, 'tgmpa_dismissed_notice_tgmpa-kleo-4.0.5', '1'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:17:"add-kleo-nav-menu";i:1;s:26:"add-post-type-kleo_clients";i:2;s:31:"add-post-type-kleo-testimonials";i:3;s:23:"add-post-type-portfolio";i:4;s:12:"add-post_tag";i:5;s:15:"add-post_format";}'),
(20, 1, 'wpproject_user-settings', 'libraryContent=browse&editor=tinymce&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=501px&edit_element_vcUIPanelTop=98px&hidetb=1'),
(21, 1, 'wpproject_user-settings-time', '1460677596'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_users`
--

CREATE TABLE `wpproject_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_users`
--

INSERT INTO `wpproject_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'voyagers_admin', '$P$BzMwmwSMe7YzN5UdeZo33Wddk3eVLH1', 'voyagers_admin', 'nick@brandastic.com', '', '2016-04-14 19:22:05', '', 0, 'voyagers_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpproject_commentmeta`
--
ALTER TABLE `wpproject_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpproject_comments`
--
ALTER TABLE `wpproject_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wpproject_links`
--
ALTER TABLE `wpproject_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpproject_options`
--
ALTER TABLE `wpproject_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wpproject_postmeta`
--
ALTER TABLE `wpproject_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpproject_posts`
--
ALTER TABLE `wpproject_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpproject_revslider_css`
--
ALTER TABLE `wpproject_revslider_css`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wpproject_revslider_layer_animations`
--
ALTER TABLE `wpproject_revslider_layer_animations`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wpproject_revslider_navigations`
--
ALTER TABLE `wpproject_revslider_navigations`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wpproject_revslider_sliders`
--
ALTER TABLE `wpproject_revslider_sliders`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wpproject_revslider_slides`
--
ALTER TABLE `wpproject_revslider_slides`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wpproject_revslider_static_slides`
--
ALTER TABLE `wpproject_revslider_static_slides`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wpproject_rg_form`
--
ALTER TABLE `wpproject_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpproject_rg_form_meta`
--
ALTER TABLE `wpproject_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wpproject_rg_form_view`
--
ALTER TABLE `wpproject_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wpproject_rg_incomplete_submissions`
--
ALTER TABLE `wpproject_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wpproject_rg_lead`
--
ALTER TABLE `wpproject_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wpproject_rg_lead_detail`
--
ALTER TABLE `wpproject_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`),
  ADD KEY `lead_field_value` (`value`(191));

--
-- Indexes for table `wpproject_rg_lead_detail_long`
--
ALTER TABLE `wpproject_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wpproject_rg_lead_meta`
--
ALTER TABLE `wpproject_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `form_id_meta_key` (`form_id`,`meta_key`(191));

--
-- Indexes for table `wpproject_rg_lead_notes`
--
ALTER TABLE `wpproject_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

--
-- Indexes for table `wpproject_termmeta`
--
ALTER TABLE `wpproject_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpproject_terms`
--
ALTER TABLE `wpproject_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpproject_term_relationships`
--
ALTER TABLE `wpproject_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpproject_term_taxonomy`
--
ALTER TABLE `wpproject_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpproject_usermeta`
--
ALTER TABLE `wpproject_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpproject_users`
--
ALTER TABLE `wpproject_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpproject_commentmeta`
--
ALTER TABLE `wpproject_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_comments`
--
ALTER TABLE `wpproject_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpproject_links`
--
ALTER TABLE `wpproject_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_options`
--
ALTER TABLE `wpproject_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1910;
--
-- AUTO_INCREMENT for table `wpproject_postmeta`
--
ALTER TABLE `wpproject_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT for table `wpproject_posts`
--
ALTER TABLE `wpproject_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `wpproject_revslider_css`
--
ALTER TABLE `wpproject_revslider_css`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `wpproject_revslider_layer_animations`
--
ALTER TABLE `wpproject_revslider_layer_animations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_revslider_navigations`
--
ALTER TABLE `wpproject_revslider_navigations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_revslider_sliders`
--
ALTER TABLE `wpproject_revslider_sliders`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpproject_revslider_slides`
--
ALTER TABLE `wpproject_revslider_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wpproject_revslider_static_slides`
--
ALTER TABLE `wpproject_revslider_static_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_rg_form`
--
ALTER TABLE `wpproject_rg_form`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_rg_form_view`
--
ALTER TABLE `wpproject_rg_form_view`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_rg_lead`
--
ALTER TABLE `wpproject_rg_lead`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_rg_lead_detail`
--
ALTER TABLE `wpproject_rg_lead_detail`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_rg_lead_meta`
--
ALTER TABLE `wpproject_rg_lead_meta`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_rg_lead_notes`
--
ALTER TABLE `wpproject_rg_lead_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_termmeta`
--
ALTER TABLE `wpproject_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpproject_terms`
--
ALTER TABLE `wpproject_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wpproject_term_taxonomy`
--
ALTER TABLE `wpproject_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wpproject_usermeta`
--
ALTER TABLE `wpproject_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wpproject_users`
--
ALTER TABLE `wpproject_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
