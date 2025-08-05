-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 28 sep. 2021 à 23:53
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blooddonation`
--

-- --------------------------------------------------------

--
-- Structure de la table `associations`
--

CREATE TABLE `associations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `caravan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `association_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bloodType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `blood_requests`
--

INSERT INTO `blood_requests` (`id`, `user_id`, `caravan_id`, `association_id`, `bloodType`, `city`, `address`, `description`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, 'AB+', 'Fès', 'Lycée Ibn Hazem, Avenue des Sports, Dar Dbibagh, Agdal, arrondissement d\'Agdal, Fès, Pachalik du Fes, Préfecture de Fès, Fès-Meknès, 30013, Maroc', 'bonjour š il vous plaît mon frere a fait une accident et il est en besoin du sang de type AB+ veuillez nous aider et merci', '2021-06-12 00:00:00', '2021-05-01 00:00:00', '2021-05-07 18:31:37'),
(2, 1, NULL, NULL, 'A+', 'Fès', 'Dar Dbibagh, Agdal, arrondissement d\'Agdal, Fès, Pachalik du Fes,', 'La Journée mondiale du donneur de sang est une journée internationale organisée chaque 14 juin par l\'Organisation mondiale de la', '2021-05-12 00:00:00', '2021-05-07 18:42:09', '2021-05-07 18:42:09'),
(3, 1, NULL, NULL, 'O-', 'Casablanca', 'El Mariniyine, arrondissement d\'El Mariniyine, Fès, Pachalik du Fes,', 'bonjour š il vous plaît mon frere a fait une accident et il est en besoin du sang de type AB+ veuillez nous aider et merci bonjour š il vous plaît mon frere a fait une accident et il est en besoin du sang de type AB+ veuillez nous aider et merci', '2021-05-12 00:00:00', '2021-05-07 19:01:41', '2021-05-07 19:01:41'),
(4, 3, NULL, NULL, 'O+', 'Fès', 'El Mariniyine, arrondissement d\'El Mariniyine, Fès', 'bonjour š il vous plaît mon frere a fait une accident et il est en besoin du sang de type AB+ veuillez nous aider et merci', '2021-05-08 00:00:00', '2021-05-07 19:08:36', '2021-05-07 19:08:36'),
(5, 1, NULL, NULL, 'AB-', 'meknes', 'RUE 14 HAY OUED FES RESIDENCE PARIS 41 APP2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis repellendus molestias rerum, minima totam veritatis est odio cum! Nam corrupti doloribus vitae fugiat magnam perspiciatis exercitationem consequuntur culpa. Consectetur, minima.', '2021-06-11 00:00:00', '2021-05-10 13:15:14', '2021-05-10 13:15:14'),
(6, 3, NULL, NULL, 'AB+', 'Fès', 'RUE 14 HAY OUED FES RESIDENCE PARIS 41 APP2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis repellendus molestias rerum, minima totam veritatis est odio cum! Nam corrupti doloribus vitae fugiat magnam perspiciatis exercitationem consequuntur culpa. Consectetur, minima.', '2021-06-01 00:00:00', '2021-05-10 13:15:14', '2021-05-10 13:15:14'),
(7, 2, NULL, NULL, 'B-', 'meknes', 'RUE 14 HAY OUED FES RESIDENCE PARIS 41 APP2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis repellendus molestias rerum, minima totam veritatis est odio cum! Nam corrupti doloribus vitae fugiat magnam perspiciatis exercitationem consequuntur culpa. Consectetur, minima.', '2021-05-21 00:00:00', '2021-05-09 13:15:14', '2021-05-09 13:15:14'),
(8, 3, NULL, NULL, 'B+', 'meknes', 'RUE 14 HAY OUED FES RESIDENCE PARIS 41 APP2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis repellendus molestias rerum, minima totam veritatis est odio cum! Nam corrupti doloribus vitae fugiat magnam perspiciatis exercitationem consequuntur culpa. Consectetur, minima.', '2021-05-19 00:00:00', '2021-05-09 13:15:14', '2021-05-09 13:15:14'),
(9, 1, NULL, NULL, 'O-', 'casablanca', 'Hay Atlas, arrondissement d\'Agdal, Pachalik du Fes, Préfecture de casa, casa-rabat, 30300, Maroc', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis repellendus molestias rerum, minima totam veritatis est odio cum! Nam corrupti doloribus vitae fugiat magnam perspiciatis exercitationem consequuntur culpa. Consectetur, minima.', '2021-05-23 00:00:00', '2021-05-10 13:15:49', '2021-05-10 13:15:49'),
(10, 6, NULL, NULL, 'AB+', 'casablanca', 'Hay Atlas, arrondissement d\'Agdal, Pachalik du Fes, Préfecture de casa, casa-rabat, 30003, Maroc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2021-10-01 00:00:00', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(12, 15, NULL, NULL, 'AB+', 'casablanca', 'arrondissement de Saiss, Pachalik du Fes, Préfecture de Fès, Fès-Meknès, 20030, Maroc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua.', '2021-12-12 00:00:00', '2021-09-28 12:32:26', '2021-09-28 12:32:26'),
(13, 17, NULL, NULL, 'B-', 'casablanca', 'arrondissement de Saiss, Pachalik du Fes, Préfecture de Fès, Fès-Meknès, 30035, Maroc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', '2021-12-12 00:00:00', '2021-09-28 13:27:26', '2021-09-28 13:27:26');

-- --------------------------------------------------------

--
-- Structure de la table `caravans`
--

CREATE TABLE `caravans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currentPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latestPosition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staringTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endingTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `caravans`
--

INSERT INTO `caravans` (`id`, `user_id`, `currentPosition`, `latestPosition`, `city`, `staringTime`, `endingTime`, `created_at`, `updated_at`) VALUES
(1, 2, 'fes', 'fes', 'fes', '08:30', '16:00', '2021-05-07 00:00:00', '2021-05-07 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blood_request_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conversations`
--

INSERT INTO `conversations` (`id`, `blood_request_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 12, 6, '2021-09-28 12:33:23', '2021-09-28 12:33:57'),
(2, 13, 6, '2021-09-28 13:28:15', '2021-09-28 13:28:46');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caravan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `association_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateEnd` date NOT NULL,
  `dateStart` date NOT NULL,
  `startsAt` time NOT NULL,
  `endsAt` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `caravan_id`, `association_id`, `title`, `description`, `city`, `address`, `dateEnd`, `dateStart`, `startsAt`, `endsAt`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'journée mondiale de don du sang', 'La Journée mondiale du donneur de sang est une journée internationale organisée chaque 14 juin par l\'Organisation mondiale de la ', 'fes', 'av chefchaouni ville nouvelle', '2021-06-15', '2021-06-12', '10:00:00', '19:00:00', '2021-05-07 00:00:00', '2021-05-08 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'bonjour yassir hamid', '2021-09-28 12:33:23', '2021-09-28 12:33:23'),
(2, 1, 15, 'uii younes je suis la', '2021-09-28 12:33:57', '2021-09-28 12:33:57'),
(3, 2, 6, 'bonjour khadija je suis younes', '2021-09-28 13:28:15', '2021-09-28 13:28:15'),
(4, 2, 17, 'uii youne je veux faire un don', '2021-09-28 13:28:46', '2021-09-28 13:28:46');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_10_102101_create_posts_table', 1),
(5, '2020_02_10_102541_create_caravans_table', 1),
(6, '2020_02_10_103056_create_associations_table', 1),
(7, '2020_02_10_103537_create_plannings_table', 1),
(8, '2020_02_10_104341_create_events_table', 1),
(9, '2020_02_17_094115_create_blood_requests_table', 1),
(10, '2020_04_05_174905_create_notifications_table', 1),
(11, '2020_04_08_142307_create_conversations_table', 1),
(12, '2020_04_08_142727_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1a90dca1-4018-42a8-b22b-6bfbae09addf', 'App\\Notifications\\MessageNotif', 'App\\User', 6, '{\"id\":4,\"message\":\"uii youne je veux faire un don\",\"sender\":17}', NULL, '2021-09-28 13:28:46', '2021-09-28 13:28:46'),
('1b035dae-e0b5-4089-9032-d4f4dccce1f7', 'App\\Notifications\\InNotif', 'App\\User', 6, '{\"id\":13,\"user_id\":17,\"sender_name\":\"khadija\",\"caravan_id\":null,\"association_id\":null,\"bloodType\":\"B-\",\"city\":\"casablanca\",\"address\":\"arrondissement de Saiss, Pachalik du Fes, Pr\\u00e9fecture de F\\u00e8s, F\\u00e8s-Mekn\\u00e8s, 30035, Maroc\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\\r\\ntempor incididunt ut labore et dolore magna aliqua\",\"deadline\":\"2021-12-12 00:00:00\",\"created_at\":\"2021-09-28T14:27:26.000000Z\",\"updated_at\":\"2021-09-28T14:27:26.000000Z\"}', '2021-09-28 13:27:51', '2021-09-28 13:27:26', '2021-09-28 13:27:51'),
('2d900afe-efc8-49c9-8b87-f5e77a170193', 'App\\Notifications\\MessageNotif', 'App\\User', 7, '{\"id\":3,\"message\":\"salam\",\"sender\":6}', NULL, '2021-09-28 09:47:31', '2021-09-28 09:47:31'),
('40e75b80-283a-4f52-bf93-22ff66d9cbc7', 'App\\Notifications\\MessageNotif', 'App\\User', 12, '{\"id\":5,\"message\":\"uiiiiiii je suis la\",\"sender\":6}', '2021-09-28 11:08:56', '2021-09-28 11:08:30', '2021-09-28 11:08:56'),
('5c48c682-5e10-4051-80c9-5e8af56d3501', 'App\\Notifications\\InNotif', 'App\\User', 7, '{\"id\":10,\"user_id\":6,\"sender_name\":\"younes filali\",\"caravan_id\":null,\"association_id\":null,\"bloodType\":\"AB+\",\"city\":\"arrondissement d\'Agdal\",\"address\":\"Hay Atlas, arrondissement d\'Agdal, Pachalik du Fes, Pr\\u00e9fecture de F\\u00e8s, F\\u00e8s-Mekn\\u00e8s, 30003, Maroc\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam\",\"deadline\":\"2021-10-01 00:00:00\",\"created_at\":\"2021-09-23T15:04:51.000000Z\",\"updated_at\":\"2021-09-23T15:04:51.000000Z\"}', '2021-09-23 14:05:14', '2021-09-23 14:04:52', '2021-09-23 14:05:14'),
('6ccba883-fb4e-4e26-8c68-b6ede5c2fe17', 'App\\Notifications\\InNotif', 'App\\User', 6, '{\"id\":12,\"user_id\":15,\"sender_name\":\"yassir hamid\",\"caravan_id\":null,\"association_id\":null,\"bloodType\":\"AB+\",\"city\":\"casablanca\",\"address\":\"arrondissement de Saiss, Pachalik du Fes, Pr\\u00e9fecture de F\\u00e8s, F\\u00e8s-Mekn\\u00e8s, 20030, Maroc\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\\r\\ntempor incididunt ut labore et dolore magna aliqua.\",\"deadline\":\"2021-12-12 00:00:00\",\"created_at\":\"2021-09-28T13:32:26.000000Z\",\"updated_at\":\"2021-09-28T13:32:26.000000Z\"}', '2021-09-28 12:32:53', '2021-09-28 12:32:28', '2021-09-28 12:32:53'),
('81ed94f8-e191-4c41-9701-1fdb7ed73bb5', 'App\\Notifications\\InNotif', 'App\\User', 7, '{\"id\":11,\"user_id\":12,\"sender_name\":\"yassirzah\",\"caravan_id\":null,\"association_id\":null,\"bloodType\":\"O+\",\"city\":\"casablanca\",\"address\":\"Aouinat el Hajjaj, Saiss, arrondissement de Saiss, Pachalik du casa\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\",\"deadline\":\"2020-05-01 00:00:00\",\"created_at\":\"2021-09-28T12:06:31.000000Z\",\"updated_at\":\"2021-09-28T12:06:31.000000Z\"}', NULL, '2021-09-28 11:06:34', '2021-09-28 11:06:34'),
('8faf90af-9302-4891-9578-b591a6388c73', 'App\\Notifications\\InNotif', 'App\\User', 6, '{\"id\":11,\"user_id\":12,\"sender_name\":\"yassirzah\",\"caravan_id\":null,\"association_id\":null,\"bloodType\":\"O+\",\"city\":\"casablanca\",\"address\":\"Aouinat el Hajjaj, Saiss, arrondissement de Saiss, Pachalik du casa\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\",\"deadline\":\"2020-05-01 00:00:00\",\"created_at\":\"2021-09-28T12:06:31.000000Z\",\"updated_at\":\"2021-09-28T12:06:31.000000Z\"}', '2021-09-28 11:07:11', '2021-09-28 11:06:34', '2021-09-28 11:07:11'),
('91d85cdf-4c1e-4bb0-aaf6-a8d56a37f3a2', 'App\\Notifications\\MessageNotif', 'App\\User', 6, '{\"id\":6,\"message\":\"gfhgfhg\",\"sender\":12}', NULL, '2021-09-28 11:08:57', '2021-09-28 11:08:57'),
('b0a9854e-61cf-4590-92ff-92f135e50152', 'App\\Notifications\\MessageNotif', 'App\\User', 6, '{\"id\":2,\"message\":\"uii younes je suis la\",\"sender\":15}', NULL, '2021-09-28 12:33:58', '2021-09-28 12:33:58');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Yassiramid1@gmail.com', '$2y$10$9dzrriKVYk0QEVnQarHPg.eZrieBwQLmTFQLgjRWP5jjIJhorQRNe', '2021-09-28 20:38:17');

-- --------------------------------------------------------

--
-- Structure de la table `plannings`
--

CREATE TABLE `plannings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latestDonation` date NOT NULL,
  `timePeriod` int(11) NOT NULL,
  `nbDons` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plannings`
--

INSERT INTO `plannings` (`id`, `latestDonation`, `timePeriod`, `nbDons`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2021-09-01', 3, 0, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caravan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `association_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `caravan_id`, `association_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'La Journée mondiale du donneur de sang est ', 'La Journée mondiale du donneur de sang est une journée internationale organisée chaque 14 juin par l\'Organisation mondiale de la santé. Elle est consacrée à la promotion et la sensibilisation du don de sang et du s.', 'https://dondesang.efs.sante.fr/sites/default/files/styles/custom_795x425/public/2018-04/Jmds_2018_795x425.png?itok=KGQD5p6x', '2021-05-08 00:00:00', '2021-05-15 00:00:00'),
(2, 1, NULL, 'La Journée mondiale du donneur de sang est ', 'La Journée mondiale du donneur de sang est une journée internationale organisée chaque 14 juin par l\'Organisation mondiale de la santé. Elle est consacrée à la promotion et la sensibilisation du don de sang et du s.', 'https://dondesang.efs.sante.fr/sites/default/files/styles/custom_795x425/public/2021-07/795x425_PassSanitaire.png?itok=NQLJ5Vdi', '2021-05-08 00:00:00', '2021-05-10 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curentCity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloodType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `curentCity`, `bloodType`, `city`, `roll`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hamid dawsi', 'hamid@mail.com', 'undefined', NULL, 'fes', 'user', NULL, 'b74f737a3383bb860c1a9f589b066241', NULL, '2021-05-07 18:22:41', '2021-05-07 18:22:41'),
(2, 'zakariae dinar', 'dinar@mail.com', 'undefined', NULL, 'fes', 'user', NULL, '$2y$10$gPpxKdhqB7T/bQ7kZsxdDuPpIgZLD1Pep/GlxHE7SOHgmcvrH7bvO', NULL, '2021-05-07 18:23:29', '2021-05-07 18:23:29'),
(3, 'amine rachidi', 'amine@mail.com', 'undefined', NULL, 'fes', 'user', NULL, '$2y$10$gPpxKdhqB7T/bQ7kZsxdDuPpIgZLD1Pep/GlxHE7SOHgmcvrH7bvO', NULL, '2021-05-07 19:07:11', '2021-05-07 19:07:11'),
(4, 'Yassir Amid', 'Yassiramid1@gmail.com', 'arrondissement d\'El Mariniyine', NULL, 'arrondissement d\'El Mariniyine', 'user', NULL, '$2y$10$NLcWkDu4Fpnvh8BlZQSKqeT4/pm37V1JlQresLYkra3mFxN9wsl8C', NULL, '2021-09-23 12:37:37', '2021-09-23 12:37:37'),
(5, 'zahir', 'zahir@mail.com', 'undefined', NULL, 'fes', 'user', NULL, '$2y$10$KDy3FOik/TVavPpSfTmH5eikx8NNLXeG.H41C2tAAGly1baoQSixi', NULL, '2021-09-23 13:03:11', '2021-09-23 13:03:11'),
(6, 'younes filali', 'younes10@gmail.com', 'casablanca', NULL, 'casablanca', 'user', NULL, '$2y$10$sYUnhDU43E0VzzTxYD0N0.iRhCDR5OMAXh8kGyHk36qLbaaD4ZEL.', NULL, '2021-09-23 14:01:34', '2021-09-23 14:01:34'),
(14, 'yassir zahir', 'yassir1998@hotmail.fr', 'arrondissement de Saiss', NULL, 'arrondissement de Saiss', 'user', NULL, '$2y$10$HNGMY/IvhAJrLobRgKIKn.i64cpPcZ90s9.33k1ZOeaFCb/c8MNnW', NULL, '2021-09-28 12:24:31', '2021-09-28 12:24:31'),
(15, 'yassir hamid', 'yassin1998@mail.com', 'arrondissement de Saiss', NULL, 'arrondissement de Saiss', 'user', NULL, '$2y$10$8Gb3bbWZGoJaze08x/IRz.CQxTDO7L5hrqB0rdaQFB0kdDnSYe0ti', NULL, '2021-09-28 12:30:49', '2021-09-28 12:30:49'),
(16, 'karima', 'karima1990@gmail.com', 'arrondissement de Saiss', NULL, 'arrondissement de Saiss', 'user', NULL, '$2y$10$TZgj4qLc6IJ2DKZIPhEUCujdFNah.GkfQxX9QPfvjsnbWq39x2/Eq', NULL, '2021-09-28 13:01:51', '2021-09-28 13:01:51'),
(17, 'khadija', 'khadija2021@mail.com', 'arrondissement de Saiss', NULL, 'arrondissement de Saiss', 'user', NULL, '$2y$10$HiS0hLyfbKWaeU9WQU7ZnuUvXY.MLyogl3hZ/oVpXywhxFYDfy5Z2', NULL, '2021-09-28 13:25:53', '2021-09-28 13:25:53');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `associations`
--
ALTER TABLE `associations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `associations_user_id_unique` (`user_id`),
  ADD KEY `associations_user_id_index` (`user_id`);

--
-- Index pour la table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_requests_caravan_id_index` (`caravan_id`),
  ADD KEY `blood_requests_association_id_index` (`association_id`),
  ADD KEY `blood_requests_user_id_index` (`user_id`);

--
-- Index pour la table `caravans`
--
ALTER TABLE `caravans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caravans_user_id_unique` (`user_id`),
  ADD KEY `caravans_user_id_index` (`user_id`);

--
-- Index pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_blood_request_id_index` (`blood_request_id`),
  ADD KEY `conversations_user_id_index` (`user_id`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_caravan_id_index` (`caravan_id`),
  ADD KEY `events_association_id_index` (`association_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_conversation_id_index` (`conversation_id`),
  ADD KEY `messages_user_id_index` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `plannings`
--
ALTER TABLE `plannings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plannings_user_id_index` (`user_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_caravan_id_index` (`caravan_id`),
  ADD KEY `posts_association_id_index` (`association_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `associations`
--
ALTER TABLE `associations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `caravans`
--
ALTER TABLE `caravans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `plannings`
--
ALTER TABLE `plannings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
