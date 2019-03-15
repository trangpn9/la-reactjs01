-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2018 at 11:35 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_la_reactjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Owen Towne', 'huels.estel@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'O2EG0KS7rJ', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(2, 'Caroline Olson', 'sofia.veum@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '83WWggvXuk', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(3, 'Julie Mann', 'guadalupe.beahan@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QuYzoGSq8a', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(4, 'Maryam Zulauf', 'heathcote.thea@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Q7V3xWuI1O', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(5, 'Gunnar Schamberger', 'flavio26@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '963PuFBtnI', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(6, 'Angeline Hickle', 'hermann.luciano@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lpMSWNWye1', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(7, 'Mr. Timothy Jerde', 'flatley.rebeca@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't3gUPK2DGv', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(8, 'Dusty Parisian III', 'azulauf@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'djjrwYVcVn', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(9, 'Alivia Weimann', 'hansen.neil@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D3qPNEjF0Z', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(10, 'Forrest Swaniawski', 'mustafa56@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9ve26Mmxbk', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(11, 'Lonnie Nolan', 'lucienne84@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dHZXI3mUqH', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(12, 'Agnes Morissette', 'cheller@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NC72RNZb2H', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(13, 'Dr. Mossie Feest', 'koepp.sonny@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4XYG3bzsDi', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(14, 'Mrs. Rachel Corkery', 'leffler.ardella@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8YKwC2PtF2', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(15, 'Shanel Lubowitz', 'jacky31@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5rzStt2ZoU', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(16, 'Adolph Jast', 'elias13@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AAuUI0o65S', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(17, 'Makenzie McGlynn', 'imogene31@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eSBEtvDHnC', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(18, 'Thomas Lakin Jr.', 'doyle.sherwood@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jaXoWzBygX', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(19, 'Marquis Green', 'daniel.elda@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vxjG20Kzx6', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(20, 'Fritz Smitham Jr.', 'hudson.kassandra@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xM6p5jA0uk', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(21, 'Prof. Monserrate Kihn PhD', 'armstrong.alyce@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mysv747EnB', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(22, 'Prof. Maya Bernier II', 'laurel67@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9RkH9fBasO', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(23, 'Osbaldo Heathcote', 'yschmidt@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SDJ8kpY6F2', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(24, 'Clare Williamson DDS', 'bryon.bogan@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qDGz1cm001', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(25, 'Kaycee Gulgowski I', 'hollie98@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Lf3ajzZQav', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(26, 'Ali Hickle', 'jaime.little@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dNKk0zMlpJ', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(27, 'Lauren Rodriguez', 'hyatt.luciano@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TLHaP6ZOp2', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(28, 'Kayleigh Thompson Jr.', 'christiansen.arjun@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Bga4yoqwbC', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(29, 'Arthur Grant DDS', 'mweissnat@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gEwOT9ELP9', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(30, 'Prof. Alexys White I', 'kailyn66@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fBDm68bXqs', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(31, 'Nova Torp', 'beatty.alessandra@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OJqVLxFoay', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(32, 'Vidal Mitchell Sr.', 'brodriguez@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'L7zzBhMCrb', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(33, 'Carolyne Schulist II', 'kassulke.unique@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uKbrtQiFn3', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(34, 'Miss Carlotta Borer', 'cmcclure@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UO2okJHE6q', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(35, 'Josue Ruecker', 'ukuhlman@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EHQZPggvTC', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(36, 'Elinore Mosciski', 'libbie.anderson@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Erl90XuJEL', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(37, 'Maci O\'Hara DVM', 'grimes.heather@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KZHgWXiRxx', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(38, 'Mr. Terrence Corwin III', 'clement19@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Cj9VelAQR8', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(39, 'Marc Johns MD', 'rex09@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'v0o0jBuJru', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(40, 'Jayde Miller Sr.', 'dahlia.pollich@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't6bjfmrupT', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(41, 'Prof. Amanda Ward III', 'alejandrin17@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jJbHGZhncB', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(42, 'Maximo Gleason DVM', 'alessandro.langworth@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Cw2Iz1bqOy', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(43, 'Ivory Bernhard', 'eda79@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QTT9eKpYhG', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(44, 'Jarvis Wunsch', 'hilma.ruecker@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OkqqGJR8ca', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(45, 'Rylee Hayes', 'kiehn.pierre@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tRHRR87i69', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(46, 'Toney Wuckert', 'leonie.gorczany@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'v15VUrVRoc', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(47, 'Susie Williamson', 'evans64@example.net', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zpGO1s6sHg', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(48, 'Cedrick Jacobs', 'daniela03@example.org', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NyHS5SHYbv', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(49, 'Tabitha Sawayn', 'thalia.goldner@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FClBLveOaI', '2018-12-23 09:13:56', '2018-12-23 09:13:56'),
(50, 'Ms. Wilhelmine Morar IV', 'mcglynn.savanna@example.com', '2018-12-23 09:13:56', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IXQGCwJwYw', '2018-12-23 09:13:56', '2018-12-23 09:13:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
