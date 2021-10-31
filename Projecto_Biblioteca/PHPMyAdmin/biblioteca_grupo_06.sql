-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2021 at 11:54 AM
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
-- Database: `biblioteca_grupo_06`
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

-- --------------------------------------------------------

--
-- Table structure for table `armario`
--

CREATE TABLE `armario` (
  `Piso_PisoID` int(11) NOT NULL,
  `Capacidade` int(11) NOT NULL DEFAULT 0,
  `ArmarioID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `artigo`
--

CREATE TABLE `artigo` (
  `Periodico_Publicacao_PubID` int(11) NOT NULL,
  `AreaTematica_AreaTemID` int(11) NOT NULL,
  `ArtigoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `AutorID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `capa`
--

CREATE TABLE `capa` (
  `Miniatura` varchar(255) NOT NULL,
  `Ampliada` varchar(255) NOT NULL,
  `CapaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `capitulo`
--

CREATE TABLE `capitulo` (
  `Livro_Publicacao_PubID` int(11) NOT NULL,
  `AreaTematica_AreaTemID` int(11) NOT NULL,
  `NumCap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `configuracoes`
--

CREATE TABLE `configuracoes` (
  `Configuracoes_ID` int(11) NOT NULL,
  `ValorMulta` float NOT NULL,
  `NumProlongamentosMax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dissertacao`
--

CREATE TABLE `dissertacao` (
  `Monografia_Publicacao_PubID` int(11) NOT NULL,
  `Tema_TemaID` int(11) NOT NULL,
  `Tipo_TipoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `editora`
--

CREATE TABLE `editora` (
  `EditID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `especialista`
--

CREATE TABLE `especialista` (
  `Utente_NumUtente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `estadodeconservacao`
--

CREATE TABLE `estadodeconservacao` (
  `EstadoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `Editora_EditID` int(11) NOT NULL,
  `FeedID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jornal`
--

CREATE TABLE `jornal` (
  `Periodico_Publicacao_PubID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `listalivroed`
--

CREATE TABLE `listalivroed` (
  `LivroEdicao_Livro_Publicacao_PubID_` int(11) NOT NULL,
  `LivroEdicao_NumEdicao_` int(11) NOT NULL,
  `ListaDeLeitura_ListaDeLeitura_ID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `livro`
--

CREATE TABLE `livro` (
  `Publicacao_PubID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `monografia`
--

CREATE TABLE `monografia` (
  `Publicacao_PubID` int(11) NOT NULL,
  `EstadoDeConservacao_EstadoID` int(11) NOT NULL,
  `RFID_NumRFID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `palavrachave`
--

CREATE TABLE `palavrachave` (
  `PalavraChaveID` int(11) NOT NULL,
  `PalavraChave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `palavrachaveartigo`
--

CREATE TABLE `palavrachaveartigo` (
  `Artigo_Periodico_Publicacao_PubID_` int(11) NOT NULL,
  `Artigo_ArtigoID_` int(11) NOT NULL,
  `PalavraChave_PalavraChaveID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `palavrachavecap`
--

CREATE TABLE `palavrachavecap` (
  `Capitulo_Livro_Publicacao_PubID_` int(11) NOT NULL,
  `Capitulo_NumCap_` int(11) NOT NULL,
  `PalavraChave_PalavraChaveID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `palavrachavepub`
--

CREATE TABLE `palavrachavepub` (
  `Publicacao_PubID_` int(11) NOT NULL,
  `PalavraChave_PalavraChaveID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `Utente_NumUtente_` int(11) NOT NULL,
  `PublicacaoEmprestavel_Publicacao_PubID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `periodicidade`
--

CREATE TABLE `periodicidade` (
  `PeriodicidadeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `periodico`
--

CREATE TABLE `periodico` (
  `Publicacao_PubID` int(11) NOT NULL,
  `Periodicidade_PeriodicidadeID` int(11) NOT NULL,
  `ISSN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `periodo`
--

CREATE TABLE `periodo` (
  `DataInicio` date DEFAULT NULL,
  `DataFim` date DEFAULT NULL,
  `PeriodoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `periodosuspensao`
--

CREATE TABLE `periodosuspensao` (
  `Utente_NumUtente_` int(11) NOT NULL,
  `Periodo_PeriodoID_` int(11) NOT NULL,
  `NumSuspensao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `piso`
--

CREATE TABLE `piso` (
  `PisoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prateleira`
--

CREATE TABLE `prateleira` (
  `AreaTematica_AreaTemID` int(11) NOT NULL,
  `Armario_Piso_PisoID` int(11) NOT NULL,
  `Armario_ArmarioID` int(11) NOT NULL,
  `Capacidade` int(11) NOT NULL DEFAULT 0,
  `PrateleiraID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pubautor`
--

CREATE TABLE `pubautor` (
  `Publicacao_PubID_` int(11) NOT NULL,
  `Autor_AutorID_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publicacao`
--

CREATE TABLE `publicacao` (
  `Editora_EditID` int(11) NOT NULL,
  `Capa_CapaID` int(11) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `publicacaoarea`
--

CREATE TABLE `publicacaoarea` (
  `Publicacao_PubID_` int(11) NOT NULL,
  `AreaTematica_AreaTemID_` int(11) NOT NULL,
  `Relevancia_RelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publicacaoemprestavel`
--

CREATE TABLE `publicacaoemprestavel` (
  `Publicacao_PubID` int(11) NOT NULL,
  `ValorExtravio` int(11) DEFAULT NULL,
  `Requisitado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `relatoriostecnicos`
--

CREATE TABLE `relatoriostecnicos` (
  `Monografia_Publicacao_PubID` int(11) NOT NULL,
  `Tema_TemaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `revista`
--

CREATE TABLE `revista` (
  `Periodico_Publicacao_PubID` int(11) NOT NULL,
  `NumBloqueadas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rfid`
--

CREATE TABLE `rfid` (
  `PeriodicoEdicao_Periodico_Publicacao_PubID` int(11) NOT NULL,
  `PeriodicoEdicao_NumEdicao` int(11) NOT NULL,
  `Monografia_Publicacao_PubID` int(11) NOT NULL,
  `LivroEdicao_Livro_Publicacao_PubID` int(11) NOT NULL,
  `LivroEdicao_NumEdicao` int(11) NOT NULL,
  `NumRFID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `TemaID` int(11) NOT NULL,
  `Tema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `textospedagocicos`
--

CREATE TABLE `textospedagocicos` (
  `Monografia_Publicacao_PubID` int(11) NOT NULL,
  `Tema_TemaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo`
--

CREATE TABLE `tipo` (
  `TipoID` int(11) NOT NULL,
  `Tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD UNIQUE KEY `Ampliada` (`Ampliada`);

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
  ADD PRIMARY KEY (`FeedID`),
  ADD UNIQUE KEY `Editora_EditID` (`Editora_EditID`);

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
  ADD PRIMARY KEY (`NumRFID`),
  ADD KEY `FK_RFID_noname_PeriodicoEdicao` (`PeriodicoEdicao_Periodico_Publicacao_PubID`,`PeriodicoEdicao_NumEdicao`),
  ADD KEY `FK_RFID_noname_Monografia` (`Monografia_Publicacao_PubID`),
  ADD KEY `FK_RFID_noname_LivroEdicao` (`LivroEdicao_Livro_Publicacao_PubID`,`LivroEdicao_NumEdicao`);

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
  ADD CONSTRAINT `FK_Prateleira_noname_AreaTematica` FOREIGN KEY (`AreaTematica_AreaTemID`) REFERENCES `areatematica` (`AreaTemID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Prateleira_noname_Armario` FOREIGN KEY (`Armario_Piso_PisoID`,`Armario_ArmarioID`) REFERENCES `armario` (`Piso_PisoID`, `ArmarioID`) ON UPDATE CASCADE;

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
-- Constraints for table `rfid`
--
ALTER TABLE `rfid`
  ADD CONSTRAINT `FK_RFID_noname_LivroEdicao` FOREIGN KEY (`LivroEdicao_Livro_Publicacao_PubID`,`LivroEdicao_NumEdicao`) REFERENCES `livroedicao` (`Livro_Publicacao_PubID`, `NumEdicao`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RFID_noname_Monografia` FOREIGN KEY (`Monografia_Publicacao_PubID`) REFERENCES `monografia` (`Publicacao_PubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RFID_noname_PeriodicoEdicao` FOREIGN KEY (`PeriodicoEdicao_Periodico_Publicacao_PubID`,`PeriodicoEdicao_NumEdicao`) REFERENCES `periodicoedicao` (`Periodico_Publicacao_PubID`, `NumEdicao`) ON UPDATE CASCADE;

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
