-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2020 at 10:40 AM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_45`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add group', 4, 'add_group'),
(6, 'Can change group', 4, 'change_group'),
(7, 'Can delete group', 4, 'delete_group'),
(8, 'Can view group', 4, 'view_group'),
(9, 'Can add user', 3, 'add_user'),
(10, 'Can change user', 3, 'change_user'),
(11, 'Can delete user', 3, 'delete_user'),
(12, 'Can view user', 3, 'view_user'),
(13, 'Can add permission', 2, 'add_permission'),
(14, 'Can change permission', 2, 'change_permission'),
(15, 'Can delete permission', 2, 'delete_permission'),
(16, 'Can view permission', 2, 'view_permission'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add register', 7, 'add_register'),
(26, 'Can change register', 7, 'change_register'),
(27, 'Can delete register', 7, 'delete_register'),
(28, 'Can view register', 7, 'view_register'),
(29, 'Can add addcat', 8, 'add_addcat'),
(30, 'Can change addcat', 8, 'change_addcat'),
(31, 'Can delete addcat', 8, 'delete_addcat'),
(32, 'Can view addcat', 8, 'view_addcat'),
(33, 'Can add addsubcat', 9, 'add_addsubcat'),
(34, 'Can change addsubcat', 9, 'change_addsubcat'),
(35, 'Can delete addsubcat', 9, 'delete_addsubcat'),
(36, 'Can view addsubcat', 9, 'view_addsubcat'),
(37, 'Can add locality', 10, 'add_locality'),
(38, 'Can change locality', 10, 'change_locality'),
(39, 'Can delete locality', 10, 'delete_locality'),
(40, 'Can view locality', 10, 'view_locality'),
(41, 'Can add location', 11, 'add_location'),
(42, 'Can change location', 11, 'change_location'),
(43, 'Can delete location', 11, 'delete_location'),
(44, 'Can view location', 11, 'view_location'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'findus', 'register'),
(8, 'myadmin', 'addcat'),
(9, 'myadmin', 'addsubcat'),
(6, 'sessions', 'session'),
(10, 'user', 'locality'),
(11, 'user', 'location'),
(12, 'user', 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-02 11:42:18.421531'),
(2, 'auth', '0001_initial', '2020-01-02 11:42:20.038095'),
(3, 'admin', '0001_initial', '2020-01-02 11:42:24.798903'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-02 11:42:25.812624'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-02 11:42:25.878436'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-02 11:42:26.611114'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-02 11:42:26.697748'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-02 11:42:26.795513'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-02 11:42:26.835535'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-02 11:42:27.219436'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-02 11:42:27.244977'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-02 11:42:27.279008'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-02 11:42:27.366454'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-02 11:42:27.452980'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-02 11:42:27.541137'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-02 11:42:27.576240'),
(17, 'sessions', '0001_initial', '2020-01-02 11:42:27.893881'),
(18, 'findus', '0001_initial', '2020-01-03 11:38:28.288491'),
(19, 'myadmin', '0001_initial', '2020-01-07 11:34:52.945248'),
(20, 'myadmin', '0002_addsubcat', '2020-01-08 11:32:04.060411'),
(21, 'user', '0001_initial', '2020-01-11 11:48:50.020757'),
(22, 'user', '0002_location', '2020-01-13 11:22:33.031439'),
(23, 'user', '0003_location_uid', '2020-01-13 11:35:31.265763'),
(24, 'user', '0004_payment', '2020-01-16 11:43:41.761648');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6hjlqp1dzwdro3qtgpqzc3guj103rhv9', 'YjdmMGE4ZDc1MDc5NmRkMDIyNzViOGIzMzJjZTcwOTdiYmEyYjQwNjp7InN1bm0iOm51bGwsInNyb2xlIjpudWxsfQ==', '2020-02-03 11:10:09.734470'),
('8mmh59oh0tr1x3wfhrjec0o1u61iv0hf', 'YjdmMGE4ZDc1MDc5NmRkMDIyNzViOGIzMzJjZTcwOTdiYmEyYjQwNjp7InN1bm0iOm51bGwsInNyb2xlIjpudWxsfQ==', '2020-02-01 11:37:17.648013'),
('gfgdv0tv5jv2e9ax5bz8v1jrdu2jmj05', 'YWZkNmM1NGExZmMwNGI1NjNjOTg1YzhmZmMyNDAwOTRlMGY4NzVkMzp7InNyb2xlIjpudWxsLCJzdW5tIjpudWxsfQ==', '2020-02-07 11:49:33.173468'),
('mvrfie9t8hwdeylc048phs75ztzqoemp', 'YWZkNmM1NGExZmMwNGI1NjNjOTg1YzhmZmMyNDAwOTRlMGY4NzVkMzp7InNyb2xlIjpudWxsLCJzdW5tIjpudWxsfQ==', '2020-02-01 11:43:08.133903'),
('q1rl6njp90an8c7pw0c3veap7erhsaqt', 'MTZlMzZlZmI4ZDY5ZDRmNGVmMTUyMTVlMjYwOTg0Yzc2YTRkNDEzYzp7InN1bm0iOiJhZGF3YWRrYXJ2aWxla2hAZ21haWwuY29tIiwic3JvbGUiOiJ1c2VyIn0=', '2020-02-04 11:48:50.304963'),
('qktzvdh06bcxc6v3zjul92y4ls53ze4s', 'YjdmMGE4ZDc1MDc5NmRkMDIyNzViOGIzMzJjZTcwOTdiYmEyYjQwNjp7InN1bm0iOm51bGwsInNyb2xlIjpudWxsfQ==', '2020-02-03 11:49:47.604744'),
('wksrx6tfgehfz2fvsq9eo6akx8tiaimb', 'YWZkNmM1NGExZmMwNGI1NjNjOTg1YzhmZmMyNDAwOTRlMGY4NzVkMzp7InNyb2xlIjpudWxsLCJzdW5tIjpudWxsfQ==', '2020-02-01 11:55:04.494821');

-- --------------------------------------------------------

--
-- Table structure for table `findus_register`
--

CREATE TABLE `findus_register` (
  `regid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `dt` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `findus_register`
--

INSERT INTO `findus_register` (`regid`, `name`, `username`, `password`, `address`, `mobile`, `city`, `gender`, `status`, `role`, `dt`) VALUES
(2, 'Admin', 'admin@gmail.com', '123', 'ujjain', '9876543', 'Ujjain', 'female', 1, 'admin', '04/01/2020-10:42:41'),
(6, 'Hssain', 'husain.hm78653@gmail.com', '12345', 'indore mp', '9700753000', 'Indore', 'male', 0, 'user', '17/01/2020-11:47:06'),
(7, 'vilekh', 'adawadkarvilekh@gmail.com', '123', 'rambagh indore mp', '9752155505', 'Indore', 'male', 1, 'user', '18/01/2020-11:07:32'),
(8, 'Vivek', 'vivek', '', 'indore', '8226066001', 'Indore', 'male', 0, 'user', '23/01/2020-08:28:42'),
(9, 'sher', 'vstarlord999@gmail.com', '123', 'Indore', '7987002257', 'Indore', 'male', 0, 'user', '23/01/2020-08:28:42'),
(10, 'faizal', 'faizalkhanfr@gmail.com', '12345', 'bhopal', '9907447143', 'Bhopal', 'male', 1, 'user', '24/01/2020-11:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_addcat`
--

CREATE TABLE `myadmin_addcat` (
  `catid` int(11) NOT NULL,
  `catnm` varchar(50) NOT NULL,
  `caticonnm` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myadmin_addcat`
--

INSERT INTO `myadmin_addcat` (`catid`, `catnm`, `caticonnm`) VALUES
(1, 'Hotels', '-0b8jwt1_hotel.jpeg'),
(2, 'Hospitals', '8e5efu4-_chemist.jpeg'),
(3, 'Entertainment', '9er54tyb_en.png'),
(4, 'Education', 'ead28h17_edu.png'),
(5, 'check', 'c9ebpawd_picon.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_addsubcat`
--

CREATE TABLE `myadmin_addsubcat` (
  `subcatid` int(11) NOT NULL,
  `catnm` varchar(50) NOT NULL,
  `subcatnm` varchar(50) NOT NULL,
  `subcaticonnm` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myadmin_addsubcat`
--

INSERT INTO `myadmin_addsubcat` (`subcatid`, `catnm`, `subcatnm`, `subcaticonnm`) VALUES
(1, 'Hotels', 'Restaurant', 'bg.jpeg'),
(2, 'Hotels', 'Pub', 'chinese.jpeg'),
(3, 'Entertainment', 'Gamingzones', 'img14.jpeg'),
(4, 'Education', 'College', 'mypic.png'),
(5, 'Education', 'Schools', 'logo3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user_locality`
--

CREATE TABLE `user_locality` (
  `localityid` int(11) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `localityname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_locality`
--

INSERT INTO `user_locality` (`localityid`, `cityname`, `localityname`) VALUES
(1, 'Indore', 'Vijay Nagar'),
(2, 'Indore', 'Palasia'),
(3, 'Indore', 'Rambagh'),
(4, 'Ujjain', 'Freeganj'),
(5, 'Dewas', 'Vikas Nagar');

-- --------------------------------------------------------

--
-- Table structure for table `user_location`
--

CREATE TABLE `user_location` (
  `locationid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `file1` varchar(500) NOT NULL,
  `file2` varchar(500) NOT NULL,
  `file3` varchar(500) NOT NULL,
  `file4` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_location`
--

INSERT INTO `user_location` (`locationid`, `title`, `category`, `subcategory`, `description`, `file1`, `file2`, `file3`, `file4`, `address`, `state`, `city`, `locality`, `status`, `uid`) VALUES
(1, 'Little mounk', 'Hotels', 'Restaurant', 'world class restaurant', 'simbha.jpeg', 'logo.png', 'logo3_9r6X1eV.jpeg', 'logo.png', 'Near MR-10 indore', 'Madhya Pradesh', 'Indore', 'Vijay Nagar', 1, 'adawadkarvilekh@gmail.com'),
(2, 'GK', 'Hotels', 'Restaurant', 'Restaurant with world class aminities', 'mypic_r4TXRAu.png', 'logo.png', 'logo.png', 'logo.png', 'new dewas bus stand', 'Madhya Pradesh', 'Dewas', 'Vikas Nagar', 0, 'adawadkarvilekh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `txnid` int(11) NOT NULL,
  `locationid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `dt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_payment`
--

INSERT INTO `user_payment` (`txnid`, `locationid`, `uid`, `price`, `dt`) VALUES
(1, 1, 'adawadkarvilekh@gmail.com', '250', '16/01/2020-11:54:22');

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
-- Indexes for table `findus_register`
--
ALTER TABLE `findus_register`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `myadmin_addcat`
--
ALTER TABLE `myadmin_addcat`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `myadmin_addsubcat`
--
ALTER TABLE `myadmin_addsubcat`
  ADD PRIMARY KEY (`subcatid`);

--
-- Indexes for table `user_locality`
--
ALTER TABLE `user_locality`
  ADD PRIMARY KEY (`localityid`);

--
-- Indexes for table `user_location`
--
ALTER TABLE `user_location`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`txnid`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `findus_register`
--
ALTER TABLE `findus_register`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `myadmin_addcat`
--
ALTER TABLE `myadmin_addcat`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `myadmin_addsubcat`
--
ALTER TABLE `myadmin_addsubcat`
  MODIFY `subcatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_locality`
--
ALTER TABLE `user_locality`
  MODIFY `localityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_location`
--
ALTER TABLE `user_location`
  MODIFY `locationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `txnid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
