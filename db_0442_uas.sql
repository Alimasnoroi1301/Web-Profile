-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 05:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_0442_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogku`
--

CREATE TABLE `blogku` (
  `judul` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `konten` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogku`
--

INSERT INTO `blogku` (`judul`, `tanggal`, `gambar`, `konten`) VALUES
('I am a student from AMIKOM Yogyakarta University', 'Friday, November 20, 2020', NULL, 'Hello everyone, I am a student at Amikom University, majoring in computer engineering. Currently I am in semester 3.\r\nMy future plan is attending the basic classes and preparing for the master degree. I also hope that I can add more knowledge in foreign language when I’m in this college. I look forward to have a productive semester and improve my skills!');

-- --------------------------------------------------------

--
-- Table structure for table `dataku`
--

CREATE TABLE `dataku` (
  `id` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `nomor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataku`
--

INSERT INTO `dataku` (`id`, `nim`, `nama`, `prodi`, `email`, `asal`, `nomor`) VALUES
(1, '19.83.0442', 'Ali Akbar Masnoroi', 'Teknik Komputer 02', 'ali.masnoroi@students.amikom.ac.id', 'Kota Yogyakarta', '0895391132754');

-- --------------------------------------------------------

--
-- Table structure for table `gambarku`
--

CREATE TABLE `gambarku` (
  `judul1` varchar(255) DEFAULT NULL,
  `judul2` varchar(255) DEFAULT NULL,
  `judul3` varchar(255) DEFAULT NULL,
  `gambar1` varchar(255) DEFAULT NULL,
  `gambar2` varchar(255) DEFAULT NULL,
  `gambar3` varchar(255) DEFAULT NULL,
  `deskripsi1` varchar(255) DEFAULT NULL,
  `deskripsi2` varchar(255) DEFAULT NULL,
  `deskripsi3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambarku`
--

INSERT INTO `gambarku` (`judul1`, `judul2`, `judul3`, `gambar1`, `gambar2`, `gambar3`, `deskripsi1`, `deskripsi2`, `deskripsi3`) VALUES
('Ajisaka: The King and The Flower of Life', 'November 10th, Battle of Surabaya', 'Petualangan Abdan', '1-big.jpg', '2-big.jpg', 'no_image.png', 'A sacred kid fulfills an old prophecy by fighting against an immortal evil king who rules the world by absorbing magic flowers energy.\r\n', 'Musa, a thirteen-year-old shoe shiner, with Yumna, undergoes destiny through their adventure of waging war during the war time. Will they manage to bring peace among the troops keeping on fighting for nothing?', 'Perjuangan seorang anak mencari kebenaran akan kedua orang tuanya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogku`
--
ALTER TABLE `blogku`
  ADD PRIMARY KEY (`judul`);

--
-- Indexes for table `dataku`
--
ALTER TABLE `dataku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataku`
--
ALTER TABLE `dataku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
