-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Apr 2025 um 19:57
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `farhaevents`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `billet`
--

CREATE TABLE `billet` (
  `billetId` varchar(15) NOT NULL,
  `typeBillet` varchar(50) NOT NULL,
  `placeNum` int(11) NOT NULL,
  `idReservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `billet`
--

INSERT INTO `billet` (`billetId`, `typeBillet`, `placeNum`, `idReservation`) VALUES
('B67E673B120AF4', 'Normal', 1, 1),
('B67E673B121551', 'Normal', 2, 1),
('B67E673B121625', 'Normal', 3, 1),
('B67E673B121765', 'Normal', 4, 1),
('B67E673B1221EC', 'Normal', 5, 1),
('B67F6C15F98A67', 'Normal', 1, 2),
('B67F6C15F98C24', 'Normal', 2, 2),
('B67F6C15F98DEE', 'Normal', 3, 2),
('B67F6C15F9905C', 'Normal', 4, 2),
('B67F6C15F9A1E8', 'Reduit', 1, 2),
('B67F6C15F9A60F', 'Reduit', 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `edition`
--

CREATE TABLE `edition` (
  `editionId` int(11) NOT NULL,
  `dateEvent` date NOT NULL,
  `timeEvent` time NOT NULL,
  `eventId` char(6) NOT NULL,
  `NumSalle` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `edition`
--

INSERT INTO `edition` (`editionId`, `dateEvent`, `timeEvent`, `eventId`, `NumSalle`, `image`) VALUES
(1, '2025-04-10', '19:00:00', 'EV001', 101, 'https://wistatefair.com/fair/wp-content/uploads/2013/11/vendor-stages-600x400-1.png'),
(2, '2025-05-05', '20:30:00', 'EV002', 102, 'https://www.shutterstock.com/image-photo/back-view-cinematic-shot-conductor-600nw-2287585941.jpg'),
(3, '2025-06-15', '18:00:00', 'EV003', 103, 'https://www.lalive.com/assets/img/RealD_Premiere_1064x625_4-d6472a4a29.jpg'),
(4, '2025-07-20', '21:00:00', 'EV004', 102, 'https://dcm1eeuyachdi.cloudfront.net/fit-in/3840x3840/filters:quality(100):format(webp)/media/images/events/quayles-brewery/img-banner/521fcc27-a2d.png'),
(5, '2025-08-12', '09:00:00', 'EV005', 101, 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F942773333%2F240918952701%2F1%2Foriginal.20250123-112132?w=1000&auto=format%2Ccompress&q=75&sharp=10&s=5b767871f1b8214786107e963a629ee1'),
(6, '2025-09-30', '18:30:00', 'EV006', 102, 'https://www.zarely.co/cdn/shop/articles/Top_Ballet_Events_Worldwide_In_2019_1400x.jpg?v=1563412990'),
(7, '2025-10-22', '14:00:00', 'EV007', 103, 'https://images.bauerhosting.com/legacy/media/5ff3/5939/0786/1347/10a2/e9d6/richard-deng-in7-ybhrWvY-unsplash.jpg?ar=16%3A9&fit=crop&crop=top&auto=format&w=1440&q=80'),
(8, '2025-11-18', '16:00:00', 'EV008', 102, 'https://play3r.net/wp-content/uploads/2018/09/ZBR05528.jpg'),
(9, '2025-12-05', '20:00:00', 'EV009', 101, 'https://img.jagranjosh.com/images/2025/January/1212025/Best-Astronomical-Events-in-2025.webp'),
(10, '2026-01-15', '11:00:00', 'EV010', 103, 'https://cdn.prod.website-files.com/620b4dfc30add2618d5e13a5/622b57f4d6fe6adb2ed2c62c_ultimate-festival-planning-guide.jpeg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `evenement`
--

CREATE TABLE `evenement` (
  `eventId` char(6) NOT NULL,
  `eventType` varchar(50) NOT NULL,
  `eventTitle` varchar(100) NOT NULL,
  `eventDescription` text NOT NULL,
  `TariffNormal` decimal(10,2) NOT NULL,
  `TariffReduit` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `evenement`
--

INSERT INTO `evenement` (`eventId`, `eventType`, `eventTitle`, `eventDescription`, `TariffNormal`, `TariffReduit`) VALUES
('EV001', 'Musique', 'Rock Night', 'Experience an electrifying night of live rock music featuring top bands and artists from around the world. Feel the energy as guitars roar, drums pound, and vocals soar through the night. This is not just a concert—it’s a full sensory experience with mind-blowing light shows, special effects, and an atmosphere like no other. Whether you are a lifelong rock fan or just discovering the genre, you’ll be immersed in an unforgettable world of music and passion. Meet fellow rock enthusiasts, enjoy exclusive merchandise, and take home memories that will last forever. The night promises high-energy performances, iconic hits, and surprise guest appearances. Don’t miss your chance to be part of this legendary event. Get your tickets now before they sell out! Come and witness the power of live rock like never before. Let’s make history together, one song at a time!', 50.00, 30.00),
('EV002', 'Théatre', 'Shakespeare Play', 'Step into the world of Shakespeare with a breathtaking performance of one of his greatest plays. Witness the drama, love, and tragedy unfold as talented actors bring the characters to life with deep emotions and powerful expressions. Every word and movement is carefully crafted to transport you into the heart of the story. This production stays true to Shakespeare’s original vision while incorporating modern stagecraft to enhance the experience. Whether you are a literature lover or a theatre enthusiast, you will be mesmerized by the grandeur of the sets, the beauty of the costumes, and the intensity of the performances. The play explores timeless themes of power, betrayal, and destiny, making it as relevant today as it was centuries ago. With live orchestration and stunning stage effects, this is more than just a play—it’s an artistic masterpiece. Book your seats now and be part of a magical evening that will leave you spellbound.', 40.00, 25.00),
('EV003', 'Cinéma', 'Movie Premiere', 'Be among the first to witness the magic of cinema with an exclusive screening of a highly anticipated new film. This is not just a regular movie night—it’s an unforgettable experience where cinema lovers gather to celebrate storytelling at its finest. The night will begin with a red carpet welcome, where you can take photos and meet fellow film enthusiasts. Inside the theater, you’ll enjoy state-of-the-art visuals and sound that will completely immerse you in the story. After the screening, stay for an exclusive Q&A session with the director, actors, and crew, giving you an inside look into the filmmaking process. Whether you love action, drama, or sci-fi, this premiere promises excitement, suspense, and breathtaking cinematography. Enjoy complimentary popcorn, drinks, and exclusive behind-the-scenes footage. A few lucky attendees will even have a chance to win signed memorabilia. Don’t miss out—secure your seat for an unforgettable night of cinema magic!', 35.00, 20.00),
('EV004', 'Théatre', 'Stand-up Special', 'Prepare yourself for a night of non-stop laughter at the biggest stand-up comedy special of the year! Featuring a lineup of top comedians, this event guarantees hilarious punchlines, witty observations, and unexpected surprises. From sharp social commentary to side-splitting personal stories, these comedians will have you laughing until your stomach hurts. Whether you enjoy clever wordplay, playful sarcasm, or outrageous impressions, there’s something for everyone. The stage will be buzzing with energy as each performer brings their unique style of humor to the audience. Expect interactive moments, audience participation, and spontaneous improvisations that make every show one-of-a-kind. This is the perfect event to relax, unwind, and share a great time with friends and family. Good vibes, great drinks, and a fantastic atmosphere make this a must-attend event. Grab your tickets early—seats fill up fast, and you don’t want to miss this comedy extravaganza!', 45.00, 25.00),
('EV005', 'Rencontres', 'Tech Summit 2025', 'Join the ultimate gathering of tech enthusiasts, industry leaders, and innovators at the Tech Summit 2025. This prestigious event brings together the brightest minds in technology to discuss groundbreaking advancements, AI, cybersecurity, and the future of digital transformation. Whether you are a professional, a student, or a startup founder, you’ll gain valuable insights into the latest trends shaping the world. Attend inspiring keynote speeches from renowned tech visionaries, participate in interactive workshops, and explore futuristic gadgets in the expo area. Engage in panel discussions, network with like-minded individuals, and discover investment opportunities for your projects. This is your chance to witness live product launches, experience VR and AR demos, and learn from the best in the field. The event will also feature exclusive career-building sessions for those looking to break into the tech industry. Don’t miss out on this opportunity to be at the forefront of innovation—register today and be part of the future!', 80.00, 50.00),
('EV006', 'Théatre', 'Ballet Performance', 'Experience the grace, beauty, and elegance of ballet in a mesmerizing performance that will transport you to another world. This breathtaking production features world-class dancers who bring every movement to life with precision and passion. The stage will be adorned with stunning set designs, magnificent costumes, and a live orchestra performing an enchanting musical score. Whether you are a ballet enthusiast or experiencing it for the first time, you will be captivated by the artistry, storytelling, and emotional depth of this performance. Watch as the dancers create moments of pure magic with every leap, spin, and gesture. The combination of classical and contemporary ballet styles adds a fresh and dynamic element to the show. Each act unfolds a different chapter of the story, drawing you deeper into its world. The evening promises a spellbinding experience that will leave you in awe. Secure your seat now and prepare to be inspired by the beauty of ballet!', 55.00, 35.00),
('EV007', 'Rencontres', 'Photography Basics', 'Unlock the secrets of photography in this comprehensive workshop designed for beginners and professionals alike. Learn from industry experts who will guide you through the art of capturing stunning photos using the right techniques, lighting, and composition. Explore various photography styles, including portrait, landscape, and street photography. Gain hands-on experience with real-time demonstrations and personalized feedback on your shots. Discover the power of camera settings and how to use them to your advantage. Whether you’re using a smartphone or a professional DSLR, this workshop will help you elevate your photography skills. Connect with fellow photography enthusiasts and participate in interactive exercises that challenge your creativity. Get insider tips on editing, framing, and storytelling through visuals. By the end of the event, you’ll have a portfolio of incredible shots and the confidence to take your photography to the next level. Don’t miss this chance to turn your passion into art—register today!', 30.00, 15.00),
('EV008', 'Rencontres', 'Esports Championship', 'Enter the world of competitive gaming and showcase your skills at one of the biggest esports championships. Compete against top players, engage in thrilling matches, and experience the excitement of professional-level gaming. Spectators can also enjoy live commentary, gaming expos, and meet-and-greet sessions with pro players.', 60.00, 40.00),
('EV009', 'Rencontres', 'Astronomy Night', 'Explore the mysteries of the universe at Astronomy Night, where professional astronomers guide you through an incredible stargazing experience. Learn about constellations, planets, and deep-space phenomena while observing the sky through powerful telescopes. A perfect event for space lovers, science enthusiasts, and families.', 20.00, 10.00),
('EV010', 'Rencontres', 'Food and Music Fest', 'Enjoy a delightful fusion of flavors and rhythms at the Food and Music Fest! Indulge in delicious cuisines from around the world while grooving to live music performances by talented artists. Whether you are a foodie, a music lover, or just looking for a great time, this festival promises a fantastic atmosphere.', 25.00, 15.00);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `idReservation` int(11) NOT NULL,
  `qteBilletsNormal` int(11) NOT NULL,
  `qteBilletsReduit` int(11) NOT NULL,
  `editionId` int(11) NOT NULL,
  `idUser` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `reservation`
--

INSERT INTO `reservation` (`idReservation`, `qteBilletsNormal`, `qteBilletsReduit`, `editionId`, `idUser`) VALUES
(1, 5, 0, 5, '1'),
(2, 4, 2, 5, '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `salle`
--

CREATE TABLE `salle` (
  `NumSalle` int(11) NOT NULL,
  `capSalle` int(11) NOT NULL,
  `DescSalle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `salle`
--

INSERT INTO `salle` (`NumSalle`, `capSalle`, `DescSalle`) VALUES
(101, 200, 'Main Concert Hall'),
(102, 150, 'Small Theater'),
(103, 250, 'Cinema Room');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUser` char(10) NOT NULL,
  `nomUser` varchar(30) NOT NULL,
  `prenomUser` varchar(30) NOT NULL,
  `mailUser` varchar(100) NOT NULL,
  `motPasse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `utilisateur`
--

INSERT INTO `utilisateur` (`idUser`, `nomUser`, `prenomUser`, `mailUser`, `motPasse`) VALUES
('1', 'abdelhay', 'mallouli', 'mallouli.abdlehay.solicode@gmail.com', '$2y$10$Jjyz5YjqCYDvAFO5Y8bnHuhw17T6YtADMcDcauGgrlFnartlRi9S.');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `billet`
--
ALTER TABLE `billet`
  ADD PRIMARY KEY (`billetId`),
  ADD KEY `idReservation` (`idReservation`);

--
-- Indizes für die Tabelle `edition`
--
ALTER TABLE `edition`
  ADD PRIMARY KEY (`editionId`),
  ADD KEY `eventId` (`eventId`),
  ADD KEY `NumSalle` (`NumSalle`);

--
-- Indizes für die Tabelle `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`eventId`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idReservation`),
  ADD KEY `editionId` (`editionId`),
  ADD KEY `idUser` (`idUser`);

--
-- Indizes für die Tabelle `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`NumSalle`);

--
-- Indizes für die Tabelle `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `mailUser` (`mailUser`),
  ADD UNIQUE KEY `motPasse` (`motPasse`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `edition`
--
ALTER TABLE `edition`
  MODIFY `editionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `billet`
--
ALTER TABLE `billet`
  ADD CONSTRAINT `billet_ibfk_1` FOREIGN KEY (`idReservation`) REFERENCES `reservation` (`idReservation`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `edition`
--
ALTER TABLE `edition`
  ADD CONSTRAINT `edition_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `evenement` (`eventId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `edition_ibfk_2` FOREIGN KEY (`NumSalle`) REFERENCES `salle` (`NumSalle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`editionId`) REFERENCES `edition` (`editionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
