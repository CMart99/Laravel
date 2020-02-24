-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2020 a las 15:28:54
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_electronics4all`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2014_10_12_100000_create_users_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_28_162555_create_professions_table', 1),
(5, '2020_01_31_145119_add_profession_id_to_users', 1),
(8, '2014_10_12_100000_create_products_table', 2),
(9, '2020_02_10_152539_create_skills_table', 2),
(10, '2020_02_20_174701_create_roles_table', 2),
(11, '2020_02_20_174833_create_role_user_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('carlos.martinez@adaits.es', '$2y$10$kGPA5leUUXNfXUWHelzLcOtCXEu1MVDpua8uf7n3MpxgJoml.A.c2', '2020-02-20 17:13:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `EAN` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `EAN`, `name`, `price`, `stock`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1234567890123, 'Mosfet', 1.24, 1234, NULL, '2020-02-20 17:47:58', '2020-02-20 17:47:58'),
(2, 1234567890124, 'Resistencia', 1.49, 143, NULL, '2020-02-20 17:58:34', '2020-02-20 17:58:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professions`
--

CREATE TABLE `professions` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `professions`
--

INSERT INTO `professions` (`id`, `title`) VALUES
(16, 'Consequatur minima voluptatibus.'),
(1, 'Desarrollador back-end'),
(2, 'Desarrollador front-end'),
(3, 'Diseñador web'),
(4, 'Doloremque eius.'),
(9, 'Ea optio sed.'),
(19, 'Eaque sunt.'),
(11, 'Eligendi repellendus.'),
(6, 'Est cupiditate.'),
(10, 'Est ut nemo.'),
(14, 'Libero sequi consequuntur.'),
(15, 'Nemo quasi iure.'),
(12, 'Non atque adipisci.'),
(17, 'Non fugiat.'),
(18, 'Numquam tempore dolor.'),
(7, 'Quas quia vitae.'),
(13, 'Tenetur omnis consequatur.'),
(8, 'Unde architecto qui.'),
(5, 'Voluptatem nihil.'),
(20, 'Voluptatem quam.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profession_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `bio`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`, `profession_id`) VALUES
(1, 'Carlos Martínez', 'carlos.martinez@adaits.es', 'Sit quo ullam accusantium. Doloremque consequatur quod est veritatis. Numquam doloribus eligendi voluptas.', '2020-02-19', '1234', 1, 'vUSWBTGg3c', '2020-02-19 17:19:17', '2020-02-19 17:19:17', 1),
(2, 'Reyes Nitzsche', 'fdenesik@example.com', 'Officiis necessitatibus praesentium quia sunt aliquam culpa. Maxime labore aspernatur praesentium aliquid officiis dolores architecto. Inventore cumque molestiae aut et. Facilis odit accusantium tempore dolor est.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'DYyQdA9WnO', '2020-02-19 17:19:17', '2020-02-19 17:19:17', 1),
(3, 'Alva Ondricka', 'xrath@example.net', 'Et autem quidem sit placeat ut officiis labore. Quisquam vel dignissimos quisquam autem unde.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'KYu1gzSOgr', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(4, 'Chadrick Marks Sr.', 'jimmy.walsh@example.net', 'Aut reprehenderit velit sed a est itaque et totam. Cum est est deserunt similique quas. Et aliquid illo necessitatibus veniam aspernatur eaque dolorem excepturi.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'wpkh8HmtnA', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(5, 'Frances Blick', 'hoeger.owen@example.com', 'Voluptate quia tenetur ut magni at. Iure molestiae nihil delectus. Ea dolore dolore qui quibusdam ea incidunt pariatur.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'stxfMs4j1o', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(6, 'Bell Fay', 'vicente.roberts@example.org', 'Odit veniam vel et et dignissimos eligendi labore. Nostrum officia deleniti et incidunt totam. Recusandae non aut officiis doloremque accusantium est.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'UXzLfx2Cjj', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(7, 'Lexus Wyman', 'lleuschke@example.net', 'Et laboriosam et sapiente quia consectetur. Earum nostrum ut quia. Animi quia ex sapiente nihil.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'qrvI1r4yfa', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(8, 'Dr. Talon Conn', 'krunolfsdottir@example.net', 'Qui ipsa quas aspernatur perferendis eum explicabo quia. Quis qui magni omnis sed. Hic nisi aut qui ratione ipsa perferendis.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'rhehfCMxMb', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(9, 'Fae Muller', 'wkrajcik@example.org', 'Debitis sint autem eius corrupti quam. Eveniet quis voluptatibus et debitis quo fugiat. Aut ducimus hic non tenetur ipsa exercitationem. Dolores ut accusantium commodi quis cumque voluptas.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'hFA7DD2ITs', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(10, 'Eulah Skiles', 'violette35@example.com', 'Non incidunt repudiandae est eum. Dolorem saepe consequuntur dolore laborum et et adipisci. Tenetur et id voluptatem vel repudiandae aliquid. Similique sint ab repudiandae velit.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'vTayG0xnRx', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(11, 'Mrs. Anjali Schuster Jr.', 'britney61@example.org', 'Ea laborum libero itaque suscipit voluptatum laudantium. Eligendi qui fugiat necessitatibus. Tenetur sequi quaerat ut similique laudantium doloribus.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '6QHyP03xS8', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(12, 'Margarita Ernser', 'gparker@example.com', 'Officia non consequatur incidunt mollitia. Iusto quidem incidunt hic. Dicta dicta reprehenderit illum porro est corrupti minima. Delectus sit ea qui quisquam.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'dRKgWFXdYi', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(13, 'Carole Wiegand', 'alejandrin84@example.com', 'Aut ut fugiat magni eum quia. Aut fuga tenetur doloribus ea minus sed eligendi. Non assumenda harum eveniet illum.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '059YePMmDW', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(14, 'Effie Pagac V', 'tatyana.nicolas@example.org', 'Veritatis aliquam nobis nam ut. Laudantium voluptatum dolorum veritatis sed quos dolore. Omnis alias harum sapiente. Similique repellendus sunt ut possimus perferendis voluptas officia ipsa.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '40pbQrwNn7', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(15, 'Leslie Parker I', 'vergie79@example.org', 'Fugiat veritatis consequatur repellendus id rerum sed. Laboriosam qui harum ipsum architecto voluptate error adipisci delectus. Tenetur quo ut fuga odio ipsam voluptas enim.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'j62yWp9Ohx', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(16, 'Dr. Micheal Berge', 'ebert.effie@example.org', 'Saepe provident nemo est autem ipsum sunt. Voluptate laudantium quis est cumque. Corporis voluptatum commodi perspiciatis. Aliquid libero neque at perspiciatis tempora.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '78VOGctSJH', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(17, 'Kim Kuhic', 'kuhn.cordia@example.com', 'Quo voluptatum et reiciendis voluptas saepe. Qui perspiciatis odio in amet praesentium molestiae. Sit voluptatem laborum et aliquam a fugiat nesciunt. Quia aspernatur odit consequuntur et.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'yI8sF910wI', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(18, 'Mr. Irwin McCullough PhD', 'raina35@example.org', 'Aspernatur nostrum aut enim. Pariatur tempore necessitatibus ut ab magni voluptatum. Dolor minus quis qui consequatur. Magnam voluptates corrupti autem nihil alias magnam cumque.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '3iiWRocFff', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(19, 'Kelli Watsica', 'lmueller@example.org', 'Ad dolorum eos aliquam et unde voluptas. Vel non dolore dolorem atque nihil omnis voluptate. Nesciunt reiciendis neque aut.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'z6cPwGexyF', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(20, 'Daryl Kris', 'mertz.cierra@example.org', 'Atque nostrum quia totam totam magni esse. Repudiandae voluptatem totam molestias. Autem in voluptatem neque nemo. Nostrum nesciunt libero qui accusamus rerum neque ipsa.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'hkTDZCaKbT', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(21, 'Sebastian Gerhold', 'jace06@example.net', 'Dolor accusantium quas veritatis voluptas incidunt rerum corrupti. Est amet exercitationem sint quae qui. Impedit beatae quis quo repellat.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'jPYThDq2sx', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(22, 'Miss Zena Hirthe PhD', 'bryana.lemke@example.com', 'Et aliquam sed illum perspiciatis repellendus corporis dolorum. Dolor ad dignissimos repellendus qui. Et natus cupiditate ducimus occaecati aut. Dolorem quibusdam magni delectus est rerum aliquid fugit illo.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'nSYRviT7so', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(23, 'Randi Waelchi', 'senger.art@example.com', 'Repudiandae omnis error veniam dignissimos praesentium ut. Natus quia dolor placeat quam quo consequatur qui. Ea aspernatur possimus voluptas voluptas tempora veritatis nesciunt. Velit aut sed voluptas et.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'muJ7BYhmqE', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(24, 'Tyrique King', 'leif27@example.com', 'Sed qui nihil ad et error. Voluptate molestiae amet dolore eos sunt voluptas animi. Minima molestias nisi natus.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'qEgeahg3TQ', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(25, 'Destiney Schaden', 'kautzer.eden@example.com', 'Omnis dolor earum iure voluptatibus deserunt aut. Cupiditate vero cum ut et recusandae in optio. Saepe inventore animi et eum.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'bnoecThXWQ', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(26, 'Dexter Schowalter V', 'samara47@example.com', 'Illum ut delectus quidem. Mollitia laborum facilis et fuga esse tempore ad. Corrupti sequi ut atque laudantium esse vitae ad. Qui voluptatem aut consectetur velit.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'bZar0mbFi9', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(27, 'Chloe Blick Sr.', 'danielle.williamson@example.com', 'Placeat dolore esse velit sapiente illum dolorum molestias. Veniam neque et dolorem perferendis amet molestias dignissimos. Beatae rem molestiae repellendus est. Eaque enim et incidunt qui at consequatur tenetur.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'cFG2LhdNHy', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(28, 'Abbie McLaughlin', 'noemy97@example.org', 'Ea veniam ut aut. Sint qui perferendis mollitia quis. Sint corrupti quia veniam reiciendis et illum.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'j85rRZNVms', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(29, 'Ms. Corene Schuppe', 'ovon@example.org', 'Voluptas ea porro quia. Sapiente totam incidunt sit harum suscipit ex ipsam voluptas. Nesciunt eos ut quo id.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'jdSYt1FsuX', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(30, 'Federico Hettinger', 'little.bret@example.com', 'Eveniet omnis sed numquam quas voluptas laudantium possimus. Officia veritatis ut corporis qui. Voluptas est et molestiae sed laborum voluptatibus odit. Natus a et necessitatibus consequatur maiores.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'l2TfIIzDzQ', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(31, 'Ms. Harmony Mohr PhD', 'hlind@example.com', 'Minima rerum magni maiores ipsa minus voluptates. Facere nostrum rem voluptas sit est labore. Autem quia illum beatae architecto qui consequatur sit vel.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'ghPDfYrEAN', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(32, 'Mrs. Enola Walker', 'beier.elfrieda@example.net', 'Perferendis culpa rem et omnis ut hic iure. Dolores veritatis non vel dolores recusandae est rerum qui. Et perspiciatis doloribus debitis earum voluptatibus. Voluptate sed ut quibusdam a est porro.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'V0BniVCj2d', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(33, 'Paul Casper', 'herminio45@example.com', 'Id distinctio et est inventore. Distinctio natus quis laboriosam magni. Quis odio doloremque voluptatem et labore veritatis nihil. Occaecati dolor et autem laudantium.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'LOOqaDEygX', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(34, 'Hailie Nicolas', 'dtromp@example.net', 'Aliquid at est modi adipisci. Tempora mollitia non qui aspernatur recusandae magni.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'iYRQWeETi3', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(35, 'Dr. Melba Daugherty II', 'preston.kutch@example.net', 'Aperiam aut recusandae libero sunt quisquam provident. Perferendis tempore quaerat aut et. Illo rerum aut recusandae.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'KyJ7TQuFyT', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(36, 'Dr. Ricardo Russel', 'jess.hamill@example.org', 'Et culpa non sequi minus minima aut tempora. Sunt tenetur magnam aut in quia.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '0BUvNBj6Pd', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(37, 'Cornell Gislason', 'ufahey@example.com', 'Non voluptatem expedita maxime corporis reprehenderit quod odit. Nihil ab quis ipsum et laudantium quo nihil. Omnis quos labore sequi ex quisquam quo cum. Maxime in magni soluta facilis.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'sxkBoPV3eP', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(38, 'Kaelyn Christiansen', 'stanton.aida@example.com', 'Eos officia et inventore aut. Sint accusamus tempora quod quia et et quos sint. Voluptatum consequatur mollitia molestiae consequatur cumque et.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'WAcKEkz4Vz', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(39, 'Miss Jailyn Roberts III', 'rebeka.nolan@example.com', 'Optio ipsum molestiae error blanditiis in. In ut impedit est temporibus. Ad nihil occaecati iste sint sunt ducimus et. Sit quos sit omnis sit soluta illo animi.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'VDg9n51ldM', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(40, 'Mr. Thad Shields', 'elody89@example.com', 'Et et in et. Occaecati omnis autem et occaecati.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'wcxPYkKL5z', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(41, 'Mrs. Lue Maggio DDS', 'feeney.archibald@example.net', 'Beatae reprehenderit voluptatem consectetur et. Fugit veniam atque laborum quo laborum. Et quod sunt occaecati.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'EGs9H7UR6c', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(42, 'Prof. Jayde Feest', 'frances.cassin@example.net', 'Nesciunt possimus rerum dolore et tempore quis. Omnis aliquid veritatis consequatur impedit. Veritatis illo cupiditate praesentium ad minima aut.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'nCBCCXzVx7', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(43, 'Darrin Kuphal', 'ewell48@example.com', 'Voluptas asperiores quos ipsum esse vel. Voluptas facere nihil reiciendis tempore eos. Eaque sequi aut incidunt sint consequatur. Deleniti facere molestiae doloremque vel ab.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'A8sX0rrlUa', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(44, 'Clara Hegmann', 'klein.guadalupe@example.com', 'Dolorum adipisci voluptatem ut eos. Facere dolorem ab in aliquid dolorum eius commodi. Eos perspiciatis non cum blanditiis cumque. Voluptatibus voluptas qui quisquam ex cupiditate sint consequatur molestiae.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '0xEvMMy0ZL', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(45, 'Dr. Niko Sauer', 'lubowitz.pearline@example.org', 'A est quasi aut optio. Omnis est alias rerum quos quo ad sint molestias.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'lpokcL8XK5', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(46, 'Edgardo Feil', 'gleason.javonte@example.com', 'Ea aliquam alias non praesentium quisquam dolor alias. Laboriosam qui rerum ab cupiditate autem debitis incidunt. Illum nobis est occaecati vel porro et.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'OyVs6nxcXk', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(47, 'Mr. Brock Quitzon', 'turner.augusta@example.net', 'Illo et cum dolor aut itaque voluptatem. Sed aut quia deleniti illum. Est eius quo aut placeat et debitis aperiam laborum. Aut perspiciatis non quis est delectus.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'IkGkuBFF1D', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(48, 'Kyra Walsh', 'macie80@example.org', 'Earum consequatur labore quod est. Doloribus et cupiditate est autem dolor et sequi. Earum reprehenderit dolorem consequatur animi ipsum a.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'GB8uVmz4NW', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(49, 'John Breitenberg', 'shaniya58@example.net', 'Voluptatem earum delectus rerum optio esse aut. Soluta perspiciatis maiores dolores neque eius explicabo. Magni ipsam perferendis labore eaque aliquid aliquid ab. Impedit rerum sed fuga sit.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'ejXTx66DDE', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(50, 'Reva Grimes Jr.', 'eliza65@example.org', 'Sed odio eum eius omnis nemo quam. Possimus corrupti earum qui. Eligendi illum velit a provident ipsam sed quo. Ea numquam non maxime laudantium quisquam quisquam fuga. Rerum amet et doloribus fugiat veritatis rerum omnis sint.', '2020-02-19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'iIV94MA9Uq', '2020-02-19 17:19:17', '2020-02-19 17:19:17', NULL),
(51, 'Nombre Prueba', 'prueba@prueba.es', NULL, NULL, '$2y$10$OK74wda081ICmPrb00cpceUzDjaXyGqY9OMR4JHxZdiecl1.iLILq', 0, NULL, '2020-02-19 18:26:13', '2020-02-19 18:26:13', NULL),
(52, 'Nombre Prueba', 'prueba2@prueba.es', NULL, NULL, '$2y$10$j7HWWhWNfTuo8HfBvh1TL.EB8lQrtfMPKBPywJY.8cRHobNykCuRi', 0, NULL, '2020-02-20 15:46:50', '2020-02-20 15:46:50', NULL),
(53, 'Carlos Martínez Aldayturriaga', 'carlos.martinez2@adaits.es', NULL, NULL, '$2y$10$wB/MbeHG9g0DqCeFET3MoeRPGgQ0uzjdolruZwTmK1Tdi8zEYvDwC', 0, NULL, '2020-02-20 18:10:39', '2020-02-20 18:10:39', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_ean_unique` (`EAN`);

--
-- Indices de la tabla `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `professions_title_unique` (`title`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `professions`
--
ALTER TABLE `professions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
