-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2021 at 09:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projecto`
--

-- --------------------------------------------------------

--
-- Table structure for table `areatematica`
--

CREATE TABLE `areatematica` (
  `AreaTematica_AreaTemID` int(11) DEFAULT NULL,
  `AreaTemID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `areatematica`
--

INSERT INTO `areatematica` (`AreaTematica_AreaTemID`, `AreaTemID`, `Nome`) VALUES
(1, 1, 'Informática'),
(1, 2, 'Cibersegurança'),
(1, 3, 'POO'),
(1, 4, 'Sistemas de Informação'),
(1, 5, 'Machine Learning'),
(1, 6, 'Assembly'),
(1, 7, 'Linux'),
(1, 8, 'Administração de Sistemas'),
(1, 9, 'Ciência de Dados'),
(1, 10, 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `armario`
--

CREATE TABLE `armario` (
  `Piso_PisoID` int(11) NOT NULL,
  `Capacidade` int(11) NOT NULL DEFAULT 0,
  `ArmarioID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armario`
--

INSERT INTO `armario` (`Piso_PisoID`, `Capacidade`, `ArmarioID`) VALUES
(1, 259, 2),
(1, 256, 3),
(1, 279, 5),
(1, 195, 7),
(1, 231, 9),
(1, 210, 11),
(1, 245, 17),
(1, 293, 18),
(1, 170, 21),
(2, 110, 1),
(2, 277, 6),
(2, 238, 10),
(2, 244, 12),
(2, 292, 13),
(2, 101, 19),
(2, 142, 20),
(2, 192, 22),
(3, 223, 4),
(3, 170, 8),
(3, 170, 14),
(3, 265, 15),
(3, 251, 16),
(3, 214, 23);

-- --------------------------------------------------------

--
-- Table structure for table `artigo`
--

CREATE TABLE `artigo` (
  `Periodico_Publicacao_PubID` int(11) NOT NULL,
  `AreaTematica_AreaTemID` int(11) NOT NULL,
  `ArtigoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artigo`
--

INSERT INTO `artigo` (`Periodico_Publicacao_PubID`, `AreaTematica_AreaTemID`, `ArtigoID`) VALUES
(5, 6, 1),
(7, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `AutorID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`AutorID`, `Nome`) VALUES
(2, 'Abbe'),
(7, 'Dorolice'),
(10, 'Etta'),
(3, 'Frasquito'),
(9, 'Garrett'),
(1, 'Leisha'),
(6, 'Nancee'),
(5, 'Stavro'),
(4, 'Tootsie'),
(8, 'Uri');

-- --------------------------------------------------------

--
-- Table structure for table `capa`
--

CREATE TABLE `capa` (
  `Miniatura` varchar(255) NOT NULL,
  `Ampliada` varchar(255) NOT NULL,
  `CapaID` int(11) NOT NULL,
  `Publicacao_PubID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capa`
--

INSERT INTO `capa` (`Miniatura`, `Ampliada`, `CapaID`, `Publicacao_PubID`) VALUES
('lxjz/ramssamd/qgr', 'zjro/atpnmrno/fpn', 1, 1),
('tchu/yqqcgzil/lnp', 'siij/wrnrxgel/vyv', 2, 2),
('jzgy/rvtzbdyn/hkz', 'nkok/teqvthdc/qah', 3, 3),
('juma/xfanwnbd/hid', 'yzrd/daglvjoe/thj', 4, 4),
('ycvw/bhhbavfc/oiz', 'rvpg/cocqhegs/aet', 5, 5),
('iijm/jozndjan/roh', 'wvdj/xctikgww/jjs', 6, 6),
('vqvi/qaszdacc/ylc', 'cdoz/wewagvgx/kcp', 7, 7),
('tuwp/hzfkdhxg/buq', 'vjbs/gkymjzbq/sot', 8, 8),
('tqln/fbajftcg/zbr', 'cesm/ysjdkfwj/vth', 9, 9),
('hwmn/utvegazy/svp', 'ihsn/xqgslnxd/lyt', 10, 10),
('limf/vjtzmpla/jct', 'gwoy/kjcivedd/xys', 26, 26),
('tewx/ovicpkwg/xli', 'iwpu/syfswxkc/sjv', 27, 27),
('jrow/quxkuzcr/azv', 'jlnl/vstaaovd/mzi', 28, 28),
('zxet/nemaagzf/axh', 'ovvs/laftqwuy/hpa', 29, 29),
('dqfn/sdelhsox/bjq', 'utua/aqrmwfpv/wpn', 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `capitulo`
--

CREATE TABLE `capitulo` (
  `Livro_Publicacao_PubID` int(11) NOT NULL,
  `AreaTematica_AreaTemID` int(11) NOT NULL,
  `NumCap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capitulo`
--

INSERT INTO `capitulo` (`Livro_Publicacao_PubID`, `AreaTematica_AreaTemID`, `NumCap`) VALUES
(3, 3, 7),
(1, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `configuracoes`
--

CREATE TABLE `configuracoes` (
  `Configuracoes_ID` int(11) NOT NULL,
  `ValorMulta` float NOT NULL,
  `NumProlongamentosMax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `configuracoes`
--

INSERT INTO `configuracoes` (`Configuracoes_ID`, `ValorMulta`, `NumProlongamentosMax`) VALUES
(1, 250, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dissertacao`
--

CREATE TABLE `dissertacao` (
  `Monografia_Publicacao_PubID` int(11) NOT NULL,
  `Tema_TemaID` int(11) NOT NULL,
  `Tipo_TipoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dissertacao`
--

INSERT INTO `dissertacao` (`Monografia_Publicacao_PubID`, `Tema_TemaID`, `Tipo_TipoID`) VALUES
(10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `editora`
--

CREATE TABLE `editora` (
  `EditID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `editora`
--

INSERT INTO `editora` (`EditID`, `Nome`) VALUES
(5, 'Bernhard-Stoltenberg'),
(1, 'Dare Group'),
(7, 'Dare-Wintheiser'),
(6, 'Douglas-D\'Amore'),
(8, 'Kemmer-Collins'),
(2, 'Lockman-Nicolas'),
(9, 'Roberts-Stroman'),
(3, 'Roob, Littel and Shanahan'),
(4, 'Schumm, Kuhlman and Jones'),
(10, 'Zulauf-Bruen');

-- --------------------------------------------------------

--
-- Table structure for table `emprestimo`
--

CREATE TABLE `emprestimo` (
  `Pedido_Utente_NumUtente_` int(11) NOT NULL,
  `Pedido_PublicacaoEmprestavel_Publicacao_PubID_` int(11) NOT NULL,
  `DataAquisicao` date NOT NULL,
  `DataLimite` date NOT NULL,
  `MultaAPagar` float NOT NULL,
  `NumProlongamentos` int(11) NOT NULL,
  `Extravio` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emprestimo`
--

INSERT INTO `emprestimo` (`Pedido_Utente_NumUtente_`, `Pedido_PublicacaoEmprestavel_Publicacao_PubID_`, `DataAquisicao`, `DataLimite`, `MultaAPagar`, `NumProlongamentos`, `Extravio`) VALUES
(14, 1, '2021-10-31', '2021-11-30', 3, 0, b'0'),
(17, 1, '2021-10-19', '2021-11-19', 5, 1, b'1'),
(19, 4, '2021-09-01', '2021-10-01', 5, 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `especialista`
--

CREATE TABLE `especialista` (
  `Utente_NumUtente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `especialista`
--

INSERT INTO `especialista` (`Utente_NumUtente`) VALUES
(20);

-- --------------------------------------------------------

--
-- Table structure for table `estadodeconservacao`
--

CREATE TABLE `estadodeconservacao` (
  `EstadoID` int(11) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estadodeconservacao`
--

INSERT INTO `estadodeconservacao` (`EstadoID`, `Estado`) VALUES
(1, 'Novo'),
(2, 'Gasto'),
(3, 'Inutilizado'),
(4, 'Extraviado');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `Editora_EditID` int(11) NOT NULL,
  `FeedID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`Editora_EditID`, `FeedID`) VALUES
(4, 1),
(6, 2),
(9, 3),
(7, 4),
(3, 5),
(9, 6),
(5, 7),
(10, 8),
(10, 9),
(2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `jornal`
--

CREATE TABLE `jornal` (
  `Periodico_Publicacao_PubID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jornal`
--

INSERT INTO `jornal` (`Periodico_Publicacao_PubID`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `listadeleitura`
--

CREATE TABLE `listadeleitura` (
  `AreaTematica_AreaTemID` int(11) DEFAULT NULL,
  `Utente_NumUtente` int(11) NOT NULL,
  `ListaDeLeitura_ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Criterio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listadeleitura`
--

INSERT INTO `listadeleitura` (`AreaTematica_AreaTemID`, `Utente_NumUtente`, `ListaDeLeitura_ID`, `Nome`, `Criterio`) VALUES
(2, 10, 1, 'Hacking', NULL),
(8, 6, 2, 'How to Linux', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listalivroed`
--

CREATE TABLE `listalivroed` (
  `LivroEdicao_Livro_Publicacao_PubID_` int(11) NOT NULL,
  `LivroEdicao_NumEdicao_` int(11) NOT NULL,
  `ListaDeLeitura_ListaDeLeitura_ID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listalivroed`
--

INSERT INTO `listalivroed` (`LivroEdicao_Livro_Publicacao_PubID_`, `LivroEdicao_NumEdicao_`, `ListaDeLeitura_ListaDeLeitura_ID_`) VALUES
(1, 2, 1),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `livro`
--

CREATE TABLE `livro` (
  `Publicacao_PubID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livro`
--

INSERT INTO `livro` (`Publicacao_PubID`) VALUES
(1),
(3),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `livroedicao`
--

CREATE TABLE `livroedicao` (
  `Livro_Publicacao_PubID` int(11) NOT NULL,
  `EstadoDeConservacao_EstadoID` int(11) NOT NULL,
  `RFID_NumRFID` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `NumEdicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livroedicao`
--

INSERT INTO `livroedicao` (`Livro_Publicacao_PubID`, `EstadoDeConservacao_EstadoID`, `RFID_NumRFID`, `ISBN`, `NumEdicao`) VALUES
(1, 3, 1, 432, 2),
(3, 3, 2, 332, 1);

-- --------------------------------------------------------

--
-- Table structure for table `monografia`
--

CREATE TABLE `monografia` (
  `Publicacao_PubID` int(11) NOT NULL,
  `EstadoDeConservacao_EstadoID` int(11) NOT NULL,
  `RFID_NumRFID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monografia`
--

INSERT INTO `monografia` (`Publicacao_PubID`, `EstadoDeConservacao_EstadoID`, `RFID_NumRFID`) VALUES
(10, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `palavrachave`
--

CREATE TABLE `palavrachave` (
  `PalavraChaveID` int(11) NOT NULL,
  `PalavraChave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `palavrachave`
--

INSERT INTO `palavrachave` (`PalavraChaveID`, `PalavraChave`) VALUES
(1, 'Customizable'),
(2, 'dynamic'),
(3, 'migration'),
(4, 'policy'),
(5, 'national'),
(6, 'interface'),
(7, 'secondary'),
(8, 'impactful'),
(9, 'open system'),
(10, 'leading edge');

-- --------------------------------------------------------

--
-- Table structure for table `palavrachaveartigo`
--

CREATE TABLE `palavrachaveartigo` (
  `Artigo_Periodico_Publicacao_PubID_` int(11) NOT NULL,
  `Artigo_ArtigoID_` int(11) NOT NULL,
  `PalavraChave_PalavraChaveID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `palavrachaveartigo`
--

INSERT INTO `palavrachaveartigo` (`Artigo_Periodico_Publicacao_PubID_`, `Artigo_ArtigoID_`, `PalavraChave_PalavraChaveID_`) VALUES
(5, 1, 5),
(7, 2, 2),
(7, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `palavrachavecap`
--

CREATE TABLE `palavrachavecap` (
  `Capitulo_Livro_Publicacao_PubID_` int(11) NOT NULL,
  `Capitulo_NumCap_` int(11) NOT NULL,
  `PalavraChave_PalavraChaveID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `palavrachavecap`
--

INSERT INTO `palavrachavecap` (`Capitulo_Livro_Publicacao_PubID_`, `Capitulo_NumCap_`, `PalavraChave_PalavraChaveID_`) VALUES
(1, 3, 4),
(1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `palavrachavepub`
--

CREATE TABLE `palavrachavepub` (
  `Publicacao_PubID_` int(11) NOT NULL,
  `PalavraChave_PalavraChaveID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `palavrachavepub`
--

INSERT INTO `palavrachavepub` (`Publicacao_PubID_`, `PalavraChave_PalavraChaveID_`) VALUES
(1, 8),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `Utente_NumUtente_` int(11) NOT NULL,
  `PublicacaoEmprestavel_Publicacao_PubID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`Utente_NumUtente_`, `PublicacaoEmprestavel_Publicacao_PubID_`) VALUES
(14, 1),
(17, 1),
(19, 4),
(20, 1),
(20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `periodicidade`
--

CREATE TABLE `periodicidade` (
  `PeriodicidadeID` int(11) NOT NULL,
  `Periodicidade` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periodicidade`
--

INSERT INTO `periodicidade` (`PeriodicidadeID`, `Periodicidade`) VALUES
(1, 'Diariamente'),
(2, 'Semanalmente'),
(3, 'Mensalmente'),
(4, 'Anualmente');

-- --------------------------------------------------------

--
-- Table structure for table `periodico`
--

CREATE TABLE `periodico` (
  `Publicacao_PubID` int(11) NOT NULL,
  `Periodicidade_PeriodicidadeID` int(11) NOT NULL,
  `ISSN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periodico`
--

INSERT INTO `periodico` (`Publicacao_PubID`, `Periodicidade_PeriodicidadeID`, `ISSN`) VALUES
(5, 2, 322),
(7, 3, 321);

-- --------------------------------------------------------

--
-- Table structure for table `periodicoedicao`
--

CREATE TABLE `periodicoedicao` (
  `Periodico_Publicacao_PubID` int(11) NOT NULL,
  `EstadoDeConservacao_EstadoID` int(11) NOT NULL,
  `RFID_NumRFID` int(11) NOT NULL,
  `NumEdicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periodicoedicao`
--

INSERT INTO `periodicoedicao` (`Periodico_Publicacao_PubID`, `EstadoDeConservacao_EstadoID`, `RFID_NumRFID`, `NumEdicao`) VALUES
(5, 1, 4, 1),
(7, 2, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `periodo`
--

CREATE TABLE `periodo` (
  `DataInicio` date DEFAULT NULL,
  `DataFim` date DEFAULT NULL,
  `PeriodoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periodo`
--

INSERT INTO `periodo` (`DataInicio`, `DataFim`, `PeriodoID`) VALUES
('2021-10-20', '2022-11-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `periodosuspensao`
--

CREATE TABLE `periodosuspensao` (
  `Utente_NumUtente_` int(11) NOT NULL,
  `Periodo_PeriodoID_` int(11) NOT NULL,
  `NumSuspensao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periodosuspensao`
--

INSERT INTO `periodosuspensao` (`Utente_NumUtente_`, `Periodo_PeriodoID_`, `NumSuspensao`) VALUES
(10, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `piso`
--

CREATE TABLE `piso` (
  `PisoID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `piso`
--

INSERT INTO `piso` (`PisoID`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `prateleira`
--

CREATE TABLE `prateleira` (
  `AreaTematica_AreaTemID` int(11) NOT NULL,
  `Armario_Piso_PisoID` int(11) NOT NULL,
  `Armario_ArmarioID` int(11) NOT NULL,
  `Capacidade` int(11) NOT NULL DEFAULT 0,
  `PrateleiraID` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prateleira`
--

INSERT INTO `prateleira` (`AreaTematica_AreaTemID`, `Armario_Piso_PisoID`, `Armario_ArmarioID`, `Capacidade`, `PrateleiraID`) VALUES
(7, 1, 3, 67, 9),
(9, 1, 5, 97, 8),
(5, 1, 7, 32, 5),
(4, 1, 7, 47, 15),
(7, 1, 9, 97, 2),
(1, 1, 9, 68, 4),
(5, 1, 9, 30, 6),
(7, 2, 1, 50, 13),
(8, 2, 1, 65, 14),
(5, 2, 6, 73, 1),
(5, 2, 6, 53, 11),
(1, 2, 10, 75, 3),
(1, 2, 10, 84, 12),
(4, 3, 8, 66, 7),
(2, 3, 8, 76, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pubautor`
--

CREATE TABLE `pubautor` (
  `Publicacao_PubID_` int(11) NOT NULL,
  `Autor_AutorID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pubautor`
--

INSERT INTO `pubautor` (`Publicacao_PubID_`, `Autor_AutorID_`) VALUES
(1, 3),
(3, 5),
(4, 4),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `publicacao`
--

CREATE TABLE `publicacao` (
  `Editora_EditID` int(11) NOT NULL,
  `Capa_CapaID` int(11) DEFAULT NULL,
  `Prateleira_Armario_Piso_PisoID` int(11) NOT NULL,
  `Prateleira_Armario_ArmarioID` int(11) NOT NULL,
  `Prateleira_PrateleiraID` int(11) NOT NULL,
  `PubID` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Subtitulo` varchar(100) NOT NULL,
  `Titulo_Abreviado` varchar(50) NOT NULL,
  `Descricao` text NOT NULL,
  `NumPaginas` int(11) NOT NULL,
  `DataPub` date NOT NULL,
  `NumEmp` int(11) NOT NULL,
  `DataAqui` date NOT NULL,
  `TipoPublicacao_TipoPubID` int(11) NOT NULL,
  `Emprestavel` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicacao`
--

INSERT INTO `publicacao` (`Editora_EditID`, `Capa_CapaID`, `Prateleira_Armario_Piso_PisoID`, `Prateleira_Armario_ArmarioID`, `Prateleira_PrateleiraID`, `PubID`, `Titulo`, `Subtitulo`, `Titulo_Abreviado`, `Descricao`, `NumPaginas`, `DataPub`, `NumEmp`, `DataAqui`, `TipoPublicacao_TipoPubID`, `Emprestavel`) VALUES
(6, 1, 2, 6, 1, 1, 'Mr. Average', 'subtitulo102', 'titulo_abreviado115', 'Innovative responsive structure', 599, '0000-00-00', 95722, '0000-00-00', 1, b'1'),
(7, 2, 2, 6, 1, 2, 'Laramie Project, The', 'subtitulo215', 'titulo_abreviado543', 'Decentralized discrete archive', 311, '0000-00-00', 27579, '0000-00-00', 4, b'1'),
(4, 3, 2, 6, 1, 3, 'Three Kingdoms: Resurrection of the Dragon (Saam gwok dzi gin lung se gap)', 'subtitulo155', 'titulo_abreviado218', 'Networked 24 hour toolset', 441, '0000-00-00', 85170, '0000-00-00', 3, b'0'),
(2, 4, 2, 6, 1, 4, 'Gran Paradiso', 'subtitulo117', 'titulo_abreviado043', 'Managed 5th generation capability', 602, '0000-00-00', 61103, '0000-00-00', 3, b'0'),
(8, 5, 2, 6, 1, 5, 'Promised Land', 'subtitulo642', 'titulo_abreviado252', 'Re-contextualized heuristic policy', 131, '0000-00-00', 93352, '0000-00-00', 5, b'0'),
(7, 6, 2, 6, 1, 6, 'Run If You Can', 'subtitulo393', 'titulo_abreviado167', 'Upgradable context-sensitive help-desk', 129, '0000-00-00', 22710, '0000-00-00', 4, b'1'),
(3, 7, 2, 6, 1, 7, 'Tactical Force', 'subtitulo004', 'titulo_abreviado747', 'User-friendly scalable extranet', 849, '0000-00-00', 65947, '0000-00-00', 3, b'1'),
(2, 8, 2, 6, 1, 8, 'Set-Up, The', 'subtitulo964', 'titulo_abreviado229', 'Advanced regional utilisation', 66, '0000-00-00', 49090, '0000-00-00', 6, b'1'),
(6, 9, 2, 6, 1, 9, 'Ultramarines: A Warhammer 40,000 Movie', 'subtitulo454', 'titulo_abreviado926', 'Vision-oriented non-volatile capability', 465, '0000-00-00', 37068, '0000-00-00', 2, b'0'),
(1, 10, 2, 6, 1, 10, 'Who Is Killing the Great Chefs of Europe?', 'subtitulo353', 'titulo_abreviado407', 'Function-based zero defect process improvement', 4, '0000-00-00', 41952, '0000-00-00', 1, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `publicacaoarea`
--

CREATE TABLE `publicacaoarea` (
  `Publicacao_PubID_` int(11) NOT NULL,
  `AreaTematica_AreaTemID_` int(11) NOT NULL,
  `Relevancia_RelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicacaoarea`
--

INSERT INTO `publicacaoarea` (`Publicacao_PubID_`, `AreaTematica_AreaTemID_`, `Relevancia_RelID`) VALUES
(1, 9, 2),
(7, 8, 3),
(6, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `publicacaoemprestavel`
--

CREATE TABLE `publicacaoemprestavel` (
  `Publicacao_PubID` int(11) NOT NULL,
  `ValorExtravio` int(11) DEFAULT NULL,
  `Requisitado` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicacaoemprestavel`
--

INSERT INTO `publicacaoemprestavel` (`Publicacao_PubID`, `ValorExtravio`, `Requisitado`) VALUES
(1, 15, b'0'),
(4, 30, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `relatoriostecnicos`
--

CREATE TABLE `relatoriostecnicos` (
  `Monografia_Publicacao_PubID` int(11) NOT NULL,
  `Tema_TemaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relatoriostecnicos`
--

INSERT INTO `relatoriostecnicos` (`Monografia_Publicacao_PubID`, `Tema_TemaID`) VALUES
(10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `relevancia`
--

CREATE TABLE `relevancia` (
  `RelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relevancia`
--

INSERT INTO `relevancia` (`RelID`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `reserva`
--

CREATE TABLE `reserva` (
  `Pedido_Utente_NumUtente_` int(11) NOT NULL,
  `Pedido_PublicacaoEmprestavel_Publicacao_PubID_` int(11) NOT NULL,
  `ReservaNum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserva`
--

INSERT INTO `reserva` (`Pedido_Utente_NumUtente_`, `Pedido_PublicacaoEmprestavel_Publicacao_PubID_`, `ReservaNum`) VALUES
(14, 1, 1),
(20, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `revista`
--

CREATE TABLE `revista` (
  `Periodico_Publicacao_PubID` int(11) NOT NULL,
  `NumBloqueadas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `revista`
--

INSERT INTO `revista` (`Periodico_Publicacao_PubID`, `NumBloqueadas`) VALUES
(5, 1),
(7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rfid`
--

CREATE TABLE `rfid` (
  `NumRFID` int(11) NOT NULL,
  `isUsed` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rfid`
--

INSERT INTO `rfid` (`NumRFID`, `isUsed`) VALUES
(1, b'0'),
(2, b'0'),
(3, b'0'),
(4, b'0'),
(5, b'0'),
(6, b'0'),
(7, b'0'),
(8, b'0'),
(9, b'0'),
(10, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `TemaID` int(11) NOT NULL,
  `Tema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`TemaID`, `Tema`) VALUES
(1, 'Sterna paradisaea'),
(2, 'Gyps bengalensis'),
(3, 'Ardea golieth'),
(4, 'Suricata suricatta'),
(5, 'Kobus vardonii vardoni'),
(6, 'Varanus komodensis'),
(7, 'Drymarchon corias couperi'),
(8, 'Crotalus adamanteus'),
(9, 'Terrapene carolina'),
(10, 'Dendrocitta vagabunda');

-- --------------------------------------------------------

--
-- Table structure for table `textospedagocicos`
--

CREATE TABLE `textospedagocicos` (
  `Monografia_Publicacao_PubID` int(11) NOT NULL,
  `Tema_TemaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `textospedagocicos`
--

INSERT INTO `textospedagocicos` (`Monografia_Publicacao_PubID`, `Tema_TemaID`) VALUES
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tipo`
--

CREATE TABLE `tipo` (
  `TipoID` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo`
--

INSERT INTO `tipo` (`TipoID`, `Tipo`) VALUES
(1, 'Mestrado'),
(2, 'Doutoramento');

-- --------------------------------------------------------

--
-- Table structure for table `tipopublicacao`
--

CREATE TABLE `tipopublicacao` (
  `TipoPubID` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipopublicacao`
--

INSERT INTO `tipopublicacao` (`TipoPubID`, `Tipo`) VALUES
(1, 'Livro'),
(2, 'Dissertação (Monografia)'),
(3, 'Relatórios Técnicos (Monografia)'),
(4, 'Textos Pedagógicos (Monografia)'),
(5, 'Jornal (Periodico)'),
(6, 'Revista (Periodico)');

-- --------------------------------------------------------

--
-- Table structure for table `utente`
--

CREATE TABLE `utente` (
  `NumUtente` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `NumId` int(11) NOT NULL,
  `Morada` text NOT NULL,
  `Telefone` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utente`
--

INSERT INTO `utente` (`NumUtente`, `Nome`, `NumId`, `Morada`, `Telefone`, `Email`) VALUES
(1, 'Feodor', 78004590, '80927 Blaine Plaza', 960566240, 'fblankhorn0@infoseek.co.jp'),
(2, 'Berkie', 86825478, '92863 Cherokee Avenue', 969004980, 'bmensler1@delicious.com'),
(3, 'Casandra', 50776365, '52 Alpine Road', 960142068, 'cwillan2@theguardian.com'),
(4, 'Sonnnie', 33949929, '8 Cambridge Street', 964400658, 'smanjin3@mysql.com'),
(5, 'Terrill', 87994014, '3 Gulseth Parkway', 965462201, 'treay4@vistaprint.com'),
(6, 'Nefen', 10889286, '4915 Porter Park', 968592369, 'nnerger5@epa.gov'),
(7, 'Suzann', 91689344, '641 Hayes Drive', 966615063, 'stomet6@jalbum.net'),
(8, 'Phylys', 78696797, '9273 Dakota Plaza', 960712587, 'ppentycross7@about.me'),
(9, 'Reinald', 60191897, '49 Dunning Junction', 963768622, 'rsnelgrove8@multiply.com'),
(10, 'Carlos', 72024574, '20447 Red Cloud Lane', 960100136, 'cboyle9@a8.net'),
(11, 'Fionnula', 21360928, '5 Judy Court', 960682040, 'fbrewarda@wired.com'),
(12, 'Gabbie', 1814720, '4 David Street', 961954564, 'gsheddb@qq.com'),
(13, 'Kakalina', 66870997, '2928 Tomscot Terrace', 965802237, 'kmaugerc@goodreads.com'),
(14, 'Florencia', 82110061, '659 Crest Line Park', 969960972, 'ffeatherbied@blogs.com'),
(15, 'Kori', 22078739, '661 Eastwood Road', 962973286, 'kheinleine@infoseek.co.jp'),
(16, 'Ramonda', 22911149, '8116 Dwight Crossing', 966644899, 'randrassyf@mediafire.com'),
(17, 'Alwyn', 98391284, '54 Reindahl Park', 964827530, 'abaynhamg@oakley.com'),
(18, 'Anatol', 82922342, '5965 Corry Pass', 960372348, 'achillesh@about.com'),
(19, 'Miguelita', 36857173, '78 Bellgrove Drive', 969190382, 'mwalklatei@instagram.com'),
(20, 'Abra', 27083695, '24119 Grayhawk Parkway', 960824855, 'athebeauj@whitehouse.gov');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areatematica`
--
ALTER TABLE `areatematica`
  ADD PRIMARY KEY (`AreaTemID`),
  ADD UNIQUE KEY `Nome` (`Nome`),
  ADD KEY `FK_AreaTematica_Contem_AreaTematica` (`AreaTematica_AreaTemID`);

--
-- Indexes for table `armario`
--
ALTER TABLE `armario`
  ADD PRIMARY KEY (`Piso_PisoID`,`ArmarioID`);

--
-- Indexes for table `artigo`
--
ALTER TABLE `artigo`
  ADD PRIMARY KEY (`Periodico_Publicacao_PubID`,`ArtigoID`),
  ADD KEY `FK_Artigo_noname_AreaTematica` (`AreaTematica_AreaTemID`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`AutorID`),
  ADD UNIQUE KEY `Nome` (`Nome`);

--
-- Indexes for table `capa`
--
ALTER TABLE `capa`
  ADD PRIMARY KEY (`CapaID`),
  ADD UNIQUE KEY `Miniatura` (`Miniatura`),
  ADD UNIQUE KEY `Ampliada` (`Ampliada`),
  ADD KEY `FK_PubID` (`Publicacao_PubID`);

--
-- Indexes for table `capitulo`
--
ALTER TABLE `capitulo`
  ADD PRIMARY KEY (`Livro_Publicacao_PubID`,`NumCap`),
  ADD UNIQUE KEY `AreaTematica_AreaTemID` (`AreaTematica_AreaTemID`);

--
-- Indexes for table `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`Configuracoes_ID`),
  ADD UNIQUE KEY `ValorMulta` (`ValorMulta`),
  ADD UNIQUE KEY `NumProlongamentosMax` (`NumProlongamentosMax`);

--
-- Indexes for table `dissertacao`
--
ALTER TABLE `dissertacao`
  ADD PRIMARY KEY (`Monografia_Publicacao_PubID`),
  ADD UNIQUE KEY `Tema_TemaID` (`Tema_TemaID`),
  ADD UNIQUE KEY `Tipo_TipoID` (`Tipo_TipoID`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`EditID`),
  ADD UNIQUE KEY `Nome` (`Nome`);

--
-- Indexes for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`Pedido_Utente_NumUtente_`,`Pedido_PublicacaoEmprestavel_Publicacao_PubID_`);

--
-- Indexes for table `especialista`
--
ALTER TABLE `especialista`
  ADD PRIMARY KEY (`Utente_NumUtente`);

--
-- Indexes for table `estadodeconservacao`
--
ALTER TABLE `estadodeconservacao`
  ADD PRIMARY KEY (`EstadoID`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`FeedID`);

--
-- Indexes for table `jornal`
--
ALTER TABLE `jornal`
  ADD PRIMARY KEY (`Periodico_Publicacao_PubID`);

--
-- Indexes for table `listadeleitura`
--
ALTER TABLE `listadeleitura`
  ADD PRIMARY KEY (`ListaDeLeitura_ID`),
  ADD UNIQUE KEY `Nome` (`Nome`),
  ADD UNIQUE KEY `Criterio` (`Criterio`),
  ADD KEY `FK_ListaDeLeitura_noname_Utente` (`Utente_NumUtente`),
  ADD KEY `FK_ListaDeLeitura_noname_AreaTematica` (`AreaTematica_AreaTemID`);

--
-- Indexes for table `listalivroed`
--
ALTER TABLE `listalivroed`
  ADD PRIMARY KEY (`LivroEdicao_Livro_Publicacao_PubID_`,`LivroEdicao_NumEdicao_`,`ListaDeLeitura_ListaDeLeitura_ID_`),
  ADD KEY `FK_ListaDeLeitura_ListaLivroEd_LivroEdicao_` (`ListaDeLeitura_ListaDeLeitura_ID_`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`Publicacao_PubID`);

--
-- Indexes for table `livroedicao`
--
ALTER TABLE `livroedicao`
  ADD PRIMARY KEY (`Livro_Publicacao_PubID`,`NumEdicao`),
  ADD UNIQUE KEY `RFID_NumRFID` (`RFID_NumRFID`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD KEY `FK_LivroEdicao_noname_EstadoDeConservacao` (`EstadoDeConservacao_EstadoID`);

--
-- Indexes for table `monografia`
--
ALTER TABLE `monografia`
  ADD PRIMARY KEY (`Publicacao_PubID`),
  ADD UNIQUE KEY `RFID_NumRFID` (`RFID_NumRFID`),
  ADD KEY `FK_Monografia_noname_EstadoDeConservacao` (`EstadoDeConservacao_EstadoID`);

--
-- Indexes for table `palavrachave`
--
ALTER TABLE `palavrachave`
  ADD PRIMARY KEY (`PalavraChaveID`);

--
-- Indexes for table `palavrachaveartigo`
--
ALTER TABLE `palavrachaveartigo`
  ADD PRIMARY KEY (`Artigo_Periodico_Publicacao_PubID_`,`Artigo_ArtigoID_`,`PalavraChave_PalavraChaveID_`),
  ADD KEY `FK_PalavraChave_PalavraChaveArtigo_Artigo_` (`PalavraChave_PalavraChaveID_`);

--
-- Indexes for table `palavrachavecap`
--
ALTER TABLE `palavrachavecap`
  ADD PRIMARY KEY (`Capitulo_Livro_Publicacao_PubID_`,`Capitulo_NumCap_`,`PalavraChave_PalavraChaveID_`),
  ADD KEY `FK_PalavraChave_PalavraChaveCap_Capitulo_` (`PalavraChave_PalavraChaveID_`);

--
-- Indexes for table `palavrachavepub`
--
ALTER TABLE `palavrachavepub`
  ADD PRIMARY KEY (`Publicacao_PubID_`,`PalavraChave_PalavraChaveID_`),
  ADD KEY `FK_PalavraChave_PalavraChavePub_Publicacao_` (`PalavraChave_PalavraChaveID_`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Utente_NumUtente_`,`PublicacaoEmprestavel_Publicacao_PubID_`),
  ADD KEY `FK_PublicacaoEmprestavel_Pedido_Utente_` (`PublicacaoEmprestavel_Publicacao_PubID_`);

--
-- Indexes for table `periodicidade`
--
ALTER TABLE `periodicidade`
  ADD PRIMARY KEY (`PeriodicidadeID`);

--
-- Indexes for table `periodico`
--
ALTER TABLE `periodico`
  ADD PRIMARY KEY (`Publicacao_PubID`),
  ADD UNIQUE KEY `Periodicidade_PeriodicidadeID` (`Periodicidade_PeriodicidadeID`),
  ADD UNIQUE KEY `ISSN` (`ISSN`);

--
-- Indexes for table `periodicoedicao`
--
ALTER TABLE `periodicoedicao`
  ADD PRIMARY KEY (`Periodico_Publicacao_PubID`,`NumEdicao`),
  ADD UNIQUE KEY `Periodico_Publicacao_PubID` (`Periodico_Publicacao_PubID`),
  ADD UNIQUE KEY `RFID_NumRFID` (`RFID_NumRFID`),
  ADD KEY `FK_PeriodicoEdicao_noname_EstadoDeConservacao` (`EstadoDeConservacao_EstadoID`);

--
-- Indexes for table `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`PeriodoID`),
  ADD UNIQUE KEY `DataFim` (`DataFim`),
  ADD UNIQUE KEY `DataInicio` (`DataInicio`);

--
-- Indexes for table `periodosuspensao`
--
ALTER TABLE `periodosuspensao`
  ADD PRIMARY KEY (`Utente_NumUtente_`,`Periodo_PeriodoID_`,`NumSuspensao`),
  ADD KEY `FK_Periodo_PeriodoSuspensao_Utente_` (`Periodo_PeriodoID_`);

--
-- Indexes for table `piso`
--
ALTER TABLE `piso`
  ADD PRIMARY KEY (`PisoID`);

--
-- Indexes for table `prateleira`
--
ALTER TABLE `prateleira`
  ADD PRIMARY KEY (`Armario_Piso_PisoID`,`Armario_ArmarioID`,`PrateleiraID`),
  ADD KEY `FK_Prateleira_noname_AreaTematica` (`AreaTematica_AreaTemID`);

--
-- Indexes for table `pubautor`
--
ALTER TABLE `pubautor`
  ADD PRIMARY KEY (`Publicacao_PubID_`,`Autor_AutorID_`),
  ADD KEY `FK_Autor_PubAutor_Publicacao_` (`Autor_AutorID_`);

--
-- Indexes for table `publicacao`
--
ALTER TABLE `publicacao`
  ADD PRIMARY KEY (`PubID`),
  ADD UNIQUE KEY `PubID` (`PubID`),
  ADD UNIQUE KEY `Capa_CapaID` (`Capa_CapaID`),
  ADD KEY `FK_Publicacao_noname_Editora` (`Editora_EditID`),
  ADD KEY `FK_Publicacao_noname_Capa` (`Capa_CapaID`),
  ADD KEY `FK_Publicacao_noname_Prateleira` (`Prateleira_Armario_Piso_PisoID`,`Prateleira_Armario_ArmarioID`,`Prateleira_PrateleiraID`),
  ADD KEY `FK_Pub_TipoPublicacao` (`TipoPublicacao_TipoPubID`);

--
-- Indexes for table `publicacaoarea`
--
ALTER TABLE `publicacaoarea`
  ADD PRIMARY KEY (`Publicacao_PubID_`,`AreaTematica_AreaTemID_`),
  ADD KEY `FK_PublicacaoArea_noname_Relevancia` (`Relevancia_RelID`),
  ADD KEY `FK_AreaTematica_PublicacaoArea_Publicacao_` (`AreaTematica_AreaTemID_`);

--
-- Indexes for table `publicacaoemprestavel`
--
ALTER TABLE `publicacaoemprestavel`
  ADD PRIMARY KEY (`Publicacao_PubID`);

--
-- Indexes for table `relatoriostecnicos`
--
ALTER TABLE `relatoriostecnicos`
  ADD PRIMARY KEY (`Monografia_Publicacao_PubID`),
  ADD KEY `FK_RelatoriosTecnicos_noname_Tema` (`Tema_TemaID`);

--
-- Indexes for table `relevancia`
--
ALTER TABLE `relevancia`
  ADD PRIMARY KEY (`RelID`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`Pedido_Utente_NumUtente_`,`Pedido_PublicacaoEmprestavel_Publicacao_PubID_`);

--
-- Indexes for table `revista`
--
ALTER TABLE `revista`
  ADD PRIMARY KEY (`Periodico_Publicacao_PubID`);

--
-- Indexes for table `rfid`
--
ALTER TABLE `rfid`
  ADD PRIMARY KEY (`NumRFID`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`TemaID`);

--
-- Indexes for table `textospedagocicos`
--
ALTER TABLE `textospedagocicos`
  ADD PRIMARY KEY (`Monografia_Publicacao_PubID`),
  ADD KEY `FK_TextosPedagocicos_noname_Tema` (`Tema_TemaID`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`TipoID`);

--
-- Indexes for table `tipopublicacao`
--
ALTER TABLE `tipopublicacao`
  ADD PRIMARY KEY (`TipoPubID`);

--
-- Indexes for table `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`NumUtente`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `NumId` (`NumId`),
  ADD UNIQUE KEY `Telefone` (`Telefone`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `areatematica`
--
ALTER TABLE `areatematica`
  ADD CONSTRAINT `FK_AreaTematica_Contem_AreaTematica` FOREIGN KEY (`AreaTematica_AreaTemID`) REFERENCES `areatematica` (`AreaTemID`) ON UPDATE CASCADE;

--
-- Constraints for table `armario`
--
ALTER TABLE `armario`
  ADD CONSTRAINT `FK_Armario_noname_Piso` FOREIGN KEY (`Piso_PisoID`) REFERENCES `piso` (`PisoID`) ON UPDATE CASCADE;

--
-- Constraints for table `artigo`
--
ALTER TABLE `artigo`
  ADD CONSTRAINT `FK_Artigo_noname_AreaTematica` FOREIGN KEY (`AreaTematica_AreaTemID`) REFERENCES `areatematica` (`AreaTemID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Artigo_noname_Periodico` FOREIGN KEY (`Periodico_Publicacao_PubID`) REFERENCES `periodico` (`Publicacao_PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `capitulo`
--
ALTER TABLE `capitulo`
  ADD CONSTRAINT `FK_Capitulo_noname_AreaTematica` FOREIGN KEY (`AreaTematica_AreaTemID`) REFERENCES `areatematica` (`AreaTemID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Capitulo_noname_Livro` FOREIGN KEY (`Livro_Publicacao_PubID`) REFERENCES `livro` (`Publicacao_PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `dissertacao`
--
ALTER TABLE `dissertacao`
  ADD CONSTRAINT `FK_Dissertacao_Monografia` FOREIGN KEY (`Monografia_Publicacao_PubID`) REFERENCES `monografia` (`Publicacao_PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Dissertacao_noname_Tema` FOREIGN KEY (`Tema_TemaID`) REFERENCES `tema` (`TemaID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Dissertacao_noname_Tipo` FOREIGN KEY (`Tipo_TipoID`) REFERENCES `tipo` (`TipoID`) ON UPDATE CASCADE;

--
-- Constraints for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `FK_Emprestimo_Pedido` FOREIGN KEY (`Pedido_Utente_NumUtente_`,`Pedido_PublicacaoEmprestavel_Publicacao_PubID_`) REFERENCES `pedido` (`Utente_NumUtente_`, `PublicacaoEmprestavel_Publicacao_PubID_`) ON UPDATE CASCADE;

--
-- Constraints for table `especialista`
--
ALTER TABLE `especialista`
  ADD CONSTRAINT `FK_Especialista_Utente` FOREIGN KEY (`Utente_NumUtente`) REFERENCES `utente` (`NumUtente`) ON UPDATE CASCADE;

--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
  ADD CONSTRAINT `FK_Feeds_noname_Editora` FOREIGN KEY (`Editora_EditID`) REFERENCES `editora` (`EditID`) ON UPDATE CASCADE;

--
-- Constraints for table `jornal`
--
ALTER TABLE `jornal`
  ADD CONSTRAINT `FK_Jornal_Periodico` FOREIGN KEY (`Periodico_Publicacao_PubID`) REFERENCES `periodico` (`Publicacao_PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `listadeleitura`
--
ALTER TABLE `listadeleitura`
  ADD CONSTRAINT `FK_ListaDeLeitura_noname_AreaTematica` FOREIGN KEY (`AreaTematica_AreaTemID`) REFERENCES `areatematica` (`AreaTemID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ListaDeLeitura_noname_Utente` FOREIGN KEY (`Utente_NumUtente`) REFERENCES `utente` (`NumUtente`) ON UPDATE CASCADE;

--
-- Constraints for table `listalivroed`
--
ALTER TABLE `listalivroed`
  ADD CONSTRAINT `FK_ListaDeLeitura_ListaLivroEd_LivroEdicao_` FOREIGN KEY (`ListaDeLeitura_ListaDeLeitura_ID_`) REFERENCES `listadeleitura` (`ListaDeLeitura_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_LivroEdicao_ListaLivroEd_ListaDeLeitura_` FOREIGN KEY (`LivroEdicao_Livro_Publicacao_PubID_`,`LivroEdicao_NumEdicao_`) REFERENCES `livroedicao` (`Livro_Publicacao_PubID`, `NumEdicao`) ON UPDATE CASCADE;

--
-- Constraints for table `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `FK_Livro_Publicacao` FOREIGN KEY (`Publicacao_PubID`) REFERENCES `publicacao` (`PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `livroedicao`
--
ALTER TABLE `livroedicao`
  ADD CONSTRAINT `FK_LivroEdicao_noname_EstadoDeConservacao` FOREIGN KEY (`EstadoDeConservacao_EstadoID`) REFERENCES `estadodeconservacao` (`EstadoID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_LivroEdicao_noname_Livro` FOREIGN KEY (`Livro_Publicacao_PubID`) REFERENCES `livro` (`Publicacao_PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_LivroEdicao_noname_RFID` FOREIGN KEY (`RFID_NumRFID`) REFERENCES `rfid` (`NumRFID`) ON UPDATE CASCADE;

--
-- Constraints for table `monografia`
--
ALTER TABLE `monografia`
  ADD CONSTRAINT `FK_Monografia_Publicacao` FOREIGN KEY (`Publicacao_PubID`) REFERENCES `publicacao` (`PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Monografia_noname_EstadoDeConservacao` FOREIGN KEY (`EstadoDeConservacao_EstadoID`) REFERENCES `estadodeconservacao` (`EstadoID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Monografia_noname_RFID` FOREIGN KEY (`RFID_NumRFID`) REFERENCES `rfid` (`NumRFID`) ON UPDATE CASCADE;

--
-- Constraints for table `palavrachaveartigo`
--
ALTER TABLE `palavrachaveartigo`
  ADD CONSTRAINT `FK_Artigo_PalavraChaveArtigo_PalavraChave_` FOREIGN KEY (`Artigo_Periodico_Publicacao_PubID_`,`Artigo_ArtigoID_`) REFERENCES `artigo` (`Periodico_Publicacao_PubID`, `ArtigoID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PalavraChave_PalavraChaveArtigo_Artigo_` FOREIGN KEY (`PalavraChave_PalavraChaveID_`) REFERENCES `palavrachave` (`PalavraChaveID`) ON UPDATE CASCADE;

--
-- Constraints for table `palavrachavecap`
--
ALTER TABLE `palavrachavecap`
  ADD CONSTRAINT `FK_Capitulo_PalavraChaveCap_PalavraChave_` FOREIGN KEY (`Capitulo_Livro_Publicacao_PubID_`,`Capitulo_NumCap_`) REFERENCES `capitulo` (`Livro_Publicacao_PubID`, `NumCap`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PalavraChave_PalavraChaveCap_Capitulo_` FOREIGN KEY (`PalavraChave_PalavraChaveID_`) REFERENCES `palavrachave` (`PalavraChaveID`) ON UPDATE CASCADE;

--
-- Constraints for table `palavrachavepub`
--
ALTER TABLE `palavrachavepub`
  ADD CONSTRAINT `FK_PalavraChave_PalavraChavePub_Publicacao_` FOREIGN KEY (`PalavraChave_PalavraChaveID_`) REFERENCES `palavrachave` (`PalavraChaveID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Publicacao_PalavraChavePub_PalavraChave_` FOREIGN KEY (`Publicacao_PubID_`) REFERENCES `publicacao` (`PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_PublicacaoEmprestavel_Pedido_Utente_` FOREIGN KEY (`PublicacaoEmprestavel_Publicacao_PubID_`) REFERENCES `publicacaoemprestavel` (`Publicacao_PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Utente_Pedido_PublicacaoEmprestavel_` FOREIGN KEY (`Utente_NumUtente_`) REFERENCES `utente` (`NumUtente`) ON UPDATE CASCADE;

--
-- Constraints for table `periodico`
--
ALTER TABLE `periodico`
  ADD CONSTRAINT `FK_Periodico_PeriodicidadePeriodico_Periodicidade` FOREIGN KEY (`Periodicidade_PeriodicidadeID`) REFERENCES `periodicidade` (`PeriodicidadeID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Periodico_Publicacao` FOREIGN KEY (`Publicacao_PubID`) REFERENCES `publicacao` (`PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `periodicoedicao`
--
ALTER TABLE `periodicoedicao`
  ADD CONSTRAINT `FK_PeriodicoEdicao_noname_EstadoDeConservacao` FOREIGN KEY (`EstadoDeConservacao_EstadoID`) REFERENCES `estadodeconservacao` (`EstadoID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PeriodicoEdicao_noname_Periodico` FOREIGN KEY (`Periodico_Publicacao_PubID`) REFERENCES `periodico` (`Publicacao_PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PeriodicoEdicao_noname_RFID` FOREIGN KEY (`RFID_NumRFID`) REFERENCES `rfid` (`NumRFID`) ON UPDATE CASCADE;

--
-- Constraints for table `periodosuspensao`
--
ALTER TABLE `periodosuspensao`
  ADD CONSTRAINT `FK_Periodo_PeriodoSuspensao_Utente_` FOREIGN KEY (`Periodo_PeriodoID_`) REFERENCES `periodo` (`PeriodoID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Utente_PeriodoSuspensao_Periodo_` FOREIGN KEY (`Utente_NumUtente_`) REFERENCES `utente` (`NumUtente`) ON UPDATE CASCADE;

--
-- Constraints for table `prateleira`
--
ALTER TABLE `prateleira`
  ADD CONSTRAINT `FK_Prateleira_noname_AreaTematica` FOREIGN KEY (`AreaTematica_AreaTemID`) REFERENCES `areatematica` (`AreaTemID`),
  ADD CONSTRAINT `FK_Prateleira_noname_Armario` FOREIGN KEY (`Armario_Piso_PisoID`,`Armario_ArmarioID`) REFERENCES `armario` (`Piso_PisoID`, `ArmarioID`);

--
-- Constraints for table `pubautor`
--
ALTER TABLE `pubautor`
  ADD CONSTRAINT `FK_Autor_PubAutor_Publicacao_` FOREIGN KEY (`Autor_AutorID_`) REFERENCES `autor` (`AutorID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Publicacao_PubAutor_Autor_` FOREIGN KEY (`Publicacao_PubID_`) REFERENCES `publicacao` (`PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `publicacao`
--
ALTER TABLE `publicacao`
  ADD CONSTRAINT `FK_Pub_TipoPublicacao` FOREIGN KEY (`TipoPublicacao_TipoPubID`) REFERENCES `tipopublicacao` (`TipoPubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Publicacao_noname_Capa` FOREIGN KEY (`Capa_CapaID`) REFERENCES `capa` (`CapaID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Publicacao_noname_Editora` FOREIGN KEY (`Editora_EditID`) REFERENCES `editora` (`EditID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Publicacao_noname_Prateleira` FOREIGN KEY (`Prateleira_Armario_Piso_PisoID`,`Prateleira_Armario_ArmarioID`,`Prateleira_PrateleiraID`) REFERENCES `prateleira` (`Armario_Piso_PisoID`, `Armario_ArmarioID`, `PrateleiraID`) ON UPDATE CASCADE;

--
-- Constraints for table `publicacaoarea`
--
ALTER TABLE `publicacaoarea`
  ADD CONSTRAINT `FK_AreaTematica_PublicacaoArea_Publicacao_` FOREIGN KEY (`AreaTematica_AreaTemID_`) REFERENCES `areatematica` (`AreaTemID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PublicacaoArea_noname_Relevancia` FOREIGN KEY (`Relevancia_RelID`) REFERENCES `relevancia` (`RelID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Publicacao_PublicacaoArea_AreaTematica_` FOREIGN KEY (`Publicacao_PubID_`) REFERENCES `publicacao` (`PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `publicacaoemprestavel`
--
ALTER TABLE `publicacaoemprestavel`
  ADD CONSTRAINT `FK_PublicacaoEmprestavel_Publicacao` FOREIGN KEY (`Publicacao_PubID`) REFERENCES `publicacao` (`PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `relatoriostecnicos`
--
ALTER TABLE `relatoriostecnicos`
  ADD CONSTRAINT `FK_RelatoriosTecnicos_Monografia` FOREIGN KEY (`Monografia_Publicacao_PubID`) REFERENCES `monografia` (`Publicacao_PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RelatoriosTecnicos_noname_Tema` FOREIGN KEY (`Tema_TemaID`) REFERENCES `tema` (`TemaID`) ON UPDATE CASCADE;

--
-- Constraints for table `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FK_Reserva_Pedido` FOREIGN KEY (`Pedido_Utente_NumUtente_`,`Pedido_PublicacaoEmprestavel_Publicacao_PubID_`) REFERENCES `pedido` (`Utente_NumUtente_`, `PublicacaoEmprestavel_Publicacao_PubID_`) ON UPDATE CASCADE;

--
-- Constraints for table `revista`
--
ALTER TABLE `revista`
  ADD CONSTRAINT `FK_Revista_Periodico` FOREIGN KEY (`Periodico_Publicacao_PubID`) REFERENCES `periodico` (`Publicacao_PubID`) ON UPDATE CASCADE;

--
-- Constraints for table `textospedagocicos`
--
ALTER TABLE `textospedagocicos`
  ADD CONSTRAINT `FK_TextosPedagocicos_Monografia` FOREIGN KEY (`Monografia_Publicacao_PubID`) REFERENCES `monografia` (`Publicacao_PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TextosPedagocicos_noname_Tema` FOREIGN KEY (`Tema_TemaID`) REFERENCES `tema` (`TemaID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
