-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 31, 2018 at 09:52 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `massage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id_user`, `nama`, `email`, `massage`) VALUES
(1, 'ONPHPID', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Regha', 'member', 'aa08769cdcb26674c6706093503ff0a3'),
(3, 'admin', 'admin', '0192023a7bbd73250516f069df18b500'),
(4, 'aku', 'akukamu', 'a42d640365f9ba18208ab059cd068e09');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nohp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`id_user`, `nama`, `email`, `nohp`) VALUES
(1, 'ONPHPID', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Regha', 'member', 'aa08769cdcb26674c6706093503ff0a3'),
(3, 'admin', 'admin', '0192023a7bbd73250516f069df18b500'),
(4, 'aku', 'akukamu', 'a42d640365f9ba18208ab059cd068e09'),
(5, 'dijah', 'dijah', 'fa13f6c9173b03b1709d9352f186515b'),
(6, 'sdadjsh', 'sadhsjdhj', '123'),
(7, 'asdjasdjjh', 'ashdjash', 'asdjasd'),
(8, 'aku', 'ashdjash', 'asdjasd'),
(9, 'aku', '', 'asdjasd'),
(10, 'rizki', '', 'asdas'),
(11, 'jojo', 'jojo2gmail,com', 'ini pesan kiu'),
(12, 'aku', 'kamu@gmail.com', '09192919');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `level_user` varchar(150) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`) VALUES
(11, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
