-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 08:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group4_onlinebookstore`
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
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add cart book', 8, 'add_cartbook'),
(30, 'Can change cart book', 8, 'change_cartbook'),
(31, 'Can delete cart book', 8, 'delete_cartbook'),
(32, 'Can view cart book', 8, 'view_cartbook'),
(33, 'Can add shipping', 9, 'add_shipping'),
(34, 'Can change shipping', 9, 'change_shipping'),
(35, 'Can delete shipping', 9, 'delete_shipping'),
(36, 'Can view shipping', 9, 'view_shipping'),
(37, 'Can add shipping address', 10, 'add_shippingaddress'),
(38, 'Can change shipping address', 10, 'change_shippingaddress'),
(39, 'Can delete shipping address', 10, 'delete_shippingaddress'),
(40, 'Can view shipping address', 10, 'view_shippingaddress'),
(41, 'Can add book', 11, 'add_book'),
(42, 'Can change book', 11, 'change_book'),
(43, 'Can delete book', 11, 'delete_book'),
(44, 'Can view book', 11, 'view_book'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add place order', 14, 'add_placeorder'),
(54, 'Can change place order', 14, 'change_placeorder'),
(55, 'Can delete place order', 14, 'delete_placeorder'),
(56, 'Can view place order', 14, 'view_placeorder'),
(57, 'Can add order book', 15, 'add_orderbook'),
(58, 'Can change order book', 15, 'change_orderbook'),
(59, 'Can delete order book', 15, 'delete_orderbook'),
(60, 'Can view order book', 15, 'view_orderbook');

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
(1, 'pbkdf2_sha256$600000$olcPJKfovDmWaOyUYD3dTz$BGi9oYLP80vvVQbyrzAaMTfa8hbNV7pzR8wRlnEPke0=', '2023-10-03 13:38:48.165266', 1, 'admin', '', '', 'ashleymoriah.lazaraga@cit.edu', 1, 1, '2023-10-03 13:38:26.127201');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_book`
--

CREATE TABLE `book_book` (
  `book_ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publication_Date` date NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `page_Count` int(10) UNSIGNED NOT NULL CHECK (`page_Count` >= 0),
  `price` double NOT NULL,
  `cover_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_book`
--

INSERT INTO `book_book` (`book_ID`, `title`, `author`, `publication_Date`, `publisher`, `language`, `page_Count`, `price`, `cover_Type`) VALUES
(1, 'Little Women', 'Louisa Alcott', '2023-07-27', 'I Don\'t Know', 'English', 100, 500, 'Hard');

-- --------------------------------------------------------

--
-- Table structure for table `cart_cart`
--

CREATE TABLE `cart_cart` (
  `cart_ID` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_cart`
--

INSERT INTO `cart_cart` (`cart_ID`, `customer_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_cartbook`
--

CREATE TABLE `cart_cartbook` (
  `id` bigint(20) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_cartbook`
--

INSERT INTO `cart_cartbook` (`id`, `cart_id`, `book_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_cart_books`
--

CREATE TABLE `cart_cart_books` (
  `id` bigint(20) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_cart_books`
--

INSERT INTO `cart_cart_books` (`id`, `cart_id`, `book_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(254) NOT NULL,
  `accountStatus` tinyint(1) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` int(11) NOT NULL,
  `shippingAddress_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_user`
--

INSERT INTO `customer_user` (`user_ID`, `username`, `password`, `firstName`, `lastName`, `emailAddress`, `accountStatus`, `dateOfBirth`, `gender`, `shippingAddress_id`) VALUES
(1, 'ash', 'ashmor', 'Ashley', 'Lazaraga', 'ashley.lazaraga@gmail.com', 1, '2000-07-27', 0, 1);

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
(1, '2023-10-04 06:45:59.322358', '1', 'Little Women', 1, '[{\"added\": {}}]', 11, 1),
(2, '2023-10-04 06:46:04.909413', '1', 'Little Women', 2, '[]', 11, 1),
(3, '2023-10-04 06:47:09.982887', '1', 'Somewhere over the rainbow', 1, '[{\"added\": {}}]', 10, 1),
(4, '2023-10-04 06:47:34.054477', '1', 'ash', 1, '[{\"added\": {}}]', 12, 1),
(5, '2023-10-04 06:48:27.153524', '1', 'Cart object (1)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-10-04 06:48:31.710225', '1', 'Little Women', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-10-04 06:49:54.206786', '1', 'Order object (1)', 1, '[{\"added\": {}}]', 13, 1),
(8, '2023-10-04 06:49:58.332892', '1', 'OrderBook object (1)', 1, '[{\"added\": {}}]', 15, 1),
(9, '2023-10-04 06:50:07.330423', '1', 'Order object (1)', 2, '[]', 13, 1),
(10, '2023-10-04 06:50:19.262423', '1', 'PlaceOrder object (1)', 1, '[{\"added\": {}}]', 14, 1);

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
(11, 'Book', 'book'),
(7, 'Cart', 'cart'),
(8, 'Cart', 'cartbook'),
(5, 'contenttypes', 'contenttype'),
(12, 'Customer', 'user'),
(13, 'Order', 'order'),
(15, 'Order', 'orderbook'),
(14, 'Order', 'placeorder'),
(6, 'sessions', 'session'),
(9, 'Shipping', 'shipping'),
(10, 'Shipping', 'shippingaddress');

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
(1, 'contenttypes', '0001_initial', '2023-10-03 07:33:49.750432'),
(2, 'auth', '0001_initial', '2023-10-03 07:33:50.295227'),
(3, 'admin', '0001_initial', '2023-10-03 07:33:50.452071'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-03 07:33:50.467747'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-03 07:33:50.467747'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-03 07:33:50.546296'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-03 07:33:50.593316'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-03 07:33:50.624685'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-03 07:33:50.624685'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-03 07:33:50.679097'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-03 07:33:50.690714'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-03 07:33:50.710873'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-03 07:33:50.726601'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-03 07:33:50.757858'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-03 07:33:50.790725'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-03 07:33:50.806191'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-03 07:33:50.821296'),
(18, 'sessions', '0001_initial', '2023-10-03 07:33:50.868288'),
(19, 'Cart', '0001_initial', '2023-10-03 07:35:37.265023'),
(20, 'Book', '0001_initial', '2023-10-04 03:31:09.928977'),
(21, 'Shipping', '0001_initial', '2023-10-04 03:31:10.046536'),
(22, 'Customer', '0001_initial', '2023-10-04 04:03:55.120902'),
(23, 'Cart', '0002_cartbook_book', '2023-10-04 04:03:55.217160'),
(24, 'Cart', '0003_cart_customer', '2023-10-04 04:03:55.303797'),
(25, 'Book', '0002_alter_book_book_id', '2023-10-04 06:20:25.663410'),
(26, 'Cart', '0004_cart_books_alter_cart_cart_id', '2023-10-04 06:20:26.746117'),
(27, 'Customer', '0002_user_accountstatus_user_dateofbirth_user_gender_and_more', '2023-10-04 06:20:27.828758'),
(28, 'Order', '0001_initial', '2023-10-04 06:20:28.641719'),
(29, 'Shipping', '0002_shipping_order_alter_shipping_shipping_id_and_more', '2023-10-04 06:20:29.802255');

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
('eskbq9zo194turp97zd8h3pdk7p2fc26', '.eJxVjDsOwjAQBe_iGlne9S9Q0ucM1q4_OIAcKU4qxN0hUgpo38y8lwi0rTVsPS9hSuIiQJx-N6b4yG0H6U7tNss4t3WZWO6KPGiX45zy83q4fweVev3W3iko3pCxhIQDa0WRrQP2cI4ZLSZNhAyslIoIgwWdXLKuFGLt0Yj3B8-vN24:1qnfbs:NP6GNE2KS0cib7o7HtuUpfG4u-HGrtpUuDT7m2D-z1k', '2023-10-17 13:38:48.170836');

-- --------------------------------------------------------

--
-- Table structure for table `order_order`
--

CREATE TABLE `order_order` (
  `order_ID` int(11) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `total_price_order` double NOT NULL,
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_order`
--

INSERT INTO `order_order` (`order_ID`, `order_date`, `total_price_order`, `cart_id`, `user_id`) VALUES
(1, '2023-10-04 06:49:26.000000', 500, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_orderbook`
--

CREATE TABLE `order_orderbook` (
  `id` bigint(20) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_orderbook`
--

INSERT INTO `order_orderbook` (`id`, `book_id`, `order_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_order_books`
--

CREATE TABLE `order_order_books` (
  `id` bigint(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_order_books`
--

INSERT INTO `order_order_books` (`id`, `order_id`, `book_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_placeorder`
--

CREATE TABLE `order_placeorder` (
  `id` bigint(20) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_placeorder`
--

INSERT INTO `order_placeorder` (`id`, `cart_id`, `user_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_shipping`
--

CREATE TABLE `shipping_shipping` (
  `Shipping_ID` int(11) NOT NULL,
  `Subtotal` decimal(6,2) NOT NULL,
  `ShippingAddress_id` int(11) NOT NULL,
  `Order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_shippingaddress`
--

CREATE TABLE `shipping_shippingaddress` (
  `ShippingAddress_ID` int(11) NOT NULL,
  `ShippingAddress` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_shippingaddress`
--

INSERT INTO `shipping_shippingaddress` (`ShippingAddress_ID`, `ShippingAddress`) VALUES
(1, 'Somewhere over the rainbow');

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
-- Indexes for table `book_book`
--
ALTER TABLE `book_book`
  ADD PRIMARY KEY (`book_ID`);

--
-- Indexes for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD PRIMARY KEY (`cart_ID`),
  ADD KEY `Cart_cart_customer_id_46f86f26_fk` (`customer_id`);

--
-- Indexes for table `cart_cartbook`
--
ALTER TABLE `cart_cartbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Cart_cartbook_cart_id_08da9800_fk_Cart_cart_cart_ID` (`cart_id`),
  ADD KEY `Cart_cartbook_book_id_6de7f489_fk` (`book_id`);

--
-- Indexes for table `cart_cart_books`
--
ALTER TABLE `cart_cart_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Cart_cart_books_cart_id_book_id_b23c2400_uniq` (`cart_id`,`book_id`),
  ADD KEY `Cart_cart_books_book_id_a73a533e_fk_Book_book_book_ID` (`book_id`);

--
-- Indexes for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD PRIMARY KEY (`user_ID`),
  ADD KEY `Customer_user_shippingAddress_id_f868f2c1_fk` (`shippingAddress_id`);

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
-- Indexes for table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `Order_order_cart_id_652852ea_fk_Cart_cart_cart_ID` (`cart_id`),
  ADD KEY `Order_order_user_id_de1a5bf6_fk_Customer_user_user_ID` (`user_id`);

--
-- Indexes for table `order_orderbook`
--
ALTER TABLE `order_orderbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_orderbook_book_id_ecd0c7ae_fk_Book_book_book_ID` (`book_id`),
  ADD KEY `Order_orderbook_order_id_9194938d_fk_Order_order_order_ID` (`order_id`);

--
-- Indexes for table `order_order_books`
--
ALTER TABLE `order_order_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Order_order_books_order_id_book_id_255ea269_uniq` (`order_id`,`book_id`),
  ADD KEY `Order_order_books_book_id_60dd5c95_fk_Book_book_book_ID` (`book_id`);

--
-- Indexes for table `order_placeorder`
--
ALTER TABLE `order_placeorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_placeorder_cart_id_b1da4b09_fk_Cart_cart_cart_ID` (`cart_id`),
  ADD KEY `Order_placeorder_user_id_777560b1_fk_Customer_user_user_ID` (`user_id`);

--
-- Indexes for table `shipping_shipping`
--
ALTER TABLE `shipping_shipping`
  ADD PRIMARY KEY (`Shipping_ID`),
  ADD KEY `Shipping_shipping_Order_id_03d7c14c_fk_Order_order_order_ID` (`Order_id`),
  ADD KEY `Shipping_shipping_ShippingAddress_id_39fa0afc_fk` (`ShippingAddress_id`);

--
-- Indexes for table `shipping_shippingaddress`
--
ALTER TABLE `shipping_shippingaddress`
  ADD PRIMARY KEY (`ShippingAddress_ID`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
-- AUTO_INCREMENT for table `book_book`
--
ALTER TABLE `book_book`
  MODIFY `book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_cart`
--
ALTER TABLE `cart_cart`
  MODIFY `cart_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_cartbook`
--
ALTER TABLE `cart_cartbook`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_cart_books`
--
ALTER TABLE `cart_cart_books`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_order`
--
ALTER TABLE `order_order`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_orderbook`
--
ALTER TABLE `order_orderbook`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_order_books`
--
ALTER TABLE `order_order_books`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_placeorder`
--
ALTER TABLE `order_placeorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_shipping`
--
ALTER TABLE `shipping_shipping`
  MODIFY `Shipping_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_shippingaddress`
--
ALTER TABLE `shipping_shippingaddress`
  MODIFY `ShippingAddress_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD CONSTRAINT `Cart_cart_customer_id_46f86f26_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer_user` (`user_ID`);

--
-- Constraints for table `cart_cartbook`
--
ALTER TABLE `cart_cartbook`
  ADD CONSTRAINT `Cart_cartbook_book_id_6de7f489_fk` FOREIGN KEY (`book_id`) REFERENCES `book_book` (`book_ID`),
  ADD CONSTRAINT `Cart_cartbook_cart_id_08da9800_fk` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`cart_ID`);

--
-- Constraints for table `cart_cart_books`
--
ALTER TABLE `cart_cart_books`
  ADD CONSTRAINT `Cart_cart_books_book_id_a73a533e_fk_Book_book_book_ID` FOREIGN KEY (`book_id`) REFERENCES `book_book` (`book_ID`),
  ADD CONSTRAINT `Cart_cart_books_cart_id_f4fe8be5_fk` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`cart_ID`),
  ADD CONSTRAINT `Cart_cart_books_cart_id_f4fe8be5_fk_Cart_cart_cart_ID` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`cart_ID`);

--
-- Constraints for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD CONSTRAINT `Customer_user_shippingAddress_id_f868f2c1_fk` FOREIGN KEY (`shippingAddress_id`) REFERENCES `shipping_shippingaddress` (`ShippingAddress_ID`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order_order`
--
ALTER TABLE `order_order`
  ADD CONSTRAINT `Order_order_cart_id_652852ea_fk_Cart_cart_cart_ID` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`cart_ID`),
  ADD CONSTRAINT `Order_order_user_id_de1a5bf6_fk_Customer_user_user_ID` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`user_ID`);

--
-- Constraints for table `order_orderbook`
--
ALTER TABLE `order_orderbook`
  ADD CONSTRAINT `Order_orderbook_book_id_ecd0c7ae_fk_Book_book_book_ID` FOREIGN KEY (`book_id`) REFERENCES `book_book` (`book_ID`),
  ADD CONSTRAINT `Order_orderbook_order_id_9194938d_fk_Order_order_order_ID` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`order_ID`);

--
-- Constraints for table `order_order_books`
--
ALTER TABLE `order_order_books`
  ADD CONSTRAINT `Order_order_books_book_id_60dd5c95_fk_Book_book_book_ID` FOREIGN KEY (`book_id`) REFERENCES `book_book` (`book_ID`),
  ADD CONSTRAINT `Order_order_books_order_id_661ea47b_fk_Order_order_order_ID` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`order_ID`);

--
-- Constraints for table `order_placeorder`
--
ALTER TABLE `order_placeorder`
  ADD CONSTRAINT `Order_placeorder_cart_id_b1da4b09_fk_Cart_cart_cart_ID` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`cart_ID`),
  ADD CONSTRAINT `Order_placeorder_user_id_777560b1_fk_Customer_user_user_ID` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`user_ID`);

--
-- Constraints for table `shipping_shipping`
--
ALTER TABLE `shipping_shipping`
  ADD CONSTRAINT `Shipping_shipping_Order_id_03d7c14c_fk_Order_order_order_ID` FOREIGN KEY (`Order_id`) REFERENCES `order_order` (`order_ID`),
  ADD CONSTRAINT `Shipping_shipping_ShippingAddress_id_39fa0afc_fk` FOREIGN KEY (`ShippingAddress_id`) REFERENCES `shipping_shippingaddress` (`ShippingAddress_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
