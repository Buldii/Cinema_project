-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Lis 2022, 22:41
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

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
(3, 3, 'WALL·E', 'USA', 2008, 98, 5, 'Co się stanie, jeżeli ludzie opuszczą kiedyś Ziemię i pozostanie na niej jedynie mały robot? WALL.E (Wysypiskowy Automat Likwidująco Lewarujący. E-klasa) przez siedemset lat w samotności oczyszcza Ziemię z odpadów pozostawionych przez ludzi. Pewnego dnia na planetę przybywa EVE – nowoczesna, przepiękna, myśląca maszyna. Tego dnia życie WALL.E’ego zupełnie się zmienia i nabiera nowego sensu. Jego podróż przez galaktykę, przyjaźń z EVE, zabawne przygody oraz nowi, niekiedy niezwykli przyjaciele stali się tematem najnowszej komedii Studia Pixar.', 'Animacja / Familijny / Sci-Fi', 'https://www.youtube.com/watch?v=CZ1CATNbXg0', 'https://fwcdn.pl/fpo/93/28/399328/7197316.6.jpg', 'WALL·E'),
(4, 4, 'ZIELONA MILA', 'USA', 1999, 188, 16, 'Rok 1935. Paul Edgecombe (Tom Hanks) jest jednym ze strażników bloku śmierci w więzieniu Cold Mountain. Do jego obowiązków należy odprowadzanie skazańców do celi śmierci długim korytarzem, wyłożonym zieloną wykładziną, zwaną \"Zieloną milą\". Pewnego dnia do więzienia przybywa olbrzymi czarnoskóry skazaniec, John Coffey (Michael Clarke Duncan). Ma oczekiwać na karę śmierci za zamordowanie dwóch białych dziewczynek. Jego wizyta na zawsze zmieni życie Paula i pozostałych pracowników więzienia. ', 'Dramat', 'https://www.youtube.com/watch?v=Ki4haFrqSrw', 'https://fwcdn.pl/fpo/08/62/862/7517878.6.jpg', 'The Green Mile'),
(5, 4, 'SKAZANI NA SHAWSHANK', 'USA', 1994, 142, 16, 'Film nakręcony na podstawie książki mistrza horrorów Stephena Kinga. Andy Dufresne (Tim Robbins), dobrze zarabiający bankier z Nowej Anglii, zostaje oskarżony o podwójne zabójstwo - swojej żony i jej kochanka. Uparcie twierdzi, że jest niewinny, ale dzięki niezbitym dowodom zostaje skazany na podwójne dożywocie w więzieniu Shawshank. Shawshank rządzi hipokryta i fanatyk biblijny, naczelnik Norton (Bob Gunton), a wraz z nim sadystyczni strażnicy. Andy już po kilku dniach poznaje brutalną, więzienną rzeczywistość, ale dzięki wrodzonej inteligencji, sprytowi oraz pomocy przyjaciela Ellisa Boyda \"Reda\" Reddinga (Morgan Freeman) udaje mu się zachować nadzieję, która pozwoli dokonać zemsty. ', 'Dramat', 'https://www.youtube.com/watch?v=NmzuHjWmXOc', 'https://fwcdn.pl/fpo/10/48/1048/8016333.6.jpg', 'The Shawshank Redemption'),
(6, 5, 'NIETYKALNI', ' Francja', 2011, 112, 16, 'Ta historia zdarzyła się naprawdę. Sparaliżowany na skutek wypadku milioner zatrudnia do pomocy i opieki młodego chłopaka z przedmieścia, który właśnie wyszedł z więzienia. Zderzenie dwóch skrajnie różnych światów daje początek szeregowi niewiarygodnych przygód i przyjaźni, która czyni ich... nietykalnymi.', 'Biograficzny / Dramat / Komedia', 'https://www.youtube.com/watch?v=oK5hMNxqsFA', 'https://fwcdn.pl/fpo/33/90/583390/7752240.6.jpg', 'Intouchables'),
(7, 6, 'JOKER', 'USA / Kanada', 2019, 122, 16, 'Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera. Przedstawiony przez Phillipsa obraz śledzi losy kultowego czarnego charakteru, człowieka zepchniętego na margines. To nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.', 'Dramat / Kryminał / Psychologiczny', 'https://www.youtube.com/watch?v=t433PEQGErc', 'https://fwcdn.pl/fpo/01/67/810167/7905225.6.jpg', 'JOKER'),
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

--
-- Zrzut danych tabeli `godziny`
--

INSERT INTO `godziny` (`id`, `id_repertuar`, `godzina`) VALUES
(1, 1, '10:30:00'),
(2, 1, '12:00:00'),
(3, 1, '13:00:00'),
(4, 2, '17:00:00'),
(5, 3, '19:00:00'),
(6, 4, '10:00:00'),
(7, 5, '17:00:00'),
(8, 6, '18:30:00'),
(9, 7, '15:00:00'),
(10, 7, '14:15:00');

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

--
-- Zrzut danych tabeli `konta`
--

INSERT INTO `konta` (`id`, `login`, `email`, `haslo`, `nr_telefonu`, `imie`, `nazwisko`) VALUES
(1, 'Admin', 'dfsafsd@onet.pl', '1234', '123456788', 'Krysatsda', 'dsadsadas'),
(2, 'Admin2', 'asdas@sdfas', '1234', '12354765759', 'asda', 'dasdas');

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

--
-- Zrzut danych tabeli `repertuar`
--

INSERT INTO `repertuar` (`id`, `data`, `film`, `napisy`) VALUES
(1, '2022-11-16', 1, 1),
(2, '2022-11-16', 2, 0),
(3, '2022-11-16', 3, 1),
(4, '2022-11-17', 4, 1),
(5, '2022-11-17', 5, 0),
(6, '2022-11-17', 6, 0),
(7, '2022-11-18', 7, 1);

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
(2, 2, 2, 5, 5, 1),
(10, 1, 13, 7, 5, 1),
(18, 1, 12, 9, 5, 1),
(19, 1, 12, 8, 5, 1),
(20, 1, 13, 8, 5, 1),
(38, 1, 1, 1, 1, 2),
(41, 1, 2, 1, 1, 2),
(47, 1, 4, 1, 1, 2),
(52, 2, 2, 4, 1, 1),
(53, 2, 2, 3, 1, 1),
(54, 2, 1, 5, 1, 1),
(55, 2, 3, 5, 1, 1),
(77, 1, 12, 7, 1, 1),
(91, 2, 4, 5, 1, 1),
(92, 2, 3, 6, 1, 1),
(93, 2, 4, 6, 1, 1),
(94, 1, 12, 6, 1, 1),
(95, 1, 13, 6, 1, 1),
(96, 1, 12, 5, 1, 1);

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
(12, 1, 'https://a.ltrbxd.com/resized/sm/upload/l5/j6/zw/ib/lotr-the-two-towers-1200-1200-675-675-crop-000000.jpg?v=c3ae1188ea'),
(13, 1, 'https://legendary-digital-network-assets.s3.amazonaws.com/wp-content/uploads/2022/08/23111114/The-Two-Towers-4.jpg'),
(14, 1, 'https://images.indianexpress.com/2019/08/the-two-towers-759.jpg'),
(15, 2, 'https://m.media-amazon.com/images/M/MV5BMTM2MjI4MzU1NV5BMl5BanBnXkFtZTcwOTgzMTk2Mw@@._V1_.jpg'),
(16, 2, 'https://s3.amazonaws.com/static.rogerebert.com/uploads/review/primary_image/reviews/the-dark-knight-2008/dark-knight.jpg'),
(17, 2, 'https://s3.viva.pl/newsy/kadr-z-filmu-mroczny-rycerzgalapagos-films-428992-MT.jpg'),
(18, 3, 'https://d-tm.ppstatic.pl/kadry/1a/57/c1604c717078256513fdd67bd7de.1000.jpg'),
(19, 3, 'https://fwcdn.pl/fph/93/28/399328/134826.3.jpg'),
(20, 3, 'https://www.justwatch.com/images/backdrop/8720548/s640/wall-e'),
(21, 4, 'https://www.denofgeek.com/wp-content/uploads/2022/02/The-Green-Mile-Hanks-Duncan.jpg?fit=1600%2C1000'),
(22, 4, 'https://i.ytimg.com/vi/q-u8OXUxz-8/maxresdefault.jpg'),
(23, 4, 'https://movies-b26f.kxcdn.com/wp-content/uploads/2020/07/thegreenmile2-770x470.jpg'),
(24, 5, 'https://m.media-amazon.com/images/M/MV5BNTYxOTYyMzE3NV5BMl5BanBnXkFtZTcwOTMxNDY3Mw@@._V1_.jpg'),
(25, 5, 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/02/09/09/ShawshankRedempt_184Pyxurz.jpg?quality=75&width=982&height=726&auto=webp'),
(26, 5, 'https://i.ytimg.com/vi/PLl99DlL6b4/maxresdefault.jpg'),
(27, 6, 'https://images.mubicdn.net/images/film/89573/cache-122457-1649194960/image-w1280.jpg?size=800x'),
(28, 6, 'https://m.media-amazon.com/images/M/MV5BMjI4MTk0ODA1OV5BMl5BanBnXkFtZTcwMjQ5NzQ3Nw@@._V1_.jpg'),
(29, 6, 'https://fwcdn.pl/fph/33/90/583390/300445.1.jpg'),
(30, 7, 'https://magivanga.files.wordpress.com/2019/10/joker_kadr.jpg?w=1200'),
(31, 7, 'https://i0.wp.com/okiemfilmoholika.pl/wp-content/uploads/2019/10/Joker-20191.png?resize=805%2C438&ssl=1'),
(32, 7, 'https://fwcdn.pl/webv/97/04/49704/a1.49704.4.jpg'),
(33, 8, 'https://imgtoolkit.culturebase.org/?color=FFFFFF&quality=8&ar_ratio=1.3&format=jpg&file=https%3A%2F%2Fimg.culturebase.org%2F3%2F6%2F9%2F3%2Fe%2Fpic_1505222298_3693e325e06cd1a4669d09ca2beba6a7.jpeg&do=cropOut&width=1200&height=780'),
(34, 8, 'https://www.pluggedin.com/wp-content/uploads/2019/12/the-pianist.png'),
(35, 8, 'https://imgs.classicfm.com/images/125694?crop=16_9&width=660&relax=1&signature=1gU2noGiBKqIdvJuUk6Pj4BzeKk=');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `konta`
--
ALTER TABLE `konta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `repertuar`
--
ALTER TABLE `repertuar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT dla tabeli `rezyser`
--
ALTER TABLE `rezyser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
