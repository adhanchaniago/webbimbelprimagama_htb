-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 05 Feb 2020 pada 02.50
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_bimbel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_admin`
--

CREATE TABLE IF NOT EXISTS `m_admin` (
`id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(2, 'guru1', '21232f297a57a5a743894a0e4a801fc3', 'guru', 1),
(3, 'guru2', '21232f297a57a5a743894a0e4a801fc3', 'guru', 2),
(6, 'siswa1', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 1),
(7, 'siswa2', '21232f297a57a5a743894a0e4a801fc3', 'siswa', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru`
--

CREATE TABLE IF NOT EXISTS `m_guru` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_tlp` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `m_guru`
--

INSERT INTO `m_guru` (`id`, `nama`, `nip`, `pendidikan`, `alamat`, `no_tlp`) VALUES
(1, 'Khoirul Anwar S.Kom.', '129374861', 'S1 Komputer', 'Jl. Tidak Diketahui', '08126476214'),
(2, 'Dr. Eka Prawira Belum Kelar, S.Kom.', '2014142770', 'S3 Jalur Nembak', 'Jl. Wara-Wiri Petukangan', '085591547172');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

CREATE TABLE IF NOT EXISTS `m_mapel` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Bahasa Inggris'),
(3, 'Matematika'),
(4, 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_materi`
--

CREATE TABLE IF NOT EXISTS `m_materi` (
`id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nama_materi` varchar(100) NOT NULL,
  `file_materi` varchar(150) NOT NULL,
  `tgl_buat` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `m_materi`
--

INSERT INTO `m_materi` (`id`, `id_guru`, `id_mapel`, `nama_materi`, `file_materi`, `tgl_buat`) VALUES
(17, 2, 1, 'igui', 'jametkadal.pdf', '2020-01-30 04:09:38'),
(16, 2, 1, 'igui', 'jametkadal.pdf', '2020-01-30 04:06:43'),
(15, 2, 1, 'test', 'testupload2013-1-01063-IF Bab2001.pdf', '2020-01-30 02:38:30'),
(14, 2, 1, 'test', 'testupload2013-1-01063-IF Bab2001.pdf', '2020-01-30 02:37:59'),
(18, 0, 1, 'SKRIPSI', 'SKRIPSI.pdf', '2020-02-04 01:08:57'),
(19, 0, 1, 'fdhgfghfg', 'SKRIPSI.pdf', '2020-02-04 01:20:45'),
(20, 0, 1, 'Kontlo', 'SKRIPSI.pdf', '2020-02-04 04:26:56'),
(21, 0, 1, 'hfuygui', 'SKRIPSI.pdf', '2020-02-04 04:31:47'),
(22, 2, 1, 'KONTOL', 'SKRIPSI.pdf', '2020-02-04 04:36:21'),
(23, 0, 1, 'JEMBUT BERTATO', '1.pdf', '2020-02-04 04:40:18'),
(24, 0, 1, 'dfgdfghdge', '8.pdf', '2020-02-04 04:40:41'),
(25, 2, 3, 'ANJING TANAH', '9.pdf', '2020-02-04 04:53:51'),
(26, 1, 1, 'sgregergfgf', 'Jepretan Layar 2020-02-04 pada 12.31.59.png', '2020-02-04 07:10:15'),
(27, 2, 1, 'KONTROL BRADER', 'jametkadal.pdf', '2020-02-04 13:27:57'),
(28, 0, 4, 'KONTOL KOBOY', 'jametkadal-2.pdf', '2020-02-04 13:42:14'),
(29, 0, 4, 'JAMET BERDASI', 'jametkadal-2.pdf', '2020-02-04 13:43:46'),
(30, 2, 4, 'EXPERIMENT', 'LOGO UNPAM.jpg', '2020-02-04 13:45:05'),
(31, 2, 1, 'POTO DARI ORANG TAMPAN', '2014142770_EKA PRAWIRA_POTO.pdf', '2020-02-05 02:40:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_siswa`
--

CREATE TABLE IF NOT EXISTS `m_siswa` (
`id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmpt_lahir` varchar(35) NOT NULL,
  `tgl_lahir` date NOT NULL DEFAULT '0000-00-00',
  `no_tlp` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nis`, `alamat`, `tmpt_lahir`, `tgl_lahir`, `no_tlp`) VALUES
(1, 'Jamet 1', '20141', 'Jl. Petukangan Rastafara', 'Purwokerto', '1996-01-09', '085591547172'),
(2, 'Jamet 2', '20142', 'Jl. Mawar Dalam Bintaro Pesanggrahan', 'Pekalongan', '0000-00-00', '0814563723'),
(3, 'sfdgedge', '12424', 'fdgfb', 'fdgfbfg', '2001-09-09', '345464');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal`
--

CREATE TABLE IF NOT EXISTS `m_soal` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `bobot` int(2) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext NOT NULL,
  `opsi_b` longtext NOT NULL,
  `opsi_c` longtext NOT NULL,
  `opsi_d` longtext NOT NULL,
  `opsi_e` longtext NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data untuk tabel `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `gambar`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`) VALUES
(1, 1, 1, 1, '', 'Indonesia menggunakan bahasa resmi bahasa .... ', 'Indonesia', 'Inggris', 'Prancis', 'Portugis', 'Melayu', 'A', '2015-08-27 18:20:22'),
(2, 1, 1, 1, '70thIndonesiaMerdeka.jpg', 'Gambar disamping adalah logo kemerdekaan Indonesia ke.. ', '67', '68', '69', '70', '71', 'D', '2015-08-27 18:21:02'),
(3, 1, 1, 1, '', 'Slogan peringatan HUT RI ke 70 adalah ...', 'Ayo makan.', 'Ayo minum', 'Ayo bermain', 'Ayo kerja', 'Ayo berbelanja', 'D', '2015-08-27 18:21:55'),
(4, 1, 1, 1, '', 'Bahasa Indonesia ditetapkan sebagai bahasa resmi pada tanggal ..', '20 Mei 1927', '28 Oktober 1928', '20 Mei 1928', '28 Mei 1920', '21 Juni 1917', 'B', '2015-08-27 18:23:13'),
(5, 1, 1, 1, '', 'Kalimat minimal terdiri dari pola ..', 'S-P-O', 'S-P-K', 'S-P-O-K', 'S-K', 'S-P', 'E', '2015-08-27 18:24:05'),
(6, 2, 2, 1, '', 'Table = .... (Indonesia)', 'Meja', 'Kursi', 'Lemari', 'Pintu', 'Jendela', 'A', '2015-08-27 18:24:44'),
(7, 2, 2, 1, '', 'Big = ... (indonesia)', 'Tinggi', 'Kurus', 'Panjang', 'Besar', 'Keras', 'D', '2015-08-27 18:25:22'),
(8, 2, 2, 1, '', 'Bola = .... (inggris)', 'ballon', 'ball', 'table', 'book', 'paper', 'B', '2015-08-27 18:25:57'),
(9, 2, 2, 1, '', 'I go to school by ...', 'road', 'field', 'shoes', 'drink', 'bus', 'E', '2015-08-27 18:26:48'),
(10, 2, 2, 1, '', 'Who is USA president now...', 'Ir. Jokowi', 'Angela Merkel', 'Barrack Obama', 'Tony Abbot', 'John F Kennedy', 'C', '2015-08-27 18:27:48'),
(11, 5, 3, 1, '', '2+3 = ...', '1', '2', '3', '4', '5', 'E', '2015-08-27 18:28:12'),
(12, 5, 3, 1, '', '1, 3, ..., ...., 9, 11', '4, 5', '4, 6', '5, 7', '6, 7', '1, 5', 'C', '2015-08-27 18:29:06'),
(13, 5, 3, 1, '', '(2 + 3) * 4 = ....', '20', '21', '22', '23', '24', 'A', '2015-08-27 18:29:34'),
(14, 5, 3, 1, '', '(90 / 10 ) - 5 = ...', '1', '2', '3', '4', '5', 'D', '2015-08-27 18:30:03'),
(15, 5, 3, 1, '', 'Akar dari 81 adalah ...', '7', '8', '9', '10', '11', 'C', '2015-08-27 18:30:27'),
(16, 4, 4, 1, '', 'Benda cair contohnya .. ?', 'es', 'batu', 'sirup', 'meja', 'udara', 'C', '2015-08-27 18:31:02'),
(17, 4, 4, 1, '', 'Perubahan bentuk dari cair menjadi padat disebut ...', 'menyublim', 'membeku', 'menguap', 'menghilang', 'magic', 'B', '2015-08-27 18:31:53'),
(18, 4, 4, 1, '', 'Uap air termasuk jenis benda ... ', 'gas', 'cair', 'padat', 'tidak nampak', 'panas', 'A', '2015-08-27 18:32:39'),
(19, 4, 4, 1, '', 'Yang menemukan hukum Newton adalah ...', 'George Washington', 'Georde Groban', 'George Bush', 'Issac Newton', 'Steven Gerrard', 'D', '2015-08-27 18:33:29'),
(20, 4, 4, 1, 'harga-kaca.jpg', 'Gambar di samping merupakan contoh benda ..', 'padat', 'cair', 'tak nampak', 'gas ', 'ghaib', 'A', '2015-08-27 18:34:18'),
(21, 1, 1, 1, 'images.jpg', 'Gambar di sampig adalah gambar ..', 'roti', 'batu bata', 'batu', 'kerupuk', 'nasi merah', 'B', '2015-08-27 18:46:11'),
(22, 4, 1, 1, '', 'soal', 'jawaban a', 'jawaban b', 'jawaban c', 'jawaban d', 'jawaban e', 'A', '2015-09-05 09:41:24'),
(23, 2, 1, 1, 'Background.jpg', 'asdasd', 'asd', 'asd', 'aaa', 'asdd', 'aada', 'D', '2019-11-01 22:51:11'),
(24, 2, 2, 1, '', 'ahjkhakj', 'ahjghsa', 'aghs', 't1uyt1u', 't1ygyjagj', 'aghgajh', 'C', '2019-12-04 16:03:01'),
(26, 5, 3, 1, '', 'as', 'a', 'as', 'asa', 'asa', 'as', 'B', '2019-12-07 13:06:30'),
(27, 5, 3, 1, '', 'as', 'aa', 'a', 'a', 'a', 'aa', 'A', '2019-12-07 13:18:19'),
(28, 5, 3, 1, '', 'as', 'aa', 'a', 'a', 'a', 'aa', 'A', '2019-12-07 13:18:19'),
(29, 5, 3, 1, '', 'as', 'aa', 'a', 'a', 'a', 'aa', 'A', '2019-12-07 13:18:19'),
(30, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', 'C', '2019-12-07 13:32:01'),
(31, 5, 3, 0, '', '', '', '', '', '', '', '', '2019-12-07 13:34:18'),
(32, 5, 3, 0, '', '', '', '', '', '', '', '', '2019-12-07 13:34:18'),
(33, 5, 3, 0, '', '', '', '', '', '', '', '', '2019-12-07 13:34:19'),
(34, 5, 3, 0, '', '', '', '', '', '', '', '', '2019-12-07 13:34:19'),
(35, 5, 3, 0, '', '', '', '', '', '', '', '', '2019-12-07 13:34:19'),
(36, 5, 3, 1, '', 'aaa', 'aa', 'aa', 'aa', 'aa', 'aa', 'A', '2019-12-07 13:53:51'),
(37, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:36'),
(38, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:38'),
(39, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:38'),
(40, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:39'),
(41, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:39'),
(42, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:40'),
(43, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:40'),
(44, 5, 3, 1, '', 'a', '', '', '', '', '', '', '2019-12-07 13:54:41'),
(45, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:55:32'),
(46, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:57:07'),
(47, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:57:08'),
(48, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:57:08'),
(49, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:33'),
(50, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:33'),
(51, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:33'),
(52, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:33'),
(53, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:33'),
(54, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:34'),
(55, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:34'),
(56, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:34'),
(57, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:35'),
(58, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:35'),
(59, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:35'),
(60, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:36'),
(61, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:36'),
(62, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:36'),
(63, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:36'),
(64, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:36'),
(65, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:37'),
(66, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:37'),
(67, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 13:58:37'),
(68, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:43'),
(69, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:44'),
(70, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:44'),
(71, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:44'),
(72, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:44'),
(73, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:45'),
(74, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:45'),
(75, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:45'),
(76, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:45'),
(77, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:46'),
(78, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:46'),
(79, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:46'),
(80, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:46'),
(81, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:01:47'),
(82, 5, 3, 1, '', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019-12-07 14:03:01'),
(83, 5, 3, 1, '', 'a', 'A', 'A', 'A', 'A', '', 'E', '2019-12-07 14:04:07'),
(84, 5, 3, 1, '', 'a', 'A', 'A', 'A', 'A', '', 'E', '2019-12-07 14:04:07'),
(85, 5, 3, 1, '', 'a', 'A', 'A', 'A', 'A', '', 'E', '2019-12-07 14:04:07'),
(86, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', 'A', 'A', '2019-12-07 14:04:33'),
(87, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'AA', 'A', 'B', '2019-12-07 14:08:32'),
(88, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', '', 'C', '2019-12-07 14:10:09'),
(89, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', '', 'C', '2019-12-07 14:10:09'),
(90, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', '', 'C', '2019-12-07 14:10:10'),
(91, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', '', 'C', '2019-12-07 14:10:10'),
(92, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', '', 'C', '2019-12-07 14:10:10'),
(93, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', '', 'C', '2019-12-07 14:10:10'),
(94, 5, 3, 1, '', 'A', 'A', 'A', 'A', 'A', 'A', 'D', '2019-12-07 14:11:44'),
(95, 5, 3, 1, '', 'a', 'a', 'a', 'A', 'a', 'a', 'B', '2019-12-07 14:15:20'),
(96, 5, 3, 1, 'images.png', 'asasa', 'asas', 'asas', 'asas', 'asas', 'asas', 'A', '2020-01-27 22:20:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(1, 1, 1),
(2, 2, 2),
(6, 2, 1),
(7, 2, 3),
(8, 2, 4),
(9, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_tes`
--

CREATE TABLE IF NOT EXISTS `tr_guru_tes` (
`id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`) VALUES
(1, 1, 1, 'UTS Bahasa Indonesia', 6, 1, 'acak', ''),
(3, 1, 1, 'Ujian', 5, 1, 'acak', ''),
(4, 1, 1, 'Matematika', 100, 60, 'acak', ''),
(5, 2, 2, 'UAS', 100, 120, 'acak', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_ikut_ujian`
--

CREATE TABLE IF NOT EXISTS `tr_ikut_ujian` (
`id` int(6) NOT NULL,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` int(6) NOT NULL,
  `nilai_bobot` int(6) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(1, 3, 1, '4,3,5,22,1', '4:,3:,5:,22:,1:', 0, 0, 0, '2015-10-10 11:48:53', '2015-10-10 11:49:53', 'N'),
(2, 1, 8, '2,3,1,22,23,5', '2:C,3:E,1:E,22:E,23:E,5:E', 1, 17, 1, '2019-12-04 14:38:09', '2019-12-04 14:39:09', 'N'),
(3, 5, 8, '7,10,24,6,9,8', '7:A,10:E,24:E,6:E,9:E,8:E', 1, 17, 1, '2019-12-04 16:04:31', '2019-12-04 18:04:31', 'N'),
(4, 2, 8, '6,7,24,8,10', '6:D,7:D,24:D,8:E,10:E', 1, 20, 1, '2019-12-04 16:04:54', '2019-12-04 16:05:54', 'N'),
(5, 1, 1, '21,5,1,23,4,2', '21:,5:,1:,23:,4:,2:', 0, 0, 0, '2019-12-04 16:11:08', '2019-12-04 16:12:08', 'N'),
(6, 3, 2, '5,22,21,3,4', '5:A,22:E,21:C,3:C,4:', 0, 0, 0, '2019-12-04 16:15:56', '2019-12-04 16:16:56', 'N'),
(7, 1, 2, '4,1,2,3,21,5', '4:,1:,2:,3:,21:,5:', 0, 0, 0, '2019-12-04 16:16:35', '2019-12-04 16:17:35', 'Y'),
(8, 4, 1, '1,3,23,22,5,21,2,4', '1:,3:,23:,22:,5:,21:,2:,4:', 0, 0, 0, '2019-12-06 15:36:52', '2019-12-06 16:36:52', 'N'),
(9, 4, 2, '21,5,22,2,23,4,1,3', '21:C,5:C,22:E,2:E,23:A,4:A,1:B,3:D', 1, 13, 1, '2020-02-04 11:15:22', '2020-02-04 12:15:22', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_siswa_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_siswa_mapel` (
`id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `tr_siswa_mapel`
--

INSERT INTO `tr_siswa_mapel` (`id`, `id_siswa`, `id_mapel`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 2),
(5, 3, 3),
(6, 4, 2),
(7, 4, 3),
(8, 5, 3),
(9, 5, 4),
(10, 8, 1),
(11, 8, 2),
(12, 8, 3),
(13, 8, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_materi`
--
ALTER TABLE `m_materi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_siswa_mapel`
--
ALTER TABLE `tr_siswa_mapel`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_materi`
--
ALTER TABLE `m_materi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tr_siswa_mapel`
--
ALTER TABLE `tr_siswa_mapel`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
