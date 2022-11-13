-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Lis 2022, 13:52
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kino_kodzik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `rezyser` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `kraj_produkcji` varchar(30) NOT NULL,
  `rok_produkcji` smallint(6) NOT NULL,
  `czas_trwania` smallint(6) NOT NULL,
  `minimalny_wiek` tinyint(4) NOT NULL,
  `opis` varchar(1000) NOT NULL,
  `gatunek` varchar(40) NOT NULL,
  `trailer_link` varchar(512) NOT NULL,
  `plakat` varchar(512) NOT NULL,
  `oryginalna_nazwa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id`, `rezyser`, `nazwa`, `kraj_produkcji`, `rok_produkcji`, `czas_trwania`, `minimalny_wiek`, `opis`, `gatunek`, `trailer_link`, `plakat`, `oryginalna_nazwa`) VALUES
(1, 1, 'WŁADCA PIERŚCIENI: DWIE WIEŻE', 'Nowa Zelandia / USA', 2002, 179, 12, 'Drużyna Pierścienia zostaje rozbita, lecz zdesperowany Frodo za wszelką cenę chce wypełnić powierzone mu zadanie. Aragorn z towarzyszami przygotowuje się, by odeprzeć atak hord Sarumana.', 'Fantasy / Przygodowy', 'https://www.youtube.com/watch?v=hYcw5ksV8YQ', 'https://fwcdn.pl/fpo/14/51/31451/7877022.6.jpg', 'The Lord of the Rings: The Two Towers'),
(2, 2, 'MROCZNY RYCERZ', 'USA / Wielka Brytania', 2008, 152, 13, 'W nowym filmie Batman podejmuje szeroko zakrojoną walkę z przestępczością. Z pomocą porucznika Jima Gordona i prokuratora okręgowego Harveya Denta zabiera się za rozpracowywanie istniejących organizacji przestępczych nękających mieszkańców miasta. Współpraca przynosi efekty, ale bohaterowie wkrótce padną ofiarą chaosu, który rozpęta rosnący w siłę genialny przestępca, znany przerażonym mieszkańcom Gotham jako Joker.', 'Akcja / Sci-Fi', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', 'https://fwcdn.pl/fpo/63/51/236351/7223714.6.jpg', 'The Dark Knight'),
(3, 3, ' WALL·E', 'USA', 2008, 98, 5, 'Co się stanie, jeżeli ludzie opuszczą kiedyś Ziemię i pozostanie na niej jedynie mały robot? WALL.E (Wysypiskowy Automat Likwidująco Lewarujący. E-klasa) przez siedemset lat w samotności oczyszcza Ziemię z odpadów pozostawionych przez ludzi. Pewnego dnia na planetę przybywa EVE – nowoczesna, przepiękna, myśląca maszyna. Tego dnia życie WALL.E’ego zupełnie się zmienia i nabiera nowego sensu. Jego podróż przez galaktykę, przyjaźń z EVE, zabawne przygody oraz nowi, niekiedy niezwykli przyjaciele stali się tematem najnowszej komedii Studia Pixar.', 'Animacja / Familijny / Sci-Fi', 'https://www.youtube.com/watch?v=CZ1CATNbXg0', 'https://fwcdn.pl/fpo/93/28/399328/7197316.6.jpg', 'WALL·E'),
(4, 4, ' ZIELONA MILA', 'USA', 1999, 188, 16, 'Rok 1935. Paul Edgecombe (Tom Hanks) jest jednym ze strażników bloku śmierci w więzieniu Cold Mountain. Do jego obowiązków należy odprowadzanie skazańców do celi śmierci długim korytarzem, wyłożonym zieloną wykładziną, zwaną \"Zieloną milą\". Pewnego dnia do więzienia przybywa olbrzymi czarnoskóry skazaniec, John Coffey (Michael Clarke Duncan). Ma oczekiwać na karę śmierci za zamordowanie dwóch białych dziewczynek. Jego wizyta na zawsze zmieni życie Paula i pozostałych pracowników więzienia. ', 'Dramat', 'https://www.youtube.com/watch?v=Ki4haFrqSrw', 'https://fwcdn.pl/fpo/08/62/862/7517878.6.jpg', 'The Green Mile'),
(5, 4, 'SKAZANI NA SHAWSHANK', 'USA', 1994, 142, 16, 'Film nakręcony na podstawie książki mistrza horrorów Stephena Kinga. Andy Dufresne (Tim Robbins), dobrze zarabiający bankier z Nowej Anglii, zostaje oskarżony o podwójne zabójstwo - swojej żony i jej kochanka. Uparcie twierdzi, że jest niewinny, ale dzięki niezbitym dowodom zostaje skazany na podwójne dożywocie w więzieniu Shawshank. Shawshank rządzi hipokryta i fanatyk biblijny, naczelnik Norton (Bob Gunton), a wraz z nim sadystyczni strażnicy. Andy już po kilku dniach poznaje brutalną, więzienną rzeczywistość, ale dzięki wrodzonej inteligencji, sprytowi oraz pomocy przyjaciela Ellisa Boyda \"Reda\" Reddinga (Morgan Freeman) udaje mu się zachować nadzieję, która pozwoli dokonać zemsty. ', 'Dramat', 'https://www.youtube.com/watch?v=NmzuHjWmXOc', 'https://fwcdn.pl/fpo/10/48/1048/8016333.6.jpg', 'The Shawshank Redemption'),
(6, 5, ' NIETYKALNI', ' Francja', 2011, 112, 16, 'Ta historia zdarzyła się naprawdę. Sparaliżowany na skutek wypadku milioner zatrudnia do pomocy i opieki młodego chłopaka z przedmieścia, który właśnie wyszedł z więzienia. Zderzenie dwóch skrajnie różnych światów daje początek szeregowi niewiarygodnych przygód i przyjaźni, która czyni ich... nietykalnymi.', 'Biograficzny / Dramat / Komedia', 'https://www.youtube.com/watch?v=oK5hMNxqsFA', 'https://fwcdn.pl/fpo/33/90/583390/7752240.6.jpg', 'Intouchables'),
(7, 6, ' JOKER', 'USA / Kanada', 2019, 122, 16, 'Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera. Przedstawiony przez Phillipsa obraz śledzi losy kultowego czarnego charakteru, człowieka zepchniętego na margines. To nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.', 'Dramat / Kryminał / Psychologiczny', 'https://www.youtube.com/watch?v=t433PEQGErc', 'https://fwcdn.pl/fpo/01/67/810167/7905225.6.jpg', ' JOKER'),
(8, 7, 'PIANISTA', 'Francja / Polska / Wielka Bryt', 2002, 150, 16, 'Ekranizacja wspomnień Władysława Szpilmana. W roli głównej Adrien Brody (\"Cienka czerwona linia\", \"Mordercze lato\").  Władysław Szpilman, wybitny polski pianista żydowskiego pochodzenia żyje w warszawskim getcie. Dzieli tam okrutny los i upokorzenie swojego narodu. Przed ostateczną \"wywózką\" mieszkańców getta do obozów zagłady udaje mu się stamtąd uciec. Ukrywa się samotnie w ruinach Warszawy. Niespodziewanie to przyjaźń z niemieckim oficerem pozwoli mu przetrwać najcięższy okres...', 'Biograficzny / Dramat / Wojenny', 'https://www.youtube.com/watch?v=BFwGqLa_oAo', 'https://fwcdn.pl/fpo/22/25/32225/7519150.6.jpg', 'The Pianist');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `godziny`
--

CREATE TABLE `godziny` (
  `id` int(11) NOT NULL,
  `id_repertuar` int(11) NOT NULL,
  `godzina` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konta`
--

CREATE TABLE `konta` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `haslo` varchar(50) NOT NULL,
  `nr_telefonu` varchar(16) NOT NULL,
  `imie` varchar(35) NOT NULL,
  `nazwisko` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `repertuar`
--

CREATE TABLE `repertuar` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `film` int(11) NOT NULL,
  `napisy` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `rez_column` int(11) NOT NULL,
  `rez_row` int(11) NOT NULL,
  `id_repertuar` int(11) NOT NULL,
  `id_godzina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rezerwacje`
--

INSERT INTO `rezerwacje` (`id`, `id_klienta`, `rez_column`, `rez_row`, `id_repertuar`, `id_godzina`) VALUES
(1, 1, 3, 4, 5, 1),
(2, 2, 2, 5, 5, 1),
(3, 1, 4, 2, 5, 1),
(4, 1, 7, 4, 5, 1),
(5, 1, 9, 5, 5, 1),
(6, 1, 10, 6, 5, 1),
(7, 1, 5, 7, 5, 1),
(8, 1, 8, 7, 5, 1),
(9, 1, 10, 3, 5, 1),
(10, 1, 13, 7, 5, 1),
(11, 1, 2, 7, 5, 1),
(12, 1, 12, 5, 5, 1),
(13, 1, 10, 9, 5, 1),
(14, 1, 9, 3, 5, 1),
(15, 1, 8, 2, 5, 1),
(16, 1, 14, 2, 5, 1),
(17, 1, 14, 5, 5, 1),
(18, 1, 12, 9, 5, 1),
(19, 1, 12, 8, 5, 1),
(20, 1, 13, 8, 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyser`
--

CREATE TABLE `rezyser` (
  `id` int(11) NOT NULL,
  `imie` varchar(35) NOT NULL,
  `nazwisko` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rezyser`
--

INSERT INTO `rezyser` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Peter', 'Jackson'),
(2, 'Christopher', 'Nolan'),
(3, 'Andrew', 'Stanton'),
(4, 'Frank', 'Darabont'),
(5, 'Olivier', 'Nakache'),
(6, 'Todd', 'Phillips'),
(7, 'Roman', 'Polański');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `temp_rezerwacje`
--

CREATE TABLE `temp_rezerwacje` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `rez_column` int(11) NOT NULL,
  `rez_row` int(11) NOT NULL,
  `id_repertuar` int(11) NOT NULL,
  `id_godzina` int(11) NOT NULL,
  `czas` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `link` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`id`, `id_film`, `link`) VALUES
(1, 1, '1. https://fwcdn.pl/fpo/14/51/31451/7748718.6.jpg\r\n2. https://fwcdn.pl/fpo/14/51/31451/7759412.6.jpg\r\n3. https://fwcdn.pl/fpo/14/51/31451/7759411.6.jpg'),
(2, 2, '1. https://fwcdn.pl/fpo/63/51/236351/7377377.6.jpg\r\n2. https://fwcdn.pl/fpo/63/51/236351/7197701.6.jpg\r\n3. https://fwcdn.pl/fpo/63/51/236351/7377376.6.jpg'),
(3, 3, '1. https://fwcdn.pl/fpo/93/28/399328/8035692.6.jpg\r\n2. https://fwcdn.pl/fpo/93/28/399328/7232124_1.6.jpg\r\n3. https://fwcdn.pl/fpo/93/28/399328/7174344.6.jpg'),
(4, 4, '1. https://fwcdn.pl/fpo/08/62/862/8016669.6.jpg\r\n2. https://fwcdn.pl/fpo/08/62/862/7542683.6.jpg\r\n3. https://fwcdn.pl/fpo/08/62/862/7097170.6.jpg'),
(5, 5, '1. https://fwcdn.pl/fpo/10/48/1048/7542854.6.jpg\r\n2. https://fwcdn.pl/fpo/10/48/1048/7542853.6.jpg\r\n3. https://fwcdn.pl/fpo/10/48/1048/7542688.6.jpg'),
(6, 6, '1. https://fwcdn.pl/fpo/33/90/583390/7463075.6.jpg'),
(7, 7, '1. https://fwcdn.pl/fpo/01/67/810167/7909676.6.jpg\r\n2. https://fwcdn.pl/fpo/01/67/810167/7909675.6.jpg\r\n3. https://fwcdn.pl/fpo/01/67/810167/7901152.6.jpg'),
(8, 8, 'https://fwcdn.pl/fpo/22/25/32225/7107713.6.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `godziny`
--
ALTER TABLE `godziny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `konta`
--
ALTER TABLE `konta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `repertuar`
--
ALTER TABLE `repertuar`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezyser`
--
ALTER TABLE `rezyser`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `temp_rezerwacje`
--
ALTER TABLE `temp_rezerwacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `godziny`
--
ALTER TABLE `godziny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `konta`
--
ALTER TABLE `konta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `repertuar`
--
ALTER TABLE `repertuar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `rezyser`
--
ALTER TABLE `rezyser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `temp_rezerwacje`
--
ALTER TABLE `temp_rezerwacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
