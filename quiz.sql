-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2026 at 11:52 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `question` text NOT NULL,
  `answer_a` varchar(255) NOT NULL,
  `answer_b` varchar(255) NOT NULL,
  `answer_c` varchar(255) NOT NULL,
  `answer_d` varchar(255) NOT NULL,
  `correct_answer` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category`, `question`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`) VALUES
(1, 'Historia', 'W którym roku był chrzest Polski?', '966', '1025', '1410', '1795', 'A'),
(2, 'Historia', 'Kto był pierwszym królem Polski?', 'Mieszko I', 'Bolesław Chrobry', 'Kazimierz Wielki', 'Władysław Jagiełło', 'B'),
(3, 'Historia', 'Bitwa pod Grunwaldem odbyła się w?', '966', '1410', '1525', '1815', 'B'),
(4, 'Historia', 'II wojna światowa rozpoczęła się w roku?', '1914', '1939', '1945', '1920', 'B'),
(5, 'Historia', 'Starożytny Egipt leżał nad rzeką?', 'Nil', 'Tygrys', 'Eufrat', 'Amazonka', 'A'),
(6, 'Historia', 'Kto odkrył Amerykę w 1492?', 'Vasco da Gama', 'Ferdynand Magellan', 'Krzysztof Kolumb', 'Marco Polo', 'C'),
(7, 'Historia', 'Upadek Cesarstwa Zachodniorzymskiego nastąpił w?', '476', '1066', '1492', '800', 'A'),
(8, 'Historia', 'Pierwsza stolica Polski?', 'Warszawa', 'Kraków', 'Gniezno', 'Poznań', 'C'),
(9, 'Historia', 'Kto był królem Polski w czasie bitwy pod Grunwaldem?', 'Władysław Jagiełło', 'Zygmunt Stary', 'Jan III Sobieski', 'Stefan Batory', 'A'),
(10, 'Historia', 'Rewolucja francuska rozpoczęła się w?', '1789', '1812', '1917', '1683', 'A'),
(11, 'Geografia', 'Stolica Polski?', 'Kraków', 'Warszawa', 'Gdańsk', 'Wrocław', 'B'),
(12, 'Geografia', 'Największy ocean?', 'Atlantycki', 'Spokojny', 'Indyjski', 'Arktyczny', 'B'),
(13, 'Geografia', 'Najwyższy szczyt świata?', 'K2', 'Mont Blanc', 'Mount Everest', 'Kilimandżaro', 'C'),
(14, 'Geografia', 'Rzeka przepływająca przez Egipt?', 'Nil', 'Amazonka', 'Ren', 'Loara', 'A'),
(15, 'Geografia', 'Największy kontynent?', 'Afryka', 'Azja', 'Europa', 'Ameryka Płn.', 'B'),
(16, 'Geografia', 'Pustynia Sahara leży w?', 'Afryce', 'Azji', 'Europie', 'Ameryce Płd.', 'A'),
(17, 'Geografia', 'Jaka waluta w Polsce?', 'Euro', 'Złoty', 'Dolar', 'Korona', 'B'),
(18, 'Geografia', 'Największe państwo świata?', 'USA', 'Chiny', 'Rosja', 'Kanada', 'C'),
(19, 'Geografia', 'Morze Bałtyckie jest?', 'słone', 'słodkie', 'mieszane', 'radioaktywne', 'A'),
(20, 'Geografia', 'Ile kontynentów jest na Ziemi?', '5', '6', '7', '8', 'C'),
(21, 'Programowanie', 'HTML to język?', 'programowania', 'znaczników', 'bazy danych', 'systemowy', 'B'),
(22, 'Programowanie', 'PHP działa po stronie?', 'klienta', 'serwera', 'przeglądarki', 'CPU', 'B'),
(23, 'Programowanie', 'CSS służy do?', 'logiki', 'stylowania', 'bazy danych', 'kompilacji', 'B'),
(24, 'Programowanie', 'JavaScript działa w?', 'serwerze', 'przeglądarce', 'bazie', 'BIOS', 'B'),
(25, 'Programowanie', 'SQL służy do?', 'grafiki', 'baz danych', 'AI', 'systemów', 'B'),
(26, 'Programowanie', 'Który symbol oznacza komentarz w PHP?', '//', '##', '<!-- -->', '$', 'A'),
(27, 'Programowanie', 'Zmienne w PHP zaczynają się od?', '@', '$', '%', '&', 'B'),
(28, 'Programowanie', 'MySQL to?', 'język programowania', 'system baz danych', 'edytor grafiki', 'przeglądarka', 'B'),
(29, 'Programowanie', 'HTTP to protokół?', 'sieciowy', 'graficzny', 'audio', 'systemowy', 'A'),
(30, 'Programowanie', 'Który język działa w przeglądarce?', 'PHP', 'JavaScript', 'Python', 'C++', 'B');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `score` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `username`, `score`, `total_questions`, `created_at`, `category`) VALUES
(1, '', 0, 0, '2026-04-27 20:21:16', NULL),
(2, 'tymon', 5, 5, '2026-04-27 20:30:46', NULL),
(3, 'basia', 4, 5, '2026-04-27 20:33:46', NULL),
(4, 'kk', 2, 5, '2026-04-28 15:11:02', NULL),
(5, 'szymon', 5, 5, '2026-04-28 15:17:07', NULL),
(6, 'tymon', 3, 5, '2026-04-28 19:12:48', 'programowanie'),
(7, 'Janek', 4, 5, '2026-04-28 19:13:48', 'geografia'),
(8, 'Janek', 4, 5, '2026-04-28 19:14:25', 'historia'),
(9, 'Joanna', 4, 5, '2026-04-28 19:19:44', 'programowanie'),
(10, 'Basia', 5, 5, '2026-04-28 19:23:54', 'geografia'),
(11, 'Alicja', 5, 5, '2026-04-28 19:35:46', 'programowanie'),
(12, 'olaf', 0, 0, '2026-04-28 20:06:19', 'geografia'),
(13, 'Anna', 3, 4, '2026-04-28 20:17:26', 'geografia'),
(14, 'Pola', 1, 5, '2026-04-28 20:24:27', 'geografia'),
(15, 'Julia', 3, 5, '2026-04-28 20:44:35', 'geografia'),
(16, 'Julia', 3, 5, '2026-04-28 20:47:04', 'geografia'),
(17, 'Julia', 3, 5, '2026-04-28 20:49:28', 'geografia'),
(18, 'Julia', 3, 5, '2026-04-28 20:50:30', 'geografia'),
(19, 'kuba', 3, 5, '2026-04-28 20:54:22', 'geografia'),
(20, 'anna', 5, 5, '2026-04-28 20:58:55', 'programowanie'),
(21, 'Kamil', 2, 5, '2026-04-28 21:01:27', 'historia'),
(22, 'ola', 0, 0, '2026-04-28 21:34:10', 'geografia'),
(23, 'Joanna', 5, 5, '2026-04-28 21:35:08', 'programowanie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

