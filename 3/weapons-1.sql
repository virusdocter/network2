-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 03:47 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ro_m`
--

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `Type` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `Class` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `Buy` int(11) NOT NULL,
  `Sell` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Attack` int(11) NOT NULL,
  `RequiredLvl` int(11) NOT NULL,
  `Slot` int(11) NOT NULL,
  `Property` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `Jobs` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `DroppedBy` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`Type`, `Class`, `Buy`, `Sell`, `Weight`, `Attack`, `RequiredLvl`, `Slot`, `Property`, `Jobs`, `Description`, `DroppedBy`, `Name`) VALUES
('Weapon	', 'Book	', 20, 10, 200, 110, 70, 2, 'Neutral	', 'Priest		Sage		Star Gladiator\r\n', 'A gigantic encyclopedia produced by X company in Prontera, known mostly for its sharp and hard edges. It is so hard to the point that people who got hit by the edges of this book often ask \"Did you guys install 3 carat Diamond on this?\".\r\nMATK + 15%, INT + 3, DEX + 2, Critical Rate + 20.\r\nCritical Rate bonus is further increased by +1 per 5 base LUK.', 'Elder', '	Encyclopedia'),
('Weapon	', 'Knuckle', 58000, 29000, 50, 97, 24, 2, 'Fire', '	Priest		Monk', 'Claws shaped like human fingers with long, sharp nails.', '	Wootan Fighter', '	Finger '),
('Weapon', 'Katar', 37200, 18600, 150, 165, 33, 0, '-', 'Assassin', 'A specially made katar with two blades that move like scissors to reveal a third blade from within.', 'No Result', '	Jamadhar'),
('Weapon', 'Two-handed Spear	', 60000, 30000, 250, 185, 33, 0, '-', 'Swordman		Knight		Crusader', 'A spear that is commonly used by mounted knights.', 'No Result', '	Lance'),
('Weapon	', 'Two-handed Spear', 20, 10, 100, 120, 65, 0, 'Neutral	', 'Knight/Crusader', 'Auger shaped spear that is effective at attacking enemy\'s weak points.\r\nIgnores DEF of the target.\r\nAdd a 2% chance of auto casting Level 5 Pierce on the enemy when attacking.\r\nIncreases damage done against DemiHuman monster by 10%.\r\n', 'Treasure Chest/Mini Demon', 'Ahlspiess '),
('Weapon	', 'Two-handed Sword	', 22500, 11250, 160, 115, 18, 0, '-', 'wordman/Knight/Crusader', 'A straight bladed sword that can be brutally swung just like a baseball bat.', '	No Result', 'Bastard Sword'),
('Weapon	', 'Mace', 23000, 11500, 80, 84, 14, 2, '-', 'Swordman	/Acolyte/Merchant	/Knight/Priest/Blacksmith/Crusader/Monk/Alchemist', 'A simple flail that consists of a thin mace attached to a chain of iron links.', 'Solider', 'Chain '),
('Weapon	', 'Dagger', 120000, 60000, 55, 140, 55, 0, '-', 'Mage		Wizard		Sage		Soul Linker\r\n', 'A dagger that has a high chance to do critical damage to a target.\r\nIncreases Critical Rate.', 'High Wizard Katrinn / High Wizard Kathryne\r\n\r\nKiel D-01 RSX 0806 / RSX-0806', 'Dagger of Counter'),
('Weapon	', 'Shotgun', 72000, 36000, 130, 200, 70, 0, '-', 'Gunslinger		Rebellion', 'The barrel of the original Gate Keeper is made out of pure Oridecon, making it very durable. \r\nDEX + 1 \r\nEach refine level increases DEF by 1. \r\nInflicts splash damage. \r\nAdd a 3% chance of auto casting Level 6 Spread Attack on the enemy when attacking.', 'Zukadam / Zakudam\r\n	Archdam', 'Gate Keeper-DD'),
('Weapon', 'Two-handed Spear', 54000, 27000, 250, 165, 33, 2, '-', 'Swordman		Knight		Crusader', 'A spear with a steel spike and axe-blade which enable both piercing and hacking.', 'Baphomet Jr.', 'Halberd'),
('Weapon	', 'Musical Instrument	', 62000, 31000, 90, 114, 27, 1, '-', 'Bard / Dancer', 'A stringed instrument known for the beautiful sound of each note that is played.\r\nINT + 2', 'Solace / Lady Solace', 'Harp'),
('Weapon', 'Grenade Launcher', 230000, 115000, 125, 280, 65, 1, '-', 'Gunslinger		Rebellion\r\n', '	A grenade launcher that propels bullets with blazing hellfire.\r\n', 'No Result', 'Inferno'),
('Weapon', 'Knuckle	', 20, 10, 45, 110, 36, 0, 'Wind	', 'Priest		Monk', 'A claw blessed by Zephyrus, god of the west wind.\r\nInflicts 5% additional damage on Undead monster and 10% additional damage on Earth, Water, Fire and Wind Property enemies.', 'Champion Chen (Re-Stats)', 'Kaiser Knuckle '),
('Weapon', 'Mace', 1600, 800, 80, 37, 2, 0, '-', 'Novice (& Supernovice)		Swordman		Acolyte		Merchant		Knight		Priest\r\n	Blacksmith		Crusader		Monk		Alchemist', 'A flanged, solid club that is effective for simple smashing.', '	No Result', 'Mace'),
('Weapon', 'One-handed Sword', 20, 10, 50, 120, 40, 0, '-', '	Swordman		Merchant		Thief		Knight		Blacksmith		Assassin\r\n	Crusader		Rogue		Alchemist', 'An one-handed sword topped with several extra edges for making wounds deeper and more unsightly.\r\nIncreases damage against DemiHuman monster by 5%\r\nEnables use of Level 5 Double Attack.', 'Ygnizem / Egnigem Cenia', 'Nagan'),
('Weapon', 'Dagger', 10000, 5000, 60, 39, 0, 0, 'Earth	', 'Novice (& Supernovice)		Swordman		Mage		Archer		Merchant		Thief\r\n	Knight		Wizard		Blacksmith		Hunter		Assassin		Crusader\r\n	Sage		Rogue		Alchemist		Bard / Dancer		Soul Linker		Ninja\r\n	Kagerou / Oboro		Rebellion', 'A dagger made from a mysterious black stone called \"Obsidian\". Although the blade is made from stone, it cuts well.', '	No Result', 'Obsidian Dagger'),
('Weapon', 'Two-handed Spear', 27000, 13500, 200, 124, 18, 0, '	-', 'Swordman		Knight		Crusader', 'A spear topped with a double edged blade with two side blades.', 'No Result', 'Partizan'),
('Weapon', 'Mace', 20, 10, 90, 165, 40, 0, '-', 'Acolyte		Priest		Monk', 'A heavy and powerful iron mace with a rounded top.\r\nIncreases damage against Undead, DemiHuman and Earth Property by 10%.', '	High Priest Magaleta / High Priest Margaretha\r\n\r\n', 'Quadrille '),
('Weapon', 'Whip	', 32000, 16000, 90, 135, 30, 0, '-', 'Bard / Dancer', 'A whip with a spiked ball attached at the end.', 'No Result', 'Rante Whip'),
('Weapon', 'Two-handed Axe', 20, 10, 230, 120, 44, 0, 'Darkness / Shadow	', 'Swordman		Merchant		Knight		Blacksmith		Crusader		Alchemist', 'An axe which is said to eradicate the darkness in mislead hearts and guide them to the afterlife.\r\nIncreases Critical Attack on Undead monster by 50%.\r\nCauses Coma effect on Demon monster by a low chance.', 'Whitesmith Harword / Whitesmith Howard', 'Sabbath '),
('Weapon', 'Book	', 51000, 25500, 80, 125, 27, 1, '-', 'Priest		Sage		Star Gladiator\r\n', 'A marble tablet on which the wise words of the ancients have been engraved and immortalized.', '	Pharaoh\r\n(3%)\r\n	Nightmare Amon Ra (Re-Stats)\r\n(0.1%)\r\n	Amon Ra', 'Tablet '),
('Weapon', 'Katar', 20, 10, 125, 151, 70, 0, 'Darkness / Shadow	', 'Assassin', 'A katar made by a leech, by combining many of the anger and curse left by the dead.\r\nCurse an enemy when you attack (Success Chance 2%).\r\nCritical Rate - 1\r\nIndestructible (except in upgrade attempts).', 'Obsidian\r\n(0.1%)\r\n	Diabolic', 'Unholy Touch '),
('Weapon', 'Whip', 20, 10, 0, 50, 80, 0, '-', 'Bard / Dancer', 'An especially made whip for battling against Demi-Humans; this whip is strong enough to cut their flesh.\r\nDEX + 2\r\nIncreases Physical Attack Strength towards Demi-Human monsters by 95%.\r\nIgnores Physical Defense from Demi-Human monsters by 20%.\r\nIndestructible.', 'No Result', 'Valorous Battle Lariat'),
('Weapon', 'Knuckle	', 8000, 4000, 40, 30, 0, 3, '-', 'Priest		Monk', '	A common, yet effective claw that\'s also known as the \"Tiger Fang\".\r\n', 'Wootan Fighter', 'Waghnak'),
('Weapon', 'Two-handed Spear	', 20, 10, 200, 170, 48, 0, 'Wind', 'Swordman		Knight		Crusader', 'A spear imbued with the Wind Property.\r\nAdd a 10% chance of auto casting Level 3 Thunder Storm on the enemy when attacking.\r\nCauses Silence effect to enemies by 2% chance.', 'Knight of Windstorm / Stormy Knight', 'Zephyrus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
