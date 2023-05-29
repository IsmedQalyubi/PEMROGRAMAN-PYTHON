-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 03:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangowebsiteku`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Front End Office'),
(1, 'pustakawan');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(5, 1, 25),
(6, 1, 26),
(7, 1, 27),
(8, 1, 28),
(1, 1, 33),
(2, 1, 34),
(3, 1, 35),
(4, 1, 36),
(10, 2, 29),
(11, 2, 30),
(12, 2, 31),
(9, 2, 32);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add guest', 8, 'add_guest'),
(30, 'Can change guest', 8, 'change_guest'),
(31, 'Can delete guest', 8, 'delete_guest'),
(32, 'Can view guest', 8, 'view_guest'),
(33, 'Can add kategori', 9, 'add_kategori'),
(34, 'Can change kategori', 9, 'change_kategori'),
(35, 'Can delete kategori', 9, 'delete_kategori'),
(36, 'Can view kategori', 9, 'view_kategori'),
(37, 'Can add bookmark', 10, 'add_bookmark'),
(38, 'Can change bookmark', 10, 'change_bookmark'),
(39, 'Can delete bookmark', 10, 'delete_bookmark'),
(40, 'Can view bookmark', 10, 'view_bookmark'),
(41, 'Can add pinned application', 11, 'add_pinnedapplication'),
(42, 'Can change pinned application', 11, 'change_pinnedapplication'),
(43, 'Can delete pinned application', 11, 'delete_pinnedapplication'),
(44, 'Can view pinned application', 11, 'view_pinnedapplication'),
(45, 'Can add user dashboard module', 12, 'add_userdashboardmodule'),
(46, 'Can change user dashboard module', 12, 'change_userdashboardmodule'),
(47, 'Can delete user dashboard module', 12, 'delete_userdashboardmodule'),
(48, 'Can view user dashboard module', 12, 'view_userdashboardmodule');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$5WwefE0TMhWylv6WYOgiij$nXNDaDQwF6b+oep0ejy60apaWbphxXoFC32HRZLsk94=', '2023-05-21 10:57:05.637632', 1, 'admin', '', '', 'admin@django.com', 1, 1, '2023-05-20 14:10:55.846327'),
(2, 'pbkdf2_sha256$600000$fo89xO7wllx68VnVszkDXh$iRvx4BxteK+0ElFJgOMr8MLlpzQwe1xFVw8CEPj1INA=', '2023-05-21 10:55:34.929569', 0, 'admin_2', '', '', '', 1, 1, '2023-05-21 10:22:10.000000'),
(3, 'pbkdf2_sha256$600000$nKzMywDfIwRsIZCLR0Ac0Y$jvg52jHEWa/h9OvtjTAYcXtCGd+VFgvbjl9RJ0YmKHE=', '2023-05-21 10:28:54.842948', 0, 'admin_3', '', '', '', 1, 1, '2023-05-21 10:26:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 2, 2),
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku_kategori`
--

CREATE TABLE `buku_kategori` (
  `id` bigint(20) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_kategori`
--

INSERT INTO `buku_kategori` (`id`, `kategori`) VALUES
(1, 'Bahasa Pemrograman'),
(2, 'Buku Personal'),
(3, 'etc');

-- --------------------------------------------------------

--
-- Table structure for table `buku_post`
--

CREATE TABLE `buku_post` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_post`
--

INSERT INTO `buku_post` (`id`, `judul`, `sinopsis`, `kategori_id`) VALUES
(1, 'Dasar-Dasar Pemrograman Python', 'Buku Dasar pemrograman Python', 1),
(2, 'Django Dasar', 'Buku pengantar django 4.1', 3),
(3, 'Bootstrap 5', 'Buku bootstrap 5', 2),
(4, 'JavaScript For Haters', 'sebuah buku tentang javascript yang dikhususkan untuk orang yang tidak suka dengan bahasa pemrograman JavaScripts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_userdashboardmodule`
--

CREATE TABLE `dashboard_userdashboardmodule` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `app_label` varchar(255) DEFAULT NULL,
  `user` int(10) UNSIGNED NOT NULL CHECK (`user` >= 0),
  `column` int(10) UNSIGNED NOT NULL CHECK (`column` >= 0),
  `order` int(11) NOT NULL,
  `settings` longtext NOT NULL,
  `children` longtext NOT NULL,
  `collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_userdashboardmodule`
--

INSERT INTO `dashboard_userdashboardmodule` (`id`, `title`, `module`, `app_label`, `user`, `column`, `order`, `settings`, `children`, `collapsed`) VALUES
(1, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 1, 0, 0, '{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}', '[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"Change password\", \"url\": \"/admin/password_change/\"}, {\"title\": \"Log out\", \"url\": \"/admin/logout/\"}]', 0),
(2, 'Applications', 'jet.dashboard.modules.AppList', NULL, 1, 1, 0, '{\"models\": null, \"exclude\": [\"auth.*\"]}', '', 0),
(3, 'Administration', 'jet.dashboard.modules.AppList', NULL, 1, 2, 0, '{\"models\": [\"auth.*\"], \"exclude\": null}', '', 0),
(4, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 1, 0, 1, '{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}', '', 0),
(5, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 1, 1, 1, '{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}', '', 0),
(6, 'Support', 'jet.dashboard.modules.LinkList', NULL, 1, 2, 1, '{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}', '[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]', 0),
(7, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 3, 0, 0, '{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}', '[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"Change password\", \"url\": \"/admin/password_change/\"}, {\"title\": \"Log out\", \"url\": \"/admin/logout/\"}]', 0),
(8, 'Applications', 'jet.dashboard.modules.AppList', NULL, 3, 1, 0, '{\"models\": null, \"exclude\": [\"auth.*\"]}', '', 0),
(9, 'Administration', 'jet.dashboard.modules.AppList', NULL, 3, 2, 0, '{\"models\": [\"auth.*\"], \"exclude\": null}', '', 0),
(10, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 3, 0, 1, '{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}', '', 0),
(11, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 3, 1, 1, '{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}', '', 0),
(12, 'Support', 'jet.dashboard.modules.LinkList', NULL, 3, 2, 1, '{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}', '[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]', 0),
(13, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 2, 0, 0, '{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}', '[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"Change password\", \"url\": \"/admin/password_change/\"}, {\"title\": \"Log out\", \"url\": \"/admin/logout/\"}]', 0),
(14, 'Applications', 'jet.dashboard.modules.AppList', NULL, 2, 1, 0, '{\"models\": null, \"exclude\": [\"auth.*\"]}', '', 0),
(15, 'Administration', 'jet.dashboard.modules.AppList', NULL, 2, 2, 0, '{\"models\": [\"auth.*\"], \"exclude\": null}', '', 1),
(16, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 2, 0, 1, '{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}', '', 0),
(17, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 2, 1, 1, '{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}', '', 0),
(18, 'Support', 'jet.dashboard.modules.LinkList', NULL, 2, 2, 1, '{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}', '[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]', 0),
(19, 'Application models', 'jet.dashboard.modules.ModelList', 'auth', 1, 0, 0, '{\"models\": [\"auth.*\"], \"exclude\": null}', '', 0),
(20, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'auth', 1, 1, 0, '{\"limit\": 10, \"include_list\": [\"auth.*\"], \"exclude_list\": null, \"user\": null}', '', 0),
(21, 'Application models', 'jet.dashboard.modules.ModelList', 'tamu', 1, 0, 0, '{\"models\": [\"tamu.*\"], \"exclude\": null}', '', 0),
(22, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'tamu', 1, 1, 0, '{\"limit\": 10, \"include_list\": [\"tamu.*\"], \"exclude_list\": null, \"user\": null}', '', 0),
(23, 'Application models', 'jet.dashboard.modules.ModelList', 'buku', 1, 0, 0, '{\"models\": [\"buku.*\"], \"exclude\": null}', '', 0),
(24, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'buku', 1, 1, 0, '{\"limit\": 10, \"include_list\": [\"buku.*\"], \"exclude_list\": null, \"user\": null}', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-20 14:26:55.463217', '1', 'Post object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-05-20 15:30:30.320565', '2', 'Django Dasar', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-05-20 15:31:33.392135', '3', 'Bootstrap 5', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-05-21 01:12:27.908324', '1', '2010394', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-05-21 01:35:33.865587', '1', 'Bahasa Pemrograman', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-05-21 01:36:33.532978', '2', 'Buku Personal', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-05-21 01:37:32.123074', '3', 'etc', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-05-21 01:40:53.879682', '3', 'Bootstrap 5', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(9, '2023-05-21 01:41:06.099741', '1', 'Dasar-Dasar Pemrograman Python', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(10, '2023-05-21 01:41:12.400755', '2', 'Django Dasar', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(11, '2023-05-21 01:43:41.924341', '4', 'JavaScript for hater', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-05-21 01:44:09.584592', '4', 'JavaScript For Haters', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 7, 1),
(13, '2023-05-21 10:17:17.173039', '1', 'pustakawan', 1, '[{\"added\": {}}]', 3, 1),
(14, '2023-05-21 10:18:27.876037', '2', 'Front End Office', 1, '[{\"added\": {}}]', 3, 1),
(15, '2023-05-21 10:22:10.413541', '2', 'admin_2', 1, '[{\"added\": {}}]', 4, 1),
(16, '2023-05-21 10:26:21.289305', '3', 'admin_3', 1, '[{\"added\": {}}]', 4, 1),
(17, '2023-05-21 10:27:03.646527', '3', 'admin_3', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(18, '2023-05-21 10:27:47.222717', '2', 'admin_2', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(19, '2023-05-21 10:27:59.294079', '3', 'admin_3', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(20, '2023-05-21 10:28:14.028445', '2', 'admin_2', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'buku', 'kategori'),
(7, 'buku', 'post'),
(5, 'contenttypes', 'contenttype'),
(12, 'dashboard', 'userdashboardmodule'),
(10, 'jet', 'bookmark'),
(11, 'jet', 'pinnedapplication'),
(6, 'sessions', 'session'),
(8, 'tamu', 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-20 14:08:50.525614'),
(2, 'auth', '0001_initial', '2023-05-20 14:08:51.133441'),
(3, 'admin', '0001_initial', '2023-05-20 14:08:51.261726'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-20 14:08:51.298734'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-20 14:08:51.311733'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-20 14:08:51.391316'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-20 14:08:51.454275'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-20 14:08:51.480275'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-20 14:08:51.490581'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-20 14:08:51.543317'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-20 14:08:51.547316'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-20 14:08:51.562320'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-20 14:08:51.600320'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-20 14:08:51.622322'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-20 14:08:51.650834'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-20 14:08:51.662842'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-20 14:08:51.686804'),
(18, 'sessions', '0001_initial', '2023-05-20 14:08:51.738071'),
(19, 'buku', '0001_initial', '2023-05-20 14:20:58.444484'),
(20, 'tamu', '0001_initial', '2023-05-21 00:57:40.949223'),
(21, 'tamu', '0002_alter_guest_nama', '2023-05-21 01:24:36.511902'),
(22, 'buku', '0002_kategori', '2023-05-21 01:33:32.309534'),
(23, 'buku', '0003_post_kategori', '2023-05-21 01:39:27.643761'),
(24, 'jet', '0001_initial', '2023-05-21 10:47:44.250661'),
(25, 'jet', '0002_delete_userdashboardmodule', '2023-05-21 10:47:44.263666'),
(26, 'dashboard', '0001_initial', '2023-05-21 10:50:44.887880');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ewoo1wftog13buz6ga0tgo5fr9pio5kr', '.eJxVjMsOgjAQRf-la9PMUGCqS_d8A2nnIaiBhMLK-O9KwkK395xzX65P2zr0W9GlH8VdHLrT75YTP3TagdzTdJs9z9O6jNnvij9o8d0s-rwe7t_BkMrwraOoBTVjgEoFCZCwlqB4BgbLOcZAVGHLgYkiQyMVtIbRmtoyE7j3B-2MN8s:1q0gkL:ryURnW4Xc-2674O8NUy8LQ2IDDnFcanixE0p-EUxrn4', '2023-06-04 10:57:05.642638'),
('i8amu3srm2hl8nkk4ttyjmfuwhdcv2q5', '.eJxVjMsOgjAQRf-la9PMUGCqS_d8A2nnIaiBhMLK-O9KwkK395xzX65P2zr0W9GlH8VdHLrT75YTP3TagdzTdJs9z9O6jNnvij9o8d0s-rwe7t_BkMrwraOoBTVjgEoFCZCwlqB4BgbLOcZAVGHLgYkiQyMVtIbRmtoyE7j3B-2MN8s:1q0NL0:zRSICkEhZdnOGontMC4wDPqI1CNElti-MkGtb3PK4Co', '2023-06-03 14:13:38.430967'),
('m3k2sd92n4kicbem3uqt6a1q9w18fobk', '.eJxVjEEOwiAQRe_C2pAWGDq4dO8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3EWWpx-t0DxwXUH6U711mRsdV3mIHdFHrTLa0v8vBzu30GhXr71SGAYXeSUFXKm6Eyy1lk7AkEATAhonFNDiKSzJaV5GhgnMORC1iDeH_GwN_c:1q0gJ4:7ssSDicpsghrgDjcWXAy1tZoTnvIUoW2Qocy_p3QoFU', '2023-06-04 10:28:54.845287'),
('u5eo1nysfsel7iszzl03vccxuduy9o33', '.eJxVjMsOgjAQRf-la9PMUGCqS_d8A2nnIaiBhMLK-O9KwkK395xzX65P2zr0W9GlH8VdHLrT75YTP3TagdzTdJs9z9O6jNnvij9o8d0s-rwe7t_BkMrwraOoBTVjgEoFCZCwlqB4BgbLOcZAVGHLgYkiQyMVtIbRmtoyE7j3B-2MN8s:1q0Xsy:GFBsJ-HkfafMMmsa8UXZJ6x2nQuvFIJsRm9bxE1TtWc', '2023-06-04 01:29:24.394266');

-- --------------------------------------------------------

--
-- Table structure for table `jet_bookmark`
--

CREATE TABLE `jet_bookmark` (
  `id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL CHECK (`user` >= 0),
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jet_pinnedapplication`
--

CREATE TABLE `jet_pinnedapplication` (
  `id` int(11) NOT NULL,
  `app_label` varchar(255) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL CHECK (`user` >= 0),
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tamu_guest`
--

CREATE TABLE `tamu_guest` (
  `id` bigint(20) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kegiatan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu_guest`
--

INSERT INTO `tamu_guest` (`id`, `nim`, `nama`, `kegiatan`) VALUES
(1, '2010394', 'tester', 'NGETEST'),
(2, '1111', 'tester', 'TEST'),
(3, '1111', 'tester', 'debug');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `buku_kategori`
--
ALTER TABLE `buku_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku_post`
--
ALTER TABLE `buku_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_post_kategori_id_0a807e43_fk_buku_kategori_id` (`kategori_id`);

--
-- Indexes for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamu_guest`
--
ALTER TABLE `tamu_guest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buku_kategori`
--
ALTER TABLE `buku_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buku_post`
--
ALTER TABLE `buku_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tamu_guest`
--
ALTER TABLE `tamu_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `buku_post`
--
ALTER TABLE `buku_post`
  ADD CONSTRAINT `buku_post_kategori_id_0a807e43_fk_buku_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `buku_kategori` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
