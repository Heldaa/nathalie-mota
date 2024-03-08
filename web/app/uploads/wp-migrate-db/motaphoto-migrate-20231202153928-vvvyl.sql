# WordPress MySQL database migration
#
# Generated: Saturday 2. December 2023 15:39 UTC
# Hostname: localhost
# Database: `motaphoto`
# URL: //motaphoto.test
# Path: C:\\dev\\www\\motaphoto\\web\\wp
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, attachment, customize_changeset, nav_menu_item, page, photos, post, wp_navigation, wpcf7_contact_form
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-11-20 13:36:40', '2023-11-20 13:36:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://en.gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://motaphoto.com/wp', 'yes'),
(2, 'home', 'http://motaphoto.com/wp', 'yes'),
(3, 'blogname', 'MotaPhoto', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@motaphoto.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '8', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '8', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:126:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:9:"photos/?$";s:26:"index.php?post_type=photos";s:39:"photos/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=photos&feed=$matches[1]";s:34:"photos/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=photos&feed=$matches[1]";s:26:"photos/page/([0-9]{1,})/?$";s:44:"index.php?post_type=photos&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"photos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"photos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"photos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"photos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"photos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"photos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"photos/([^/]+)/embed/?$";s:39:"index.php?photos=$matches[1]&embed=true";s:27:"photos/([^/]+)/trackback/?$";s:33:"index.php?photos=$matches[1]&tb=1";s:47:"photos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?photos=$matches[1]&feed=$matches[2]";s:42:"photos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?photos=$matches[1]&feed=$matches[2]";s:35:"photos/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?photos=$matches[1]&paged=$matches[2]";s:42:"photos/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?photos=$matches[1]&cpage=$matches[2]";s:31:"photos/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?photos=$matches[1]&page=$matches[2]";s:23:"photos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"photos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"photos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"photos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"photos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"photos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"category_photo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?category_photo=$matches[1]&feed=$matches[2]";s:50:"category_photo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?category_photo=$matches[1]&feed=$matches[2]";s:31:"category_photo/([^/]+)/embed/?$";s:47:"index.php?category_photo=$matches[1]&embed=true";s:43:"category_photo/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?category_photo=$matches[1]&paged=$matches[2]";s:25:"category_photo/([^/]+)/?$";s:36:"index.php?category_photo=$matches[1]";s:47:"format/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?format=$matches[1]&feed=$matches[2]";s:42:"format/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?format=$matches[1]&feed=$matches[2]";s:23:"format/([^/]+)/embed/?$";s:39:"index.php?format=$matches[1]&embed=true";s:35:"format/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?format=$matches[1]&paged=$matches[2]";s:17:"format/([^/]+)/?$";s:28:"index.php?format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'motatheme', 'yes'),
(41, 'stylesheet', 'motatheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1716039399', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
(106, 'bedrock_autoloader', 'a:2:{s:7:"plugins";a:1:{s:55:"bedrock-disallow-indexing/bedrock-disallow-indexing.php";a:14:{s:4:"Name";s:17:"Disallow Indexing";s:9:"PluginURI";s:25:"https://roots.io/bedrock/";s:7:"Version";s:5:"2.0.0";s:11:"Description";s:62:"Disallow indexing of your site on non-production environments.";s:6:"Author";s:5:"Roots";s:9:"AuthorURI";s:17:"https://roots.io/";s:10:"TextDomain";s:5:"roots";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:10:"RequiresWP";s:0:"";s:11:"RequiresPHP";s:0:"";s:9:"UpdateURI";s:0:"";s:5:"Title";s:17:"Disallow Indexing";s:10:"AuthorName";s:5:"Roots";}}s:5:"count";i:1;}', 'no'),
(107, 'cron', 'a:8:{i:1701535138;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1701567538;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1701568576;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1701611776;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1701611777;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1701783538;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1701941477;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(123, 'nonce_key', '>XW/87,GJ8BDOGz|S/g*pAJ~ZES;ICyC}*%&&_cv7NVV,HK!&:<*LTMd+_1aM5F6', 'no'),
(124, 'nonce_salt', ':Yx+sp$Sr6@W^F{Bz_~WB)S^]LV/RtH0$7rh=QPO?Oi^rpev)CIZL]9B]pM=iRX_', 'no'),
(128, 'theme_mods_twentytwentyfour', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1700488584;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'yes'),
(132, 'auth_key', '2A#V6VYQ<*7q%X- lO7z<+r#8/T814%N|wS^c&=TcCS!BUaRY1AT I^XT~oUrs`*', 'no'),
(133, 'auth_salt', 'fY{yzO]=]V6oU95lz[wq|Vw;pWstlNaRj%DZw#I{&?&xqc z@Q*O:0mfxk>.89P9', 'no'),
(134, 'logged_in_key', 'Gl]%r+AM!<E+% UV77[lPyp4i@m5hkuxGqA~3lCEsf%-Tf,(+QSfCLT{#IGCv7{|', 'no'),
(135, 'logged_in_salt', '$$`S;#Mr&D^LTDvvLB`+@0QJ@,]#)pJ(/;}Pva?p`V+3U/$|#BJV/iUrRPTSOI5D', 'no'),
(153, 'can_compress_scripts', '0', 'yes'),
(154, 'current_theme', 'MotaTheme', 'yes'),
(155, 'theme_mods_motatheme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:6:"footer";i:3;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(186, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(198, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.8.4";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1700590130;s:7:"version";s:5:"5.8.3";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(199, 'recently_activated', 'a:0:{}', 'yes'),
(201, 'secret_key', '}S6 b[pvvL#cwqfC+]tT/e/i in_5Hy3gQV#Y2?6rL4)aMQmx:MV>9@|r.!s;j]m', 'no'),
(245, 'WPLANG', 'fr_FR', 'yes'),
(246, 'new_admin_email', 'admin@motaphoto.com', 'yes'),
(266, 'secure_auth_key', 'K sZ_gU4Nu[m,@O7X]65hGnc@TzabXxD!Il%<.yFB ud{Te@PEn;T~(?vsA]J-kM', 'no'),
(267, 'secure_auth_salt', 'N4(8)#8I?o3wZxVR7JC;52_5rS03dETmjXQjLsRc-!:C~p.5Kj,O_HPG<$ cD#;O', 'no'),
(283, 'category_photo_children', 'a:0:{}', 'yes'),
(289, 'format_children', 'a:0:{}', 'yes'),
(293, 'acf_version', '6.2.4', 'yes'),
(343, 'mota_options_title', 'PHOTOGRAPHE EVENTS', 'yes'),
(346, 'mota_option_photos_on_front_page', '', 'yes'),
(353, 'mota_options_photos_on_front_page', '1', 'yes'),
(501, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1701531568;}', 'no'),
(556, 'blog_public', '1', 'yes'),
(557, 'upload_path', '', 'yes'),
(558, 'upload_url_path', '', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_menu_item_type', 'custom'),
(4, 7, '_menu_item_menu_item_parent', '0'),
(5, 7, '_menu_item_object_id', '7'),
(6, 7, '_menu_item_object', 'custom'),
(7, 7, '_menu_item_target', ''),
(8, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(9, 7, '_menu_item_xfn', ''),
(10, 7, '_menu_item_url', 'http://motaphoto.com'),
(11, 8, '_menu_item_type', 'post_type'),
(12, 8, '_menu_item_menu_item_parent', '0'),
(13, 8, '_menu_item_object_id', '2'),
(14, 8, '_menu_item_object', 'page'),
(15, 8, '_menu_item_target', ''),
(16, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 8, '_menu_item_xfn', ''),
(18, 8, '_menu_item_url', ''),
(19, 6, '_wp_trash_meta_status', 'publish'),
(20, 6, '_wp_trash_meta_time', '1700564982'),
(37, 9, '_wp_trash_meta_status', 'publish'),
(38, 9, '_wp_trash_meta_time', '1700564997'),
(39, 12, '_form', '<label> Nom\n    [text* fullname autocomplete:name] </label>\n\n<label> E-mail\n    [email* email autocomplete:email] </label>\n\n<label> Réf. photo\n    [text ref-photo] </label>\n\n<label> Message\n    [textarea* message] </label>\n\n[submit "Envoyer"]'),
(40, 12, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:23:"[_site_title] "Contact"";s:6:"sender";s:35:"[_site_title] <admin@motaphoto.com>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:182:"From: [fullname] [email]\nRéférence photo: [ref-photo]\n\nMessage:\n[message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).";s:18:"additional_headers";s:17:"Reply-To: [email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(41, 12, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:35:"[_site_title] <admin@motaphoto.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:220:"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(42, 12, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:41:"Please enter a date in YYYY-MM-DD format.";s:14:"date_too_early";s:32:"This field has a too early date.";s:13:"date_too_late";s:31:"This field has a too late date.";s:14:"invalid_number";s:22:"Please enter a number.";s:16:"number_too_small";s:34:"This field has a too small number.";s:16:"number_too_large";s:34:"This field has a too large number.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:30:"Please enter an email address.";s:11:"invalid_url";s:19:"Please enter a URL.";s:11:"invalid_tel";s:32:"Please enter a telephone number.";}'),
(43, 12, '_additional_settings', ''),
(44, 12, '_locale', 'en_US'),
(45, 12, '_hash', '71e88d2dc8d9ccb62cbb5ddbcdd8ec55d180fec0'),
(46, 2, '_edit_lock', '1701184094:1'),
(52, 14, '_menu_item_type', 'custom'),
(53, 14, '_menu_item_menu_item_parent', '0'),
(54, 14, '_menu_item_object_id', '14'),
(55, 14, '_menu_item_object', 'custom'),
(56, 14, '_menu_item_target', ''),
(57, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 14, '_menu_item_xfn', ''),
(59, 14, '_menu_item_url', '#contact'),
(60, 13, '_wp_trash_meta_status', 'publish'),
(61, 13, '_wp_trash_meta_time', '1700671272'),
(73, 34, '_wp_attached_file', '2023/11/nathalie-0-scaled.webp'),
(74, 34, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1707;s:4:"file";s:30:"2023/11/nathalie-0-scaled.webp";s:8:"filesize";i:202336;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-0-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:13834;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-0-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:61884;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-0-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7274;}s:12:"medium_large";a:5:{s:4:"file";s:23:"nathalie-0-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:43836;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-0-1536x1024.webp";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:101000;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-0-2048x1365.webp";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:148282;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-0.webp";}'),
(75, 35, '_wp_attached_file', '2023/11/nathalie-1-scaled.webp'),
(76, 35, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1707;s:4:"file";s:30:"2023/11/nathalie-1-scaled.webp";s:8:"filesize";i:411988;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-1-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:20006;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-1-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:120014;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8708;}s:12:"medium_large";a:5:{s:4:"file";s:23:"nathalie-1-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:80554;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-1-1536x1024.webp";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:208730;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-1-2048x1365.webp";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:305968;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-1.webp";}'),
(77, 36, '_wp_attached_file', '2023/11/nathalie-2-scaled.webp'),
(78, 36, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1544;s:4:"file";s:30:"2023/11/nathalie-2-scaled.webp";s:8:"filesize";i:812978;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-2-300x181.webp";s:5:"width";i:300;s:6:"height";i:181;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:24292;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-2-1024x617.webp";s:5:"width";i:1024;s:6:"height";i:617;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:208222;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12384;}s:12:"medium_large";a:5:{s:4:"file";s:23:"nathalie-2-768x463.webp";s:5:"width";i:768;s:6:"height";i:463;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:128440;}s:9:"1536x1536";a:5:{s:4:"file";s:24:"nathalie-2-1536x926.webp";s:5:"width";i:1536;s:6:"height";i:926;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:398714;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-2-2048x1235.webp";s:5:"width";i:2048;s:6:"height";i:1235;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:604244;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-2.webp";}'),
(79, 37, '_wp_attached_file', '2023/11/nathalie-3-scaled.webp'),
(80, 37, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1707;s:6:"height";i:2560;s:4:"file";s:30:"2023/11/nathalie-3-scaled.webp";s:8:"filesize";i:119144;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-3-200x300.webp";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8300;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-3-683x1024.webp";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:37192;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-3-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4060;}s:12:"medium_large";a:5:{s:4:"file";s:24:"nathalie-3-768x1152.webp";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:43194;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-3-1024x1536.webp";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:60924;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-3-1365x2048.webp";s:5:"width";i:1365;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:87096;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-3.webp";}'),
(81, 38, '_wp_attached_file', '2023/11/nathalie-4-scaled.webp'),
(82, 38, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1706;s:6:"height";i:2560;s:4:"file";s:30:"2023/11/nathalie-4-scaled.webp";s:8:"filesize";i:470838;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-4-200x300.webp";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:20570;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-4-683x1024.webp";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:144594;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-4-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8654;}s:12:"medium_large";a:5:{s:4:"file";s:24:"nathalie-4-768x1152.webp";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:167238;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-4-1024x1536.webp";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:249014;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-4-1365x2048.webp";s:5:"width";i:1365;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:357746;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-4.webp";}'),
(83, 39, '_wp_attached_file', '2023/11/nathalie-5-scaled.webp'),
(84, 39, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1707;s:6:"height";i:2560;s:4:"file";s:30:"2023/11/nathalie-5-scaled.webp";s:8:"filesize";i:670006;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-5-200x300.webp";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:21960;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-5-683x1024.webp";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:156974;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-5-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9242;}s:12:"medium_large";a:5:{s:4:"file";s:24:"nathalie-5-768x1152.webp";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:190290;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-5-1024x1536.webp";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:302504;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-5-1365x2048.webp";s:5:"width";i:1365;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:482552;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-5.webp";}'),
(85, 40, '_wp_attached_file', '2023/11/nathalie-6-scaled.webp'),
(86, 40, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:2048;s:4:"file";s:30:"2023/11/nathalie-6-scaled.webp";s:8:"filesize";i:365302;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-6-300x240.webp";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14142;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-6-1024x819.webp";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:88652;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-6-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5978;}s:12:"medium_large";a:5:{s:4:"file";s:23:"nathalie-6-768x614.webp";s:5:"width";i:768;s:6:"height";i:614;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:56216;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-6-1536x1229.webp";s:5:"width";i:1536;s:6:"height";i:1229;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:170036;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-6-2048x1638.webp";s:5:"width";i:2048;s:6:"height";i:1638;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:266156;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-6.webp";}'),
(87, 41, '_wp_attached_file', '2023/11/nathalie-7-scaled.webp'),
(88, 41, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1706;s:4:"file";s:30:"2023/11/nathalie-7-scaled.webp";s:8:"filesize";i:183972;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-7-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:13386;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-7-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:64132;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-7-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6252;}s:12:"medium_large";a:5:{s:4:"file";s:23:"nathalie-7-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:46034;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-7-1536x1024.webp";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:104106;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-7-2048x1365.webp";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:144434;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-7.webp";}'),
(89, 42, '_wp_attached_file', '2023/11/nathalie-8-scaled.webp'),
(90, 42, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1709;s:6:"height";i:2560;s:4:"file";s:30:"2023/11/nathalie-8-scaled.webp";s:8:"filesize";i:296424;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-8-200x300.webp";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:17134;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-8-684x1024.webp";s:5:"width";i:684;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:92560;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-8-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9144;}s:12:"medium_large";a:5:{s:4:"file";s:24:"nathalie-8-768x1150.webp";s:5:"width";i:768;s:6:"height";i:1150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:106652;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-8-1025x1536.webp";s:5:"width";i:1025;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:154414;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-8-1367x2048.webp";s:5:"width";i:1367;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:224654;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-8.webp";}'),
(91, 43, '_wp_attached_file', '2023/11/nathalie-9-scaled.webp'),
(92, 43, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1707;s:4:"file";s:30:"2023/11/nathalie-9-scaled.webp";s:8:"filesize";i:359738;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"nathalie-9-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14768;}s:5:"large";a:5:{s:4:"file";s:24:"nathalie-9-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:94948;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"nathalie-9-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7470;}s:12:"medium_large";a:5:{s:4:"file";s:23:"nathalie-9-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:62540;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"nathalie-9-1536x1024.webp";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:171724;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"nathalie-9-2048x1365.webp";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:269328;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"nathalie-9.webp";}'),
(93, 44, '_wp_attached_file', '2023/11/nathalie-10-scaled.webp'),
(94, 44, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1920;s:4:"file";s:31:"2023/11/nathalie-10-scaled.webp";s:8:"filesize";i:1294604;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"nathalie-10-300x225.webp";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:31580;}s:5:"large";a:5:{s:4:"file";s:25:"nathalie-10-1024x768.webp";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:300962;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"nathalie-10-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11178;}s:12:"medium_large";a:5:{s:4:"file";s:24:"nathalie-10-768x576.webp";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:178468;}s:9:"1536x1536";a:5:{s:4:"file";s:26:"nathalie-10-1536x1152.webp";s:5:"width";i:1536;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:597454;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"nathalie-10-2048x1536.webp";s:5:"width";i:2048;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:926650;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:16:"nathalie-10.webp";}'),
(95, 45, '_wp_attached_file', '2023/11/nathalie-11-scaled.webp'),
(96, 45, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1709;s:4:"file";s:31:"2023/11/nathalie-11-scaled.webp";s:8:"filesize";i:190014;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"nathalie-11-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14456;}s:5:"large";a:5:{s:4:"file";s:25:"nathalie-11-1024x684.webp";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:63444;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"nathalie-11-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7520;}s:12:"medium_large";a:5:{s:4:"file";s:24:"nathalie-11-768x513.webp";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:44978;}s:9:"1536x1536";a:5:{s:4:"file";s:26:"nathalie-11-1536x1025.webp";s:5:"width";i:1536;s:6:"height";i:1025;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:102028;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"nathalie-11-2048x1367.webp";s:5:"width";i:2048;s:6:"height";i:1367;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:144194;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:16:"nathalie-11.webp";}'),
(97, 46, '_wp_attached_file', '2023/11/nathalie-12-scaled.webp'),
(98, 46, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1707;s:4:"file";s:31:"2023/11/nathalie-12-scaled.webp";s:8:"filesize";i:316238;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"nathalie-12-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:20248;}s:5:"large";a:5:{s:4:"file";s:25:"nathalie-12-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:106280;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"nathalie-12-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10310;}s:12:"medium_large";a:5:{s:4:"file";s:24:"nathalie-12-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:74466;}s:9:"1536x1536";a:5:{s:4:"file";s:26:"nathalie-12-1536x1024.webp";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:175730;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"nathalie-12-2048x1365.webp";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:238806;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:16:"nathalie-12.webp";}'),
(99, 47, '_wp_attached_file', '2023/11/nathalie-13-scaled.webp'),
(100, 47, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1707;s:6:"height";i:2560;s:4:"file";s:31:"2023/11/nathalie-13-scaled.webp";s:8:"filesize";i:140504;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"nathalie-13-200x300.webp";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9110;}s:5:"large";a:5:{s:4:"file";s:25:"nathalie-13-683x1024.webp";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:45300;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"nathalie-13-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5218;}s:12:"medium_large";a:5:{s:4:"file";s:25:"nathalie-13-768x1152.webp";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:52384;}s:9:"1536x1536";a:5:{s:4:"file";s:26:"nathalie-13-1024x1536.webp";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:75054;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"nathalie-13-1365x2048.webp";s:5:"width";i:1365;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:107924;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:16:"nathalie-13.webp";}'),
(101, 48, '_wp_attached_file', '2023/11/nathalie-14-scaled.webp'),
(102, 48, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1707;s:6:"height";i:2560;s:4:"file";s:31:"2023/11/nathalie-14-scaled.webp";s:8:"filesize";i:358882;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"nathalie-14-200x300.webp";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11338;}s:5:"large";a:5:{s:4:"file";s:25:"nathalie-14-683x1024.webp";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:88696;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"nathalie-14-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5474;}s:12:"medium_large";a:5:{s:4:"file";s:25:"nathalie-14-768x1152.webp";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:106686;}s:9:"1536x1536";a:5:{s:4:"file";s:26:"nathalie-14-1024x1536.webp";s:5:"width";i:1024;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:166656;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"nathalie-14-1365x2048.webp";s:5:"width";i:1365;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:260310;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:16:"nathalie-14.webp";}'),
(103, 49, '_wp_attached_file', '2023/11/nathalie-15-scaled.webp'),
(104, 49, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1709;s:6:"height";i:2560;s:4:"file";s:31:"2023/11/nathalie-15-scaled.webp";s:8:"filesize";i:478794;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"nathalie-15-200x300.webp";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:21918;}s:5:"large";a:5:{s:4:"file";s:25:"nathalie-15-684x1024.webp";s:5:"width";i:684;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:147156;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"nathalie-15-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9154;}s:12:"medium_large";a:5:{s:4:"file";s:25:"nathalie-15-768x1150.webp";s:5:"width";i:768;s:6:"height";i:1150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:171896;}s:9:"1536x1536";a:5:{s:4:"file";s:26:"nathalie-15-1025x1536.webp";s:5:"width";i:1025;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:256184;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"nathalie-15-1367x2048.webp";s:5:"width";i:1367;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:363006;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:16:"nathalie-15.webp";}'),
(105, 50, '_edit_last', '1'),
(106, 50, '_edit_lock', '1700851223:1'),
(107, 34, '_wp_attachment_image_alt', 'Un toast lors d\'une réception'),
(108, 35, '_wp_attachment_image_alt', 'Table dressée lors d\'une réception'),
(109, 36, '_wp_attachment_image_alt', 'Fans devant une scène lors d\'un concert'),
(110, 37, '_wp_attachment_image_alt', 'Table dressée pour un mariage'),
(111, 38, '_wp_attachment_image_alt', 'Autel de mariage'),
(112, 39, '_wp_attachment_image_alt', 'La mariée et le marié qui s\'embrasse'),
(113, 40, '_wp_attachment_image_alt', 'Danse entre un homme et une femme'),
(114, 41, '_wp_attachment_image_alt', 'Table dressée pour le mariage'),
(115, 42, '_wp_attachment_image_alt', 'Photo d\'une personne lors d\'un bal masqué'),
(116, 43, '_wp_attachment_image_alt', 'Danse de groupe avec la mariée'),
(117, 44, '_wp_attachment_image_alt', 'Foule au stade un jour de match'),
(118, 45, '_wp_attachment_image_alt', 'Réunion de personnes avant un concert'),
(119, 46, '_wp_attachment_image_alt', 'Bière ou eau plate?'),
(120, 47, '_wp_attachment_image_alt', 'Bouquet final lors d\'un mariage'),
(121, 48, '_wp_attachment_image_alt', 'La mariée et le marié en train de marcher'),
(122, 49, '_wp_attachment_image_alt', 'L\'équipe de la mariée au complet'),
(123, 50, '_thumbnail_id', '34'),
(124, 50, 'type', 'Argentique'),
(125, 50, '_type', 'field_d81f40bd'),
(126, 50, 'reference', 'bf2385'),
(127, 50, '_reference', 'field_410fda4a'),
(128, 51, '_edit_last', '1'),
(129, 51, '_edit_lock', '1700851390:1'),
(130, 51, 'type', 'Argentique'),
(131, 51, '_type', 'field_d81f40bd'),
(132, 51, 'reference', 'bf2386') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(133, 51, '_reference', 'field_410fda4a'),
(134, 52, '_edit_last', '1'),
(135, 52, '_edit_lock', '1700851397:1'),
(136, 52, 'type', 'Numérique'),
(137, 52, '_type', 'field_d81f40bd'),
(138, 52, 'reference', 'bf2387'),
(139, 52, '_reference', 'field_410fda4a'),
(140, 53, '_edit_last', '1'),
(141, 53, '_edit_lock', '1700851408:1'),
(142, 53, 'type', 'Argentique'),
(143, 53, '_type', 'field_d81f40bd'),
(144, 53, 'reference', 'bf2388'),
(145, 53, '_reference', 'field_410fda4a'),
(146, 54, '_edit_last', '1'),
(147, 54, '_edit_lock', '1700851416:1'),
(148, 54, 'type', 'Numérique'),
(149, 54, '_type', 'field_d81f40bd'),
(150, 54, 'reference', 'bf2389'),
(151, 54, '_reference', 'field_410fda4a'),
(152, 55, '_edit_last', '1'),
(153, 55, '_edit_lock', '1700851422:1'),
(154, 55, '_thumbnail_id', '39'),
(155, 55, 'type', 'Numérique'),
(156, 55, '_type', 'field_d81f40bd'),
(157, 55, 'reference', 'bf2390'),
(158, 55, '_reference', 'field_410fda4a'),
(159, 56, '_edit_last', '1'),
(160, 56, '_edit_lock', '1700851432:1'),
(161, 56, '_thumbnail_id', '40'),
(162, 56, 'type', 'Numérique'),
(163, 56, '_type', 'field_d81f40bd'),
(164, 56, 'reference', 'bf2391'),
(165, 56, '_reference', 'field_410fda4a'),
(166, 57, '_edit_last', '1'),
(167, 57, '_edit_lock', '1700851440:1'),
(168, 57, '_thumbnail_id', '41'),
(169, 57, 'type', 'Numérique'),
(170, 57, '_type', 'field_d81f40bd'),
(171, 57, 'reference', 'bf2392'),
(172, 57, '_reference', 'field_410fda4a'),
(173, 58, '_edit_last', '1'),
(174, 58, '_edit_lock', '1700851447:1'),
(175, 58, '_thumbnail_id', '42'),
(176, 58, 'type', 'Numérique'),
(177, 58, '_type', 'field_d81f40bd'),
(178, 58, 'reference', 'bf2393'),
(179, 58, '_reference', 'field_410fda4a'),
(180, 59, '_edit_last', '1'),
(181, 59, '_edit_lock', '1700851456:1'),
(182, 59, '_thumbnail_id', '43'),
(183, 59, 'type', 'Numérique'),
(184, 59, '_type', 'field_d81f40bd'),
(185, 59, 'reference', 'bf2394'),
(186, 59, '_reference', 'field_410fda4a'),
(187, 60, '_edit_last', '1'),
(188, 60, '_edit_lock', '1700851465:1'),
(189, 60, '_thumbnail_id', '44'),
(190, 60, 'type', 'Numérique'),
(191, 60, '_type', 'field_d81f40bd'),
(192, 60, 'reference', 'bf2395'),
(193, 60, '_reference', 'field_410fda4a'),
(194, 61, '_edit_last', '1'),
(195, 61, '_edit_lock', '1700851470:1'),
(196, 61, '_thumbnail_id', '45'),
(197, 61, 'type', 'Argentique'),
(198, 61, '_type', 'field_d81f40bd'),
(199, 61, 'reference', 'bf2396'),
(200, 61, '_reference', 'field_410fda4a'),
(201, 62, '_edit_last', '1'),
(202, 62, '_edit_lock', '1700902960:1'),
(203, 62, '_thumbnail_id', '46'),
(204, 62, 'type', 'Numérique'),
(205, 62, '_type', 'field_d81f40bd'),
(206, 62, 'reference', 'bf2397'),
(207, 62, '_reference', 'field_410fda4a'),
(208, 63, '_edit_last', '1'),
(209, 63, '_edit_lock', '1700851478:1'),
(210, 63, '_thumbnail_id', '47'),
(211, 63, 'type', 'Numérique'),
(212, 63, '_type', 'field_d81f40bd'),
(213, 63, 'reference', 'bf2398'),
(214, 63, '_reference', 'field_410fda4a'),
(215, 64, '_edit_last', '1'),
(216, 64, '_edit_lock', '1700851484:1'),
(217, 64, '_thumbnail_id', '48'),
(218, 64, 'type', 'Argentique'),
(219, 64, '_type', 'field_d81f40bd'),
(220, 64, 'reference', 'bf2399'),
(221, 64, '_reference', 'field_410fda4a'),
(222, 65, '_edit_last', '1'),
(223, 65, '_edit_lock', '1701249843:1'),
(224, 65, '_thumbnail_id', '49'),
(225, 65, 'type', 'Numérique'),
(226, 65, '_type', 'field_d81f40bd'),
(227, 65, 'reference', 'bf2400'),
(228, 65, '_reference', 'field_410fda4a'),
(229, 51, '_thumbnail_id', '35'),
(230, 52, '_thumbnail_id', '36'),
(231, 53, '_thumbnail_id', '37'),
(232, 54, '_thumbnail_id', '38') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(233, 50, '_wp_old_date', '2023-11-24'),
(234, 51, '_wp_old_date', '2023-11-24'),
(235, 51, '_wp_old_date', '2021-11-24'),
(236, 52, '_wp_old_date', '2023-11-24'),
(237, 53, '_wp_old_date', '2023-11-24'),
(238, 54, '_wp_old_date', '2023-11-24'),
(239, 55, '_wp_old_date', '2023-11-24'),
(240, 56, '_wp_old_date', '2023-11-24'),
(241, 57, '_wp_old_date', '2023-11-24'),
(242, 58, '_wp_old_date', '2023-11-24'),
(243, 59, '_wp_old_date', '2023-11-24'),
(244, 60, '_wp_old_date', '2023-11-24'),
(245, 61, '_wp_old_date', '2023-11-24'),
(246, 62, '_wp_old_date', '2023-11-24'),
(247, 63, '_wp_old_date', '2023-11-24'),
(248, 64, '_wp_old_date', '2023-11-24'),
(249, 65, '_wp_old_date', '2023-11-24'),
(250, 7, '_wp_old_date', '2023-11-21'),
(251, 66, '_wp_trash_meta_status', 'publish'),
(252, 66, '_wp_trash_meta_time', '1701178981'),
(253, 71, '_edit_lock', '1701530436:1'),
(254, 73, '_edit_lock', '1701530568:1'),
(255, 74, '_edit_lock', '1701530392:1'),
(256, 3, '_edit_lock', '1701530479:1'),
(257, 77, '_menu_item_type', 'post_type'),
(258, 77, '_menu_item_menu_item_parent', '0'),
(259, 77, '_menu_item_object_id', '71'),
(260, 77, '_menu_item_object', 'page'),
(261, 77, '_menu_item_target', ''),
(262, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(263, 77, '_menu_item_xfn', ''),
(264, 77, '_menu_item_url', ''),
(265, 78, '_menu_item_type', 'post_type'),
(266, 78, '_menu_item_menu_item_parent', '0'),
(267, 78, '_menu_item_object_id', '3'),
(268, 78, '_menu_item_object', 'page'),
(269, 78, '_menu_item_target', ''),
(270, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(271, 78, '_menu_item_xfn', ''),
(272, 78, '_menu_item_url', ''),
(273, 76, '_wp_trash_meta_status', 'publish'),
(274, 76, '_wp_trash_meta_time', '1701530672') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-11-20 13:36:40', '2023-11-20 13:36:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-11-20 13:36:40', '2023-11-20 13:36:40', '', 0, 'http://motaphoto.com/?p=1', 0, 'post', '', 1),
(2, 1, '2023-11-20 13:36:40', '2023-11-20 13:36:40', '', 'À propos', '', 'publish', 'closed', 'open', '', 'a-propos', '', '', '2023-11-28 13:45:36', '2023-11-28 13:45:36', '', 0, 'http://motaphoto.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-11-20 13:36:40', '2023-11-20 13:36:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://motaphoto.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Vie privée', '', 'publish', 'closed', 'open', '', 'vie-privee', '', '', '2023-12-02 15:23:41', '2023-12-02 15:23:41', '', 0, 'http://motaphoto.com/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-11-20 13:38:59', '2023-11-20 13:38:59', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-11-20 13:38:59', '2023-11-20 13:38:59', '', 0, 'http://motaphoto.com/?p=4', 0, 'wp_navigation', '', 0),
(6, 1, '2023-11-21 11:09:42', '2023-11-21 11:09:42', '{"motatheme::nav_menu_locations[primary]":{"value":-6674764639002016000,"type":"theme_mod","user_id":1,"date_modified_gmt":"2023-11-21 11:09:42"},"nav_menu[-6674764639002016000]":{"value":{"name":"Header","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1,"date_modified_gmt":"2023-11-21 11:09:42"},"nav_menu_item[-2947185626817300500]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"Home","url":"http:\\/\\/motaphoto.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Home","nav_menu_term_id":-6674764639002016000,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-11-21 11:09:42"},"nav_menu_item[-5670415670998569000]":{"value":{"object_id":2,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Sample Page","url":"http:\\/\\/motaphoto.com\\/?page_id=2","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Sample Page","nav_menu_term_id":-6674764639002016000,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-11-21 11:09:42"}}', '', '', 'trash', 'closed', 'closed', '', '9f756417-cf4b-4155-874b-b44b8330d638', '', '', '2023-11-21 11:09:42', '2023-11-21 11:09:42', '', 0, 'http://motaphoto.com/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2023-11-28 13:43:01', '2023-11-21 11:09:42', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-11-28 13:43:01', '2023-11-28 13:43:01', '', 0, 'http://motaphoto.com/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2023-11-21 11:09:42', '2023-11-21 11:09:42', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2023-11-21 11:09:42', '2023-11-21 11:09:42', '', 0, 'http://motaphoto.com/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2023-11-21 11:09:57', '2023-11-21 11:09:57', '{"motatheme::nav_menu_locations[footer]":{"value":-6702829001182409000,"type":"theme_mod","user_id":1,"date_modified_gmt":"2023-11-21 11:09:57"},"nav_menu[-6702829001182409000]":{"value":{"name":"Footer","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1,"date_modified_gmt":"2023-11-21 11:09:57"},"nav_menu_item[-4899577644159570000]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"Home","url":"http:\\/\\/motaphoto.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Home","nav_menu_term_id":-6702829001182409000,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-11-21 11:09:57"},"nav_menu_item[-5022219853009394000]":{"value":{"object_id":2,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Sample Page","url":"http:\\/\\/motaphoto.com\\/?page_id=2","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Sample Page","nav_menu_term_id":-6702829001182409000,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-11-21 11:09:57"}}', '', '', 'trash', 'closed', 'closed', '', '1cff43ca-9175-448a-bb9a-cdaaa6c42dca', '', '', '2023-11-21 11:09:57', '2023-11-21 11:09:57', '', 0, 'http://motaphoto.com/?p=9', 0, 'customize_changeset', '', 0),
(12, 0, '2023-11-21 18:08:50', '2023-11-21 18:08:50', '<label> Nom\r\n    [text* fullname autocomplete:name] </label>\r\n\r\n<label> E-mail\r\n    [email* email autocomplete:email] </label>\r\n\r\n<label> Réf. photo\r\n    [text ref-photo] </label>\r\n\r\n<label> Message\r\n    [textarea* message] </label>\r\n\r\n[submit "Envoyer"]\n1\n[_site_title] "Contact"\n[_site_title] <admin@motaphoto.com>\n[_site_admin_email]\nFrom: [fullname] [email]\r\nRéférence photo: [ref-photo]\r\n\r\nMessage:\r\n[message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <admin@motaphoto.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-11-22 14:50:39', '2023-11-22 14:50:39', '', 0, 'http://motaphoto.com/?post_type=wpcf7_contact_form&#038;p=12', 0, 'wpcf7_contact_form', '', 0),
(13, 1, '2023-11-22 16:41:12', '2023-11-22 16:41:12', '{"nav_menu_item[-8681141825491165000]":{"value":{"object_id":0,"object":"custom","menu_item_parent":0,"position":3,"type":"custom","title":"Contact","url":"#contact","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Contact","nav_menu_term_id":2,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-11-22 16:41:12"}}', '', '', 'trash', 'closed', 'closed', '', '25b3e683-722d-4b86-90d9-d0d87827e4fa', '', '', '2023-11-22 16:41:12', '2023-11-22 16:41:12', '', 0, 'http://motaphoto.com/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2023-11-22 16:41:12', '2023-11-22 16:41:12', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-11-22 16:41:12', '2023-11-22 16:41:12', '', 0, 'http://motaphoto.com/?p=14', 3, 'nav_menu_item', '', 0),
(34, 1, '2023-11-24 15:10:50', '2023-11-24 15:10:50', '', 'nathalie-0', '', 'inherit', 'open', 'closed', '', 'nathalie-0', '', '', '2023-11-24 15:13:18', '2023-11-24 15:13:18', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-0.webp', 0, 'attachment', 'image/webp', 0),
(35, 1, '2023-11-24 15:10:55', '2023-11-24 15:10:55', '', 'nathalie-1', '', 'inherit', 'open', 'closed', '', 'nathalie-1', '', '', '2023-11-24 15:13:40', '2023-11-24 15:13:40', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-1.webp', 0, 'attachment', 'image/webp', 0),
(36, 1, '2023-11-24 15:11:00', '2023-11-24 15:11:00', '', 'nathalie-2', '', 'inherit', 'open', 'closed', '', 'nathalie-2', '', '', '2023-11-24 15:14:09', '2023-11-24 15:14:09', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-2.webp', 0, 'attachment', 'image/webp', 0),
(37, 1, '2023-11-24 15:11:03', '2023-11-24 15:11:03', '', 'nathalie-3', '', 'inherit', 'open', 'closed', '', 'nathalie-3', '', '', '2023-11-24 15:14:29', '2023-11-24 15:14:29', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-3.webp', 0, 'attachment', 'image/webp', 0),
(38, 1, '2023-11-24 15:11:08', '2023-11-24 15:11:08', '', 'nathalie-4', '', 'inherit', 'open', 'closed', '', 'nathalie-4', '', '', '2023-11-24 15:15:34', '2023-11-24 15:15:34', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-4.webp', 0, 'attachment', 'image/webp', 0),
(39, 1, '2023-11-24 15:11:11', '2023-11-24 15:11:11', '', 'nathalie-5', '', 'inherit', 'open', 'closed', '', 'nathalie-5', '', '', '2023-11-24 15:15:51', '2023-11-24 15:15:51', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-5.webp', 0, 'attachment', 'image/webp', 0),
(40, 1, '2023-11-24 15:11:16', '2023-11-24 15:11:16', '', 'nathalie-6', '', 'inherit', 'open', 'closed', '', 'nathalie-6', '', '', '2023-11-24 15:16:43', '2023-11-24 15:16:43', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-6.webp', 0, 'attachment', 'image/webp', 0),
(41, 1, '2023-11-24 15:11:20', '2023-11-24 15:11:20', '', 'nathalie-7', '', 'inherit', 'open', 'closed', '', 'nathalie-7', '', '', '2023-11-24 15:17:08', '2023-11-24 15:17:08', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-7.webp', 0, 'attachment', 'image/webp', 0),
(42, 1, '2023-11-24 15:11:23', '2023-11-24 15:11:23', '', 'nathalie-8', '', 'inherit', 'open', 'closed', '', 'nathalie-8', '', '', '2023-11-24 15:17:45', '2023-11-24 15:17:45', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-8.webp', 0, 'attachment', 'image/webp', 0),
(43, 1, '2023-11-24 15:11:28', '2023-11-24 15:11:28', '', 'nathalie-9', '', 'inherit', 'open', 'closed', '', 'nathalie-9', '', '', '2023-11-24 15:18:03', '2023-11-24 15:18:03', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-9.webp', 0, 'attachment', 'image/webp', 0),
(44, 1, '2023-11-24 15:11:32', '2023-11-24 15:11:32', '', 'nathalie-10', '', 'inherit', 'open', 'closed', '', 'nathalie-10', '', '', '2023-11-24 15:18:48', '2023-11-24 15:18:48', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-10.webp', 0, 'attachment', 'image/webp', 0),
(45, 1, '2023-11-24 15:11:36', '2023-11-24 15:11:36', '', 'nathalie-11', '', 'inherit', 'open', 'closed', '', 'nathalie-11', '', '', '2023-11-24 15:19:19', '2023-11-24 15:19:19', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-11.webp', 0, 'attachment', 'image/webp', 0),
(46, 1, '2023-11-24 15:11:41', '2023-11-24 15:11:41', '', 'nathalie-12', '', 'inherit', 'open', 'closed', '', 'nathalie-12', '', '', '2023-11-24 15:19:42', '2023-11-24 15:19:42', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-12.webp', 0, 'attachment', 'image/webp', 0),
(47, 1, '2023-11-24 15:11:46', '2023-11-24 15:11:46', '', 'nathalie-13', '', 'inherit', 'open', 'closed', '', 'nathalie-13', '', '', '2023-11-24 15:19:57', '2023-11-24 15:19:57', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-13.webp', 0, 'attachment', 'image/webp', 0),
(48, 1, '2023-11-24 15:11:51', '2023-11-24 15:11:51', '', 'nathalie-14', '', 'inherit', 'open', 'closed', '', 'nathalie-14', '', '', '2023-11-24 15:20:19', '2023-11-24 15:20:19', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-14.webp', 0, 'attachment', 'image/webp', 0),
(49, 1, '2023-11-24 15:11:56', '2023-11-24 15:11:56', '', 'nathalie-15', '', 'inherit', 'open', 'closed', '', 'nathalie-15', '', '', '2023-11-24 15:20:44', '2023-11-24 15:20:44', '', 0, 'http://motaphoto.com/app/uploads/2023/11/nathalie-15.webp', 0, 'attachment', 'image/webp', 0),
(50, 1, '2019-11-24 15:20:51', '2019-11-24 15:20:51', '', 'Santé!', '', 'publish', 'closed', 'closed', '', 'sante', '', '', '2023-11-24 18:42:45', '2023-11-24 18:42:45', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=50', 0, 'photos', '', 0),
(51, 1, '2020-11-24 15:22:04', '2020-11-24 15:22:04', '', 'Et bon anniversaire!', '', 'publish', 'closed', 'closed', '', 'et-bon-anniversaire', '', '', '2023-11-24 18:43:10', '2023-11-24 18:43:10', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=51', 0, 'photos', '', 0),
(52, 1, '2021-11-24 15:22:35', '2021-11-24 15:22:35', '', 'Let\'s party!', '', 'publish', 'closed', 'closed', '', 'lets-party', '', '', '2023-11-24 18:43:17', '2023-11-24 18:43:17', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=52', 0, 'photos', '', 0),
(53, 1, '2019-11-24 15:23:08', '2019-11-24 15:23:08', '', 'Tout est installé', '', 'publish', 'closed', 'closed', '', 'tout-est-installe', '', '', '2023-11-24 18:43:28', '2023-11-24 18:43:28', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=53', 0, 'photos', '', 0),
(54, 1, '2020-11-24 15:23:35', '2020-11-24 15:23:35', '', 'Vers l\'éternité', '', 'publish', 'closed', 'closed', '', 'vers-leternite', '', '', '2023-11-24 18:43:36', '2023-11-24 18:43:36', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=54', 0, 'photos', '', 0),
(55, 1, '2021-11-24 15:24:15', '2021-11-24 15:24:15', '', 'Embrassez la mariée', '', 'publish', 'closed', 'closed', '', 'embrassez-la-mariee', '', '', '2023-11-24 18:43:42', '2023-11-24 18:43:42', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=55', 0, 'photos', '', 0),
(56, 1, '2020-11-24 15:24:48', '2020-11-24 15:24:48', '', 'Dansons ensemble', '', 'publish', 'closed', 'closed', '', 'dansons-ensemble', '', '', '2023-11-24 18:43:52', '2023-11-24 18:43:52', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=56', 0, 'photos', '', 0),
(57, 1, '2019-11-24 15:25:18', '2019-11-24 15:25:18', '', 'Le menu', '', 'publish', 'closed', 'closed', '', 'le-menu', '', '', '2023-11-24 18:44:00', '2023-11-24 18:44:00', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=57', 0, 'photos', '', 0),
(58, 1, '2021-11-24 15:25:50', '2021-11-24 15:25:50', '', 'Au bal masqué', '', 'publish', 'closed', 'closed', '', 'au-bal-masque', '', '', '2023-11-24 18:44:07', '2023-11-24 18:44:07', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=58', 0, 'photos', '', 0),
(59, 1, '2022-11-24 15:26:19', '2022-11-24 15:26:19', '', 'Let\'s dance!', '', 'publish', 'closed', 'closed', '', 'lets-dance', '', '', '2023-11-24 18:44:16', '2023-11-24 18:44:16', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=59', 0, 'photos', '', 0),
(60, 1, '2022-11-24 15:26:54', '2022-11-24 15:26:54', '', 'Jour de match', '', 'publish', 'closed', 'closed', '', 'jour-de-match', '', '', '2023-11-24 18:44:25', '2023-11-24 18:44:25', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=60', 0, 'photos', '', 0),
(61, 1, '2022-11-24 15:27:22', '2022-11-24 15:27:22', '', 'Préparation', '', 'publish', 'closed', 'closed', '', 'preparation', '', '', '2023-11-24 18:44:30', '2023-11-24 18:44:30', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=61', 0, 'photos', '', 0),
(62, 1, '2022-11-24 15:27:49', '2022-11-24 15:27:49', '', 'Bière ou eau plate?', '', 'publish', 'closed', 'closed', '', 'biere-ou-eau-plate', '', '', '2023-11-24 19:03:19', '2023-11-24 19:03:19', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=62', 0, 'photos', '', 0),
(63, 1, '2022-11-24 15:28:17', '2022-11-24 15:28:17', '', 'Bouquet final', '', 'publish', 'closed', 'closed', '', 'bouquet-final', '', '', '2023-11-24 18:44:38', '2023-11-24 18:44:38', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=63', 0, 'photos', '', 0),
(64, 1, '2022-11-24 15:28:40', '2022-11-24 15:28:40', '', 'Du soir au matin', '', 'publish', 'closed', 'closed', '', 'du-soir-au-matin', '', '', '2023-11-24 18:44:44', '2023-11-24 18:44:44', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=64', 0, 'photos', '', 0),
(65, 1, '2022-11-24 15:29:06', '2022-11-24 15:29:06', '', 'Team mariée', '', 'publish', 'closed', 'closed', '', 'team-mariee', '', '', '2023-11-24 18:44:50', '2023-11-24 18:44:50', '', 0, 'https://motaphoto.com/?post_type=photos&#038;p=65', 0, 'photos', '', 0),
(66, 1, '2023-11-28 13:43:01', '2023-11-28 13:43:01', '{"nav_menu_item[7]":{"value":{"menu_item_parent":0,"object_id":7,"object":"custom","type":"custom","type_label":"Lien personnalis\\u00e9","title":"Accueil","url":"http:\\/\\/motaphoto.com","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":1,"status":"publish","original_title":"","_invalid":false},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-11-28 13:43:01"}}', '', '', 'trash', 'closed', 'closed', '', 'bc7b0810-489e-4e33-93de-1e7c206dbf53', '', '', '2023-11-28 13:43:01', '2023-11-28 13:43:01', '', 0, 'http://motaphoto.com/bc7b0810-489e-4e33-93de-1e7c206dbf53/', 0, 'customize_changeset', '', 0),
(70, 1, '2023-11-28 15:11:14', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-11-28 15:11:14', '0000-00-00 00:00:00', '', 0, 'https://motaphoto.com/?p=70', 0, 'post', '', 0),
(71, 1, '2023-12-02 15:19:41', '2023-12-02 15:19:41', '', 'Mentions légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2023-12-02 15:19:41', '2023-12-02 15:19:41', '', 0, 'https://motaphoto.com/?page_id=71', 0, 'page', '', 0),
(73, 1, '2023-12-02 15:19:46', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-12-02 15:19:46', '0000-00-00 00:00:00', '', 0, 'https://motaphoto.com/?page_id=73', 0, 'page', '', 0),
(74, 1, '2023-12-02 15:19:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-12-02 15:19:52', '0000-00-00 00:00:00', '', 0, 'https://motaphoto.com/?page_id=74', 0, 'page', '', 0),
(76, 1, '2023-12-02 15:24:32', '2023-12-02 15:24:32', '{"nav_menu_item[10]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-12-02 15:24:32"},"nav_menu_item[11]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-12-02 15:24:32"},"nav_menu_item[-8978254128338905000]":{"value":{"object_id":71,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"Mentions l\\u00e9gales","url":"https:\\/\\/motaphoto.com\\/mentions-legales\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Mentions l\\u00e9gales","nav_menu_term_id":3,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-12-02 15:24:32"},"nav_menu_item[-1867768508680491000]":{"value":{"object_id":3,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Vie priv\\u00e9e","url":"https:\\/\\/motaphoto.com\\/vie-privee\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Vie priv\\u00e9e","nav_menu_term_id":3,"_invalid":false,"type_label":"Page de politique de confidentialit\\u00e9"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2023-12-02 15:24:32"}}', '', '', 'trash', 'closed', 'closed', '', 'd1ae62c5-8c82-481b-a24d-497fdccfd31b', '', '', '2023-12-02 15:24:32', '2023-12-02 15:24:32', '', 0, 'https://motaphoto.com/d1ae62c5-8c82-481b-a24d-497fdccfd31b/', 0, 'customize_changeset', '', 0),
(77, 1, '2023-12-02 15:24:32', '2023-12-02 15:24:32', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2023-12-02 15:24:32', '2023-12-02 15:24:32', '', 0, 'https://motaphoto.com/77/', 1, 'nav_menu_item', '', 0),
(78, 1, '2023-12-02 15:24:32', '2023-12-02 15:24:32', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2023-12-02 15:24:32', '2023-12-02 15:24:32', '', 0, 'https://motaphoto.com/78/', 2, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(8, 2, 0),
(14, 2, 0),
(50, 4, 0),
(50, 9, 0),
(51, 4, 0),
(51, 9, 0),
(52, 5, 0),
(52, 9, 0),
(53, 6, 0),
(53, 8, 0),
(54, 6, 0),
(54, 8, 0),
(55, 6, 0),
(55, 8, 0),
(56, 6, 0),
(56, 9, 0),
(57, 6, 0),
(57, 9, 0),
(58, 5, 0),
(58, 8, 0),
(59, 6, 0),
(59, 9, 0),
(60, 7, 0),
(60, 9, 0),
(61, 5, 0),
(61, 9, 0),
(62, 5, 0),
(62, 9, 0),
(63, 6, 0),
(63, 8, 0),
(64, 6, 0),
(64, 8, 0),
(65, 6, 0),
(65, 8, 0),
(77, 3, 0),
(78, 3, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'category_photo', '', 0, 2),
(5, 5, 'category_photo', '', 0, 4),
(6, 6, 'category_photo', '', 0, 9),
(7, 7, 'category_photo', '', 0, 1),
(8, 8, 'format', '', 0, 7),
(9, 9, 'format', '', 0, 9) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header', 'header', 0),
(3, 'Footer', 'footer', 0),
(4, 'Réception', 'reception', 0),
(5, 'Concert', 'concert', 0),
(6, 'Mariage', 'mariage', 0),
(7, 'Télévision', 'television', 0),
(8, 'Portrait', 'portrait', 0),
(9, 'Paysage', 'paysage', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"0905fbb06cd4639b40c4900063414efc76af50ec2f01267808979795db008b4d";a:4:{s:10:"expiration";i:1701702430;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0";s:5:"login";i:1701529630;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '70'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:"5.8";}'),
(20, 1, 'wp_persisted_preferences', 'a:2:{s:14:"core/edit-post";a:3:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;s:10:"openPanels";a:1:{i:0;s:11:"post-status";}}s:9:"_modified";s:24:"2023-11-24T14:34:55.334Z";}'),
(21, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(22, 1, 'acf_user_settings', 'a:2:{s:19:"post-type-first-run";b:1;s:20:"taxonomies-first-run";b:1;}'),
(23, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1700837894') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$2y$10$GmET.wrJ.NxLMQOs3ZuSleETmZHU1HaHiDg.ulf1jw2bdOdDkR2ra', 'admin', 'admin@motaphoto.com', 'http://motaphoto.com/wp', '2023-11-20 13:36:40', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

