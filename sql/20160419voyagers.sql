-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 19, 2016 at 11:01 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=3157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(104, '_transient_doing_cron', '1461099615.6431670188903808593750', 'yes'),
(105, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.5-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.5";s:7:"version";s:3:"4.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1461082474;s:15:"version_checked";s:3:"4.5";s:12:"translations";a:0:{}}', 'yes'),
(109, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1461092766;s:7:"checked";a:2:{s:10:"kleo-child";s:0:"";s:4:"kleo";s:5:"4.0.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
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
(121, 'kleo_voyagers', 'a:237:{s:8:"last_tab";s:0:"";s:16:"maintenance_mode";s:1:"0";s:15:"maintenance_msg";s:62:"We are currently in maintenance mode. Please check back later.";s:4:"logo";a:5:{s:3:"url";s:59:"http://voyagers.local:8888/content/uploads/2016/04/Logo.png";s:2:"id";s:2:"36";s:6:"height";s:2:"79";s:5:"width";s:3:"366";s:9:"thumbnail";s:66:"http://voyagers.local:8888/content/uploads/2016/04/Logo-150x79.png";}s:11:"logo_retina";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:7:"favicon";a:5:{s:3:"url";s:58:"http://voyagers.local:8888/content/uploads/2016/04/fav.png";s:2:"id";s:2:"43";s:6:"height";s:2:"19";s:5:"width";s:2:"32";s:9:"thumbnail";s:58:"http://voyagers.local:8888/content/uploads/2016/04/fav.png";}s:7:"apple57";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:8:"apple114";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:7:"apple72";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:8:"apple144";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:9:"analytics";s:0:"";s:9:"quick_css";s:0:"";s:13:"socket_enable";s:1:"1";s:11:"footer_text";s:59:"SUNDAY SERVICES AT 9 AND 10:45 AM | 6000 Irvine Center Dr |";s:10:"site_style";s:4:"wide";s:10:"boxed_size";s:4:"1440";s:7:"body_bg";a:7:{s:16:"background-color";s:0:"";s:17:"background-repeat";s:6:"repeat";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:69:"http://voyagers.local:8888/content/themes/kleo/assets/img/bg-body.gif";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:14:"global_sidebar";s:2:"no";s:16:"main_width_2cols";s:1:"9";s:16:"main_width_3cols";s:1:"6";s:6:"go_top";s:1:"1";s:14:"title_location";s:10:"breadcrumb";s:12:"contact_form";s:1:"0";s:20:"contact_form_builtin";s:1:"0";s:15:"contact_form_to";s:0:"";s:18:"contact_form_title";s:10:"CONTACT US";s:17:"contact_form_text";s:89:"We''re not around right now. But you can send us an email and we''ll get back to you, asap.";s:13:"header_layout";s:6:"normal";s:13:"header_banner";s:19:"Banner text/AD here";s:15:"menu_full_width";s:1:"0";s:9:"menu_size";s:2:"15";s:11:"menu_height";s:2:"35";s:12:"show_top_bar";s:1:"0";s:14:"top_bar_darker";s:1:"1";s:9:"show_lang";s:1:"1";s:11:"sticky_menu";s:1:"1";s:11:"resize_logo";s:1:"0";s:16:"transparent_logo";s:1:"0";s:11:"ajax_search";s:1:"0";s:17:"breadcrumb_status";s:1:"0";s:10:"title_info";s:0:"";s:12:"title_layout";s:6:"normal";s:13:"title_padding";a:2:{s:11:"padding-top";s:4:"10px";s:14:"padding-bottom";s:4:"10px";}s:9:"side_menu";s:1:"0";s:16:"side_menu_button";s:1:"1";s:16:"side_menu_mobile";s:1:"0";s:18:"side_menu_position";s:4:"left";s:14:"side_menu_type";s:7:"default";s:16:"side_menu_before";s:0:"";s:15:"side_menu_after";s:19:"[kleo_social_icons]";s:11:"blog_layout";s:5:"right";s:10:"cat_layout";s:5:"right";s:16:"blog_post_layout";s:7:"default";s:9:"blog_type";s:7:"masonry";s:12:"blog_columns";s:1:"3";s:18:"blog_switch_layout";s:1:"0";s:20:"blog_enabled_layouts";a:3:{i:0;s:7:"masonry";i:1;s:5:"small";i:2;s:8:"standard";}s:23:"featured_content_layout";s:8:"carousel";s:21:"featured_grid_columns";s:1:"3";s:17:"blog_archive_meta";s:1:"1";s:16:"blog_meta_status";s:1:"1";s:18:"blog_meta_elements";a:5:{i:0;s:4:"date";i:1;s:11:"author_link";i:2;s:10:"categories";i:3;s:4:"tags";i:4;s:8:"comments";}s:13:"blog_meta_sep";s:2:", ";s:18:"blog_standard_meta";s:4:"left";s:16:"blog_single_meta";s:4:"left";s:16:"blog_tags_footer";s:1:"0";s:17:"blog_media_status";s:1:"1";s:14:"blog_get_image";s:1:"1";s:18:"blog_default_image";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:15:"post_navigation";s:1:"1";s:13:"related_posts";s:1:"1";s:20:"related_custom_posts";s:1:"0";s:10:"page_media";s:1:"0";s:13:"page_comments";s:1:"0";s:17:"blog_social_share";s:1:"1";s:16:"blog_share_types";a:1:{i:0;s:4:"post";}s:18:"blog_share_exclude";s:0:"";s:26:"blog_social_share_facebook";s:1:"1";s:25:"blog_social_share_twitter";s:1:"1";s:28:"blog_social_share_googleplus";s:1:"1";s:27:"blog_social_share_pinterest";s:1:"1";s:26:"blog_social_share_linkedin";s:1:"0";s:26:"blog_social_share_whatsapp";s:1:"0";s:22:"blog_social_share_mail";s:1:"1";s:12:"likes_status";s:1:"1";s:13:"likes_exclude";s:0:"";s:10:"likes_ajax";s:1:"0";s:15:"likes_zero_text";s:5:"likes";s:14:"likes_one_text";s:4:"like";s:15:"likes_more_text";s:5:"likes";s:13:"likes_already";s:21:"You already like this";s:14:"like_this_text";s:9:"Like this";s:16:"st__header__text";s:7:"#565759";s:20:"st__header__headings";s:7:"#111111";s:14:"st__header__bg";s:7:"#ffffff";s:20:"st__header__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:18:"st__header__border";s:7:"#eeeeee";s:16:"st__header__link";s:7:"#565759";s:22:"st__header__link_hover";s:7:"#565759";s:22:"st__header__high_color";s:7:"#ffffff";s:19:"st__header__high_bg";s:7:"#026185";s:18:"st__header__alt_bg";s:7:"#f7f7f7";s:22:"st__header__alt_border";s:7:"#e5e5e5";s:14:"st__main__text";s:7:"#717271";s:18:"st__main__headings";s:7:"#565759";s:12:"st__main__bg";s:7:"#ffffff";s:18:"st__main__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:16:"st__main__border";s:7:"#006c90";s:14:"st__main__link";s:7:"#006c90";s:20:"st__main__link_hover";s:7:"#4d868e";s:20:"st__main__high_color";s:7:"#ffffff";s:17:"st__main__high_bg";s:7:"#006c90";s:16:"st__main__alt_bg";s:7:"#f7f7f7";s:20:"st__main__alt_border";s:7:"#e5e5e5";s:19:"st__alternate__text";s:7:"#777777";s:23:"st__alternate__headings";s:7:"#444444";s:17:"st__alternate__bg";s:7:"#f7f7f7";s:23:"st__alternate__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:21:"st__alternate__border";s:7:"#e5e5e5";s:19:"st__alternate__link";s:7:"#367bb7";s:25:"st__alternate__link_hover";s:7:"#00b9f7";s:25:"st__alternate__high_color";s:7:"#ffffff";s:22:"st__alternate__high_bg";s:7:"#00b9f7";s:21:"st__alternate__alt_bg";s:7:"#ffffff";s:25:"st__alternate__alt_border";s:7:"#e5e5e5";s:14:"st__side__text";s:7:"#777777";s:18:"st__side__headings";s:7:"#aaaaaa";s:12:"st__side__bg";s:7:"#1c1c1c";s:18:"st__side__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:16:"st__side__border";s:7:"#333333";s:14:"st__side__link";s:7:"#cccccc";s:20:"st__side__link_hover";s:7:"#777777";s:20:"st__side__high_color";s:7:"#ffffff";s:17:"st__side__high_bg";s:7:"#00b9f7";s:16:"st__side__alt_bg";s:7:"#272727";s:20:"st__side__alt_border";s:7:"#333333";s:16:"st__footer__text";s:7:"#777777";s:20:"st__footer__headings";s:7:"#aaaaaa";s:14:"st__footer__bg";s:7:"#1c1c1c";s:20:"st__footer__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:18:"st__footer__border";s:7:"#333333";s:16:"st__footer__link";s:7:"#cccccc";s:22:"st__footer__link_hover";s:7:"#777777";s:22:"st__footer__high_color";s:7:"#ffffff";s:19:"st__footer__high_bg";s:7:"#00b9f7";s:18:"st__footer__alt_bg";s:7:"#272727";s:22:"st__footer__alt_border";s:7:"#333333";s:16:"st__socket__text";s:7:"#ffffff";s:20:"st__socket__headings";s:7:"#cccccc";s:14:"st__socket__bg";s:7:"#006c90";s:20:"st__socket__bg_image";a:6:{s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";s:5:"media";a:4:{s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}}s:18:"st__socket__border";s:7:"#333333";s:16:"st__socket__link";s:7:"#515151";s:22:"st__socket__link_hover";s:7:"#777777";s:22:"st__socket__high_color";s:7:"#ffffff";s:19:"st__socket__high_bg";s:7:"#006c90";s:18:"st__socket__alt_bg";s:7:"#f7f7f7";s:22:"st__socket__alt_border";s:7:"#272727";s:7:"font_h1";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"36px";s:11:"line-height";s:4:"48px";}s:7:"font_h2";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"28px";s:11:"line-height";s:4:"36px";}s:7:"font_h3";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"22px";s:11:"line-height";s:4:"28px";}s:7:"font_h4";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"18px";s:11:"line-height";s:4:"28px";}s:7:"font_h5";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"17px";s:11:"line-height";s:4:"27px";}s:7:"font_h6";a:10:{s:11:"font-family";s:16:"Roboto Condensed";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"16px";s:11:"line-height";s:4:"24px";}s:9:"font_body";a:10:{s:11:"font-family";s:9:"Open Sans";s:12:"font-options";s:0:"";s:6:"google";s:1:"1";s:11:"font-backup";s:0:"";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:10:"text-align";s:0:"";s:9:"font-size";s:4:"13px";s:11:"line-height";s:4:"20px";}s:24:"portfolio_custom_archive";s:1:"0";s:14:"portfolio_page";s:0:"";s:14:"portfolio_name";s:9:"Portfolio";s:14:"portfolio_slug";s:9:"portfolio";s:15:"portfolio_style";s:7:"default";s:21:"portfolio_title_style";s:6:"normal";s:17:"portfolio_excerpt";s:1:"1";s:17:"portfolio_per_row";s:1:"4";s:16:"portfolio_filter";s:3:"yes";s:15:"portfolio_image";s:7:"480x270";s:22:"portfolio_media_status";s:1:"1";s:17:"portfolio_back_to";s:1:"1";s:18:"portfolio_comments";s:1:"0";s:20:"portfolio_navigation";s:1:"1";s:9:"bp_layout";s:5:"right";s:21:"bp_layout_members_dir";s:7:"default";s:17:"bp_layout_profile";s:7:"default";s:16:"bp_layout_groups";s:7:"default";s:18:"bp_layout_activity";s:7:"default";s:18:"bp_layout_register";s:7:"default";s:17:"bp_title_location";s:7:"default";s:20:"bp_breadcrumb_status";s:1:"1";s:14:"bp_custom_info";s:1:"0";s:13:"bp_title_info";s:153:"<em class="muted">feel free to call us</em>   <i class="icon-phone"></i> +91.33.26789234     <i class="icon-mail-alt"></i> support@seventhqueen.com";s:29:"bp_profile_breadcrumb_disable";s:1:"0";s:15:"bp_full_profile";s:1:"0";s:13:"bp_full_group";s:1:"0";s:16:"bp_online_status";s:1:"1";s:17:"member_navigation";s:1:"1";s:17:"bp_notif_interval";s:5:"20000";s:18:"bp_members_perpage";s:2:"24";s:17:"bp_groups_perpage";s:2:"24";s:18:"mobile_app_capable";s:1:"1";s:24:"apple_mobile_app_capable";s:1:"0";s:16:"meta_theme_color";s:0:"";s:19:"sitewide_animations";s:7:"enabled";s:9:"admin_bar";s:1:"1";s:14:"login_redirect";s:7:"default";s:21:"login_redirect_custom";s:0:"";s:17:"homepage_redirect";s:8:"disabled";s:24:"homepage_redirect_custom";s:0:"";s:14:"facebook_login";s:1:"0";s:9:"fb_app_id";s:0:"";s:15:"facebook_avatar";s:1:"0";s:17:"facebook_register";s:1:"0";s:11:"let_it_snow";s:1:"0";s:24:"magnific_disable_gallery";s:1:"0";s:8:"dev_mode";s:1:"0";s:17:"show_social_icons";s:1:"1";s:14:"social_twitter";s:25:"https://twitter.com/vygrs";s:15:"social_facebook";s:31:"https://www.facebook.com/vygrs/";s:15:"social_dribbble";s:0:"";s:20:"social_vimeo-squared";s:0:"";s:13:"social_tumblr";s:0:"";s:15:"social_linkedin";s:54:"https://www.linkedin.com/company/voyagers-bible-church";s:12:"social_gplus";s:0:"";s:13:"social_flickr";s:0:"";s:14:"social_youtube";s:0:"";s:24:"social_pinterest-circled";s:0:"";s:17:"social_foursquare";s:0:"";s:17:"social_instagramm";s:32:"https://www.instagram.com/vygrs/";s:13:"social_github";s:0:"";s:11:"social_xing";s:0:"";s:11:"tf_username";s:8:"jrnassie";s:9:"tf_apikey";s:32:"c9ofbqkpgh5nacd2x47ncbwrjtlo1f81";s:14:"search_context";s:0:"";s:18:"st__header__preset";i:0;s:16:"st__main__preset";i:0;s:21:"st__alternate__preset";i:0;s:16:"st__side__preset";i:0;s:18:"st__footer__preset";i:0;s:18:"st__socket__preset";i:0;}', 'yes'),
(122, 'kleo_voyagers-transients', 'a:3:{s:14:"changed_values";a:1:{s:24:"social_pinterest-circled";s:1:"#";}s:9:"last_save";i:1461022437;s:13:"last_compiler";i:1460747368;}', 'yes'),
(125, 'WPLANG', '', 'yes'),
(138, 'revslider-update-check-short', '1461000974', 'yes'),
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
(509, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1461082474;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'yes'),
(510, 'revslider-templates-check', '1461020120', 'yes'),
(511, 'revslider_checktables', '1', 'yes'),
(512, 'revslider_table_version', '1.0.6', 'yes'),
(535, 'revslider-valid-notice', 'false', 'yes'),
(546, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(603, '_transient_timeout_settings_errors', '1461022466', 'no'),
(604, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(1914, 'revslider-connection', '1', 'yes'),
(2615, '_transient_timeout_select2-css_style_cdn_is_up', '1461107865', 'no'),
(2616, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(2617, '_transient_timeout_select2-js_script_cdn_is_up', '1461107865', 'no'),
(2618, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(2673, '_transient_timeout_GFCache_9f7e0237d6939c9e6c81c359b2c2e274', '1461022730', 'no'),
(2674, '_transient_GFCache_9f7e0237d6939c9e6c81c359b2c2e274', '1', 'no'),
(2675, 'category_children', 'a:0:{}', 'yes'),
(2688, '_transient_timeout_GFCache_1dc50c0f018528af4d0c90a7853de3a3', '1461022892', 'no'),
(2689, '_transient_GFCache_1dc50c0f018528af4d0c90a7853de3a3', '1', 'no'),
(2698, '_transient_timeout_GFCache_99e2ff4123c887120e5983048f313237', '1461023054', 'no'),
(2699, '_transient_GFCache_99e2ff4123c887120e5983048f313237', '1', 'no'),
(2768, '_transient_timeout_voyagers_google_link', '1461125669', 'no'),
(2769, '_transient_voyagers_google_link', '//fonts.googleapis.com/css?family=Roboto+Condensed:300|Open+Sans:400', 'no'),
(2856, '_transient_timeout_homeevents', '1461142816', 'no'),
(2857, '_transient_homeevents', '', 'no'),
(2884, '_transient_timeout_kleo_js_composer', '1461176418', 'no'),
(2885, '_transient_kleo_js_composer', '4.11.2', 'no'),
(2886, '_transient_timeout_kleo_revslider', '1461176418', 'no'),
(2887, '_transient_kleo_revslider', '5.2.5', 'no'),
(2888, '_transient_timeout_kleo_go_pricing', '1461176418', 'no'),
(2889, '_transient_kleo_go_pricing', '3.2.1', 'no'),
(2894, '_transient_timeout_gform_update_info', '1461176428', 'no');
INSERT INTO `wpproject_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2895, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:8:{s:4:"date";s:29:"Tue, 19 Apr 2016 18:20:28 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:21:"PHP/5.5.9-1ubuntu4.14";s:4:"vary";s:15:"Accept-Encoding";s:16:"content-encoding";s:4:"gzip";s:14:"content-length";s:4:"1956";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:9971:"{"is_valid_key":"1","version":"1.9.18","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.18.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=1y4x5x9L95l99yu0WpOmYFOlGC0%3D","expiration_time":1468040400,"offerings":{"gravityforms":{"is_available":true,"version":"1.9.18","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.18.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=1y4x5x9L95l99yu0WpOmYFOlGC0%3D"},"gravityformsactivecampaign":{"is_available":true,"version":"1.3.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/activecampaign\\/gravityformsactivecampaign_1.3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=5Rqs9jzjQ%2BN6t3qnhmhL%2B6Rf1Rw%3D"},"gravityformsagilecrm":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/agilecrm\\/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=Oo2CaPW3yXPjMEzy2s5RXJqyw6s%3D"},"gravityformsauthorizenet":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=4duToTzfWpl0AlqAVrLL8uFnCik%3D"},"gravityformsaweber":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=HtcBXwQ55KfVlOW1aPhCSAb4iz0%3D"},"gravityformsbatchbook":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/batchbook\\/gravityformsbatchbook_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=Sr7gZtNAokc0QwFuG9WnYxPBCC0%3D"},"gravityformscampaignmonitor":{"is_available":true,"version":"3.4.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=Cs3Y1RuGSXTvEUjFN1Kb2M9a0EM%3D"},"gravityformscampfire":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campfire\\/gravityformscampfire_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=LJPEF3uEXB%2FIoZCwKYHybqlCcX8%3D"},"gravityformscapsulecrm":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/capsulecrm\\/gravityformscapsulecrm_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=hGol4Gu4EiKeMeePOioQUML0aNk%3D"},"gravityformscleverreach":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/cleverreach\\/gravityformscleverreach_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=BtCQ4RCRteF7GmAsBZumNSxX8ho%3D"},"gravityformscoupons":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=lM%2BoCYQ0PQYeb%2B5rzRaNKbAwAss%3D"},"gravityformsdebug":{"is_available":true,"version":"","url":""},"gravityformsdropbox":{"is_available":true,"version":"1.1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/dropbox\\/gravityformsdropbox_1.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=P5WqorxkGJ%2FzvYFfvdUaXWB052I%3D"},"gravityformsemma":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=48Mca7pydJyY58aFYG9%2FhOoYPe8%3D"},"gravityformsfreshbooks":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=JfkrDQJveHYiTyD4dhRI0qtjVoE%3D"},"gravityformsgetresponse":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/getresponse\\/gravityformsgetresponse_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=2FEFn8GZwOrgXmqXdYOp1sAfk2U%3D"},"gravityformshelpscout":{"is_available":true,"version":"1.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/helpscout\\/gravityformshelpscout_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=C59WtWpuY0yKpvAFhO0Wfjusqks%3D"},"gravityformshighrise":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/highrise\\/gravityformshighrise_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=%2Bv8Yqg4RCowX8nfOvjwnJs3CNq4%3D"},"gravityformshipchat":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/hipchat\\/gravityformshipchat_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=lMyrqikCaSFNxPWUoY%2Ftu9owhXE%3D"},"gravityformsicontact":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/icontact\\/gravityformsicontact_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=jyXHwuTlVWm6ye0TKqWefJdul%2BA%3D"},"gravityformslogging":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/logging\\/gravityformslogging_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=OUnjuLeBeaMNLA2%2FmZAJZR5Qt5A%3D"},"gravityformsmadmimi":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/madmimi\\/gravityformsmadmimi_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=pqTFjw0wSz6Jk1v0LYKmtLvKV2k%3D"},"gravityformsmailchimp":{"is_available":true,"version":"3.7.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_3.7.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=v%2FXn0weEA0fFH6aoE8fJHovnF6Q%3D"},"gravityformspartialentries":{"is_available":true,"version":"1.0-beta-2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/partialentries\\/gravityformspartialentries_1.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=LHTlS6PSc2DEuxcfvdlQMR%2BbyKU%3D"},"gravityformspaypal":{"is_available":true,"version":"2.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=orO7QWhar0KiH%2FImRYla%2FuzkDio%3D"},"gravityformspaypalexpresscheckout":{"is_available":false,"version":""},"gravityformspaypalpaymentspro":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=JGK5V40uiJDDL9B%2BR7sVAk86AhI%3D"},"gravityformspaypalpro":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=uTZ47uIpoGk193NjOVIjW%2Bcu0aw%3D"},"gravityformspicatcha":{"is_available":false,"version":"2.0"},"gravityformspolls":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=afFaFK%2BQwU4kqK%2BULMxcr73KOPg%3D"},"gravityformsquiz":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=w62Do%2BVF40D%2B3nPC9Nq5cNLHoQE%3D"},"gravityformssignature":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=aMr0KDF%2BnGzeWSlBGEmFUFDGcng%3D"},"gravityformsslack":{"is_available":true,"version":"1.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/slack\\/gravityformsslack_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=NTVXFTgEgx5bTb2mzwiyykNjHNE%3D"},"gravityformsstripe":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=GTvMssH30YJScid5V8%2B69p8P91g%3D"},"gravityformssurvey":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=HBzWAI2byQbQFOOXfg%2BxidZ652w%3D"},"gravityformstrello":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/trello\\/gravityformstrello_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=PRbmtGO91Tg%2B4jbDr%2FDXkNgrvuY%3D"},"gravityformstwilio":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=93uRY6uHJlNhAweOZvPmQSLgL6o%3D"},"gravityformsuserregistration":{"is_available":true,"version":"3.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=z76kQ7VuWamtvZ1DFRC261EFg%2Fs%3D"},"gravityformszapier":{"is_available":true,"version":"1.8","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zapier\\/gravityformszapier_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=coQ9WRiEHVRi45EJLfSfwrKotGo%3D"},"gravityformszohocrm":{"is_available":true,"version":"1.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zohocrm\\/gravityformszohocrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1461262828&Signature=pQEfmab%2FQurla%2BmEXvpcu%2FXwQPo%3D"}},"is_active":"1"}";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(2937, '_transient_timeout_GFCache_827b9c5548d2c35a7d0ebaee77125e8f', '1461092914', 'no'),
(2938, '_transient_GFCache_827b9c5548d2c35a7d0ebaee77125e8f', '1', 'no'),
(2939, '_site_transient_timeout_theme_roots', '1461094565', 'yes'),
(2940, '_site_transient_theme_roots', 'a:2:{s:10:"kleo-child";s:7:"/themes";s:4:"kleo";s:7:"/themes";}', 'yes'),
(2941, '_transient_timeout_jrnassie_wp-list-themes', '1461093066', 'no'),
(2942, '_transient_jrnassie_wp-list-themes', 'O:8:"stdClass":1:{s:14:"wp-list-themes";a:75:{i:0;O:8:"stdClass":6:{s:7:"item_id";s:5:"49773";s:9:"item_name";s:48:"Twicet Business & Portfolio - Wordpress - 5 in 1";s:10:"theme_name";s:6:"Twicet";s:11:"author_name";s:28:"Christian "Kriesi" Budschedl";s:7:"version";s:3:"2.0";s:11:"description";s:28:"A Business & Portfolio Theme";}i:1;O:8:"stdClass":6:{s:7:"item_id";s:5:"74542";s:9:"item_name";s:48:"Display 3 in 1 - Business & Portfolio Wordpress ";s:10:"theme_name";s:7:"Display";s:11:"author_name";s:6:"Kriesi";s:7:"version";s:3:"2.1";s:11:"description";s:274:"A sleek Portfolio and Business Template by Kriesi - <br/> Update notifications available on twitter and facebook:<br/> <a href=''http://twitter.com/kriesi''>Follow me on twitter</a><br/> - <a href=''http://www.facebook.com/pages/Kriesi/333648177216''>Join the Facebook Group</a>";}i:2;O:8:"stdClass":6:{s:7:"item_id";s:5:"79723";s:9:"item_name";s:9:"BOSSPRESS";s:10:"theme_name";s:9:"BOSSPRESS";s:11:"author_name";s:14:"Akay Akagunduz";s:7:"version";s:3:"1.1";s:11:"description";s:40:"A Premium Portfolio &amp; Business Theme";}i:3;O:8:"stdClass":6:{s:7:"item_id";s:5:"76635";s:9:"item_name";s:47:"Delericon Business/Portfolio Template Wordpress";s:10:"theme_name";s:9:"Delericon";s:11:"author_name";s:12:"Brent Chesny";s:7:"version";s:3:"1.2";s:11:"description";s:43:"A Professional Business Wordpress Template.";}i:4;O:8:"stdClass":6:{s:7:"item_id";s:5:"98244";s:9:"item_name";s:43:"Synthetik: Portfolio & Blog WordPress Theme";s:10:"theme_name";s:9:"Synthetik";s:11:"author_name";s:14:"Mattia Viviani";s:7:"version";s:5:"2.8.4";s:11:"description";s:25:"Portfolio WordPress Theme";}i:5;O:8:"stdClass":6:{s:7:"item_id";s:5:"38530";s:9:"item_name";s:36:"Photo Nexus Wordpress gallery 2 in 1";s:10:"theme_name";s:11:"Photo Nexus";s:11:"author_name";s:8:"imaginem";s:7:"version";s:3:"2.3";s:11:"description";s:25:"Minimal Photography Theme";}i:6;O:8:"stdClass":6:{s:7:"item_id";s:6:"146753";s:9:"item_name";s:35:"Sofa OpnPress - Publishing Platform";s:10:"theme_name";s:13:"SOFA OpnPress";s:11:"author_name";s:6:"Dameer";s:7:"version";s:3:"2.0";s:11:"description";s:22:"WordPress Yellow Pages";}i:7;O:8:"stdClass":6:{s:7:"item_id";s:5:"49983";s:9:"item_name";s:10:"Clean Blog";s:10:"theme_name";s:10:"Clean blog";s:11:"author_name";s:5:"mixey";s:7:"version";s:3:"1.0";s:11:"description";s:10:"Clean blog";}i:8;O:8:"stdClass":6:{s:7:"item_id";s:6:"236370";s:9:"item_name";s:36:"Continuum - Magazine Wordpress Theme";s:10:"theme_name";s:9:"Continuum";s:11:"author_name";s:17:"Industrial Themes";s:7:"version";s:4:"1.15";s:11:"description";s:18:"Continuum Magazine";}i:9;O:8:"stdClass":6:{s:7:"item_id";s:6:"198602";s:9:"item_name";s:46:"Mazine Wordpress Theme - A WP E-Commerce theme";s:10:"theme_name";s:6:"Mazine";s:11:"author_name";s:11:"Themes Zone";s:7:"version";s:3:"2.2";s:11:"description";s:193:"The Mazine theme was developed based on whiteboard framework. It is a "Clean Style" theme where content is the king. We hope you enjoy using it as much as we have enjoyed developing it for you.";}i:10;O:8:"stdClass":6:{s:7:"item_id";s:6:"101867";s:9:"item_name";s:48:"Viroshop - A Modern Responsive WooCommerce Theme";s:10:"theme_name";s:8:"Viroshop";s:11:"author_name";s:11:"PixelStores";s:7:"version";s:3:"3.3";s:11:"description";s:27:"A Premium Woocommerce Theme";}i:11;O:8:"stdClass":6:{s:7:"item_id";s:6:"462474";s:9:"item_name";s:47:"Etherna - powerful and flexible WordPress theme";s:10:"theme_name";s:7:"Etherna";s:11:"author_name";s:7:"evgreen";s:7:"version";s:3:"1.2";s:11:"description";s:43:"Business & Portfolio Themes - designSentry.";}i:12;O:8:"stdClass":6:{s:7:"item_id";s:6:"759170";s:9:"item_name";s:42:"Footage - A Photo & Video Production Theme";s:10:"theme_name";s:7:"Footage";s:11:"author_name";s:13:"ThemeProvince";s:7:"version";s:3:"1.2";s:11:"description";s:57:"A photography/portfolio theme for WordPress 3.2 or higher";}i:13;O:8:"stdClass":6:{s:7:"item_id";s:6:"240185";s:9:"item_name";s:37:"Core Minimalist Photography Portfolio";s:10:"theme_name";s:4:"Core";s:11:"author_name";s:21:"Peerapong Pulpipatnan";s:7:"version";s:5:"5.5.3";s:11:"description";s:42:"Premium Template for Photography Portfolio";}i:14;O:8:"stdClass":6:{s:7:"item_id";s:7:"1280396";s:9:"item_name";s:32:"Event Guest List WordPress Theme";s:10:"theme_name";s:9:"GuestList";s:11:"author_name";s:5:"Bebel";s:7:"version";s:3:"1.7";s:11:"description";s:64:"Guestlist is a smart guestlist app for everybody with ambitions.";}i:15;O:8:"stdClass":6:{s:7:"item_id";s:7:"1486311";s:9:"item_name";s:49:"Pacifico - Fullscreen wp theme with motion effect";s:10:"theme_name";s:8:"Pacifico";s:11:"author_name";s:10:"CMSMasters";s:7:"version";s:5:"1.6.1";s:11:"description";s:615:"The Pacifico theme for WordPress created by CMSMasters is sophisticated and adaptable. Make it yours with a custom menu, shortcodes, widgets, background image and awesome CMSMasters Background Motion Slider, then go further with our available theme options for custom text colors, portfolio settings, blog settings, eight color scheme and three layout choices. Pacifico comes equipped with a Blog, Portfolio, Social Profiles and Sitemap page templates, widget support galore (sidebar, top sidebar, middle sidebar, bottom sidebar), and many custom widgets. Included a special styles for seven different post formats.";}i:16;O:8:"stdClass":6:{s:7:"item_id";s:7:"1415600";s:9:"item_name";s:30:"Angular - Responsive Portfolio";s:10:"theme_name";s:7:"Angular";s:11:"author_name";s:6:"Kriesi";s:7:"version";s:3:"4.1";s:11:"description";s:367:"<strong>A sleek Portfolio Theme by Kriesi</strong> - <br/> Update notifications available on twitter, facebook and via newsletter:<br/> <a href=''http://twitter.com/kriesi''>Follow me on twitter</a><br/> - <a href=''http://www.facebook.com/pages/Kriesi/333648177216''>Join the Facebook Group</a> - <a href=''http://www.kriesi.at/newsletter''>Subscribe to our Newsletter</a>";}i:17;O:8:"stdClass":6:{s:7:"item_id";s:7:"1491735";s:9:"item_name";s:49:"Shutter - Photography & Portfolio WordPress theme";s:10:"theme_name";s:7:"Shutter";s:11:"author_name";s:9:"THBThemes";s:7:"version";s:5:"2.3.7";s:11:"description";s:63:"An elegant theme for photographers, artists and design studios.";}i:18;O:8:"stdClass":6:{s:7:"item_id";s:7:"1541383";s:9:"item_name";s:37:"Music: Musicians theme & Facebook app";s:10:"theme_name";s:5:"Music";s:11:"author_name";s:8:"Net-Labs";s:7:"version";s:3:"1.7";s:11:"description";s:17:"Croma Music theme";}i:19;O:8:"stdClass":6:{s:7:"item_id";s:7:"1916633";s:9:"item_name";s:32:"Crow - Portfolio WordPress Theme";s:10:"theme_name";s:6:"Raiden";s:11:"author_name";s:14:"Rascals Themes";s:7:"version";s:5:"1.1.4";s:11:"description";s:27:"WordPress 3.3 Premium Theme";}i:20;O:8:"stdClass":6:{s:7:"item_id";s:6:"289114";s:9:"item_name";s:35:"Avenue - A WordPress Magazine Theme";s:10:"theme_name";s:6:"Avenue";s:11:"author_name";s:12:"Theme Sector";s:7:"version";s:3:"1.3";s:11:"description";s:24:"A Premium Magazine Theme";}i:21;O:8:"stdClass":6:{s:7:"item_id";s:6:"534738";s:9:"item_name";s:36:"Pluto Fullscreen Cafe and Restaurant";s:10:"theme_name";s:5:"Pluto";s:11:"author_name";s:21:"Peerapong Pulpipatnan";s:7:"version";s:3:"2.5";s:11:"description";s:31:"Premium Template for Restaurant";}i:22;O:8:"stdClass":6:{s:7:"item_id";s:7:"2082434";s:9:"item_name";s:32:"SAICO - Powerful WordPress Theme";s:10:"theme_name";s:5:"SAICO";s:11:"author_name";s:11:"WPScientist";s:7:"version";s:5:"1.0.3";s:11:"description";s:22:"SAICO WordPress theme.";}i:23;O:8:"stdClass":6:{s:7:"item_id";s:7:"1594691";s:9:"item_name";s:19:"Breathe - Wordpress";s:10:"theme_name";s:13:"Breathe - JQM";s:11:"author_name";s:21:"xRicrdx (Jan Simecek)";s:7:"version";s:3:"2.0";s:11:"description";s:85:"Simple page with clean design that fits perfectly for your blog or portfolio website.";}i:24;O:8:"stdClass":6:{s:7:"item_id";s:7:"1328741";s:9:"item_name";s:33:"My Mobile Page V3 Wordpress Theme";s:10:"theme_name";s:33:"My Mobile Page V3 Wordpress Theme";s:11:"author_name";s:12:"FamousThemes";s:7:"version";s:3:"1.0";s:11:"description";s:33:"My Mobile Page V3 Wordpress Theme";}i:25;O:8:"stdClass":6:{s:7:"item_id";s:7:"2026019";s:9:"item_name";s:42:"Responsive Fullscreen Studio for WordPress";s:10:"theme_name";s:42:"Responsive Fullscreen Studio for WordPress";s:11:"author_name";s:8:"imaginem";s:7:"version";s:3:"3.5";s:11:"description";s:129:"A fullscreen theme to showcase your music,videos and photos. The theme is fully resposive. Theme Design and Developed by iMaginem";}i:26;O:8:"stdClass":6:{s:7:"item_id";s:7:"2035034";s:9:"item_name";s:44:"Spectrum - Responsive Business Site Template";s:10:"theme_name";s:18:"Spectrum Wordpress";s:11:"author_name";s:15:"Budiadiliansyah";s:7:"version";s:7:"ver 1.0";s:11:"description";s:387:"Spectrum is web template designed with HTML + CSS which can be used as a for business corporate websites, web portfolios, designer or agency websites etc. The clean minimal design and nicely formatted code make spectrum easier for custom development, also the CSS Media Queries automatically adjust it''s content to media display while CSS3 and HTML5 help the web template look beautiful.";}i:27;O:8:"stdClass":6:{s:7:"item_id";s:7:"2085634";s:9:"item_name";s:44:"Endless - Infinite scrolling WordPress Theme";s:10:"theme_name";s:7:"Endless";s:11:"author_name";s:5:"Sneek";s:7:"version";s:5:"1.2.5";s:11:"description";s:171:"A super slick, endless theme hand crafted by Sneek. For support please visit <a href="//sneekdigital.co.uk/support">our support forums</a> and sign up and post a question.";}i:28;O:8:"stdClass":6:{s:7:"item_id";s:6:"174507";s:9:"item_name";s:41:"ANAN - For Photography Creative Portfolio";s:10:"theme_name";s:4:"ANAN";s:11:"author_name";s:21:"Peerapong Pulpipatnan";s:7:"version";s:3:"2.9";s:11:"description";s:32:"Premium Template for Photography";}i:29;O:8:"stdClass":6:{s:7:"item_id";s:6:"702169";s:9:"item_name";s:38:"Reaction WP : Responsive, Rugged, Bold";s:10:"theme_name";s:8:"Reaction";s:11:"author_name";s:13:"Brandon Jones";s:7:"version";s:5:"2.1.3";s:11:"description";s:53:"A responsive theme and pseudo-framework for WordPress";}i:30;O:8:"stdClass":6:{s:7:"item_id";s:7:"2547690";s:9:"item_name";s:54:"BOOSTERIUS - Responsive one page slide WordPress theme";s:10:"theme_name";s:7:"Booster";s:11:"author_name";s:4:"PEGO";s:7:"version";s:3:"1.1";s:11:"description";s:57:"Business Theme / Web Studio / Agency / Personal Portfolio";}i:31;O:8:"stdClass":6:{s:7:"item_id";s:7:"2514052";s:9:"item_name";s:42:"Zeux - A Responsive e-Shop WordPress Theme";s:10:"theme_name";s:15:"Zeux e-Commerce";s:11:"author_name";s:12:"Alex Gurghis";s:7:"version";s:3:"1.3";s:11:"description";s:194:"<strong>A Responsive & Super Flexible e-Shop Theme by Alex Gurghis</strong> - <br/> Update notifications available on twitter:<br/> <a href=''http://twitter.com/agurghis''>Follow me on twitter</a>";}i:32;O:8:"stdClass":6:{s:7:"item_id";s:7:"1969512";s:9:"item_name";s:48:"Flare - Responsive Business & Portfolio WP Theme";s:10:"theme_name";s:21:"Flare WordPress Theme";s:11:"author_name";s:15:"bring the pixel";s:7:"version";s:5:"2.0.4";s:11:"description";s:87:"Got questions? Visit our <a href="http://bringthepixel.com/support/">support forum</a>.";}i:33;O:8:"stdClass":6:{s:7:"item_id";s:7:"2917994";s:9:"item_name";s:50:"Ikaros - Responsive WordPress Business & Portfolio";s:10:"theme_name";s:6:"Ikaros";s:11:"author_name";s:13:"RubenBristian";s:7:"version";s:3:"1.7";s:11:"description";s:140:"Ikaros is a great portfolio & business theme, packed up with a lot of cool features, great portfolio displays and a perfect homepage slider!";}i:34;O:8:"stdClass":6:{s:7:"item_id";s:7:"1945015";s:9:"item_name";s:47:"Linguini: Restaurant Responsive WordPress Theme";s:10:"theme_name";s:8:"Linguini";s:11:"author_name";s:28:"Pavel Richter / Grand Pixels";s:7:"version";s:5:"2.1.3";s:11:"description";s:37:"Restaurant Responsive WordPress Theme";}i:35;O:8:"stdClass":6:{s:7:"item_id";s:7:"3004426";s:9:"item_name";s:44:"Dope, a Responsive WordPress Portfolio Theme";s:10:"theme_name";s:4:"Dope";s:11:"author_name";s:18:"DesignerThemes.com";s:7:"version";s:3:"1.6";s:11:"description";s:22:"A dope portfolio theme";}i:36;O:8:"stdClass":6:{s:7:"item_id";s:7:"3200962";s:9:"item_name";s:34:"HQ Photography Responsive WP Theme";s:10:"theme_name";s:28:"HQ Photo Responsive WP Theme";s:11:"author_name";s:11:"ThemeDev.me";s:7:"version";s:5:"1.7.2";s:11:"description";s:388:"Super interactive and engaging template well-suited for photographers and videographers, which won���t leave any visitor indifferent to and forgetful about experience they had with your website. A whole set of features is exposed to dynamic manipulation in real time by a visitor such as home page visuals, video background, photo/video grid gallery, portfolio layout and much more.";}i:37;O:8:"stdClass":6:{s:7:"item_id";s:7:"3123164";s:9:"item_name";s:48:"Persona - WordPress Responsive Creative Parallax";s:10:"theme_name";s:10:"Persona WP";s:11:"author_name";s:16:"Designova Studio";s:7:"version";s:5:"2.0.0";s:11:"description";s:45:"A Premium Responsive Parallax wordpress theme";}i:38;O:8:"stdClass":6:{s:7:"item_id";s:6:"701905";s:9:"item_name";s:8:"Slash WP";s:10:"theme_name";s:8:"Slash WP";s:11:"author_name";s:11:"Dream-Theme";s:7:"version";s:3:"2.2";s:11:"description";s:688:"Slash WP is a responsive creative/photography/portfolio theme that has unique modern design as well as powerful and robust functionality. It was created to serve you as a powerful portfolio, photo-gallery and blog with native support of major WP 3.2. post formats. Also Slash WP will become an effective showcase of your works. This theme provides you with several full-screen hompage templates: video homepage, awesome slideshow (with the option to preserve original image proportions), and static-image page. Theme Options page and Background Builder function will help you to create a pro-looking and sexy skin for your website and customize it beyond recognition in just a few clicks!";}i:39;O:8:"stdClass":6:{s:7:"item_id";s:7:"3422432";s:9:"item_name";s:37:"Principles - WordPress Blogging Theme";s:10:"theme_name";s:10:"Principles";s:11:"author_name";s:11:"Obox Design";s:7:"version";s:5:"1.2.5";s:11:"description";s:72:"A minimal blogging theme, built for blogging only. Nothing else. Simple.";}i:40;O:8:"stdClass":6:{s:7:"item_id";s:7:"3475987";s:9:"item_name";s:40:"Iconik - Full Experience Wordpress Theme";s:10:"theme_name";s:6:"Iconik";s:11:"author_name";s:9:"PixelBook";s:7:"version";s:3:"1.4";s:11:"description";s:35:"the full experience wordpress theme";}i:41;O:8:"stdClass":6:{s:7:"item_id";s:7:"3679531";s:9:"item_name";s:37:"Secundo Responsive Portfolio WP Theme";s:10:"theme_name";s:7:"Secundo";s:11:"author_name";s:12:"themewoodmen";s:7:"version";s:3:"2.8";s:11:"description";s:27:"Responsive Secundo template";}i:42;O:8:"stdClass":6:{s:7:"item_id";s:7:"2855595";s:9:"item_name";s:49:"Expression Photography Responsive WordPress Theme";s:10:"theme_name";s:10:"Expression";s:11:"author_name";s:6:"Pexeto";s:7:"version";s:5:"1.4.1";s:11:"description";s:35:"Premium Photography WordPress Theme";}i:43;O:8:"stdClass":6:{s:7:"item_id";s:7:"3716724";s:9:"item_name";s:46:"Rhino - Single Page Responsive Wordpress Theme";s:10:"theme_name";s:5:"Rhino";s:11:"author_name";s:11:"Nikola Susa";s:7:"version";s:5:"1.5.2";s:11:"description";s:65:"This is multipurpose theme with powerfull customization features.";}i:44;O:8:"stdClass":6:{s:7:"item_id";s:7:"3562118";s:9:"item_name";s:47:"Shopaholic - Powerful WordPress ECommerce Store";s:10:"theme_name";s:26:"Shopaholic WordPress Theme";s:11:"author_name";s:10:"XiaoThemes";s:7:"version";s:5:"1.0.0";s:11:"description";s:48:"Highly customized theme to create your own store";}i:45;O:8:"stdClass":6:{s:7:"item_id";s:7:"4371069";s:9:"item_name";s:47:"Fundingpress - The Crowdfunding WordPress Theme";s:10:"theme_name";s:48:"Fundingpress -  The Crowdfunding Wordpress theme";s:11:"author_name";s:17:"Skywarrior themes";s:7:"version";s:5:"3.9.3";s:11:"description";s:188:"Fundingpress is a Wordpress theme that allows you to create your own crowdfunding site. Users will be able to create projects that are brought to life through the direct support of others.";}i:46;O:8:"stdClass":6:{s:7:"item_id";s:7:"4287447";s:9:"item_name";s:41:"The Retailer - Responsive WordPress Theme";s:10:"theme_name";s:12:"The Retailer";s:11:"author_name";s:11:"Get Bowtied";s:7:"version";s:5:"2.4.7";s:11:"description";s:88:"The Retailer is a responsive, super-mobile-friendly theme for WordPress and WooCommerce.";}i:47;O:8:"stdClass":6:{s:7:"item_id";s:7:"4874410";s:9:"item_name";s:44:"Webpaint - 2 in 1 Responsive WordPress Theme";s:10:"theme_name";s:50:"Webpaint - Responsive Multipurpose WordPress Theme";s:11:"author_name";s:14:"ThunderBuddies";s:7:"version";s:5:"1.2.1";s:11:"description";s:246:"2 in 1 (Multipage and Onepage) Responsive WordPress Theme with boxed and fullwidth layout options. Webpaint���s clean and professional design will be a great solution for your business, portfolio, personal blog or any other purpose website.";}i:48;O:8:"stdClass":6:{s:7:"item_id";s:7:"3237426";s:9:"item_name";s:47:"QuickStep - Responsive One Page Portfolio Theme";s:10:"theme_name";s:9:"QuickStep";s:11:"author_name";s:10:"Theme Luxe";s:7:"version";s:5:"2.1.0";s:11:"description";s:60:"A creative one page portfolio theme with AJAX functionality.";}i:49;O:8:"stdClass":6:{s:7:"item_id";s:7:"4616086";s:9:"item_name";s:38:"Lounge - Clean Elegant WordPress Theme";s:10:"theme_name";s:6:"Lounge";s:11:"author_name";s:16:"Qode Interactive";s:7:"version";s:3:"1.8";s:11:"description";s:12:"Lounge Theme";}i:50;O:8:"stdClass":6:{s:7:"item_id";s:7:"3760086";s:9:"item_name";s:49:"Studiofolio: A Versatile Portfolio and Blog Theme";s:10:"theme_name";s:11:"Studiofolio";s:11:"author_name";s:10:"undsgn.com";s:7:"version";s:5:"3.1.9";s:11:"description";s:49:"A new versatile responsive portfolio & blog theme";}i:51;O:8:"stdClass":6:{s:7:"item_id";s:7:"5018387";s:9:"item_name";s:35:"AEON Futuristic Theme For WordPress";s:10:"theme_name";s:4:"AEON";s:11:"author_name";s:10:"Dan Partac";s:7:"version";s:3:"2.0";s:11:"description";s:31:"Futuristic Theme for Wordpress.";}i:52;O:8:"stdClass":6:{s:7:"item_id";s:7:"5166319";s:9:"item_name";s:40:"Suburbs - Multi-Purpose Responsive Theme";s:10:"theme_name";s:7:"Suburbs";s:11:"author_name";s:6:"Lollum";s:7:"version";s:4:"1.36";s:11:"description";s:123:"A Responsive Multi-Purpose template. Suburbs is responsive, highly customizable and suitable for any business or portfolio.";}i:53;O:8:"stdClass":6:{s:7:"item_id";s:7:"5221751";s:9:"item_name";s:50:"Mineral - Responsive Multi-Purpose WordPress Theme";s:10:"theme_name";s:7:"Mineral";s:11:"author_name";s:6:"Pexeto";s:7:"version";s:5:"1.5.5";s:11:"description";s:45:"Premium Responsive Wordpress Theme by Pexeto.";}i:54;O:8:"stdClass":6:{s:7:"item_id";s:7:"4363266";s:9:"item_name";s:40:"Salient - Responsive Multi-Purpose Theme";s:10:"theme_name";s:7:"Salient";s:11:"author_name";s:11:"ThemeNectar";s:7:"version";s:5:"7.0.8";s:11:"description";s:40:"An Ultra Responsive Multi-Purpose Theme.";}i:55;O:8:"stdClass":6:{s:7:"item_id";s:7:"6502151";s:9:"item_name";s:44:"Alamak - Responsive One Page Portfolio Theme";s:10:"theme_name";s:33:"Alamak Responsive Portfolio Theme";s:11:"author_name";s:8:"ridianur";s:7:"version";s:5:"1.7.7";s:11:"description";s:171:"Alamak is responsive one page HTML5 Premium WordPress Theme with clean and elegant design.It can be used for creative digital agent to show portfolio and selling services.";}i:56;O:8:"stdClass":6:{s:7:"item_id";s:7:"6193222";s:9:"item_name";s:44:"Tyrion -  Flexible Parallax e-Commerce Theme";s:10:"theme_name";s:6:"Tyrion";s:11:"author_name";s:23:"Your Inspiration Themes";s:7:"version";s:5:"1.6.9";s:11:"description";s:25:"Ecommerce Wordpress Theme";}i:57;O:8:"stdClass":6:{s:7:"item_id";s:7:"3822067";s:9:"item_name";s:35:"Razor: Cutting Edge WordPress Theme";s:10:"theme_name";s:5:"Razor";s:11:"author_name";s:22:"Bebel &amp; Parallelus";s:7:"version";s:7:"1.1.9.5";s:11:"description";s:37:"A clean professional WordPress theme.";}i:58;O:8:"stdClass":6:{s:7:"item_id";s:7:"7516539";s:9:"item_name";s:46:"Quantum - Portfolio & Photography Retina Theme";s:10:"theme_name";s:7:"Quantum";s:11:"author_name";s:8:"Umbrella";s:7:"version";s:3:"2.2";s:11:"description";s:13:"Quantum Theme";}i:59;O:8:"stdClass":6:{s:7:"item_id";s:7:"7082446";s:9:"item_name";s:44:"NativeChurch - Multi Purpose WordPress Theme";s:10:"theme_name";s:13:"Native Church";s:11:"author_name";s:9:"imithemes";s:7:"version";s:5:"2.6.5";s:11:"description";s:307:"<strong>Responsive Wordpress Theme for Churches, Designed & Developed by imithemes</strong> - <a href="http://www.imithemes.com">www.imithemes.com</a>. Follow us for update notifications:<br/> <a href=''http://twitter.com/imithemes''>Twitter</a><br/> | <a href=''http://www.facebook.com/imithemes''>Facebook</a>";}i:60;O:8:"stdClass":6:{s:7:"item_id";s:7:"7713417";s:9:"item_name";s:35:"Crissy - Responsive WordPress Theme";s:10:"theme_name";s:6:"Crissy";s:11:"author_name";s:7:"dabaman";s:7:"version";s:5:"1.4.0";s:11:"description";s:69:"<strong>Crissy</strong> is a responsive WordPress blog and shop theme";}i:61;O:8:"stdClass":6:{s:7:"item_id";s:7:"7259295";s:9:"item_name";s:41:"PinThis - Pinterest Style WordPress Theme";s:10:"theme_name";s:7:"PinThis";s:11:"author_name";s:13:"PixelBeautify";s:7:"version";s:5:"1.6.0";s:11:"description";s:36:"Best Pinterest Style Wordpress Theme";}i:62;O:8:"stdClass":6:{s:7:"item_id";s:7:"5783556";s:9:"item_name";s:45:"ePix - Fullscreen Photography WordPress Theme";s:10:"theme_name";s:4:"ePix";s:11:"author_name";s:7:"themeva";s:7:"version";s:3:"2.2";s:11:"description";s:31:"ePix Responsive Wordpress Theme";}i:63;O:8:"stdClass":6:{s:7:"item_id";s:7:"2310982";s:9:"item_name";s:22:"Launch Wordpress Theme";s:10:"theme_name";s:12:"Launch Theme";s:11:"author_name";s:14:"960Development";s:7:"version";s:3:"1.3";s:11:"description";s:34:"A wordpress theme for site launch.";}i:64;O:8:"stdClass":6:{s:7:"item_id";s:7:"8146099";s:9:"item_name";s:46:"Hazel - Multi-Concept Creative WordPress Theme";s:10:"theme_name";s:5:"Hazel";s:11:"author_name";s:13:"Select Themes";s:7:"version";s:3:"3.0";s:11:"description";s:11:"Hazel Theme";}i:65;O:8:"stdClass":6:{s:7:"item_id";s:7:"8253073";s:9:"item_name";s:43:"Hemlock - A Responsive WordPress Blog Theme";s:10:"theme_name";s:7:"Hemlock";s:11:"author_name";s:17:"Solo Pine Designs";s:7:"version";s:5:"1.5.2";s:11:"description";s:22:"A WordPress Blog Theme";}i:66;O:8:"stdClass":6:{s:7:"item_id";s:7:"7631488";s:9:"item_name";s:37:"The Practice - Lawyer WordPress Theme";s:10:"theme_name";s:19:"The Practice Parent";s:11:"author_name";s:9:"ThemeFuse";s:7:"version";s:5:"1.2.4";s:11:"description";s:72:"The Practice is created by <a href="http://themefuse.com">ThemeFuse</a>.";}i:67;O:8:"stdClass":6:{s:7:"item_id";s:7:"9117256";s:9:"item_name";s:25:"North | E-Commerce Theme ";s:10:"theme_name";s:5:"North";s:11:"author_name";s:10:"fuelthemes";s:7:"version";s:5:"2.1.1";s:11:"description";s:382:"<strong>A Premium theme for magazine, editor, community and more! WordPress Theme by <a href="http://www.themeforest.net/user/fuelthemes">fuelthemes</a></strong> ��� Update notifications available on Twitter and Themeforest <a href="http://twitter.com/anteksiler">Follow us on twitter</a> ��� <a href="http://themeforest.net/user/fuelthemes">Follow us on Themeforest</a>";}i:68;O:8:"stdClass":6:{s:7:"item_id";s:7:"6776630";s:9:"item_name";s:35:"KLEO – Next level WordPress Theme";s:10:"theme_name";s:4:"Kleo";s:11:"author_name";s:12:"SeventhQueen";s:7:"version";s:5:"4.0.5";s:11:"description";s:36:"Multipurpose Premium WordPress Theme";}i:69;O:8:"stdClass":6:{s:7:"item_id";s:7:"9602611";s:9:"item_name";s:35:"Listify - WordPress Directory Theme";s:10:"theme_name";s:7:"Listify";s:11:"author_name";s:10:"Astoundify";s:7:"version";s:5:"1.3.2";s:11:"description";s:43:"The last directory theme you will ever buy.";}i:70;O:8:"stdClass":6:{s:7:"item_id";s:8:"10341637";s:9:"item_name";s:43:"Meetup | Conference & Event WordPress Theme";s:10:"theme_name";s:6:"Meetup";s:11:"author_name";s:10:"Tom Rhodes";s:7:"version";s:6:"1.0.13";s:11:"description";s:52:"Meetup - A Multipurpose, Responsive WordPress Theme.";}i:71;O:8:"stdClass":6:{s:7:"item_id";s:8:"12537825";s:9:"item_name";s:41:"Savoy - Minimalist AJAX WooCommerce Theme";s:10:"theme_name";s:5:"Savoy";s:11:"author_name";s:10:"NordicMade";s:7:"version";s:5:"1.3.2";s:11:"description";s:46:"Savoy - Modern AJAX enabled WooCommerce theme.";}i:72;O:8:"stdClass":6:{s:7:"item_id";s:7:"8816939";s:9:"item_name";s:48:"Backer - The Modern WordPress Crowdfunding Theme";s:10:"theme_name";s:6:"Backer";s:11:"author_name";s:11:"KrownThemes";s:7:"version";s:5:"1.3.4";s:11:"description";s:68:"A modern crowdfunding theme based on the popular IgnitionDeck plugin";}i:73;O:8:"stdClass":6:{s:7:"item_id";s:7:"5247604";s:9:"item_name";s:34:"Jobify - WordPress Job Board Theme";s:10:"theme_name";s:6:"Jobify";s:11:"author_name";s:10:"Astoundify";s:7:"version";s:5:"3.0.1";s:11:"description";s:179:"Creating a job listing website has never been easier with Jobify ��� the easiest to use job board theme available. Create a community of employers and prospective employees.";}i:74;O:8:"stdClass":6:{s:7:"item_id";s:8:"10833647";s:9:"item_name";s:38:"AppSperia - WordPress App Landing Page";s:10:"theme_name";s:9:"AppSperia";s:11:"author_name";s:10:"Key-Design";s:7:"version";s:3:"1.0";s:11:"description";s:36:"AppSperia Wordpress App Landing Page";}}}', 'no'),
(2943, '_transient_timeout_kleo_font_icons_', '1461179170', 'no');
INSERT INTO `wpproject_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2944, '_transient_kleo_font_icons_', 'a:437:{i:0;s:0:"";s:3:"adn";s:3:"adn";s:5:"ajust";s:5:"ajust";s:12:"align-center";s:12:"align-center";s:13:"align-justify";s:13:"align-justify";s:10:"align-left";s:10:"align-left";s:11:"align-right";s:11:"align-right";s:9:"ambulance";s:9:"ambulance";s:6:"anchor";s:6:"anchor";s:7:"android";s:7:"android";s:18:"angle-circled-down";s:18:"angle-circled-down";s:18:"angle-circled-left";s:18:"angle-circled-left";s:19:"angle-circled-right";s:19:"angle-circled-right";s:16:"angle-circled-up";s:16:"angle-circled-up";s:17:"angle-double-down";s:17:"angle-double-down";s:17:"angle-double-left";s:17:"angle-double-left";s:18:"angle-double-right";s:18:"angle-double-right";s:15:"angle-double-up";s:15:"angle-double-up";s:10:"angle-down";s:10:"angle-down";s:10:"angle-left";s:10:"angle-left";s:11:"angle-right";s:11:"angle-right";s:8:"angle-up";s:8:"angle-up";s:5:"apple";s:5:"apple";s:9:"arrows-cw";s:9:"arrows-cw";s:8:"asterisk";s:8:"asterisk";s:6:"attach";s:6:"attach";s:9:"attention";s:9:"attention";s:11:"attention-1";s:11:"attention-1";s:13:"attention-alt";s:13:"attention-alt";s:17:"attention-circled";s:17:"attention-circled";s:5:"award";s:5:"award";s:7:"award-1";s:7:"award-1";s:7:"barcode";s:7:"barcode";s:6:"basket";s:6:"basket";s:15:"basket-full-alt";s:15:"basket-full-alt";s:6:"beaker";s:6:"beaker";s:4:"beer";s:4:"beer";s:4:"bell";s:4:"bell";s:8:"bell-alt";s:8:"bell-alt";s:9:"bitbucket";s:9:"bitbucket";s:17:"bitbucket-squared";s:17:"bitbucket-squared";s:7:"bitcoin";s:7:"bitcoin";s:5:"blank";s:5:"blank";s:5:"block";s:5:"block";s:4:"bold";s:4:"bold";s:4:"book";s:4:"book";s:8:"bookmark";s:8:"bookmark";s:14:"bookmark-empty";s:14:"bookmark-empty";s:3:"box";s:3:"box";s:9:"briefcase";s:9:"briefcase";s:3:"bug";s:3:"bug";s:8:"building";s:8:"building";s:7:"bullet3";s:7:"bullet3";s:7:"bullet4";s:7:"bullet4";s:8:"bullseye";s:8:"bullseye";s:8:"calendar";s:8:"calendar";s:14:"calendar-empty";s:14:"calendar-empty";s:6:"camera";s:6:"camera";s:10:"camera-alt";s:10:"camera-alt";s:6:"cancel";s:6:"cancel";s:13:"cancel-circle";s:13:"cancel-circle";s:14:"cancel-circled";s:14:"cancel-circled";s:15:"cancel-circled2";s:15:"cancel-circled2";s:3:"ccw";s:3:"ccw";s:11:"certificate";s:11:"certificate";s:12:"certificate5";s:12:"certificate5";s:9:"chart-bar";s:9:"chart-bar";s:4:"chat";s:4:"chat";s:6:"chat-1";s:6:"chat-1";s:10:"chat-empty";s:10:"chat-empty";s:5:"check";s:5:"check";s:11:"check-empty";s:11:"check-empty";s:6:"circle";s:6:"circle";s:12:"circle-empty";s:12:"circle-empty";s:5:"clock";s:5:"clock";s:5:"cloud";s:5:"cloud";s:7:"cloud-1";s:7:"cloud-1";s:4:"code";s:4:"code";s:6:"coffee";s:6:"coffee";s:3:"cog";s:3:"cog";s:5:"cog-1";s:5:"cog-1";s:7:"cog-alt";s:7:"cog-alt";s:8:"collapse";s:8:"collapse";s:12:"collapse-top";s:12:"collapse-top";s:7:"columns";s:7:"columns";s:7:"comment";s:7:"comment";s:13:"comment-empty";s:13:"comment-empty";s:7:"compass";s:7:"compass";s:8:"correct7";s:8:"correct7";s:11:"credit-card";s:11:"credit-card";s:4:"crop";s:4:"crop";s:4:"css3";s:4:"css3";s:2:"cw";s:2:"cw";s:7:"desktop";s:7:"desktop";s:9:"direction";s:9:"direction";s:3:"doc";s:3:"doc";s:5:"doc-1";s:5:"doc-1";s:11:"doc-circled";s:11:"doc-circled";s:7:"doc-inv";s:7:"doc-inv";s:7:"doc-new";s:7:"doc-new";s:8:"doc-text";s:8:"doc-text";s:12:"doc-text-inv";s:12:"doc-text-inv";s:4:"docs";s:4:"docs";s:6:"dollar";s:6:"dollar";s:3:"dot";s:3:"dot";s:11:"dot-circled";s:11:"dot-circled";s:4:"down";s:4:"down";s:8:"down-big";s:8:"down-big";s:11:"down-circle";s:11:"down-circle";s:12:"down-circled";s:12:"down-circled";s:8:"down-dir";s:8:"down-dir";s:9:"down-hand";s:9:"down-hand";s:9:"down-open";s:9:"down-open";s:13:"down-open-big";s:13:"down-open-big";s:18:"down-round-circled";s:18:"down-round-circled";s:8:"download";s:8:"download";s:14:"download-cloud";s:14:"download-cloud";s:8:"dribbble";s:8:"dribbble";s:7:"dropbox";s:7:"dropbox";s:4:"edit";s:4:"edit";s:6:"edit-1";s:6:"edit-1";s:5:"eject";s:5:"eject";s:8:"ellipsis";s:8:"ellipsis";s:13:"ellipsis-vert";s:13:"ellipsis-vert";s:9:"emo-happy";s:9:"emo-happy";s:11:"emo-unhappy";s:11:"emo-unhappy";s:9:"equalizer";s:9:"equalizer";s:6:"eraser";s:6:"eraser";s:4:"euro";s:4:"euro";s:8:"exchange";s:8:"exchange";s:6:"expand";s:6:"expand";s:6:"export";s:6:"export";s:10:"export-alt";s:10:"export-alt";s:12:"extinguisher";s:12:"extinguisher";s:3:"eye";s:3:"eye";s:7:"eye-off";s:7:"eye-off";s:8:"facebook";s:8:"facebook";s:16:"facebook-squared";s:16:"facebook-squared";s:7:"fast-bw";s:7:"fast-bw";s:7:"fast-fw";s:7:"fast-fw";s:6:"female";s:6:"female";s:11:"fighter-jet";s:11:"fighter-jet";s:6:"filter";s:6:"filter";s:4:"fire";s:4:"fire";s:4:"flag";s:4:"flag";s:14:"flag-checkered";s:14:"flag-checkered";s:10:"flag-empty";s:10:"flag-empty";s:5:"flash";s:5:"flash";s:6:"flickr";s:6:"flickr";s:6:"flight";s:6:"flight";s:6:"floppy";s:6:"floppy";s:6:"folder";s:6:"folder";s:12:"folder-empty";s:12:"folder-empty";s:11:"folder-open";s:11:"folder-open";s:17:"folder-open-empty";s:17:"folder-open-empty";s:4:"font";s:4:"font";s:4:"food";s:4:"food";s:4:"fork";s:4:"fork";s:7:"forward";s:7:"forward";s:10:"foursquare";s:10:"foursquare";s:5:"frown";s:5:"frown";s:7:"gamepad";s:7:"gamepad";s:5:"gauge";s:5:"gauge";s:4:"gift";s:4:"gift";s:6:"github";s:6:"github";s:14:"github-circled";s:14:"github-circled";s:14:"github-squared";s:14:"github-squared";s:6:"gittip";s:6:"gittip";s:5:"glass";s:5:"glass";s:5:"globe";s:5:"globe";s:5:"glyph";s:5:"glyph";s:7:"glyph-1";s:7:"glyph-1";s:7:"glyph-2";s:7:"glyph-2";s:5:"gplus";s:5:"gplus";s:13:"gplus-squared";s:13:"gplus-squared";s:14:"graduation-cap";s:14:"graduation-cap";s:5:"group";s:5:"group";s:6:"h-sigh";s:6:"h-sigh";s:6:"hammer";s:6:"hammer";s:3:"hdd";s:3:"hdd";s:10:"headphones";s:10:"headphones";s:5:"heart";s:5:"heart";s:11:"heart-empty";s:11:"heart-empty";s:7:"heart64";s:7:"heart64";s:4:"help";s:4:"help";s:12:"help-circled";s:12:"help-circled";s:4:"home";s:4:"home";s:8:"hospital";s:8:"hospital";s:9:"hourglass";s:9:"hourglass";s:5:"html5";s:5:"html5";s:7:"html5-1";s:7:"html5-1";s:5:"inbox";s:5:"inbox";s:11:"indent-left";s:11:"indent-left";s:12:"indent-right";s:12:"indent-right";s:4:"info";s:4:"info";s:12:"info-circled";s:12:"info-circled";s:10:"instagramm";s:10:"instagramm";s:6:"italic";s:6:"italic";s:3:"key";s:3:"key";s:8:"keyboard";s:8:"keyboard";s:6:"laptop";s:6:"laptop";s:7:"layers4";s:7:"layers4";s:4:"leaf";s:4:"leaf";s:4:"left";s:4:"left";s:8:"left-big";s:8:"left-big";s:11:"left-circle";s:11:"left-circle";s:12:"left-circled";s:12:"left-circled";s:8:"left-dir";s:8:"left-dir";s:9:"left-hand";s:9:"left-hand";s:9:"left-open";s:9:"left-open";s:13:"left-open-big";s:13:"left-open-big";s:5:"lemon";s:5:"lemon";s:10:"level-down";s:10:"level-down";s:8:"level-up";s:8:"level-up";s:9:"lightbulb";s:9:"lightbulb";s:4:"link";s:4:"link";s:8:"link-ext";s:8:"link-ext";s:12:"link-ext-alt";s:12:"link-ext-alt";s:8:"linkedin";s:8:"linkedin";s:16:"linkedin-squared";s:16:"linkedin-squared";s:5:"linux";s:5:"linux";s:4:"list";s:4:"list";s:8:"list-add";s:8:"list-add";s:8:"list-alt";s:8:"list-alt";s:11:"list-bullet";s:11:"list-bullet";s:13:"list-numbered";s:13:"list-numbered";s:6:"list26";s:6:"list26";s:8:"location";s:8:"location";s:10:"location-1";s:10:"location-1";s:10:"location-2";s:10:"location-2";s:12:"location-inv";s:12:"location-inv";s:4:"lock";s:4:"lock";s:9:"lock-open";s:9:"lock-open";s:13:"lock-open-alt";s:13:"lock-open-alt";s:5:"login";s:5:"login";s:6:"logout";s:6:"logout";s:5:"magic";s:5:"magic";s:6:"magnet";s:6:"magnet";s:4:"mail";s:4:"mail";s:6:"mail-1";s:6:"mail-1";s:6:"mail-2";s:6:"mail-2";s:8:"mail-alt";s:8:"mail-alt";s:4:"male";s:4:"male";s:6:"maxcdn";s:6:"maxcdn";s:6:"medkit";s:6:"medkit";s:9:"megaphone";s:9:"megaphone";s:11:"megaphone-1";s:11:"megaphone-1";s:3:"meh";s:3:"meh";s:4:"menu";s:4:"menu";s:6:"menu19";s:6:"menu19";s:3:"mic";s:3:"mic";s:5:"minus";s:5:"minus";s:7:"minus-1";s:7:"minus-1";s:12:"minus-circle";s:12:"minus-circle";s:13:"minus-circled";s:13:"minus-circled";s:13:"minus-squared";s:13:"minus-squared";s:17:"minus-squared-alt";s:17:"minus-squared-alt";s:6:"mobile";s:6:"mobile";s:5:"money";s:5:"money";s:4:"moon";s:4:"moon";s:4:"move";s:4:"move";s:5:"music";s:5:"music";s:4:"mute";s:4:"mute";s:3:"off";s:3:"off";s:2:"ok";s:2:"ok";s:6:"ok-alt";s:6:"ok-alt";s:9:"ok-circle";s:9:"ok-circle";s:10:"ok-circled";s:10:"ok-circled";s:11:"ok-circled2";s:11:"ok-circled2";s:10:"ok-squared";s:10:"ok-squared";s:11:"paper-plane";s:11:"paper-plane";s:5:"paste";s:5:"paste";s:5:"pause";s:5:"pause";s:6:"paypal";s:6:"paypal";s:6:"pencil";s:6:"pencil";s:8:"pencil-1";s:8:"pencil-1";s:10:"pencil-alt";s:10:"pencil-alt";s:14:"pencil-circled";s:14:"pencil-circled";s:14:"pencil-squared";s:14:"pencil-squared";s:5:"phone";s:5:"phone";s:13:"phone-squared";s:13:"phone-squared";s:7:"picture";s:7:"picture";s:11:"picture-alt";s:11:"picture-alt";s:3:"pin";s:3:"pin";s:17:"pinterest-circled";s:17:"pinterest-circled";s:17:"pinterest-squared";s:17:"pinterest-squared";s:4:"play";s:4:"play";s:12:"play-circled";s:12:"play-circled";s:18:"play-round-circled";s:18:"play-round-circled";s:4:"plus";s:4:"plus";s:6:"plus-1";s:6:"plus-1";s:11:"plus-circle";s:11:"plus-circle";s:12:"plus-circled";s:12:"plus-circled";s:12:"plus-squared";s:12:"plus-squared";s:5:"popup";s:5:"popup";s:5:"pound";s:5:"pound";s:5:"print";s:5:"print";s:6:"puzzle";s:6:"puzzle";s:6:"qrcode";s:6:"qrcode";s:8:"question";s:8:"question";s:10:"quote-left";s:10:"quote-left";s:11:"quote-right";s:11:"quote-right";s:8:"renminbi";s:8:"renminbi";s:6:"renren";s:6:"renren";s:5:"reply";s:5:"reply";s:9:"reply-all";s:9:"reply-all";s:11:"resize-full";s:11:"resize-full";s:15:"resize-full-alt";s:15:"resize-full-alt";s:17:"resize-horizontal";s:17:"resize-horizontal";s:12:"resize-small";s:12:"resize-small";s:15:"resize-vertical";s:15:"resize-vertical";s:7:"retweet";s:7:"retweet";s:5:"right";s:5:"right";s:9:"right-big";s:9:"right-big";s:12:"right-circle";s:12:"right-circle";s:13:"right-circled";s:13:"right-circled";s:9:"right-dir";s:9:"right-dir";s:10:"right-hand";s:10:"right-hand";s:10:"right-open";s:10:"right-open";s:14:"right-open-big";s:14:"right-open-big";s:7:"right25";s:7:"right25";s:4:"road";s:4:"road";s:6:"rocket";s:6:"rocket";s:3:"rss";s:3:"rss";s:11:"rss-squared";s:11:"rss-squared";s:5:"rupee";s:5:"rupee";s:8:"scissors";s:8:"scissors";s:6:"search";s:6:"search";s:6:"shield";s:6:"shield";s:7:"shuffle";s:7:"shuffle";s:6:"signal";s:6:"signal";s:8:"signal-1";s:8:"signal-1";s:7:"sitemap";s:7:"sitemap";s:5:"skype";s:5:"skype";s:5:"smile";s:5:"smile";s:4:"sort";s:4:"sort";s:13:"sort-alt-down";s:13:"sort-alt-down";s:11:"sort-alt-up";s:11:"sort-alt-up";s:9:"sort-down";s:9:"sort-down";s:14:"sort-name-down";s:14:"sort-name-down";s:12:"sort-name-up";s:12:"sort-name-up";s:16:"sort-number-down";s:16:"sort-number-down";s:14:"sort-number-up";s:14:"sort-number-up";s:7:"sort-up";s:7:"sort-up";s:5:"spin4";s:5:"spin4";s:5:"spin5";s:5:"spin5";s:5:"spin6";s:5:"spin6";s:7:"spinner";s:7:"spinner";s:7:"squares";s:7:"squares";s:13:"stackexchange";s:13:"stackexchange";s:13:"stackoverflow";s:13:"stackoverflow";s:4:"star";s:4:"star";s:6:"star-1";s:6:"star-1";s:10:"star-empty";s:10:"star-empty";s:9:"star-half";s:9:"star-half";s:13:"star-half-alt";s:13:"star-half-alt";s:11:"stethoscope";s:11:"stethoscope";s:4:"stop";s:4:"stop";s:9:"stopwatch";s:9:"stopwatch";s:6:"strike";s:6:"strike";s:9:"subscript";s:9:"subscript";s:8:"suitcase";s:8:"suitcase";s:3:"sun";s:3:"sun";s:11:"superscript";s:11:"superscript";s:5:"table";s:5:"table";s:6:"tablet";s:6:"tablet";s:3:"tag";s:3:"tag";s:4:"tags";s:4:"tags";s:6:"target";s:6:"target";s:5:"tasks";s:5:"tasks";s:8:"terminal";s:8:"terminal";s:11:"text-height";s:11:"text-height";s:10:"text-width";s:10:"text-width";s:2:"th";s:2:"th";s:8:"th-large";s:8:"th-large";s:7:"th-list";s:7:"th-list";s:11:"thumbs-down";s:11:"thumbs-down";s:15:"thumbs-down-alt";s:15:"thumbs-down-alt";s:9:"thumbs-up";s:9:"thumbs-up";s:13:"thumbs-up-alt";s:13:"thumbs-up-alt";s:6:"ticket";s:6:"ticket";s:4:"tint";s:4:"tint";s:6:"to-end";s:6:"to-end";s:10:"to-end-alt";s:10:"to-end-alt";s:8:"to-start";s:8:"to-start";s:12:"to-start-alt";s:12:"to-start-alt";s:5:"trash";s:5:"trash";s:7:"trash-1";s:7:"trash-1";s:13:"trash-circled";s:13:"trash-circled";s:6:"trello";s:6:"trello";s:5:"truck";s:5:"truck";s:6:"tumblr";s:6:"tumblr";s:14:"tumblr-squared";s:14:"tumblr-squared";s:7:"twitter";s:7:"twitter";s:15:"twitter-squared";s:15:"twitter-squared";s:6:"two114";s:6:"two114";s:8:"umbrella";s:8:"umbrella";s:9:"underline";s:9:"underline";s:6:"unlink";s:6:"unlink";s:2:"up";s:2:"up";s:6:"up-big";s:6:"up-big";s:9:"up-circle";s:9:"up-circle";s:10:"up-circled";s:10:"up-circled";s:14:"up-circled-alt";s:14:"up-circled-alt";s:6:"up-dir";s:6:"up-dir";s:7:"up-hand";s:7:"up-hand";s:7:"up-open";s:7:"up-open";s:11:"up-open-big";s:11:"up-open-big";s:6:"upload";s:6:"upload";s:12:"upload-cloud";s:12:"upload-cloud";s:4:"user";s:4:"user";s:6:"user-1";s:6:"user-1";s:8:"user-add";s:8:"user-add";s:7:"user-md";s:7:"user-md";s:5:"users";s:5:"users";s:7:"users-1";s:7:"users-1";s:5:"video";s:5:"video";s:8:"videocam";s:8:"videocam";s:13:"vimeo-squared";s:13:"vimeo-squared";s:9:"vkontakte";s:9:"vkontakte";s:11:"volume-down";s:11:"volume-down";s:10:"volume-off";s:10:"volume-off";s:9:"volume-up";s:9:"volume-up";s:11:"volume-up-1";s:11:"volume-up-1";s:5:"weibo";s:5:"weibo";s:8:"whatsapp";s:8:"whatsapp";s:7:"windows";s:7:"windows";s:3:"won";s:3:"won";s:6:"wrench";s:6:"wrench";s:4:"xing";s:4:"xing";s:12:"xing-squared";s:12:"xing-squared";s:3:"yen";s:3:"yen";s:7:"youtube";s:7:"youtube";s:12:"youtube-play";s:12:"youtube-play";s:15:"youtube-squared";s:15:"youtube-squared";s:7:"zoom-in";s:7:"zoom-in";s:8:"zoom-out";s:8:"zoom-out";}', 'no'),
(3153, '_transient_timeout_GFCache_97fdac5a123f3b0926a1b91f6a910baf', '1461099699', 'no'),
(3154, '_transient_GFCache_97fdac5a123f3b0926a1b91f6a910baf', 'a:0:{}', 'no'),
(3155, '_transient_timeout_GFCache_81d3ab1e97a90488d1667640968c720d', '1461099699', 'no'),
(3156, '_transient_GFCache_81d3ab1e97a90488d1667640968c720d', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_postmeta`
--

CREATE TABLE `wpproject_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=1229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(19, 5, '_edit_lock', '1461092619:1'),
(20, 7, '_edit_last', '1'),
(21, 7, '_wp_page_template', 'default'),
(26, 7, '_kleo_transparent_menu_color', 'white'),
(27, 7, '_kleo_title_color', '#'),
(28, 7, '_kleo_title_bg', 'a:5:{s:3:"url";s:61:"http://voyagers.local:8888/content/uploads/2016/04/Slider.jpg";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(29, 7, '_kleo_title_bg_color', '#'),
(30, 7, '_kleo_page_menu', 'default'),
(33, 7, '_edit_lock', '1461092615:1'),
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
(357, 5, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(358, 5, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(361, 7, 'slide_template', 'default'),
(362, 7, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(363, 7, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(364, 7, '_wpb_vc_js_status', 'false'),
(365, 7, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(366, 7, '_wp_trash_meta_status', 'publish'),
(367, 7, '_wp_trash_meta_time', '1461092859'),
(368, 7, '_wp_desired_post_slug', 'about-us'),
(369, 17, '_wp_trash_meta_status', 'publish'),
(370, 17, '_wp_trash_meta_time', '1461092859'),
(371, 17, '_wp_desired_post_slug', 'events'),
(372, 17, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(373, 13, '_wp_trash_meta_status', 'publish'),
(374, 13, '_wp_trash_meta_time', '1461092859'),
(375, 13, '_wp_desired_post_slug', 'messages'),
(376, 13, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(377, 15, '_wp_trash_meta_status', 'publish'),
(378, 15, '_wp_trash_meta_time', '1461092859'),
(379, 15, '_wp_desired_post_slug', 'ministries'),
(380, 15, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(381, 11, '_wp_trash_meta_status', 'publish'),
(382, 11, '_wp_trash_meta_time', '1461092859'),
(383, 11, '_wp_desired_post_slug', 'serve'),
(384, 11, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(385, 19, '_wp_trash_meta_status', 'publish'),
(386, 19, '_wp_trash_meta_time', '1461092859'),
(387, 19, '_wp_desired_post_slug', 'stories'),
(388, 19, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(389, 9, '_wp_trash_meta_status', 'publish'),
(390, 9, '_wp_trash_meta_time', '1461092859'),
(391, 9, '_wp_desired_post_slug', 'weekends'),
(392, 9, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(393, 60, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(394, 61, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(395, 61, '_menu_item_type', 'custom'),
(396, 61, '_menu_item_menu_item_parent', '0'),
(397, 61, '_menu_item_object_id', '61'),
(398, 61, '_menu_item_object', 'custom'),
(399, 61, '_menu_item_target', ''),
(400, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(401, 61, '_menu_item_xfn', ''),
(402, 61, '_menu_item_url', ''),
(404, 61, '_menu_item_mega', NULL),
(405, 61, '_menu_item_icon', ''),
(406, 61, '_menu_item_iconpos', ''),
(407, 60, '_edit_last', '1'),
(408, 60, '_edit_lock', '1461096082:1'),
(409, 60, '_wp_page_template', 'default'),
(412, 60, 'slide_template', 'default'),
(415, 60, '_wpb_vc_js_status', 'true'),
(416, 60, '_kleo_transparent_menu_color', 'white'),
(417, 60, '_kleo_title_color', '#'),
(418, 60, '_kleo_title_bg', 'a:5:{s:3:"url";s:61:"http://voyagers.local:8888/content/uploads/2016/04/Slider.jpg";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(419, 60, '_kleo_title_bg_color', '#'),
(420, 60, '_kleo_page_menu', 'default'),
(423, 63, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(424, 63, '_menu_item_type', 'custom'),
(425, 63, '_menu_item_menu_item_parent', '0'),
(426, 63, '_menu_item_object_id', '63'),
(427, 63, '_menu_item_object', 'custom'),
(428, 63, '_menu_item_target', ''),
(429, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(430, 63, '_menu_item_xfn', ''),
(431, 63, '_menu_item_url', ''),
(433, 63, '_menu_item_mega', NULL),
(434, 63, '_menu_item_icon', ''),
(435, 63, '_menu_item_iconpos', ''),
(436, 64, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(437, 64, '_menu_item_type', 'custom'),
(438, 64, '_menu_item_menu_item_parent', '0'),
(439, 64, '_menu_item_object_id', '64'),
(440, 64, '_menu_item_object', 'custom'),
(441, 64, '_menu_item_target', ''),
(442, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(443, 64, '_menu_item_xfn', ''),
(444, 64, '_menu_item_url', ''),
(446, 64, '_menu_item_mega', NULL),
(447, 64, '_menu_item_icon', ''),
(448, 64, '_menu_item_iconpos', ''),
(449, 65, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(450, 65, '_menu_item_type', 'custom'),
(451, 65, '_menu_item_menu_item_parent', '0'),
(452, 65, '_menu_item_object_id', '65'),
(453, 65, '_menu_item_object', 'custom'),
(454, 65, '_menu_item_target', ''),
(455, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(456, 65, '_menu_item_xfn', ''),
(457, 65, '_menu_item_url', ''),
(459, 65, '_menu_item_mega', NULL),
(460, 65, '_menu_item_icon', ''),
(461, 65, '_menu_item_iconpos', ''),
(462, 66, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(463, 66, '_menu_item_type', 'custom'),
(464, 66, '_menu_item_menu_item_parent', '0'),
(465, 66, '_menu_item_object_id', '66'),
(466, 66, '_menu_item_object', 'custom'),
(467, 66, '_menu_item_target', ''),
(468, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(469, 66, '_menu_item_xfn', ''),
(470, 66, '_menu_item_url', ''),
(472, 66, '_menu_item_mega', NULL),
(473, 66, '_menu_item_icon', ''),
(474, 66, '_menu_item_iconpos', ''),
(475, 67, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(476, 67, '_menu_item_type', 'custom'),
(477, 67, '_menu_item_menu_item_parent', '0'),
(478, 67, '_menu_item_object_id', '67'),
(479, 67, '_menu_item_object', 'custom'),
(480, 67, '_menu_item_target', ''),
(481, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(482, 67, '_menu_item_xfn', ''),
(483, 67, '_menu_item_url', ''),
(485, 67, '_menu_item_mega', NULL),
(486, 67, '_menu_item_icon', ''),
(487, 67, '_menu_item_iconpos', ''),
(488, 68, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(489, 68, '_menu_item_type', 'post_type'),
(490, 68, '_menu_item_menu_item_parent', '0'),
(491, 68, '_menu_item_object_id', '60'),
(492, 68, '_menu_item_object', 'page'),
(493, 68, '_menu_item_target', ''),
(494, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(495, 68, '_menu_item_xfn', ''),
(496, 68, '_menu_item_url', ''),
(498, 68, '_menu_item_mega', NULL),
(499, 68, '_menu_item_icon', ''),
(500, 68, '_menu_item_iconpos', ''),
(505, 60, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(506, 60, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(507, 71, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(508, 71, '_edit_last', '1'),
(509, 71, '_wp_page_template', 'default'),
(512, 71, 'slide_template', 'default'),
(515, 71, '_wpb_vc_js_status', 'false'),
(516, 71, '_kleo_transparent_menu_color', 'white'),
(517, 71, '_kleo_title_color', '#'),
(518, 71, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(519, 71, '_kleo_title_bg_color', '#'),
(520, 71, '_kleo_page_menu', 'default'),
(521, 71, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(522, 71, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(523, 71, '_edit_lock', '1461096104:1'),
(524, 73, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(525, 73, '_edit_last', '1'),
(526, 73, '_wp_page_template', 'default'),
(529, 73, 'slide_template', 'default'),
(532, 73, '_wpb_vc_js_status', 'false'),
(533, 73, '_kleo_transparent_menu_color', 'white'),
(534, 73, '_kleo_title_color', '#'),
(535, 73, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(536, 73, '_kleo_title_bg_color', '#'),
(537, 73, '_kleo_page_menu', 'default'),
(538, 73, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(539, 73, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(540, 73, '_edit_lock', '1461096126:1'),
(541, 75, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(542, 75, '_edit_last', '1'),
(543, 75, '_wp_page_template', 'default'),
(546, 75, 'slide_template', 'default'),
(549, 75, '_wpb_vc_js_status', 'false'),
(550, 75, '_kleo_transparent_menu_color', 'white'),
(551, 75, '_kleo_title_color', '#'),
(552, 75, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(553, 75, '_kleo_title_bg_color', '#'),
(554, 75, '_kleo_page_menu', 'default'),
(555, 75, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(556, 75, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(557, 75, '_edit_lock', '1461096146:1'),
(558, 77, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(559, 77, '_edit_last', '1'),
(560, 77, '_wp_page_template', 'default'),
(563, 77, 'slide_template', 'default'),
(566, 77, '_wpb_vc_js_status', 'false'),
(567, 77, '_kleo_transparent_menu_color', 'white'),
(568, 77, '_kleo_title_color', '#'),
(569, 77, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(570, 77, '_kleo_title_bg_color', '#'),
(571, 77, '_kleo_page_menu', 'default'),
(572, 77, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(573, 77, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(574, 77, '_edit_lock', '1461096161:1'),
(575, 79, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(576, 79, '_edit_last', '1'),
(577, 79, '_wp_page_template', 'default'),
(580, 79, 'slide_template', 'default'),
(583, 79, '_wpb_vc_js_status', 'false'),
(584, 79, '_kleo_transparent_menu_color', 'white'),
(585, 79, '_kleo_title_color', '#'),
(586, 79, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(587, 79, '_kleo_title_bg_color', '#'),
(588, 79, '_kleo_page_menu', 'default'),
(589, 79, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(590, 79, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(591, 79, '_edit_lock', '1461096176:1'),
(592, 81, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(593, 81, '_edit_last', '1'),
(594, 81, '_wp_page_template', 'default'),
(597, 81, 'slide_template', 'default'),
(600, 81, '_wpb_vc_js_status', 'false'),
(601, 81, '_kleo_transparent_menu_color', 'white'),
(602, 81, '_kleo_title_color', '#'),
(603, 81, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(604, 81, '_kleo_title_bg_color', '#'),
(605, 81, '_kleo_page_menu', 'default'),
(606, 81, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(607, 81, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(608, 81, '_edit_lock', '1461096196:1'),
(609, 83, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(610, 83, '_edit_last', '1'),
(611, 83, '_wp_page_template', 'default'),
(614, 83, 'slide_template', 'default'),
(617, 83, '_wpb_vc_js_status', 'false'),
(618, 83, '_kleo_transparent_menu_color', 'white'),
(619, 83, '_kleo_title_color', '#'),
(620, 83, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(621, 83, '_kleo_title_bg_color', '#'),
(622, 83, '_kleo_page_menu', 'default'),
(623, 83, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(624, 83, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(625, 83, '_edit_lock', '1461096208:1'),
(626, 85, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(627, 85, '_edit_last', '1'),
(628, 85, '_wp_page_template', 'default'),
(631, 85, 'slide_template', 'default'),
(634, 85, '_wpb_vc_js_status', 'false'),
(635, 85, '_kleo_transparent_menu_color', 'white'),
(636, 85, '_kleo_title_color', '#'),
(637, 85, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(638, 85, '_kleo_title_bg_color', '#'),
(639, 85, '_kleo_page_menu', 'default'),
(640, 85, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(641, 85, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(642, 85, '_edit_lock', '1461096229:1'),
(643, 87, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(644, 87, '_edit_last', '1'),
(645, 87, '_wp_page_template', 'default'),
(648, 87, 'slide_template', 'default'),
(651, 87, '_wpb_vc_js_status', 'false'),
(652, 87, '_kleo_transparent_menu_color', 'white'),
(653, 87, '_kleo_title_color', '#'),
(654, 87, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(655, 87, '_kleo_title_bg_color', '#'),
(656, 87, '_kleo_page_menu', 'default'),
(657, 87, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(658, 87, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(659, 87, '_edit_lock', '1461096243:1'),
(660, 89, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(661, 89, '_edit_last', '1'),
(662, 89, '_wp_page_template', 'default'),
(665, 89, 'slide_template', 'default'),
(668, 89, '_wpb_vc_js_status', 'false'),
(669, 89, '_kleo_transparent_menu_color', 'white'),
(670, 89, '_kleo_title_color', '#'),
(671, 89, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(672, 89, '_kleo_title_bg_color', '#'),
(673, 89, '_kleo_page_menu', 'default'),
(674, 89, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(675, 89, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(676, 89, '_edit_lock', '1461096257:1'),
(677, 91, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(678, 91, '_edit_last', '1'),
(679, 91, '_wp_page_template', 'default'),
(682, 91, 'slide_template', 'default'),
(685, 91, '_wpb_vc_js_status', 'false'),
(686, 91, '_kleo_transparent_menu_color', 'white'),
(687, 91, '_kleo_title_color', '#'),
(688, 91, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(689, 91, '_kleo_title_bg_color', '#'),
(690, 91, '_kleo_page_menu', 'default'),
(691, 91, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(692, 91, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(693, 91, '_edit_lock', '1461096270:1'),
(694, 93, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(695, 93, '_edit_last', '1'),
(696, 93, '_wp_page_template', 'default'),
(699, 93, 'slide_template', 'default'),
(702, 93, '_wpb_vc_js_status', 'false'),
(703, 93, '_kleo_transparent_menu_color', 'white'),
(704, 93, '_kleo_title_color', '#'),
(705, 93, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(706, 93, '_kleo_title_bg_color', '#'),
(707, 93, '_kleo_page_menu', 'default'),
(708, 93, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(709, 93, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(710, 93, '_edit_lock', '1461096285:1'),
(711, 95, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(712, 95, '_edit_last', '1'),
(713, 95, '_edit_lock', '1461096354:1'),
(714, 95, '_wp_page_template', 'default'),
(717, 95, 'slide_template', 'default'),
(720, 95, '_wpb_vc_js_status', 'false'),
(721, 95, '_kleo_transparent_menu_color', 'white'),
(722, 95, '_kleo_title_color', '#'),
(723, 95, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(724, 95, '_kleo_title_bg_color', '#'),
(725, 95, '_kleo_page_menu', 'default'),
(726, 95, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(727, 95, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(728, 97, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(729, 97, '_edit_last', '1'),
(730, 97, '_wp_page_template', 'default'),
(733, 97, 'slide_template', 'default'),
(736, 97, '_wpb_vc_js_status', 'false'),
(737, 97, '_kleo_transparent_menu_color', 'white'),
(738, 97, '_kleo_title_color', '#'),
(739, 97, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(740, 97, '_kleo_title_bg_color', '#'),
(741, 97, '_kleo_page_menu', 'default'),
(742, 97, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(743, 97, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(744, 97, '_edit_lock', '1461096376:1'),
(745, 99, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(746, 99, '_edit_last', '1'),
(747, 99, '_wp_page_template', 'default'),
(750, 99, 'slide_template', 'default'),
(753, 99, '_wpb_vc_js_status', 'false'),
(754, 99, '_kleo_transparent_menu_color', 'white'),
(755, 99, '_kleo_title_color', '#'),
(756, 99, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(757, 99, '_kleo_title_bg_color', '#'),
(758, 99, '_kleo_page_menu', 'default'),
(759, 99, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(760, 99, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(761, 99, '_edit_lock', '1461096391:1'),
(762, 101, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(763, 102, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(764, 102, '_edit_last', '1'),
(765, 102, '_wp_page_template', 'default'),
(768, 102, 'slide_template', 'default'),
(771, 102, '_wpb_vc_js_status', 'false'),
(772, 102, '_kleo_transparent_menu_color', 'white'),
(773, 102, '_kleo_title_color', '#'),
(774, 102, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(775, 102, '_kleo_title_bg_color', '#'),
(776, 102, '_kleo_page_menu', 'default'),
(777, 102, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(778, 102, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(779, 102, '_edit_lock', '1461096404:1'),
(780, 104, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(781, 104, '_edit_last', '1'),
(782, 104, '_wp_page_template', 'default'),
(785, 104, 'slide_template', 'default'),
(788, 104, '_wpb_vc_js_status', 'false'),
(789, 104, '_kleo_transparent_menu_color', 'white'),
(790, 104, '_kleo_title_color', '#'),
(791, 104, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(792, 104, '_kleo_title_bg_color', '#'),
(793, 104, '_kleo_page_menu', 'default'),
(794, 104, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(795, 104, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(796, 104, '_edit_lock', '1461096419:1'),
(797, 106, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(798, 106, '_edit_last', '1'),
(799, 106, '_wp_page_template', 'default'),
(802, 106, 'slide_template', 'default'),
(805, 106, '_wpb_vc_js_status', 'false'),
(806, 106, '_kleo_transparent_menu_color', 'white'),
(807, 106, '_kleo_title_color', '#'),
(808, 106, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(809, 106, '_kleo_title_bg_color', '#'),
(810, 106, '_kleo_page_menu', 'default'),
(811, 106, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(812, 106, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(813, 106, '_edit_lock', '1461096443:1'),
(814, 108, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(815, 108, '_edit_last', '1'),
(816, 108, '_edit_lock', '1461096487:1'),
(817, 108, '_wp_page_template', 'default'),
(820, 108, 'slide_template', 'default'),
(823, 108, '_wpb_vc_js_status', 'false'),
(824, 108, '_kleo_transparent_menu_color', 'white'),
(825, 108, '_kleo_title_color', '#'),
(826, 108, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(827, 108, '_kleo_title_bg_color', '#'),
(828, 108, '_kleo_page_menu', 'default'),
(829, 108, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(830, 108, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(831, 110, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(832, 110, '_edit_last', '1'),
(833, 110, '_wp_page_template', 'default'),
(836, 110, 'slide_template', 'default'),
(839, 110, '_wpb_vc_js_status', 'false'),
(840, 110, '_kleo_transparent_menu_color', 'white'),
(841, 110, '_kleo_title_color', '#'),
(842, 110, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(843, 110, '_kleo_title_bg_color', '#'),
(844, 110, '_kleo_page_menu', 'default'),
(845, 110, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(846, 110, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(847, 110, '_edit_lock', '1461096501:1'),
(848, 112, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(849, 113, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(850, 112, '_edit_last', '1'),
(851, 112, '_wp_page_template', 'default'),
(854, 112, 'slide_template', 'default'),
(857, 112, '_wpb_vc_js_status', 'false'),
(858, 112, '_kleo_transparent_menu_color', 'white'),
(859, 112, '_kleo_title_color', '#'),
(860, 112, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(861, 112, '_kleo_title_bg_color', '#'),
(862, 112, '_kleo_page_menu', 'default'),
(863, 112, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(864, 112, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(865, 112, '_edit_lock', '1461096546:1'),
(866, 115, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(867, 115, '_edit_last', '1'),
(868, 115, '_wp_page_template', 'default'),
(871, 115, 'slide_template', 'default'),
(874, 115, '_wpb_vc_js_status', 'false'),
(875, 115, '_kleo_transparent_menu_color', 'white'),
(876, 115, '_kleo_title_color', '#'),
(877, 115, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(878, 115, '_kleo_title_bg_color', '#'),
(879, 115, '_kleo_page_menu', 'default'),
(880, 115, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(881, 115, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(882, 115, '_edit_lock', '1461096593:1'),
(883, 117, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(884, 117, '_edit_last', '1'),
(885, 117, '_wp_page_template', 'default'),
(888, 117, 'slide_template', 'default'),
(891, 117, '_wpb_vc_js_status', 'false'),
(892, 117, '_kleo_transparent_menu_color', 'white'),
(893, 117, '_kleo_title_color', '#'),
(894, 117, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(895, 117, '_kleo_title_bg_color', '#'),
(896, 117, '_kleo_page_menu', 'default'),
(897, 117, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(898, 117, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(899, 117, '_edit_lock', '1461096618:1'),
(900, 119, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(901, 119, '_edit_last', '1'),
(902, 119, '_wp_page_template', 'default'),
(905, 119, 'slide_template', 'default'),
(908, 119, '_wpb_vc_js_status', 'false'),
(909, 119, '_kleo_transparent_menu_color', 'white'),
(910, 119, '_kleo_title_color', '#'),
(911, 119, '_kleo_title_bg', 'a:5:{s:3:"url";s:0:"";s:6:"repeat";s:6:"repeat";s:4:"size";s:7:"inherit";s:10:"attachment";s:6:"scroll";s:8:"position";s:8:"left top";}'),
(912, 119, '_kleo_title_bg_color', '#'),
(913, 119, '_kleo_page_menu', 'default'),
(914, 119, 'sbg_selected_sidebar', 'a:1:{i:0;s:1:"0";}'),
(915, 119, 'sbg_selected_sidebar_replacement', 'a:1:{i:0;s:1:"0";}'),
(916, 119, '_edit_lock', '1461099518:1'),
(917, 121, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(918, 121, '_menu_item_type', 'post_type'),
(919, 121, '_menu_item_menu_item_parent', '67'),
(920, 121, '_menu_item_object_id', '119'),
(921, 121, '_menu_item_object', 'page'),
(922, 121, '_menu_item_target', ''),
(923, 121, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(924, 121, '_menu_item_xfn', ''),
(925, 121, '_menu_item_url', ''),
(927, 121, '_menu_item_mega', NULL),
(928, 121, '_menu_item_icon', ''),
(929, 121, '_menu_item_iconpos', ''),
(930, 122, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(931, 122, '_menu_item_type', 'post_type'),
(932, 122, '_menu_item_menu_item_parent', '67'),
(933, 122, '_menu_item_object_id', '117'),
(934, 122, '_menu_item_object', 'page'),
(935, 122, '_menu_item_target', ''),
(936, 122, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(937, 122, '_menu_item_xfn', ''),
(938, 122, '_menu_item_url', ''),
(940, 122, '_menu_item_mega', NULL),
(941, 122, '_menu_item_icon', ''),
(942, 122, '_menu_item_iconpos', ''),
(943, 123, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(944, 123, '_menu_item_type', 'post_type'),
(945, 123, '_menu_item_menu_item_parent', '61'),
(946, 123, '_menu_item_object_id', '73'),
(947, 123, '_menu_item_object', 'page'),
(948, 123, '_menu_item_target', ''),
(949, 123, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(950, 123, '_menu_item_xfn', ''),
(951, 123, '_menu_item_url', ''),
(953, 123, '_menu_item_mega', NULL),
(954, 123, '_menu_item_icon', ''),
(955, 123, '_menu_item_iconpos', ''),
(956, 124, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(957, 124, '_menu_item_type', 'post_type'),
(958, 124, '_menu_item_menu_item_parent', '61'),
(959, 124, '_menu_item_object_id', '71'),
(960, 124, '_menu_item_object', 'page'),
(961, 124, '_menu_item_target', ''),
(962, 124, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(963, 124, '_menu_item_xfn', ''),
(964, 124, '_menu_item_url', ''),
(966, 124, '_menu_item_mega', NULL),
(967, 124, '_menu_item_icon', ''),
(968, 124, '_menu_item_iconpos', ''),
(969, 125, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(970, 125, '_menu_item_type', 'post_type'),
(971, 125, '_menu_item_menu_item_parent', '61'),
(972, 125, '_menu_item_object_id', '77'),
(973, 125, '_menu_item_object', 'page'),
(974, 125, '_menu_item_target', ''),
(975, 125, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(976, 125, '_menu_item_xfn', ''),
(977, 125, '_menu_item_url', ''),
(979, 125, '_menu_item_mega', NULL),
(980, 125, '_menu_item_icon', ''),
(981, 125, '_menu_item_iconpos', ''),
(982, 126, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(983, 126, '_menu_item_type', 'post_type'),
(984, 126, '_menu_item_menu_item_parent', '61'),
(985, 126, '_menu_item_object_id', '79'),
(986, 126, '_menu_item_object', 'page'),
(987, 126, '_menu_item_target', ''),
(988, 126, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(989, 126, '_menu_item_xfn', ''),
(990, 126, '_menu_item_url', ''),
(992, 126, '_menu_item_mega', NULL),
(993, 126, '_menu_item_icon', ''),
(994, 126, '_menu_item_iconpos', ''),
(995, 127, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(996, 127, '_menu_item_type', 'post_type'),
(997, 127, '_menu_item_menu_item_parent', '61'),
(998, 127, '_menu_item_object_id', '75'),
(999, 127, '_menu_item_object', 'page'),
(1000, 127, '_menu_item_target', ''),
(1001, 127, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1002, 127, '_menu_item_xfn', ''),
(1003, 127, '_menu_item_url', ''),
(1005, 127, '_menu_item_mega', NULL),
(1006, 127, '_menu_item_icon', ''),
(1007, 127, '_menu_item_iconpos', ''),
(1008, 128, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1009, 128, '_menu_item_type', 'post_type'),
(1010, 128, '_menu_item_menu_item_parent', '63'),
(1011, 128, '_menu_item_object_id', '85'),
(1012, 128, '_menu_item_object', 'page'),
(1013, 128, '_menu_item_target', ''),
(1014, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1015, 128, '_menu_item_xfn', ''),
(1016, 128, '_menu_item_url', ''),
(1018, 128, '_menu_item_mega', NULL),
(1019, 128, '_menu_item_icon', ''),
(1020, 128, '_menu_item_iconpos', ''),
(1021, 129, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1022, 129, '_menu_item_type', 'post_type'),
(1023, 129, '_menu_item_menu_item_parent', '63'),
(1024, 129, '_menu_item_object_id', '87'),
(1025, 129, '_menu_item_object', 'page'),
(1026, 129, '_menu_item_target', ''),
(1027, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1028, 129, '_menu_item_xfn', ''),
(1029, 129, '_menu_item_url', ''),
(1031, 129, '_menu_item_mega', NULL),
(1032, 129, '_menu_item_icon', ''),
(1033, 129, '_menu_item_iconpos', ''),
(1034, 130, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1035, 130, '_menu_item_type', 'post_type'),
(1036, 130, '_menu_item_menu_item_parent', '63'),
(1037, 130, '_menu_item_object_id', '83'),
(1038, 130, '_menu_item_object', 'page'),
(1039, 130, '_menu_item_target', ''),
(1040, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1041, 130, '_menu_item_xfn', ''),
(1042, 130, '_menu_item_url', ''),
(1044, 130, '_menu_item_mega', NULL),
(1045, 130, '_menu_item_icon', ''),
(1046, 130, '_menu_item_iconpos', ''),
(1047, 131, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1048, 131, '_menu_item_type', 'post_type'),
(1049, 131, '_menu_item_menu_item_parent', '63'),
(1050, 131, '_menu_item_object_id', '81'),
(1051, 131, '_menu_item_object', 'page'),
(1052, 131, '_menu_item_target', ''),
(1053, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1054, 131, '_menu_item_xfn', ''),
(1055, 131, '_menu_item_url', ''),
(1057, 131, '_menu_item_mega', NULL),
(1058, 131, '_menu_item_icon', ''),
(1059, 131, '_menu_item_iconpos', ''),
(1060, 132, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1061, 132, '_menu_item_type', 'post_type'),
(1062, 132, '_menu_item_menu_item_parent', '64'),
(1063, 132, '_menu_item_object_id', '89'),
(1064, 132, '_menu_item_object', 'page'),
(1065, 132, '_menu_item_target', ''),
(1066, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1067, 132, '_menu_item_xfn', ''),
(1068, 132, '_menu_item_url', ''),
(1070, 132, '_menu_item_mega', NULL),
(1071, 132, '_menu_item_icon', ''),
(1072, 132, '_menu_item_iconpos', ''),
(1073, 133, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1074, 133, '_menu_item_type', 'post_type'),
(1075, 133, '_menu_item_menu_item_parent', '65'),
(1076, 133, '_menu_item_object_id', '106'),
(1077, 133, '_menu_item_object', 'page'),
(1078, 133, '_menu_item_target', ''),
(1079, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1080, 133, '_menu_item_xfn', ''),
(1081, 133, '_menu_item_url', ''),
(1083, 133, '_menu_item_mega', NULL),
(1084, 133, '_menu_item_icon', ''),
(1085, 133, '_menu_item_iconpos', ''),
(1086, 134, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1087, 134, '_menu_item_type', 'post_type'),
(1088, 134, '_menu_item_menu_item_parent', '65'),
(1089, 134, '_menu_item_object_id', '104'),
(1090, 134, '_menu_item_object', 'page'),
(1091, 134, '_menu_item_target', ''),
(1092, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1093, 134, '_menu_item_xfn', ''),
(1094, 134, '_menu_item_url', ''),
(1096, 134, '_menu_item_mega', NULL),
(1097, 134, '_menu_item_icon', ''),
(1098, 134, '_menu_item_iconpos', ''),
(1099, 135, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1100, 135, '_menu_item_type', 'post_type'),
(1101, 135, '_menu_item_menu_item_parent', '65'),
(1102, 135, '_menu_item_object_id', '102'),
(1103, 135, '_menu_item_object', 'page'),
(1104, 135, '_menu_item_target', ''),
(1105, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1106, 135, '_menu_item_xfn', ''),
(1107, 135, '_menu_item_url', ''),
(1109, 135, '_menu_item_mega', NULL),
(1110, 135, '_menu_item_icon', ''),
(1111, 135, '_menu_item_iconpos', ''),
(1112, 136, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1113, 136, '_menu_item_type', 'post_type'),
(1114, 136, '_menu_item_menu_item_parent', '65'),
(1115, 136, '_menu_item_object_id', '99'),
(1116, 136, '_menu_item_object', 'page'),
(1117, 136, '_menu_item_target', ''),
(1118, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1119, 136, '_menu_item_xfn', ''),
(1120, 136, '_menu_item_url', ''),
(1122, 136, '_menu_item_mega', NULL),
(1123, 136, '_menu_item_icon', ''),
(1124, 136, '_menu_item_iconpos', ''),
(1125, 137, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1126, 137, '_menu_item_type', 'post_type'),
(1127, 137, '_menu_item_menu_item_parent', '65'),
(1128, 137, '_menu_item_object_id', '97'),
(1129, 137, '_menu_item_object', 'page'),
(1130, 137, '_menu_item_target', ''),
(1131, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1132, 137, '_menu_item_xfn', ''),
(1133, 137, '_menu_item_url', ''),
(1135, 137, '_menu_item_mega', NULL),
(1136, 137, '_menu_item_icon', ''),
(1137, 137, '_menu_item_iconpos', ''),
(1138, 138, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1139, 138, '_menu_item_type', 'post_type'),
(1140, 138, '_menu_item_menu_item_parent', '65'),
(1141, 138, '_menu_item_object_id', '95'),
(1142, 138, '_menu_item_object', 'page'),
(1143, 138, '_menu_item_target', ''),
(1144, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1145, 138, '_menu_item_xfn', ''),
(1146, 138, '_menu_item_url', ''),
(1148, 138, '_menu_item_mega', NULL),
(1149, 138, '_menu_item_icon', ''),
(1150, 138, '_menu_item_iconpos', ''),
(1151, 139, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1152, 139, '_menu_item_type', 'post_type'),
(1153, 139, '_menu_item_menu_item_parent', '65'),
(1154, 139, '_menu_item_object_id', '93'),
(1155, 139, '_menu_item_object', 'page'),
(1156, 139, '_menu_item_target', ''),
(1157, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1158, 139, '_menu_item_xfn', ''),
(1159, 139, '_menu_item_url', ''),
(1161, 139, '_menu_item_mega', NULL),
(1162, 139, '_menu_item_icon', ''),
(1163, 139, '_menu_item_iconpos', ''),
(1164, 140, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1165, 140, '_menu_item_type', 'post_type'),
(1166, 140, '_menu_item_menu_item_parent', '65');
INSERT INTO `wpproject_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1167, 140, '_menu_item_object_id', '91'),
(1168, 140, '_menu_item_object', 'page'),
(1169, 140, '_menu_item_target', ''),
(1170, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1171, 140, '_menu_item_xfn', ''),
(1172, 140, '_menu_item_url', ''),
(1174, 140, '_menu_item_mega', NULL),
(1175, 140, '_menu_item_icon', ''),
(1176, 140, '_menu_item_iconpos', ''),
(1177, 141, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1178, 141, '_menu_item_type', 'post_type'),
(1179, 141, '_menu_item_menu_item_parent', '66'),
(1180, 141, '_menu_item_object_id', '115'),
(1181, 141, '_menu_item_object', 'page'),
(1182, 141, '_menu_item_target', ''),
(1183, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1184, 141, '_menu_item_xfn', ''),
(1185, 141, '_menu_item_url', ''),
(1187, 141, '_menu_item_mega', NULL),
(1188, 141, '_menu_item_icon', ''),
(1189, 141, '_menu_item_iconpos', ''),
(1190, 142, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1191, 142, '_menu_item_type', 'post_type'),
(1192, 142, '_menu_item_menu_item_parent', '66'),
(1193, 142, '_menu_item_object_id', '112'),
(1194, 142, '_menu_item_object', 'page'),
(1195, 142, '_menu_item_target', ''),
(1196, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1197, 142, '_menu_item_xfn', ''),
(1198, 142, '_menu_item_url', ''),
(1200, 142, '_menu_item_mega', NULL),
(1201, 142, '_menu_item_icon', ''),
(1202, 142, '_menu_item_iconpos', ''),
(1203, 143, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1204, 143, '_menu_item_type', 'post_type'),
(1205, 143, '_menu_item_menu_item_parent', '66'),
(1206, 143, '_menu_item_object_id', '110'),
(1207, 143, '_menu_item_object', 'page'),
(1208, 143, '_menu_item_target', ''),
(1209, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1210, 143, '_menu_item_xfn', ''),
(1211, 143, '_menu_item_url', ''),
(1213, 143, '_menu_item_mega', NULL),
(1214, 143, '_menu_item_icon', ''),
(1215, 143, '_menu_item_iconpos', ''),
(1216, 144, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(1217, 144, '_menu_item_type', 'post_type'),
(1218, 144, '_menu_item_menu_item_parent', '66'),
(1219, 144, '_menu_item_object_id', '108'),
(1220, 144, '_menu_item_object', 'page'),
(1221, 144, '_menu_item_target', ''),
(1222, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1223, 144, '_menu_item_xfn', ''),
(1224, 144, '_menu_item_url', ''),
(1226, 144, '_menu_item_mega', NULL),
(1227, 144, '_menu_item_icon', ''),
(1228, 144, '_menu_item_iconpos', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_posts`
--

INSERT INTO `wpproject_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-04-14 19:22:05', '2016-04-14 19:22:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-04-14 19:22:05', '2016-04-14 19:22:05', '', 0, 'http://voyagers.local:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2016-04-14 19:22:05', '2016-04-14 19:22:05', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://voyagers.local:8888/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-04-14 20:39:28', '2016-04-14 20:39:28', '', 0, 'http://voyagers.local:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-04-14 19:22:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-14 19:22:56', '0000-00-00 00:00:00', '', 0, 'http://voyagers.local:8888/?p=3', 0, 'post', '', 0),
(4, 1, '2016-04-14 20:39:28', '2016-04-14 20:39:28', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://voyagers.local:8888/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-14 20:39:28', '2016-04-14 20:39:28', '', 2, 'http://voyagers.local:8888/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-04-14 20:39:37', '2016-04-14 20:39:37', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row inner_container="no" el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[socialicons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37,51,52,53,54,55" img_size="medium" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-04-18 22:50:14', '2016-04-18 22:50:14', '', 0, 'http://voyagers.local:8888/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-04-14 20:39:37', '2016-04-14 20:39:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-14 20:39:37', '2016-04-14 20:39:37', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-04-14 20:39:50', '2016-04-14 20:39:50', '', 'About Us', '', 'trash', 'closed', 'closed', '', 'about-us__trashed', '', '', '2016-04-19 19:07:39', '2016-04-19 19:07:39', '', 0, 'http://voyagers.local:8888/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-04-14 20:39:50', '2016-04-14 20:39:50', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-04-14 20:39:50', '2016-04-14 20:39:50', '', 7, 'http://voyagers.local:8888/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-04-14 20:39:58', '2016-04-14 20:39:58', '', 'Weekends', '', 'trash', 'closed', 'closed', '', 'weekends__trashed', '', '', '2016-04-19 19:07:39', '2016-04-19 19:07:39', '', 0, 'http://voyagers.local:8888/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-04-14 20:39:58', '2016-04-14 20:39:58', '', 'Weekends', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-04-14 20:39:58', '2016-04-14 20:39:58', '', 9, 'http://voyagers.local:8888/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-04-14 20:40:18', '2016-04-14 20:40:18', '', 'Serve', '', 'trash', 'closed', 'closed', '', 'serve__trashed', '', '', '2016-04-19 19:07:39', '2016-04-19 19:07:39', '', 0, 'http://voyagers.local:8888/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-04-14 20:40:18', '2016-04-14 20:40:18', '', 'Serve', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-04-14 20:40:18', '2016-04-14 20:40:18', '', 11, 'http://voyagers.local:8888/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-04-14 20:40:45', '2016-04-14 20:40:45', '', 'Messages', '', 'trash', 'closed', 'closed', '', 'messages__trashed', '', '', '2016-04-19 19:07:39', '2016-04-19 19:07:39', '', 0, 'http://voyagers.local:8888/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-04-14 20:40:45', '2016-04-14 20:40:45', '', 'Messages', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-04-14 20:40:45', '2016-04-14 20:40:45', '', 13, 'http://voyagers.local:8888/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-04-14 20:41:08', '2016-04-14 20:41:08', '', 'Ministries', '', 'trash', 'closed', 'closed', '', 'ministries__trashed', '', '', '2016-04-19 19:07:39', '2016-04-19 19:07:39', '', 0, 'http://voyagers.local:8888/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-04-14 20:41:08', '2016-04-14 20:41:08', '', 'Ministries', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-04-14 20:41:08', '2016-04-14 20:41:08', '', 15, 'http://voyagers.local:8888/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-04-14 20:41:20', '2016-04-14 20:41:20', '', 'Events', '', 'trash', 'closed', 'closed', '', 'events__trashed', '', '', '2016-04-19 19:07:39', '2016-04-19 19:07:39', '', 0, 'http://voyagers.local:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-04-14 20:41:20', '2016-04-14 20:41:20', '', 'Events', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-04-14 20:41:20', '2016-04-14 20:41:20', '', 17, 'http://voyagers.local:8888/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-04-14 20:41:32', '2016-04-14 20:41:32', '', 'Stories', '', 'trash', 'closed', 'closed', '', 'stories__trashed', '', '', '2016-04-19 19:07:39', '2016-04-19 19:07:39', '', 0, 'http://voyagers.local:8888/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-04-14 20:41:32', '2016-04-14 20:41:32', '', 'Stories', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-04-14 20:41:32', '2016-04-14 20:41:32', '', 19, 'http://voyagers.local:8888/19-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-04-14 22:57:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-14 22:57:07', '0000-00-00 00:00:00', '', 0, 'http://voyagers.local:8888/?p=26', 1, 'nav_menu_item', '', 0),
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
(57, 1, '2016-04-15 22:23:51', '2016-04-15 22:23:51', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37,51,52,53,54,55" img_size="medium" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-15 22:23:51', '2016-04-15 22:23:51', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-04-18 21:56:38', '2016-04-18 21:56:38', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row inner_container="no" el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[social-icons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37,51,52,53,54,55" img_size="medium" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-18 21:56:38', '2016-04-18 21:56:38', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-04-18 22:50:14', '2016-04-18 22:50:14', '[vc_row inner_container="no" padding_top="0" padding_bottom="0" el_class="slider"][vc_column][rev_slider_vc alias="home"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text letter_spacing="" el_class="lead"]\r\n<h1 style="text-align: center;">WELCOME TO VOYAGERS</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">Sunday mornings at Voyagers are times of expectant energy and joyful worship as, together, we experience true life at the feet of Jesus. Everything we do revolves around the reality of God’s saving and transforming love for us in Jesus Christ.</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row el_class="link-img"][vc_column width="1/3" css=".vc_custom_1460677330356{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677336951{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-38.jpeg?id=35) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3" css=".vc_custom_1460677344377{background-image: url(http://voyagers.local:8888/content/uploads/2016/04/Layer-37.jpeg?id=34) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column_text letter_spacing=""]\r\n<h3 style="text-align: center;">KIDS MINISTRY</h3>\r\n\r\n<hr />\r\n<p style="text-align: center;">Dive into a fun and exciting time of games, crafts, and Bible lessons! There''s something for every child.</p>\r\n<p style="text-align: center;"><a href="#">Read More</a></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row inner_container="no" el_class="events"][vc_column][vc_column_text letter_spacing=""][events][/vc_column_text][/vc_column][/vc_row][vc_row el_class="social"][vc_column][vc_column_text letter_spacing=""]\r\n<h1 style="text-align: center;">Stay Connected</h1>\r\n\r\n<hr />\r\n<p style="text-align: center;">@voyagerschurch  |  #voyagersbiblechurch</p>\r\n<p style="text-align: center;">[socialicons]</p>\r\n[/vc_column_text][vc_images_carousel images="41,40,39,38,37,51,52,53,54,55" img_size="medium" autoplay="yes" min_items="1" max_items="5"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-04-18 22:50:14', '2016-04-18 22:50:14', '', 5, 'http://voyagers.local:8888/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wpproject_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(60, 1, '2016-04-19 19:12:21', '2016-04-19 19:12:21', '[vc_row][vc_column][vc_column_text]\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row]', 'Give', '', 'publish', 'closed', 'closed', '', 'give', '', '', '2016-04-19 19:18:52', '2016-04-19 19:18:52', '', 0, 'http://voyagers.local:8888/?page_id=60', 0, 'page', '', 0),
(61, 1, '2016-04-19 19:14:23', '2016-04-19 19:14:23', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-04-19 20:17:17', '2016-04-19 20:17:17', '', 0, 'http://voyagers.local:8888/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2016-04-19 19:12:21', '2016-04-19 19:12:21', '', 'Give', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-04-19 19:12:21', '2016-04-19 19:12:21', '', 60, 'http://voyagers.local:8888/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2016-04-19 19:14:23', '2016-04-19 19:14:23', '', 'Weekends', '', 'publish', 'closed', 'closed', '', 'weekends', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=63', 7, 'nav_menu_item', '', 0),
(64, 1, '2016-04-19 19:14:24', '2016-04-19 19:14:24', '', 'Messages', '', 'publish', 'closed', 'closed', '', 'messages', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=64', 12, 'nav_menu_item', '', 0),
(65, 1, '2016-04-19 19:14:24', '2016-04-19 19:14:24', '', 'Ministries', '', 'publish', 'closed', 'closed', '', 'ministries', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=65', 14, 'nav_menu_item', '', 0),
(66, 1, '2016-04-19 19:14:24', '2016-04-19 19:14:24', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=66', 23, 'nav_menu_item', '', 0),
(67, 1, '2016-04-19 19:14:24', '2016-04-19 19:14:24', '', 'Stories', '', 'publish', 'closed', 'closed', '', 'stories', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=67', 29, 'nav_menu_item', '', 0),
(68, 1, '2016-04-19 19:15:58', '2016-04-19 19:15:58', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=68', 28, 'nav_menu_item', '', 0),
(69, 1, '2016-04-19 19:18:18', '2016-04-19 19:18:18', '[vc_row][vc_column][vc_column_text]\n\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n\n[/vc_column_text][/vc_column][/vc_row]', 'Give', '', 'inherit', 'closed', 'closed', '', '60-autosave-v1', '', '', '2016-04-19 19:18:18', '2016-04-19 19:18:18', '', 60, 'http://voyagers.local:8888/60-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2016-04-19 19:18:52', '2016-04-19 19:18:52', '[vc_row][vc_column][vc_column_text]\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column][/vc_row]', 'Give', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-04-19 19:18:52', '2016-04-19 19:18:52', '', 60, 'http://voyagers.local:8888/60-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-04-19 20:04:01', '2016-04-19 20:04:01', '', 'Pastors Video Welcome', '', 'publish', 'closed', 'closed', '', 'pastors-video-welcome', '', '', '2016-04-19 20:04:01', '2016-04-19 20:04:01', '', 0, 'http://voyagers.local:8888/?page_id=71', 0, 'page', '', 0),
(72, 1, '2016-04-19 20:04:01', '2016-04-19 20:04:01', '', 'Pastors Video Welcome', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-04-19 20:04:01', '2016-04-19 20:04:01', '', 71, 'http://voyagers.local:8888/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-04-19 20:04:18', '2016-04-19 20:04:18', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2016-04-19 20:04:18', '2016-04-19 20:04:18', '', 0, 'http://voyagers.local:8888/?page_id=73', 0, 'page', '', 0),
(74, 1, '2016-04-19 20:04:18', '2016-04-19 20:04:18', '', 'Our Story', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-04-19 20:04:18', '2016-04-19 20:04:18', '', 73, 'http://voyagers.local:8888/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2016-04-19 20:04:40', '2016-04-19 20:04:40', '', 'Who Leads VBC?', '', 'publish', 'closed', 'closed', '', 'who-leads-vbc', '', '', '2016-04-19 20:04:40', '2016-04-19 20:04:40', '', 0, 'http://voyagers.local:8888/?page_id=75', 0, 'page', '', 0),
(76, 1, '2016-04-19 20:04:40', '2016-04-19 20:04:40', '', 'Who Leads VBC?', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2016-04-19 20:04:40', '2016-04-19 20:04:40', '', 75, 'http://voyagers.local:8888/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-04-19 20:04:58', '2016-04-19 20:04:58', '', 'What is the Gospel?', '', 'publish', 'closed', 'closed', '', 'what-is-the-gospel', '', '', '2016-04-19 20:04:58', '2016-04-19 20:04:58', '', 0, 'http://voyagers.local:8888/?page_id=77', 0, 'page', '', 0),
(78, 1, '2016-04-19 20:04:58', '2016-04-19 20:04:58', '', 'What is the Gospel?', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-04-19 20:04:58', '2016-04-19 20:04:58', '', 77, 'http://voyagers.local:8888/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2016-04-19 20:05:14', '2016-04-19 20:05:14', '', 'What We Believe', '', 'publish', 'closed', 'closed', '', 'what-we-believe', '', '', '2016-04-19 20:05:14', '2016-04-19 20:05:14', '', 0, 'http://voyagers.local:8888/?page_id=79', 0, 'page', '', 0),
(80, 1, '2016-04-19 20:05:14', '2016-04-19 20:05:14', '', 'What We Believe', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-04-19 20:05:14', '2016-04-19 20:05:14', '', 79, 'http://voyagers.local:8888/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2016-04-19 20:05:29', '2016-04-19 20:05:29', '', 'What to Expect', '', 'publish', 'closed', 'closed', '', 'what-to-expect', '', '', '2016-04-19 20:05:29', '2016-04-19 20:05:29', '', 0, 'http://voyagers.local:8888/?page_id=81', 0, 'page', '', 0),
(82, 1, '2016-04-19 20:05:29', '2016-04-19 20:05:29', '', 'What to Expect', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2016-04-19 20:05:29', '2016-04-19 20:05:29', '', 81, 'http://voyagers.local:8888/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2016-04-19 20:05:46', '2016-04-19 20:05:46', '', 'Service Times and Locations', '', 'publish', 'closed', 'closed', '', 'service-times-and-locations', '', '', '2016-04-19 20:05:46', '2016-04-19 20:05:46', '', 0, 'http://voyagers.local:8888/?page_id=83', 0, 'page', '', 0),
(84, 1, '2016-04-19 20:05:46', '2016-04-19 20:05:46', '', 'Service Times and Locations', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-04-19 20:05:46', '2016-04-19 20:05:46', '', 83, 'http://voyagers.local:8888/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2016-04-19 20:06:02', '2016-04-19 20:06:02', '', 'Children''s Ministry', '', 'publish', 'closed', 'closed', '', 'childrens-ministry', '', '', '2016-04-19 20:06:02', '2016-04-19 20:06:02', '', 0, 'http://voyagers.local:8888/?page_id=85', 0, 'page', '', 0),
(86, 1, '2016-04-19 20:06:02', '2016-04-19 20:06:02', '', 'Children''s Ministry', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2016-04-19 20:06:02', '2016-04-19 20:06:02', '', 85, 'http://voyagers.local:8888/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2016-04-19 20:06:19', '2016-04-19 20:06:19', '', 'Serve Teams', '', 'publish', 'closed', 'closed', '', 'serve-teams', '', '', '2016-04-19 20:06:19', '2016-04-19 20:06:19', '', 0, 'http://voyagers.local:8888/?page_id=87', 0, 'page', '', 0),
(88, 1, '2016-04-19 20:06:19', '2016-04-19 20:06:19', '', 'Serve Teams', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2016-04-19 20:06:19', '2016-04-19 20:06:19', '', 87, 'http://voyagers.local:8888/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-04-19 20:06:35', '2016-04-19 20:06:35', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2016-04-19 20:06:35', '2016-04-19 20:06:35', '', 0, 'http://voyagers.local:8888/?page_id=89', 0, 'page', '', 0),
(90, 1, '2016-04-19 20:06:35', '2016-04-19 20:06:35', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2016-04-19 20:06:35', '2016-04-19 20:06:35', '', 89, 'http://voyagers.local:8888/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2016-04-19 20:06:47', '2016-04-19 20:06:47', '', 'Rooted', '', 'publish', 'closed', 'closed', '', 'rooted', '', '', '2016-04-19 20:06:47', '2016-04-19 20:06:47', '', 0, 'http://voyagers.local:8888/?page_id=91', 0, 'page', '', 0),
(92, 1, '2016-04-19 20:06:47', '2016-04-19 20:06:47', '', 'Rooted', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2016-04-19 20:06:47', '2016-04-19 20:06:47', '', 91, 'http://voyagers.local:8888/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2016-04-19 20:07:00', '2016-04-19 20:07:00', '', 'Home Groups', '', 'publish', 'closed', 'closed', '', 'home-groups', '', '', '2016-04-19 20:07:00', '2016-04-19 20:07:00', '', 0, 'http://voyagers.local:8888/?page_id=93', 0, 'page', '', 0),
(94, 1, '2016-04-19 20:07:00', '2016-04-19 20:07:00', '', 'Home Groups', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2016-04-19 20:07:00', '2016-04-19 20:07:00', '', 93, 'http://voyagers.local:8888/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2016-04-19 20:08:08', '2016-04-19 20:08:08', '', 'Student Ministries', '', 'publish', 'closed', 'closed', '', 'student-ministries', '', '', '2016-04-19 20:08:08', '2016-04-19 20:08:08', '', 0, 'http://voyagers.local:8888/?page_id=95', 0, 'page', '', 0),
(96, 1, '2016-04-19 20:08:08', '2016-04-19 20:08:08', '', 'Student Ministries', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2016-04-19 20:08:08', '2016-04-19 20:08:08', '', 95, 'http://voyagers.local:8888/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2016-04-19 20:08:25', '2016-04-19 20:08:25', '', 'Counseling and Care', '', 'publish', 'closed', 'closed', '', 'counseling-and-care', '', '', '2016-04-19 20:08:25', '2016-04-19 20:08:25', '', 0, 'http://voyagers.local:8888/?page_id=97', 0, 'page', '', 0),
(98, 1, '2016-04-19 20:08:25', '2016-04-19 20:08:25', '', 'Counseling and Care', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2016-04-19 20:08:25', '2016-04-19 20:08:25', '', 97, 'http://voyagers.local:8888/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2016-04-19 20:08:48', '2016-04-19 20:08:48', '', 'Outreach-Local & Global', '', 'publish', 'closed', 'closed', '', 'outreach-local-global', '', '', '2016-04-19 20:08:48', '2016-04-19 20:08:48', '', 0, 'http://voyagers.local:8888/?page_id=99', 0, 'page', '', 0),
(100, 1, '2016-04-19 20:08:48', '2016-04-19 20:08:48', '', 'Outreach-Local & Global', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2016-04-19 20:08:48', '2016-04-19 20:08:48', '', 99, 'http://voyagers.local:8888/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-04-19 20:08:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-19 20:08:54', '0000-00-00 00:00:00', '', 0, 'http://voyagers.local:8888/?page_id=101', 0, 'page', '', 0),
(102, 1, '2016-04-19 20:09:01', '2016-04-19 20:09:01', '', 'Prayer', '', 'publish', 'closed', 'closed', '', 'prayer', '', '', '2016-04-19 20:09:01', '2016-04-19 20:09:01', '', 0, 'http://voyagers.local:8888/?page_id=102', 0, 'page', '', 0),
(103, 1, '2016-04-19 20:09:01', '2016-04-19 20:09:01', '', 'Prayer', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2016-04-19 20:09:01', '2016-04-19 20:09:01', '', 102, 'http://voyagers.local:8888/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2016-04-19 20:09:15', '2016-04-19 20:09:15', '', 'Men''s and Women''s', '', 'publish', 'closed', 'closed', '', 'mens-and-womens', '', '', '2016-04-19 20:09:15', '2016-04-19 20:09:15', '', 0, 'http://voyagers.local:8888/?page_id=104', 0, 'page', '', 0),
(105, 1, '2016-04-19 20:09:15', '2016-04-19 20:09:15', '', 'Men''s and Women''s', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2016-04-19 20:09:15', '2016-04-19 20:09:15', '', 104, 'http://voyagers.local:8888/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2016-04-19 20:09:30', '2016-04-19 20:09:30', '', 'Worship', '', 'publish', 'closed', 'closed', '', 'worship', '', '', '2016-04-19 20:09:30', '2016-04-19 20:09:30', '', 0, 'http://voyagers.local:8888/?page_id=106', 0, 'page', '', 0),
(107, 1, '2016-04-19 20:09:30', '2016-04-19 20:09:30', '', 'Worship', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2016-04-19 20:09:30', '2016-04-19 20:09:30', '', 106, 'http://voyagers.local:8888/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2016-04-19 20:10:24', '2016-04-19 20:10:24', '', 'Welcome to MYVBC', '', 'publish', 'closed', 'closed', '', 'welcome-to-myvbc', '', '', '2016-04-19 20:10:24', '2016-04-19 20:10:24', '', 0, 'http://voyagers.local:8888/?page_id=108', 0, 'page', '', 0),
(109, 1, '2016-04-19 20:10:24', '2016-04-19 20:10:24', '', 'Welcome to MYVBC', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2016-04-19 20:10:24', '2016-04-19 20:10:24', '', 108, 'http://voyagers.local:8888/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2016-04-19 20:10:38', '2016-04-19 20:10:38', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2016-04-19 20:10:38', '2016-04-19 20:10:38', '', 0, 'http://voyagers.local:8888/?page_id=110', 0, 'page', '', 0),
(111, 1, '2016-04-19 20:10:38', '2016-04-19 20:10:38', '', 'Calendar', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2016-04-19 20:10:38', '2016-04-19 20:10:38', '', 110, 'http://voyagers.local:8888/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2016-04-19 20:10:51', '2016-04-19 20:10:51', '', 'VBS Sonrise Island', '', 'publish', 'closed', 'closed', '', 'vbs-sonrise-island', '', '', '2016-04-19 20:10:51', '2016-04-19 20:10:51', '', 0, 'http://voyagers.local:8888/?page_id=112', 0, 'page', '', 0),
(113, 1, '2016-04-19 20:10:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-04-19 20:10:45', '0000-00-00 00:00:00', '', 0, 'http://voyagers.local:8888/?page_id=113', 0, 'page', '', 0),
(114, 1, '2016-04-19 20:10:51', '2016-04-19 20:10:51', '', 'VBS Sonrise Island', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2016-04-19 20:10:51', '2016-04-19 20:10:51', '', 112, 'http://voyagers.local:8888/112-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2016-04-19 20:11:39', '2016-04-19 20:11:39', '', 'Men''s Retreat', '', 'publish', 'closed', 'closed', '', 'mens-retreat', '', '', '2016-04-19 20:11:39', '2016-04-19 20:11:39', '', 0, 'http://voyagers.local:8888/?page_id=115', 0, 'page', '', 0),
(116, 1, '2016-04-19 20:11:39', '2016-04-19 20:11:39', '', 'Men''s Retreat', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2016-04-19 20:11:39', '2016-04-19 20:11:39', '', 115, 'http://voyagers.local:8888/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2016-04-19 20:12:37', '2016-04-19 20:12:37', '', 'Share Your Story', '', 'publish', 'closed', 'closed', '', 'share-your-story', '', '', '2016-04-19 20:12:37', '2016-04-19 20:12:37', '', 0, 'http://voyagers.local:8888/?page_id=117', 0, 'page', '', 0),
(118, 1, '2016-04-19 20:12:37', '2016-04-19 20:12:37', '', 'Share Your Story', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2016-04-19 20:12:37', '2016-04-19 20:12:37', '', 117, 'http://voyagers.local:8888/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2016-04-19 20:13:00', '2016-04-19 20:13:00', '', 'Follow Our Story', '', 'publish', 'closed', 'closed', '', 'follow-our-story', '', '', '2016-04-19 20:13:00', '2016-04-19 20:13:00', '', 0, 'http://voyagers.local:8888/?page_id=119', 0, 'page', '', 0),
(120, 1, '2016-04-19 20:13:00', '2016-04-19 20:13:00', '', 'Follow Our Story', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2016-04-19 20:13:00', '2016-04-19 20:13:00', '', 119, 'http://voyagers.local:8888/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=121', 30, 'nav_menu_item', '', 0),
(122, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=122', 31, 'nav_menu_item', '', 0),
(123, 1, '2016-04-19 20:17:17', '2016-04-19 20:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2016-04-19 20:17:17', '2016-04-19 20:17:17', '', 0, 'http://voyagers.local:8888/?p=123', 3, 'nav_menu_item', '', 0),
(124, 1, '2016-04-19 20:17:17', '2016-04-19 20:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2016-04-19 20:17:17', '2016-04-19 20:17:17', '', 0, 'http://voyagers.local:8888/?p=124', 2, 'nav_menu_item', '', 0),
(125, 1, '2016-04-19 20:17:17', '2016-04-19 20:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2016-04-19 20:17:17', '2016-04-19 20:17:17', '', 0, 'http://voyagers.local:8888/?p=125', 5, 'nav_menu_item', '', 0),
(126, 1, '2016-04-19 20:17:17', '2016-04-19 20:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=126', 6, 'nav_menu_item', '', 0),
(127, 1, '2016-04-19 20:17:17', '2016-04-19 20:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2016-04-19 20:17:17', '2016-04-19 20:17:17', '', 0, 'http://voyagers.local:8888/?p=127', 4, 'nav_menu_item', '', 0),
(128, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 'Children''s Ministry', '', 'publish', 'closed', 'closed', '', 'childrens-ministry', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=128', 10, 'nav_menu_item', '', 0),
(129, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=129', 11, 'nav_menu_item', '', 0),
(130, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=130', 9, 'nav_menu_item', '', 0),
(131, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=131', 8, 'nav_menu_item', '', 0),
(132, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=132', 13, 'nav_menu_item', '', 0),
(133, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=133', 22, 'nav_menu_item', '', 0),
(134, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 'Men''s and Women''s', '', 'publish', 'closed', 'closed', '', 'mens-and-womens', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=134', 21, 'nav_menu_item', '', 0),
(135, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=135', 20, 'nav_menu_item', '', 0),
(136, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=136', 19, 'nav_menu_item', '', 0),
(137, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=137', 18, 'nav_menu_item', '', 0),
(138, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=138', 17, 'nav_menu_item', '', 0),
(139, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=139', 16, 'nav_menu_item', '', 0),
(140, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=140', 15, 'nav_menu_item', '', 0),
(141, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 'Men''s Retreat', '', 'publish', 'closed', 'closed', '', 'mens-retreat', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=141', 27, 'nav_menu_item', '', 0),
(142, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=142', 26, 'nav_menu_item', '', 0),
(143, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=143', 25, 'nav_menu_item', '', 0),
(144, 1, '2016-04-19 20:17:18', '2016-04-19 20:17:18', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2016-04-19 20:17:18', '2016-04-19 20:17:18', '', 0, 'http://voyagers.local:8888/?p=144', 24, 'nav_menu_item', '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpproject_rg_form`
--

INSERT INTO `wpproject_rg_form` (`id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'newsletter', '2016-04-18 23:34:50', 1, 0);

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

--
-- Dumping data for table `wpproject_rg_form_meta`
--

INSERT INTO `wpproject_rg_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"newsletter","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"&#x25b2;","imageUrl":""},"fields":[{"type":"email","id":1,"label":"","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Subscribe to Voyagers Weekly","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"emailConfirmEnabled":false,"formId":1,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""}],"version":"1.9.18.3","id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"notifications":{"57156f1adc017":{"id":"57156f1adc017","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}},"confirmations":{"57156f1adc41f":{"id":"57156f1adc41f","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}},"subLabelPlacement":"below","cssClass":"","enableHoneypot":true,"enableAnimation":false,"save":{"enabled":false,"button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":false,"limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":false,"scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":false,"requireLoginMessage":""}', NULL, '{"57156f1adc41f":{"id":"57156f1adc41f","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"57156f1adc017":{"id":"57156f1adc017","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}');

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
(61, 2, 0),
(63, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(121, 2, 0),
(122, 2, 0),
(123, 2, 0),
(124, 2, 0),
(125, 2, 0),
(126, 2, 0),
(127, 2, 0),
(128, 2, 0),
(129, 2, 0),
(130, 2, 0),
(131, 2, 0),
(132, 2, 0),
(133, 2, 0),
(134, 2, 0),
(135, 2, 0),
(136, 2, 0),
(137, 2, 0),
(138, 2, 0),
(139, 2, 0),
(140, 2, 0),
(141, 2, 0),
(142, 2, 0),
(143, 2, 0),
(144, 2, 0);

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
(2, 2, 'nav_menu', '', 0, 31);

-- --------------------------------------------------------

--
-- Table structure for table `wpproject_usermeta`
--

CREATE TABLE `wpproject_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(12, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"c52abad32b64046fe1b676116f3f7d4b0027e5018bd3fd6143e8c9e5aba653ca";a:4:{s:10:"expiration";i:1461173846;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";s:5:"login";i:1461001046;}s:64:"f25fe096b8a927cecf70b02f4514f2e2d8bd1d3bef9f639d272c8e2d7356c6b7";a:4:{s:10:"expiration";i:1461173883;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";s:5:"login";i:1461001083;}}'),
(15, 1, 'wpproject_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'tgmpa_dismissed_notice_tgmpa-kleo-3.0.7', '1'),
(17, 1, 'tgmpa_dismissed_notice_tgmpa-kleo-4.0.5', '1'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:17:"add-kleo-nav-menu";i:1;s:26:"add-post-type-kleo_clients";i:2;s:31:"add-post-type-kleo-testimonials";i:3;s:23:"add-post-type-portfolio";i:4;s:12:"add-post_tag";i:5;s:15:"add-post_format";}'),
(20, 1, 'wpproject_user-settings', 'libraryContent=browse&editor=tinymce&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=501px&edit_element_vcUIPanelTop=98px&hidetb=1'),
(21, 1, 'wpproject_user-settings-time', '1460677596'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'wpproject_r_tru_u_x', 'a:2:{s:2:"id";i:0;s:7:"expires";i:1461025066;}');

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
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3157;
--
-- AUTO_INCREMENT for table `wpproject_postmeta`
--
ALTER TABLE `wpproject_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1229;
--
-- AUTO_INCREMENT for table `wpproject_posts`
--
ALTER TABLE `wpproject_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
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
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wpproject_users`
--
ALTER TABLE `wpproject_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
