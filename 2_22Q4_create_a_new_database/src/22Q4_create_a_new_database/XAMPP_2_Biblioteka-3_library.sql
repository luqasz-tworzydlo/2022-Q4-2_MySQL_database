-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 12:28 AM
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
-- Database: `3_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `bibliotekarz`
--

CREATE TABLE `bibliotekarz` (
  `id` int(11) NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `data_zatrudnienia` date NOT NULL,
  `liczba_ksiazek_wypozyczonych` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `bibliotekarz`
--

INSERT INTO `bibliotekarz` (`id`, `nazwisko`, `data_zatrudnienia`, `liczba_ksiazek_wypozyczonych`) VALUES
(1, 'Czaso', '2020-01-23', 15),
(2, 'Kas', '2022-05-14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `klient`
--

CREATE TABLE `klient` (
  `id` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `liczba_pozyczonych_ksiazek` int(1) NOT NULL,
  `termin_oddania_ksiazek` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` (`id`, `imie`, `nazwisko`, `liczba_pozyczonych_ksiazek`, `termin_oddania_ksiazek`) VALUES
(1, 'Nowa', 'Nowakowska', 2, '2022-11-14'),
(2, 'Na', 'Nudne', 0, '0000-00-00'),
(3, '', 'Nieznany', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ksiazka`
--

CREATE TABLE `ksiazka` (
  `id` int(11) NOT NULL,
  `autor` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `tytul` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL,
  `rok_wydania` int(4) NOT NULL,
  `wydawnictwo` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `numer_ISBN` varchar(17) COLLATE utf8mb4_polish_ci NOT NULL,
  `czy_wypozyczona` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ksiazka`
--

INSERT INTO `ksiazka` (`id`, `autor`, `tytul`, `rok_wydania`, `wydawnictwo`, `numer_ISBN`, `czy_wypozyczona`) VALUES
(1, 'Anonim', 'Jak być i jak nie być', 2022, 'Anonimoo', '986-32-456-4354-2', 0),
(2, 'Anonim1234', 'Przyszłość i przeszłość', 1752, 'Anonimoo', '986-32-456-4354-2', 1),
(3, 'AL', 'Jak to było', 1752, 'ABCDEFG', '986-32-456-4354-2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wypozyczenie`
--

CREATE TABLE `wypozyczenie` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `id_pracownik_biblioteki` int(11) NOT NULL,
  `czy_oddana` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `wypozyczenie`
--

INSERT INTO `wypozyczenie` (`id`, `id_klienta`, `id_ksiazki`, `id_pracownik_biblioteki`, `czy_oddana`) VALUES
(1, 1, 2, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `klient`
--
ALTER TABLE `klient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ksiazka`
--
ALTER TABLE `ksiazka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
