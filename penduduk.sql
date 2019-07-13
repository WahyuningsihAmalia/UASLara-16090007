-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2019 pada 17.38
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penduduk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluargas`
--

CREATE TABLE `keluargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kk` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_penduduk` bigint(20) UNSIGNED NOT NULL,
  `hubungan_kelurga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keluargas`
--

INSERT INTO `keluargas` (`id`, `no_kk`, `id_penduduk`, `hubungan_kelurga`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1234567891011121', 2, 'Ibu Rumah Tangga', 0, '2019-07-08 11:56:28', '2019-07-08 11:56:28'),
(2, '1234567891011121', 3, 'Kepala Keluarga', 0, '2019-07-08 11:56:41', '2019-07-08 11:56:41'),
(3, '1231231231231231', 5, 'Kepala Keluarga', 0, '2019-07-08 12:01:17', '2019-07-08 12:01:17'),
(4, '1231231231231231', 4, 'Ibu Rumah Tangga', 0, '2019-07-08 12:01:34', '2019-07-08 12:01:34'),
(5, '2342342342342342', 9, 'Ibu Rumah Tangga', 0, '2019-07-08 12:11:12', '2019-07-08 12:11:12'),
(6, '2342342342342342', 10, 'Kepala Keluarga', 0, '2019-07-08 12:11:30', '2019-07-08 12:11:30'),
(7, '2342342342342342', 8, 'Anak', 0, '2019-07-08 12:11:43', '2019-07-08 12:11:43'),
(8, '1234512345123451', 12, 'Ibu Rumah Tangga', 0, '2019-07-10 00:21:56', '2019-07-10 00:21:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_11_064725_create_families_table', 1),
(4, '2019_05_11_125006_create_people_table', 1),
(5, '2019_07_05_123940_create_penduduks_table', 2),
(6, '2019_07_05_124014_create_keluargas_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduks`
--

CREATE TABLE `penduduks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perkawinan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kewarganegaraan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hidup',
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penduduks`
--

INSERT INTO `penduduks` (`id`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `pendidikan`, `perkawinan`, `pekerjaan`, `rt`, `rw`, `kewarganegaraan`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1234567891011121', 'Wahyuningsih', 'Perempuan', 'tegal', '1998-06-02', 'Islam', 'SMA', 'Belum Menikah', 'belum bekerja', '05', '01', 'WNI', 'Pindah', 1, '2019-07-08 09:03:32', '2019-07-08 09:04:08'),
(2, '1122334455667788', 'Wahyuningsih', 'Perempuan', 'tegal', '1998-06-02', 'Islam', 'SMA', 'Menikah', 'Ibu rumah tangga', '05', '03', 'WNI', 'Hidup', 0, '2019-07-08 11:47:53', '2019-07-08 11:57:42'),
(3, '1234561234561234', 'dedeirwan', 'Laki-laki', 'tegal', '1996-09-18', 'Islam', 'SMA', 'Menikah', 'wiraswasta', '03', '01', 'WNI', 'Hidup', 0, '2019-07-08 11:55:01', '2019-07-08 11:55:01'),
(4, '1231231231231231', 'Ghina Rizqi', 'Perempuan', 'tegal', '1998-07-14', 'Islam', 'SMA', 'Menikah', 'Ibu rumah tangga', '01', '01', 'WNI', 'Hidup', 0, '2019-07-08 11:59:21', '2019-07-08 11:59:21'),
(5, '3213213213213213', 'M.samsul Amin', 'Laki-laki', 'tegal', '1996-10-01', 'Islam', 'SMA', 'Menikah', 'wiraswasta', '01', '01', 'WNI', 'Hidup', 0, '2019-07-08 12:00:18', '2019-07-08 12:00:18'),
(6, '3434343434343434', 'Faza Nur', 'Perempuan', 'tegal', '1998-12-02', 'Islam', 'SMA', 'Belum Menikah', 'mahasiswa', '04', '01', 'WNI', 'Hidup', 0, '2019-07-08 12:03:03', '2019-07-08 12:03:03'),
(7, '4564564564564564', 'usman', 'Laki-laki', 'tegal', '1998-05-27', 'Islam', 'SMA', 'Belum Menikah', 'wiraswasta', '05', '01', 'WNI', 'Hidup', 0, '2019-07-08 12:04:12', '2019-07-08 12:04:12'),
(8, '5675675675675675', 'Isna Amalia', 'Perempuan', 'tegal', '2000-12-06', 'Islam', 'SMA', 'Belum Menikah', 'belum bekerja', '01', '01', 'WNI', 'Hidup', 0, '2019-07-08 12:05:16', '2019-07-08 12:07:51'),
(9, '4454454454454454', 'Dewi Maliana', 'Perempuan', 'tegal', '1970-01-14', 'Islam', 'SMA', 'Menikah', 'belum bekerja', '01', '01', 'WNI', 'Hidup', 0, '2019-07-08 12:06:09', '2019-07-08 12:09:27'),
(10, '2342342324234234', 'Noval', 'Laki-laki', 'tegal', '1970-12-06', 'Islam', 'SMA', 'Menikah', 'wiraswasta', '01', '01', 'WNI', 'Hidup', 0, '2019-07-08 12:07:24', '2019-07-08 12:09:49'),
(11, '4564564578978989', 'Zilmi Kafa', 'Perempuan', 'tegal', '1970-07-17', 'Islam', 'SMA', 'Menikah', 'Ibu rumah tangga', '01', '01', 'WNI', 'Hidup', 0, '2019-07-08 12:10:45', '2019-07-08 12:10:45'),
(12, '1234321345567898', 'amel', 'Perempuan', 'tegal', '1995-07-15', 'Islam', 'SMA', 'Menikah', 'Ibu rumah tangga', '04', '01', 'WNI', 'Hidup', 0, '2019-07-10 00:20:14', '2019-07-10 00:20:14'),
(13, '1234567567896796', 'tuti', 'Perempuan', 'tegal', '1998-09-12', 'Islam', 'SMA', 'Belum Menikah', 'belum bekerja', '01', '01', 'WNI', 'Hidup', 0, '2019-07-10 03:28:25', '2019-07-10 03:28:25'),
(14, '1234511234552356', 'fida', 'Perempuan', 'tegal', '1995-08-12', 'Islam', 'SMA', 'Belum Menikah', 'belum bekerja', '01', '01', 'WNI', 'Pindah', 1, '2019-07-12 15:32:29', '2019-07-12 15:33:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin@gmail.com', '$2y$10$Ygt10U8N0coHEeQVf3GFy.6SUTkr/grRiBljlDsd5gN1ZeQ.1jZEK', NULL, '2019-07-08 01:11:11', '2019-07-08 01:11:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keluargas`
--
ALTER TABLE `keluargas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keluargas_id_penduduk_unique` (`id_penduduk`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penduduks`
--
ALTER TABLE `penduduks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penduduks_nik_unique` (`nik`);

--
-- Indeks untuk tabel `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keluargas`
--
ALTER TABLE `keluargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penduduks`
--
ALTER TABLE `penduduks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keluargas`
--
ALTER TABLE `keluargas`
  ADD CONSTRAINT `keluargas_id_penduduk_foreign` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
