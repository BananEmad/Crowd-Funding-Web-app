-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 04:33 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crowdfunding`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, 'Can add categories', 7, 'add_categories'),
(26, 'Can change categories', 7, 'change_categories'),
(27, 'Can delete categories', 7, 'delete_categories'),
(28, 'Can view categories', 7, 'view_categories'),
(29, 'Can add projects', 8, 'add_projects'),
(30, 'Can change projects', 8, 'change_projects'),
(31, 'Can delete projects', 8, 'delete_projects'),
(32, 'Can view projects', 8, 'view_projects'),
(33, 'Can add users', 9, 'add_users'),
(34, 'Can change users', 9, 'change_users'),
(35, 'Can delete users', 9, 'delete_users'),
(36, 'Can view users', 9, 'view_users'),
(37, 'Can add donations', 10, 'add_donations'),
(38, 'Can change donations', 10, 'change_donations'),
(39, 'Can delete donations', 10, 'delete_donations'),
(40, 'Can view donations', 10, 'view_donations'),
(41, 'Can add comments', 11, 'add_comments'),
(42, 'Can change comments', 11, 'change_comments'),
(43, 'Can delete comments', 11, 'delete_comments'),
(44, 'Can view comments', 11, 'view_comments'),
(45, 'Can add images', 12, 'add_images'),
(46, 'Can change images', 12, 'change_images'),
(47, 'Can delete images', 12, 'delete_images'),
(48, 'Can view images', 12, 'view_images'),
(49, 'Can add tags', 13, 'add_tags'),
(50, 'Can change tags', 13, 'change_tags'),
(51, 'Can delete tags', 13, 'delete_tags'),
(52, 'Can view tags', 13, 'view_tags');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories_categories`
--

CREATE TABLE `categories_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories_categories`
--

INSERT INTO `categories_categories` (`id`, `category_name`) VALUES
(1, 'Hot Drink'),
(2, 'Cold Drink');

-- --------------------------------------------------------

--
-- Table structure for table `comments_comments`
--

CREATE TABLE `comments_comments` (
  `id` int(11) NOT NULL,
  `comment_content` longtext NOT NULL,
  `project_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'categories', 'categories'),
(11, 'comments', 'comments'),
(5, 'contenttypes', 'contenttype'),
(10, 'donations', 'donations'),
(12, 'images', 'images'),
(8, 'projects', 'projects'),
(6, 'sessions', 'session'),
(13, 'tags', 'tags'),
(9, 'users', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-20 15:20:39.974567'),
(2, 'auth', '0001_initial', '2020-03-20 15:20:42.541549'),
(3, 'admin', '0001_initial', '2020-03-20 15:20:53.888543'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-20 15:20:56.897570'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-20 15:20:56.984561'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-20 15:20:58.495576'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-20 15:20:59.505548'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-20 15:21:00.790548'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-20 15:21:00.844548'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-20 15:21:01.540550'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-20 15:21:01.582567'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-20 15:21:01.658552'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-20 15:21:02.880613'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-20 15:21:04.317561'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-20 15:21:05.352597'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-20 15:21:05.396592'),
(17, 'categories', '0001_initial', '2020-03-20 15:21:05.705615'),
(18, 'users', '0001_initial', '2020-03-20 15:21:06.152551'),
(19, 'tags', '0001_initial', '2020-03-20 15:21:06.628607'),
(20, 'projects', '0001_initial', '2020-03-20 15:21:06.974616'),
(21, 'comments', '0001_initial', '2020-03-20 15:21:11.716552'),
(22, 'donations', '0001_initial', '2020-03-20 15:21:13.962609'),
(23, 'images', '0001_initial', '2020-03-20 15:21:17.772614'),
(24, 'sessions', '0001_initial', '2020-03-20 15:21:18.993609'),
(25, 'images', '0002_auto_20200320_1726', '2020-03-20 15:27:04.180618');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donations_donations`
--

CREATE TABLE `donations_donations` (
  `id` int(11) NOT NULL,
  `donation_amount` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `images_images`
--

CREATE TABLE `images_images` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `Image_title` varchar(500) NOT NULL,
  `image_description` varchar(1000) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images_images`
--

INSERT INTO `images_images` (`id`, `img`, `Image_title`, `image_description`, `project_id`) VALUES
(1, 'project-1.jpg', 'the hell', ' very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1),
(2, 'project-2.jpg', 'shopping market', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1),
(3, 'project-3.jpg', 'popular fake', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 1),
(4, 'project-4.jpg', 'supermarket', 'Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 2),
(5, 'project-5.jpg', 'market in hell', 'it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', 2),
(6, 'project-6.jpg', 'hair is difficult', 'but also the leap into electronic typesetting, remaining essentially unchanged.', 3),
(7, 'project-7.jpg', 'can you?', 'it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text', 3),
(8, 'project-8.jpg', 'what is your name ?', ' If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text', 1),
(9, 'project-8.jpg', 'Can you tell me?', 'written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `projects_projects`
--

CREATE TABLE `projects_projects` (
  `id` int(11) NOT NULL,
  `project_title` varchar(100) NOT NULL,
  `project_details` longtext NOT NULL,
  `project_hint` longtext NOT NULL,
  `project_Location` varchar(500) NOT NULL,
  `total_donation` int(11) NOT NULL,
  `donated` int(11) NOT NULL,
  `Percentage` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `main_img_name` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_projects`
--

INSERT INTO `projects_projects` (`id`, `project_title`, `project_details`, `project_hint`, `project_Location`, `total_donation`, `donated`, `Percentage`, `rate`, `start_time`, `end_time`, `main_img_name`, `category_id`, `tag_id`, `user_id`) VALUES
(1, 'Shopping in the hell', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Egypt', 15000, 7500, 50, 4, '2020-03-01 00:00:00.000000', '2020-03-30 00:00:00.000000', '', 1, 1, 1),
(2, 'Marketing in the super', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Egypt', 12000, 5500, 45, 3, '2020-03-01 00:00:00.000000', '2020-03-29 00:00:00.000000', '', 1, 2, 1),
(3, 'Can you hair me?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Egypt', 20000, 5000, 25, 5, '2020-03-04 00:00:00.000000', '2020-03-28 00:00:00.000000', '', 2, 1, 2),
(4, 'Who are you?', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Egypt', 18000, 9000, 50, 4, '2020-03-03 00:00:00.000000', '2020-03-17 00:00:00.000000', '', 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tags_tags`
--

CREATE TABLE `tags_tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags_tags`
--

INSERT INTO `tags_tags` (`id`, `tag_name`) VALUES
(1, 'Local'),
(2, 'Primary');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE `users_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_img` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`id`, `user_name`, `user_img`, `email`, `user_password`, `user_phone`) VALUES
(1, 'Mohamed', 'avatar-1.jpg', 'mohamedelnagar461@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '01090789568'),
(2, 'Ahmed', 'avatar-2.jpg', 'a@a.yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '01050546523');

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
-- Indexes for table `categories_categories`
--
ALTER TABLE `categories_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments_comments`
--
ALTER TABLE `comments_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_comments_project_id_id_96c2c58e_fk_projects_projects_id` (`project_id_id`),
  ADD KEY `comments_comments_user_id_id_bc794cfa_fk_users_users_id` (`user_id_id`);

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
-- Indexes for table `donations_donations`
--
ALTER TABLE `donations_donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donations_donations_project_id_43e3f999_fk_projects_projects_id` (`project_id`),
  ADD KEY `donations_donations_user_id_a34613ce_fk_users_users_id` (`user_id`);

--
-- Indexes for table `images_images`
--
ALTER TABLE `images_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_images_project_id_f31d1ff5_fk_projects_projects_id` (`project_id`);

--
-- Indexes for table `projects_projects`
--
ALTER TABLE `projects_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_projects_category_id_bb560480_fk_categorie` (`category_id`),
  ADD KEY `projects_projects_tag_id_d24cbbe6_fk_tags_tags_id` (`tag_id`),
  ADD KEY `projects_projects_user_id_8117f6ee_fk_users_users_id` (`user_id`);

--
-- Indexes for table `tags_tags`
--
ALTER TABLE `tags_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_users`
--
ALTER TABLE `users_users`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `categories_categories`
--
ALTER TABLE `categories_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments_comments`
--
ALTER TABLE `comments_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `donations_donations`
--
ALTER TABLE `donations_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_images`
--
ALTER TABLE `images_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `projects_projects`
--
ALTER TABLE `projects_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags_tags`
--
ALTER TABLE `tags_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_users`
--
ALTER TABLE `users_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `comments_comments`
--
ALTER TABLE `comments_comments`
  ADD CONSTRAINT `comments_comments_project_id_id_96c2c58e_fk_projects_projects_id` FOREIGN KEY (`project_id_id`) REFERENCES `projects_projects` (`id`),
  ADD CONSTRAINT `comments_comments_user_id_id_bc794cfa_fk_users_users_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_users` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `donations_donations`
--
ALTER TABLE `donations_donations`
  ADD CONSTRAINT `donations_donations_project_id_43e3f999_fk_projects_projects_id` FOREIGN KEY (`project_id`) REFERENCES `projects_projects` (`id`),
  ADD CONSTRAINT `donations_donations_user_id_a34613ce_fk_users_users_id` FOREIGN KEY (`user_id`) REFERENCES `users_users` (`id`);

--
-- Constraints for table `images_images`
--
ALTER TABLE `images_images`
  ADD CONSTRAINT `images_images_project_id_f31d1ff5_fk_projects_projects_id` FOREIGN KEY (`project_id`) REFERENCES `projects_projects` (`id`);

--
-- Constraints for table `projects_projects`
--
ALTER TABLE `projects_projects`
  ADD CONSTRAINT `projects_projects_category_id_bb560480_fk_categorie` FOREIGN KEY (`category_id`) REFERENCES `categories_categories` (`id`),
  ADD CONSTRAINT `projects_projects_tag_id_d24cbbe6_fk_tags_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags_tags` (`id`),
  ADD CONSTRAINT `projects_projects_user_id_8117f6ee_fk_users_users_id` FOREIGN KEY (`user_id`) REFERENCES `users_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
