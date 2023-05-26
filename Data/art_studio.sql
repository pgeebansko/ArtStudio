-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 май 2023 в 01:59
-- Версия на сървъра: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_studio`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `auth_permission`
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
(25, 'Can add Урок', 7, 'add_lesson'),
(26, 'Can change Урок', 7, 'change_lesson'),
(27, 'Can delete Урок', 7, 'delete_lesson'),
(28, 'Can view Урок', 7, 'view_lesson'),
(29, 'Can add Рисунка', 8, 'add_picture'),
(30, 'Can change Рисунка', 8, 'change_picture'),
(31, 'Can delete Рисунка', 8, 'delete_picture'),
(32, 'Can view Рисунка', 8, 'view_picture'),
(33, 'Can add Стъпка', 9, 'add_item'),
(34, 'Can change Стъпка', 9, 'change_item'),
(35, 'Can delete Стъпка', 9, 'delete_item'),
(36, 'Can view Стъпка', 9, 'view_item');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
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
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$8wRIXaab8cjMJfJyN4gThV$6zaGCSRxD8M8Lnk6f5MDON/8yitrfIg+te06k+oZMiY=', '2023-05-24 14:05:03.732598', 1, 'admin', '', '', '', 1, 1, '2023-05-24 14:04:17.873079');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
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
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-24 14:09:47.882782', '1', 'Момиче', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-05-24 18:32:38.543625', '2', 'Сови', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-05-24 20:41:03.873729', '1', 'рисуване на лице в анфас', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-05-24 20:41:34.030384', '2', 'рисуване на лице в профил', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-05-24 22:01:27.905249', '3', 'стъпка 1 на урок 1', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-05-24 22:01:40.664507', '1', 'начало', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-05-24 22:02:36.170858', '4', 'стъпка 2 на урок 1', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-05-24 23:12:21.511169', '4', 'стъпка 2 на урок 1', 3, '', 8, 1),
(9, '2023-05-24 23:12:21.513171', '3', 'стъпка 1 на урок 1', 3, '', 8, 1),
(10, '2023-05-24 23:12:55.481688', '1', 'начало', 2, '[{\"changed\": {\"fields\": [\"\\u0420\\u0438\\u0441\\u0443\\u043d\\u043a\\u0430(\\u0444\\u0430\\u0439\\u043b):\"]}}]', 9, 1),
(11, '2023-05-24 23:13:13.294650', '1', 'начало', 2, '[]', 9, 1),
(12, '2023-05-24 23:13:44.417653', '2', 'стъпка 2', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-05-24 23:14:13.734374', '3', 'Стъпка 3', 1, '[{\"added\": {}}]', 9, 1),
(14, '2023-05-24 23:14:41.942382', '4', 'стъпка 4', 1, '[{\"added\": {}}]', 9, 1),
(15, '2023-05-25 00:11:36.366013', '1', 'В началото трябва да нарисуваме основния контур. Това се прави по показания на рисунката начин.', 2, '[{\"changed\": {\"fields\": [\"\\u041f\\u043e\\u044f\\u0441\\u043d\\u0435\\u043d\\u0438\\u0435\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'main', 'item'),
(7, 'main', 'lesson'),
(8, 'main', 'picture'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-24 14:03:40.153094'),
(2, 'auth', '0001_initial', '2023-05-24 14:03:41.197648'),
(3, 'admin', '0001_initial', '2023-05-24 14:03:41.472245'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-24 14:03:41.506104'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-24 14:03:41.543529'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-24 14:03:41.751628'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-24 14:03:41.841638'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-24 14:03:41.892720'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-24 14:03:41.906402'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-24 14:03:42.024000'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-24 14:03:42.033995'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-24 14:03:42.042935'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-24 14:03:42.099913'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-24 14:03:42.134521'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-24 14:03:42.172150'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-24 14:03:42.192021'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-24 14:03:42.247850'),
(18, 'main', '0001_initial', '2023-05-24 14:03:42.498666'),
(19, 'sessions', '0001_initial', '2023-05-24 14:03:42.576497'),
(20, 'main', '0002_item_lesson_picture_in_gallery_alter_item_picture_id_and_more', '2023-05-24 21:53:30.556813'),
(21, 'main', '0003_remove_item_picture_id', '2023-05-24 23:08:54.908755'),
(22, 'main', '0004_item_picture', '2023-05-24 23:10:26.737853'),
(23, 'main', '0005_remove_picture_in_gallery', '2023-05-24 23:10:55.774368'),
(24, 'main', '0006_alter_item_title', '2023-05-24 23:15:58.295534'),
(25, 'main', '0007_alter_item_title', '2023-05-24 23:34:47.475538');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('irdygqjwpfarmdx7ahsvymu6z4c0bi0h', '.eJxVjEEOwiAQRe_C2pABBcGl-56hmWEGqRpISrsy3l2bdKHb_977LzXiupRx7TKPE6uLMurwuxGmh9QN8B3rrenU6jJPpDdF77TrobE8r7v7d1Cwl28d2ftz8pHTyTJIPlJw5AJATJBNEgmQETJhpOydtd5hsA4YMjOjQfX-APZGOLg:1q1p6t:Y12keQPm7f66cTfyDW-qh1x3gNDzTZkjFfhB0HUKasE', '2023-06-07 14:05:03.739481');

-- --------------------------------------------------------

--
-- Структура на таблица `main_item`
--

DROP TABLE IF EXISTS `main_item`;
CREATE TABLE `main_item` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `order` smallint(6) NOT NULL,
  `lesson_id` bigint(20) DEFAULT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `main_item`
--

INSERT INTO `main_item` (`id`, `title`, `order`, `lesson_id`, `picture`) VALUES
(1, 'В началото трябва да нарисуваме основния контур. Това се прави по показания на рисунката начин.', 1, 1, 'article_pics/lice7_FTzb0iO.jpg'),
(2, 'стъпка 2', 2, 1, 'article_pics/lice6_OPEWaCu.jpg'),
(3, 'Стъпка 3', 3, 1, 'article_pics/lice5.jpg'),
(4, 'стъпка 4', 4, 1, 'article_pics/lice4.jpg');

-- --------------------------------------------------------

--
-- Структура на таблица `main_lesson`
--

DROP TABLE IF EXISTS `main_lesson`;
CREATE TABLE `main_lesson` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `main_lesson`
--

INSERT INTO `main_lesson` (`id`, `title`, `content`) VALUES
(1, 'рисуване на лице в анфас', 'Този урок ще ви покаже, как да нарисувате лице на човек , обърнат към вас.'),
(2, 'рисуване на лице в профил', 'кратък урок за рисуване на лице в профил');

-- --------------------------------------------------------

--
-- Структура на таблица `main_picture`
--

DROP TABLE IF EXISTS `main_picture`;
CREATE TABLE `main_picture` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `order` smallint(6) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `author` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `main_picture`
--

INSERT INTO `main_picture` (`id`, `title`, `order`, `picture`, `author`) VALUES
(1, 'Момиче', 1, 'article_pics/women3.jpg', 'Васи Джолева'),
(2, 'Сови', 1, 'article_pics/sovi.jpg', 'Васи');

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
-- Indexes for table `main_item`
--
ALTER TABLE `main_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_item_lesson_id_f86a47ed_fk_main_lesson_id` (`lesson_id`);

--
-- Indexes for table `main_lesson`
--
ALTER TABLE `main_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_picture`
--
ALTER TABLE `main_picture`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `main_item`
--
ALTER TABLE `main_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_lesson`
--
ALTER TABLE `main_lesson`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_picture`
--
ALTER TABLE `main_picture`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_item`
--
ALTER TABLE `main_item`
  ADD CONSTRAINT `main_item_lesson_id_f86a47ed_fk_main_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `main_lesson` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
