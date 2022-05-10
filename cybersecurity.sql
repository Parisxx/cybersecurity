-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 mei 2022 om 09:49
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
-- Tabelstructuur voor tabel `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `questions`
--

INSERT INTO `questions` (`q_id`, `question`, `is_enabled`) VALUES
(1, 'What is cybersecurity?', 1),
(2, 'Question?', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `quiz_answer`
--

CREATE TABLE `quiz_answer` (
  `qa_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `option_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `quiz_answer`
--

INSERT INTO `quiz_answer` (`qa_id`, `q_id`, `option_number`) VALUES
(1, 1, 2),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `quiz_options`
--

CREATE TABLE `quiz_options` (
  `option_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `quiz_options`
--

INSERT INTO `quiz_options` (`option_id`, `q_id`, `option`, `is_enabled`) VALUES
(1, 1, 'Answer.', 1),
(2, 1, 'Answer.', 1),
(3, 1, 'Answer.', 1),
(4, 1, 'Answer', 1),
(5, 2, 'Answer.', 1),
(6, 2, 'Answer.', 1),
(7, 2, 'Answer.', 1),
(8, 2, 'Answer.', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexen voor tabel `quiz_answer`
--
ALTER TABLE `quiz_answer`
  ADD PRIMARY KEY (`qa_id`);

--
-- Indexen voor tabel `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`option_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `quiz_answer`
--
ALTER TABLE `quiz_answer`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
