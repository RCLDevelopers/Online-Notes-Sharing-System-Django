-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 06:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsspythondb`
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
  `id` bigint(20) NOT NULL,
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add user reg', 7, 'add_userreg'),
(26, 'Can change user reg', 7, 'change_userreg'),
(27, 'Can delete user reg', 7, 'delete_userreg'),
(28, 'Can view user reg', 7, 'view_userreg'),
(29, 'Can add notes', 8, 'add_notes'),
(30, 'Can change notes', 8, 'change_notes'),
(31, 'Can delete notes', 8, 'delete_notes'),
(32, 'Can view notes', 8, 'view_notes');

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(4, 'contenttypes', 'contenttype'),
(6, 'nssapp', 'customuser'),
(8, 'nssapp', 'notes'),
(7, 'nssapp', 'userreg'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-20 07:04:37.003661'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-05-20 07:04:37.068156'),
(3, 'auth', '0001_initial', '2024-05-20 07:04:37.309612'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-05-20 07:04:37.388394'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-05-20 07:04:37.396373'),
(6, 'auth', '0004_alter_user_username_opts', '2024-05-20 07:04:37.403658'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-05-20 07:04:37.410089'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-05-20 07:04:37.412307'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-05-20 07:04:37.420144'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-05-20 07:04:37.428030'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-05-20 07:04:37.434688'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-05-20 07:04:37.446507'),
(13, 'auth', '0011_update_proxy_permissions', '2024-05-20 07:04:37.454486'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-05-20 07:04:37.460823'),
(15, 'nssapp', '0001_initial', '2024-05-20 07:04:37.851602'),
(16, 'admin', '0001_initial', '2024-05-20 07:04:37.959354'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-05-20 07:04:37.976514'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-20 07:04:37.993467'),
(19, 'nssapp', '0002_alter_customuser_user_type', '2024-05-20 07:04:38.008427'),
(20, 'sessions', '0001_initial', '2024-05-20 07:04:38.048096'),
(21, 'nssapp', '0003_alter_customuser_user_type_notes', '2024-05-21 05:13:53.031240'),
(22, 'nssapp', '0004_rename_description_notes_notesdesc_and_more', '2024-05-21 05:34:37.226768');

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
('dvspjbghooq3dvgr3dtz242sfp35o76d', '.eJxVjDsOAiEUAO9CbQjfB1jaewby-MmqgWTZrYx3V5IttJ2ZzIt43Lfq95FXvyRyJkBOvyxgfOQ2Rbpju3Uae9vWJdCZ0MMOeu0pPy9H-zeoOOrcWg5ShcRY1qI4wyKToAtIbq0QgCYUHfVX5cSUQ6k4GGeQc3AZhRbk_QG0OjaI:1sAiis:_NO3dMcd-7qCRJktltwBOIRMzlmh3E3vxtooGsQSZgA', '2024-06-08 04:09:34.658129'),
('xu6e0d45ms0rqoa7qizuo82sdd2li2ma', '.eJxVjDsOwjAQBe_iGlnrD15MSZ8zWOv1ggPIkeKkQtwdIqWA9s3Me6lE61LT2mVOY1Fn5dXhd8vED2kbKHdqt0nz1JZ5zHpT9E67HqYiz8vu_h1U6vVbY-R8YhCPOWCIubCg5SCcjYgjC3B1Dk2Mxsdgj0BI1rMPxKVgBFDvD_HkN9I:1s9fHv:IYikcyXk53_Y70kepDEW655AHbeGmgndOXXObAKdbM4', '2024-06-05 06:17:23.211945');

-- --------------------------------------------------------

--
-- Table structure for table `nssapp_customuser`
--

CREATE TABLE `nssapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nssapp_customuser`
--

INSERT INTO `nssapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$720000$Cmx00zQdwZQwAnVWCEDU5o$VCvtOReNUOEbG4Ay+7ySzeKdl2VrxCc54M2mGaAqNVM=', '2024-05-20 07:25:58.679766', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-05-20 07:25:45.062462', '1', ''),
(2, 'pbkdf2_sha256$720000$c6kdK5kU9PJvfmXFm5vr48$o1AChc0EpEsq2PmRcFOBhetClvLCh+fQRdZ39VNYQwM=', NULL, 0, 'teena123', 'Teena', 'Singh', 'teena@gmail.com', 0, 1, '2024-05-20 11:17:08.038352', '2', 'media/profile_pic/client-pic-1.jpg'),
(3, 'pbkdf2_sha256$720000$i7rJqCYmXUIWdbuPi2GGMa$+VKQsM8GT4KMRjEr5s8Un/p4Qc7p3HdTpFKIYZalo1A=', '2024-05-20 12:21:14.548060', 0, 'meena123', 'Meena', 'Kumar', 'meena@gmail.com', 0, 1, '2024-05-20 11:18:09.583371', '2', 'media/profile_pic/client-pic-1_tCa4YRl.jpg'),
(4, 'pbkdf2_sha256$390000$lxlOOdQdIJXdJP4ZeX2yzf$YGb6W4RIOTkpBmfIbdpvxqeW1KE0vwpaoNRxdlz8YhM=', '2024-05-23 15:06:03.583653', 0, 'abir123', 'Abir', 'Singh', 'abir@gmail.com', 0, 1, '2024-05-21 06:00:21.243863', '2', 'media/profile_pic/user.jpg'),
(5, 'pbkdf2_sha256$390000$r9tIWGgGrhvabsYk73nWJz$pQcxfn1mOJWrl8JQOUzVHAZp0ufkoDAIlCDFU6ppN+M=', '2024-05-23 07:48:36.859454', 0, 'ak12345', 'Anuj', 'Kumar', 'anujk343@gmail.com', 0, 1, '2024-05-23 07:48:29.368105', '2', 'media/profile_pic/complain.png'),
(6, 'pbkdf2_sha256$390000$ao9mN0d5LHgLnUpbnnIYoR$/DKlzi3ylrf0Rvtt1c2XWN/MOK5ItH8g+1aMtpqaXIk=', '2024-05-25 04:09:34.655520', 0, 'john123', 'John', 'Doe', 'johnqw12@g.com', 0, 1, '2024-05-23 07:59:21.539575', '2', 'media/profile_pic/contact-book.png'),
(7, 'pbkdf2_sha256$390000$pMSqM5C0yRneVHyOrGeFo9$7tolUcH7iZbhgMIuAUTOmSOaxoGhR9pDLRAFbvb4lQM=', '2024-05-23 15:06:44.822867', 0, 'test123', 'Test', 'Sample', 'test@gmail.com', 0, 1, '2024-05-23 15:05:21.733368', '2', 'media/profile_pic/teacher_4.png');

-- --------------------------------------------------------

--
-- Table structure for table `nssapp_customuser_groups`
--

CREATE TABLE `nssapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nssapp_customuser_user_permissions`
--

CREATE TABLE `nssapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nssapp_notes`
--

CREATE TABLE `nssapp_notes` (
  `id` bigint(20) NOT NULL,
  `notestitle` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `notesdesc` longtext NOT NULL,
  `file1` varchar(100) DEFAULT NULL,
  `file2` varchar(100) DEFAULT NULL,
  `file3` varchar(100) DEFAULT NULL,
  `file4` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `nsuser_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nssapp_notes`
--

INSERT INTO `nssapp_notes` (`id`, `notestitle`, `subject`, `notesdesc`, `file1`, `file2`, `file3`, `file4`, `created_at`, `updated_at`, `nsuser_id`) VALUES
(1, 'Maths Shortcuts', 'Math', 'uiyyoyoieyfiuyw', 'media/notes/files/file-sample_150kB.pdf', '', '', '', '2024-05-21 05:46:55.331102', '2024-05-21 05:46:55.331102', 1),
(2, 'English Vocabulary', 'English', 'ohiuyfuew cby\r\nh ucweuigrt', 'media/notes/files/file-sample_150kB_69gKP91.pdf', 'media/notes/files/file-sample_150kB_zpizLDr.pdf', 'media/notes/files/file-sample_150kB_zZVh4Yx.pdf', 'media/notes/files/file-sample_150kB_EPmacuA.pdf', '2024-05-21 05:49:34.023395', '2024-05-21 05:49:34.023395', 1),
(3, 'English Literature', 'English', 'hhiuiyiuyi', 'media/notes/files/file-sample_150kB_6A49bFZ.pdf', 'media/notes/files/file-sample_150kB_heKrVXB.pdf', '', '', '2024-05-21 05:50:15.697032', '2024-05-21 05:50:15.697032', 1),
(4, 'English Vocabulary', 'English', 'My notes provide english vocab which is easy to remember', 'media/notes/files/d41d8cd98f00b204e9800998ecf8427e1654240984.pdf', 'media/notes/files/d41d8cd98f00b204e9800998ecf8427e1654246821.pdf', 'media/notes/files/d41d8cd98f00b204e9800998ecf8427e1702662450.pdf', 'media/notes/files/file-sample_150kB_ZnekPto.pdf', '2024-05-21 06:02:17.413572', '2024-05-21 07:30:27.824784', 2),
(6, 'English Literature', 'English', 'fhkjhk', 'media/notes/files/file-sample_150kB_dgchv2P.pdf', '', '', '', '2024-05-21 06:59:37.894187', '2024-05-21 07:29:54.851622', 2),
(7, 'History Dates', 'History', 'This notes includes history dates', 'media/notes/files/file-sample_150kB_TbbafoW.pdf', 'media/notes/files/file-sample_150kB_YuT4Kz9.pdf', 'media/notes/files/file-sample_150kB_EkIm7yZ.pdf', 'media/notes/files/file-sample_150kB_wegBw9y.pdf', '2024-05-22 05:59:32.027726', '2024-05-22 05:59:32.027726', 2),
(8, 'PHP Programming', 'PHP', 'PHP Programming Cook Book', 'media/notes/files/php_cookbook.pdf', '', '', '', '2024-05-23 07:50:22.678460', '2024-05-23 07:50:22.678460', 3),
(9, 'HTML Notes', 'HTML', 'HTML Essesntial Notes', 'media/notes/files/the-complete-reference-html-css-fifth-edition.pdf', 'media/notes/files/Beginners_Guide_to_HTML.pdf', 'media/notes/files/html.pdf', 'media/notes/files/html_tutorial.pdf', '2024-05-23 08:00:18.657161', '2024-05-23 08:00:18.657161', 4),
(10, 'CSS NOtes', 'CSS', 'CSS Basic Notes', 'media/notes/files/CSSNotesForProfessionals.pdf', 'media/notes/files/css2.pdf', '', '', '2024-05-23 08:01:21.806506', '2024-05-23 08:01:21.806506', 4),
(11, 'Hindi Vocabulary', 'Hindi', 'Hindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi VocabularyHindi Vocabulary', 'media/notes/files/file-sample_150kB_YuT4Kz9_EHBYlbE.pdf', 'media/notes/files/file-sample_150kB_EkIm7yZ_kecEEwe.pdf', '', '', '2024-05-23 15:10:08.551801', '2024-05-23 15:10:08.551801', 5),
(12, 'English Vocabularies ', 'English', 'fhgfhgfhgfhgf\r\njhgewufwe', 'media/notes/files/file-sample_150kB_EkIm7yZ_zgn8y4B.pdf', '', '', '', '2024-05-23 15:10:36.935326', '2024-05-23 15:10:36.935326', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nssapp_userreg`
--

CREATE TABLE `nssapp_userreg` (
  `id` bigint(20) NOT NULL,
  `mobilenumber` varchar(11) NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nssapp_userreg`
--

INSERT INTO `nssapp_userreg` (`id`, `mobilenumber`, `regdate_at`, `updated_at`, `admin_id`) VALUES
(1, '7897979878', '2024-05-20 11:18:10.352411', '2024-05-20 11:18:10.352411', 3),
(2, '9798798798', '2024-05-21 06:00:22.021339', '2024-05-21 06:00:22.021339', 4),
(3, '3625142536', '2024-05-23 07:48:29.757139', '2024-05-23 07:48:29.757139', 5),
(4, '7485966958', '2024-05-23 07:59:21.822771', '2024-05-23 07:59:21.822771', 6),
(5, '9879879797', '2024-05-23 15:05:21.975240', '2024-05-23 15:05:21.975240', 7);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_nssapp_customuser_id` (`user_id`);

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
-- Indexes for table `nssapp_customuser`
--
ALTER TABLE `nssapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `nssapp_customuser_groups`
--
ALTER TABLE `nssapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nssapp_customuser_groups_customuser_id_group_id_7893d319_uniq` (`customuser_id`,`group_id`),
  ADD KEY `nssapp_customuser_groups_group_id_9b9c4d03_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `nssapp_customuser_user_permissions`
--
ALTER TABLE `nssapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nssapp_customuser_user_p_customuser_id_permission_55c709cf_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `nssapp_customuser_us_permission_id_b85cc3a8_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `nssapp_notes`
--
ALTER TABLE `nssapp_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nssapp_notes_nsuser_id_fd812ff7_fk_nssapp_userreg_id` (`nsuser_id`);

--
-- Indexes for table `nssapp_userreg`
--
ALTER TABLE `nssapp_userreg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nssapp_customuser`
--
ALTER TABLE `nssapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nssapp_customuser_groups`
--
ALTER TABLE `nssapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nssapp_customuser_user_permissions`
--
ALTER TABLE `nssapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nssapp_notes`
--
ALTER TABLE `nssapp_notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nssapp_userreg`
--
ALTER TABLE `nssapp_userreg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_nssapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `nssapp_customuser` (`id`);

--
-- Constraints for table `nssapp_customuser_groups`
--
ALTER TABLE `nssapp_customuser_groups`
  ADD CONSTRAINT `nssapp_customuser_gr_customuser_id_e52ed5ff_fk_nssapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `nssapp_customuser` (`id`),
  ADD CONSTRAINT `nssapp_customuser_groups_group_id_9b9c4d03_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `nssapp_customuser_user_permissions`
--
ALTER TABLE `nssapp_customuser_user_permissions`
  ADD CONSTRAINT `nssapp_customuser_us_customuser_id_dc3fdaf6_fk_nssapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `nssapp_customuser` (`id`),
  ADD CONSTRAINT `nssapp_customuser_us_permission_id_b85cc3a8_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `nssapp_notes`
--
ALTER TABLE `nssapp_notes`
  ADD CONSTRAINT `nssapp_notes_nsuser_id_fd812ff7_fk_nssapp_userreg_id` FOREIGN KEY (`nsuser_id`) REFERENCES `nssapp_userreg` (`id`);

--
-- Constraints for table `nssapp_userreg`
--
ALTER TABLE `nssapp_userreg`
  ADD CONSTRAINT `nssapp_userreg_admin_id_6ccc3844_fk_nssapp_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `nssapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
