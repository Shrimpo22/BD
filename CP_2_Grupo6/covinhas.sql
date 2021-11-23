-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 05:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covinhas`
--

-- --------------------------------------------------------

--
-- Table structure for table `agencia`
--

CREATE TABLE `agencia` (
  `Agencia_ID` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agencia`
--

INSERT INTO `agencia` (`Agencia_ID`, `Nome`) VALUES
(1, 'Paragem Final'),
(2, 'Tudo corrido à paulada'),
(3, 'Funerária Semente'),
(4, 'Menos Um'),
(5, 'Casa da Alma'),
(6, 'Sua Desgraça é nossa Alegria'),
(7, 'Bom Despacho'),
(8, 'Genro Feliz'),
(9, 'Eterna Morada'),
(10, 'Voltando a Casa do Pai'),
(11, 'A Próxima Vítima'),
(12, 'Segura a Mão de Deus e Vai'),
(13, 'Já Cá Não Tá Quem Falou'),
(14, 'Mais Vale Tarde que Nunca');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `Agência_Agencia_ID` int(11) NOT NULL,
  `Cliente_ID` int(11) NOT NULL,
  `Premier` bit(1) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`Agência_Agencia_ID`, `Cliente_ID`, `Premier`, `Nome`) VALUES
(10, 1, b'1', 'José Pé na Cova'),
(11, 2, b'1', 'Sebastião da Pá'),
(2, 3, b'0', 'António Coveiro'),
(1, 4, b'0', 'João Sete-Palmos'),
(12, 5, b'1', 'Zé do Caixão'),
(5, 6, b'1', 'João Pestana'),
(13, 7, b'0', 'Paulo Campas'),
(8, 8, b'1', 'Emílio Carregador de Caixão'),
(7, 9, b'0', 'Aníbal Cavaco Silva'),
(9, 10, b'1', 'Joaquim Lápides'),
(6, 11, b'0', 'Asdrúbal o Ceifeiro'),
(1, 12, b'1', 'Almíscar Sem-Tinto'),
(14, 13, b'0', 'Janice Ressureição'),
(4, 14, b'1', 'Evaldo Na Cruz'),
(13, 15, b'0', 'Evaristo tens Cá Disto'),
(5, 16, b'0', 'Miguel das Flores'),
(11, 17, b'1', 'Mateus Vai Com Deus'),
(6, 18, b'1', 'Clarice Benzida-pelo-Pau');

-- --------------------------------------------------------

--
-- Table structure for table `gestor`
--

CREATE TABLE `gestor` (
  `Agência_Agencia_ID` int(11) NOT NULL,
  `Gestor_ID` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gestor`
--

INSERT INTO `gestor` (`Agência_Agencia_ID`, `Gestor_ID`, `Nome`) VALUES
(1, 1, 'Melon the Husk'),
(2, 2, 'Careca Bezzos'),
(3, 3, 'Bill Portas'),
(4, 4, 'Steven Trabalhos'),
(5, 5, 'Rob Jobs'),
(6, 6, 'Bernard Assault'),
(7, 7, 'Warren \"Beef\" Buffet'),
(8, 8, 'Larry Ellison'),
(9, 9, 'Mark \"Reptile\" Zuck'),
(10, 10, 'Armancio Ortelã'),
(11, 11, 'MacDonalds Scott'),
(12, 12, 'Johny MagicHands'),
(13, 13, 'Morgan Arrested'),
(14, 14, 'Sylvester Stallion'),
(11, 15, 'Arnold schwarzenegger');

-- --------------------------------------------------------

--
-- Table structure for table `premier`
--

CREATE TABLE `premier` (
  `Cliente_Cliente_ID` int(11) NOT NULL,
  `Gestor_Gestor_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premier`
--

INSERT INTO `premier` (`Cliente_Cliente_ID`, `Gestor_Gestor_ID`) VALUES
(18, NULL),
(12, 1),
(14, 4),
(6, 5),
(8, 8),
(10, 9),
(1, 10),
(2, 11),
(17, 11),
(5, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`Agencia_ID`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Cliente_ID`),
  ADD KEY `FK_Cliente_noname_Agência` (`Agência_Agencia_ID`);

--
-- Indexes for table `gestor`
--
ALTER TABLE `gestor`
  ADD PRIMARY KEY (`Gestor_ID`),
  ADD KEY `FK_Gestor_noname_Agência` (`Agência_Agencia_ID`);

--
-- Indexes for table `premier`
--
ALTER TABLE `premier`
  ADD PRIMARY KEY (`Cliente_Cliente_ID`),
  ADD KEY `FK_Premier_noname_Gestor` (`Gestor_Gestor_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_Cliente_noname_Agência` FOREIGN KEY (`Agência_Agencia_ID`) REFERENCES `agencia` (`Agencia_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `gestor`
--
ALTER TABLE `gestor`
  ADD CONSTRAINT `FK_Gestor_noname_Agência` FOREIGN KEY (`Agência_Agencia_ID`) REFERENCES `agencia` (`Agencia_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `premier`
--
ALTER TABLE `premier`
  ADD CONSTRAINT `FK_Premier_Cliente` FOREIGN KEY (`Cliente_Cliente_ID`) REFERENCES `cliente` (`Cliente_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Premier_noname_Gestor` FOREIGN KEY (`Gestor_Gestor_ID`) REFERENCES `gestor` (`Gestor_ID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
