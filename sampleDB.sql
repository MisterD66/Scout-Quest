-- phpMyAdmin SQL Dump
-- version 4.5.4
-- http://www.phpmyadmin.net
--
-- Host: mysqlsvr50.world4you.com
-- Erstellungszeit: 11. Feb 2016 um 17:12
-- Server-Version: 5.5.47
-- PHP-Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `5830070db4`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Q_Group`
--

CREATE TABLE `Q_Group` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Q_Group`
--

INSERT INTO `Q_Group` (`Id`, `Name`, `Points`) VALUES
(1, 'Linz 12', 99),
(14, 'Linz 14', 103),
(13, 'Linz 13', 1159),
(15, 'Linz 15', 38);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Q_Member`
--

CREATE TABLE `Q_Member` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Group` int(11) NOT NULL,
  `Quest` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Q_Member`
--

INSERT INTO `Q_Member` (`Id`, `Name`, `Group`, `Quest`) VALUES
(31, 'Mike14', 14, 5),
(30, 'Daniel14', 14, 5),
(29, 'Raphi13', 13, 5),
(28, 'Andi13', 13, 5),
(27, 'Theresa13', 13, NULL),
(26, 'Mike13', 13, NULL),
(25, 'Daniel13', 13, NULL),
(24, 'Raphi12', 1, NULL),
(23, 'Theresa12', 1, 5),
(22, 'Andi12', 1, NULL),
(21, 'Mike12', 1, NULL),
(20, 'Daniel12', 1, NULL),
(32, 'Daniel15', 15, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Q_Quests`
--

CREATE TABLE `Q_Quests` (
  `Id` int(11) NOT NULL,
  `Active` int(11) DEFAULT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Points` int(11) NOT NULL,
  `Members` int(11) NOT NULL,
  `Groups` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Q_Quests`
--

INSERT INTO `Q_Quests` (`Id`, `Active`, `Name`, `Description`, `Points`, `Members`, `Groups`) VALUES
(1, 1, 'Essen Gehen!', 'Begebt euch zum essen gehen!\r\nbla bla bla', 100, 3, 3),
(5, 3, 'Insragram master', 'Postez ein Foto auf insragram und bekommt 100 likes', 100, 5, 3),
(4, 1, 'Liebes SMS', 'Schreibt euch liebes Geständnisse per SMS', 50, 2, 2),
(6, NULL, 'LJR ', 'Begebt euch zum Workshop des ljr', 1000, 3, 1),
(8, 1, 'Abwaschen', 'Geht abwaschen', 20, 2, 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Q_Group`
--
ALTER TABLE `Q_Group`
  ADD PRIMARY KEY (`Id`);

--
-- Indizes für die Tabelle `Q_Member`
--
ALTER TABLE `Q_Member`
  ADD PRIMARY KEY (`Id`);

--
-- Indizes für die Tabelle `Q_Quests`
--
ALTER TABLE `Q_Quests`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Q_Group`
--
ALTER TABLE `Q_Group`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT für Tabelle `Q_Member`
--
ALTER TABLE `Q_Member`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT für Tabelle `Q_Quests`
--
ALTER TABLE `Q_Quests`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
