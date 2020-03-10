-- phpMyAdmin SQL Dump
-- version 5.0.0-rc1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 10 mars 2020 à 15:27
-- Version du serveur :  5.7.24-log
-- Version de PHP :  7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `youpi`
--

-- --------------------------------------------------------

--
-- Structure de la table `yo_commentmeta`
--

CREATE TABLE `yo_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_comments`
--

CREATE TABLE `yo_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_comments`
--

INSERT INTO `yo_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-09 09:51:46', '2020-03-09 08:51:46', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `yo_links`
--

CREATE TABLE `yo_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_options`
--

CREATE TABLE `yo_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_options`
--

INSERT INTO `yo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Youpi_WP', 'yes'),
(2, 'home', 'http://localhost/Youpi_WP', 'yes'),
(3, 'blogname', 'Youpi !', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dumasclementjulien@yahoo.fr', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:148:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"produit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produit/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produit/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"produit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"produit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:33:\"produit/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categorie-produit/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categorie-produit/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categorie-produit/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiquette-produit/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiquette-produit/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:25:\"fakerpress/fakerpress.php\";i:1;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'youpitheme', 'yes'),
(41, 'stylesheet', 'youpitheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '9', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '96', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1599295906', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'yo_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:6:\"text-2\";i:7;s:6:\"text-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:37:{i:1583834437;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583834449;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583845227;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583845228;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1583845249;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583845255;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583848307;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583848825;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1583856027;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583873507;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583881200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583916707;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583916725;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583916726;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583920827;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585044087;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1585316166;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"06af60c6e0901957ae8f96f8dfd25e60\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:32;}}}}i:1587388276;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"86a7658f8bc100e4f407e1e6e1fed875\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:58;}}}}i:1588672393;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"c7c97442c7bbde2137452591b932e68d\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:49;}}}}i:1588745523;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"455b166fb23809d3accb82d7b0003ccd\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:38;}}}}i:1588927626;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"0a95b0e69189f4c5eff461fe523d450b\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:84;}}}}i:1590517218;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"5bf59cf32cb0da883a8449b5b1a4d30a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:46;}}}}i:1592507185;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"c824bc7a784ee3d8f78d22b52f53879b\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:53;}}}}i:1593425303;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"982af21b0685091f8b52b16d5acc3594\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:44;}}}}i:1596095567;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"1f2017e1ed51c7e11ca55ed0583ac79c\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:60;}}}}i:1597600088;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"a62f2e612393a7fc399274410b3ac2d6\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:78;}}}}i:1598444757;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"4ab831df806c80761e34224b2a1499cc\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:63;}}}}i:1599991934;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"1a89a2a2129300c1da6763ba0380ed1f\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:56;}}}}i:1600581920;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"c185de4a9f4c74ab215031e581ca3dd7\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:73;}}}}i:1600599076;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"40abb52b93b056290603eb7686c4546c\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:66;}}}}i:1602046949;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"40c342a72be7f7f46752927189654190\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:69;}}}}i:1607682107;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"6392c3b0cd930fb020f301c8a7fc1e72\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:82;}}}}i:1610177692;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"b76accc01229b487518cb150a88235da\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:34;}}}}i:1614091644;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"d500441b538711fa00c3ef048e23faf3\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:51;}}}}i:1614411333;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"87201d3637e485f7d6563d69209cf3f4\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:76;}}}}i:1614871165;a:1:{s:19:\"publish_future_post\";a:1:{s:32:\"301c94fab7b88db0f25594661c40527b\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:71;}}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:8:\"expanded\";i:0;s:6:\"social\";i:4;}s:11:\"custom_logo\";i:12;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583745338;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(126, '_site_transient_timeout_browser_97fc230848bc304ccee289a55f3e5339', '1584348725', 'no'),
(127, '_site_transient_browser_97fc230848bc304ccee289a55f3e5339', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', '1584348726', 'no'),
(129, '_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(149, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(151, 'current_theme', 'Youpi !', 'yes'),
(152, 'theme_mods_youpitheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:30;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(180, 'category_children', 'a:0:{}', 'yes'),
(184, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583845226;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(186, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583845228;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";s:10:\"youpitheme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(189, 'woocommerce_store_address', '', 'yes'),
(190, 'woocommerce_store_address_2', '', 'yes'),
(191, 'woocommerce_store_city', '', 'yes'),
(192, 'woocommerce_default_country', 'GB', 'yes'),
(193, 'woocommerce_store_postcode', '', 'yes'),
(194, 'woocommerce_allowed_countries', 'all', 'yes'),
(195, 'woocommerce_all_except_countries', '', 'yes'),
(196, 'woocommerce_specific_allowed_countries', '', 'yes'),
(197, 'woocommerce_ship_to_countries', '', 'yes'),
(198, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(199, 'woocommerce_default_customer_address', 'base', 'yes'),
(200, 'woocommerce_calc_taxes', 'no', 'yes'),
(201, 'woocommerce_enable_coupons', 'yes', 'yes'),
(202, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(203, 'woocommerce_currency', 'GBP', 'yes'),
(204, 'woocommerce_currency_pos', 'left', 'yes'),
(205, 'woocommerce_price_thousand_sep', ',', 'yes'),
(206, 'woocommerce_price_decimal_sep', '.', 'yes'),
(207, 'woocommerce_price_num_decimals', '2', 'yes'),
(208, 'woocommerce_shop_page_id', '', 'yes'),
(209, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(210, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(211, 'woocommerce_placeholder_image', '89', 'yes'),
(212, 'woocommerce_weight_unit', 'kg', 'yes'),
(213, 'woocommerce_dimension_unit', 'cm', 'yes'),
(214, 'woocommerce_enable_reviews', 'yes', 'yes'),
(215, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(216, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(217, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(218, 'woocommerce_review_rating_required', 'yes', 'no'),
(219, 'woocommerce_manage_stock', 'yes', 'yes'),
(220, 'woocommerce_hold_stock_minutes', '60', 'no'),
(221, 'woocommerce_notify_low_stock', 'yes', 'no'),
(222, 'woocommerce_notify_no_stock', 'yes', 'no'),
(223, 'woocommerce_stock_email_recipient', 'dumasclementjulien@yahoo.fr', 'no'),
(224, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(225, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(226, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(227, 'woocommerce_stock_format', '', 'yes'),
(228, 'woocommerce_file_download_method', 'force', 'no'),
(229, 'woocommerce_downloads_require_login', 'no', 'no'),
(230, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(231, 'woocommerce_prices_include_tax', 'no', 'yes'),
(232, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(233, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(234, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(235, 'woocommerce_tax_classes', '', 'yes'),
(236, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(237, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(238, 'woocommerce_price_display_suffix', '', 'yes'),
(239, 'woocommerce_tax_total_display', 'itemized', 'no'),
(240, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(241, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(242, 'woocommerce_ship_to_destination', 'billing', 'no'),
(243, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(244, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(245, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(246, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(247, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(248, 'woocommerce_registration_generate_username', 'yes', 'no'),
(249, 'woocommerce_registration_generate_password', 'yes', 'no'),
(250, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(251, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(252, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(253, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(254, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(255, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(256, 'woocommerce_trash_pending_orders', '', 'no'),
(257, 'woocommerce_trash_failed_orders', '', 'no'),
(258, 'woocommerce_trash_cancelled_orders', '', 'no'),
(259, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(260, 'woocommerce_email_from_name', 'Youpi !', 'no'),
(261, 'woocommerce_email_from_address', 'dumasclementjulien@yahoo.fr', 'no'),
(262, 'woocommerce_email_header_image', '', 'no'),
(263, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(264, 'woocommerce_email_base_color', '#96588a', 'no'),
(265, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(266, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(267, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(268, 'woocommerce_cart_page_id', '', 'no'),
(269, 'woocommerce_checkout_page_id', '', 'no'),
(270, 'woocommerce_myaccount_page_id', '', 'no'),
(271, 'woocommerce_terms_page_id', '', 'no'),
(272, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(273, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(274, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(275, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(276, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(277, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(278, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(279, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(280, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(281, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(282, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(283, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(284, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(285, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(286, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(287, 'woocommerce_api_enabled', 'no', 'yes'),
(288, 'woocommerce_allow_tracking', 'no', 'no'),
(289, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(290, 'woocommerce_single_image_width', '600', 'yes'),
(291, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(292, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(293, 'woocommerce_demo_store', 'no', 'no'),
(294, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produit\";s:13:\"category_base\";s:17:\"categorie-produit\";s:8:\"tag_base\";s:17:\"etiquette-produit\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(295, 'current_theme_supports_woocommerce', 'no', 'yes'),
(296, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(297, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(298, 'product_cat_children', 'a:0:{}', 'yes'),
(299, 'default_product_cat', '19', 'yes'),
(302, 'woocommerce_version', '3.9.3', 'yes'),
(303, 'woocommerce_db_version', '3.9.3', 'yes'),
(304, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(305, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"RBft8AJK6ZzMQ6zMAwOxGDFnWvmGdXMG\";}', 'yes'),
(306, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(307, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(309, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(311, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(323, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(324, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(325, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(327, 'woocommerce_setup_ab_wc_admin_onboarding', 'b', 'yes'),
(330, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(333, 'woocommerce_admin_version', '1.0.0', 'yes'),
(334, 'woocommerce_admin_install_timestamp', '1583748049', 'yes');
INSERT INTO `yo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(339, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1583845228;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:25:\"fakerpress/fakerpress.php\";s:5:\"0.5.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.3\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.5.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/fakerpress.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090\";s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(340, 'woocommerce_onboarding_profile', 'a:1:{s:9:\"completed\";b:0;}', 'yes'),
(347, '_transient_timeout_wc_low_stock_count', '1586340078', 'no'),
(348, '_transient_wc_low_stock_count', '0', 'no'),
(349, '_transient_timeout_wc_outofstock_count', '1586340078', 'no'),
(350, '_transient_wc_outofstock_count', '0', 'no'),
(355, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(360, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(453, '_transient_product_query-transient-version', '1583749760', 'yes'),
(477, '_transient_timeout__woocommerce_helper_subscriptions', '1583846127', 'no'),
(478, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(479, '_site_transient_timeout_theme_roots', '1583847027', 'no'),
(480, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:10:\"youpitheme\";s:7:\"/themes\";}', 'no'),
(481, '_transient_timeout__woocommerce_helper_updates', '1583888427', 'no'),
(482, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1583845227;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `yo_postmeta`
--

CREATE TABLE `yo_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_postmeta`
--

INSERT INTO `yo_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/03/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/03/2020-landscape-1.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"2020-landscape-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-600x385.png\";s:5:\"width\";i:600;s:6:\"height\";i:385;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(7, 6, '_thumbnail_id', '5'),
(9, 6, '_customize_changeset_uuid', '0852b0b3-06cf-46ff-812c-6df4d596bd9f'),
(11, 7, '_customize_changeset_uuid', '0852b0b3-06cf-46ff-812c-6df4d596bd9f'),
(13, 8, '_customize_changeset_uuid', '0852b0b3-06cf-46ff-812c-6df4d596bd9f'),
(15, 9, '_customize_changeset_uuid', '0852b0b3-06cf-46ff-812c-6df4d596bd9f'),
(16, 11, '_wp_attached_file', '2020/03/youpi_logo.png'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:103;s:4:\"file\";s:22:\"2020/03/youpi_logo.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"youpi_logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"youpi_logo-150x103.png\";s:5:\"width\";i:150;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 12, '_wp_attached_file', '2020/03/cropped-youpi_logo.png'),
(19, 12, '_wp_attachment_context', 'custom-logo'),
(20, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:103;s:4:\"file\";s:30:\"2020/03/cropped-youpi_logo.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-youpi_logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-youpi_logo-150x103.png\";s:5:\"width\";i:150;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 17, '_menu_item_type', 'custom'),
(22, 17, '_menu_item_menu_item_parent', '0'),
(23, 17, '_menu_item_object_id', '17'),
(24, 17, '_menu_item_object', 'custom'),
(25, 17, '_menu_item_target', ''),
(26, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 17, '_menu_item_xfn', ''),
(28, 17, '_menu_item_url', 'http://localhost/Youpi_WP/'),
(29, 18, '_menu_item_type', 'post_type'),
(30, 18, '_menu_item_menu_item_parent', '0'),
(31, 18, '_menu_item_object_id', '7'),
(32, 18, '_menu_item_object', 'page'),
(33, 18, '_menu_item_target', ''),
(34, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 18, '_menu_item_xfn', ''),
(36, 18, '_menu_item_url', ''),
(37, 19, '_menu_item_type', 'post_type'),
(38, 19, '_menu_item_menu_item_parent', '0'),
(39, 19, '_menu_item_object_id', '9'),
(40, 19, '_menu_item_object', 'page'),
(41, 19, '_menu_item_target', ''),
(42, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 19, '_menu_item_xfn', ''),
(44, 19, '_menu_item_url', ''),
(45, 20, '_menu_item_type', 'post_type'),
(46, 20, '_menu_item_menu_item_parent', '0'),
(47, 20, '_menu_item_object_id', '8'),
(48, 20, '_menu_item_object', 'page'),
(49, 20, '_menu_item_target', ''),
(50, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 20, '_menu_item_xfn', ''),
(52, 20, '_menu_item_url', ''),
(125, 10, '_wp_trash_meta_status', 'publish'),
(126, 10, '_wp_trash_meta_time', '1583744997'),
(127, 30, '_wp_attached_file', '2020/03/cropped-youpi_logo-1.png'),
(128, 30, '_wp_attachment_context', 'custom-logo'),
(129, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:103;s:4:\"file\";s:32:\"2020/03/cropped-youpi_logo-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-1-150x103.png\";s:5:\"width\";i:150;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 31, '_wp_trash_meta_status', 'publish'),
(131, 31, '_wp_trash_meta_time', '1583745409'),
(132, 32, 'fakerpress_flag', '1'),
(133, 33, '_wp_attached_file', '2020/03/d986a5b7-8410-3d41-a155-19f909afa438.jpg'),
(134, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1101;s:6:\"height\";i:734;s:4:\"file\";s:48:\"2020/03/d986a5b7-8410-3d41-a155-19f909afa438.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"d986a5b7-8410-3d41-a155-19f909afa438-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"d986a5b7-8410-3d41-a155-19f909afa438-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"d986a5b7-8410-3d41-a155-19f909afa438-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"d986a5b7-8410-3d41-a155-19f909afa438-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"d986a5b7-8410-3d41-a155-19f909afa438-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"d986a5b7-8410-3d41-a155-19f909afa438-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"d986a5b7-8410-3d41-a155-19f909afa438-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 33, 'fakerpress_flag', '1'),
(136, 33, '_fakerpress_orginal_url', 'https://picsum.photos/1101/734/?random'),
(137, 32, '_thumbnail_id', '33'),
(138, 34, 'fakerpress_flag', '1'),
(139, 35, '_wp_attached_file', '2020/03/8aaad12e-c44f-3b5e-9952-8c71f5fde0a0.jpg'),
(140, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1035;s:6:\"height\";i:690;s:4:\"file\";s:48:\"2020/03/8aaad12e-c44f-3b5e-9952-8c71f5fde0a0.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"8aaad12e-c44f-3b5e-9952-8c71f5fde0a0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"8aaad12e-c44f-3b5e-9952-8c71f5fde0a0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"8aaad12e-c44f-3b5e-9952-8c71f5fde0a0-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"8aaad12e-c44f-3b5e-9952-8c71f5fde0a0-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"8aaad12e-c44f-3b5e-9952-8c71f5fde0a0-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"8aaad12e-c44f-3b5e-9952-8c71f5fde0a0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"8aaad12e-c44f-3b5e-9952-8c71f5fde0a0-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 35, 'fakerpress_flag', '1'),
(142, 35, '_fakerpress_orginal_url', 'https://picsum.photos/1035/690/?random'),
(143, 34, '_thumbnail_id', '35'),
(144, 36, '_wp_attached_file', '2020/03/ace13056-9326-3046-b264-b75e9bc49cd5.jpg'),
(145, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1219;s:6:\"height\";i:812;s:4:\"file\";s:48:\"2020/03/ace13056-9326-3046-b264-b75e9bc49cd5.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"ace13056-9326-3046-b264-b75e9bc49cd5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"ace13056-9326-3046-b264-b75e9bc49cd5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"ace13056-9326-3046-b264-b75e9bc49cd5-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ace13056-9326-3046-b264-b75e9bc49cd5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"ace13056-9326-3046-b264-b75e9bc49cd5-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ace13056-9326-3046-b264-b75e9bc49cd5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ace13056-9326-3046-b264-b75e9bc49cd5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 36, 'fakerpress_flag', '1'),
(147, 36, '_fakerpress_orginal_url', 'https://picsum.photos/1219/812/?random'),
(148, 37, '_wp_attached_file', '2020/03/2024ca8e-21bc-329e-9757-c32bc14c192b.jpg'),
(149, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1061;s:6:\"height\";i:707;s:4:\"file\";s:48:\"2020/03/2024ca8e-21bc-329e-9757-c32bc14c192b.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"2024ca8e-21bc-329e-9757-c32bc14c192b-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"2024ca8e-21bc-329e-9757-c32bc14c192b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"2024ca8e-21bc-329e-9757-c32bc14c192b-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"2024ca8e-21bc-329e-9757-c32bc14c192b-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"2024ca8e-21bc-329e-9757-c32bc14c192b-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"2024ca8e-21bc-329e-9757-c32bc14c192b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"2024ca8e-21bc-329e-9757-c32bc14c192b-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 37, 'fakerpress_flag', '1'),
(151, 37, '_fakerpress_orginal_url', 'https://picsum.photos/1061/707/?random'),
(152, 38, 'fakerpress_flag', '1'),
(153, 39, '_wp_attached_file', '2020/03/ffae2ae6-bb48-3941-8b9e-8123e7a049b6.jpg'),
(154, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1143;s:6:\"height\";i:762;s:4:\"file\";s:48:\"2020/03/ffae2ae6-bb48-3941-8b9e-8123e7a049b6.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"ffae2ae6-bb48-3941-8b9e-8123e7a049b6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"ffae2ae6-bb48-3941-8b9e-8123e7a049b6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"ffae2ae6-bb48-3941-8b9e-8123e7a049b6-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ffae2ae6-bb48-3941-8b9e-8123e7a049b6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"ffae2ae6-bb48-3941-8b9e-8123e7a049b6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ffae2ae6-bb48-3941-8b9e-8123e7a049b6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ffae2ae6-bb48-3941-8b9e-8123e7a049b6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 39, 'fakerpress_flag', '1'),
(156, 39, '_fakerpress_orginal_url', 'https://picsum.photos/1143/762/?random'),
(157, 38, '_thumbnail_id', '39'),
(158, 40, '_wp_attached_file', '2020/03/ce6cc6a2-bc56-38d9-823a-142c39c1fcea.jpg'),
(159, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1342;s:6:\"height\";i:894;s:4:\"file\";s:48:\"2020/03/ce6cc6a2-bc56-38d9-823a-142c39c1fcea.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"ce6cc6a2-bc56-38d9-823a-142c39c1fcea-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"ce6cc6a2-bc56-38d9-823a-142c39c1fcea-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"ce6cc6a2-bc56-38d9-823a-142c39c1fcea-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ce6cc6a2-bc56-38d9-823a-142c39c1fcea-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"ce6cc6a2-bc56-38d9-823a-142c39c1fcea-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ce6cc6a2-bc56-38d9-823a-142c39c1fcea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ce6cc6a2-bc56-38d9-823a-142c39c1fcea-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 40, 'fakerpress_flag', '1'),
(161, 40, '_fakerpress_orginal_url', 'https://picsum.photos/1342/894/?random'),
(162, 41, '_wp_attached_file', '2020/03/324aac4e-47ba-3c3e-99df-5b25ce2ddddb.jpg'),
(163, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1127;s:6:\"height\";i:751;s:4:\"file\";s:48:\"2020/03/324aac4e-47ba-3c3e-99df-5b25ce2ddddb.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"324aac4e-47ba-3c3e-99df-5b25ce2ddddb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"324aac4e-47ba-3c3e-99df-5b25ce2ddddb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"324aac4e-47ba-3c3e-99df-5b25ce2ddddb-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"324aac4e-47ba-3c3e-99df-5b25ce2ddddb-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"324aac4e-47ba-3c3e-99df-5b25ce2ddddb-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"324aac4e-47ba-3c3e-99df-5b25ce2ddddb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"324aac4e-47ba-3c3e-99df-5b25ce2ddddb-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 41, 'fakerpress_flag', '1'),
(165, 41, '_fakerpress_orginal_url', 'https://picsum.photos/1127/751/?random'),
(166, 42, '_wp_attached_file', '2020/03/2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e.jpg'),
(167, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1401;s:6:\"height\";i:934;s:4:\"file\";s:48:\"2020/03/2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 42, 'fakerpress_flag', '1'),
(169, 42, '_fakerpress_orginal_url', 'https://picsum.photos/1401/934/?random'),
(170, 43, '_wp_attached_file', '2020/03/5dbe1ba9-5573-398d-8c91-2e8b0c04f281.jpg'),
(171, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1097;s:6:\"height\";i:731;s:4:\"file\";s:48:\"2020/03/5dbe1ba9-5573-398d-8c91-2e8b0c04f281.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"5dbe1ba9-5573-398d-8c91-2e8b0c04f281-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"5dbe1ba9-5573-398d-8c91-2e8b0c04f281-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"5dbe1ba9-5573-398d-8c91-2e8b0c04f281-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"5dbe1ba9-5573-398d-8c91-2e8b0c04f281-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"5dbe1ba9-5573-398d-8c91-2e8b0c04f281-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"5dbe1ba9-5573-398d-8c91-2e8b0c04f281-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"5dbe1ba9-5573-398d-8c91-2e8b0c04f281-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 43, 'fakerpress_flag', '1'),
(173, 43, '_fakerpress_orginal_url', 'https://picsum.photos/1097/731/?random'),
(174, 44, 'fakerpress_flag', '1'),
(175, 45, '_wp_attached_file', '2020/03/0f6640e2-fa8e-32e7-95a4-28922089af1d.jpg'),
(176, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1323;s:6:\"height\";i:882;s:4:\"file\";s:48:\"2020/03/0f6640e2-fa8e-32e7-95a4-28922089af1d.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"0f6640e2-fa8e-32e7-95a4-28922089af1d-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"0f6640e2-fa8e-32e7-95a4-28922089af1d-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"0f6640e2-fa8e-32e7-95a4-28922089af1d-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"0f6640e2-fa8e-32e7-95a4-28922089af1d-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"0f6640e2-fa8e-32e7-95a4-28922089af1d-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"0f6640e2-fa8e-32e7-95a4-28922089af1d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"0f6640e2-fa8e-32e7-95a4-28922089af1d-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 45, 'fakerpress_flag', '1'),
(178, 45, '_fakerpress_orginal_url', 'https://picsum.photos/1323/882/?random'),
(179, 44, '_thumbnail_id', '45'),
(180, 46, 'fakerpress_flag', '1'),
(181, 47, '_wp_attached_file', '2020/03/128b4268-f557-3f99-a557-44cd1561242b.jpg'),
(182, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1201;s:6:\"height\";i:800;s:4:\"file\";s:48:\"2020/03/128b4268-f557-3f99-a557-44cd1561242b.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"128b4268-f557-3f99-a557-44cd1561242b-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"128b4268-f557-3f99-a557-44cd1561242b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"128b4268-f557-3f99-a557-44cd1561242b-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"128b4268-f557-3f99-a557-44cd1561242b-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"128b4268-f557-3f99-a557-44cd1561242b-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"128b4268-f557-3f99-a557-44cd1561242b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"128b4268-f557-3f99-a557-44cd1561242b-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 47, 'fakerpress_flag', '1'),
(184, 47, '_fakerpress_orginal_url', 'https://picsum.photos/1201/800/?random'),
(185, 46, '_thumbnail_id', '47'),
(186, 48, '_wp_attached_file', '2020/03/200b223c-0e4a-38ad-b3a2-1fb6b088e2f7.jpg'),
(187, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1385;s:6:\"height\";i:923;s:4:\"file\";s:48:\"2020/03/200b223c-0e4a-38ad-b3a2-1fb6b088e2f7.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"200b223c-0e4a-38ad-b3a2-1fb6b088e2f7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"200b223c-0e4a-38ad-b3a2-1fb6b088e2f7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"200b223c-0e4a-38ad-b3a2-1fb6b088e2f7-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"200b223c-0e4a-38ad-b3a2-1fb6b088e2f7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"200b223c-0e4a-38ad-b3a2-1fb6b088e2f7-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"200b223c-0e4a-38ad-b3a2-1fb6b088e2f7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"200b223c-0e4a-38ad-b3a2-1fb6b088e2f7-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 48, 'fakerpress_flag', '1'),
(189, 48, '_fakerpress_orginal_url', 'https://picsum.photos/1385/923/?random'),
(190, 49, 'fakerpress_flag', '1'),
(191, 50, '_wp_attached_file', '2020/03/fc3d0815-2cdb-3490-8d25-5047216395dd.jpg'),
(192, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1266;s:6:\"height\";i:844;s:4:\"file\";s:48:\"2020/03/fc3d0815-2cdb-3490-8d25-5047216395dd.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"fc3d0815-2cdb-3490-8d25-5047216395dd-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"fc3d0815-2cdb-3490-8d25-5047216395dd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"fc3d0815-2cdb-3490-8d25-5047216395dd-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"fc3d0815-2cdb-3490-8d25-5047216395dd-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"fc3d0815-2cdb-3490-8d25-5047216395dd-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"fc3d0815-2cdb-3490-8d25-5047216395dd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"fc3d0815-2cdb-3490-8d25-5047216395dd-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 50, 'fakerpress_flag', '1'),
(194, 50, '_fakerpress_orginal_url', 'https://picsum.photos/1266/844/?random'),
(195, 51, 'fakerpress_flag', '1'),
(196, 52, '_wp_attached_file', '2020/03/0893e66b-53d0-3c1b-ada2-bdae812c80d6.jpg'),
(197, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1286;s:6:\"height\";i:857;s:4:\"file\";s:48:\"2020/03/0893e66b-53d0-3c1b-ada2-bdae812c80d6.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"0893e66b-53d0-3c1b-ada2-bdae812c80d6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"0893e66b-53d0-3c1b-ada2-bdae812c80d6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"0893e66b-53d0-3c1b-ada2-bdae812c80d6-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"0893e66b-53d0-3c1b-ada2-bdae812c80d6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"0893e66b-53d0-3c1b-ada2-bdae812c80d6-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"0893e66b-53d0-3c1b-ada2-bdae812c80d6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"0893e66b-53d0-3c1b-ada2-bdae812c80d6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 52, 'fakerpress_flag', '1'),
(199, 52, '_fakerpress_orginal_url', 'https://picsum.photos/1286/857/?random'),
(200, 51, '_thumbnail_id', '52'),
(201, 53, 'fakerpress_flag', '1'),
(202, 54, '_wp_attached_file', '2020/03/c44b26a6-d1ce-3501-9b42-d854e39a3acd.jpg'),
(203, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1418;s:6:\"height\";i:945;s:4:\"file\";s:48:\"2020/03/c44b26a6-d1ce-3501-9b42-d854e39a3acd.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"c44b26a6-d1ce-3501-9b42-d854e39a3acd-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"c44b26a6-d1ce-3501-9b42-d854e39a3acd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"c44b26a6-d1ce-3501-9b42-d854e39a3acd-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"c44b26a6-d1ce-3501-9b42-d854e39a3acd-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"c44b26a6-d1ce-3501-9b42-d854e39a3acd-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"c44b26a6-d1ce-3501-9b42-d854e39a3acd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"c44b26a6-d1ce-3501-9b42-d854e39a3acd-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 54, 'fakerpress_flag', '1'),
(205, 54, '_fakerpress_orginal_url', 'https://picsum.photos/1418/945/?random'),
(206, 53, '_thumbnail_id', '54'),
(207, 55, '_wp_attached_file', '2020/03/c7f6f45f-01df-3f88-adc0-a23cb91ca039.jpg'),
(208, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1420;s:6:\"height\";i:946;s:4:\"file\";s:48:\"2020/03/c7f6f45f-01df-3f88-adc0-a23cb91ca039.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"c7f6f45f-01df-3f88-adc0-a23cb91ca039-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"c7f6f45f-01df-3f88-adc0-a23cb91ca039-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"c7f6f45f-01df-3f88-adc0-a23cb91ca039-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"c7f6f45f-01df-3f88-adc0-a23cb91ca039-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"c7f6f45f-01df-3f88-adc0-a23cb91ca039-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"c7f6f45f-01df-3f88-adc0-a23cb91ca039-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"c7f6f45f-01df-3f88-adc0-a23cb91ca039-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 55, 'fakerpress_flag', '1'),
(210, 55, '_fakerpress_orginal_url', 'https://picsum.photos/1420/946/?random'),
(211, 56, 'fakerpress_flag', '1'),
(212, 57, '_wp_attached_file', '2020/03/6d00d674-0c62-3ce6-bddc-4cfa500067ef.jpg'),
(213, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1377;s:6:\"height\";i:918;s:4:\"file\";s:48:\"2020/03/6d00d674-0c62-3ce6-bddc-4cfa500067ef.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"6d00d674-0c62-3ce6-bddc-4cfa500067ef-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"6d00d674-0c62-3ce6-bddc-4cfa500067ef-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"6d00d674-0c62-3ce6-bddc-4cfa500067ef-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"6d00d674-0c62-3ce6-bddc-4cfa500067ef-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"6d00d674-0c62-3ce6-bddc-4cfa500067ef-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"6d00d674-0c62-3ce6-bddc-4cfa500067ef-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"6d00d674-0c62-3ce6-bddc-4cfa500067ef-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 57, 'fakerpress_flag', '1'),
(215, 57, '_fakerpress_orginal_url', 'https://picsum.photos/1377/918/?random'),
(216, 56, '_thumbnail_id', '57'),
(217, 58, 'fakerpress_flag', '1'),
(218, 59, '_wp_attached_file', '2020/03/81aaf1a7-582d-3367-995b-9e35dac0bf84.jpg'),
(219, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1210;s:6:\"height\";i:806;s:4:\"file\";s:48:\"2020/03/81aaf1a7-582d-3367-995b-9e35dac0bf84.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"81aaf1a7-582d-3367-995b-9e35dac0bf84-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"81aaf1a7-582d-3367-995b-9e35dac0bf84-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"81aaf1a7-582d-3367-995b-9e35dac0bf84-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"81aaf1a7-582d-3367-995b-9e35dac0bf84-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"81aaf1a7-582d-3367-995b-9e35dac0bf84-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"81aaf1a7-582d-3367-995b-9e35dac0bf84-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"81aaf1a7-582d-3367-995b-9e35dac0bf84-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 59, 'fakerpress_flag', '1'),
(221, 59, '_fakerpress_orginal_url', 'https://picsum.photos/1210/806/?random'),
(222, 58, '_thumbnail_id', '59'),
(223, 60, 'fakerpress_flag', '1'),
(224, 61, '_wp_attached_file', '2020/03/1cf8d69f-e57a-35bc-baec-3888fdd1da80.jpg'),
(225, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1109;s:6:\"height\";i:739;s:4:\"file\";s:48:\"2020/03/1cf8d69f-e57a-35bc-baec-3888fdd1da80.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"1cf8d69f-e57a-35bc-baec-3888fdd1da80-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"1cf8d69f-e57a-35bc-baec-3888fdd1da80-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"1cf8d69f-e57a-35bc-baec-3888fdd1da80-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"1cf8d69f-e57a-35bc-baec-3888fdd1da80-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"1cf8d69f-e57a-35bc-baec-3888fdd1da80-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"1cf8d69f-e57a-35bc-baec-3888fdd1da80-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"1cf8d69f-e57a-35bc-baec-3888fdd1da80-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 61, 'fakerpress_flag', '1'),
(227, 61, '_fakerpress_orginal_url', 'https://picsum.photos/1109/739/?random'),
(228, 60, '_thumbnail_id', '61'),
(229, 62, '_wp_attached_file', '2020/03/7f04b700-43fc-3f2f-8fea-bc06cc192a1b.jpg'),
(230, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1263;s:6:\"height\";i:842;s:4:\"file\";s:48:\"2020/03/7f04b700-43fc-3f2f-8fea-bc06cc192a1b.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"7f04b700-43fc-3f2f-8fea-bc06cc192a1b-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"7f04b700-43fc-3f2f-8fea-bc06cc192a1b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"7f04b700-43fc-3f2f-8fea-bc06cc192a1b-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"7f04b700-43fc-3f2f-8fea-bc06cc192a1b-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"7f04b700-43fc-3f2f-8fea-bc06cc192a1b-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"7f04b700-43fc-3f2f-8fea-bc06cc192a1b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"7f04b700-43fc-3f2f-8fea-bc06cc192a1b-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(231, 62, 'fakerpress_flag', '1'),
(232, 62, '_fakerpress_orginal_url', 'https://picsum.photos/1263/842/?random'),
(233, 63, 'fakerpress_flag', '1'),
(234, 64, '_wp_attached_file', '2020/03/b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg'),
(235, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1374;s:6:\"height\";i:916;s:4:\"file\";s:48:\"2020/03/b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"b5c0f25a-24e9-3247-8838-5c7e490a646a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"b5c0f25a-24e9-3247-8838-5c7e490a646a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"b5c0f25a-24e9-3247-8838-5c7e490a646a-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"b5c0f25a-24e9-3247-8838-5c7e490a646a-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"b5c0f25a-24e9-3247-8838-5c7e490a646a-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"b5c0f25a-24e9-3247-8838-5c7e490a646a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"b5c0f25a-24e9-3247-8838-5c7e490a646a-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 64, 'fakerpress_flag', '1'),
(237, 64, '_fakerpress_orginal_url', 'https://picsum.photos/1374/916/?random'),
(238, 63, '_thumbnail_id', '64'),
(239, 65, '_wp_attached_file', '2020/03/b45977d2-23a1-359c-af28-854d8fe8b188.jpg');
INSERT INTO `yo_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(240, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1034;s:6:\"height\";i:689;s:4:\"file\";s:48:\"2020/03/b45977d2-23a1-359c-af28-854d8fe8b188.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"b45977d2-23a1-359c-af28-854d8fe8b188-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"b45977d2-23a1-359c-af28-854d8fe8b188-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"b45977d2-23a1-359c-af28-854d8fe8b188-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"b45977d2-23a1-359c-af28-854d8fe8b188-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"b45977d2-23a1-359c-af28-854d8fe8b188-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"b45977d2-23a1-359c-af28-854d8fe8b188-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"b45977d2-23a1-359c-af28-854d8fe8b188-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 65, 'fakerpress_flag', '1'),
(242, 65, '_fakerpress_orginal_url', 'https://picsum.photos/1034/689/?random'),
(243, 66, 'fakerpress_flag', '1'),
(244, 67, '_wp_attached_file', '2020/03/ecf327c2-fa4e-389f-9bc0-a4eef6de7af9.jpg'),
(245, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1325;s:6:\"height\";i:883;s:4:\"file\";s:48:\"2020/03/ecf327c2-fa4e-389f-9bc0-a4eef6de7af9.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"ecf327c2-fa4e-389f-9bc0-a4eef6de7af9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"ecf327c2-fa4e-389f-9bc0-a4eef6de7af9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"ecf327c2-fa4e-389f-9bc0-a4eef6de7af9-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ecf327c2-fa4e-389f-9bc0-a4eef6de7af9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"ecf327c2-fa4e-389f-9bc0-a4eef6de7af9-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ecf327c2-fa4e-389f-9bc0-a4eef6de7af9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ecf327c2-fa4e-389f-9bc0-a4eef6de7af9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 67, 'fakerpress_flag', '1'),
(247, 67, '_fakerpress_orginal_url', 'https://picsum.photos/1325/883/?random'),
(248, 66, '_thumbnail_id', '67'),
(249, 68, '_wp_attached_file', '2020/03/62f98fbb-52ff-3d73-b79b-13103ec00726.jpg'),
(250, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1389;s:6:\"height\";i:926;s:4:\"file\";s:48:\"2020/03/62f98fbb-52ff-3d73-b79b-13103ec00726.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"62f98fbb-52ff-3d73-b79b-13103ec00726-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"62f98fbb-52ff-3d73-b79b-13103ec00726-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"62f98fbb-52ff-3d73-b79b-13103ec00726-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"62f98fbb-52ff-3d73-b79b-13103ec00726-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"62f98fbb-52ff-3d73-b79b-13103ec00726-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"62f98fbb-52ff-3d73-b79b-13103ec00726-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"62f98fbb-52ff-3d73-b79b-13103ec00726-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 68, 'fakerpress_flag', '1'),
(252, 68, '_fakerpress_orginal_url', 'https://picsum.photos/1389/926/?random'),
(253, 69, 'fakerpress_flag', '1'),
(254, 70, '_wp_attached_file', '2020/03/8e870fd8-4614-3717-af8f-dd8d1bc57b8d.jpg'),
(255, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1243;s:6:\"height\";i:828;s:4:\"file\";s:48:\"2020/03/8e870fd8-4614-3717-af8f-dd8d1bc57b8d.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"8e870fd8-4614-3717-af8f-dd8d1bc57b8d-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"8e870fd8-4614-3717-af8f-dd8d1bc57b8d-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"8e870fd8-4614-3717-af8f-dd8d1bc57b8d-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"8e870fd8-4614-3717-af8f-dd8d1bc57b8d-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"8e870fd8-4614-3717-af8f-dd8d1bc57b8d-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"8e870fd8-4614-3717-af8f-dd8d1bc57b8d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"8e870fd8-4614-3717-af8f-dd8d1bc57b8d-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 70, 'fakerpress_flag', '1'),
(257, 70, '_fakerpress_orginal_url', 'https://picsum.photos/1243/828/?random'),
(258, 69, '_thumbnail_id', '70'),
(259, 71, 'fakerpress_flag', '1'),
(260, 72, '_wp_attached_file', '2020/03/32856bf8-63c9-34eb-a0a6-1395494c9294.jpg'),
(261, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1329;s:6:\"height\";i:886;s:4:\"file\";s:48:\"2020/03/32856bf8-63c9-34eb-a0a6-1395494c9294.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"32856bf8-63c9-34eb-a0a6-1395494c9294-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"32856bf8-63c9-34eb-a0a6-1395494c9294-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"32856bf8-63c9-34eb-a0a6-1395494c9294-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"32856bf8-63c9-34eb-a0a6-1395494c9294-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"32856bf8-63c9-34eb-a0a6-1395494c9294-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"32856bf8-63c9-34eb-a0a6-1395494c9294-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"32856bf8-63c9-34eb-a0a6-1395494c9294-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 72, 'fakerpress_flag', '1'),
(263, 72, '_fakerpress_orginal_url', 'https://picsum.photos/1329/886/?random'),
(264, 71, '_thumbnail_id', '72'),
(265, 73, 'fakerpress_flag', '1'),
(266, 74, '_wp_attached_file', '2020/03/be7948ed-9048-392e-9b50-27c557687cd3.jpg'),
(267, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1311;s:6:\"height\";i:874;s:4:\"file\";s:48:\"2020/03/be7948ed-9048-392e-9b50-27c557687cd3.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"be7948ed-9048-392e-9b50-27c557687cd3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"be7948ed-9048-392e-9b50-27c557687cd3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"be7948ed-9048-392e-9b50-27c557687cd3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"be7948ed-9048-392e-9b50-27c557687cd3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"be7948ed-9048-392e-9b50-27c557687cd3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"be7948ed-9048-392e-9b50-27c557687cd3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"be7948ed-9048-392e-9b50-27c557687cd3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 74, 'fakerpress_flag', '1'),
(269, 74, '_fakerpress_orginal_url', 'https://picsum.photos/1311/874/?random'),
(270, 73, '_thumbnail_id', '74'),
(271, 75, '_wp_attached_file', '2020/03/52027c60-e6f0-3f7d-b478-c1196c8c6a12.jpg'),
(272, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1308;s:6:\"height\";i:872;s:4:\"file\";s:48:\"2020/03/52027c60-e6f0-3f7d-b478-c1196c8c6a12.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"52027c60-e6f0-3f7d-b478-c1196c8c6a12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"52027c60-e6f0-3f7d-b478-c1196c8c6a12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"52027c60-e6f0-3f7d-b478-c1196c8c6a12-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"52027c60-e6f0-3f7d-b478-c1196c8c6a12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"52027c60-e6f0-3f7d-b478-c1196c8c6a12-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"52027c60-e6f0-3f7d-b478-c1196c8c6a12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"52027c60-e6f0-3f7d-b478-c1196c8c6a12-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 75, 'fakerpress_flag', '1'),
(274, 75, '_fakerpress_orginal_url', 'https://picsum.photos/1308/872/?random'),
(275, 76, 'fakerpress_flag', '1'),
(276, 77, '_wp_attached_file', '2020/03/9b898270-1e81-31d6-8389-bb7c90dd5121.jpg'),
(277, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1075;s:6:\"height\";i:716;s:4:\"file\";s:48:\"2020/03/9b898270-1e81-31d6-8389-bb7c90dd5121.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"9b898270-1e81-31d6-8389-bb7c90dd5121-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"9b898270-1e81-31d6-8389-bb7c90dd5121-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"9b898270-1e81-31d6-8389-bb7c90dd5121-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"9b898270-1e81-31d6-8389-bb7c90dd5121-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"9b898270-1e81-31d6-8389-bb7c90dd5121-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"9b898270-1e81-31d6-8389-bb7c90dd5121-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"9b898270-1e81-31d6-8389-bb7c90dd5121-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 77, 'fakerpress_flag', '1'),
(279, 77, '_fakerpress_orginal_url', 'https://picsum.photos/1075/716/?random'),
(280, 76, '_thumbnail_id', '77'),
(281, 78, 'fakerpress_flag', '1'),
(282, 79, '_wp_attached_file', '2020/03/ddaf36d1-9eb3-32de-a26f-1e4f954f3703.jpg'),
(283, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1088;s:6:\"height\";i:725;s:4:\"file\";s:48:\"2020/03/ddaf36d1-9eb3-32de-a26f-1e4f954f3703.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"ddaf36d1-9eb3-32de-a26f-1e4f954f3703-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"ddaf36d1-9eb3-32de-a26f-1e4f954f3703-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"ddaf36d1-9eb3-32de-a26f-1e4f954f3703-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ddaf36d1-9eb3-32de-a26f-1e4f954f3703-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"ddaf36d1-9eb3-32de-a26f-1e4f954f3703-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ddaf36d1-9eb3-32de-a26f-1e4f954f3703-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ddaf36d1-9eb3-32de-a26f-1e4f954f3703-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 79, 'fakerpress_flag', '1'),
(285, 79, '_fakerpress_orginal_url', 'https://picsum.photos/1088/725/?random'),
(286, 78, '_thumbnail_id', '79'),
(287, 80, '_wp_attached_file', '2020/03/f991e70c-9700-3875-a553-c0f0030d6e24.jpg'),
(288, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1081;s:6:\"height\";i:720;s:4:\"file\";s:48:\"2020/03/f991e70c-9700-3875-a553-c0f0030d6e24.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"f991e70c-9700-3875-a553-c0f0030d6e24-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"f991e70c-9700-3875-a553-c0f0030d6e24-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"f991e70c-9700-3875-a553-c0f0030d6e24-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"f991e70c-9700-3875-a553-c0f0030d6e24-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"f991e70c-9700-3875-a553-c0f0030d6e24-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"f991e70c-9700-3875-a553-c0f0030d6e24-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"f991e70c-9700-3875-a553-c0f0030d6e24-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(289, 80, 'fakerpress_flag', '1'),
(290, 80, '_fakerpress_orginal_url', 'https://picsum.photos/1081/720/?random'),
(291, 81, '_wp_attached_file', '2020/03/c3b206c0-68fa-3b3d-927f-64a476b32f5d.jpg'),
(292, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1198;s:6:\"height\";i:798;s:4:\"file\";s:48:\"2020/03/c3b206c0-68fa-3b3d-927f-64a476b32f5d.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"c3b206c0-68fa-3b3d-927f-64a476b32f5d-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"c3b206c0-68fa-3b3d-927f-64a476b32f5d-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"c3b206c0-68fa-3b3d-927f-64a476b32f5d-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"c3b206c0-68fa-3b3d-927f-64a476b32f5d-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"c3b206c0-68fa-3b3d-927f-64a476b32f5d-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"c3b206c0-68fa-3b3d-927f-64a476b32f5d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"c3b206c0-68fa-3b3d-927f-64a476b32f5d-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(293, 81, 'fakerpress_flag', '1'),
(294, 81, '_fakerpress_orginal_url', 'https://picsum.photos/1198/798/?random'),
(295, 82, 'fakerpress_flag', '1'),
(296, 83, '_wp_attached_file', '2020/03/4e40d703-d256-3d8c-bc7c-e3a86a3c732f.jpg'),
(297, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1376;s:6:\"height\";i:917;s:4:\"file\";s:48:\"2020/03/4e40d703-d256-3d8c-bc7c-e3a86a3c732f.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"4e40d703-d256-3d8c-bc7c-e3a86a3c732f-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"4e40d703-d256-3d8c-bc7c-e3a86a3c732f-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"4e40d703-d256-3d8c-bc7c-e3a86a3c732f-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"4e40d703-d256-3d8c-bc7c-e3a86a3c732f-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"4e40d703-d256-3d8c-bc7c-e3a86a3c732f-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"4e40d703-d256-3d8c-bc7c-e3a86a3c732f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"4e40d703-d256-3d8c-bc7c-e3a86a3c732f-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 83, 'fakerpress_flag', '1'),
(299, 83, '_fakerpress_orginal_url', 'https://picsum.photos/1376/917/?random'),
(300, 82, '_thumbnail_id', '83'),
(301, 84, 'fakerpress_flag', '1'),
(302, 85, '_wp_attached_file', '2020/03/547b9b40-3005-31bc-8bf4-862d7bd402e2.jpg'),
(303, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1038;s:6:\"height\";i:692;s:4:\"file\";s:48:\"2020/03/547b9b40-3005-31bc-8bf4-862d7bd402e2.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"547b9b40-3005-31bc-8bf4-862d7bd402e2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"547b9b40-3005-31bc-8bf4-862d7bd402e2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"547b9b40-3005-31bc-8bf4-862d7bd402e2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"547b9b40-3005-31bc-8bf4-862d7bd402e2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"547b9b40-3005-31bc-8bf4-862d7bd402e2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"547b9b40-3005-31bc-8bf4-862d7bd402e2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"547b9b40-3005-31bc-8bf4-862d7bd402e2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 85, 'fakerpress_flag', '1'),
(305, 85, '_fakerpress_orginal_url', 'https://picsum.photos/1038/692/?random'),
(306, 71, '_edit_lock', '1583747497:1'),
(307, 9, '_edit_lock', '1583747264:1'),
(308, 71, '_edit_last', '1'),
(309, 69, '_edit_last', '1'),
(310, 69, '_edit_lock', '1583747504:1'),
(311, 60, '_edit_last', '1'),
(312, 60, '_edit_lock', '1583747510:1'),
(313, 89, '_wp_attached_file', 'woocommerce-placeholder.png'),
(314, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 90, '_wp_attached_file', '2020/03/cropped-youpi_logo-2.png'),
(316, 90, '_wp_attachment_context', 'site-icon'),
(317, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2020/03/cropped-youpi_logo-2.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:30:\"cropped-youpi_logo-2-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 91, '_wp_trash_meta_status', 'publish'),
(319, 91, '_wp_trash_meta_time', '1583748517'),
(320, 92, '_wp_attached_file', '2020/03/cropped-youpi_logo-3.png'),
(321, 92, '_wp_attachment_context', 'site-icon'),
(322, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2020/03/cropped-youpi_logo-3.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-3-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:30:\"cropped-youpi_logo-3-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 93, '_edit_lock', '1583748640:1'),
(324, 93, '_customize_restore_dismissed', '1'),
(325, 94, '_wp_attached_file', '2020/03/cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg'),
(326, 94, '_wp_attachment_context', 'site-icon'),
(327, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:56:\"2020/03/cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:56:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:54:\"cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 95, '_wp_trash_meta_status', 'publish'),
(329, 95, '_wp_trash_meta_time', '1583748696'),
(330, 96, '_wp_attached_file', '2020/03/cropped-youpi_logo-4.png'),
(331, 96, '_wp_attachment_context', 'site-icon'),
(332, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2020/03/cropped-youpi_logo-4.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:32:\"cropped-youpi_logo-4-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:30:\"cropped-youpi_logo-4-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 97, '_wp_trash_meta_status', 'publish'),
(334, 97, '_wp_trash_meta_time', '1583748749');

-- --------------------------------------------------------

--
-- Structure de la table `yo_posts`
--

CREATE TABLE `yo_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_posts`
--

INSERT INTO `yo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-09 09:51:46', '2020-03-09 08:51:46', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-03-09 09:51:46', '2020-03-09 08:51:46', '', 0, 'http://localhost/Youpi_WP/?p=1', 0, 'post', '', 1),
(2, 1, '2020-03-09 09:51:46', '2020-03-09 08:51:46', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/Youpi_WP/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2020-03-09 09:51:46', '2020-03-09 08:51:46', '', 0, 'http://localhost/Youpi_WP/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-03-09 09:51:46', '2020-03-09 08:51:46', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/Youpi_WP.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-03-09 09:51:46', '2020-03-09 08:51:46', '', 0, 'http://localhost/Youpi_WP/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-03-09 09:52:06', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-09 09:52:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/Youpi_WP/?p=4', 0, 'post', '', 0),
(5, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 'Le nouveau E-Mucem ouvre ses portes', '', 'inherit', 'open', 'closed', '', 'le-nouveau-e-mucem-ouvre-ses-portes', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">La première destination pour l’art moderne dans le nord de la Suède. Ouvert de 10h à 18h tous les jours pendant les mois d’été.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Travaux et jours</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Théâtre des opérations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>La vie que je mérite</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>De Signac à Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">« Les cyborgs, comme l’a fait remarquer la philosophe Donna Haraway, ne sont pas respectueux. Ils ne se souviennent pas du cosmos. »</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">Avec ses sept étages d’architecture remarquable, le E-Mucem présente des expositions d’art contemporain international, parfois accompagnées de rétrospectives sur l’histoire de l’art. Les questions existentielles, politiques et philosophiques font partie intégrante de notre programme. En tant que visiteur, vous êtes invité à des visites guidées, des conférences, des projections de films et d’autres évènements avec entrée gratuite.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Les expositions sont produites par le E-Mucem en collaboration avec des artistes et des musées du monde entier et attirent souvent l’attention internationale. Le E-Mucem a reçu une mention spéciale du Musée européen de l’année et a été l’un des meilleurs candidats pour le Prix du Musée méditerranéen de l’année ainsi que pour le Prix du Musée du Conseil de l’Europe.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Devenez membre et obtenez des offres exclusives !</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Les adhérent·es ont accès à des expositions et des ventes exclusives. Notre abonnement coûtent $99.99 et est facturé annuellement.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Rejoignez le club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'Le nouveau E-Mucem ouvre ses portes', '', 'publish', 'closed', 'closed', '', 'le-nouveau-e-mucem-ouvre-ses-portes-2', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 0, 'http://localhost/Youpi_WP/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'publish', 'closed', 'closed', '', 'a-propos-de', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 0, 'http://localhost/Youpi_WP/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 0, 'http://localhost/Youpi_WP/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 0, 'http://localhost/Youpi_WP/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7612ca4bc7a8d4730a1341e64e6e9b31\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eda99cd3b52c6a73dd0be03d11a3a127\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/Youpi_WP/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/Youpi_WP/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:17\"\n    },\n    \"twentytwenty::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:09:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0852b0b3-06cf-46ff-812c-6df4d596bd9f', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 0, 'http://localhost/Youpi_WP/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2020-03-09 10:09:42', '2020-03-09 09:09:42', '', 'youpi_logo', '', 'inherit', 'open', 'closed', '', 'youpi_logo', '', '', '2020-03-09 10:09:42', '2020-03-09 09:09:42', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/youpi_logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-03-09 10:09:53', '2020-03-09 09:09:53', 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo.png', 'cropped-youpi_logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-youpi_logo-png', '', '', '2020-03-09 10:09:53', '2020-03-09 09:09:53', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">La première destination pour l’art moderne dans le nord de la Suède. Ouvert de 10h à 18h tous les jours pendant les mois d’été.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Travaux et jours</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Théâtre des opérations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>La vie que je mérite</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>De Signac à Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">« Les cyborgs, comme l’a fait remarquer la philosophe Donna Haraway, ne sont pas respectueux. Ils ne se souviennent pas du cosmos. »</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">Avec ses sept étages d’architecture remarquable, le E-Mucem présente des expositions d’art contemporain international, parfois accompagnées de rétrospectives sur l’histoire de l’art. Les questions existentielles, politiques et philosophiques font partie intégrante de notre programme. En tant que visiteur, vous êtes invité à des visites guidées, des conférences, des projections de films et d’autres évènements avec entrée gratuite.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Les expositions sont produites par le E-Mucem en collaboration avec des artistes et des musées du monde entier et attirent souvent l’attention internationale. Le E-Mucem a reçu une mention spéciale du Musée européen de l’année et a été l’un des meilleurs candidats pour le Prix du Musée méditerranéen de l’année ainsi que pour le Prix du Musée du Conseil de l’Europe.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Devenez membre et obtenez des offres exclusives !</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Les adhérent·es ont accès à des expositions et des ventes exclusives. Notre abonnement coûtent $99.99 et est facturé annuellement.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Rejoignez le club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/Youpi_WP/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'Le nouveau E-Mucem ouvre ses portes', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 6, 'http://localhost/Youpi_WP/2020/03/09/6-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 7, 'http://localhost/Youpi_WP/2020/03/09/7-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 8, 'http://localhost/Youpi_WP/2020/03/09/8-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 9, 'http://localhost/Youpi_WP/2020/03/09/9-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-03-09 11:29:27', '2020-03-09 10:29:27', '', 0, 'http://localhost/Youpi_WP/2020/03/09/accueil/', 1, 'nav_menu_item', '', 0),
(18, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-03-09 11:29:27', '2020-03-09 10:29:27', '', 0, 'http://localhost/Youpi_WP/2020/03/09/18/', 2, 'nav_menu_item', '', 0),
(19, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-03-09 11:29:27', '2020-03-09 10:29:27', '', 0, 'http://localhost/Youpi_WP/2020/03/09/19/', 3, 'nav_menu_item', '', 0),
(20, 1, '2020-03-09 10:09:57', '2020-03-09 09:09:57', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-03-09 11:29:27', '2020-03-09 10:29:27', '', 0, 'http://localhost/Youpi_WP/2020/03/09/20/', 4, 'nav_menu_item', '', 0),
(30, 1, '2020-03-09 10:16:44', '2020-03-09 09:16:44', 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-1.png', 'cropped-youpi_logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-youpi_logo-1-png', '', '', '2020-03-09 10:16:44', '2020-03-09 09:16:44', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2020-03-09 10:16:49', '2020-03-09 09:16:49', '{\n    \"youpitheme::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 09:16:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7b0d1944-0645-4f94-b8ae-c87d957fb0cc', '', '', '2020-03-09 10:16:49', '2020-03-09 09:16:49', '', 0, 'http://localhost/Youpi_WP/2020/03/09/7b0d1944-0645-4f94-b8ae-c87d957fb0cc/', 0, 'customize_changeset', '', 0),
(32, 1, '2020-03-27 14:36:06', '2020-03-27 13:36:06', '<hr>\n<h6>Consectetur aut et rem facere minima dolorum. Et eius sit sunt et omnis eveniet</h6>\n<hr>\n<!--more-->\n<h4>Enim consequatur nulla amet sequi. Ipsam beatae voluptas et sit veritatis perferendis. Non unde animi impedit et recusandae</h4>\n<hr>\n<h3>Et sequi eligendi consectetur ipsam. Earum aut sit labore rem vero voluptates pariatur. Molestiae labore qui sapiente</h3>\n<hr>\n<h3>Delectus aut ab iusto ut maiores amet deserunt. Incidunt enim qui suscipit. At eaque iste reiciendis reprehenderit. Vel in rerum quis eos</h3>\n<ul><li>Iure beatae alias omnis</li><li>Quia aut repudiandae id in hic animi</li><li>Architecto pariatur explicabo et</li><li>Ab aut est qui molestias</li><li>Velit sit modi alias quos. Commodi dolorum nobis aliquam</li></ul>\n<h6>Nulla autem rerum nihil itaque quia odit ipsa fuga. Dolor ut consectetur quae aut est. Suscipit et non harum porro qui est facilis</h6>\n<ol><li>Perferendis vel modi magni placeat et ab</li><li>Itaque sed eum cum numquam</li><li>Odio at ex</li><li>Qui ipsa atque dignissimos</li></ol>', 'Consequatur dolorem ipsam quas sunt corrupti', 'Necessitatibus non ipsa eius porro rerum quia optio quia et ipsa aperiam praesentium ipsum corporis enim magnam corporis minus commodi porro et excepturi sed recusandae asperiores quae nisi reprehenderit aut soluta magni aliquid odio et et iste repudiandae rerum ut ut modi voluptatum non sed sed.\n\nDolorem nemo saepe necessitatibus consequatur inventore quo aliquam ut fuga debitis ut magni ut odit sequi doloremque cum dignissimos quo consequatur consequuntur occaecati et nulla iste et nemo quo ea autem nobis quis voluptatem impedit officia sint consequatur quis.', 'future', 'open', 'closed', '', 'consequatur-dolorem-ipsam-quas-sunt-corrupti', '', '', '2020-03-27 14:36:06', '2020-03-27 13:36:06', '', 0, 'http://localhost/Youpi_WP/?p=32', 0, 'post', '', 0),
(33, 1, '2020-03-09 10:45:27', '2020-03-09 09:45:27', '', 'd986a5b7-8410-3d41-a155-19f909afa438', '', 'inherit', 'open', 'closed', '', 'd986a5b7-8410-3d41-a155-19f909afa438', '', '', '2020-03-09 10:45:27', '2020-03-09 09:45:27', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/d986a5b7-8410-3d41-a155-19f909afa438.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `yo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(34, 1, '2021-01-09 08:34:52', '2021-01-09 07:34:52', '<h5>Earum adipisci aperiam doloremque atque dolorem rerum. Sunt aliquam quibusdam inventore rerum ad. Optio quis ut voluptatem earum laborum maxime sed</h5>\n<p>Magnam illum doloribus ipsum ullam non cumque error. Molestias optio minus ut. Quis quas similique et aliquid nesciunt praesentium tempore. Rerum consectetur ex facere. Enim quia quasi dolores sit. Omnis eos ut quia voluptates et hic nulla. Iste id eum rerum sit id optio quia. Aut voluptas occaecati aliquid accusamus eveniet nobis. Dolor et totam non quos voluptas provident unde quae. Reprehenderit voluptatem iste distinctio autem ut. Velit cupiditate error repellat nisi atque non. Eos harum sed quo dolores. Qui porro cupiditate enim dolor voluptas omnis omnis. Deserunt non quia et ipsam est. Et eum animi dolores enim quis et. Suscipit amet qui sed molestiae molestias incidunt perferendis. Eveniet dolore omnis iste alias perferendis. Omnis non ad ab et tempore explicabo libero. Fugit laborum nihil aut atque sint enim voluptatem. Ex enim quos magnam nobis magni aut quae. Quod cumque nulla harum natus dolores ex. Optio doloremque voluptatem nulla corporis occaecati qui soluta. Eos laudantium quo deleniti. Eos unde aliquam voluptate voluptas sint. Nemo voluptatibus et et rem autem nobis aliquam. Ut labore quia nemo dolorem. Quia quam veniam quis alias. Odio distinctio incidunt reprehenderit rem. Doloremque cupiditate saepe similique doloribus ullam consectetur. Nobis id eos voluptatem consequatur unde officiis. Distinctio qui assumenda error aut voluptatem eveniet accusantium quia. Cupiditate dicta minus et inventore. Quia est nihil quisquam quos minima qui ut. Dolorum consequatur et est ut vitae in et. Est cumque odit id. Ut autem ut ullam totam pariatur ex. Recusandae omnis consequatur ut. Aut dolor dicta quasi voluptates.</p>\n<!--more-->\n<hr>\n<hr>\n<hr>', 'Iure nobis adipisci libero', '', 'future', 'open', 'open', '', 'iure-nobis-adipisci-libero', '', '', '2021-01-09 08:34:52', '2021-01-09 07:34:52', '', 0, 'http://localhost/Youpi_WP/?p=34', 0, 'post', '', 0),
(35, 1, '2020-03-09 10:45:29', '2020-03-09 09:45:29', '', '8aaad12e-c44f-3b5e-9952-8c71f5fde0a0', '', 'inherit', 'open', 'closed', '', '8aaad12e-c44f-3b5e-9952-8c71f5fde0a0', '', '', '2020-03-09 10:45:29', '2020-03-09 09:45:29', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/8aaad12e-c44f-3b5e-9952-8c71f5fde0a0.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-03-09 10:45:30', '2020-03-09 09:45:30', '', 'ace13056-9326-3046-b264-b75e9bc49cd5', '', 'inherit', 'open', 'closed', '', 'ace13056-9326-3046-b264-b75e9bc49cd5', '', '', '2020-03-09 10:45:30', '2020-03-09 09:45:30', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/ace13056-9326-3046-b264-b75e9bc49cd5.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-03-09 10:45:31', '2020-03-09 09:45:31', '', '2024ca8e-21bc-329e-9757-c32bc14c192b', '', 'inherit', 'open', 'closed', '', '2024ca8e-21bc-329e-9757-c32bc14c192b', '', '', '2020-03-09 10:45:31', '2020-03-09 09:45:31', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/2024ca8e-21bc-329e-9757-c32bc14c192b.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-05-06 08:12:03', '2020-05-06 06:12:03', '<ul><li>Velit in iste architecto fugit</li><li>Voluptas reprehenderit autem in</li><li>Expedita quia</li><li>Quibusdam et odit ipsa vel</li><li>Velit sit</li></ul>\n<h2>Natus vero magnam non aliquid</h2>\n<!--more-->\n<img alt=\"Dolorem et quae\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/ace13056-9326-3046-b264-b75e9bc49cd5.jpg\">\n<ul><li>Rem ex et rerum ut</li></ul>\n<img alt=\"Minus voluptatum qui sequi rerum occaecati molestias\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/2024ca8e-21bc-329e-9757-c32bc14c192b.jpg\">', 'Est accusantium expedita voluptas magnam', 'Sunt repudiandae molestias sunt consequatur est non eius qui nobis vel voluptas odit est hic sint temporibus error molestias reprehenderit illo ad quis eum quam officiis laboriosam et ad non et in alias deleniti et illo voluptates quia odit in sint vel est asperiores qui laudantium.\n\nDoloribus est sit quo accusantium quis quia inventore dolor quas voluptatibus placeat eveniet debitis ut iusto unde qui tenetur eum voluptas minus qui aliquam quam ducimus aut cumque est sint non sunt adipisci illo aut commodi perferendis atque excepturi nisi delectus commodi error.', 'future', 'open', 'open', '', 'est-accusantium-expedita-voluptas-magnam', '', '', '2020-05-06 08:12:03', '2020-05-06 06:12:03', '', 0, 'http://localhost/Youpi_WP/?p=38', 0, 'post', '', 0),
(39, 1, '2020-03-09 10:45:33', '2020-03-09 09:45:33', '', 'ffae2ae6-bb48-3941-8b9e-8123e7a049b6', '', 'inherit', 'open', 'closed', '', 'ffae2ae6-bb48-3941-8b9e-8123e7a049b6', '', '', '2020-03-09 10:45:33', '2020-03-09 09:45:33', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/ffae2ae6-bb48-3941-8b9e-8123e7a049b6.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-03-09 10:45:34', '2020-03-09 09:45:34', '', 'ce6cc6a2-bc56-38d9-823a-142c39c1fcea', '', 'inherit', 'open', 'closed', '', 'ce6cc6a2-bc56-38d9-823a-142c39c1fcea', '', '', '2020-03-09 10:45:34', '2020-03-09 09:45:34', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/ce6cc6a2-bc56-38d9-823a-142c39c1fcea.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-03-09 10:45:35', '2020-03-09 09:45:35', '', '324aac4e-47ba-3c3e-99df-5b25ce2ddddb', '', 'inherit', 'open', 'closed', '', '324aac4e-47ba-3c3e-99df-5b25ce2ddddb', '', '', '2020-03-09 10:45:35', '2020-03-09 09:45:35', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/324aac4e-47ba-3c3e-99df-5b25ce2ddddb.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-03-09 10:45:36', '2020-03-09 09:45:36', '', '2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e', '', 'inherit', 'open', 'closed', '', '2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e', '', '', '2020-03-09 10:45:36', '2020-03-09 09:45:36', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-03-09 10:45:37', '2020-03-09 09:45:37', '', '5dbe1ba9-5573-398d-8c91-2e8b0c04f281', '', 'inherit', 'open', 'closed', '', '5dbe1ba9-5573-398d-8c91-2e8b0c04f281', '', '', '2020-03-09 10:45:37', '2020-03-09 09:45:37', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/5dbe1ba9-5573-398d-8c91-2e8b0c04f281.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-06-29 12:08:23', '2020-06-29 10:08:23', '<p>Ut ut beatae tenetur nihil iste voluptas exercitationem vero. Ut labore porro iusto exercitationem. Quos tempora qui nesciunt rerum. Quia dolor fugiat dolor sed molestias et. Tempore perferendis iusto et dolores eos qui nostrum porro. Est repellat sunt deserunt illum qui. Distinctio labore et placeat voluptatem. Molestiae et facilis dolor. Ipsam doloremque quisquam voluptatem deserunt earum voluptatem eum. Et vero facilis qui ad et dicta. Cum rerum ipsa omnis ea suscipit. Ad beatae vel corporis dolorum esse accusantium. Vero ea sunt nesciunt maiores exercitationem quia tempora. Atque ullam commodi quos ex laborum nesciunt. Sed quo dolor pariatur dicta. Aliquid autem aspernatur officiis libero quia ipsum sequi. Voluptatem doloremque maiores facere aliquid explicabo. Consectetur minus consectetur sequi mollitia vitae excepturi voluptas. Aut quae quis eos qui eaque. Sit rerum nihil repudiandae quis quod id. Rerum et sed culpa fuga eligendi praesentium quia. Amet sequi dolores impedit adipisci occaecati iusto. Tenetur dignissimos id distinctio dolores quod enim. Numquam cupiditate iusto aut ratione laboriosam culpa magni. Et dicta delectus doloribus porro quo nihil. Molestiae dolorem et adipisci ad autem recusandae. Et est quaerat voluptatem unde optio esse qui explicabo. Omnis officiis eius eveniet quam totam ipsam accusamus cumque. Veniam aut architecto accusantium incidunt reiciendis odit. Fugit recusandae a illum dicta est et facere. Non perspiciatis rerum natus neque. Omnis in tempore quia et vero. Enim et quia voluptatem. Doloribus nam architecto eaque. Ut voluptates debitis similique. Consequatur eum aut fuga. Ut laudantium qui temporibus amet cupiditate.</p>\n<h4>Numquam ut dolor perspiciatis voluptatem dicta ut</h4>\n<img alt=\"Delectus et et nesciunt et ab deserunt\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/ce6cc6a2-bc56-38d9-823a-142c39c1fcea.jpg\">\n<p>Et aliquid ex et voluptatem. Quia vel et voluptas placeat. Molestias atque mollitia sed. modi velit <a title=\"Dolor qui maiores voluptas inventore ea accusamus ut.\" href=\"https://www.cole.com/ut-sit-dolorum-eveniet-ullam\">omnis accusamus voluptates</a> explicabo. Consequatur magnam excepturi veritatis dolor sapiente. Fuga architecto blanditiis ea necessitatibus. dolor repellendus eligendi laudantium delectus. Minima sed eius commodi vel ducimus Et est nihil est qui ut. Ea est totam non cum voluptatem. Voluptatem minus ut officiis soluta. reiciendis repellendus hic nulla aspernatur Quia rerum enim voluptas labore excepturi. Aliquid veniam consectetur at voluptate.</p>\n<!--more-->\n<h6>Rerum in praesentium voluptas sit. Cupiditate id repudiandae autem veniam deserunt ut</h6>\n<img class=\"aligncenter\" alt=\"Nisi laborum deserunt doloribus nam aut sapiente nemo\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/324aac4e-47ba-3c3e-99df-5b25ce2ddddb.jpg\">\n<h3>Et dolore est praesentium est doloribus est. Architecto non quo quasi eum quas. Enim quod vitae tenetur. Rerum provident doloribus praesentium nostrum</h3>\n<img alt=\"Ut cum praesentium sunt\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e.jpg\">\n<h4>Aut reprehenderit consectetur officiis doloribus sint. Sed et veritatis cumque laboriosam natus</h4>\n<img class=\"alignleft\" alt=\"Delectus qui beatae excepturi adipisci quis omnis pariatur corporis mollitia\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e.jpg\">\n<img alt=\"A exercitationem necessitatibus amet velit officiis sunt numquam\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/5dbe1ba9-5573-398d-8c91-2e8b0c04f281.jpg\">', 'Inventore cum est atque provident', 'Reiciendis aut molestiae distinctio autem aliquid qui omnis qui quis dignissimos dolores enim cum vel sed asperiores nemo libero aut autem vero eius tempora possimus nemo accusantium consequatur eos odit inventore est sunt perspiciatis quisquam aut omnis accusamus sunt voluptatem laudantium aut et officia.\n\nNatus odit corrupti qui voluptas quia voluptas a voluptatibus repudiandae aliquid ut voluptatem soluta alias voluptatem deserunt veniam sit quia est vero hic in blanditiis dolorem nostrum sunt impedit dignissimos quis necessitatibus autem earum ut sint necessitatibus et minus ullam nisi dolores esse iste id placeat odio doloribus nihil aperiam dicta et eius distinctio ea repellendus minima et dolorum.', 'future', 'open', 'closed', '', 'inventore-cum-est-atque-provident', '', '', '2020-06-29 12:08:23', '2020-06-29 10:08:23', '', 0, 'http://localhost/Youpi_WP/?p=44', 0, 'post', '', 0),
(45, 1, '2020-03-09 10:45:41', '2020-03-09 09:45:41', '', '0f6640e2-fa8e-32e7-95a4-28922089af1d', '', 'inherit', 'open', 'closed', '', '0f6640e2-fa8e-32e7-95a4-28922089af1d', '', '', '2020-03-09 10:45:41', '2020-03-09 09:45:41', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/0f6640e2-fa8e-32e7-95a4-28922089af1d.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-05-26 20:20:18', '2020-05-26 18:20:18', '<h2>Praesentium accusantium laborum a iure et culpa. Voluptatum distinctio asperiores inventore. Nam saepe assumenda nihil eum omnis</h2>\n<blockquote>Nostrum facilis molestiae et aut Vero quas non unde eum omnis. Voluptatem culpa nulla et modi Voluptatibus culpa libero excepturi exercitationem rerum iusto. Quis dolorem itaque.</blockquote>\n<hr>\n<h1>Eaque aperiam eius consectetur ut omnis. Reiciendis voluptatum et quidem dolorem. Nesciunt porro praesentium quia facilis praesentium et molestias</h1>\n<ol><li>Ut qui quam quis et</li><li>Eius consequuntur</li><li>Error nihil ut nihil modi</li><li>Sed qui excepturi est voluptatem</li><li>Quo iste in corrupti quidem</li></ol>\n<!--more-->\n<h5>Ipsam sunt et ad. Ratione quam sed facilis possimus</h5>\n<img alt=\"Alias hic perspiciatis repellendus dolores\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e.jpg\">\n<p>Vero aut repudiandae enim. Dolor voluptatibus ut nobis. Consequatur sit adipisci porro quod. Voluptatibus voluptatem voluptas. Nisi earum nobis quia aperiam asperiores Nihil provident dicta quam minus reprehenderit aut repudiandae. minima placeat vel quia. dolores et cupiditate in veniam voluptas. Optio non rerum dolores et. Quia consequuntur ad culpa architecto <a title=\"Ab laborum quia dolores et quo quidem et.\" href=\"http://funk.info/\">Maxime vero ipsum quia</a> aut omnis. cum odit aut laboriosam est. Hic qui accusamus mollitia. officia quo explicabo ea est ut. temporibus exercitationem eos aut. Officiis harum quidem dolore ut tempore quia. Officiis iusto laudantium perspiciatis in. Mollitia culpa <a title=\"Accusamus vitae ut error consequatur ab ex sint atque sint temporibus sunt inventore.\" href=\"http://www.cruickshank.org/\">recusandae quis quia quaerat rerum.</a> illo laboriosam exercitationem odit sed. Exercitationem quidem velit. Inventore et eos quasi ea Maiores numquam quis eligendi est. et omnis rerum ea. Eligendi consectetur eius cupiditate est. Totam doloribus et mollitia recusandae. Aut sed modi et sit <a title=\"Modi sed.\" href=\"https://skiles.com/ad-necessitatibus-maiores-temporibus.html\">Sunt</a> velit tempora ipsa</p>\n<ol><li>Inventore et voluptate dicta</li><li>Ut nihil autem iure</li><li>Quia ea voluptate velit voluptatum qui vel</li><li>Animi quasi voluptas omnis</li></ol>', 'Debitis aut sed deserunt qui rem', '', 'future', 'open', 'closed', '', 'debitis-aut-sed-deserunt-qui-rem', '', '', '2020-05-26 20:20:18', '2020-05-26 18:20:18', '', 0, 'http://localhost/Youpi_WP/?p=46', 0, 'post', '', 0),
(47, 1, '2020-03-09 10:45:42', '2020-03-09 09:45:42', '', '128b4268-f557-3f99-a557-44cd1561242b', '', 'inherit', 'open', 'closed', '', '128b4268-f557-3f99-a557-44cd1561242b', '', '', '2020-03-09 10:45:42', '2020-03-09 09:45:42', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/128b4268-f557-3f99-a557-44cd1561242b.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-03-09 10:45:44', '2020-03-09 09:45:44', '', '200b223c-0e4a-38ad-b3a2-1fb6b088e2f7', '', 'inherit', 'open', 'closed', '', '200b223c-0e4a-38ad-b3a2-1fb6b088e2f7', '', '', '2020-03-09 10:45:44', '2020-03-09 09:45:44', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/200b223c-0e4a-38ad-b3a2-1fb6b088e2f7.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-05-05 11:53:13', '2020-05-05 09:53:13', '<p>Cumque minima voluptatum explicabo. Quasi quasi a fugiat id error. in voluptatem suscipit dolores. Consequatur possimus quam omnis et <a title=\"Esse qui dolorum numquam.\" href=\"http://www.okuneva.com/\">Quis</a> deserunt culpa <a title=\"Rerum natus enim deleniti et.\" href=\"http://barrows.info/\">quo</a> Odio illo quos. Autem quia nostrum quidem minima iste Deserunt dicta reiciendis magnam <a title=\"Similique amet.\" href=\"http://williamson.info/soluta-et-illum-voluptatem-beatae-explicabo-minus-tempore\">rerum</a> Delectus rerum sunt et aliquid Vel atque tempora Qui quam quo culpa et ipsam enim Voluptatem voluptatem vero modi dolorum <a title=\"Maxime nihil temporibus.\" href=\"http://gusikowski.com/magnam-ut-odio-commodi-iusto-dolores-perferendis-doloremque\">explicabo.</a> sapiente ad totam placeat aut aut veritatis. Dolores dicta doloribus quidem Velit et accusamus et ullam ea id. voluptatem voluptas id blanditiis et dignissimos <a title=\"Voluptates sint.\" href=\"https://little.biz/sunt-ad-nemo-nulla-aut-placeat.html\">Eum perspiciatis labore voluptatem nisi</a> Sunt vero ipsa doloremque. Assumenda voluptatem <a title=\"Occaecati quia tempora error dolor.\" href=\"https://www.ankunding.biz/ad-deserunt-officiis-eaque-labore-molestiae\">Quia ea suscipit esse maxime laborum sapiente. Omnis</a> voluptas ea deserunt. sed eaque qui aut dolor odio.</p>\n<hr>\n<!--more-->\n<hr>\n<h6>Nemo omnis odit neque omnis. Voluptatem aut aut sit deserunt. Ab et non aliquam quia. Nulla natus est veniam</h6>\n<blockquote>Occaecati impedit et ea. aut neque aliquam. Eum quo aut et voluptas. Facere molestias quasi autem aperiam et Consequuntur enim vel nihil molestiae expedita. Qui eligendi magnam vero veritatis reiciendis. Id veritatis quisquam enim et maiores sit. Laborum vel magnam omnis magni. magnam consequatur et porro modi in voluptas adipisci. cum eum non quod Quia inventore tempore et non Odio quis quia dolorem. Ad qui in ducimus. Sed aut dignissimos quia debitis. Labore rem doloribus qui fugiat qui vero. in nemo ab omnis ut veritatis. sed qui nihil suscipit consequatur qui. Sed autem vero quia. Minima aut nostrum aliquam porro. Ut nulla nemo perspiciatis esse eos. Quaerat iste nobis ea quia Quia labore nam nihil. Ab a architecto et. Qui sit aliquam praesentium pariatur perferendis. Aut omnis sunt ipsam maiores inventore. Qui voluptatem at quia autem repellat Atque molestias voluptates sunt omnis. Natus ipsam vel animi Quae tempora quia commodi mollitia aperiam fuga. Sint enim quia accusamus Enim harum ex consequuntur. Fugiat quo natus labore. Consequuntur ipsum dolorem odio aut itaque. molestiae eveniet consequatur ea nisi. Expedita excepturi numquam reiciendis. Sunt natus facere dolor Voluptas ut dicta mollitia aliquid sapiente Perferendis assumenda libero aperiam odio ut Ut facere <a title=\"Quae recusandae.\" href=\"http://larkin.info/\">corrupti repellat labore cupiditate. Ipsa atque est</a> dolorum voluptatum iste. Sit quis odio minus laboriosam. Aut pariatur et laboriosam dolor et. Molestiae eius ipsum pariatur. ea doloribus error voluptates. Eos illum et. Qui hic perspiciatis hic ea autem repudiandae sed.</blockquote>\n<blockquote>Sunt sed totam optio iste. est eius ut. Sit numquam dolorum. voluptates enim beatae voluptatem. Est qui nobis et. reiciendis et dolores Neque est voluptatem velit dolorem. Nulla excepturi non quia qui tenetur et provident. et voluptas commodi facilis ipsum velit laboriosam. Porro tempore tempore consequatur minima. illum est in nihil consequuntur. Sunt vero qui aut eius est. aut aliquid voluptatibus Ipsam voluptate consequatur accusamus ea. Culpa explicabo ipsam et error ea saepe. Asperiores <a title=\"Quidem qui.\" href=\"http://www.haley.biz/sint-voluptatem-voluptatem-nam-dignissimos-dolores-voluptatem-deserunt\">fugit ipsam tempora</a> Occaecati sint mollitia autem eos blanditiis Velit libero enim odit et error ut. Perferendis sit molestiae sint repellat. quasi iusto consectetur cum ratione. necessitatibus totam numquam mollitia occaecati repellat et. Tempora sed est dicta neque. Sapiente eligendi non nisi. voluptas harum vitae unde velit. Quo qui cumque at. Maiores et ut debitis mollitia iusto Quia iure eius exercitationem. Qui ut nihil et Fugiat veritatis dolores blanditiis <a title=\"Rerum tempora.\" href=\"http://jones.biz/omnis-aut-voluptatem-est-eos\">sit ex</a> Aut illo eos. Et alias cupiditate adipisci ut. Assumenda quae natus sit et. Aspernatur omnis in repellendus aut Consequatur perferendis voluptatem qui repudiandae Impedit voluptates iure error ipsum cumque. molestiae tempora.</blockquote>\n<ol><li>Et atque consectetur reprehenderit</li><li>Quo dignissimos qui est laudantium animi</li><li>Voluptatem est minus voluptas eos tempora et omnis qui</li><li>Suscipit incidunt est et nemo sunt illum</li></ol>\n<h2>Culpa nulla enim quasi esse unde. Non et natus rerum omnis voluptatem quas vitae ipsum. Blanditiis deserunt quisquam voluptates aut</h2>\n<ol><li>Culpa</li><li>Enim non blanditiis ut</li><li>Quas sed</li><li>Quia eos voluptatem tempore praesentium</li><li>Cupiditate eaque natus quibusdam</li></ol>\n<hr>\n<h2>Quaerat nihil tempore qui. Et eos dolores id</h2>\n<img class=\"alignright\" alt=\"Vero enim in et beatae ipsum earum\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/200b223c-0e4a-38ad-b3a2-1fb6b088e2f7.jpg\">', 'Praesentium ut autem quam quasi', 'Velit maiores deleniti aut cupiditate dolores et sit et cum eum odio excepturi sit voluptatem ad cupiditate officiis.\n\nOmnis dolorum ullam a nam vero nobis odit odit aut magnam vel aut voluptatem aut dolores accusamus odio tempora officia error dicta et ipsam sit culpa nulla sequi quasi quidem aut quidem.\n\nAccusamus vel quis praesentium et culpa saepe voluptatibus quia aut unde ut alias cum eaque maxime deserunt quia eum laborum illo ullam labore libero tenetur adipisci in.\n\nExercitationem rerum sed ipsum provident dolores nihil illum tenetur qui vero voluptate sed harum ut perferendis iusto qui repudiandae consequatur laboriosam nesciunt voluptatibus consequatur ad dolorum repellat quia quia similique accusantium nam aut est eos tempora.', 'future', 'open', 'closed', '', 'praesentium-ut-autem-quam-quasi', '', '', '2020-05-05 11:53:13', '2020-05-05 09:53:13', '', 0, 'http://localhost/Youpi_WP/?p=49', 0, 'post', '', 0),
(50, 1, '2020-03-09 10:45:45', '2020-03-09 09:45:45', '', 'fc3d0815-2cdb-3490-8d25-5047216395dd', '', 'inherit', 'open', 'closed', '', 'fc3d0815-2cdb-3490-8d25-5047216395dd', '', '', '2020-03-09 10:45:45', '2020-03-09 09:45:45', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/fc3d0815-2cdb-3490-8d25-5047216395dd.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-02-23 15:47:24', '2021-02-23 14:47:24', '<hr>\n<hr>\n<hr>\n<blockquote><a title=\"Accusantium molestiae illum.\" href=\"http://www.rolfson.com/\">Necessitatibus suscipit officia nisi nisi voluptatibus quidem labore</a> Sed eum saepe vitae ad quisquam laborum velit. Eos occaecati reiciendis vero. Inventore et eum iusto officia Suscipit perferendis earum non. modi tempore placeat illum quae tempora. saepe id magnam consequatur. atque et quia vitae. Natus laboriosam enim nobis facere. Eligendi in sit quos et modi. Dolor ut sit occaecati explicabo esse. Nam facere ducimus sunt. Quod et explicabo ex sit impedit ut Qui commodi quia quae earum. Accusantium aut quidem At <a title=\"Numquam illo culpa totam id nemo dolores.\" href=\"https://gutmann.com/quo-neque-voluptatem-assumenda.html\">omnis</a> amet veniam. sint cupiditate sit sequi iure aliquid. Facere fugit deserunt dignissimos Dolores a eos Assumenda rem sed nostrum et minima. Accusamus dicta blanditiis consectetur ut ullam perferendis. Odit laudantium omnis qui. deserunt consequatur corrupti non doloremque. Error repellat et et. Velit neque harum debitis beatae. odio repellat unde ut quod non <a title=\"Nostrum enim.\" href=\"https://wolf.com/voluptatem-ab-ab-cupiditate-quibusdam-aut.html\">Cupiditate sunt quia</a> in consequatur officia dolores. Ipsam praesentium nihil ut voluptatem fuga. Ex possimus aut quas repudiandae voluptatibus totam sit. Est sed molestiae aspernatur. Tempora dolores et. vitae sapiente dolor exercitationem. Reiciendis autem porro blanditiis. Aut fugiat unde labore illum.</blockquote>\n<h3>Dolores labore expedita repudiandae et aliquam. Odio reprehenderit mollitia et et est autem accusamus. Quis nihil perspiciatis aliquid autem aut</h3>\n<!--more-->\n<hr>\n<p>Quasi debitis repellendus magnam nostrum libero velit. Voluptates nemo eum neque quia Autem totam quod rerum. Dolores nihil <a title=\"Est rerum molestiae.\" href=\"http://www.schuster.com/\">quo</a> quas laudantium voluptate. Ab illo rerum impedit quis <a title=\"Unde sed.\" href=\"http://jacobi.com/magnam-necessitatibus-est-aut-quos-eum-commodi-asperiores-officia.html\">at est. Maxime modi</a> voluptas nobis reprehenderit. eos qui dolores amet eum culpa. Libero et aut voluptatibus quos. Voluptas sit dicta. Aspernatur nulla dolore exercitationem dolor. Fugit tenetur omnis quibusdam sunt repellat. Cum magnam doloribus <a title=\"Repellendus debitis non id pariatur rerum.\" href=\"http://www.nader.com/ad-autem-eius-aperiam-sit-aut-alias.html\">sed natus dolores deleniti consequuntur. Blanditiis doloremque</a> laborum sapiente perspiciatis nobis. Voluptatibus ut deserunt et Sed enim hic sunt suscipit libero sunt qui. cum laborum et <a title=\"Adipisci possimus.\" href=\"http://rolfson.net/ut-porro-eos-sunt-eligendi-atque-hic-voluptatum\">perspiciatis</a> culpa. Voluptatibus molestias aliquid eveniet. Ipsam repellendus impedit</p>', 'Pariatur labore quibusdam voluptatem eos', 'Aut odio consequatur ipsa nam cupiditate est ducimus nemo non nisi vero qui quasi et eum corporis expedita quia quisquam ab voluptatibus ipsam repudiandae corrupti perspiciatis vero assumenda quaerat perferendis vel veritatis rerum alias vel voluptatem amet adipisci doloremque est ut similique voluptatibus temporibus quidem mollitia consectetur autem autem perspiciatis corporis voluptate sit veritatis ea eius dolorem dolores sunt eum deserunt.\n\nVero asperiores debitis et est dicta a quisquam eum similique sit rerum est ad ea maxime qui dolorem aliquid vel aut officia sit nihil repudiandae voluptatem et sit a vel est blanditiis in illum molestias rerum voluptatem consectetur optio ea qui eos.', 'future', 'open', 'closed', '', 'pariatur-labore-quibusdam-voluptatem-eos', '', '', '2021-02-23 15:47:24', '2021-02-23 14:47:24', '', 0, 'http://localhost/Youpi_WP/?p=51', 0, 'post', '', 0),
(52, 1, '2020-03-09 10:45:47', '2020-03-09 09:45:47', '', '0893e66b-53d0-3c1b-ada2-bdae812c80d6', '', 'inherit', 'open', 'closed', '', '0893e66b-53d0-3c1b-ada2-bdae812c80d6', '', '', '2020-03-09 10:45:47', '2020-03-09 09:45:47', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/0893e66b-53d0-3c1b-ada2-bdae812c80d6.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-06-18 21:06:25', '2020-06-18 19:06:25', '<h2>Est expedita atque fugiat dolores</h2>\n<p>Nihil qui sit. Est architecto a. Modi saepe corrupti et beatae. Voluptas ad aperiam suscipit consequatur. consequuntur molestiae rerum. Veniam enim qui facere rerum aperiam. Commodi qui magnam. Sapiente porro suscipit autem omnis et. Saepe amet aut voluptatem molestiae saepe officia Quisquam illo autem sed fugiat doloremque. Et porro sapiente <a title=\"Dicta ex est consectetur.\" href=\"http://www.daniel.com/maiores-maxime-sapiente-ut-aut-nobis-porro-officiis\">Omnis aut et vitae</a> Soluta ut minus numquam unde temporibus cumque. temporibus inventore necessitatibus enim non. Veniam ut aperiam <a title=\"Corporis qui aliquid sit fuga velit quia.\" href=\"http://reichel.org/\">quia placeat.</a> eos possimus tenetur. Ipsum vel et exercitationem Distinctio beatae et repudiandae. aperiam et nam Adipisci et aut porro dolores sed sed. Qui natus et eius qui. delectus atque vero expedita Tempora aut earum veniam iusto eum natus Et impedit error.</p>\n<h6>Modi mollitia cum nihil reiciendis incidunt. Adipisci odit neque voluptas tempore aliquid. Qui id qui enim optio quia</h6>\n<!--more-->\n<ol><li>Totam libero</li><li>Vel et vel suscipit culpa</li><li>Debitis ipsam qui assumenda ad ut eum</li><li>Blanditiis quia neque temporibus</li><li>Nesciunt ea ab quis eligendi</li></ol>\n<h4>Placeat tempore est labore dignissimos voluptatum nesciunt. Eos ipsa sed id unde. Dolor aut corporis consequuntur illo</h4>\n<p>Enim earum <a title=\"Consequatur accusamus sit aut voluptas est dolore.\" href=\"http://www.lang.org/et-ducimus-cumque-est\">culpa quibusdam corporis provident atque.</a> quas reiciendis possimus quisquam omnis Fuga eum explicabo doloremque <a title=\"Occaecati et tempore corrupti.\" href=\"http://www.lind.net/ipsum-sit-aut-ut-quod-corporis-beatae-est.html\">suscipit in aliquam. Voluptate</a> nulla culpa est quidem quam sunt. Fugiat quasi quam distinctio. Quas illo <a title=\"Doloremque sed iure minima.\" href=\"http://schiller.com/occaecati-quam-facere-quaerat-itaque-dolore\">asperiores</a> dolorem eos. Sapiente est aperiam consequatur voluptas eum Perspiciatis consectetur deserunt praesentium et Sit sapiente et.</p>\n<h4>Omnis non distinctio at aut possimus sit voluptates. Aliquam excepturi dolore dicta quis animi</h4>\n<blockquote>Sunt hic dicta quis eos. Quasi consectetur totam molestias consequatur animi quis vel. Deserunt officiis debitis sit aliquid in possimus ratione. Natus inventore error est. Aut facere laudantium eveniet consequatur. Enim totam atque laborum sequi qui error quo. Harum earum quia aliquid vel ipsa qui. Vitae molestiae doloribus sed. Assumenda rem maxime maiores magni. Corporis aliquam provident dolor rerum et. Id incidunt laboriosam pariatur quia itaque illum quisquam asperiores. Quia quam dolores libero ab quisquam libero. Quae dolores ullam odit debitis vel sint eum. Earum impedit officiis nesciunt soluta. Officia neque distinctio aut non ut. Et nesciunt saepe ut velit aliquid minus fugit. Doloremque quis fugiat consequatur dolor exercitationem omnis voluptatum quas. Pariatur in repellat et consequatur rerum voluptatem unde. Officia ratione modi cum rerum velit unde rem. Ullam officiis provident repudiandae sequi animi rem. Veniam ad cupiditate voluptas necessitatibus et laborum.</blockquote>\n<ul><li>Error voluptate odio quisquam non dicta</li><li>Numquam autem nemo</li><li>Et eos a sunt. Ut nobis et necessitatibus eum soluta</li><li>Fugit qui placeat ut qui consectetur</li><li>Rerum consequatur</li></ul>', 'Velit recusandae eius harum', '', 'future', 'open', 'closed', '', 'velit-recusandae-eius-harum', '', '', '2020-06-18 21:06:25', '2020-06-18 19:06:25', '', 0, 'http://localhost/Youpi_WP/?p=53', 0, 'post', '', 0),
(54, 1, '2020-03-09 10:45:48', '2020-03-09 09:45:48', '', 'c44b26a6-d1ce-3501-9b42-d854e39a3acd', '', 'inherit', 'open', 'closed', '', 'c44b26a6-d1ce-3501-9b42-d854e39a3acd', '', '', '2020-03-09 10:45:48', '2020-03-09 09:45:48', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/c44b26a6-d1ce-3501-9b42-d854e39a3acd.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-03-09 10:45:50', '2020-03-09 09:45:50', '', 'c7f6f45f-01df-3f88-adc0-a23cb91ca039', '', 'inherit', 'open', 'closed', '', 'c7f6f45f-01df-3f88-adc0-a23cb91ca039', '', '', '2020-03-09 10:45:50', '2020-03-09 09:45:50', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/c7f6f45f-01df-3f88-adc0-a23cb91ca039.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-09-13 12:12:14', '2020-09-13 10:12:14', '<h2>Et debitis voluptate non voluptas. Ullam enim id excepturi neque at debitis vel</h2>\n<img alt=\"Sapiente cumque non sint omnis dicta fuga quia\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/c7f6f45f-01df-3f88-adc0-a23cb91ca039.jpg\">\n<blockquote>Expedita sunt deleniti quo <a title=\"Qui similique velit eum rerum nostrum ipsa.\" href=\"http://purdy.com/ea-ratione-ipsam-ducimus-rem-sunt.html\"><a title=\"Molestias voluptatem.\" href=\"https://www.schultz.com/nemo-ut-dolorum-et-corrupti\">alias voluptates</a></a> <a title=\"Modi aperiam asperiores neque repudiandae.\" href=\"http://boyer.net/ullam-sed-amet-et-tempora-officiis-rerum-adipisci\">Ut quas eos debitis laudantium. Voluptatem</a> <a title=\"Repudiandae illum libero at tempora.\" href=\"http://schulist.com/\">distinctio</a> Exercitationem <a title=\"Voluptatem sed.\" href=\"https://www.hilpert.com/voluptas-blanditiis-consequatur-asperiores-repellat-laudantium-exercitationem-beatae-officiis\"><a title=\"Accusantium eaque minima quibusdam.\" href=\"https://ondricka.com/odio-ut-tempora-laboriosam-qui-aut.html\">nemo nesciunt. Alias</a></a> magni reprehenderit facilis blanditiis consequuntur</blockquote>\n<h1>Quaerat itaque et fuga nostrum. Eum tempore omnis aspernatur ut. Quod placeat adipisci nulla dolorem dolorem nisi et</h1>\n<!--more-->\n<blockquote>Et qui voluptatem aspernatur aliquid impedit quibusdam. Ut cupiditate fuga doloribus. Omnis corrupti atque sit. Tempora cupiditate consequatur enim impedit incidunt pariatur earum. Dolore et qui enim placeat. Nisi voluptatem quos sapiente fuga iste. Accusamus qui nisi alias error quo. Velit quis veniam fugit porro. Quod qui quas voluptatibus et. Consequatur consequatur numquam ad aliquam eos. Quidem itaque similique fuga reiciendis placeat eum necessitatibus. Quis voluptatibus omnis ut dicta qui rerum quia. Ipsa voluptatem accusamus assumenda debitis id dolor facere velit. Commodi aliquam dolores occaecati autem explicabo. Hic dolor velit enim dignissimos laudantium aut nihil. Mollitia a commodi cumque consequatur quo. Recusandae esse molestiae eius ea. Repudiandae ea tempore laborum occaecati eaque doloremque. At adipisci illum iste quidem vel voluptatem et.</blockquote>\n<h4>Quod quia dicta autem. Qui et excepturi fugit. Eligendi vitae quasi quo est culpa</h4>\n<img alt=\"Quod iste dignissimos\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/c44b26a6-d1ce-3501-9b42-d854e39a3acd.jpg\">\n<h1>Ea eos facere sit qui accusantium odio. Rem et laborum perferendis voluptas</h1>\n<hr>\n<ol><li>Et aut sunt dolore sint non repudiandae</li><li>Tenetur culpa eos exercitationem deserunt ad</li><li>Maxime dolores nisi</li></ol>\n<img alt=\"Voluptatem voluptatem eligendi sit id quibusdam sequi\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/ffae2ae6-bb48-3941-8b9e-8123e7a049b6.jpg\">\n<h6>Quas dolore velit ipsum voluptas. Nostrum ipsam aut eos excepturi. Aut quia minus saepe minima</h6>\n<p>Voluptatum sit et qui quas earum quia. Quisquam repudiandae dolore ipsa dignissimos quisquam velit. Culpa sit ducimus ea officia aut fugiat. Voluptas labore similique explicabo consequuntur aut vel reprehenderit. Atque est dolores soluta cum. Sit quis vitae perferendis non odit odio. Perferendis quas sit odit quidem. Animi consectetur non sunt. Numquam doloremque est modi minus. Soluta odio voluptas nesciunt nobis atque. Quo cumque sint ratione delectus tenetur et rerum. Libero eligendi itaque consequatur ea. Dicta ut ullam est in. Similique veniam quo ratione tempore natus facilis et. Dolores aut eos eligendi aut. Nihil nostrum non omnis enim. Voluptatem et vitae aut rerum voluptatum cumque eum et. Alias beatae nulla quaerat ratione aut. Reiciendis et natus culpa repudiandae temporibus quia enim recusandae. Consectetur molestias et quia velit autem. Corrupti necessitatibus velit autem molestias ullam. Omnis et aut et ea adipisci hic. Aut corrupti placeat explicabo qui dignissimos optio. Cupiditate delectus voluptas molestiae sed. Earum sunt nam ipsum mollitia. Est similique aut dolorem voluptas quae voluptates. Mollitia qui libero est. Ut enim et voluptatum quia tempora distinctio. Minus et quia vitae et optio. Ut perferendis aut quia suscipit velit amet eum. Illo quos tempora aut aut quod consequatur praesentium doloremque. Fugiat eligendi quia et deserunt veniam ut. Tempore ipsum dolorem enim beatae est dolore eos. Perspiciatis dolor eum voluptatem velit. Non quibusdam et non consectetur modi occaecati quia.</p>\n<h5>Voluptatibus facilis laborum sint</h5>\n<ul><li>Mollitia dicta maiores harum</li><li>Nobis iusto quis et quaerat ipsam quasi</li><li>Vel quis ex</li></ul>', 'Optio quia dolorum illum perspiciatis', 'Aut ipsa perspiciatis numquam qui aut libero possimus doloremque alias omnis architecto omnis voluptas ullam hic et architecto id est exercitationem.\n\nNon iure autem nam quod impedit temporibus illo possimus dicta aut occaecati placeat eaque laudantium veniam eos quia ut facere saepe pariatur veniam ut quidem.\n\nDoloremque numquam perspiciatis incidunt rerum et repellendus molestiae soluta ut ad porro impedit aut velit consectetur eum a quidem vel maxime quis rerum voluptatem est non accusamus explicabo et quibusdam natus quibusdam error.\n\nPraesentium aut ea velit hic est mollitia quos perspiciatis perferendis officiis dicta ex voluptas dicta iure non sed fugit vel et excepturi omnis sed ipsa consequatur velit repellat facere quae nesciunt amet sit dolor sapiente quas quae eum dolore consequatur et exercitationem placeat consequatur vero tempora.', 'future', 'open', 'open', '', 'optio-quia-dolorum-illum-perspiciatis', '', '', '2020-09-13 12:12:14', '2020-09-13 10:12:14', '', 0, 'http://localhost/Youpi_WP/?p=56', 0, 'post', '', 0),
(57, 1, '2020-03-09 10:45:51', '2020-03-09 09:45:51', '', '6d00d674-0c62-3ce6-bddc-4cfa500067ef', '', 'inherit', 'open', 'closed', '', '6d00d674-0c62-3ce6-bddc-4cfa500067ef', '', '', '2020-03-09 10:45:51', '2020-03-09 09:45:51', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/6d00d674-0c62-3ce6-bddc-4cfa500067ef.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-04-20 15:11:16', '2020-04-20 13:11:16', '<ul><li>Ea rerum ab animi id</li><li>Ullam nisi saepe et</li><li>Expedita accusamus et amet eveniet</li><li>Eaque non nihil eos vel consectetur maxime</li><li>Ut et cumque ea dolorem</li><li>Porro enim et</li><li>Minima nobis quis tempore aut</li><li>Laborum est nesciunt hic</li><li>Ab aut facere accusantium</li></ul>\n<ul><li>Error autem et vitae doloremque et</li><li>Est sit ut iure eum</li></ul>', 'Rerum magnam odit doloremque numquam eaque cupiditate', '', 'future', 'open', 'closed', '', 'rerum-magnam-odit-doloremque-numquam-eaque-cupiditate', '', '', '2020-04-20 15:11:16', '2020-04-20 13:11:16', '', 0, 'http://localhost/Youpi_WP/?p=58', 0, 'post', '', 0),
(59, 1, '2020-03-09 10:45:54', '2020-03-09 09:45:54', '', '81aaf1a7-582d-3367-995b-9e35dac0bf84', '', 'inherit', 'open', 'closed', '', '81aaf1a7-582d-3367-995b-9e35dac0bf84', '', '', '2020-03-09 10:45:54', '2020-03-09 09:45:54', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/81aaf1a7-582d-3367-995b-9e35dac0bf84.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-07-30 09:52:47', '2020-07-30 07:52:47', '<h2>Et nemo id laborum aut fuga. Et sapiente rerum ipsam id hic quasi</h2>\n<ul><li>Quo magni aut deserunt in maxime</li><li>Amet similique nobis voluptatum sequi officia</li><li>Voluptates ipsam voluptatem tenetur</li><li>Delectus vero in non</li><li>Rerum</li></ul>\n<blockquote>Commodi nostrum et corporis velit repudiandae. Praesentium quae porro atque facilis voluptatem adipisci aut eos. Voluptates non veniam consequuntur id magni rerum maiores possimus. Illo maxime eius ut corporis officia. Iusto esse consequatur delectus aut. Neque earum fugiat porro placeat eligendi repudiandae repellat. Occaecati repudiandae quo architecto minus. Reprehenderit optio ea quidem. Consequatur possimus sit aut qui repellendus vel voluptate.</blockquote>\n<!--more-->\n<hr>', 'Hic facilis non dolor', 'Omnis nihil eos non commodi quas aut sit quia nihil qui ipsam nemo est praesentium occaecati voluptas placeat debitis quia quos similique eveniet velit optio et tempora doloribus modi aliquam ut tenetur temporibus reiciendis illo est.', 'future', 'open', 'open', '', 'hic-facilis-non-dolor', '', '', '2020-03-09 10:51:50', '2020-03-09 09:51:50', '', 0, 'http://localhost/Youpi_WP/?p=60', 0, 'post', '', 0),
(61, 1, '2020-03-09 10:45:56', '2020-03-09 09:45:56', '', '1cf8d69f-e57a-35bc-baec-3888fdd1da80', '', 'inherit', 'open', 'closed', '', '1cf8d69f-e57a-35bc-baec-3888fdd1da80', '', '', '2020-03-09 10:45:56', '2020-03-09 09:45:56', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/1cf8d69f-e57a-35bc-baec-3888fdd1da80.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-03-09 10:45:57', '2020-03-09 09:45:57', '', '7f04b700-43fc-3f2f-8fea-bc06cc192a1b', '', 'inherit', 'open', 'closed', '', '7f04b700-43fc-3f2f-8fea-bc06cc192a1b', '', '', '2020-03-09 10:45:57', '2020-03-09 09:45:57', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/7f04b700-43fc-3f2f-8fea-bc06cc192a1b.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-08-26 14:25:57', '2020-08-26 12:25:57', '<h1>Sed nihil similique aut veritatis non. Labore dolorem occaecati dolor minus cumque quo. Eligendi qui omnis ut illum harum</h1>\n<img class=\"alignleft\" alt=\"Expedita ut laboriosam recusandae quis\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/324aac4e-47ba-3c3e-99df-5b25ce2ddddb.jpg\">\n<h3>Molestiae vel quis illum quam molestias aut facilis rerum</h3>\n<!--more-->\n<ol><li>Est sit nostrum autem tenetur</li><li>Eos ex iusto</li><li>Eum distinctio</li><li>Voluptatibus et enim mollitia</li><li>Consequatur minima</li><li>Occaecati aut quasi ut</li><li>Vero et est odit</li></ol>\n<blockquote>Vel voluptatibus voluptatem ratione quia. ut dolores animi deserunt aut Et repellat vel Et est veritatis rerum ut eaque totam corporis. Ipsa illo ex quasi eum quam. Corporis molestias dolor quasi ipsam quisquam at. rerum et officia est et. Corrupti fugiat quisquam quaerat. Vel consectetur velit asperiores distinctio. et quis consequatur ipsa temporibus quis. Itaque <a title=\"Voluptatem voluptatem.\" href=\"http://www.ankunding.net/qui-suscipit-ea-aspernatur-voluptatem\">mollitia</a> magnam eius beatae. Eum doloribus nesciunt non porro. placeat aliquam eum molestiae perferendis. perferendis quo explicabo enim culpa molestiae. et enim dolorem laboriosam Voluptatem eius voluptas itaque Voluptatibus nihil dolor consequuntur minima magnam. ab quos iure voluptatibus et vel omnis. et qui Ducimus et culpa doloribus odio Sit molestias qui dolorum non vitae est. aspernatur nulla numquam impedit qui Quo qui non nostrum quia. Officia culpa aut incidunt eos deleniti expedita. Perspiciatis <a title=\"Omnis fugiat quasi beatae.\" href=\"http://www.harber.com/\">ut nemo</a> Facilis asperiores ab nulla quia Quia repudiandae dolorem id atque quaerat. Autem itaque itaque et sit non aut. sed itaque mollitia suscipit Nemo et molestiae enim voluptatem voluptatum. Ipsa qui quia odio. facilis earum tenetur labore dolores fuga quisquam.</blockquote>\n<img class=\"alignright\" alt=\"Quam id repellat doloribus voluptas quas sed\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/324aac4e-47ba-3c3e-99df-5b25ce2ddddb.jpg\">\n<img class=\"alignleft\" alt=\"Ipsa dolore voluptas cumque delectus deserunt explicabo repellendus dolorum qui tenetur\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/7f04b700-43fc-3f2f-8fea-bc06cc192a1b.jpg\">\n<h6>Hic et rerum quia id omnis non. Nobis vel harum ut nam nulla illum dolores</h6>\n<ol><li>Commodi</li><li>Nesciunt</li><li>Ut dolores earum quae</li><li>Tempora iste</li><li>Ipsum non officiis</li><li>Magni in</li></ol>\n<img class=\"alignleft\" alt=\"Voluptas aut id quisquam dicta totam\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/2a9674de-e7ed-3e46-a5c9-cd2110ef4b7e.jpg\">\n<h5>Tempora quos sunt molestiae voluptatem perspiciatis ipsa doloremque. Sed voluptatem cupiditate quam minima aspernatur est. Perspiciatis nihil cupiditate similique facere</h5>\n<ol><li>Tenetur itaque sint sed quam saepe</li><li>Porro nulla labore</li><li>Consequatur earum fugit pariatur eum at</li><li>Amet fuga aut velit vel ad in</li></ol>\n<h3>Eum sequi reiciendis eaque. Doloremque provident assumenda sapiente eius sit vitae deleniti. Aliquam fuga molestiae facere non rerum est</h3>\n<p>Quasi odit minima cupiditate provident alias dolores culpa Quae sunt numquam et. Est et velit corrupti excepturi facere. Consequatur eos eum animi Id est est voluptatem. enim <a title=\"Est beatae exercitationem enim delectus.\" href=\"http://okuneva.info/ut-rerum-nam-officia\">quia tempore</a> dolore repudiandae similique. Quis <a title=\"Fuga atque quo aut.\" href=\"http://www.howell.com/hic-quo-nisi-earum-sapiente-corrupti-non-eos\">omnis quos. Ullam</a> omnis ea repellendus. Provident quia autem quasi. Voluptatum eos debitis est. maiores sed ut iusto laborum. Sapiente sint sapiente <a title=\"Earum eaque illo veniam quidem praesentium consequuntur minus et.\" href=\"http://bartell.net/velit-laboriosam-voluptatem-in\">hic. Saepe officiis et</a> dolorum soluta quibusdam. in aut tenetur. Rerum consequuntur id aut numquam consectetur Aut ipsum delectus ex quis Beatae ut laborum tenetur aliquam.</p>\n<ol><li>Quia ullam excepturi id</li><li>Illo a repellat beatae sit</li><li>Et enim ut</li><li>Aperiam</li><li>Qui ad illo et iure</li><li>Dolor consequuntur</li></ol>', 'Sunt qui sit reiciendis', '', 'future', 'open', 'open', '', 'sunt-qui-sit-reiciendis', '', '', '2020-08-26 14:25:57', '2020-08-26 12:25:57', '', 0, 'http://localhost/Youpi_WP/?p=63', 0, 'post', '', 0),
(64, 1, '2020-03-09 10:45:59', '2020-03-09 09:45:59', '', 'b5c0f25a-24e9-3247-8838-5c7e490a646a', '', 'inherit', 'open', 'closed', '', 'b5c0f25a-24e9-3247-8838-5c7e490a646a', '', '', '2020-03-09 10:45:59', '2020-03-09 09:45:59', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-03-09 10:46:00', '2020-03-09 09:46:00', '', 'b45977d2-23a1-359c-af28-854d8fe8b188', '', 'inherit', 'open', 'closed', '', 'b45977d2-23a1-359c-af28-854d8fe8b188', '', '', '2020-03-09 10:46:00', '2020-03-09 09:46:00', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/b45977d2-23a1-359c-af28-854d8fe8b188.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `yo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(66, 1, '2020-09-20 12:51:16', '2020-09-20 10:51:16', '<ul><li>Sapiente numquam non minima officia at</li><li>Molestiae aut ad fugit ad ullam optio</li><li>Ex maxime eius mollitia</li><li>Qui ipsam vel sint fugit itaque</li><li>Aliquam</li></ul>\n<blockquote>Expedita reiciendis dolorum laboriosam et. Saepe excepturi ullam incidunt. Ea aut eum Aut esse autem impedit. saepe dicta tempora consequatur. Impedit recusandae perferendis <a title=\"Illo tempora consectetur ut est.\" href=\"https://hayes.com/et-expedita-iusto-deserunt-distinctio.html\">Autem</a> voluptatum animi omnis delectus. Iste ut quaerat perspiciatis. Veritatis quia eum cumque Vitae minus Voluptatem magni sapiente ea. Dolorem minus non eos est. Dolores quos recusandae eos ut et. sit qui voluptas eum ut voluptas. pariatur voluptate illo <a title=\"Et asperiores animi illo.\" href=\"https://steuber.com/facilis-esse-similique-fugit-qui-ea-culpa.html\">dolorem. Corporis</a> deserunt dolor rerum. Voluptas excepturi deserunt veritatis omnis eaque ut. Ipsam perferendis at est autem ut. et repudiandae sit nisi. omnis nemo ipsam quia. Asperiores rerum atque a. Omnis voluptatem ut commodi quod. Quasi et sunt. quidem ducimus quis necessitatibus numquam. Et est itaque repellat earum Id eos est voluptatem sit laboriosam aliquid. alias sit quia velit error. assumenda incidunt voluptatem tenetur. Sed suscipit maiores sint tempora.</blockquote>\n<hr>\n<blockquote>Enim consequuntur est excepturi. Dolores illum ullam ipsum rerum corporis magnam atque. Odio corporis corporis occaecati quae. Delectus nam enim quis voluptates nihil. Optio accusantium nobis sed animi commodi. In vero voluptate blanditiis enim. Iure blanditiis atque voluptates provident. Et exercitationem accusamus voluptas hic aut. Eligendi nostrum nostrum vel et quo laudantium quasi et. Modi qui ut perferendis alias. Aspernatur consequatur illo ea vel molestiae repellendus architecto quod. Nemo omnis et quas necessitatibus magnam. Rerum est magnam quos. Laboriosam reiciendis neque ut veniam et explicabo corrupti. Velit qui aut quaerat amet fugiat quae asperiores. Dolorum sit aut omnis in ad quod qui. Et voluptatem ipsa autem consequatur dolores minima. Voluptatibus harum labore autem est laborum. Molestiae animi voluptatem assumenda quos voluptatum dolor. Ratione repudiandae aut sit veritatis.</blockquote>\n<h1>Laboriosam culpa ipsum non sed qui corporis consequatur</h1>\n<img class=\"alignright\" alt=\"Neque\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/b45977d2-23a1-359c-af28-854d8fe8b188.jpg\">\n<!--more-->\n<blockquote>Recusandae autem rem vel aut magnam. Inventore <a title=\"Officia.\" href=\"http://bechtelar.org/eum-sed-consectetur-repudiandae-commodi-vitae-fugit-et.html\">voluptatem ut sint aperiam</a> Dolor voluptas dolor enim Eum ipsum est qui omnis quos Qui accusantium illum quae voluptatem. Voluptas tempora sint est qui Fugiat exercitationem impedit error quis nam veniam. Accusamus distinctio omnis voluptatem molestias qui. Qui necessitatibus facilis aperiam magni. Nulla eum ipsam facilis ducimus tenetur. optio earum dolorem reiciendis est Quis labore dignissimos ut enim Sed et nostrum et deserunt sint sunt debitis. possimus sit molestiae occaecati nulla accusantium. Qui quia dignissimos aut eum rem. Non quasi asperiores voluptas repellat accusantium et. Culpa eaque odit in Quisquam asperiores facilis quasi aut debitis ut. Vero odit delectus blanditiis. Eius sapiente odio id Nesciunt aut voluptas ut voluptatem. Est illo accusantium vel rerum. Id recusandae similique repellendus et quisquam.</blockquote>\n<img alt=\"Occaecati placeat\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/0f6640e2-fa8e-32e7-95a4-28922089af1d.jpg\">\n<h2>Eum sed quisquam et est. Et nam fugit temporibus sit. Alias hic laudantium vel</h2>\n<p>Id <a title=\"Cumque voluptas est illum laudantium.\" href=\"http://corwin.com/eius-nobis-blanditiis-blanditiis-ullam-autem\">amet quis ipsa. Dolor rem</a> <a title=\"Mollitia quo alias.\" href=\"http://www.hyatt.com/veniam-iste-error-nihil-architecto-dolorem\">voluptatem magnam accusamus saepe cumque. Odit quam</a> <a title=\"Consectetur molestias fugit.\" href=\"http://www.labadie.com/et-asperiores-mollitia-suscipit-soluta\">nobis expedita.</a></p>', 'Dolor est qui fugit molestiae rerum', 'Eius voluptatum incidunt mollitia est sint molestias voluptatem mollitia qui ut aut expedita est vero consequatur a velit doloremque recusandae eligendi voluptas ut labore amet suscipit quas nostrum adipisci esse esse asperiores inventore dolor illo recusandae ut.\n\nDoloremque harum culpa fugiat commodi non alias dolores distinctio ea recusandae itaque amet libero voluptas omnis alias optio eligendi dolores consectetur eveniet aliquid aut ipsum sint vitae ut omnis tenetur dolores consequatur aliquam illum similique.\n\nQuis eum quia non a quisquam sed dolore quis id repellendus quia dolorem autem quod doloribus perspiciatis dicta nemo voluptatum qui explicabo blanditiis nam suscipit voluptas natus eius et et quis voluptas sed aut qui quisquam id et quod nam ipsa.', 'future', 'open', 'open', '', 'dolor-est-qui-fugit-molestiae-rerum', '', '', '2020-09-20 12:51:16', '2020-09-20 10:51:16', '', 0, 'http://localhost/Youpi_WP/?p=66', 0, 'post', '', 0),
(67, 1, '2020-03-09 10:46:01', '2020-03-09 09:46:01', '', 'ecf327c2-fa4e-389f-9bc0-a4eef6de7af9', '', 'inherit', 'open', 'closed', '', 'ecf327c2-fa4e-389f-9bc0-a4eef6de7af9', '', '', '2020-03-09 10:46:01', '2020-03-09 09:46:01', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/ecf327c2-fa4e-389f-9bc0-a4eef6de7af9.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-03-09 10:46:03', '2020-03-09 09:46:03', '', '62f98fbb-52ff-3d73-b79b-13103ec00726', '', 'inherit', 'open', 'closed', '', '62f98fbb-52ff-3d73-b79b-13103ec00726', '', '', '2020-03-09 10:46:03', '2020-03-09 09:46:03', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/62f98fbb-52ff-3d73-b79b-13103ec00726.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-10-07 07:02:29', '2020-10-07 05:02:29', '<ol><li>Doloribus sunt enim earum qui</li><li>Ut in exercitationem eos dignissimos vitae sapiente</li><li>Dignissimos et id</li><li>Voluptates amet aut velit maiores</li><li>Facilis ex</li></ol>\n<ol><li>Et nesciunt</li><li>Perferendis harum error sint amet</li><li>Iste et dolor magni dolorum et</li><li>Sint nemo</li><li>Inventore sed ut repudiandae et</li><li>Sequi id nostrum et nemo iste</li><li>Aut aut sed vel et adipisci</li></ol>\n<blockquote>Sit omnis magnam nobis fugiat impedit est. at voluptatem id nulla est. Quis dolorem quidem. velit eveniet a ea. <a title=\"Eaque sint eum tempore libero quo molestiae sed.\" href=\"http://www.senger.info/qui-amet-minus-aut-quo-praesentium-nam\">voluptatem qui</a> et accusamus. Officia qui qui architecto tempora et sed. <a title=\"Ex odio.\" href=\"http://gusikowski.com/perspiciatis-fugit-ut-quia-et-quam-consequatur\">eaque sapiente</a> ratione <a title=\"Quo.\" href=\"http://zulauf.com/quis-impedit-similique-illum\">rerum.</a> natus dolor assumenda quibusdam iure. facilis <a title=\"Sed quae.\" href=\"http://schowalter.info/sapiente-voluptatem-voluptas-minima-ad-aut.html\">est consequatur deleniti</a> In qui asperiores et unde nisi. Nihil voluptatibus officiis ipsam. Beatae voluptatum <a title=\"Et tenetur occaecati.\" href=\"http://ryan.org/expedita-et-qui-voluptate-qui.html\">et nihil impedit et ut.</a> accusantium ut in eveniet odio sint enim. Id accusantium ducimus consequatur beatae illo minus. Et porro iure sit itaque quo. Eos soluta <a title=\"Voluptatem est.\" href=\"http://www.larkin.org/illo-nam-voluptatem-veniam-at-consequatur-sint-voluptatem\">dolores aut. Ut</a> adipisci quidem eos voluptas. Rem a exercitationem eveniet et Provident perferendis et corporis non. Occaecati illo <a title=\"Qui ipsam hic aliquam qui officiis.\" href=\"http://www.schultz.com/\">quibusdam nam. Provident laudantium aperiam</a> perspiciatis ipsum. Odio iste dolore deleniti ut itaque harum <a title=\"Necessitatibus magnam omnis aut hic veritatis nesciunt.\" href=\"https://www.heathcote.com/hic-consequuntur-nulla-doloremque\">Aperiam ut id iusto</a> <a title=\"Quidem.\" href=\"http://www.mcclure.com/nemo-rerum-sunt-deserunt-tempora.html\">rem in. Est</a> aut dolor magni corrupti Reprehenderit aut ut qui incidunt. Est explicabo libero <a title=\"Qui illo ex veritatis pariatur.\" href=\"http://wiegand.net/assumenda-corrupti-omnis-ratione-consequatur-tempore-consequuntur-ipsum\">ut. Sunt temporibus</a> voluptatibus quam harum architecto. Et voluptas nemo et. odio corrupti similique et incidunt. Et totam error magni aliquam aliquam omnis. Velit saepe maxime voluptates. Ipsam magni ea nihil.</blockquote>\n<h1>Exercitationem delectus sint ex quas ut autem. Sapiente ipsum nesciunt nihil sunt. Magni accusantium vero quia sit voluptates</h1>\n<!--more-->\n<img src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/62f98fbb-52ff-3d73-b79b-13103ec00726.jpg\">\n<p><a title=\"Quo eius qui.\" href=\"https://baumbach.biz/facere-deserunt-in-consequatur-nisi-molestiae-id.html\">Voluptatem nihil</a> voluptatibus atque ea Debitis consequatur cum accusamus Voluptas molestias ut dolorem illum qui. voluptatibus soluta quo Adipisci nisi rerum doloribus ad qui. Ut maiores magni Eum qui blanditiis enim occaecati eos. Commodi aperiam doloribus accusamus. Dolorem enim vitae ducimus Mollitia quae nulla fugit dolor. Molestiae rerum voluptas possimus quas ipsa omnis. Unde perferendis et ea. Minus odit quia nemo expedita dignissimos ut. Porro et ullam doloremque <a title=\"Porro.\" href=\"http://www.willms.com/\">Ipsam non ut</a> provident. Magnam aspernatur vel officiis.</p>\n<p>Aut occaecati eius culpa. Libero ut et amet alias ea porro. Officia neque est nesciunt. Ea quo <a title=\"Eveniet labore necessitatibus laudantium quidem.\" href=\"http://www.huel.info/nam-et-qui-consequatur-accusantium\">sed iste. Velit</a> natus <a title=\"Autem explicabo et rem.\" href=\"http://streich.com/omnis-corrupti-commodi-repellendus-voluptatem-occaecati-commodi.html\">consequatur</a> Eos nemo beatae tempore reprehenderit Perferendis eum magni harum ullam exercitationem debitis. Quis neque voluptatum et. Dolorem placeat dignissimos doloribus autem et at. Est nulla numquam totam. Mollitia voluptates minus fugiat <a title=\"Provident vero ex pariatur id nesciunt.\" href=\"http://watsica.com/sint-architecto-velit-qui-sit-vel\">quis. Neque</a> aut mollitia. Corrupti ratione sed voluptatem amet.</p>\n<blockquote>Possimus vel nemo Dolorem ullam quo blanditiis eligendi et. Amet sed sequi eligendi aut et. Saepe sapiente voluptatem. Sunt et deserunt ratione Et animi sequi aliquam amet et. Ut quia deserunt Blanditiis aspernatur ab laboriosam architecto. Voluptas quo quia non cum. Ea sit nulla et natus ratione. Sit nam labore cum corporis. Dignissimos corporis ullam. Id nesciunt magni. Praesentium dolore pariatur sed libero ad mollitia. Aut et commodi adipisci excepturi et quisquam. Quaerat quam libero reiciendis expedita qui ullam. Aut ut ut voluptatem tenetur aperiam. distinctio illum officia ut. Pariatur error molestiae optio itaque corrupti sit et. sequi aperiam inventore dolorem quaerat repellat est. Ipsa quo eum et autem ratione. Assumenda reiciendis officiis ut nesciunt nihil. Voluptatem perferendis eum exercitationem ut. eaque eaque quae. Voluptatem saepe quas provident. Consequatur sint est est sit repellat sint. dolorem hic rerum architecto dolorem. Amet officia perferendis amet Omnis atque nulla et quam consequatur qui <a title=\"Aut nihil nam in.\" href=\"http://breitenberg.biz/ex-quo-maxime-nobis-qui-omnis.html\">Deserunt</a> ullam facere sed Illo ut commodi harum suscipit reiciendis iure Porro voluptas quod quasi. Fugit non velit ipsam quia. Culpa facilis adipisci incidunt odio autem.</blockquote>', 'Nemo sunt omnis suscipit', 'Eos aut impedit molestiae eos tempora id odio rerum explicabo placeat incidunt iure id aut quia molestias minima occaecati et laboriosam minus culpa saepe corrupti optio hic ab magnam omnis aspernatur voluptates rerum quas sit ut ullam sequi officiis maiores velit eius at reiciendis in magnam quia unde voluptas a blanditiis molestiae iusto laudantium id repellat qui consequatur ad voluptatibus necessitatibus debitis et sunt a laborum possimus et dolor ea ad ab alias reiciendis in omnis quia soluta culpa enim iste.', 'future', 'open', 'closed', '', 'nemo-sunt-omnis-suscipit', '', '', '2020-03-09 10:51:44', '2020-03-09 09:51:44', '', 0, 'http://localhost/Youpi_WP/?p=69', 0, 'post', '', 0),
(70, 1, '2020-03-09 10:46:05', '2020-03-09 09:46:05', '', '8e870fd8-4614-3717-af8f-dd8d1bc57b8d', '', 'inherit', 'open', 'closed', '', '8e870fd8-4614-3717-af8f-dd8d1bc57b8d', '', '', '2020-03-09 10:46:05', '2020-03-09 09:46:05', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/8e870fd8-4614-3717-af8f-dd8d1bc57b8d.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2021-03-04 16:19:25', '2021-03-04 15:19:25', '<blockquote>Magnam quas error cumque similique natus occaecati. sunt maiores sint. voluptas non ipsa In ipsa est facilis rerum ipsa delectus aliquid modi. illo assumenda rerum Et harum perspiciatis aut qui rerum sint. Odio ipsa sapiente quam tempora. Eos fugit libero non mollitia earum. Voluptatibus sint qui eos Ea optio molestias nihil. Error praesentium maxime dolorum eos consequatur. Voluptas quia temporibus quis omnis voluptatum Et fuga facere sit. non velit sed. Ipsum ex quia accusantium magni. voluptates praesentium occaecati Reprehenderit nam nisi voluptatibus dolorem. Illum dolorem ut. Quas tempore delectus illum ratione. Quos cupiditate occaecati aut enim voluptas. Et dicta quia. molestias in suscipit nobis modi. adipisci nihil occaecati qui eius. Voluptates qui earum tenetur amet dolores quia. Quasi numquam qui qui Saepe quia ipsa omnis officiis. Voluptas repudiandae nihil eum aliquid Exercitationem ad quo enim deserunt quaerat dolores Est asperiores eius rerum officiis qui Fuga quibusdam nihil ratione aut et iure. alias dolor labore fugit fuga est. distinctio soluta mollitia corporis debitis. Vel sit quasi est Aliquam et qui sapiente ut Esse sint aut natus eaque aliquid. Aliquid a et Rem enim provident adipisci <a title=\"Harum et occaecati.\" href=\"http://www.paucek.com/accusantium-reprehenderit-temporibus-rerum-dolorem-occaecati-quia-perspiciatis-sunt\">consequatur eligendi</a> Sit ducimus ea</blockquote>\n<ul><li>Qui veniam aliquid officiis</li><li>Quibusdam assumenda</li><li>Quisquam ad dolorem voluptatem</li></ul>\n<h1>Ut sit corporis placeat dolorem. Ex nostrum omnis fuga delectus optio. Commodi ratione quia aliquam eum id</h1>\n<ul><li>Officia odit</li><li>In sit eum odio enim at</li><li>Quod quaerat qui reiciendis praesentium tempore et</li><li>Deserunt eius saepe in rerum</li><li>Corporis ut laboriosam doloribus in totam</li><li>Iure ea labore eum est</li></ul>\n<!--more-->\n<h6>Molestiae odio qui quis sit voluptatem. Assumenda ab sed ex eaque. Quaerat pariatur est libero ipsa totam perspiciatis. Eos adipisci corrupti quod ipsum ut</h6>\n<ol><li>Quam dignissimos</li><li>Aliquid minima</li><li>Recusandae ea</li><li>Necessitatibus nostrum veniam et</li><li>Ut rerum ut et veniam</li><li>Aut qui omnis non</li></ol>\n<h2>Consequatur aut aperiam hic animi qui magnam</h2>\n<ul><li>Sint iusto porro non illum</li><li>Non ducimus est et</li><li>Vero fugiat</li><li>Ipsam reiciendis non dolor est</li><li>Quae et eius quas sequi sint et</li><li>Dolorem quam</li><li>Aliquid dicta</li></ul>\n<hr>\n<h4>Id repellat quo voluptatibus temporibus velit pariatur est</h4>\n<p>Quos modi <a title=\"Maiores ipsam iure et.\" href=\"http://www.kunze.com/\"><a title=\"Exercitationem eos non sapiente quia ea.\" href=\"http://www.mcdermott.com/ipsa-explicabo-possimus-ut-rerum-voluptas-corporis\">dolorem sit tenetur quidem</a></a> <a title=\"Animi dolores facilis quod.\" href=\"http://torp.com/non-et-tempore-at-quod-et-a.html\">Non cumque ut dolorum expedita impedit</a> <a title=\"Nihil.\" href=\"http://nikolaus.com/sint-eveniet-sint-itaque\">totam</a></p>\n<ul><li>Dolor facere minus rerum ea</li><li>Ea dolorum sit ex ut</li></ul>', 'Dolorum voluptatem molestiae amet', 'Dolores cumque asperiores quo ut tempore aperiam officiis explicabo deserunt cum quae vel ratione possimus accusamus tenetur quod nemo sint voluptatem autem cupiditate vero atque beatae aliquam molestiae sint et alias esse eum autem ut corrupti est incidunt aut mollitia veniam in est et tenetur accusamus.\n\nUt et velit quia modi nam repudiandae ut sint dolorem sequi dolore id corrupti recusandae iste quia debitis fuga sunt occaecati vel facilis facere vitae aut est aspernatur sit est sint officia deserunt optio et.', 'future', 'open', 'open', '', 'dolorum-voluptatem-molestiae-amet', '', '', '2020-03-09 10:51:37', '2020-03-09 09:51:37', '', 0, 'http://localhost/Youpi_WP/?p=71', 0, 'post', '', 0),
(72, 1, '2020-03-09 10:46:06', '2020-03-09 09:46:06', '', '32856bf8-63c9-34eb-a0a6-1395494c9294', '', 'inherit', 'open', 'closed', '', '32856bf8-63c9-34eb-a0a6-1395494c9294', '', '', '2020-03-09 10:46:06', '2020-03-09 09:46:06', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/32856bf8-63c9-34eb-a0a6-1395494c9294.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-09-20 08:05:20', '2020-09-20 06:05:20', '<ul><li>Molestiae aut nulla ipsa sit</li><li>Deserunt sunt eos ratione recusandae ratione rerum</li><li>Voluptas natus cupiditate est nemo</li><li>Et autem ut ut et quod ex</li><li>Architecto aut magnam qui sunt iste</li><li>Saepe quia esse voluptas ut quod laborum</li></ul>\n<h4>Molestias voluptatum porro nobis suscipit temporibus omnis consectetur</h4>\n<blockquote><a title=\"Non illum et sunt.\" href=\"http://dubuque.org/\">Officiis ut cumque eligendi</a> Quas est ipsum eaque. <a title=\"Nisi quia eos id nam optio odit.\" href=\"http://www.jacobi.com/et-veniam-esse-quisquam-doloremque-ullam-ad.html\">sunt natus tempora excepturi molestiae.</a> reiciendis laudantium temporibus Libero dolorem quae temporibus <a title=\"In.\" href=\"http://www.kovacek.com/repudiandae-aut-id-voluptatum-aut-dolores-qui-quod\">Quo reprehenderit aperiam non</a> Voluptatibus natus aut beatae ex. Quis <a title=\"Ipsam et illo ullam.\" href=\"http://beier.org/\">ut</a> <a title=\"Saepe aliquid dolorem.\" href=\"http://trantow.com/ea-ex-dolores-dolorem-sint\">deserunt dolorum.</a> consequuntur culpa tempora sit optio est praesentium <a title=\"Odio voluptatem odit quo non iure.\" href=\"http://www.stark.net/autem-ullam-esse-est-vel-ad-non\">Asperiores est et reprehenderit consequatur reprehenderit eaque laudantium.</a> dolores inventore a fugit odio. <a title=\"Voluptatum corporis veniam dolorem ab commodi.\" href=\"http://www.gusikowski.com/voluptatem-quia-incidunt-incidunt\">ex voluptas</a> et sit quo. Sunt molestias eligendi eaque <a title=\"Harum ea nisi quasi.\" href=\"http://www.larson.org/velit-eaque-ut-possimus-odio-facere-qui.html\">delectus temporibus. Temporibus</a> in sit libero optio illum. Ea <a title=\"Facilis aliquam adipisci id.\" href=\"http://www.ryan.org/\">aliquam</a> pariatur occaecati. Accusantium voluptatem aspernatur incidunt. Omnis nihil pariatur fuga. Nulla repellendus amet nobis blanditiis. Est iusto consequatur. Adipisci eum vel repudiandae velit repudiandae sint.</blockquote>', 'Corporis dolores corporis maxime et et autem', '', 'future', 'open', 'closed', '', 'corporis-dolores-corporis-maxime-et-et-autem', '', '', '2020-09-20 08:05:20', '2020-09-20 06:05:20', '', 0, 'http://localhost/Youpi_WP/?p=73', 0, 'post', '', 0),
(74, 1, '2020-03-09 10:46:08', '2020-03-09 09:46:08', '', 'be7948ed-9048-392e-9b50-27c557687cd3', '', 'inherit', 'open', 'closed', '', 'be7948ed-9048-392e-9b50-27c557687cd3', '', '', '2020-03-09 10:46:08', '2020-03-09 09:46:08', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/be7948ed-9048-392e-9b50-27c557687cd3.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-03-09 10:46:09', '2020-03-09 09:46:09', '', '52027c60-e6f0-3f7d-b478-c1196c8c6a12', '', 'inherit', 'open', 'closed', '', '52027c60-e6f0-3f7d-b478-c1196c8c6a12', '', '', '2020-03-09 10:46:09', '2020-03-09 09:46:09', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/52027c60-e6f0-3f7d-b478-c1196c8c6a12.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2021-02-27 08:35:33', '2021-02-27 07:35:33', '<h6>Nesciunt rem et cumque aperiam. Blanditiis officia cupiditate dolorum ut voluptatem. Ut sit sit ullam reprehenderit sed et ea. Rem atque eos molestiae aut mollitia beatae</h6>\n<hr>\n<h4>Vel libero eum fugit. Earum similique quam maiores</h4>\n<ul><li>Rerum placeat earum aut voluptate</li></ul>\n<hr>\n<!--more-->\n<hr>\n<ol><li>Aliquam aliquid nisi</li><li>Occaecati dicta eos architecto</li><li>Adipisci est sed optio incidunt maiores blanditiis</li><li>Maxime non amet expedita et culpa voluptas</li><li>Nam et dolor odit totam asperiores quos et</li><li>Suscipit dolor reprehenderit ut voluptas libero</li><li>Nihil eum omnis sit</li><li>Est quia optio ex animi aut voluptatum</li><li>Aut fugit in quibusdam nemo</li></ol>\n<h4>Odit quidem occaecati voluptas minus ut numquam. In rerum provident rerum vitae accusamus. Harum et iusto vitae</h4>\n<img class=\"aligncenter\" src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/52027c60-e6f0-3f7d-b478-c1196c8c6a12.jpg\">\n<h4>Autem consectetur et itaque eos. Voluptas vel facilis repellat accusamus pariatur. Magnam eum voluptas et laboriosam illo alias</h4>\n<blockquote>Ratione iste <a title=\"Voluptas.\" href=\"https://www.doyle.com/qui-ut-eligendi-doloremque-et\">qui eligendi itaque. Quidem</a> repellat repudiandae atque sint. vero deserunt porro. Eligendi dolor blanditiis dicta sequi nihil qui. In <a title=\"Quia aspernatur consectetur deserunt dolor.\" href=\"http://prohaska.com/occaecati-qui-ex-sed-ipsam-veritatis-nostrum-omnis\">quos</a> est. Et et laborum eveniet ut. Non mollitia dolor veniam quos. Necessitatibus quidem perspiciatis accusantium laborum. Cum cum tempore corrupti ut temporibus necessitatibus voluptas. Officia dolores aut tenetur enim fugiat itaque assumenda. <a title=\"Ipsam perferendis voluptatibus magni.\" href=\"http://dooley.com/molestiae-veniam-id-ea-accusamus-alias-quas.html\">modi quisquam quo quidem</a> sunt molestiae. <a title=\"Neque itaque.\" href=\"https://www.zemlak.info/voluptatem-et-libero-eos-fuga-qui-reprehenderit\">velit alias voluptatem</a> Natus ipsum repudiandae est blanditiis placeat non.</blockquote>\n<hr>\n<h1>Excepturi accusantium sed occaecati ratione. Et nisi odit quia. Fugit quis voluptate modi quidem voluptatem et ut</h1>\n<hr>\n<ul><li>In omnis dolores inventore minima</li><li>Rerum cumque quia ipsum deleniti</li><li>Hic provident dicta veritatis rerum</li><li>Doloribus in ratione deleniti sapiente</li><li>Eum</li><li>Sed repellendus quis ea</li><li>Et ullam minima sit voluptate culpa</li><li>Sit nesciunt laborum fugit. Saepe id at ab ut</li></ul>', 'Sed aliquam dolor labore', '', 'future', 'open', 'closed', '', 'sed-aliquam-dolor-labore', '', '', '2021-02-27 08:35:33', '2021-02-27 07:35:33', '', 0, 'http://localhost/Youpi_WP/?p=76', 0, 'post', '', 0),
(77, 1, '2020-03-09 10:46:10', '2020-03-09 09:46:10', '', '9b898270-1e81-31d6-8389-bb7c90dd5121', '', 'inherit', 'open', 'closed', '', '9b898270-1e81-31d6-8389-bb7c90dd5121', '', '', '2020-03-09 10:46:10', '2020-03-09 09:46:10', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/9b898270-1e81-31d6-8389-bb7c90dd5121.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-08-16 19:48:08', '2020-08-16 17:48:08', '<p>Repellat tempora vel laborum Ea iste Omnis nihil quia voluptatibus. Ut aut expedita et eius. Non architecto <a title=\"Dolorem ab similique aliquam voluptatem.\" href=\"http://www.beatty.com/quaerat-veniam-reprehenderit-deleniti-autem\">iure quod nam</a> Neque ab voluptas laborum beatae. omnis magnam unde deleniti dolorem qui. Cupiditate voluptatibus illum Doloribus laudantium aut cupiditate Possimus deserunt illo iusto omnis eligendi maiores molestiae. accusantium aliquam ut ullam natus adipisci Quia quas dicta et amet consequuntur sed. Deleniti quaerat numquam provident quam Numquam sequi nesciunt facere laudantium. Aperiam dolor aspernatur quo repudiandae <a title=\"Est quod illo.\" href=\"http://schowalter.net/\">Velit cum magni nisi qui. Quas velit et</a> illo ipsa suscipit Culpa tempore et est. Asperiores perspiciatis nobis blanditiis Consequatur voluptas autem sint. a mollitia velit debitis accusantium nihil Sed nobis id maxime id labore odio ullam. ullam quibusdam omnis est. Autem magnam perspiciatis blanditiis. Quae officia commodi omnis et amet consequatur. eveniet voluptas eveniet. Sed adipisci aut sit Dolorem omnis nobis qui magni sed tenetur. Nemo quod aliquid sed fugiat tempore consequuntur. Aspernatur est corporis asperiores. Recusandae dolor suscipit laudantium consequatur. omnis harum magnam tempore Eos est dolores in. Velit ut perferendis doloribus rerum laboriosam. Voluptate ut qui molestiae incidunt nostrum Aliquid rerum quibusdam. Perferendis quisquam fugit dolorum. Consectetur commodi eos accusantium. Sed quia non impedit. <a title=\"Aliquid perferendis iste quia omnis et.\" href=\"http://www.feeney.com/laborum-libero-blanditiis-et-aut-voluptas-et-ex\">et aliquid cumque</a> impedit sit. Quis aperiam autem in alias. Sapiente in iusto recusandae. reprehenderit cupiditate dolore iusto similique.</p>\n<blockquote>Cumque dolore eligendi. Vel autem dolores minus Officiis omnis rerum asperiores et quasi dolor. Iusto <a title=\"Sint assumenda dolor nemo mollitia.\" href=\"http://www.blanda.org/aspernatur-reprehenderit-accusantium-neque-quia-architecto-odio-eaque-quos\">porro aspernatur</a> Quaerat nulla est ad.</blockquote>\n<ol><li>Aut tempora ut labore</li><li>Ducimus</li></ol>\n<h3>Itaque qui aut nostrum et. Nihil ratione expedita laboriosam saepe autem provident. Repudiandae sit inventore officiis fugiat. Labore aliquid molestias repellendus odit vel et</h3>\n<blockquote>Nihil accusantium sit adipisci tempore dolorem nihil commodi. Rem in adipisci sint natus. Voluptatibus delectus at magni ullam exercitationem. Eveniet et asperiores voluptate velit eum. Totam ut totam unde sunt et fugit a. Illo pariatur similique reiciendis reprehenderit. Quis ea esse rem minus quia consequatur veritatis. Dolorem facilis quas neque deleniti ut possimus. Consequuntur et quam dicta. Sunt autem asperiores adipisci neque eius. Et animi voluptatem perferendis illo quia excepturi qui. Aut ex aut sunt sed ex fugit est. Ut voluptatibus ut iste quo. Eligendi vitae aliquam nisi iste sit quo sunt nesciunt.</blockquote>\n<blockquote>Neque ut aliquam <a title=\"Optio.\" href=\"http://www.pagac.biz/doloribus-qui-non-aut-non-natus\">perspiciatis corporis ullam. Qui veritatis</a> qui incidunt. Omnis dolores et sed voluptatem molestias voluptate sapiente. Et cupiditate <a title=\"Beatae non quia perspiciatis aut sunt ut nihil fuga.\" href=\"http://www.runolfsson.com/temporibus-fuga-exercitationem-et-praesentium-sapiente-aliquam-et\">saepe accusamus est.</a> culpa non voluptas rem fugit. Natus sequi et sapiente Aut nisi et est quia aut non quo. Qui qui debitis qui nobis <a title=\"Minus nesciunt.\" href=\"http://toy.biz/itaque-corrupti-et-et-commodi-esse\">Quia</a> illo dolorem qui vel voluptatem. Repellendus <a title=\"Ut beatae.\" href=\"http://www.mckenzie.biz/nesciunt-repellendus-ipsam-animi-ipsa-ab-eius-aliquid\">veniam molestiae dolor</a> dolore natus. iure eaque et eaque nemo rerum. Optio tenetur exercitationem Ut odit quia quaerat velit numquam. ad esse est maxime id. Et <a title=\"Ea.\" href=\"http://lesch.com/\">consequuntur laboriosam sapiente eligendi esse.</a> illo provident quia nisi Magni repudiandae asperiores quibusdam aut officiis <a title=\"Impedit odit.\" href=\"http://corwin.com/id-fuga-aut-et-ipsa\">Sit asperiores fugiat illo</a> Facilis debitis expedita et quod. Qui incidunt magni accusamus <a title=\"Accusantium.\" href=\"http://spencer.net/sed-ut-maiores-ut-possimus-est-fuga\">Quo exercitationem nobis libero</a> eaque. cumque quia vero voluptates unde. Velit <a title=\"Quia aut temporibus culpa quo.\" href=\"https://www.gorczany.info/reprehenderit-ut-nesciunt-aut-sed-velit-ea\">nulla doloribus id rerum nostrum</a> animi. Ut sequi aut vero. Ut nisi reiciendis. Eum <a title=\"Ea dolorem.\" href=\"https://www.wehner.com/quae-quam-exercitationem-aspernatur\">praesentium voluptatem rerum</a> In dolorum beatae aperiam pariatur nisi. in quibusdam occaecati illum <a title=\"Commodi.\" href=\"http://www.spinka.com/nobis-quae-excepturi-exercitationem-adipisci-maiores-corrupti-dolor\">dolor.</a> at ab eos explicabo officiis et. Doloribus debitis non quidem reprehenderit aut. Est sed est pariatur repellendus. Fuga nam et ex. Voluptatem fuga laborum. Quos quod et eos et. minima quaerat eveniet blanditiis hic voluptatem. Omnis praesentium excepturi quam. Ea saepe repellendus eum voluptatem.</blockquote>\n<!--more-->\n<hr>\n<blockquote>Reprehenderit omnis autem accusamus voluptate quam. Est rerum occaecati ea. Harum dolorum ducimus aperiam eius est. Aspernatur et voluptatum quod. Fugit eos pariatur aut quaerat. Officia modi et omnis quia et qui. Est iusto temporibus Exercitationem aperiam eaque deserunt eum reiciendis. Veniam qui ea est eos dolores <a title=\"Consequuntur aut impedit voluptate qui et excepturi quae cum corporis.\" href=\"http://volkman.net/saepe-dolorem-quo-omnis-et-omnis-neque\">aut.</a></blockquote>\n<h5>Omnis enim porro eos ut nihil</h5>\n<hr>', 'Officia voluptas sint eum nemo', 'Voluptas est numquam porro aut quam illum maiores est repellendus sint aut et recusandae cum iure doloremque vel ut eum nesciunt sit perferendis et laudantium fugit quia illo quia et autem perferendis consequatur quam vel maxime inventore autem quis ad placeat et sint exercitationem quisquam corrupti blanditiis sequi rerum iusto rerum modi enim sit molestiae itaque aspernatur repudiandae inventore minus rerum quidem necessitatibus saepe eos quis unde molestias aliquam accusantium omnis enim totam dolorum ut voluptas vel et.\n\nArchitecto sapiente aliquam ut vel facilis illo suscipit veritatis deserunt dicta sed labore similique aut facilis ex aut delectus iusto temporibus et autem qui dolorem laboriosam sed unde ratione quis iusto neque sed nulla accusantium laboriosam qui sunt magnam tempora et itaque ab at animi ipsa aliquid ut porro nesciunt nesciunt rerum expedita dignissimos iusto repellendus velit eaque est nesciunt quidem explicabo et est necessitatibus provident optio expedita in ab omnis repellendus veniam quo odio excepturi itaque enim et quae at quisquam magni quas quia voluptatem eos totam provident tempora iste sit qui illum ipsum.', 'future', 'open', 'open', '', 'officia-voluptas-sint-eum-nemo', '', '', '2020-08-16 19:48:08', '2020-08-16 17:48:08', '', 0, 'http://localhost/Youpi_WP/?p=78', 0, 'post', '', 0),
(79, 1, '2020-03-09 10:46:12', '2020-03-09 09:46:12', '', 'ddaf36d1-9eb3-32de-a26f-1e4f954f3703', '', 'inherit', 'open', 'closed', '', 'ddaf36d1-9eb3-32de-a26f-1e4f954f3703', '', '', '2020-03-09 10:46:12', '2020-03-09 09:46:12', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/ddaf36d1-9eb3-32de-a26f-1e4f954f3703.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-03-09 10:46:13', '2020-03-09 09:46:13', '', 'f991e70c-9700-3875-a553-c0f0030d6e24', '', 'inherit', 'open', 'closed', '', 'f991e70c-9700-3875-a553-c0f0030d6e24', '', '', '2020-03-09 10:46:13', '2020-03-09 09:46:13', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/f991e70c-9700-3875-a553-c0f0030d6e24.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-03-09 10:46:14', '2020-03-09 09:46:14', '', 'c3b206c0-68fa-3b3d-927f-64a476b32f5d', '', 'inherit', 'open', 'closed', '', 'c3b206c0-68fa-3b3d-927f-64a476b32f5d', '', '', '2020-03-09 10:46:14', '2020-03-09 09:46:14', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/c3b206c0-68fa-3b3d-927f-64a476b32f5d.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-12-11 11:21:47', '2020-12-11 10:21:47', '<img src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/f991e70c-9700-3875-a553-c0f0030d6e24.jpg\">\n<h2>Fugiat modi ipsam sapiente repudiandae</h2>\n<p>Eos totam ut voluptate. Magnam ab sequi recusandae debitis. Quos sapiente velit ad ad. <a title=\"Voluptatibus corrupti.\" href=\"http://www.marvin.com/tenetur-aliquid-repellat-sapiente-repudiandae-aut-ea-dolorem-culpa\">sed</a> quia numquam Officia rerum et autem non. Corporis <a title=\"Quo qui ut.\" href=\"http://schuster.com/natus-amet-ex-molestiae-voluptatem\">ea harum molestias. Atque corporis</a> non dolor aut. Inventore in ipsa dolores et saepe a. Placeat iusto accusamus voluptatibus voluptas et Perferendis consectetur beatae facilis aut. Ut assumenda mollitia nemo. Quis qui ea laudantium sunt quam animi. Accusamus aut libero sunt aut enim. <a title=\"Consequatur eum voluptatum beatae tenetur.\" href=\"http://www.pouros.com/illo-qui-qui-molestiae-maxime-ea-itaque-et-est\">consequuntur deleniti consequuntur quis nemo. Impedit ipsam</a> et nobis dolores</p>\n<h5>Dolore voluptate voluptatem temporibus porro quas. Fuga eos illo necessitatibus sit fugiat. Rerum inventore aut aliquam sint tempore</h5>\n<img src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/8e870fd8-4614-3717-af8f-dd8d1bc57b8d.jpg\">\n<img src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/c3b206c0-68fa-3b3d-927f-64a476b32f5d.jpg\">\n<hr>\n<h2>Et soluta repudiandae molestiae fugiat sit voluptas. Quod nostrum accusamus est nemo non. Excepturi eligendi labore dolore perferendis voluptates</h2>\n<!--more-->\n<ul><li>Sunt a ut quia</li><li>Quo voluptatem rem voluptas id aut sunt</li></ul>\n<h5>Et nesciunt ab consequuntur voluptatem porro numquam. Voluptas nostrum rerum magnam et id explicabo qui. Vel itaque ut ab provident quaerat</h5>\n<hr>\n<h5>Saepe voluptatibus pariatur voluptatem officia omnis</h5>\n<ul><li>Voluptas vel debitis</li><li>Nam qui atque ex cupiditate placeat et</li><li>Fugiat ipsam minus</li><li>Ea reprehenderit laboriosam officia aliquid</li><li>Illo laboriosam odio voluptas recusandae corrupti</li></ul>\n<p>Eligendi sunt eligendi doloribus eos rerum officiis. Consectetur et beatae vitae. asperiores ut aspernatur impedit similique qui. Quos eos eius voluptatem distinctio excepturi. Officia veritatis dolorem. Aut sapiente quam nihil quos reprehenderit. Sunt architecto reprehenderit eligendi sed mollitia enim. Quam dolorem eum nam necessitatibus cupiditate. eligendi iste dolorum quia. Velit nihil et accusamus. In in error dignissimos voluptatum. Alias in necessitatibus est corrupti. omnis laudantium rerum consequatur Impedit id veniam perspiciatis quasi ut. Dolor quasi eum mollitia. <a title=\"Iusto non.\" href=\"http://www.gislason.com/\">asperiores quasi ipsam aut dolor. Explicabo error</a> expedita error autem totam. Nihil aspernatur numquam id enim incidunt unde Ut ut tempore ipsam odio sint. Et illo unde et consequatur et. Cum molestiae esse deserunt similique sint. Voluptatem voluptatem reiciendis aut alias Necessitatibus mollitia quo dolores in voluptas impedit dolorum. consequatur vel nostrum perferendis sapiente. Quisquam et nemo ea illo similique qui. Dignissimos dolorem sed deserunt sed rerum. Vero sit eius pariatur aut Et aut odio itaque impedit Vel laudantium maxime et deserunt nobis. Incidunt optio ab. Corporis quia maiores at sed Asperiores explicabo qui modi eos dolores dolores. veniam omnis impedit et aut dolorem. quia nostrum necessitatibus id expedita libero Sit magni atque voluptatem et doloribus necessitatibus sit. Esse sit dolor expedita repudiandae quibusdam Accusantium possimus commodi voluptate. Maiores voluptas non magni corrupti. Esse corporis sunt qui. Fuga delectus rerum expedita. Sint praesentium molestias illum et enim Qui sunt enim blanditiis doloremque ad. Necessitatibus quas molestiae id. Sapiente aliquam assumenda quis ut.</p>', 'Provident culpa aspernatur laudantium quis dolorem', 'Explicabo suscipit quaerat voluptas aut aspernatur modi dolorem qui non quia ipsam nesciunt consequuntur qui qui nulla quaerat aliquam ut suscipit eius quibusdam itaque aut dolor cumque incidunt sed ut id quis qui.', 'future', 'open', 'closed', '', 'provident-culpa-aspernatur-laudantium-quis-dolorem', '', '', '2020-12-11 11:21:47', '2020-12-11 10:21:47', '', 0, 'http://localhost/Youpi_WP/?p=82', 0, 'post', '', 0),
(83, 1, '2020-03-09 10:46:15', '2020-03-09 09:46:15', '', '4e40d703-d256-3d8c-bc7c-e3a86a3c732f', '', 'inherit', 'open', 'closed', '', '4e40d703-d256-3d8c-bc7c-e3a86a3c732f', '', '', '2020-03-09 10:46:15', '2020-03-09 09:46:15', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/4e40d703-d256-3d8c-bc7c-e3a86a3c732f.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-05-08 10:47:06', '2020-05-08 08:47:06', '<h3>Ut aut iure omnis facilis et cupiditate soluta. Nesciunt et qui voluptatem sit laboriosam esse ullam. Omnis aspernatur debitis sequi</h3>\n<hr>\n<h4>Cumque qui ipsum minus delectus optio recusandae est et. Ut praesentium dolorum et non ad velit distinctio</h4>\n<ul><li>Aliquid</li><li>Id ex eos eum repudiandae vel harum culpa</li><li>Quidem vel alias</li><li>Ex expedita quod dolorem totam</li><li>Vel sequi quia voluptatem omnis deserunt</li></ul>\n<!--more-->\n<p>Eveniet praesentium eveniet tenetur perspiciatis. Dolores veritatis cumque ipsam autem atque voluptatibus. Ut ducimus sunt animi dolorum animi. Delectus ut laudantium asperiores. Facilis dolorem nisi vitae totam ut ut quasi quia. Mollitia et et explicabo corrupti blanditiis iste. Aspernatur velit vitae ea iusto amet. Velit iure est in laboriosam qui ut. Ea est fuga possimus consequatur maiores. Est voluptas iure consequatur quas perspiciatis qui. Eveniet vitae in tenetur deserunt blanditiis aut dolores molestiae. Enim sit sunt occaecati nisi quidem earum. Est qui voluptatem delectus dolores eos aut magnam. Aut adipisci ut sed minima accusamus optio ut. Expedita rerum hic atque natus aut accusantium. Debitis quaerat tempore in pariatur voluptatem rerum consequatur. Quaerat quia ullam non eum. Voluptate rem fugiat veritatis voluptatum facilis consectetur. Ducimus incidunt quos ullam deserunt id aperiam. Et aperiam magni impedit qui vel. A dolorem ea molestiae sit eum consequatur nihil. Quis eaque sit soluta sit. Quia dolore odio aut quibusdam et reprehenderit. Consectetur delectus ipsa assumenda eos et illum. Et cum adipisci reprehenderit nihil error mollitia dolor commodi. Eos aut nisi sapiente autem. Voluptate modi non omnis rerum qui. Praesentium rerum unde iste qui quae. Itaque tenetur occaecati earum iure voluptatibus reprehenderit totam vitae. Veritatis ullam at atque recusandae fugit beatae. Debitis velit recusandae atque et delectus sed fuga.</p>\n<h6>Et ducimus dolorem quo assumenda. Autem distinctio voluptatem velit fuga sunt. Vel voluptatem vel fugit incidunt omnis quas</h6>\n<hr>', 'Dolorem dolorem voluptates quae fugiat', 'Earum perferendis ipsam tenetur ut animi ut et sint molestiae nihil optio provident iste eius quia quia odit assumenda ipsa ut corrupti dolor ut est aperiam deleniti aperiam esse eum sed est quisquam non dolorem quidem maxime repellendus maiores unde nam praesentium porro.\n\nMinus quos quas tempore dicta nulla dolorem assumenda necessitatibus magnam architecto voluptas repellendus quae saepe cumque non ut nihil deleniti et inventore sed nisi sit unde ad cum et id voluptatem libero omnis et quibusdam incidunt dolor iste et dolorem nisi ad ut magni eos voluptatibus cupiditate illum aliquid ea porro cumque dolorum numquam.', 'future', 'open', 'closed', '', 'dolorem-dolorem-voluptates-quae-fugiat', '', '', '2020-05-08 10:47:06', '2020-05-08 08:47:06', '', 0, 'http://localhost/Youpi_WP/?p=84', 0, 'post', '', 0),
(85, 1, '2020-03-09 10:46:17', '2020-03-09 09:46:17', '', '547b9b40-3005-31bc-8bf4-862d7bd402e2', '', 'inherit', 'open', 'closed', '', '547b9b40-3005-31bc-8bf4-862d7bd402e2', '', '', '2020-03-09 10:46:17', '2020-03-09 09:46:17', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/547b9b40-3005-31bc-8bf4-862d7bd402e2.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-03-09 10:51:37', '2020-03-09 09:51:37', '<blockquote>Magnam quas error cumque similique natus occaecati. sunt maiores sint. voluptas non ipsa In ipsa est facilis rerum ipsa delectus aliquid modi. illo assumenda rerum Et harum perspiciatis aut qui rerum sint. Odio ipsa sapiente quam tempora. Eos fugit libero non mollitia earum. Voluptatibus sint qui eos Ea optio molestias nihil. Error praesentium maxime dolorum eos consequatur. Voluptas quia temporibus quis omnis voluptatum Et fuga facere sit. non velit sed. Ipsum ex quia accusantium magni. voluptates praesentium occaecati Reprehenderit nam nisi voluptatibus dolorem. Illum dolorem ut. Quas tempore delectus illum ratione. Quos cupiditate occaecati aut enim voluptas. Et dicta quia. molestias in suscipit nobis modi. adipisci nihil occaecati qui eius. Voluptates qui earum tenetur amet dolores quia. Quasi numquam qui qui Saepe quia ipsa omnis officiis. Voluptas repudiandae nihil eum aliquid Exercitationem ad quo enim deserunt quaerat dolores Est asperiores eius rerum officiis qui Fuga quibusdam nihil ratione aut et iure. alias dolor labore fugit fuga est. distinctio soluta mollitia corporis debitis. Vel sit quasi est Aliquam et qui sapiente ut Esse sint aut natus eaque aliquid. Aliquid a et Rem enim provident adipisci <a title=\"Harum et occaecati.\" href=\"http://www.paucek.com/accusantium-reprehenderit-temporibus-rerum-dolorem-occaecati-quia-perspiciatis-sunt\">consequatur eligendi</a> Sit ducimus ea</blockquote>\n<ul><li>Qui veniam aliquid officiis</li><li>Quibusdam assumenda</li><li>Quisquam ad dolorem voluptatem</li></ul>\n<h1>Ut sit corporis placeat dolorem. Ex nostrum omnis fuga delectus optio. Commodi ratione quia aliquam eum id</h1>\n<ul><li>Officia odit</li><li>In sit eum odio enim at</li><li>Quod quaerat qui reiciendis praesentium tempore et</li><li>Deserunt eius saepe in rerum</li><li>Corporis ut laboriosam doloribus in totam</li><li>Iure ea labore eum est</li></ul>\n<!--more-->\n<h6>Molestiae odio qui quis sit voluptatem. Assumenda ab sed ex eaque. Quaerat pariatur est libero ipsa totam perspiciatis. Eos adipisci corrupti quod ipsum ut</h6>\n<ol><li>Quam dignissimos</li><li>Aliquid minima</li><li>Recusandae ea</li><li>Necessitatibus nostrum veniam et</li><li>Ut rerum ut et veniam</li><li>Aut qui omnis non</li></ol>\n<h2>Consequatur aut aperiam hic animi qui magnam</h2>\n<ul><li>Sint iusto porro non illum</li><li>Non ducimus est et</li><li>Vero fugiat</li><li>Ipsam reiciendis non dolor est</li><li>Quae et eius quas sequi sint et</li><li>Dolorem quam</li><li>Aliquid dicta</li></ul>\n<hr>\n<h4>Id repellat quo voluptatibus temporibus velit pariatur est</h4>\n<p>Quos modi <a title=\"Maiores ipsam iure et.\" href=\"http://www.kunze.com/\"><a title=\"Exercitationem eos non sapiente quia ea.\" href=\"http://www.mcdermott.com/ipsa-explicabo-possimus-ut-rerum-voluptas-corporis\">dolorem sit tenetur quidem</a></a> <a title=\"Animi dolores facilis quod.\" href=\"http://torp.com/non-et-tempore-at-quod-et-a.html\">Non cumque ut dolorum expedita impedit</a> <a title=\"Nihil.\" href=\"http://nikolaus.com/sint-eveniet-sint-itaque\">totam</a></p>\n<ul><li>Dolor facere minus rerum ea</li><li>Ea dolorum sit ex ut</li></ul>', 'Dolorum voluptatem molestiae amet', 'Dolores cumque asperiores quo ut tempore aperiam officiis explicabo deserunt cum quae vel ratione possimus accusamus tenetur quod nemo sint voluptatem autem cupiditate vero atque beatae aliquam molestiae sint et alias esse eum autem ut corrupti est incidunt aut mollitia veniam in est et tenetur accusamus.\n\nUt et velit quia modi nam repudiandae ut sint dolorem sequi dolore id corrupti recusandae iste quia debitis fuga sunt occaecati vel facilis facere vitae aut est aspernatur sit est sint officia deserunt optio et.', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-03-09 10:51:37', '2020-03-09 09:51:37', '', 71, 'http://localhost/Youpi_WP/71-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `yo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2020-03-09 10:51:44', '2020-03-09 09:51:44', '<ol><li>Doloribus sunt enim earum qui</li><li>Ut in exercitationem eos dignissimos vitae sapiente</li><li>Dignissimos et id</li><li>Voluptates amet aut velit maiores</li><li>Facilis ex</li></ol>\n<ol><li>Et nesciunt</li><li>Perferendis harum error sint amet</li><li>Iste et dolor magni dolorum et</li><li>Sint nemo</li><li>Inventore sed ut repudiandae et</li><li>Sequi id nostrum et nemo iste</li><li>Aut aut sed vel et adipisci</li></ol>\n<blockquote>Sit omnis magnam nobis fugiat impedit est. at voluptatem id nulla est. Quis dolorem quidem. velit eveniet a ea. <a title=\"Eaque sint eum tempore libero quo molestiae sed.\" href=\"http://www.senger.info/qui-amet-minus-aut-quo-praesentium-nam\">voluptatem qui</a> et accusamus. Officia qui qui architecto tempora et sed. <a title=\"Ex odio.\" href=\"http://gusikowski.com/perspiciatis-fugit-ut-quia-et-quam-consequatur\">eaque sapiente</a> ratione <a title=\"Quo.\" href=\"http://zulauf.com/quis-impedit-similique-illum\">rerum.</a> natus dolor assumenda quibusdam iure. facilis <a title=\"Sed quae.\" href=\"http://schowalter.info/sapiente-voluptatem-voluptas-minima-ad-aut.html\">est consequatur deleniti</a> In qui asperiores et unde nisi. Nihil voluptatibus officiis ipsam. Beatae voluptatum <a title=\"Et tenetur occaecati.\" href=\"http://ryan.org/expedita-et-qui-voluptate-qui.html\">et nihil impedit et ut.</a> accusantium ut in eveniet odio sint enim. Id accusantium ducimus consequatur beatae illo minus. Et porro iure sit itaque quo. Eos soluta <a title=\"Voluptatem est.\" href=\"http://www.larkin.org/illo-nam-voluptatem-veniam-at-consequatur-sint-voluptatem\">dolores aut. Ut</a> adipisci quidem eos voluptas. Rem a exercitationem eveniet et Provident perferendis et corporis non. Occaecati illo <a title=\"Qui ipsam hic aliquam qui officiis.\" href=\"http://www.schultz.com/\">quibusdam nam. Provident laudantium aperiam</a> perspiciatis ipsum. Odio iste dolore deleniti ut itaque harum <a title=\"Necessitatibus magnam omnis aut hic veritatis nesciunt.\" href=\"https://www.heathcote.com/hic-consequuntur-nulla-doloremque\">Aperiam ut id iusto</a> <a title=\"Quidem.\" href=\"http://www.mcclure.com/nemo-rerum-sunt-deserunt-tempora.html\">rem in. Est</a> aut dolor magni corrupti Reprehenderit aut ut qui incidunt. Est explicabo libero <a title=\"Qui illo ex veritatis pariatur.\" href=\"http://wiegand.net/assumenda-corrupti-omnis-ratione-consequatur-tempore-consequuntur-ipsum\">ut. Sunt temporibus</a> voluptatibus quam harum architecto. Et voluptas nemo et. odio corrupti similique et incidunt. Et totam error magni aliquam aliquam omnis. Velit saepe maxime voluptates. Ipsam magni ea nihil.</blockquote>\n<h1>Exercitationem delectus sint ex quas ut autem. Sapiente ipsum nesciunt nihil sunt. Magni accusantium vero quia sit voluptates</h1>\n<!--more-->\n<img src=\"http://localhost/Youpi_WP/wp-content/uploads/2020/03/62f98fbb-52ff-3d73-b79b-13103ec00726.jpg\">\n<p><a title=\"Quo eius qui.\" href=\"https://baumbach.biz/facere-deserunt-in-consequatur-nisi-molestiae-id.html\">Voluptatem nihil</a> voluptatibus atque ea Debitis consequatur cum accusamus Voluptas molestias ut dolorem illum qui. voluptatibus soluta quo Adipisci nisi rerum doloribus ad qui. Ut maiores magni Eum qui blanditiis enim occaecati eos. Commodi aperiam doloribus accusamus. Dolorem enim vitae ducimus Mollitia quae nulla fugit dolor. Molestiae rerum voluptas possimus quas ipsa omnis. Unde perferendis et ea. Minus odit quia nemo expedita dignissimos ut. Porro et ullam doloremque <a title=\"Porro.\" href=\"http://www.willms.com/\">Ipsam non ut</a> provident. Magnam aspernatur vel officiis.</p>\n<p>Aut occaecati eius culpa. Libero ut et amet alias ea porro. Officia neque est nesciunt. Ea quo <a title=\"Eveniet labore necessitatibus laudantium quidem.\" href=\"http://www.huel.info/nam-et-qui-consequatur-accusantium\">sed iste. Velit</a> natus <a title=\"Autem explicabo et rem.\" href=\"http://streich.com/omnis-corrupti-commodi-repellendus-voluptatem-occaecati-commodi.html\">consequatur</a> Eos nemo beatae tempore reprehenderit Perferendis eum magni harum ullam exercitationem debitis. Quis neque voluptatum et. Dolorem placeat dignissimos doloribus autem et at. Est nulla numquam totam. Mollitia voluptates minus fugiat <a title=\"Provident vero ex pariatur id nesciunt.\" href=\"http://watsica.com/sint-architecto-velit-qui-sit-vel\">quis. Neque</a> aut mollitia. Corrupti ratione sed voluptatem amet.</p>\n<blockquote>Possimus vel nemo Dolorem ullam quo blanditiis eligendi et. Amet sed sequi eligendi aut et. Saepe sapiente voluptatem. Sunt et deserunt ratione Et animi sequi aliquam amet et. Ut quia deserunt Blanditiis aspernatur ab laboriosam architecto. Voluptas quo quia non cum. Ea sit nulla et natus ratione. Sit nam labore cum corporis. Dignissimos corporis ullam. Id nesciunt magni. Praesentium dolore pariatur sed libero ad mollitia. Aut et commodi adipisci excepturi et quisquam. Quaerat quam libero reiciendis expedita qui ullam. Aut ut ut voluptatem tenetur aperiam. distinctio illum officia ut. Pariatur error molestiae optio itaque corrupti sit et. sequi aperiam inventore dolorem quaerat repellat est. Ipsa quo eum et autem ratione. Assumenda reiciendis officiis ut nesciunt nihil. Voluptatem perferendis eum exercitationem ut. eaque eaque quae. Voluptatem saepe quas provident. Consequatur sint est est sit repellat sint. dolorem hic rerum architecto dolorem. Amet officia perferendis amet Omnis atque nulla et quam consequatur qui <a title=\"Aut nihil nam in.\" href=\"http://breitenberg.biz/ex-quo-maxime-nobis-qui-omnis.html\">Deserunt</a> ullam facere sed Illo ut commodi harum suscipit reiciendis iure Porro voluptas quod quasi. Fugit non velit ipsam quia. Culpa facilis adipisci incidunt odio autem.</blockquote>', 'Nemo sunt omnis suscipit', 'Eos aut impedit molestiae eos tempora id odio rerum explicabo placeat incidunt iure id aut quia molestias minima occaecati et laboriosam minus culpa saepe corrupti optio hic ab magnam omnis aspernatur voluptates rerum quas sit ut ullam sequi officiis maiores velit eius at reiciendis in magnam quia unde voluptas a blanditiis molestiae iusto laudantium id repellat qui consequatur ad voluptatibus necessitatibus debitis et sunt a laborum possimus et dolor ea ad ab alias reiciendis in omnis quia soluta culpa enim iste.', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-03-09 10:51:44', '2020-03-09 09:51:44', '', 69, 'http://localhost/Youpi_WP/69-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-03-09 10:51:50', '2020-03-09 09:51:50', '<h2>Et nemo id laborum aut fuga. Et sapiente rerum ipsam id hic quasi</h2>\n<ul><li>Quo magni aut deserunt in maxime</li><li>Amet similique nobis voluptatum sequi officia</li><li>Voluptates ipsam voluptatem tenetur</li><li>Delectus vero in non</li><li>Rerum</li></ul>\n<blockquote>Commodi nostrum et corporis velit repudiandae. Praesentium quae porro atque facilis voluptatem adipisci aut eos. Voluptates non veniam consequuntur id magni rerum maiores possimus. Illo maxime eius ut corporis officia. Iusto esse consequatur delectus aut. Neque earum fugiat porro placeat eligendi repudiandae repellat. Occaecati repudiandae quo architecto minus. Reprehenderit optio ea quidem. Consequatur possimus sit aut qui repellendus vel voluptate.</blockquote>\n<!--more-->\n<hr>', 'Hic facilis non dolor', 'Omnis nihil eos non commodi quas aut sit quia nihil qui ipsam nemo est praesentium occaecati voluptas placeat debitis quia quos similique eveniet velit optio et tempora doloribus modi aliquam ut tenetur temporibus reiciendis illo est.', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-03-09 10:51:50', '2020-03-09 09:51:50', '', 60, 'http://localhost/Youpi_WP/60-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-03-09 11:00:27', '2020-03-09 10:00:27', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-03-09 11:00:27', '2020-03-09 10:00:27', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2020-03-09 11:08:27', '2020-03-09 10:08:27', 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-2.png', 'cropped-youpi_logo-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-youpi_logo-2-png', '', '', '2020-03-09 11:08:27', '2020-03-09 10:08:27', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-2.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2020-03-09 11:08:36', '2020-03-09 10:08:36', '{\n    \"site_icon\": {\n        \"value\": 90,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 10:08:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '67845c58-97ed-4135-a24f-98c6b704daf3', '', '', '2020-03-09 11:08:36', '2020-03-09 10:08:36', '', 0, 'http://localhost/Youpi_WP/67845c58-97ed-4135-a24f-98c6b704daf3/', 0, 'customize_changeset', '', 0),
(92, 1, '2020-03-09 11:10:35', '2020-03-09 10:10:35', 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-3.png', 'cropped-youpi_logo-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-youpi_logo-3-png', '', '', '2020-03-09 11:10:35', '2020-03-09 10:10:35', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-3.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2020-03-09 11:10:40', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": 92,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 10:10:40\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '009dd6c9-f7c2-42ea-b8cb-4b0808b087fb', '', '', '2020-03-09 11:10:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/Youpi_WP/?p=93', 0, 'customize_changeset', '', 0),
(94, 1, '2020-03-09 11:11:32', '2020-03-09 10:11:32', 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg', 'cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a-jpg', '', '', '2020-03-09 11:11:32', '2020-03-09 10:11:32', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-b5c0f25a-24e9-3247-8838-5c7e490a646a.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2020-03-09 11:11:36', '2020-03-09 10:11:36', '{\n    \"site_icon\": {\n        \"value\": 94,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 10:11:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6cf20660-a297-492d-8839-1a51acfcde61', '', '', '2020-03-09 11:11:36', '2020-03-09 10:11:36', '', 0, 'http://localhost/Youpi_WP/6cf20660-a297-492d-8839-1a51acfcde61/', 0, 'customize_changeset', '', 0),
(96, 1, '2020-03-09 11:12:25', '2020-03-09 10:12:25', 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-4.png', 'cropped-youpi_logo-4.png', '', 'inherit', 'open', 'closed', '', 'cropped-youpi_logo-4-png', '', '', '2020-03-09 11:12:25', '2020-03-09 10:12:25', '', 0, 'http://localhost/Youpi_WP/wp-content/uploads/2020/03/cropped-youpi_logo-4.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2020-03-09 11:12:29', '2020-03-09 10:12:29', '{\n    \"site_icon\": {\n        \"value\": 96,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 10:12:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a6fa5ee-fbc0-4ca2-a966-9c43bad41a1e', '', '', '2020-03-09 11:12:29', '2020-03-09 10:12:29', '', 0, 'http://localhost/Youpi_WP/2a6fa5ee-fbc0-4ca2-a966-9c43bad41a1e/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `yo_termmeta`
--

CREATE TABLE `yo_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_terms`
--

CREATE TABLE `yo_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_terms`
--

INSERT INTO `yo_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Principal', 'principal', 0),
(5, 'Blog', 'blog', 0),
(6, 'simple', 'simple', 0),
(7, 'grouped', 'grouped', 0),
(8, 'variable', 'variable', 0),
(9, 'external', 'external', 0),
(10, 'exclude-from-search', 'exclude-from-search', 0),
(11, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(12, 'featured', 'featured', 0),
(13, 'outofstock', 'outofstock', 0),
(14, 'rated-1', 'rated-1', 0),
(15, 'rated-2', 'rated-2', 0),
(16, 'rated-3', 'rated-3', 0),
(17, 'rated-4', 'rated-4', 0),
(18, 'rated-5', 'rated-5', 0),
(19, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `yo_term_relationships`
--

CREATE TABLE `yo_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_term_relationships`
--

INSERT INTO `yo_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(32, 1, 0),
(34, 1, 0),
(38, 1, 0),
(44, 1, 0),
(46, 1, 0),
(49, 1, 0),
(51, 1, 0),
(53, 1, 0),
(56, 1, 0),
(58, 1, 0),
(60, 5, 0),
(63, 1, 0),
(66, 1, 0),
(69, 5, 0),
(71, 5, 0),
(73, 1, 0),
(76, 1, 0),
(78, 1, 0),
(82, 1, 0),
(84, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `yo_term_taxonomy`
--

CREATE TABLE `yo_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_term_taxonomy`
--

INSERT INTO `yo_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(5, 5, 'category', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `yo_usermeta`
--

CREATE TABLE `yo_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_usermeta`
--

INSERT INTO `yo_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'clem'),
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
(12, 1, 'yo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'yo_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6b76aa29e46341956aaba84cac2e510b93140a208937e657cbc1fc775986e1b8\";a:4:{s:10:\"expiration\";i:1583916725;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583743925;}}'),
(17, 1, 'yo_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'yo_user-settings', 'libraryContent=browse'),
(19, 1, 'yo_user-settings-time', '1583745095'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, '_woocommerce_tracks_anon_id', 'woo:WtGMK9i4hMKujeJkhYdYDCCJ'),
(24, 1, 'wc_last_active', '1583712000');

-- --------------------------------------------------------

--
-- Structure de la table `yo_users`
--

CREATE TABLE `yo_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_users`
--

INSERT INTO `yo_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'clem', '$P$BPBD.YKaaYp10hGMhp7bu2qxEjT/HK1', 'clem', 'dumasclementjulien@yahoo.fr', '', '2020-03-09 08:51:46', '', 0, 'clem');

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_admin_notes`
--

CREATE TABLE `yo_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_wc_admin_notes`
--

INSERT INTO `yo_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-09 10:00:49', NULL, 0),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-09 10:00:50', NULL, 0),
(3, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-09 10:00:50', NULL, 0),
(4, 'wc-admin-add-first-product', 'info', 'en_US', 'Add your first product', 'Grow your revenue by adding products to your store. Add products manually, import from a sheet, or migrate from another platform.', 'product', '{}', 'unactioned', 'woocommerce-admin', '2020-03-09 10:02:19', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_admin_note_actions`
--

CREATE TABLE `yo_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_wc_admin_note_actions`
--

INSERT INTO `yo_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(3, 3, 'continue-profiler', 'Continue Store Setup', 'http://localhost/Youpi_WP/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(4, 3, 'skip-profiler', 'Skip Setup', 'http://localhost/Youpi_WP/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0),
(5, 4, 'add-a-product', 'Add a product', 'http://localhost/Youpi_WP/wp-admin/post-new.php?post_type=product', 'actioned', 1);

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_category_lookup`
--

CREATE TABLE `yo_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_wc_category_lookup`
--

INSERT INTO `yo_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(19, 19);

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_customer_lookup`
--

CREATE TABLE `yo_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_download_log`
--

CREATE TABLE `yo_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_order_coupon_lookup`
--

CREATE TABLE `yo_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_order_product_lookup`
--

CREATE TABLE `yo_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_order_stats`
--

CREATE TABLE `yo_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_order_tax_lookup`
--

CREATE TABLE `yo_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_product_meta_lookup`
--

CREATE TABLE `yo_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_tax_rate_classes`
--

CREATE TABLE `yo_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_wc_tax_rate_classes`
--

INSERT INTO `yo_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Taux réduit', 'taux-reduit'),
(2, 'Taux zéro', 'taux-zero');

-- --------------------------------------------------------

--
-- Structure de la table `yo_wc_webhooks`
--

CREATE TABLE `yo_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_api_keys`
--

CREATE TABLE `yo_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_attribute_taxonomies`
--

CREATE TABLE `yo_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `yo_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_log`
--

CREATE TABLE `yo_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_order_itemmeta`
--

CREATE TABLE `yo_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_order_items`
--

CREATE TABLE `yo_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_payment_tokenmeta`
--

CREATE TABLE `yo_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_payment_tokens`
--

CREATE TABLE `yo_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_sessions`
--

CREATE TABLE `yo_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `yo_woocommerce_sessions`
--

INSERT INTO `yo_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:715:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:27:\"dumasclementjulien@yahoo.fr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1583920854);

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_shipping_zones`
--

CREATE TABLE `yo_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_shipping_zone_locations`
--

CREATE TABLE `yo_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_shipping_zone_methods`
--

CREATE TABLE `yo_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_tax_rates`
--

CREATE TABLE `yo_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yo_woocommerce_tax_rate_locations`
--

CREATE TABLE `yo_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `yo_commentmeta`
--
ALTER TABLE `yo_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `yo_comments`
--
ALTER TABLE `yo_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `yo_links`
--
ALTER TABLE `yo_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `yo_options`
--
ALTER TABLE `yo_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `yo_postmeta`
--
ALTER TABLE `yo_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `yo_posts`
--
ALTER TABLE `yo_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `yo_termmeta`
--
ALTER TABLE `yo_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `yo_terms`
--
ALTER TABLE `yo_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `yo_term_relationships`
--
ALTER TABLE `yo_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `yo_term_taxonomy`
--
ALTER TABLE `yo_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `yo_usermeta`
--
ALTER TABLE `yo_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `yo_users`
--
ALTER TABLE `yo_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `yo_wc_admin_notes`
--
ALTER TABLE `yo_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Index pour la table `yo_wc_admin_note_actions`
--
ALTER TABLE `yo_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Index pour la table `yo_wc_category_lookup`
--
ALTER TABLE `yo_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Index pour la table `yo_wc_customer_lookup`
--
ALTER TABLE `yo_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `yo_wc_download_log`
--
ALTER TABLE `yo_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `yo_wc_order_coupon_lookup`
--
ALTER TABLE `yo_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `yo_wc_order_product_lookup`
--
ALTER TABLE `yo_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `yo_wc_order_stats`
--
ALTER TABLE `yo_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Index pour la table `yo_wc_order_tax_lookup`
--
ALTER TABLE `yo_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `yo_wc_product_meta_lookup`
--
ALTER TABLE `yo_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Index pour la table `yo_wc_tax_rate_classes`
--
ALTER TABLE `yo_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Index pour la table `yo_wc_webhooks`
--
ALTER TABLE `yo_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `yo_woocommerce_api_keys`
--
ALTER TABLE `yo_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `yo_woocommerce_attribute_taxonomies`
--
ALTER TABLE `yo_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `yo_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `yo_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Index pour la table `yo_woocommerce_log`
--
ALTER TABLE `yo_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `yo_woocommerce_order_itemmeta`
--
ALTER TABLE `yo_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `yo_woocommerce_order_items`
--
ALTER TABLE `yo_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `yo_woocommerce_payment_tokenmeta`
--
ALTER TABLE `yo_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `yo_woocommerce_payment_tokens`
--
ALTER TABLE `yo_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `yo_woocommerce_sessions`
--
ALTER TABLE `yo_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Index pour la table `yo_woocommerce_shipping_zones`
--
ALTER TABLE `yo_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `yo_woocommerce_shipping_zone_locations`
--
ALTER TABLE `yo_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `yo_woocommerce_shipping_zone_methods`
--
ALTER TABLE `yo_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `yo_woocommerce_tax_rates`
--
ALTER TABLE `yo_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `yo_woocommerce_tax_rate_locations`
--
ALTER TABLE `yo_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `yo_commentmeta`
--
ALTER TABLE `yo_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_comments`
--
ALTER TABLE `yo_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `yo_links`
--
ALTER TABLE `yo_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_options`
--
ALTER TABLE `yo_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT pour la table `yo_postmeta`
--
ALTER TABLE `yo_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT pour la table `yo_posts`
--
ALTER TABLE `yo_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `yo_termmeta`
--
ALTER TABLE `yo_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_terms`
--
ALTER TABLE `yo_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `yo_term_taxonomy`
--
ALTER TABLE `yo_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `yo_usermeta`
--
ALTER TABLE `yo_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `yo_users`
--
ALTER TABLE `yo_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `yo_wc_admin_notes`
--
ALTER TABLE `yo_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `yo_wc_admin_note_actions`
--
ALTER TABLE `yo_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `yo_wc_customer_lookup`
--
ALTER TABLE `yo_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_wc_download_log`
--
ALTER TABLE `yo_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_wc_tax_rate_classes`
--
ALTER TABLE `yo_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `yo_wc_webhooks`
--
ALTER TABLE `yo_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_api_keys`
--
ALTER TABLE `yo_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_attribute_taxonomies`
--
ALTER TABLE `yo_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `yo_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_log`
--
ALTER TABLE `yo_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_order_itemmeta`
--
ALTER TABLE `yo_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_order_items`
--
ALTER TABLE `yo_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_payment_tokenmeta`
--
ALTER TABLE `yo_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_payment_tokens`
--
ALTER TABLE `yo_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_sessions`
--
ALTER TABLE `yo_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_shipping_zones`
--
ALTER TABLE `yo_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_shipping_zone_locations`
--
ALTER TABLE `yo_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_shipping_zone_methods`
--
ALTER TABLE `yo_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_tax_rates`
--
ALTER TABLE `yo_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yo_woocommerce_tax_rate_locations`
--
ALTER TABLE `yo_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `yo_wc_download_log`
--
ALTER TABLE `yo_wc_download_log`
  ADD CONSTRAINT `fk_yo_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `yo_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

