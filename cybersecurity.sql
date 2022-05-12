-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 12 mei 2022 om 10:11
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cybersecurity`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ans1` varchar(255) NOT NULL,
  `ans2` varchar(255) NOT NULL,
  `ans3` varchar(255) NOT NULL,
  `ans4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `quiz`
--

INSERT INTO `quiz` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`) VALUES
(1, 'Vraag?', 'Answer 1.', 'Answer 2.', 'Answer 3.', 'Answer 4.');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
