-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 13. čen 2023, 14:52
-- Verze serveru: 10.4.27-MariaDB
-- Verze PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `my_database`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `actors`
--

CREATE TABLE `actors` (
  `id` int(5) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `last_name`, `age`, `gender`) VALUES
(1, 'Josef', 'Miko', 33, 'male'),
(2, 'Patricia', 'Vohradilová', 45, 'female'),
(3, 'Eliška', 'Malá', 37, 'female'),
(4, 'Marek', 'Linhart', 24, 'male'),
(5, 'Matěj', 'Norimberg', 29, 'male');

-- --------------------------------------------------------

--
-- Struktura tabulky `films`
--

CREATE TABLE `films` (
  `id` int(5) NOT NULL,
  `name` varchar(40) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `direction` varchar(30) NOT NULL,
  `release_date` int(5) NOT NULL,
  `length` int(6) NOT NULL,
  `rating` int(12) NOT NULL,
  `national_origin` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `films`
--

INSERT INTO `films` (`id`, `name`, `genre`, `direction`, `release_date`, `length`, `rating`, `national_origin`, `description`) VALUES
(1, 'Vykoupení z věznice ', 'Drama', 'Frank Darabont', 1994, 142, 8, 'USA', 'Mladý bankéř Andy Dufresne (Tim Robbins) je v roce 1947 odsouzen za vraždu své ženy a jejího milence. Přesto, že tento čin popírá, čeká na něj dvojnásobný doživotní trest v obávané věznici Shawshank.'),
(2, 'Simpsonovi ve filmu', 'Animovaný', 'David Silverman', 2007, 83, 8, 'USA', 'Jeden z nejúspěšnějších televizních seriálů se dočkal i celovečerního filmového zpracování. Populární rodinka Simpsonových ze Springfieldu tentokrát čelí globálním výzvám a Homer provede nejhorší věc svého života... Homer totiž do jezera vypustí jímku s exkrementy svého oblíbeného pašíka.'),
(3, 'The Matrix', 'Akční', 'Lilly Wachowski', 1999, 136, 9, 'USA', 'Uvěříte neuvěřitelnému! Představte si, že vaše realita je jen iluzí a vaše nejtemnější noční můry jsou ve skutečnosti pravdivé. Představte si, že vaše současnost je vlastně minulostí a to budoucí se děje právě teď. Když si to dokážete představit, potom se budete cítit jako hrdina snímku Matrix Thomas Anderson (Keanu Reeves). A věřte, že to nebude příjemný pocit. Anderson je normální mladý muž, který se jen snaží přežít v každodenním shonu moderního velkoměsta.'),
(4, 'Hledá se Nemo', 'Rodinný', 'Andrew Stanson', 2003, 100, 8, 'Británie', 'Nebojácnou malou rybku Nemo uloví potápěč a odveze daleko od domova do svého akvária. Jeho velmi starostlivý otec Marlin se ihned vydá za svým synkem na dalekou pouť.'),
(5, 'Zombieland', 'Komedie', 'Ruben Fleischer', 2009, 88, 7, 'USA', 'Akční komedie Zombieland společnosti Columbia Pictures vypráví příběh dvou mužů, kteří se snaží přežít ve světě, ovládaném zombies. Columbus (Jesse Eisenberg) je obrovský zbabělec – ale jak se ukazuje, pokud máte hrůzu z toho, že vás sežerou zombies, dokáže vás strach udržet naživu.'),
(6, 'Pearl Harbor', 'Válečný', 'Michael Bay', 2001, 175, 7, 'USA', 'Nerozluční kamarádi Danny a Rafe prodělávají letecký výcvik. Rafe je přijat jako dobrovolník k elitní britské Orlí peruti. Danny považuje jeho odjezd za zradu a ještě hůře nese zprávu Rafova přítelkyně Evelyn. Zatímco Rafe odjíždí na výcvik do Anglie, situace ve světě se vyostřuje.'),
(7, 'P.S. Miluji Tě', 'Romantický', 'Richard LaGravenese', 2007, 126, 7, 'USA', 'Holly a Gerry se vracejí z návštěvy od její matky. Hádají se a vyčítají si, že nemají peníze, dítě… Jejich hádka se ale nakonec změní v příjemné usmiřování. Je jim spolu dobře.  V baru Hollyiny matky se schází skupinka lidí. Nejde však o nějakou veselou událost. Důvodem je Gerryho smrt.'),
(8, 'Hunger Games', 'Akční', 'Gary Ross', 2012, 137, 6, 'USA', 'V ruinách bývalé Severní Ameriky se rozkládá země Panem s hlavním městem Kapitol a dvanácti přilehlými kraji. V Kapitolu se každý rok koná klání s názvem Hunger Games, do kterého musí každý z krajů vyslat jednoho chlapce a jednu dívku.'),
(9, 'Joker', 'Krimi', 'Todd Phillips', 2019, 122, 8, 'USA', 'Zkrachovalý komediant Arthur Fleck (Joaquin Phoenix) se dlouho pohybuje na tenké hranici mezi realitou a šílenstvím. Jednoho dne se ve svém obleku klauna potuluje po ulicích Gotham City a dostává se do konfliktu s brutálními zloději. Pomalu se roztáčí spirála událostí dosahující hrozivých rozměrů.'),
(10, 'Deadpool', 'Sci-Fi', 'Tim Miller', 2016, 108, 8, 'USA', 'Než se stal Deadpoolem, byl Wadem Wilsonem (Ryan Reynolds), bývalým členem speciálních jednotek. Když mu lékaři diagnostikovali pokročilé stadium rakoviny, podrobil se experimentální léčbě v rámci programu Weapon X, známého a populárního především mezi x-menovskými mutanty. Díky tomu se Wade zbavil rakoviny, a nejenže zůstal naživu, ale také jako bonus získal schopnost rychlého samouzdravování.'),
(11, 'Jurský Park', 'Sci-Fi', 'Steven Spielberg', 1993, 127, 8, 'USA', 'Za vědcem, doktorem Grantem přiletí milionář John Hammond. Řekne jemu a jeho kolegyni, vědkyni Ellie, že má pronajatý ostrov, kde má biologickou rezidenci, kam by mohli jezdit lidé. Ellie a Grant hledají vykopávky koster dinosaurů, jsou to paleontologové. Hammond potřebuje, aby mu někdo udělal posudek. Chce proto po Ellie a Grantovi, aby schválili, že jeho Jurský park je v pořádku.'),
(12, 'Transformers', 'Akční', 'Michael Bay', 2007, 144, 7, 'USA', 'Transformers patří k nejúspěšnějším hračkám v historii. Roboti, kteří se dokážou přetransformovat v libovolný dopravní prostředek, jsou populární natolik, že se stali hrdiny akčního animovaného seriálu.'),
(13, 'Kill Bill', 'Akční', 'Quentin Tarantino', 2003, 111, 7, 'USA', 'Bývalá členka špičkového zabijáckého komanda sa rozhodne navždy skončit s minulostí a vdát se. Její svatební den se však změní v krvavá jatka. Bývalý šéf Bill zaútočí s úmyslem ji zabít… Všichni si myslí, že je mrtvá, mladá žena však šťastnou náhodou vražedný útok prežije, jen upadne do kómatu. Po pěti letech se vrací z temného prahu smrti s jedinou myšlenkou: pomstít se všem, kteří jí ublížili, bez ohledu na to, co je k tomu vedlo.'),
(14, 'Vlk z Wall Street', 'Životopisný', 'Martin Scorsese', 2013, 180, 8, 'USA', 'Film Vlk z Wall Street přináší podívanou z doby, kdy na Wall Street vládla pravidla Divokého Západu. Jen místo pistolníků na koních se tu prohánějí jachty a nahé blondýny a místo prachu nad prérií víří vzduchem bankovky. Někdy dokázal vydělat i 12 milionů dolarů za pouhé tři minuty.'),
(15, 'Gran Torino', 'Drama', 'Clint Eastwood', 2008, 116, 9, 'Německo', 'Film Gran Torino vypráví příběh někdejšího opraváře aut a ovdovělého veterána z války v Koreji Walta Kowalského, který si s přibývajícími léty uvědomuje, že na nový svět už nestačí. Všichni jeho sousedé se buď odstěhovali, nebo zemřeli. Postupně je nahradili hmongští imigranti, kterými Walt ze srdce pohrdá, a bezcílné partičky mladých afroamerických a latinskoamerických výtržníků.'),
(16, 'Avatar', 'Sci-Fi', 'James Cameron', 2009, 166, 8, 'USA', 'Avatar před námi otevírá neuvěřitelný svět za hranicemi naší fantazie, svět střetu dvou naprosto odlišných civilizací. Nově objevená vzdálená planeta Pandora je mírumilovné místo s obyvatelstvem - Na’vi, žijícím v souladu s divukrásnou vegetací planety. Posádka vyslaná ze Země na své průzkumné misi objeví na Pandoře velmi cenný minerál, který by měl na Zemi nevyčíslitelnou hodnotu.'),
(17, 'Yes Man', 'Komedie', 'Peyton Reed', 2008, 100, 7, 'USA', 'Carl Allen je zatrpklý bankovní úředník, který se dosud nevyrovnal s odchodem manželky. Pokud to jde, zapírá se před kamarády, večery tráví u videa, je protivný a téměř na všechno odpovídá slůvkem ne. Jednoho dne však narazí na bývalého kolegu, který mu nadšeně vypráví o svém novém životě, který začal, když se přidal k „Yes Manům“. Carl se vydá na jejich seminář, kde ho Nick představí charismatickému vůdci Terrenci Bundleyovi. Ten ho přiměje ke slibu, že od té chvíle bude odpovídat pouze „ano“.');

-- --------------------------------------------------------

--
-- Struktura tabulky `films_x_actors`
--

CREATE TABLE `films_x_actors` (
  `film_id` int(5) NOT NULL,
  `actor_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `films_x_actors`
--

INSERT INTO `films_x_actors` (`film_id`, `actor_id`) VALUES
(1, 1),
(1, 4),
(2, 2),
(3, 3),
(4, 1),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(13, 5),
(14, 4),
(15, 5),
(16, 1),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `films_x_actors`
--
ALTER TABLE `films_x_actors`
  ADD PRIMARY KEY (`film_id`,`actor_id`),
  ADD KEY `films_x_actors_ibfk_2` (`actor_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `films`
--
ALTER TABLE `films`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `films_x_actors`
--
ALTER TABLE `films_x_actors`
  ADD CONSTRAINT `films_x_actors_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `films_x_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
