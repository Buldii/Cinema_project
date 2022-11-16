-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Lis 2022, 13:54
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
(3, 3, 'WALL·E', 'USA', 2008, 98, 5, 'Co się stanie, jeżeli ludzie opuszczą kiedyś Ziemię i pozostanie na niej jedynie mały robot? WALL.E (Wysypiskowy Automat Likwidująco Lewarujący. E-klasa) przez siedemset lat w samotności oczyszcza Ziemię z odpadów pozostawionych przez ludzi. Pewnego dnia na planetę przybywa EVE – nowoczesna, przepiękna, myśląca maszyna. Tego dnia życie WALL.E’ego zupełnie się zmienia i nabiera nowego sensu. Jego podróż przez galaktykę, przyjaźń z EVE, zabawne przygody oraz nowi, niekiedy niezwykli przyjaciele stali się tematem najnowszej komedii Studia Pixar.', 'Animacja / Familijny / Sci-Fi', 'https://www.youtube.com/watch?v=CZ1CATNbXg0', 'https://fwcdn.pl/fpo/93/28/399328/7197316.6.jpg', 'WALL·E'),
(4, 4, 'ZIELONA MILA', 'USA', 1999, 188, 16, 'Rok 1935. Paul Edgecombe (Tom Hanks) jest jednym ze strażników bloku śmierci w więzieniu Cold Mountain. Do jego obowiązków należy odprowadzanie skazańców do celi śmierci długim korytarzem, wyłożonym zieloną wykładziną, zwaną \"Zieloną milą\". Pewnego dnia do więzienia przybywa olbrzymi czarnoskóry skazaniec, John Coffey (Michael Clarke Duncan). Ma oczekiwać na karę śmierci za zamordowanie dwóch białych dziewczynek. Jego wizyta na zawsze zmieni życie Paula i pozostałych pracowników więzienia. ', 'Dramat', 'https://www.youtube.com/watch?v=Ki4haFrqSrw', 'https://fwcdn.pl/fpo/08/62/862/7517878.6.jpg', 'The Green Mile'),
(5, 4, 'SKAZANI NA SHAWSHANK', 'USA', 1994, 142, 16, 'Film nakręcony na podstawie książki mistrza horrorów Stephena Kinga. Andy Dufresne (Tim Robbins), dobrze zarabiający bankier z Nowej Anglii, zostaje oskarżony o podwójne zabójstwo - swojej żony i jej kochanka. Uparcie twierdzi, że jest niewinny, ale dzięki niezbitym dowodom zostaje skazany na podwójne dożywocie w więzieniu Shawshank. Shawshank rządzi hipokryta i fanatyk biblijny, naczelnik Norton (Bob Gunton), a wraz z nim sadystyczni strażnicy. Andy już po kilku dniach poznaje brutalną, więzienną rzeczywistość, ale dzięki wrodzonej inteligencji, sprytowi oraz pomocy przyjaciela Ellisa Boyda \"Reda\" Reddinga (Morgan Freeman) udaje mu się zachować nadzieję, która pozwoli dokonać zemsty. ', 'Dramat', 'https://www.youtube.com/watch?v=NmzuHjWmXOc', 'https://fwcdn.pl/fpo/10/48/1048/8016333.6.jpg', 'The Shawshank Redemption'),
(6, 5, 'NIETYKALNI', ' Francja', 2011, 112, 16, 'Ta historia zdarzyła się naprawdę. Sparaliżowany na skutek wypadku milioner zatrudnia do pomocy i opieki młodego chłopaka z przedmieścia, który właśnie wyszedł z więzienia. Zderzenie dwóch skrajnie różnych światów daje początek szeregowi niewiarygodnych przygód i przyjaźni, która czyni ich... nietykalnymi.', 'Biograficzny / Dramat / Komedia', 'https://www.youtube.com/watch?v=oK5hMNxqsFA', 'https://fwcdn.pl/fpo/33/90/583390/7752240.6.jpg', 'Intouchables'),
(7, 6, 'JOKER', 'USA / Kanada', 2019, 122, 16, 'Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera. Przedstawiony przez Phillipsa obraz śledzi losy kultowego czarnego charakteru, człowieka zepchniętego na margines. To nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.', 'Dramat / Kryminał / Psychologiczny', 'https://www.youtube.com/watch?v=t433PEQGErc', 'https://fwcdn.pl/fpo/01/67/810167/7905225.6.jpg', 'JOKER'),
(8, 7, 'PIANISTA', 'Francja / Polska / Wielka Bryt', 2002, 150, 16, 'Ekranizacja wspomnień Władysława Szpilmana. W roli głównej Adrien Brody (\"Cienka czerwona linia\", \"Mordercze lato\").  Władysław Szpilman, wybitny polski pianista żydowskiego pochodzenia żyje w warszawskim getcie. Dzieli tam okrutny los i upokorzenie swojego narodu. Przed ostateczną \"wywózką\" mieszkańców getta do obozów zagłady udaje mu się stamtąd uciec. Ukrywa się samotnie w ruinach Warszawy. Niespodziewanie to przyjaźń z niemieckim oficerem pozwoli mu przetrwać najcięższy okres...', 'Biograficzny / Dramat / Wojenny', 'https://www.youtube.com/watch?v=BFwGqLa_oAo', 'https://fwcdn.pl/fpo/22/25/32225/7519150.6.jpg', 'The Pianist'),
(9, 8, 'LEON ZAWODOWIEC', 'Francja / USA', 1994, 110, 16, 'Leon (Jean Reno) jest płatnym zabójcą. W niczym nie przypomina męskiego, twardego i nieposkromionego złoczyńcy. Wręcz przeciwnie: jest cichy, spokojny, na co dzień pije mleko. Pewnego dnia skorumpowana policja zabija swojego dostawcę narkotyków i jego rodzinę. Przeżyła tylko córka, która postanawia zemścić się na zabójcach. To niezwykle trudne zlecenie otrzymuje Leon, u którego młoda dziewczyna znajduje schronienie.', ' Dramat / Kryminał', 'https://www.youtube.com/watch?v=jawVxq1Iyl0', 'https://fwcdn.pl/fpo/06/71/671/8021401.6.jpg', 'Léon'),
(10, 9, 'GLADIATOR', 'USA / Wielka Brytania / Malta ', 2000, 155, 16, 'Generał Maximus (Russell Crowe), jeden z najwybitniejszych dowódców w rzymskiej armii, dowiaduje się, że umierający cesarz Marek Aureliusz (Richard Harris) chce uczynić go swoim następcą na tronie. Nie podoba się to prawowitemu dziedzicowi, Kommodusowi (Joaquin Phoenix), który postanawia pozbyć się rywala i skazuje go na karę śmierci wraz z całą rodziną. Maximusowi cudem udaje się uciec. Trafia do niewoli, gdzie zostaje wyszkolony na gladiatora. Z walki na walkę zyskuje popularność, a na jego występy zaczyna przychodzić coraz więcej ludzi. Maximus jako wojownik wraca do Rzymu, by pomścić swoich bliskich, ale wie, że jedyną potęgą większą od władzy cesarza jest wola ludu i dlatego, by dokonać zemsty, musi stać się największym bohaterem Imperium.', 'Dramat historyczny', 'https://www.youtube.com/watch?v=uvbavW31adA', 'https://fwcdn.pl/fpo/09/36/936/8041849.6.jpg', 'GLADIATOR'),
(11, 10, 'PRZEŁĘCZ OCALONYCH', 'USA / Australia', 2016, 139, 16, 'Schyłek drugiej wojny światowej. Armia amerykańska toczy ciężkie walki z Japończykami o każdy skrawek lądu na Pacyfiku. Strategicznym celem jest wyspa Okinawa, której zdobycie może oznaczać ostateczną klęskę Japonii. Wśród setek tysięcy amerykańskich żołnierzy trafia tu Desmond T. Doss, sanitariusz, który ze względu na przekonania odmówił noszenia broni. Traktowany z nieufnością, oskarżany o tchórzostwo, wkrótce udowodni jak bardzo się wobec niego mylono. Podczas najcięższych starć, wielokrotnie ryzykując życiem, wydostaje z ognia walki ponad 70 rannych żołnierzy. Tak rodzi się legenda bezbronnego bohatera.', 'Biograficzny / Dramat / Wojenny', 'https://www.youtube.com/watch?v=RdjO0p4GJPA', 'https://fwcdn.pl/fpo/88/02/658802/7810673.6.jpg', 'Hacksaw Ridge'),
(12, 11, ' ZWIERZOGRÓD', 'USA', 2016, 108, 6, 'Zwierzogrodu nie można pomylić z żadnym innym miastem. Jest to jedyna w swoim rodzaju współczesna metropolia zamieszkiwana wyłącznie przez zwierzęta. W Zwierzogrodzie nie jest ważne, jakim stworzeniem jesteś - czy to największym z lwów, czy może malutką ryjówką. Możesz tam zostać kimkolwiek chcesz. Ale nie wszystkie marzenia spełniają się od razu...Gdy do miasta przybywa ambitna policjantka Judy Hops, szybko przekonuje się, że jako pierwszy królik zatrudniony w miejscowej policji, nie będzie wcale miała łatwego życia. Robi więc wszystko, by udowodnić swoją wartość (i zdobyć upragniony awans). Na jej drodze pojawia się jednak gadatliwy i chytry lis, Nick Bajer. Chcąc wykazać się za wszelką cenę, Judy przyjmuje sprawę, w której musi rozwiązać pewną kryminalną zagadkę. Jej partnerem w śledztwie zostaje nie kto inny jak wygadany i szczwany Nick…', 'Animacja / Komedia / Przygodowy', 'https://www.youtube.com/watch?v=Y0c3nKWhlIA', 'https://fwcdn.pl/fpo/38/36/703836/7737280.6.jpg', 'Zootopia'),
(13, 12, 'SPIDER-MAN UNIWERSUM', 'USA', 2018, 117, 7, 'Miles Morales jest nastolatkiem, który odkrywa w sobie moce podobne do tych, jakimi posługuje się Spider-Man, podobnie zresztą jak on, jest superbohaterem; nazywany jest często Ultimate Spider-Man, działa w uniwersum zwanym Ziemia-1610. Jest nadzwyczajnie silny, potrafi wdrapywać się po ścianach, ma pajęczy zmysł i umiejętność paraliżowania wroga.', 'Animacja / Familijny / Akcja', 'https://www.youtube.com/watch?v=g4Hbz2jLxvQ', 'https://fwcdn.pl/fpo/32/33/743233/7866074.6.jpg', 'Spider-Man: Into the Spider-Verse'),
(14, 13, 'TOP GUN: MAVERICK', 'USA', 2022, 131, 13, 'Po ponad 30 latach w służbie amerykańskiej marynarki wojennej Pete \"Maverick\" Mitchell (Tom Cruise) jest tam, gdzie powinien być - na szczycie. Jest mistrzowskim pilotem, testującym najnowocześniejsze maszyny. Kiedy staje na czele pilockiej spec-grupy szkolącej jej uczestników do udziału w misji, jakiej dotąd nie było, przychodzi mu spotkać się z porucznikiem Bradleyem Bradshawem (Miles Teller) o kryptonimie \"Rooster\", synem jego przyjaciela oficera Nicka Bradshawa, kryptonim \"Goose\", który przed laty zginął podczas jednej z misji. Maverick musi stawić czoła niepewnej przyszłości oraz duchom przeszłości. Mierzy się ze swymi lękami i demonami, czego kulminacją będzie ostateczne poświęcenie tych, którzy zostaną wybrani do misji.', ' Akcja', 'https://www.youtube.com/watch?v=xa_z57UatDY', 'https://fwcdn.pl/fpo/21/01/602101/8040389.6.jpg', 'TOP GUN: MAVERICK'),
(15, 14, ' JAK WYTRESOWAĆ SMOKA', 'USA', 2010, 98, 7, 'Producenci \"Shreka\", „Madagaskaru\" i „Kung Fu Pandy\" przedstawiają film na podstawie książki Cressidy Cowell  „Jak wytresować smoka\", której akcja rozgrywa się w świecie Wikingów i dzikich smoków. Bohaterem filmu jest nastoletni Wiking mieszkający na wyspie Berk, gdzie walki ze smokami są codziennością. Zbliża się właśnie czas inicjacji i jedyna szansa na udowodnienie plemieniu i ojcu swojej wartości. Kiedy jednak okazuje się, że zamiast wytresować smoka, nastolatek zaprzyjaźnia się z nim, cały jego świat staje na głowie. ', 'Animacja / Familijny / Fantasy / Przygod', 'https://www.youtube.com/watch?v=2AKsAxrhqgM', 'https://fwcdn.pl/fpo/10/14/331014/7919342.6.jpg', 'How to Train Your Dragon'),
(16, 9, 'HELIKOPTER W OGNIU', 'USA / Wielka Brytania', 2001, 144, 16, 'Oparta na faktach opowieść o bitwie w Mogadiszu. Była ona najdłużej trwającą walką, w którą zaangażowali się Amerykanie po wojnie w Wietnamie. Specjalne jednostki uderzeniowe amerykańskich sił zbrojnych - odział 120 Delta wraz z odpowiednim sprzętem zostają zrzucone 3 października 1993 do Somalii. Ich misja jest prosta. Mają porwać dwóch poruczników Mohameda Farraha Aidida, przywódcy wojsk zbuntowanych Somalijczyków. Jednakże zestrzelenie dwóch amerykańskich helikopterów UH-60 Black Hawk komplikuje sprawę.', ' Dramat / Wojenny', 'https://www.youtube.com/watch?v=2GfBkC3qs78', 'https://fwcdn.pl/fpo/14/19/31419/7735555.6.jpg', 'Black Hawk Down'),
(17, 15, ' PIRACI Z KARAIBÓW: SKRZYNIA UMARLAKA', 'USA', 2006, 150, 12, 'Kapitan Jack Sparrow musi spłacić dług, który zaciągnął u władcy mórz - Davy Jonesa. Jeżeli tego nie uczyni, zostanie skazany na wieczne potępienie. Jego problemy oczywiście kompletnie rujnują plany ślubu Willa Turnera z piękną Elizabeth Swann, którzy wyruszają z kapitanem Sparrow w rejs pełen niezwykłych, nowych przygód.', 'Fantasy / Przygodowy', 'https://www.youtube.com/watch?v=SNA-Ezahmok', 'https://fwcdn.pl/fpo/74/04/107404/8021894.6.jpg', 'Pirates of the Caribbean: Dead Man\'s Chest'),
(18, 16, 'HARRY POTTER I INSYGNIA ŚMIERCI: CZĘŚĆ II', 'USA / Wielka Brytania', 2011, 130, 15, 'W drugiej części widowiskowego zakończenia serii walka sił dobra z siłami zła świata czarodziejów przeistacza się w otwartą wojnę. Stawka nigdy nie była tak wysoka; nikt nie może czuć się bezpieczny. Być może w trakcie nieuchronnie zbliżającej się ostatecznej rozgrywki z Lordem Voldemortem to Harry Potter będzie zmuszony do ostatecznego poświęcenia. Tak kończy się cała opowieść.', ' Familijny / Fantasy / Przygodowy', 'https://www.youtube.com/watch?v=mObK5XD8udk', 'https://fwcdn.pl/fpo/60/21/476021/7982792.6.jpg', 'Harry Potter and the Deathly Hallows: Part 2'),
(19, 17, 'WOJOWNIK', 'USA', 2011, 140, 12, 'Nawiedzany tragiczną przeszłością były żołnierz marine, Tommy Conlon (Tom Hardy) powraca do rodzinnego Pittsburgha. Zabiegając o wsparcie ojca Paddy\'ego (Nick Nolte), byłego alkoholika i trenera, postanawia wziąć udział w turnieju mieszanych sztuk walki (MMA). Są to zawody wysokiego ryzyka, których nagrodą jest największa suma pieniędzy w dziejach tego sportu. Podczas gdy Tony przeciera sobie szlak do wygranej, jego brat Brendan (Joel Edgerton), były zawodnik UFC, a obecnie nauczyciel w szkole, ledwo wiąże koniec z końcem. Gdy Brendan zostaje zawieszony w pracy, postanawia powrócić na ring, by zapewnić byt rodzinie. Mimo że minęło kilka lat, jego stosunki z Tommym i ojcem są nadal napięte. Nieoczekiwanie drogi braci znowu się przecinają...', 'Dramat / Sportowy', 'https://www.youtube.com/watch?v=I5kzcwcQA1Q', 'https://fwcdn.pl/fpo/93/38/499338/7431453.6.jpg', 'Warrior'),
(20, 18, 'BOŻE CIAŁO', ' Polska', 2019, 115, 15, 'Inspirowana prawdziwymi wydarzeniami historia 20-letniego Daniela, który w trakcie pobytu w poprawczaku przechodzi duchową przemianę i skrycie marzy, żeby zostać księdzem. Po kilku latach odsiadki chłopak zostaje warunkowo zwolniony, a następnie skierowany do pracy w zakładzie stolarskim. Zamiast tego jednak, popychany niemożliwym do spełnienia marzeniem, Daniel kieruje się do miejscowego kościoła, gdzie zaprzyjaźnia się z proboszczem. Kiedy, pod nieobecność duchownego, niespodziewanie nadarza się okazja, chłopak wykorzystuje ją i w przebraniu księdza zaczyna pełnić posługę kapłańską w miasteczku. Od początku jego metody ewangelizacji budzą kontrowersje wśród mieszkańców, szczególnie w oczach surowej kościelnej Lidii. Z czasem jednak nauki i charyzma fałszywego księdza zaczynają poruszać ludzi pogrążonych w tragedii, która wstrząsnęła lokalną społecznością kilka miesięcy wcześniej. Tymczasem w miasteczku pojawia się dawny kolega Daniela z poprawczaka, a córka kościelnej, Marta, coraz m', 'Obyczajowy', 'https://www.youtube.com/watch?v=Y22lmaNA_Aw', 'https://fwcdn.pl/fpo/88/63/808863/7922224.6.jpg', 'BOŻE CIAŁO');

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
(6, 4, '12:10:00'),
(7, 4, '16:20:00'),
(8, 4, '17:30:00'),
(9, 5, '10:30:00'),
(10, 5, '11:00:00'),
(11, 5, '15:00:00'),
(12, 6, '14:30:00'),
(13, 6, '09:00:00'),
(14, 6, '11:20:00'),
(15, 7, '11:40:00'),
(16, 7, '17:45:00'),
(17, 7, '13:25:00'),
(18, 8, '15:50:00'),
(19, 8, '08:45:00'),
(20, 8, '00:00:19'),
(21, 8, '20:00:00');

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
(1, 'Buldii', 'kadasd@onet', '1234', '123456789', 'Krystian', 'Bulanda'),
(2, 'Admin', 'asdasd@das', '1234', '1234', 'Adam', 'Nowak'),
(3, 'Gosc', 'dasa@edasd', '1234', '1234354756', 'Admin', 'ADmin');

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
(4, '2022-11-17', 5, 1),
(5, '2022-11-17', 18, 0),
(6, '2022-11-17', 14, 1),
(7, '2022-11-17', 20, 1),
(8, '2022-11-17', 9, 0);

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
(19, 1, 12, 8, 5, 1),
(20, 1, 13, 8, 5, 1),
(38, 1, 1, 1, 1, 2),
(41, 1, 2, 1, 1, 2),
(47, 1, 4, 1, 1, 2),
(52, 2, 2, 4, 1, 1),
(53, 2, 2, 3, 1, 1),
(54, 2, 1, 5, 1, 1),
(55, 2, 3, 5, 1, 1),
(61, 2, 3, 6, 1, 1),
(77, 1, 12, 7, 1, 1),
(78, 1, 12, 6, 1, 1),
(79, 1, 13, 6, 1, 1),
(88, 1, 12, 5, 1, 1),
(89, 1, 13, 5, 1, 1),
(91, 3, 6, 5, 1, 1),
(92, 3, 7, 5, 1, 1),
(93, 3, 7, 6, 1, 1),
(94, 3, 6, 6, 1, 1),
(98, 2, 4, 5, 1, 1),
(99, 2, 4, 6, 1, 1),
(101, 3, 8, 6, 1, 1),
(102, 3, 8, 7, 1, 1),
(103, 3, 9, 7, 1, 1),
(104, 3, 9, 6, 1, 1),
(106, 1, 11, 6, 1, 1),
(107, 2, 5, 5, 1, 1),
(108, 3, 9, 5, 1, 1);

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
(7, 'Roman', 'Polański'),
(8, 'Luc', 'Besson'),
(9, 'Ridley', 'Scott'),
(10, 'Mel', 'Gibson'),
(11, 'Byron', 'Howard'),
(12, 'Peter', 'Ramsey'),
(13, 'Joseph', 'Kosinski'),
(14, 'Chris', 'Sanders'),
(15, 'Gore', 'Verbinski'),
(16, 'David', 'Yates'),
(17, 'Gavin', 'O\'Connor'),
(18, 'Jan', 'Komasa');

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
(35, 8, 'https://imgs.classicfm.com/images/125694?crop=16_9&width=660&relax=1&signature=1gU2noGiBKqIdvJuUk6Pj4BzeKk='),
(36, 9, 'https://fwcdn.pl/fpo/06/71/671/7881918.6.jpg'),
(37, 9, 'https://fwcdn.pl/fpo/06/71/671/7881919.6.jpg'),
(38, 9, 'https://fwcdn.pl/fpo/06/71/671/7217877.6.jpg'),
(39, 10, 'https://fwcdn.pl/fpo/09/36/936/7847388.6.jpg'),
(40, 10, 'https://fwcdn.pl/fpo/09/36/936/7467758.6.jpg'),
(41, 10, 'https://fwcdn.pl/fpo/09/36/936/7026975.6.jpg'),
(42, 11, 'https://fwcdn.pl/fpo/88/02/658802/7776214.6.jpg'),
(43, 11, 'https://fwcdn.pl/fpo/88/02/658802/7762627.6.jpg'),
(44, 11, 'https://fwcdn.pl/fpo/88/02/658802/7762228.6.jpg'),
(45, 12, 'https://fwcdn.pl/fpo/38/36/703836/7780248.6.jpg'),
(46, 12, 'https://fwcdn.pl/fpo/38/36/703836/7725407.6.jpg'),
(47, 12, 'https://fwcdn.pl/fpo/38/36/703836/7778901.6.jpg'),
(48, 13, 'https://fwcdn.pl/fpo/32/33/743233/7871285.6.jpg'),
(49, 13, 'https://fwcdn.pl/fpo/32/33/743233/7871339.6.jpg'),
(50, 13, 'https://fwcdn.pl/fpo/32/33/743233/7871286.6.jpg'),
(51, 14, 'https://fwcdn.pl/fpo/21/01/602101/8019916.6.jpg'),
(52, 14, 'https://fwcdn.pl/fpo/21/01/602101/8013437.6.jpg'),
(53, 14, 'https://fwcdn.pl/fpo/21/01/602101/8013959.6.jpg'),
(54, 15, 'https://fwcdn.pl/fpo/10/14/331014/7919353.6.jpg'),
(55, 15, 'https://fwcdn.pl/fpo/10/14/331014/7919348.6.jpg'),
(56, 15, 'https://fwcdn.pl/fpo/10/14/331014/7919345.6.jpg'),
(57, 16, 'https://fwcdn.pl/fpo/14/19/31419/7703110.6.jpg'),
(58, 16, 'https://fwcdn.pl/fpo/14/19/31419/7703108.6.jpg'),
(59, 16, 'https://fwcdn.pl/fpo/14/19/31419/7029204.6.jpg'),
(60, 17, 'https://fwcdn.pl/fpo/74/04/107404/7124678.6.jpg'),
(61, 17, 'https://fwcdn.pl/fpo/74/04/107404/7124677.6.jpg'),
(62, 17, 'https://fwcdn.pl/fpo/74/04/107404/7108013.6.jpg'),
(63, 18, 'https://fwcdn.pl/fpo/60/21/476021/7564212.6.jpg'),
(64, 18, 'https://fwcdn.pl/fpo/60/21/476021/7564095.6.jpg'),
(65, 18, 'https://fwcdn.pl/fpo/60/21/476021/7381235.6.jpg'),
(66, 19, 'https://fwcdn.pl/fpo/93/38/499338/7516291.6.jpg'),
(67, 19, 'https://fwcdn.pl/fpo/93/38/499338/7416329.6.jpg'),
(68, 19, 'https://fwcdn.pl/fpo/93/38/499338/7397122.6.jpg'),
(69, 20, 'https://fwcdn.pl/fpo/88/63/808863/7897041.6.jpg'),
(70, 20, 'https://fwcdn.pl/fpo/88/63/808863/7901115.6.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `godziny`
--
ALTER TABLE `godziny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `konta`
--
ALTER TABLE `konta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `repertuar`
--
ALTER TABLE `repertuar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT dla tabeli `rezyser`
--
ALTER TABLE `rezyser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
