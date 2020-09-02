-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2020 at 12:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adonis`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(3, '1503248427885_user', 1, '2020-08-31 19:39:41'),
(4, '1503248427886_token', 1, '2020-08-31 19:39:41'),
(10, '1598961383455_anasayfa_schema', 2, '2020-09-01 13:04:06'),
(11, '1598991329808_fiyatlar_schema', 3, '2020-09-01 20:17:21'),
(12, '1599037954540_referanslar_schema', 4, '2020-09-02 09:15:23'),
(13, '1599039668671_ekibimiz_schema', 5, '2020-09-02 09:41:53'),
(14, '1599041108751_ayarlar_schema', 6, '2020-09-02 10:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `anasayfas`
--

CREATE TABLE `anasayfas` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slider_aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `slider_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `hakkimizda_baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `hakkimizda_aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `hakkimizda_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `anasayfas`
--

INSERT INTO `anasayfas` (`id`, `slider_baslik`, `slider_aciklama`, `slider_resim`, `hakkimizda_baslik`, `hakkimizda_aciklama`, `hakkimizda_resim`, `created_at`, `updated_at`) VALUES
(1, 'Hayalinizdeki Stil Sizleri Bekliyor', 'Lorem ipsum dolor sit amet elit. Phasell nec pretum mi. Curabi ornare velit non. Aliqua metus tortor auctor quis sem.', '1598985190731.png', '25 Years Experience', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.', '1598990219003.jpeg', '2020-09-01 16:06:36', '2020-09-01 22:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `ayarlars`
--

CREATE TABLE `ayarlars` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `keyword` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `open_time` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `open_description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ayarlars`
--

INSERT INTO `ayarlars` (`id`, `title`, `keyword`, `description`, `phone`, `open_time`, `open_description`, `adress`, `mail`, `twitter`, `facebook`, `instagram`, `youtube`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Berber Script', 'Berber Script Keyword', 'Berber Script Açıklama', '05555555555', '8:00 - 9:00', 'Açık Pazartesi - Cuma', '123 Street, New York, USA', 'info@mail.com', '#', 'a', '#', '#', '1599042259805.png', '2020-09-02 13:08:41', '2020-09-02 13:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `ekibimizs`
--

CREATE TABLE `ekibimizs` (
  `id` int(10) UNSIGNED NOT NULL,
  `isim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `pozisyon` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ekibimizs`
--

INSERT INTO `ekibimizs` (`id`, `isim`, `pozisyon`, `resim`, `created_at`, `updated_at`) VALUES
(1, 'Onur Evren', 'Saç Boya Uzmanı', '1599040046568.jpeg', '2020-09-02 12:47:26', '2020-09-02 12:47:26'),
(2, 'Evren Onur', 'Berber', '1599040060672.jpeg', '2020-09-02 12:47:40', '2020-09-02 12:47:40'),
(3, 'Jack Donalds', 'Sakal Uzmanı', '1599040089356.jpeg', '2020-09-02 12:48:09', '2020-09-02 12:48:09'),
(4, 'Michel Donalds', 'Usta Berber', '1599040121913.jpeg', '2020-09-02 12:48:41', '2020-09-02 12:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `fiyatlars`
--

CREATE TABLE `fiyatlars` (
  `id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat_resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `fiyatlars`
--

INSERT INTO `fiyatlars` (`id`, `baslik`, `fiyat`, `fiyat_resim`, `created_at`, `updated_at`) VALUES
(3, 'Saç Kesimi', '10', '1599036024688.jpeg', '2020-09-02 11:40:24', '2020-09-02 11:40:24'),
(4, 'Sakal Kesimi', '12', '1599036039045.jpeg', '2020-09-02 11:40:39', '2020-09-02 11:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `referanslars`
--

CREATE TABLE `referanslars` (
  `id` int(10) UNSIGNED NOT NULL,
  `isim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `referanslars`
--

INSERT INTO `referanslars` (`id`, `isim`, `aciklama`, `resim`, `created_at`, `updated_at`) VALUES
(2, 'Onur Evren', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut mollis mauris. Vivamus egestas eleifend dui ac consequat. Fusce venenatis at lectus in malesuada. Suspendisse sit amet dolor et odio varius mattis.	', '1599039337855.jpeg', '2020-09-02 12:35:37', '2020-09-02 12:35:37'),
(3, 'Onur Evren', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut mollis mauris. Vivamus egestas eleifend   dui ac consequat. Fusce venenatis at lectus in malesuada. Suspendisse sit amet dolor et odio varius mattis. ', '1599039547793.jpeg', '2020-09-02 12:39:07', '2020-09-02 12:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `type` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `is_revoked` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(254) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2a$10$ILf7F4VCWrBo4bXdeE1rwejaezL6xdh4Rv27Qx6DArlxOHgvtg5ES', '2020-08-31 22:46:29', '2020-08-31 22:46:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anasayfas`
--
ALTER TABLE `anasayfas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ayarlars`
--
ALTER TABLE `ayarlars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekibimizs`
--
ALTER TABLE `ekibimizs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiyatlars`
--
ALTER TABLE `fiyatlars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referanslars`
--
ALTER TABLE `referanslars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `anasayfas`
--
ALTER TABLE `anasayfas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ayarlars`
--
ALTER TABLE `ayarlars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ekibimizs`
--
ALTER TABLE `ekibimizs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fiyatlars`
--
ALTER TABLE `fiyatlars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `referanslars`
--
ALTER TABLE `referanslars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
