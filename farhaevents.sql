-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1

-- Generation Time: Apr 04, 2025 at 11:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12


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

--
-- Dumping data for table `billet`
--

INSERT INTO `billet` (`billetId`, `typeBillet`, `placeNum`, `idReservation`) VALUES
('B67E3D529A1015', 'Normal', 1, 2),
('B67E3D529A6071', 'Normal', 2, 2),
('B67E3D529A61A0', 'Normal', 3, 2),
('B67E3D529A63DD', 'Normal', 4, 2),
('B67E3D529A766C', 'Normal', 5, 2),
('B67E3D529A7780', 'Normal', 6, 2),
('B67E3D529A78BC', 'Normal', 7, 2),
('B67E3D529A799A', 'Normal', 8, 2),
('B67E3D529A7A6A', 'Normal', 9, 2),
('B67E3D529A7B6C', 'Normal', 10, 2),
('B67E3D529A7C62', 'Normal', 11, 2),
('B67E3D529A7D60', 'Normal', 12, 2),
('B67E3D529A7EA3', 'Normal', 13, 2),
('B67E3D529A7FD6', 'Normal', 14, 2),
('B67E3D529A810A', 'Reduit', 1, 2),
('B67E3D529A822F', 'Reduit', 2, 2),
('B67E3D529A8361', 'Reduit', 3, 2),
('B67E3D529A8480', 'Reduit', 4, 2),
('B67E3D529A8599', 'Reduit', 5, 2),
('B67E3D529A86CF', 'Reduit', 6, 2),
('B67E3D529A8819', 'Reduit', 7, 2),
('B67E3EC9EBFBAA', 'Normal', 1, 3),
('B67E3EC9EC062F', 'Normal', 2, 3),
('B67E3EC9EC06E1', 'Normal', 3, 3),
('B67E3EC9EC07C5', 'Reduit', 1, 3),
('B67E3F65F0FB3A', 'Normal', 1, 4),
('B67E3F65F0FC4E', 'Normal', 2, 4),
('B67E3F65F0FCC6', 'Normal', 3, 4),
('B67E51EDEAC7CA', 'Normal', 1, 5),
('B67E51EDEAC8CB', 'Normal', 2, 5),
('B67E51EDEAC964', 'Normal', 3, 5),
('B67E51EDEAC9D4', 'Normal', 4, 5),
('B67E51EDEACA4A', 'Normal', 5, 5),
('B67E51EDEACADE', 'Reduit', 1, 5),
('B67E51EDEACB5F', 'Reduit', 2, 5),
('B67E51EDEACBEF', 'Reduit', 3, 5),
('B67E51EDEAD1A8', 'Reduit', 4, 5),
('B67E536C672A6F', 'Normal', 1, 6),
('B67E536C672E2C', 'Normal', 2, 6),
('B67E536C672F94', 'Reduit', 1, 6),
('B67E5427167224', 'Normal', 1, 7),
('B67E5427167563', 'Normal', 2, 7),
('B67E5427167660', 'Normal', 3, 7),
('B67E5427169862', 'Normal', 4, 7),
('B67E5427169A0C', 'Normal', 5, 7),
('B67E5427169B6E', 'Normal', 6, 7),
('B67E5427169CA3', 'Normal', 7, 7),
('B67E5427169DA4', 'Normal', 8, 7),
('B67E5427169EB5', 'Normal', 9, 7),
('B67E5427169FAB', 'Normal', 10, 7),
('B67E542716A0BB', 'Normal', 11, 7),
('B67E542716A203', 'Normal', 12, 7),
('B67E542716A30D', 'Normal', 13, 7),
('B67E542716A4CB', 'Normal', 14, 7),
('B67E542716A660', 'Normal', 15, 7),
('B67E542716A7C6', 'Normal', 16, 7),
('B67E542716A934', 'Normal', 17, 7),
('B67E542716AA86', 'Normal', 18, 7),
('B67E542716ABA0', 'Normal', 19, 7),
('B67E542716ACAA', 'Normal', 20, 7),
('B67E542716AE9E', 'Normal', 21, 7),
('B67E542716B084', 'Normal', 22, 7),
('B67E542716B1F7', 'Normal', 23, 7),
('B67E542716B306', 'Normal', 24, 7),
('B67E542716B496', 'Normal', 25, 7),
('B67E542716B5AC', 'Normal', 26, 7),
('B67E542716B6AE', 'Normal', 27, 7),
('B67E542716B7A7', 'Normal', 28, 7),
('B67E542716B89B', 'Normal', 29, 7),
('B67E542716B99B', 'Normal', 30, 7),
('B67E542716BA8D', 'Normal', 31, 7),
('B67E542716BB7E', 'Normal', 32, 7),
('B67E542716BC70', 'Normal', 33, 7),
('B67E542716BD61', 'Normal', 34, 7),
('B67E542716BE55', 'Normal', 35, 7),
('B67E542716BF46', 'Normal', 36, 7),
('B67E542716C064', 'Normal', 37, 7),
('B67E542716C16B', 'Normal', 38, 7),
('B67E542716C256', 'Normal', 39, 7),
('B67E542716C315', 'Normal', 40, 7),
('B67E542716C3D3', 'Normal', 41, 7),
('B67E542716C4AD', 'Normal', 42, 7),
('B67E542716CAE4', 'Normal', 43, 7),
('B67E542716CBFE', 'Normal', 44, 7),
('B67E542716CCF7', 'Normal', 45, 7),
('B67E542716CDED', 'Normal', 46, 7),
('B67E542716CED8', 'Normal', 47, 7),
('B67E542716CFC6', 'Normal', 48, 7),
('B67E542716D0B6', 'Normal', 49, 7),
('B67E542716D19F', 'Normal', 50, 7),
('B67E542716D28A', 'Normal', 51, 7),
('B67E542716D375', 'Normal', 52, 7),
('B67E542716D461', 'Normal', 53, 7),
('B67E542716D54C', 'Normal', 54, 7),
('B67E542716D637', 'Normal', 55, 7),
('B67E542716D722', 'Normal', 56, 7),
('B67E542716D811', 'Normal', 57, 7),
('B67E542716D91F', 'Normal', 58, 7),
('B67E542716DA09', 'Normal', 59, 7),
('B67E542716DAF7', 'Normal', 60, 7),
('B67E542716DBE0', 'Normal', 61, 7),
('B67E542716DCCB', 'Normal', 62, 7),
('B67E542716DDB7', 'Normal', 63, 7),
('B67E542716DEA5', 'Normal', 64, 7),
('B67E542716DF91', 'Normal', 65, 7),
('B67E542716E07C', 'Normal', 66, 7),
('B67E542716E167', 'Normal', 67, 7),
('B67E542716E24F', 'Normal', 68, 7),
('B67E542716E33D', 'Normal', 69, 7),
('B67E542716E425', 'Normal', 70, 7),
('B67E542716E511', 'Normal', 71, 7),
('B67E542716E63D', 'Normal', 72, 7),
('B67E542716E78A', 'Normal', 73, 7),
('B67E542716E8B6', 'Normal', 74, 7),
('B67E542716E9ED', 'Normal', 75, 7),
('B67E542716EB41', 'Normal', 76, 7),
('B67E542716EC90', 'Normal', 77, 7),
('B67E542716EDEF', 'Normal', 78, 7),
('B67E542716EFDD', 'Normal', 79, 7),
('B67E542716F17E', 'Normal', 80, 7),
('B67E542716F314', 'Normal', 81, 7),
('B67E542716F468', 'Normal', 82, 7),
('B67E542716F5D6', 'Normal', 83, 7),
('B67E542716F6D1', 'Normal', 84, 7),
('B67E542716F7C8', 'Normal', 85, 7),
('B67E542716F8CB', 'Normal', 86, 7),
('B67E542716F9BF', 'Normal', 87, 7),
('B67E542716FABE', 'Normal', 88, 7),
('B67E542716FBAB', 'Normal', 89, 7),
('B67E542716FC9C', 'Normal', 90, 7),
('B67E542716FD92', 'Normal', 91, 7),
('B67E542716FE80', 'Normal', 92, 7),
('B67E542716FF71', 'Normal', 93, 7),
('B67E542717006C', 'Normal', 94, 7),
('B67E542717015D', 'Normal', 95, 7),
('B67E542717024D', 'Normal', 96, 7),
('B67E542717033F', 'Normal', 97, 7),
('B67E5427170430', 'Normal', 98, 7),
('B67E5427170528', 'Normal', 99, 7),
('B67E5427170671', 'Normal', 100, 7),
('B67E54271707EF', 'Normal', 101, 7),
('B67E5427170935', 'Normal', 102, 7),
('B67E5427170AA4', 'Normal', 103, 7),
('B67E5427170BDB', 'Normal', 104, 7),
('B67E5427170CFE', 'Normal', 105, 7),
('B67E5427170DF8', 'Normal', 106, 7),
('B67E5427170EE8', 'Normal', 107, 7),
('B67E5427170FDB', 'Normal', 108, 7),
('B67E542717142C', 'Normal', 109, 7),
('B67E5427171542', 'Normal', 110, 7),
('B67E5427171641', 'Normal', 111, 7),
('B67E5427171734', 'Normal', 112, 7),
('B67E542717182F', 'Normal', 113, 7),
('B67E542717191D', 'Normal', 114, 7),
('B67E5427171A0A', 'Normal', 115, 7),
('B67E5427171AF7', 'Normal', 116, 7),
('B67E5427171C05', 'Normal', 117, 7),
('B67E5427171CF2', 'Normal', 118, 7),
('B67E5427171DDE', 'Normal', 119, 7),
('B67E5427171ECB', 'Normal', 120, 7),
('B67E5427171FC2', 'Normal', 121, 7),
('B67E54271720D7', 'Normal', 122, 7),
('B67E54271721C4', 'Normal', 123, 7),
('B67E54271722B3', 'Normal', 124, 7),
('B67E542717239F', 'Normal', 125, 7),
('B67E5427172487', 'Normal', 126, 7),
('B67E542717257E', 'Normal', 127, 7),
('B67E5427172675', 'Normal', 128, 7),
('B67E54271727E8', 'Normal', 129, 7),
('B67E5427172935', 'Normal', 130, 7),
('B67E5427172A78', 'Normal', 131, 7),
('B67E5427172BE1', 'Normal', 132, 7),
('B67E5427172E18', 'Normal', 133, 7),
('B67E5427172F72', 'Normal', 134, 7),
('B67E54271730E7', 'Normal', 135, 7),
('B67E5427173214', 'Normal', 136, 7),
('B67E5427173310', 'Normal', 137, 7),
('B67E5427173473', 'Normal', 138, 7),
('B67E5427173591', 'Normal', 139, 7),
('B67E542717368F', 'Normal', 140, 7),
('B67E54271737EE', 'Normal', 141, 7),
('B67E5427173915', 'Normal', 142, 7),
('B67E5427173A10', 'Normal', 143, 7),
('B67E5427173B05', 'Normal', 144, 7),
('B67E5427173BF9', 'Normal', 145, 7),
('B67E5427173CE9', 'Normal', 146, 7),
('B67E5427173DD6', 'Normal', 147, 7),
('B67E5427173EC1', 'Normal', 148, 7),
('B67E5427173FAD', 'Normal', 149, 7),
('B67E5427174099', 'Normal', 150, 7),
('B67E5427174184', 'Normal', 151, 7),
('B67E542717426E', 'Normal', 152, 7),
('B67E542717435A', 'Normal', 153, 7),
('B67E5427174444', 'Normal', 154, 7),
('B67E5427174530', 'Normal', 155, 7),
('B67E542717461B', 'Normal', 156, 7),
('B67E5427174715', 'Normal', 157, 7),
('B67E542717481C', 'Normal', 158, 7),
('B67E5427174964', 'Normal', 159, 7),
('B67E5427174AED', 'Normal', 160, 7),
('B67E5427174C58', 'Normal', 161, 7),
('B67E5427174D65', 'Normal', 162, 7),
('B67E5427174ED0', 'Normal', 163, 7),
('B67E5427174FE1', 'Normal', 164, 7),
('B67E54271750D5', 'Normal', 165, 7),
('B67E54271751C5', 'Normal', 166, 7),
('B67E54271752B2', 'Normal', 167, 7),
('B67E542717539E', 'Normal', 168, 7),
('B67E542717548A', 'Normal', 169, 7),
('B67E5427175576', 'Normal', 170, 7),
('B67E542717566A', 'Normal', 171, 7),
('B67E5427175760', 'Normal', 172, 7),
('B67E542717588B', 'Normal', 173, 7),
('B67E5427175A04', 'Normal', 174, 7),
('B67E5427175B2D', 'Normal', 175, 7),
('B67E5427175C2F', 'Normal', 176, 7),
('B67E5427175D27', 'Normal', 177, 7),
('B67E5427175E46', 'Normal', 178, 7),
('B67E5427175F39', 'Normal', 179, 7),
('B67E542717602C', 'Normal', 180, 7),
('B67E5427176122', 'Normal', 181, 7),
('B67E5427176213', 'Normal', 182, 7),
('B67E5427176301', 'Normal', 183, 7),
('B67E5427176401', 'Normal', 184, 7),
('B67E54271764F1', 'Normal', 185, 7),
('B67E54271765E5', 'Normal', 186, 7),
('B67E54271766D3', 'Normal', 187, 7),
('B67E542717685C', 'Normal', 188, 7),
('B67E54271769E6', 'Normal', 189, 7),
('B67E5427176B28', 'Normal', 190, 7),
('B67E5427176C7E', 'Normal', 191, 7),
('B67E5427176D95', 'Normal', 192, 7),
('B67E5427176EE5', 'Normal', 193, 7),
('B67E5427176FF2', 'Normal', 194, 7),
('B67E54271770F8', 'Normal', 195, 7),
('B67E5427177210', 'Normal', 196, 7),
('B67E5427177306', 'Normal', 197, 7),
('B67E54271773FA', 'Normal', 198, 7),
('B67E54271774EE', 'Normal', 199, 7),
('B67E54271775EC', 'Normal', 200, 7),
('B67E5461B35692', 'Normal', 1, 8),
('B67E5461B3587E', 'Normal', 2, 8),
('B67E5461B3590E', 'Normal', 3, 8),
('B67E5461B3733A', 'Normal', 4, 8),
('B67E5461B37433', 'Normal', 5, 8),
('B67E5461B374E5', 'Normal', 6, 8),
('B67E5461B3756B', 'Normal', 7, 8),
('B67E5461B375FF', 'Normal', 8, 8),
('B67E5461B376A2', 'Normal', 9, 8),
('B67E5461B3774A', 'Normal', 10, 8),
('B67E5461B377EF', 'Normal', 11, 8),
('B67E5461B378DF', 'Normal', 12, 8),
('B67E5461B37966', 'Normal', 13, 8),
('B67E5461B379DA', 'Normal', 14, 8),
('B67E5461B37A4E', 'Normal', 15, 8),
('B67E5461B37ABF', 'Normal', 16, 8),
('B67E5461B37B30', 'Normal', 17, 8),
('B67E5461B37BA0', 'Normal', 18, 8),
('B67E5461B37C1C', 'Normal', 19, 8),
('B67E5461B37C8C', 'Normal', 20, 8),
('B67E5461B37D3E', 'Normal', 21, 8),
('B67E5461B37E31', 'Normal', 22, 8),
('B67E5461B37F26', 'Normal', 23, 8),
('B67E5461B38025', 'Normal', 24, 8),
('B67E5461B38118', 'Normal', 25, 8),
('B67E5461B3820D', 'Normal', 26, 8),
('B67E5461B38312', 'Normal', 27, 8),
('B67E5461B38403', 'Normal', 28, 8),
('B67E5461B38543', 'Normal', 29, 8),
('B67E5461B38697', 'Normal', 30, 8),
('B67E5461B39C41', 'Normal', 31, 8),
('B67E5461B39D52', 'Normal', 32, 8),
('B67E5461B39E10', 'Normal', 33, 8),
('B67E5461B39EB8', 'Normal', 34, 8),
('B67E5461B39F72', 'Normal', 35, 8),
('B67E5461B3A045', 'Normal', 36, 8),
('B67E5461B3A104', 'Normal', 37, 8),
('B67E5461B3A1C2', 'Normal', 38, 8),
('B67E5461B3A27F', 'Normal', 39, 8),
('B67E5461B3A33C', 'Normal', 40, 8),
('B67E5461B3A3FC', 'Normal', 41, 8),
('B67E5461B3A4D0', 'Normal', 42, 8),
('B67E5461B3A5C0', 'Normal', 43, 8),
('B67E5461B3A6B2', 'Normal', 44, 8),
('B67E5461B3A7A5', 'Normal', 45, 8),
('B67E5461B3A897', 'Normal', 46, 8),
('B67E5461B3A989', 'Normal', 47, 8),
('B67E5461B3AA7B', 'Normal', 48, 8),
('B67E5461B3AB6F', 'Normal', 49, 8),
('B67E5461B3AC8C', 'Normal', 50, 8),
('B67E5461B3AD9F', 'Normal', 51, 8),
('B67E5461B3AEBF', 'Normal', 52, 8),
('B67E5461B3AFCD', 'Normal', 53, 8),
('B67E5461B3B15C', 'Normal', 54, 8),
('B67E5461B3B29E', 'Normal', 55, 8),
('B67E5461B3B3F3', 'Normal', 56, 8),
('B67E5461B3B509', 'Normal', 57, 8),
('B67E5461B3B637', 'Normal', 58, 8),
('B67E5461B3B733', 'Normal', 59, 8),
('B67E5461B3B83C', 'Normal', 60, 8),
('B67E5461B3B92D', 'Normal', 61, 8),
('B67E5461B3BA1C', 'Normal', 62, 8),
('B67E5461B3BB0F', 'Normal', 63, 8),
('B67E5461B3BBFD', 'Normal', 64, 8),
('B67E5461B3BCEC', 'Normal', 65, 8),
('B67E5461B3BDDC', 'Normal', 66, 8),
('B67E5461B3BEC6', 'Normal', 67, 8),
('B67E5461B3BFDB', 'Normal', 68, 8),
('B67E5461B3C0F6', 'Normal', 69, 8),
('B67E5461B3C1F9', 'Normal', 70, 8),
('B67E5461B3C314', 'Normal', 71, 8),
('B67E5461B3C40D', 'Normal', 72, 8),
('B67E5461B3C501', 'Normal', 73, 8),
('B67E5461B3C5F0', 'Normal', 74, 8),
('B67E5461B3E170', 'Normal', 75, 8),
('B67E5461B3E2CB', 'Normal', 76, 8),
('B67E5461B3E3D2', 'Normal', 77, 8),
('B67E5461B3E4D4', 'Normal', 78, 8),
('B67E5461B3E5CD', 'Normal', 79, 8),
('B67E5461B3E6CB', 'Normal', 80, 8),
('B67E5461B3E7C1', 'Normal', 81, 8),
('B67E5461B3E8B5', 'Normal', 82, 8),
('B67E5461B3E9AB', 'Normal', 83, 8),
('B67E5461B3EA9F', 'Normal', 84, 8),
('B67E5461B3EBCA', 'Normal', 85, 8),
('B67E5461B3ECFC', 'Normal', 86, 8),
('B67E5461B3EE2D', 'Normal', 87, 8),
('B67E5461B3EF7B', 'Normal', 88, 8),
('B67E5461B3F0D4', 'Normal', 89, 8),
('B67E5461B3F249', 'Normal', 90, 8),
('B67E5461B3F39A', 'Normal', 91, 8),
('B67E5461B3F502', 'Normal', 92, 8),
('B67E5461B3F62A', 'Normal', 93, 8),
('B67E5461B3F72A', 'Normal', 94, 8),
('B67E5461B3F822', 'Normal', 95, 8),
('B67E5461B3F91E', 'Normal', 96, 8),
('B67E5461B3FA10', 'Normal', 97, 8),
('B67E5461B3FB44', 'Normal', 98, 8),
('B67E5461B3FC3C', 'Normal', 99, 8),
('B67E5461B3FD31', 'Normal', 100, 8),
('B67E5461B3FE23', 'Normal', 101, 8),
('B67E5461B3FF17', 'Normal', 102, 8),
('B67E5461B4000B', 'Normal', 103, 8),
('B67E5461B400FE', 'Normal', 104, 8),
('B67E5461B401F3', 'Normal', 105, 8),
('B67E5461B402E6', 'Normal', 106, 8),
('B67E5461B403DE', 'Normal', 107, 8),
('B67E5461B404CE', 'Normal', 108, 8),
('B67E5461B405C2', 'Normal', 109, 8),
('B67E5461B406B6', 'Normal', 110, 8),
('B67E5461B407AC', 'Normal', 111, 8),
('B67E5461B408A0', 'Normal', 112, 8),
('B67E5461B40990', 'Normal', 113, 8),
('B67E5461B40A82', 'Normal', 114, 8),
('B67E5461B40BBB', 'Normal', 115, 8),
('B67E5461B40C78', 'Normal', 116, 8),
('B67E5461B40D71', 'Normal', 117, 8),
('B67E5461B40E68', 'Normal', 118, 8),
('B67E5461B40F73', 'Normal', 119, 8),
('B67E5461B41131', 'Normal', 120, 8),
('B67E5461B41264', 'Normal', 121, 8),
('B67E5461B413AD', 'Normal', 122, 8),
('B67E5461B41512', 'Normal', 123, 8),
('B67E5461B41611', 'Normal', 124, 8),
('B67E5461B41715', 'Normal', 125, 8),
('B67E5461B41836', 'Normal', 126, 8),
('B67E5461B4192E', 'Normal', 127, 8),
('B67E5461B419FD', 'Normal', 128, 8),
('B67E5461B41AC2', 'Normal', 129, 8),
('B67E5461B41B82', 'Normal', 130, 8),
('B67E5461B41C76', 'Normal', 131, 8),
('B67E5461B41D62', 'Normal', 132, 8),
('B67E5461B41E51', 'Normal', 133, 8),
('B67E5461B41F3D', 'Normal', 134, 8),
('B67E5461B4202A', 'Normal', 135, 8),
('B67E5461B4211A', 'Normal', 136, 8),
('B67E5461B42205', 'Normal', 137, 8),
('B67E5461B422F1', 'Normal', 138, 8),
('B67E5461B423DF', 'Normal', 139, 8),
('B67E5461B424CF', 'Normal', 140, 8),
('B67E546267C1BB', 'Normal', 1, 9),
('B67E5470A20369', 'Normal', 1, 10);

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

-- Dumping data for table `edition`

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

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`eventId`, `eventType`, `eventTitle`, `eventDescription`, `TariffNormal`, `TariffReduit`) VALUES
('EV001', 'Musique', 'Rock Night', 'Join us for an electrifying night of rock music. Experience live performances from top bands. Enjoy a thrilling atmosphere with stunning visuals. Sing along to your favorite rock anthems. Meet fellow rock music enthusiasts. Grab exclusive event merchandise. Delicious food and drinks available. A night full of energy and passion. Don’t miss out on the ultimate rock experience. Get your tickets now!', 50.00, 30.00),
('EV002', 'Théatre', 'Shakespeare Play', 'Step into the world of Shakespearean drama. Witness an extraordinary performance of a classic. Enjoy brilliant acting and immersive storytelling. Authentic costumes bring history to life. Perfect for lovers of literature and theatre. A night of culture and entertainment awaits. Experience the magic of live theatre. Discuss the play with fellow enthusiasts. Enjoy a captivating performance under the lights. Reserve your seat for an unforgettable night.', 40.00, 25.00),
('EV003', 'Cinéma', 'Movie Premiere', 'Be among the first to watch an exclusive film. Walk the red carpet and feel like a star. Witness breathtaking visuals and storytelling. Meet special guests and industry professionals. Enjoy a high-quality cinematic experience. Capture the moment at our photo booth. Complimentary popcorn and drinks included. Engage in a post-screening discussion. A must-attend event for movie lovers. Limited seats available—book now!', 35.00, 20.00),
('EV004', 'Théatre', 'Stand-up Special', 'Laugh out loud at this incredible comedy show. Featuring some of the best stand-up comedians. A night of hilarious jokes and witty humor. Enjoy an interactive and engaging performance. Perfect for comedy lovers and casual fans. Food and drinks available throughout the show. Bring your friends for an unforgettable evening. Get ready for non-stop laughter and fun. Surprise guests may appear on stage. Secure your seats before they sell out!', 45.00, 25.00),
('EV005', 'Rencontres', 'Tech Summit 2025', 'Discover the latest advancements in technology. Join industry leaders for insightful discussions. Explore AI, cybersecurity, and digital innovation. Engage in hands-on workshops and demos. Network with professionals and tech enthusiasts. Learn from expert keynote speakers. Get inspired by groundbreaking startup ideas. Witness live product launches and showcases. Enhance your knowledge of future tech trends. Register now for this must-attend event.', 80.00, 50.00),
('EV006', 'Théatre', 'Ballet Performance', 'Immerse yourself in the beauty of ballet. Enjoy breathtaking performances by talented dancers. A mesmerizing blend of grace and storytelling. Live orchestral music enhances the experience. Elegant costumes and stage design transport you. Witness an artistic masterpiece unfold on stage. A cultural experience for all ages. Perfect for ballet lovers and newcomers alike. An enchanting evening of movement and music. Reserve your tickets for this stunning event.', 55.00, 35.00),
('EV007', 'Rencontres', 'Photography Basics', 'Learn the essentials of photography from experts. Master composition, lighting, and camera settings. Hands-on practice with professional guidance. Improve your skills through interactive exercises. Discover the art of storytelling through images. Get feedback on your work from instructors. Explore different photography styles and techniques. Meet and network with fellow photographers. Perfect for beginners and enthusiasts alike. Take your photography to the next level.', 30.00, 15.00),
('EV008', 'Rencontres', 'Esports Championship', 'Compete in an intense esports gaming tournament. Challenge top players from around the world. Experience high-stakes matches and thrilling moments. Win exciting prizes and gaming gear. Enjoy live commentary from expert analysts. Meet esports professionals and gaming influencers. Participate in interactive fan experiences. Watch the best teams battle for victory. A must-attend event for gamers and fans. Sign up now to secure your place!', 60.00, 40.00),
('EV009', 'Rencontres', 'Astronomy Night', 'Explore the wonders of the universe with experts. Observe stars and planets through powerful telescopes. Learn fascinating facts about celestial objects. Attend engaging lectures from astronomers. Experience a breathtaking view of the night sky. Participate in hands-on astronomy activities. Capture stunning astrophotography shots. Perfect for space lovers and curious minds. A magical night under the stars awaits. Don’t miss this cosmic journey!', 20.00, 10.00),
('EV010', 'Rencontres', 'Food and Music Fest', 'Indulge in a festival of flavors and melodies. Enjoy delicious food from top local chefs. Experience live performances from talented musicians. Dance to the beats of energetic DJ sets. Participate in cooking demonstrations and tastings. Meet food experts and culinary influencers. Discover unique food and drink pairings. A vibrant event for foodies and music lovers. Family-friendly entertainment for all ages. Join us for an unforgettable celebration!', 25.00, 15.00);

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

-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `qteBilletsNormal`, `qteBilletsReduit`, `editionId`, `idUser`) VALUES
(1, 6, 4, 3, '1'),
(2, 14, 7, 3, '1'),
(3, 3, 1, 7, '1'),
(4, 3, 0, 6, '1'),
(5, 5, 4, 4, '1'),
(6, 2, 1, 3, '1'),
(7, 200, 0, 5, '1'),
(8, 140, 0, 4, '1'),
(9, 1, 0, 4, '1'),
(10, 1, 0, 4, '1');


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `salle`
--

CREATE TABLE `salle` (
  `NumSalle` int(11) NOT NULL,
  `capSalle` int(11) NOT NULL,
  `DescSalle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Dumping data for table `salle`


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

-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`idUser`, `nomUser`, `prenomUser`, `mailUser`, `motPasse`) VALUES
('1', 'Naciri', 'Hamza', 'hamza.naciri@gmail.com', '$2y$10$k5TbQHzYTqQqQNYjCt.yX.qDwauCCLtXUi5Trcuru0TAlrwr.jk2y'),
('6f31', 'abdelhay', 'mallouli', 'mallouli.abdelhay.solicode@gmail.com', '$2y$10$bWKNFl4SfmbKNBZnyg9Xse9IB61n9Ef.OdN5IdPx3bBw8Bz8UjB12'),
('8d90', 'AHEMD', 'SALMA', 'salma@gmail.com', '12345678'),
('a0ec', 'ahmed', 'AHMED', 'ahmed@gmail.com', '$2y$10$3zGfRnvBJPvILsmv0L0Co.x8HW46vlIEMgJiIyEGvJuo1HS5dZ7eC');

--
-- Indexes for dumped tables

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
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
