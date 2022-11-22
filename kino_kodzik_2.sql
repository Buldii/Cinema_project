-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Lis 2022, 19:49
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
(1, '2022-11-23', 1, 1),
(2, '2022-11-23', 2, 0),
(3, '2022-11-23', 3, 1),
(4, '2022-11-24', 5, 1),
(5, '2022-11-24', 18, 0),
(6, '2022-11-24', 14, 1),
(7, '2022-11-24', 20, 1),
(8, '2022-11-24', 9, 0);

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
(36, 9, 'https://www.filmawka.pl/wp-content/uploads/2019/08/leon-the-professional-1108x0-c-default.jpg'),
(37, 9, 'https://cdn.artphotolimited.com/images/5ff5a529bd40b83c5a537440/1000x1000/leon-et-mathilda-scene-du-film-leon.jpg'),
(38, 9, 'https://film.org.pl/wp-content/uploads/2020/12/leon-stills-leon-leon-the-professional-24525341-1788-1169-830x475.jpg'),
(39, 10, 'https://ocdn.eu/pulscms-transforms/1/uWKk9kpTURBXy9iZTFkZWY1ZWNlYWY5NjYwYWYwOGIzZWMxNzI1ZDFlZS5qcGeTlQMAzGrNBADNAkGTCaZlMTQ1M2QGkwXNBLDNAnbeAAGhMAE/russell-crowe-jako-maximus-w-gladiatorze.jpg'),
(40, 10, 'https://r-scale-09.dcs.redcdn.pl/scale/o2/tvn/web-content/m/p36/i/db6ebd0566994d14a1767f14eb6fba81/f2449a64-3e6e-11e4-a888-0025b511229e.jpeg?type=1&srcmode=3&srcx=1%2F2&srcy=0%2F1&srcw=1200&srch=630&dstw=1200&dsth=630&quality=85'),
(41, 10, 'https://i.wpimg.pl/1200x/d.wpimg.pl/1537077201--1028513999/gladiator-2.jpg'),
(42, 11, 'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/75a4f590c1d43c21f2d5353a7582b59db72496becaaed07f6dbce1c92158da73._SX1080_.jpg'),
(43, 11, 'https://cdn.vox-cdn.com/thumbor/WLU9IjsqNguWzsEZ5D8xHRE4o8k=/0x0:2500x1667/1400x1400/filters:focal(1930x194:2330x594):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/51678749/hacksaw2.0.jpg'),
(44, 11, 'https://i0.wp.com/www.oxfordstudent.com/wp-content/uploads/2017/01/hacksaw-credit-Dear-One.png?fit=1725%2C978&ssl=1'),
(45, 12, 'https://lumiere-a.akamaihd.net/v1/images/pp_zootopia_herobanner_mobile_19736_5f8b1119.jpeg?region=0,0,640,480'),
(46, 12, 'https://ocdn.eu/pulscms-transforms/1/A4rktkuTURBXy8yZWJiZTIwZi1jNDRiLTQxM2MtOWU4YS1jNzM0NmQ1OTE1MTIuanBlZ5GTBc0EsM0CpA'),
(47, 12, 'https://media.npr.org/assets/img/2016/02/26/zootopia-180_35.356_wide-83cdb20471fe472518402e40ead8a668530bcfb8.jpg'),
(48, 13, 'https://m.media-amazon.com/images/M/MV5BNTA4MTYxMTM5OF5BMl5BanBnXkFtZTgwNjgyODI4NjM@._V1_.jpg'),
(49, 13, 'https://pyxis.nymag.com/v1/imgs/158/369/9d61bd3d6d62a8b361c5bad2822ecc7dc1-06-spider-man-into-the-spider-verse.rsquare.w700.jpg'),
(50, 13, 'https://www.intofilm.org/intofilm-production/6053/scaledcropped/3000x1688/resources/6053/spider-man-into-the-spider-verse-ep-sony.jpg'),
(51, 14, 'https://cdn1.naekranie.pl/media/cache/amp/2020/02/top_5e37c68e8d4aa.jpeg'),
(52, 14, 'https://i.iplsc.com/-/000FECG0VJ3QH8PV-C122.jpg'),
(53, 14, 'https://i.wpimg.pl/1200x/filerepo.grupawp.pl/api/v1/display/embed/eb92f3aa-c505-437d-a62a-036d63518597'),
(54, 15, 'https://s3.amazonaws.com/static.rogerebert.com/uploads/review/primary_image/reviews/how-to-train-your-dragon-2010/EB20100324REVIEWS100329994AR.jpg'),
(55, 15, 'https://m.media-amazon.com/images/M/MV5BMjIyMDc5NjU2Nl5BMl5BanBnXkFtZTcwNDIwNDAzMw@@._V1_.jpg'),
(56, 15, 'https://sspthinksfilm.files.wordpress.com/2014/06/toothless-how-to-train-your-dragon-11838754-1265-535.jpg'),
(57, 16, 'https://i.insider.com/51d46ef469bedd9651000004?width=1200&format=jpeg'),
(58, 16, 'https://api.culture.pl/sites/default/files/styles/500_auto/public/images/culture.pl/black_hawk_down_3.jpg?itok=_eiAU79u'),
(59, 16, 'https://i.pinimg.com/originals/27/d2/69/27d269331ab9dc990435229904c492a5.png'),
(60, 17, 'https://ichef.bbci.co.uk/images/ic/1200x675/p01gmgby.jpg'),
(61, 17, 'https://d23.com/app/uploads/2006/07/07.07.2006-pirates-dead-mans-chest-1180x600-780x440.jpg'),
(62, 17, 'https://d23.com/app/uploads/2015/07/pirates-of-the-caribbean-dead-mans-chest-1180x600.jpg'),
(63, 18, 'https://www.pluggedin.com/wp-content/uploads/2020/01/harry-potter-and-the-deathly-hallows-part-2.jpg'),
(64, 18, 'https://i.guim.co.uk/img/static/sys-images/Arts/Arts_/Pictures/2011/7/7/1310051819832/Harry-Potter-and-the-Deat-007.jpg?width=465&quality=85&dpr=1&s=none'),
(65, 18, 'https://www.intofilm.org/intofilm-production/scaledcropped/970x546https%3A/s3-eu-west-1.amazonaws.com/images.cdn.filmclub.org/film__16670-harry-potter-and-the-deathly-hallows-part-2--hi_res-0d539479.jpg/film__16670-harry-potter-and-the-deathly-hallows-part-2--hi_res-0d539479.jpg'),
(66, 19, 'https://sm.ign.com/ign_pl/screenshot/default/maxresdefault-1_y9qb.jpg'),
(67, 19, 'https://fwcdn.pl/fph/93/38/499338/267164.3.jpg'),
(68, 19, 'https://i0.wp.com/discussingfilm.net/wp-content/uploads/2021/09/image-asset-1392538175-1631051064524.jpeg?fit=1299%2C731&ssl=1'),
(69, 20, 'https://fwcdn.pl/webv/15/64/51564/thumbnail.51564.4.jpg'),
(70, 20, 'https://ocdn.eu/images/pulscms/YTM7MDA_/f62605ca86cf867e2f1f1304e98ff0c8.jpg'),
(71, 20, 'https://www.kobieta.pl/media/cache/default_view/uploads/media/default/0003/06/boze-cialo-polskim-kandydatem-do-oscara-oscary-2020.jpeg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT dla tabeli `rezyser`
--
ALTER TABLE `rezyser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
