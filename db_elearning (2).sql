-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2019 at 01:38 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'Pengendali Program', '2019-02-12 11:45:45', '2019-02-12 11:45:45', NULL),
(2, 'Customer Services', 'Di bawah Admin', '2019-02-12 11:46:08', '2019-02-12 11:46:08', NULL),
(3, 'Dosen', 'Pengajar Mahasiswa', '2019-02-12 11:46:27', '2019-02-12 11:46:27', NULL),
(4, 'Mahasiswa', 'Pelajar yang budiman', '2019-02-12 11:46:42', '2019-02-12 11:46:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_grub_kelas`
--

CREATE TABLE `tb_grub_kelas` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_grub_kelas`
--

INSERT INTO `tb_grub_kelas` (`id`, `id_user`, `id_kelas`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 17, 7, '2019-02-16 06:57:23', '2019-02-17 05:53:27', '2019-02-17 05:53:27'),
(2, 17, 5, '2019-02-16 08:44:24', '2019-02-17 05:53:32', '2019-02-17 05:53:32'),
(3, 17, 5, '2019-02-17 05:08:09', '2019-02-17 05:08:09', NULL),
(4, 17, 5, '2019-02-17 05:53:40', '2019-02-17 05:53:40', NULL),
(5, 17, 8, '2019-02-17 05:55:50', '2019-02-17 05:55:50', NULL),
(6, 22, 4, '2019-02-17 05:59:42', '2019-02-17 05:59:42', NULL),
(7, 24, 4, '2019-02-18 12:51:10', '2019-02-18 12:51:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_grub_soal`
--

CREATE TABLE `tb_grub_soal` (
  `id` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_grub_soal`
--

INSERT INTO `tb_grub_soal` (`id`, `id_kelas`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 18, '2019-02-17 12:23:14', '2019-02-17 12:23:14', NULL),
(7, 19, '2019-02-18 12:42:58', '2019-02-18 12:42:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jawab_kuis`
--

CREATE TABLE `tb_jawab_kuis` (
  `id` int(10) NOT NULL,
  `id_soal` int(10) NOT NULL,
  `jawaban` text NOT NULL,
  `jawaban_benar` text NOT NULL,
  `id_user` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id` int(10) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Teknik Informatika', '2019-09-13 16:00:00', '2019-02-11 17:14:03', '2019-02-11 17:14:03'),
(2, 'Teknik Elektro', '2019-02-09 16:00:00', '2019-02-11 17:14:27', '2019-02-11 17:14:27'),
(23, 'vve', '2019-02-11 17:11:00', '2019-02-11 17:11:13', '2019-02-11 17:11:13'),
(24, 'Teknik Informatika ferdinan', '2019-02-11 17:14:46', '2019-02-11 17:18:51', '2019-02-11 17:18:51'),
(25, 'ferdinan', '2019-02-11 17:16:25', '2019-02-11 17:17:36', '2019-02-11 17:17:36'),
(26, 'fsfsf', '2019-02-11 17:17:22', '2019-02-11 17:17:29', '2019-02-11 17:17:29'),
(27, 'Teknik  Informatika', '2019-02-11 17:19:29', '2019-02-15 17:16:12', NULL),
(28, 'Teknik Elektro', '2019-02-11 17:20:10', '2019-02-15 17:16:02', NULL),
(29, '<script>alert(\'sukses\')</script>', '2019-02-11 17:21:18', '2019-02-11 17:21:26', '2019-02-11 17:21:26'),
(30, 'fwfwfw', '2019-02-12 06:18:20', '2019-02-12 06:18:32', '2019-02-12 06:18:32'),
(31, 'Teknik Pertambangang', '2019-02-12 16:17:00', '2019-02-12 16:17:15', '2019-02-12 16:17:15'),
(32, 'ferdinan', '2019-02-13 13:51:53', '2019-02-13 13:52:03', '2019-02-13 13:52:03'),
(33, '<script>location=\"index.php\"</script>', '2019-02-13 14:05:14', '2019-02-13 16:23:39', '2019-02-13 16:23:39'),
(34, '<script>alert(\"8\")</script>', '2019-02-13 14:05:54', '2019-02-13 16:23:45', '2019-02-13 16:23:45'),
(35, 'echo \'test\';', '2019-02-13 14:06:11', '2019-02-13 16:23:52', '2019-02-13 16:23:52'),
(36, 'Bahasa Indonesia', '2019-02-15 12:34:08', '2019-02-15 12:34:17', '2019-02-15 12:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(10) NOT NULL,
  `id_matkul` int(10) NOT NULL,
  `jml_max` int(10) NOT NULL,
  `id_user` int(10) NOT NULL COMMENT 'Dosen',
  `jadwal` enum('01','02') NOT NULL,
  `semester` int(5) NOT NULL,
  `Token` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `id_matkul`, `jml_max`, `id_user`, `jadwal`, `semester`, `Token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 2, 6, '02', 3, '3', '2019-02-15 10:36:52', '2019-02-15 11:32:01', '2019-02-15 11:32:01'),
(2, 2, 3, 6, '02', 4, '4', '2019-02-15 10:43:41', '2019-02-15 11:32:24', '2019-02-15 11:32:24'),
(3, 2, 3, 6, '02', 3, '3', '2019-02-15 10:44:14', '2019-02-15 11:01:28', '2019-02-15 11:01:28'),
(4, 2, 3, 6, '02', 3, '80415C', '2019-02-15 11:31:28', '2019-02-15 11:37:17', NULL),
(5, 3, 2, 6, '01', 2, '4GL45W', '2019-02-15 11:31:50', '2019-02-15 11:31:50', NULL),
(6, 2, 3, 6, '01', 5, '5', '2019-02-15 11:35:45', '2019-02-15 11:37:09', '2019-02-15 11:37:09'),
(7, 2, 20, 6, '02', 5, 'Y3VFWX', '2019-02-17 01:57:30', '2019-02-17 01:57:30', NULL),
(8, 4, 23, 6, '02', 4, 'O3B9YD', '2019-02-17 01:59:26', '2019-02-17 01:59:26', NULL),
(9, 3, 21, 6, '02', 4, 'B9N312', '2019-02-17 05:57:07', '2019-02-17 05:57:07', NULL),
(10, 3, 20, 6, '02', 6, 'TTMOUQ', '2019-02-17 11:59:31', '2019-02-17 11:59:31', NULL),
(11, 2, 23, 6, '02', 4, 'LUNPF4', '2019-02-17 12:00:35', '2019-02-17 12:00:35', NULL),
(12, 2, 23, 6, '02', 5, 'I6LA47', '2019-02-17 12:02:43', '2019-02-17 12:02:43', NULL),
(13, 2, 23, 6, '02', 3, '376CWU', '2019-02-17 12:03:36', '2019-02-17 12:03:36', NULL),
(14, 2, 3, 6, '02', 8, 'P2ZOH5', '2019-02-17 12:06:05', '2019-02-17 15:44:21', '2019-02-17 15:44:21'),
(15, 2, 444, 6, '02', 3, '3BA3QU', '2019-02-17 12:07:53', '2019-02-17 15:44:26', '2019-02-17 15:44:26'),
(16, 2, 2222, 6, '02', 3, 'XEE1FJ', '2019-02-17 12:09:20', '2019-02-17 12:09:20', NULL),
(17, 2, 777, 6, '02', 3, '6VP1VQ', '2019-02-17 12:21:54', '2019-02-17 12:21:54', NULL),
(18, 3, 66, 6, '02', 5, '6498P5', '2019-02-17 12:23:14', '2019-02-17 12:23:14', NULL),
(19, 3, 30, 26, '02', 3, '2SR224', '2019-02-18 12:42:58', '2019-02-18 12:42:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_materi`
--

CREATE TABLE `tb_materi` (
  `id` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `nama_file` varchar(225) NOT NULL,
  `ukuran_file` varchar(255) NOT NULL,
  `url` varchar(225) DEFAULT NULL,
  `thn_materi` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `id` int(10) NOT NULL,
  `kode_matkul` char(13) DEFAULT NULL,
  `nama_matkul` varchar(225) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`id`, `kode_matkul`, `nama_matkul`, `keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '0001', 'bahasa Indonesia', 'Matakuliah Umum', '2019-02-13 16:23:09', '2019-02-13 16:23:09', NULL),
(2, '0002', 'Bahasa Inggris', 'Matakuliah Umum', '2019-09-13 16:00:00', '2019-02-09 16:00:00', NULL),
(3, '00010', 'Matematika', 'Matakuliah Umum', '2019-09-13 16:00:00', '2019-02-14 16:49:37', NULL),
(4, '0004', 'MPPL', 'Matakuliah Umum', '2019-02-09 16:00:00', '2019-02-09 16:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(10) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `no_induk` varchar(25) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `email` varchar(225) NOT NULL,
  `kelas` enum('1','2') DEFAULT NULL,
  `id_jurusan` int(10) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `semester` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id`, `nama`, `no_induk`, `no_tlp`, `email`, `kelas`, `id_jurusan`, `id_user`, `semester`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'ferdinan', '201512040', '0895364491686', 'zulfikar@gmail.com', NULL, NULL, 5, NULL, '2019-02-13 14:23:47', '2019-02-13 14:23:47', NULL),
(5, 'Zulfikar Hemansyah', '201512044', '0895364491686', 'email@gmail.com', NULL, NULL, 6, NULL, '2019-02-13 14:24:59', '2019-02-17 13:29:12', NULL),
(11, 'Zulkifikar', '201512040', '0895364491686', 'zul@gmail.com', '1', 28, 17, 1, '2019-02-15 17:52:10', '2019-02-17 06:00:16', NULL),
(12, 'sidar', '201512040', '0895364491686', 'gg@gmail.com', NULL, NULL, 19, NULL, '2019-02-16 01:26:35', '2019-02-16 02:30:09', NULL),
(13, 'ferdinan', '201512030', '081349373642', 'sfdsfsf@gmail.com', NULL, NULL, 20, NULL, '2019-02-16 01:27:23', '2019-02-17 04:29:24', NULL),
(14, 'ferdinandd', '20151270', '0895364491686', 'admin1234@gmail.com', NULL, NULL, 21, NULL, '2019-02-17 04:15:50', '2019-02-17 04:28:50', NULL),
(15, 'Zulkifli', '201512030', '0895364491686', 'zulfikar@gmail.com1', '2', 28, 22, 3, '2019-02-17 05:56:31', '2019-02-17 05:56:31', NULL),
(16, 'ferdinan', '13131663', '0895364491686', 'zulfikar2@gmail.com', '2', 27, 23, 6, '2019-02-17 06:01:12', '2019-02-17 06:01:12', NULL),
(17, 'Budi', '13131663', '0895364491686', 'zulfikar5gmail.com', '2', 28, 24, 3, '2019-02-17 06:02:03', '2019-02-17 06:02:03', NULL),
(18, 'Hermansyah', '22232353546467', '0895364491686', 'email@gmail.com1', NULL, NULL, 25, NULL, '2019-02-17 13:20:46', '2019-02-17 13:20:46', NULL),
(19, 'Budianto', '12345624242', '0895364491686', 'email@gmail.com2', NULL, NULL, 26, NULL, '2019-02-17 13:29:58', '2019-02-17 13:29:58', NULL),
(20, 'Siti Rizqa', '1234562424', '0895364491686', 'verdi@nirv.com', NULL, NULL, 27, NULL, '2019-02-17 13:34:12', '2019-02-17 13:39:46', NULL),
(21, 'ferdinan', '67472', '0895364491686', 's@gmail.com', NULL, NULL, 28, NULL, '2019-02-18 14:12:03', '2019-02-18 14:12:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal`
--

CREATE TABLE `tb_soal` (
  `id` int(10) NOT NULL,
  `nama_soal` varchar(225) NOT NULL,
  `id_grub_soal` int(10) NOT NULL,
  `ket_soal` text,
  `file_soal` varchar(500) DEFAULT NULL,
  `waktu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal`
--

INSERT INTO `tb_soal` (`id`, `nama_soal`, `id_grub_soal`, `ket_soal`, `file_soal`, `waktu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fwfwfwfwfw', 6, 'fwfwfwf', 'IHOvRgqTaIeJ.pdf', 3, '2019-02-17 17:59:11', '2019-02-17 17:59:11', NULL),
(2, 'ferdinan', 6, 'wdwdwd', 'C:\\xampp3\\htdocs\\E_learning\\public\\file-soal/a.png', 3, '2019-02-17 18:01:20', '2019-02-17 18:01:20', NULL),
(3, 'ferdinan', 6, 'dwdwd', 'TCvADSVvznk3.pdf', 3, '2019-02-17 18:06:28', '2019-02-17 18:06:28', NULL),
(4, 'ferdinan', 6, 'wdwdw', 'e6at4LtM1kpC.pdf', 3, '2019-02-17 18:23:04', '2019-02-17 18:23:04', NULL),
(5, 'de', 6, NULL, 'C:\\xampp3\\htdocs\\E_learning\\public\\file-soal/a.png', 3, '2019-02-17 18:23:55', '2019-02-17 18:23:55', NULL),
(6, 'fwfwf', 6, NULL, 'C:\\xampp3\\htdocs\\E_learning\\public\\file-soal/a.png', 3, '2019-02-17 18:24:24', '2019-02-17 18:24:24', NULL),
(7, 'ferdinan', 6, 'dwdwd', NULL, 3, '2019-02-17 18:26:50', '2019-02-17 18:26:50', NULL),
(8, 'ferdinan', 6, NULL, 'dVGWxJtNejy9.docx', 3, '2019-02-17 18:28:31', '2019-02-17 18:28:31', NULL),
(9, 'dwdw', 6, 'dwdwd', 'vCxBbPpAwlFD.jpeg', 4, '2019-02-17 18:29:53', '2019-02-17 18:29:53', NULL),
(10, 'ferdinan', 6, 'dwdwd', 'ydvLm118oUuv.jpg', 44, '2019-02-17 18:30:50', '2019-02-17 18:30:50', NULL),
(11, 'ferdinan', 6, 'dqdqdq', '3DAqm8y1a9Gv.docx', 3, '2019-02-17 18:45:38', '2019-02-17 18:45:38', NULL),
(12, 'ferdinan', 6, 'eqeqeq', 'exoMlXoQEhwH.docx', 3, '2019-02-17 18:47:07', '2019-02-17 18:47:07', NULL),
(13, 'wfwfw', 6, 'fwfwfw', 'BanYKL7IjpnE.docx', 2, '2019-02-17 19:04:10', '2019-02-17 19:04:10', NULL),
(14, 'dqdqdq', 6, 'dqdq', 'ARQdRrUC2f6L.docx', 3, '2019-02-17 19:05:06', '2019-02-17 19:05:06', NULL),
(15, 'cscscsc', 6, 'scscs', '0JUJEQsAaMq1.docx', 3, '2019-02-17 19:11:18', '2019-02-17 19:11:18', NULL),
(16, 'ada', 6, 'tss', '4Wl07ndQyRnG.docx', 3, '2019-02-17 19:16:20', '2019-02-17 19:16:20', NULL),
(17, 'wfwfwf', 6, 'fwfwfw', 'hv351OFSXBCw.docx', 3, '2019-02-17 19:38:49', '2019-02-17 19:38:49', NULL),
(18, 'fsfsf', 6, 'fsfsf', '1299jWBljmMG.docx', 3, '2019-02-17 19:55:37', '2019-02-17 19:55:37', NULL),
(19, 'ferdinan', 6, 'sffsf', 'mzG1nbD5l3Dk.docx', 4, '2019-02-17 19:56:47', '2019-02-17 19:56:47', NULL),
(20, 'dinansyahhhh', 6, 'vhvssfsvhf', 'oQ4ysjDEcz4p.docx', 4, '2019-02-17 20:09:21', '2019-02-17 20:09:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_role` int(10) NOT NULL,
  `color` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `id_role`, `color`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'ferdinan', 'zulfikar@gmail.com', '$2y$10$B5c9YYJw/ZA.zxkh2zmlYOVa9TKGhLym3FXAM9yQce5mVII2224ge', 2, 'bg-secondary', NULL, '2019-02-13 14:23:47', '2019-02-13 14:23:47'),
(6, 'Zulfikar', 'email@gmail.com', '$2y$10$HU8ccP2M0FRVXphXMZBgs.A.QL8OXQplSd.QXLsmQ.RxOvlb74XEi', 3, 'bg-success', NULL, '2019-02-13 14:24:59', '2019-02-13 14:24:59'),
(17, 'Zulkifli', 'zul@gmail.com', '$2y$10$lnwlFV64x8HTOIAhNM2LdeMNQ48d0Mvbq9ZiXbaohg7roO7VwCZeG', 4, 'bg-primary', NULL, '2019-02-15 17:52:10', '2019-02-15 17:52:10'),
(19, 'sidar', 'gg@gmail.com', '$2y$10$DK.0nkUvuKOqra55LdIPXe.Ay5HZE264HVgjAQLw4nwXmepWUD5fi', 2, 'bg-success', NULL, '2019-02-16 01:26:35', '2019-02-16 01:26:35'),
(20, 'ferdinan', 'sfdsfsf@gmail.com', '$2y$10$LyFn4kG3Q5EnneoM5KsXt...5kS8L6RukxuLnQFqZ6YItdht9IyEO', 2, 'bg-primary', NULL, '2019-02-16 01:27:23', '2019-02-16 01:27:23'),
(21, 'ferdinan', 'admin1234@gmail.com', '$2y$10$8n/wMafJsyF5ek/ASVbtQepvtWEiXK6fqkIIMRgK8shzgdKNJT7we', 1, 'bg-success', NULL, '2019-02-17 04:15:50', '2019-02-17 04:15:50'),
(22, 'Zulkifli', 'zulfikar@gmail.com1', '$2y$10$i3VuA8gVTra/VGlCZ6gOIuZx04dyNLvuPtqEnsViSy1MC8iktzoqG', 4, 'bg-primary', NULL, '2019-02-17 05:56:30', '2019-02-17 05:56:30'),
(23, 'ferdinan', 'zulfikar2@gmail.com', '$2y$10$HL1JtHm4OQ5hnESlJkAcJOom1PxyBZpUsDIgFxtsVEvrtxFCo67Zu', 4, 'bg-secondary', NULL, '2019-02-17 06:01:12', '2019-02-17 06:01:12'),
(24, 'Budi', 'zulfikar5gmail.com', '$2y$10$nF7E30Nbtdjhg9UVQMFocOeX57EVotNGbPtxKtTKC5R675mRCgP4a', 4, 'bg-success', NULL, '2019-02-17 06:02:03', '2019-02-17 06:02:03'),
(25, 'Hermansyah', 'email@gmail.com1', '$2y$10$Zyznd5W6xNnw5ETTJMArP.iQMVAdxicxp6AvyrzbnGONdN/l2.zlS', 1, 'bg-danger', NULL, '2019-02-17 13:20:46', '2019-02-17 13:20:46'),
(26, 'Budianto', 'email@gmail.com2', '$2y$10$06PjuMIypPMR2zvCdeTNFu/CXNWytoraEzcvsJysRMpPZvleYJZzC', 3, 'bg-dark', NULL, '2019-02-17 13:29:58', '2019-02-17 13:29:58'),
(27, 'Siti Rizqa', 'ferdian1_verdi@nirvanafans.com', '$2y$10$zNT.z94Bl0JsdCWpxtJd3OIeyeItgrnqX.RAOK76s24K9dg8wa94.', 1, 'bg-dark', NULL, '2019-02-17 13:34:11', '2019-02-17 13:34:11'),
(28, 'ferdinan', 's@gmail.com', '$2y$10$vTkVZuWaAJEzA52tF9Rc7u94bhtrYVapCjSl4ZToX2Hw97oYqH9we', 3, 'bg-secondary', NULL, '2019-02-18 14:12:02', '2019-02-18 14:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 2, 5, '2019-02-13 14:23:47', '2019-02-13 14:23:47'),
(5, 3, 6, '2019-02-13 14:24:59', '2019-02-13 14:24:59'),
(11, 4, 17, '2019-02-15 17:52:10', '2019-02-15 17:52:10'),
(12, 2, 19, '2019-02-16 01:26:35', '2019-02-16 01:26:35'),
(13, 2, 20, '2019-02-16 01:27:23', '2019-02-16 01:27:23'),
(14, 1, 21, '2019-02-17 04:15:50', '2019-02-17 04:15:50'),
(15, 4, 22, '2019-02-17 05:56:31', '2019-02-17 05:56:31'),
(16, 4, 23, '2019-02-17 06:01:12', '2019-02-17 06:01:12'),
(17, 4, 24, '2019-02-17 06:02:03', '2019-02-17 06:02:03'),
(18, 1, 25, '2019-02-17 13:20:46', '2019-02-17 13:20:46'),
(19, 3, 26, '2019-02-17 13:29:58', '2019-02-17 13:29:58'),
(20, 1, 27, '2019-02-17 13:34:12', '2019-02-17 13:34:12'),
(21, 3, 28, '2019-02-18 14:12:03', '2019-02-18 14:12:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tb_grub_kelas`
--
ALTER TABLE `tb_grub_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_grub_kelas_id_kelas_foreign` (`id_kelas`),
  ADD KEY `tb_grub_kelas_id_user_foreign` (`id_user`);

--
-- Indexes for table `tb_grub_soal`
--
ALTER TABLE `tb_grub_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_grub_soal_id_kelasl_foreign` (`id_kelas`);

--
-- Indexes for table `tb_jawab_kuis`
--
ALTER TABLE `tb_jawab_kuis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_jawab_kuis_id_soal_foreign_key` (`id_soal`),
  ADD KEY `tb_jawab_kuis_id_user_foreign_key` (`id_user`);

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_kelas_id_matkul_foreign` (`id_matkul`),
  ADD KEY `tb_kelas_id_user_foreign` (`id_user`);

--
-- Indexes for table `tb_materi`
--
ALTER TABLE `tb_materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_materi_id_kelas_foreign` (`id_kelas`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pengguna_id_jurusan_foreign` (`id_jurusan`),
  ADD KEY `tb_pengguna_id_user_foreign` (`id_user`);

--
-- Indexes for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_soal_id_grub_isoal_foreign` (`id_grub_soal`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_grub_kelas`
--
ALTER TABLE `tb_grub_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_grub_soal`
--
ALTER TABLE `tb_grub_soal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_jawab_kuis`
--
ALTER TABLE `tb_jawab_kuis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_materi`
--
ALTER TABLE `tb_materi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_grub_kelas`
--
ALTER TABLE `tb_grub_kelas`
  ADD CONSTRAINT `tb_grub_kelas_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_grub_kelas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_grub_soal`
--
ALTER TABLE `tb_grub_soal`
  ADD CONSTRAINT `tb_grub_soal_id_kelasl_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_jawab_kuis`
--
ALTER TABLE `tb_jawab_kuis`
  ADD CONSTRAINT `tb_jawab_kuis_id_soal_foreign_key` FOREIGN KEY (`id_soal`) REFERENCES `tb_soal` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_jawab_kuis_id_user_foreign_key` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD CONSTRAINT `tb_kelas_id_matkul_foreign` FOREIGN KEY (`id_matkul`) REFERENCES `tb_matkul` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_kelas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_materi`
--
ALTER TABLE `tb_materi`
  ADD CONSTRAINT `tb_materi_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD CONSTRAINT `tb_pengguna_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `tb_jurusan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_pengguna_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD CONSTRAINT `tb_soal_id_grub_isoal_foreign` FOREIGN KEY (`id_grub_soal`) REFERENCES `tb_grub_kelas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
