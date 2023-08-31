-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2023 at 10:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add review', 9, 'add_review'),
(34, 'Can change review', 9, 'change_review'),
(35, 'Can delete review', 9, 'delete_review'),
(36, 'Can view review', 9, 'view_review'),
(37, 'Can add slider', 10, 'add_slider'),
(38, 'Can change slider', 10, 'change_slider'),
(39, 'Can delete slider', 10, 'delete_slider'),
(40, 'Can view slider', 10, 'view_slider'),
(41, 'Can add writer', 11, 'add_writer'),
(42, 'Can change writer', 11, 'change_writer'),
(43, 'Can delete writer', 11, 'delete_writer'),
(44, 'Can view writer', 11, 'view_writer'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add order item', 13, 'add_orderitem'),
(50, 'Can change order item', 13, 'change_orderitem'),
(51, 'Can delete order item', 13, 'delete_orderitem'),
(52, 'Can view order item', 13, 'view_orderitem'),
(53, 'Can add product', 14, 'add_product'),
(54, 'Can change product', 14, 'change_product'),
(55, 'Can delete product', 14, 'delete_product'),
(56, 'Can view product', 14, 'view_product'),
(57, 'Can add customer', 15, 'add_customer'),
(58, 'Can change customer', 15, 'change_customer'),
(59, 'Can delete customer', 15, 'delete_customer'),
(60, 'Can view customer', 15, 'view_customer'),
(61, 'Can add orders', 16, 'add_orders'),
(62, 'Can change orders', 16, 'change_orders'),
(63, 'Can delete orders', 16, 'delete_orders'),
(64, 'Can view orders', 16, 'view_orders'),
(65, 'Can add delivery man', 17, 'add_deliveryman'),
(66, 'Can change delivery man', 17, 'change_deliveryman'),
(67, 'Can delete delivery man', 17, 'delete_deliveryman'),
(68, 'Can view delivery man', 17, 'view_deliveryman');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$GYKmQpzREmHnMxPuqiHEJy$GjB/uuKlkK69/qVKeV0/DYEfGwkaQ3uM3I1LJqBkYHs=', '2023-03-19 08:58:01.419000', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-03-07 19:48:54.557466'),
(2, 'pbkdf2_sha256$390000$FDJ8OMCUKVp8V4rQB0X2IB$ycWOEv3CP8dW0tkRog5sTiLTpU7DcJIUTA0AJkhh1OA=', '2023-03-15 13:09:38.279678', 1, 'you', '', '', '', 1, 1, '2023-03-15 13:09:20.217961'),
(4, 'pbkdf2_sha256$390000$9ClA4zoIotCmwWjpIps1aX$h+HuEc5bR+wipO4Fx1zDj6QjAe4G4XFZcvzkU8gtGsc=', '2023-03-18 05:25:21.900899', 0, 'gk', 'GkHell', '', 'you@gmail.com', 0, 1, '2023-03-18 05:25:11.908808'),
(6, 'pbkdf2_sha256$390000$oZr0zPTKNuNIZ2ncVE0BUO$8GSvjDXRUAvvqWHJMSn5QIpQlzAeKtK0aOm5Pr1Sp0Q=', NULL, 0, 'user1', 'user1', '', 'gpkmyworld@gmail.com', 0, 1, '2023-03-18 16:46:46.653065'),
(7, 'pbkdf2_sha256$390000$MOB0BIaCoiOClOZKjcjg1m$/WIBkZhADQ0JbrZ4RaFjhJViKqZeLReigUtiGTZek7U=', NULL, 0, 'user2', 'user2', '', 'gpkmyworld@gmail.com', 0, 1, '2023-03-18 16:48:26.230332'),
(8, 'pbkdf2_sha256$390000$BGMsIhBtZfjum9MmgBJFpi$0fGa/wJ6XC5g8PzNI12YgWQ/OE4fLvMkdsjaZlImoJ8=', '2023-03-19 00:47:25.421338', 0, 'user3', 'user2', '', 'gpkmyworld@gmail.com', 0, 1, '2023-03-18 16:49:22.922464'),
(10, 'pbkdf2_sha256$390000$F0DF4KT1z7o9Va5mAG2MCX$o2hHjQjIGlUNNrreIzixikNoLqTJTp/8nU1khzFHQ04=', NULL, 0, 'user4', 'user', '', 'gpkmyworld@gmail.com', 0, 1, '2023-03-18 16:49:41.806991'),
(11, 'pbkdf2_sha256$390000$BFpdBmU0bl1l2EUTnGYHAk$vj75d2P/VnxfG579RVON/7HRBHAWTgRXEoU1xRJCWpQ=', NULL, 0, 'user7', 'user', '', 'gpkmyworld@gmail.com', 0, 1, '2023-03-18 16:50:39.469321'),
(12, 'pbkdf2_sha256$390000$0dK0V2AoX1lT4aLXjpPT7z$u0qHiLhNTnCm/ITKv7E5GnYS+lEfHFCreR2qWBYg49c=', NULL, 0, 'me23', 'Gk', '', 'gpkmyworld@gmail.com', 0, 1, '2023-03-18 16:59:54.349811'),
(13, 'pbkdf2_sha256$390000$ziLeliAqRRpwYTVec8Ivg1$986PJLxNo6BRl7CUNs+u+Ho2By79pI4dMMv8aAE8/Ts=', '2023-03-19 04:52:40.797603', 0, 'me233', 'Gk', '', 'gpkmyworld@gmail.com', 0, 1, '2023-03-18 17:00:36.376393'),
(14, 'pbkdf2_sha256$390000$ziLeliAqRRpwYTVec8Ivg1$986PJLxNo6BRl7CUNs+u+Ho2By79pI4dMMv8aAE8/Ts=', '2023-03-19 04:06:42.958432', 0, 'pakk', 'pakaj', '', 'pakk@gmail.com', 0, 1, '2023-03-19 00:52:55.339564'),
(15, 'pbkdf2_sha256$390000$pQ7EUII3bKaeWofnaYlmjG$TMGK9x8cx3FTO841wBaO6Vcx9P11F4yi/7ctLJ6A9pE=', '2023-03-19 08:57:02.518588', 0, 'buyer1', 'user1', '', 'user@gmail.com', 0, 1, '2023-03-19 03:07:18.727908'),
(16, 'pbkdf2_sha256$390000$GKxtzG6ddKVV9NQJkEeWjQ$u8csYgwt/xmu9fB0Pj3EkdH1e67+jDgIBTILRLEwsAk=', NULL, 0, 'deliveryboy1', 'name2', '', 'you@gmail.com', 0, 1, '2023-03-19 08:53:16.115647'),
(17, 'pbkdf2_sha256$390000$vuCy9w8i3y9WjugBvfT2Vw$vZ5DWyQG1nMVg5ZT7V+Y41RDYbEk7AFThvIhJ+Riteo=', '2023-03-19 08:55:14.980847', 0, 'code2', 'name2', '', 'you@gmail.com', 0, 1, '2023-03-19 08:53:55.474803');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryapp_deliveryman`
--

CREATE TABLE `deliveryapp_deliveryman` (
  `id` bigint(20) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `status` varchar(120) NOT NULL,
  `delivery_man_id_id` int(11) NOT NULL,
  `user_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveryapp_deliveryman`
--

INSERT INTO `deliveryapp_deliveryman` (`id`, `created`, `status`, `delivery_man_id_id`, `user_key`) VALUES
(1, '2023-03-18 17:00:36.856376', 'accepted', 13, 13),
(2, '2023-03-19 00:52:55.788240', 'rejected', 14, 14),
(3, '2023-03-19 08:53:16.451281', 'pending', 16, 16),
(4, '2023-03-19 08:53:55.800438', 'accepted', 17, 17);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-09 10:36:14.264875', '1', 'sun', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-03-09 10:36:53.768041', '1', 'sun1', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-03-09 10:37:04.553743', '2', 'sun2', 1, '[{\"added\": {}}]', 10, 1),
(4, '2023-03-09 10:55:06.219650', '1', 'sun', 3, '', 8, 1),
(5, '2023-03-09 11:10:24.313169', '2', 'Computer Science', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-03-09 11:10:29.081335', '2', 'Computer Science', 2, '[]', 8, 1),
(7, '2023-03-09 11:11:12.128569', '3', 'Sci-Fi & Fantasy', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-03-09 11:12:07.665040', '4', 'Arts & Photography', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-03-09 11:14:42.865315', '5', 'Business & Money', 1, '[{\"added\": {}}]', 8, 1),
(10, '2023-03-09 11:15:28.575119', '6', 'Mystery & Suspense', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-03-09 11:16:20.353855', '7', 'History', 1, '[{\"added\": {}}]', 8, 1),
(12, '2023-03-09 11:17:27.960380', '2', 'sun2', 3, '', 10, 1),
(13, '2023-03-09 11:17:27.967110', '1', 'sun1', 3, '', 10, 1),
(14, '2023-03-09 11:17:52.554073', '3', 'History', 1, '[{\"added\": {}}]', 10, 1),
(15, '2023-03-09 11:18:09.038542', '4', 'Computer Science', 1, '[{\"added\": {}}]', 10, 1),
(16, '2023-03-09 11:18:20.654094', '5', 'Business & Money', 1, '[{\"added\": {}}]', 10, 1),
(17, '2023-03-09 11:27:11.598787', '1', 'Chetan Bhagat', 1, '[{\"added\": {}}]', 11, 1),
(18, '2023-03-09 11:27:45.704911', '2', 'Amrita Pritam', 1, '[{\"added\": {}}]', 11, 1),
(19, '2023-03-09 11:28:26.404869', '3', 'Jhumpa Lahiri', 1, '[{\"added\": {}}]', 11, 1),
(20, '2023-03-09 11:29:57.858470', '4', 'Khushwant Singh', 1, '[{\"added\": {}}]', 11, 1),
(21, '2023-03-09 11:30:26.872894', '5', 'R. K. Narayan', 1, '[{\"added\": {}}]', 11, 1),
(22, '2023-03-09 11:30:54.692855', '6', 'Rabindranath Tagore', 1, '[{\"added\": {}}]', 11, 1),
(23, '2023-03-09 11:31:14.313288', '7', 'Ruskin Bond', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-03-09 11:31:32.106300', '8', 'Vikram Seth', 1, '[{\"added\": {}}]', 11, 1),
(25, '2023-03-09 11:31:46.969700', '9', 'Arundhati Roy', 1, '[{\"added\": {}}]', 11, 1),
(26, '2023-03-09 11:32:06.268591', '10', 'Sarat Chandra Chattopadhyay', 1, '[{\"added\": {}}]', 11, 1),
(27, '2023-03-09 11:49:02.937048', '8', 'Emoson', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-03-09 11:49:13.874135', '9', 'Rules', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-03-09 11:53:59.206441', '1', 'ONE_NIGHt_@_THE_CALL_CENTER-CHETAN_BHAGAT(PDFDrive )', 1, '[{\"added\": {}}]', 7, 1),
(30, '2023-03-09 11:54:54.529292', '1', 'ONE NIGHT', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(31, '2023-03-09 11:56:02.080487', '1', 'ONE NIGHT', 2, '[{\"changed\": {\"fields\": [\"Totalrating\", \"Status\"]}}]', 7, 1),
(32, '2023-03-09 12:00:12.481044', '1', 'ONE NIGHT', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 7, 1),
(33, '2023-03-09 12:01:11.686950', '1', 'ONE NIGHT', 2, '[{\"changed\": {\"fields\": [\"Coverpage\", \"Bookpage\"]}}]', 7, 1),
(34, '2023-03-09 12:08:24.109320', '2', 'One Indian Girl', 1, '[{\"added\": {}}]', 7, 1),
(35, '2023-03-09 12:13:08.084987', '3', 'The 3 Mistakes of My Life', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(17, 'deliveryapp', 'deliveryman'),
(15, 'myadmin', 'customer'),
(16, 'myadmin', 'orders'),
(14, 'myadmin', 'product'),
(12, 'order', 'order'),
(13, 'order', 'orderitem'),
(6, 'sessions', 'session'),
(7, 'store', 'book'),
(8, 'store', 'category'),
(9, 'store', 'review'),
(10, 'store', 'slider'),
(11, 'store', 'writer');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-07 19:46:47.243504'),
(2, 'auth', '0001_initial', '2023-03-07 19:46:47.621094'),
(3, 'admin', '0001_initial', '2023-03-07 19:46:47.707541'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-07 19:46:47.707541'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-07 19:46:47.728453'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-07 19:46:47.790049'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-07 19:46:47.835168'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-07 19:46:47.861923'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-07 19:46:47.864981'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-07 19:46:47.921280'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-07 19:46:47.921280'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-07 19:46:47.937247'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-07 19:46:47.953223'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-07 19:46:47.971695'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-07 19:46:47.984664'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-07 19:46:48.000587'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-07 19:46:48.032279'),
(18, 'store', '0001_initial', '2023-03-07 19:46:48.299670'),
(19, 'order', '0001_initial', '2023-03-07 19:46:48.480019'),
(20, 'order', '0002_alter_order_transaction_id', '2023-03-07 19:46:48.542964'),
(21, 'sessions', '0001_initial', '2023-03-07 19:46:48.574334'),
(22, 'myadmin', '0001_initial', '2023-03-14 02:54:34.804058'),
(27, 'deliveryapp', '0001_initial', '2023-03-18 16:55:59.394955'),
(28, 'deliveryapp', '0002_deliveryman_user_key_alter_deliveryman_created', '2023-03-19 02:23:32.349770'),
(29, 'order', '0003_order_status', '2023-03-19 03:45:53.418782'),
(30, 'order', '0004_order_deliveryman', '2023-03-19 03:48:38.938326');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2prnd1kez8bsbocm2hhsbxsebc7agxgk', '.eJxVjDEOgzAQBP_iOrKwOQ5MmT5vQGffOSaJjIShQvw9IFEk7c7sbGqgdUnDWmQeRla9Mur2u3kKb8kn4Bfl56TDlJd59PpU9EWLfkwsn_vl_gUSlXS8sfMdIxsnLWJABxEZbR0qD2S7CNi0YKOgaamR6B2Aa2x9AKqiMbY-ooHmRfXbvn8BCkw6eA:1paBgk:NT3jqOuJKAVvJGMz228gkri2U1h5au8GT4atwYb-X9o', '2023-03-23 14:01:50.371214'),
('4o3dwbkslrgr17dx5dpw7snsy0vmqn5y', 'eyJjYXJ0Ijp7fX0:1pdijd:QVmUq9T9hXrGZtAVcgIeGx3g3kphowtjnCMnmWQ6224', '2023-04-02 02:25:25.174038'),
('6uby5p1hv53ozoalzw5mhox7zfset3qs', '.eJxVjDsOgzAQBe-ydWTh3xpTps8ZrPUvkERYwqZC3D0g0dC-mXkbBFoaDNv-AEdrG91a0-KmCANwuG2ewjfNJ4gfmt-FhTK3ZfLsVNhFK3uVmH7Py70djFTHo8be9xEjt8kgBrQqY0QhQ-cViT4r1EaJnJAb0il7q5TVQh6Ausy5kLD_ARsOOng:1pbynZ:gYVi4zKwu9_U7ffYLhcVrS6e6zNalcCi1QuVwVyAepQ', '2023-03-28 07:10:17.163471'),
('791xs6zgqo8x5wimq9di681xbfb7lsqj', 'eyJjYXJ0Ijp7fX0:1pdoqL:b8s5UCiywUJDk0fkBA1PXpogEpu4MPbshU_V7lvb29U', '2023-04-02 08:56:45.628352'),
('92e5j4mf2z4p7wuaoyv7x71h2bplpmsg', 'eyJjYXJ0Ijp7fX0:1pdiD5:y0qZ1qYNDf8rRFlh6KrmeBnWUNzhYRbOBtwQHE-swWY', '2023-04-02 01:51:47.682592'),
('b6lnah8dm7kgfnebqjwdwwndfa0bs2gj', 'eyJjYXJ0Ijp7fX0:1pdh2W:H0wDQFiRZbIhkIpJ3eaE3SZAlwdBlss0sRzsz7VmmJg', '2023-04-02 00:36:48.892457'),
('ivw7o4c2jkym507kgoszzr4dx8ppy3yu', '.eJxVjDEOgzAQBP9ydWTZxnYMZXregI67c0wSgYShQvw9INHQzszuBoTzAs22P6DDdcndWmTuBoYGPNxYj_SV8RT8wfE9KZrGZR56dSbqskW1E8vvdbW3g4wlH2uDOnF8umAoBKsj1sRW6mRTZcgacf5gUdh7bY2pAmJyIcVKHCVCZtj_IWc7dQ:1pdXbo:xEG6hG0V9N53aAxE6sCURZ3lqqM1WCfPXOcTylDhymM', '2023-04-01 14:32:36.426056'),
('kxgluqwxziiyihx9r4ssl3jazbetzn2m', 'eyJjYXJ0Ijp7fX0:1pdiH5:3A_5HWuWS_sOBWh8triRJEf_bOjEBd6U4btQ8p2o55E', '2023-04-02 01:55:55.887236'),
('m8g4116gdfmr6gnxqbm12shf9ddnz9az', 'eyJjYXJ0Ijp7fX0:1pdijd:QVmUq9T9hXrGZtAVcgIeGx3g3kphowtjnCMnmWQ6224', '2023-04-02 02:25:25.184541'),
('qz2q3yh9q3e3bvrkfnncn1y8w4sb10ia', '.eJxVjDsOgzAQBe-ydWTh3xpTps8ZrPUvkERYwqZC3D0g0dC-mXkbBFoaDNv-AEdrG91a0-KmCANwuG2ewjfNJ4gfmt-FhTK3ZfLsVNhFK3uVmH7Py70djFTHo8be9xEjt8kgBrQqY0QhQ-cViT4r1EaJnJAb0il7q5TVQh6Ausy5kLD_ARsOOng:1pdosS:djLwSgLGxjjRksTj6PDi3o7F_TgVlYhqUTQ-eXKp1-I', '2023-04-02 08:58:56.287983'),
('t69yp6uroli3bloh5n6mjt2vgvckmu7s', '.eJxVjDsOgzAQBe-ydWTh3xpTps8ZrPUvkERYwqZC3D0g0dC-mXkbBFoaDNv-AEdrG91a0-KmCANwuG2ewjfNJ4gfmt-FhTK3ZfLsVNhFK3uVmH7Py70djFTHo8be9xEjt8kgBrQqY0QhQ-cViT4r1EaJnJAb0il7q5TVQh6Ausy5kLD_ARsOOng:1pcOpe:3lT_UDKVT7FGEHhe0hnoTIQunimFuVRX1RfitrdYdkc', '2023-03-29 10:58:10.876328'),
('tioh54qzhy7x6nxcra3mdht48hze9b2d', 'eyJjYXJ0Ijp7fX0:1pdiak:J2sXTroH1VASwxbK7Ctemje1pH_iYJiXa9gd1GP8P2U', '2023-04-02 02:16:14.310614'),
('vzbqm0t6wz3mj2fmur1ue2uzvpp0vn4p', 'eyJjYXJ0Ijp7fX0:1pdiD5:y0qZ1qYNDf8rRFlh6KrmeBnWUNzhYRbOBtwQHE-swWY', '2023-04-02 01:51:47.682836');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_customer`
--

CREATE TABLE `myadmin_customer` (
  `id` bigint(20) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_orders`
--

CREATE TABLE `myadmin_orders` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_product`
--

CREATE TABLE `myadmin_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_order`
--

CREATE TABLE `order_order` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(150) NOT NULL,
  `division` varchar(20) NOT NULL,
  `district` varchar(30) NOT NULL,
  `zip_code` varchar(30) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `account_no` varchar(20) NOT NULL,
  `transaction_id` varchar(20) NOT NULL,
  `payable` int(11) NOT NULL,
  `totalbook` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_order`
--

INSERT INTO `order_order` (`id`, `name`, `email`, `phone`, `address`, `division`, `district`, `zip_code`, `payment_method`, `account_no`, `transaction_id`, `payable`, `totalbook`, `created`, `updated`, `paid`, `customer_id`, `status`, `deliveryman_id`) VALUES
(6, 'user1', 'user@gmail.com', '8140121678', 'Ahmedabad', 'Rajshahi', 'Narayanganj', '382475', 'Rocket', '123456789023456789', '1234567898762tre3dfg', 1300, 3, '2023-03-19 03:07:56.489532', '2023-03-19 03:07:56.489585', 0, 15, 'pending', NULL),
(7, 'user1', 'user@gmail.com', '8140121678', 'Ahmedabad', 'Dhaka', 'Dhaka', '382475', 'Rocket', '123456789023456789', '1234567898762tre3dfg', 160, 1, '2023-03-19 03:12:48.913845', '2023-03-19 05:35:29.379936', 0, 15, 'accepted', 1),
(8, 'user1', 'user@gmail.com', '8140121678', 'Ahmedabad', 'Dhaka', 'Dhaka', '382475', 'Rocket', '123456789023456789', '1234567898762tre3dfg', 1114, 2, '2023-03-19 04:04:15.165658', '2023-03-19 08:56:14.363762', 0, 15, 'shipped', 4),
(9, 'user1', 'user@gmail.com', '8140121678', 'Ahmedabad', 'Dhaka', 'Dhaka', '382475', 'Rocket', '123456789023456789', '1234567898762tre3dfg', 2901, 2, '2023-03-19 04:06:05.945324', '2023-03-19 05:53:42.801378', 0, 15, 'packed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_orderitem`
--

CREATE TABLE `order_orderitem` (
  `id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_orderitem`
--

INSERT INTO `order_orderitem` (`id`, `price`, `quantity`, `book_id`, `order_id`) VALUES
(8, '160.00', 1, 3, 6),
(9, '954.00', 1, 5, 6),
(10, '250.00', 1, 1, 6),
(11, '160.00', 1, 3, 7),
(12, '160.00', 1, 3, 8),
(13, '954.00', 1, 5, 8),
(14, '160.00', 1, 3, 9),
(15, '130.00', 1, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `store_book`
--

CREATE TABLE `store_book` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `coverpage` varchar(100) NOT NULL,
  `bookpage` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `totalreview` int(11) NOT NULL,
  `totalrating` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_book`
--

INSERT INTO `store_book` (`id`, `name`, `slug`, `price`, `stock`, `coverpage`, `bookpage`, `created`, `updated`, `totalreview`, `totalrating`, `status`, `description`, `category_id`, `writer_id`) VALUES
(1, '2 Nights', 'one_night__the_call_center-chetan_bhagatpdfdrive', 250, 9, 'coverpage/Screenshot_2023-03-09_115840.png', 'bookpage/Screenshot_2023-03-09_115932.png', '2023-03-09 11:53:59.202185', '2023-03-15 15:17:22.808228', 2, 8, 6, 'Before you begin this book, I have a small request. Right here, note down three\r\nthings. Write down something that\r\ni) you fear,\r\nii) makes you angry and\r\niii) you don’t like about yourself.\r\n Be honest, and write something that is meaningful to you.', 9, 1),
(2, 'One Indian Girl', 'one-indian-girl', 130, 132, 'coverpage/Screenshot_2023-03-09_120240.png', 'bookpage/Screenshot_2023-03-09_120248.png', '2023-03-09 12:08:24.107309', '2023-03-09 12:08:24.107309', 1, 3, 2, 'Many writers are successful at expressing what’s in their hearts or articulating a particular point of view. Chetan Bhagat’s books do both and more.\r\n                                                                                                                                                           – A.R. Rahman, \r\nin TIME magazine, on Chetan’s inclusion in the TIME 100 most influential people in the world  The voice of India’s rising entrepreneurial class.\r\n                                                                                                                                                         – Fast Company Magazine, on Chetan’s inclusion in the 100 most creative people in business globally\r\nIndia’s paperback king.\r\n                                                                                                                                                           – The Guardian\r\nBhagat has touched a nerve with young Indian readers and acquired almost cult status.\r\n                                                                                                                            – International Herald Tribune\r\nBhagat is a symbol of new India. A torch-bearer for an unafraid generation. . .\r\n                                                                                                                                                               – India Today\r\n. . .our most remarkable novelist.\r\n                                                                                                                                                 – The Times of India', 6, 1),
(3, 'The 3 Mistakes of My Life', 'the-3-mistakes-of-my-life', 160, 5, 'coverpage/Screenshot_2023-03-09_120910.png', 'bookpage/Screenshot_2023-03-09_121152.png', '2023-03-09 12:13:08.082912', '2023-03-09 12:13:08.082912', 1, 5, 1, 'My readers, you that is, to whom I owe all my success and motivation. My\r\nlife belongs to you now, and serving you is the most meaningful thing I can do with my\r\nlife. I want to share something with you. I am very ambitious in my writing goals.\r\nHowever, I don\'t want to be India\'s most admired writer. I just want to be India\'s\r\nmost loved writer. Admiration passes, love endures.\r\nTo Shinie Antony, a friend who has been with me all these years and who\r\ncritically reviews my work and ensures that it is fit for my reader\'s consumption. My\r\nfamily, which continues to support me in all my ventures. Specially, my brother Ketan\r\nBhagat for his critical feedback from Sydney and cricket freak brother-in-law Anand\r\nSuryanaryan who told me more about cricket than anyone else would have.\r\nThe people of Gujarat, in particular Ahmedabad, where I spent some of the most\r\nwonderful and formative years of my life.\r\nMy publishers Rupa and Co, who have fulfilled all my dreams and continue to\r\npursue the goal of making India read.\r\nMy friends in the film industry, who have given me a new platform to tell my\r\nstories from, and who teach me new things everyday, in particular Atul Agnihotri, Raju\r\nHirani, Alvira Khan, Sharman Joshi, Vipul Shah, Imtiaz Ali, Shirish Kunder, Farah Khan and\r\nSalman Khan.\r\nThe Madras Players and Evam Theatre Group, who turned my stories into wonderful\r\nplays.\r\nMy friends in the media, especially those who have understood my intentions for my\r\ncountry and are with me.\r\nMy colleagues at Deutsche Bank, my friends in Mumbai and Hong Kong.\r\nGod, who continues to look after me despite my flaws.', 9, 1),
(5, 'Baku', 'wzexryctvhgjkg', 954, 700, 'coverpage/house_bZNv2m3.png', 'bookpage/sample_MKshx5G.png', '2023-03-15 15:10:50.676136', '2023-03-15 15:18:53.360281', 1, 5, 0, ',j bhfad\r\n;ea;ldv\r\neadl ;klearbrv\r\nerkvlernv\r\ner;bver\'', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `name`, `slug`, `icon`, `create_at`, `updated_at`) VALUES
(2, 'Computer Science', 'computer-science', 'category/Computer_Science.jpg', '2023-03-09 11:10:24.308709', '2023-03-09 11:10:24.308709'),
(3, 'Sci-Fi & Fantasy', 'sci-fi-fantasy', 'category/Sci-Fi__Fantasy.jpg', '2023-03-09 11:11:12.124565', '2023-03-09 11:11:12.124565'),
(4, 'Arts & Photography', 'arts-photography', 'category/Arts__Photography.jpg', '2023-03-09 11:12:07.660959', '2023-03-09 11:12:07.660959'),
(5, 'Business & Money', 'business-money', 'category/Business__Money.jpeg', '2023-03-09 11:14:42.861321', '2023-03-09 11:14:42.861321'),
(6, 'Mystery & Suspense', 'mystery-suspense', 'category/Mystery__Suspense.jpg', '2023-03-09 11:15:28.574110', '2023-03-09 11:15:28.574110'),
(7, 'History', 'history', 'category/History.png', '2023-03-09 11:16:20.350986', '2023-03-09 11:16:20.350986'),
(8, 'Emoson', 'emoson', 'category/emoson.jpeg', '2023-03-09 11:49:02.934971', '2023-03-09 11:49:02.934971'),
(9, 'Rules', 'rules', 'category/rules.jpg', '2023-03-09 11:49:13.869133', '2023-03-09 11:49:13.869133');

-- --------------------------------------------------------

--
-- Table structure for table `store_review`
--

CREATE TABLE `store_review` (
  `id` int(11) NOT NULL,
  `review_star` int(11) NOT NULL,
  `review_text` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_review`
--

INSERT INTO `store_review` (`id`, `review_star`, `review_text`, `created`, `book_id`, `customer_id`) VALUES
(1, 4, 'asdfsdasfa', '2023-03-09 11:57:27.670734', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_slider`
--

CREATE TABLE `store_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `slideimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_slider`
--

INSERT INTO `store_slider` (`id`, `title`, `created`, `updated`, `slideimg`) VALUES
(3, 'History', '2023-03-09 11:17:52.547789', '2023-03-09 11:17:52.547789', 'slide/History.png'),
(4, 'Computer Science', '2023-03-09 11:18:09.032608', '2023-03-09 11:18:09.032608', 'slide/Computer_Science.jpg'),
(5, 'Business & Money', '2023-03-09 11:18:20.647311', '2023-03-09 11:18:20.647311', 'slide/Business__Money.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `store_writer`
--

CREATE TABLE `store_writer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `bio` longtext NOT NULL,
  `pic` varchar(100) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_writer`
--

INSERT INTO `store_writer` (`id`, `name`, `slug`, `bio`, `pic`, `create_at`, `updated_at`) VALUES
(1, 'Chetan Bhagat 3', 'Chetan_Bhagat', 'Cited by The New York Times in 2008 as the biggest selling English language novelist in India’s history, Chetan Bhagat is author, screenwriter, columnist and TV personality. He is known for Comedy-drama novels about young urban middle-class Indians. Some of his famous work includes Five Point Someone, 2 States, Half Girlfriend and One Indian Girl.', 'writer/chetan-bhagat.jpg', '2023-03-09 11:27:11.593680', '2023-03-09 11:27:11.593680'),
(7, 'Ruskin Bond', 'ruskin-bond', 'Bond was born in Punjab, British Indian and attained his education in Shimla and after completion of high school he moved to the U.K to enhance his writing career. He started his career as a freelance writer and eventually got jobs as editor in various magazines. It wasn’t until 1980 his novel was published which became widely admired amongst readers. His best known work is ‘The blue umbrella’, a heartwarming story read worldwide.', 'writer/ruskin-bond.jpg', '2023-03-09 11:31:14.308281', '2023-03-09 11:31:14.308281'),
(8, 'Vikram Seth', 'vikram-seth', 'Seth born in Calcutta, graduated from high school, and studied Philosophy, Politics and Economics at Corpus Christi College, Oxford and graduated with a B. A. Degree in 1975. From 1975 to 1986, he pursued his Ph.D. at Stanford University, California, U.S.A. He is best known for his epic novel ‘The Suitable boy’.', 'writer/vikram-seth.jpg', '2023-03-09 11:31:32.105295', '2023-03-09 11:31:32.105295'),
(9, 'Arundhati Roy', 'arundhati-roy', 'Writer, essayist and political activist, Arundhati Roy, is best known for her novel The God of Small Things which won her the Man Booker Prize for Fiction in 1997. Some of her other works include, The Algebra of Infinite Justice, Kashmir: The Case for Freedom and Capitalism: A Ghost Story.', 'writer/arundhati-roy.jpg', '2023-03-09 11:31:46.965130', '2023-03-09 11:31:46.965130');

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
-- Indexes for table `deliveryapp_deliveryman`
--
ALTER TABLE `deliveryapp_deliveryman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveryapp_delivery_delivery_man_id_id_b31b3900_fk_auth_user` (`delivery_man_id_id`);

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
-- Indexes for table `myadmin_customer`
--
ALTER TABLE `myadmin_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `myadmin_orders`
--
ALTER TABLE `myadmin_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_orders_customer_id_15bd5754_fk_myadmin_customer_id` (`customer_id`),
  ADD KEY `myadmin_orders_product_id_5650512b_fk_myadmin_product_id` (`product_id`);

--
-- Indexes for table `myadmin_product`
--
ALTER TABLE `myadmin_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_order_customer_id_5bbbd957_fk_auth_user_id` (`customer_id`),
  ADD KEY `order_order_deliveryman_id_637c20a9_fk_deliverya` (`deliveryman_id`);

--
-- Indexes for table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_orderitem_book_id_921e8251_fk_store_book_id` (`book_id`),
  ADD KEY `order_orderitem_order_id_aba34f44_fk_order_order_id` (`order_id`);

--
-- Indexes for table `store_book`
--
ALTER TABLE `store_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_book_category_id_46de4d82_fk_store_category_id` (`category_id`),
  ADD KEY `store_book_writer_id_07825b0e_fk_store_writer_id` (`writer_id`),
  ADD KEY `store_book_slug_e5087f7b` (`slug`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `store_review`
--
ALTER TABLE `store_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_review_book_id_8b84a83d_fk_store_book_id` (`book_id`),
  ADD KEY `store_review_customer_id_8a20ccc2_fk_auth_user_id` (`customer_id`);

--
-- Indexes for table `store_slider`
--
ALTER TABLE `store_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_writer`
--
ALTER TABLE `store_writer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryapp_deliveryman`
--
ALTER TABLE `deliveryapp_deliveryman`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `myadmin_customer`
--
ALTER TABLE `myadmin_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myadmin_orders`
--
ALTER TABLE `myadmin_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myadmin_product`
--
ALTER TABLE `myadmin_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_order`
--
ALTER TABLE `order_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `store_book`
--
ALTER TABLE `store_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_review`
--
ALTER TABLE `store_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_slider`
--
ALTER TABLE `store_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_writer`
--
ALTER TABLE `store_writer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `deliveryapp_deliveryman`
--
ALTER TABLE `deliveryapp_deliveryman`
  ADD CONSTRAINT `deliveryapp_delivery_delivery_man_id_id_b31b3900_fk_auth_user` FOREIGN KEY (`delivery_man_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myadmin_customer`
--
ALTER TABLE `myadmin_customer`
  ADD CONSTRAINT `myadmin_customer_user_id_2625c53b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myadmin_orders`
--
ALTER TABLE `myadmin_orders`
  ADD CONSTRAINT `myadmin_orders_customer_id_15bd5754_fk_myadmin_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `myadmin_customer` (`id`),
  ADD CONSTRAINT `myadmin_orders_product_id_5650512b_fk_myadmin_product_id` FOREIGN KEY (`product_id`) REFERENCES `myadmin_product` (`id`);

--
-- Constraints for table `order_order`
--
ALTER TABLE `order_order`
  ADD CONSTRAINT `order_order_customer_id_5bbbd957_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `order_order_deliveryman_id_637c20a9_fk_deliverya` FOREIGN KEY (`deliveryman_id`) REFERENCES `deliveryapp_deliveryman` (`id`);

--
-- Constraints for table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  ADD CONSTRAINT `order_orderitem_book_id_921e8251_fk_store_book_id` FOREIGN KEY (`book_id`) REFERENCES `store_book` (`id`),
  ADD CONSTRAINT `order_orderitem_order_id_aba34f44_fk_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`);

--
-- Constraints for table `store_book`
--
ALTER TABLE `store_book`
  ADD CONSTRAINT `store_book_category_id_46de4d82_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`),
  ADD CONSTRAINT `store_book_writer_id_07825b0e_fk_store_writer_id` FOREIGN KEY (`writer_id`) REFERENCES `store_writer` (`id`);

--
-- Constraints for table `store_review`
--
ALTER TABLE `store_review`
  ADD CONSTRAINT `store_review_book_id_8b84a83d_fk_store_book_id` FOREIGN KEY (`book_id`) REFERENCES `store_book` (`id`),
  ADD CONSTRAINT `store_review_customer_id_8a20ccc2_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
