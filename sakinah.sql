-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for web_sakinah_collection
DROP DATABASE IF EXISTS `web_sakinah_collection`;
CREATE DATABASE IF NOT EXISTS `web_sakinah_collection` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `web_sakinah_collection`;

-- Dumping structure for table web_sakinah_collection.barangs
DROP TABLE IF EXISTS `barangs`;
CREATE TABLE IF NOT EXISTS `barangs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.barangs: ~8 rows (approximately)
DELETE FROM `barangs`;
INSERT INTO `barangs` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Paket Kostum A', 'Paket lengkap Kostum Penari Berwarna Merah Gold\r\nUntuk 5 orang', 500000.00, 'barangs/Ez6gWPFlXVSAInYbmu76vBujF6vKdsXDaZZmsQjU.jpg', '2025-06-29 01:54:37', '2025-06-29 01:54:37'),
	(2, 'Paket Kostum B', 'Paket lengkap Kostum Penari Berwarna Hijau Putih \r\nUntuk 4 Orang', 400000.00, 'barangs/Ermq477pcNhA3PMSx0sYaRXZI5LBNo26SkaONscv.jpg', '2025-06-29 01:57:00', '2025-06-29 01:57:00'),
	(3, 'Paket Kostum C', 'Paket Lengkap Kostum Penari Berwarna Navy \r\nUntuk 4 Orang', 400000.00, 'barangs/Je1fGxqu4Jp7UFxeHpKkxidXmpbSKfcrsrk6T6XV.jpg', '2025-06-29 03:07:21', '2025-06-29 03:07:21'),
	(4, 'Paket Kostum D', 'Paket Lengkap Kostum Penari Berwarna Merah Gold \r\nUntuk 4 Orang', 400000.00, 'barangs/2e8mD7E7vyJZCgv0IQN0Dv4v12FI8BGoObRheS7Y.jpg', '2025-06-29 03:11:11', '2025-06-29 03:11:11'),
	(5, 'Paket Kostum E', 'Paket Lengkap Kostum Penari Berwarna Navy Putih\r\nUntuk 3 Orang', 300000.00, 'barangs/akcc5CVmjZapgyC8PTAaNBKzf1t9STCSVyJltXZG.jpg', '2025-06-29 03:12:16', '2025-06-29 03:12:16'),
	(6, 'Paket Kostum F', 'Paket Lengkap Kostum Penari Berwarna Merah Gold \r\nUntuk 3 Orang', 250000.00, 'barangs/w5tyRSBUi5AH6F3Ygk907viUS2UvSnlXoWBD96rP.jpg', '2025-06-29 03:13:14', '2025-06-29 03:13:14'),
	(7, 'Paket Kostum G', 'Paket Lengkap Kostum Penari Berwarna Putih Gold \r\nUntuk 4 Orang', 400000.00, 'barangs/Np4iCqAVvlIGt0aj3tGsgT1yxmOWxDS4uFZrzNPk.jpg', '2025-06-29 03:14:51', '2025-06-29 03:14:51'),
	(8, 'Paket Kostum H', 'Paket Lengkap Kostum Penari Berwarna Navy Merah \r\nUntuk 3 Orang', 300000.00, 'barangs/L77aAjsOuf60a40tLZ4n86axVHlslp7KIHKr1d5n.jpg', '2025-06-29 03:16:11', '2025-06-29 03:16:11');

-- Dumping structure for table web_sakinah_collection.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.cache: ~6 rows (approximately)
DELETE FROM `cache`;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel_cache_admin@example.com|127.0.0.1', 'i:1;', 1751185135),
	('laravel_cache_admin@example.com|127.0.0.1:timer', 'i:1751185135;', 1751185135),
	('laravel_cache_admin@example|127.0.0.1', 'i:2;', 1751185124),
	('laravel_cache_admin@example|127.0.0.1:timer', 'i:1751185124;', 1751185124),
	('laravel_cache_admin1@example.com|127.0.0.1', 'i:1;', 1751185182),
	('laravel_cache_admin1@example.com|127.0.0.1:timer', 'i:1751185182;', 1751185182);

-- Dumping structure for table web_sakinah_collection.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.cache_locks: ~0 rows (approximately)
DELETE FROM `cache_locks`;

-- Dumping structure for table web_sakinah_collection.carts
DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `jasa_id` bigint unsigned DEFAULT NULL,
  `barang_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  KEY `carts_jasa_id_foreign` (`jasa_id`),
  KEY `carts_barang_id_foreign` (`barang_id`),
  CONSTRAINT `carts_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carts_jasa_id_foreign` FOREIGN KEY (`jasa_id`) REFERENCES `jasas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.carts: ~0 rows (approximately)
DELETE FROM `carts`;

-- Dumping structure for table web_sakinah_collection.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table web_sakinah_collection.jasas
DROP TABLE IF EXISTS `jasas`;
CREATE TABLE IF NOT EXISTS `jasas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.jasas: ~5 rows (approximately)
DELETE FROM `jasas`;
INSERT INTO `jasas` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Paket Penari B', '4 Penari Wanita', 600000.00, 'jasas/iVUJv7Y3l0zXzkf05LoTKxorgBnQr9Ri0HrqjCzx.jpg', '2025-06-28 07:01:58', '2025-06-29 01:47:43'),
	(2, 'Paket Penari A', '3 Penari Wanita', 500000.00, 'jasas/lXeGsIEWYIQZBnIdQlmo9X518PKa0eE0Mktul31s.jpg', '2025-06-29 01:36:52', '2025-06-29 01:47:22'),
	(3, 'Paket Penai C', '3 Penari Wanita\r\n1 Ambu\r\n1 Aki', 800000.00, 'jasas/7urZEcW6tZTGme6wlqRCee9UQtoqZsdQxXfNTvlr.jpg', '2025-06-29 01:45:30', '2025-06-29 01:48:09'),
	(4, 'Paket Penari D', '2 Penari Wanita', 400000.00, 'jasas/qV7iND2FZUVN5LT1rwxo1BirwH41DbmPd82VMDua.jpg', '2025-06-29 01:46:39', '2025-06-29 01:46:58'),
	(5, 'Paket Penari E', '3 Penari \r\n1 Ambu', 600000.00, 'jasas/18cmsqHjgJurlaHIduAASTG3gKQtItkF5aRogjvo.jpg', '2025-06-29 01:48:57', '2025-06-29 01:48:57'),
	(6, 'Paket Penari F', '5 Penari Wanita', 950000.00, 'jasas/tgKtt1pA8bvisDPCUCQ39ioj15pNgOrHc3i52vfa.jpg', '2025-06-29 01:50:01', '2025-06-29 01:50:01');

-- Dumping structure for table web_sakinah_collection.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;

-- Dumping structure for table web_sakinah_collection.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.job_batches: ~0 rows (approximately)
DELETE FROM `job_batches`;

-- Dumping structure for table web_sakinah_collection.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.migrations: ~12 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_06_18_023757_create_jasas_table', 1),
	(5, '2025_06_18_024005_create_barangs_table', 1),
	(6, '2025_06_18_030821_create_transactions_table', 1),
	(7, '2025_06_18_031842_create_carts_table', 1),
	(8, '2025_06_18_031958_create_transaction_items_table', 1),
	(9, '2025_06_21_013404_add_payment_fields_to_transactions_table', 1),
	(10, '2025_06_21_013429_add_dates_to_transaction_items_table', 1),
	(11, '2025_06_21_014442_add_missing_payment_fields_to_transactions_table', 1),
	(12, '2025_06_21_014514_add_dates_to_transaction_items_table', 1),
	(13, '2025_06_21_020613_fix_transactions_status_column_size', 1);

-- Dumping structure for table web_sakinah_collection.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table web_sakinah_collection.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.sessions: ~2 rows (approximately)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('8cj3weRLe3xgDJm45KXSgO4uefkiUP61Yk9YFlKw', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaVRuY3liVU1PYzVvMkplMElXT3dZcXRiWGtOR2xnMTRVbjlnZEpTcCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NhcnQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RyYW5zYWN0aW9ucy8xNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1751353951),
	('IY38JADooANVrLYBOjLlQcbFYzp94ZT0DAUijK3f', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSElUb1JQaG5wdWpqa1l5ZHFuTEhpQ0F1ZFBBZFdYQ2tTQVJ3a3A3cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9yZXBvcnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1751355835);

-- Dumping structure for table web_sakinah_collection.transactions
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_type` enum('dp','full') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remaining_payment_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.transactions: ~2 rows (approximately)
DELETE FROM `transactions`;
INSERT INTO `transactions` (`id`, `user_id`, `total_price`, `payment_type`, `paid_amount`, `status`, `payment_proof`, `remaining_payment_proof`, `created_at`, `updated_at`) VALUES
	(12, 1, 100000.00, 'full', 100000.00, 'completed', 'payment_proofs/XnQD2g82Jp0b5vTUpbwe0Q2kb9cLLHJapuNP4Wtr.png', NULL, '2025-06-28 08:26:04', '2025-06-28 08:30:13'),
	(13, 1, 800000.00, 'dp', 400000.00, 'pending', 'payment_proofs/yHURnknoSBjmyELwwtqZ7H1dGa3LwsqwNZKyKv5O.png', NULL, '2025-06-29 03:20:42', '2025-06-29 03:20:42'),
	(14, 6, 500000.00, 'dp', 500000.00, 'completed', 'payment_proofs/7PRcwU5RAHDTis3ZlR6Qi3obJK1iMb7y7oASPdy9.png', 'payment_proofs/plwPfzgwTwFhLOA4Ee5cvNShKWxOnynujZtQS8Ba.png', '2025-07-01 00:07:12', '2025-07-01 00:13:29');

-- Dumping structure for table web_sakinah_collection.transaction_items
DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE IF NOT EXISTS `transaction_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint unsigned NOT NULL,
  `jasa_id` bigint unsigned DEFAULT NULL,
  `barang_id` bigint unsigned DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_items_transaction_id_foreign` (`transaction_id`),
  KEY `transaction_items_jasa_id_foreign` (`jasa_id`),
  KEY `transaction_items_barang_id_foreign` (`barang_id`),
  CONSTRAINT `transaction_items_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `transaction_items_jasa_id_foreign` FOREIGN KEY (`jasa_id`) REFERENCES `jasas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `transaction_items_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.transaction_items: ~4 rows (approximately)
DELETE FROM `transaction_items`;
INSERT INTO `transaction_items` (`id`, `transaction_id`, `jasa_id`, `barang_id`, `price`, `pickup_date`, `event_date`, `created_at`, `updated_at`) VALUES
	(12, 12, 1, NULL, 100000.00, NULL, '2025-06-29', '2025-06-28 08:26:04', '2025-06-28 08:26:04'),
	(13, 13, NULL, 2, 400000.00, '2025-07-16', NULL, '2025-06-29 03:20:42', '2025-06-29 03:20:42'),
	(14, 13, NULL, 3, 400000.00, '2025-07-16', NULL, '2025-06-29 03:20:42', '2025-06-29 03:20:42'),
	(15, 14, 2, NULL, 500000.00, NULL, '2025-07-16', '2025-07-01 00:07:12', '2025-07-01 00:07:12');

-- Dumping structure for table web_sakinah_collection.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','karyawan','ceo','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web_sakinah_collection.users: ~7 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'USER', 'user1@example.com', NULL, '$2y$12$rMr2qVKY4ZRHIilI9HBSzOVybay1W8XWDVQXHtD2BKLp62owf/8CK', 'user', NULL, NULL, '2025-06-28 06:50:46', '2025-06-28 06:50:46'),
	(2, 'ADMIN', 'admin1@example.com', NULL, '$2y$12$MKZrgpak0KAgbhEWDoz4x.cQZ6g/mEVj3WaPzSI9Zu8/9IaAXSo5q', 'admin', NULL, NULL, '2025-06-28 06:50:46', '2025-06-28 06:50:46'),
	(3, 'KARYAWAN', 'karyawan1@example.com', NULL, '$2y$12$ZrB8Go0j1hBylHP0qxlb/usfbfHc5warEtQxM.EoRS5Twn.qZ4/.q', 'karyawan', NULL, NULL, '2025-06-28 06:50:47', '2025-06-28 06:50:47'),
	(4, 'CEO', 'ceo1@example.com', NULL, '$2y$12$9ctddpHPyx3EPqZTvw0YP.qOO5AiYFsorCCdNCbsDcfzHw47eiyrO', 'ceo', NULL, NULL, '2025-06-28 06:50:47', '2025-06-28 06:50:47'),
	(5, 'Super Admin', 'superadmin@example.com', NULL, '$2y$12$ijJJtEq0XNZoxvc28e3DxOOGG4Gk0Qju3DH51U4f.iWd3s2CMGp9O', 'admin', NULL, NULL, '2025-06-28 06:50:47', '2025-06-29 03:25:44'),
	(6, 'Juwita Wulandari', 'juwitawulandari2612@gmail.com', NULL, '$2y$12$Q2BjO4qm/VOuRnPWWUGcoeYWNIbkHz0D8jVsrZ/WD4WmfQvjJUx9W', 'user', NULL, NULL, '2025-06-30 23:58:34', '2025-06-30 23:58:34'),
	(7, 'Dimas', 'adimas@gmail.com', NULL, '$2y$12$jGAO5YdQfxoEAzTw0O.SGu6N/eqIzAcM58NVzM5lnsOuCgDSj.TX6', 'user', NULL, NULL, '2025-07-01 00:41:24', '2025-07-01 00:41:24');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
