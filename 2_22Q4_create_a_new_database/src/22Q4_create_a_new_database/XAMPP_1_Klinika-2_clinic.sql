-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 12:27 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2_clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `lekarz`
--

CREATE TABLE `lekarz` (
  `id` int(11) NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `specjalizacja` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `staz_pracy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `lekarz`
--

INSERT INTO `lekarz` (`id`, `nazwisko`, `specjalizacja`, `staz_pracy`) VALUES
(1, 'Nudny', 'internista', 4),
(2, 'Miły', 'pediatra', 3),
(3, 'Pracowity', 'pediatra', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pacjent`
--

CREATE TABLE `pacjent` (
  `id` int(11) NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `pesel` varchar(11) COLLATE utf8mb4_polish_ci NOT NULL,
  `data_urodzenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `pacjent`
--

INSERT INTO `pacjent` (`id`, `nazwisko`, `pesel`, `data_urodzenia`) VALUES
(1, 'Kowalski', '54835738955', '1944-01-23'),
(2, 'Nowak', '54860493211', '2014-07-12'),
(3, 'Anonim', '54765959431', '2000-10-12'),
(4, 'Tajemnic', '89504356890', '1990-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `recepta`
--

CREATE TABLE `recepta` (
  `id` int(11) NOT NULL,
  `opis` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL,
  `czy_zrealizowana` varchar(3) COLLATE utf8mb4_polish_ci NOT NULL,
  `data_waznosci` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `recepta`
--

INSERT INTO `recepta` (`id`, `opis`, `czy_zrealizowana`, `data_waznosci`) VALUES
(1, 'trilac 500 mg dwie tabletki rano i wieczorem, smecta 25 g rano jedna saszetka', 'nie', '2022-11-24'),
(2, 'antybiotyk An42 codziennie przez tydzień, osłonowo P23 30 minut przed antybiotykiem', 'nie', '2022-12-08'),
(3, 'Feverin 500 trzy razy dziennie', 'tak', '2022-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `wizyta`
--

CREATE TABLE `wizyta` (
  `id` int(11) NOT NULL,
  `id_pacjent` int(11) NOT NULL,
  `id_lekarz` int(11) NOT NULL,
  `data` date NOT NULL,
  `opis` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_recepty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `wizyta`
--

INSERT INTO `wizyta` (`id`, `id_pacjent`, `id_lekarz`, `data`, `opis`, `id_recepty`) VALUES
(1, 1, 1, '2022-11-08', 'zapalenie pluc, mocna infekcja bakteryjna', 2),
(2, 2, 2, '2022-10-24', 'rozwolnienie, bóle w okolicach jelit', 1),
(3, 3, 1, '2022-10-10', 'gorączka 39 stopnii', 3),
(4, 4, 1, '2022-11-09', 'nie pojawił się pacjent na wizycie', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lekarz`
--
ALTER TABLE `lekarz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacjent`
--
ALTER TABLE `pacjent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recepta`
--
ALTER TABLE `recepta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wizyta`
--
ALTER TABLE `wizyta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lekarz`
--
ALTER TABLE `lekarz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pacjent`
--
ALTER TABLE `pacjent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recepta`
--
ALTER TABLE `recepta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wizyta`
--
ALTER TABLE `wizyta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
