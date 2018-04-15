-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Abr-2018 às 03:38
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `achados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `cod` int(11) NOT NULL,
  `nmContato` varchar(255) NOT NULL,
  `fone` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`cod`, `nmContato`, `fone`, `email`, `senha`) VALUES
(1, 'elismar', '9999', 'asasas', '1111111');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_achados`
--

CREATE TABLE `tb_achados` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `idContato` int(11) NOT NULL,
  `tipo` varchar(32) NOT NULL,
  `foto` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_achados`
--

INSERT INTO `tb_achados` (`id`, `nome`, `idContato`, `tipo`, `foto`) VALUES
(1, '16119732', 1, 'rg', 'foto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`cod`) USING BTREE;

--
-- Indexes for table `tb_achados`
--
ALTER TABLE `tb_achados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idContato` (`idContato`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contatos`
--
ALTER TABLE `contatos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_achados`
--
ALTER TABLE `tb_achados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_achados`
--
ALTER TABLE `tb_achados`
  ADD CONSTRAINT `tb_achados_ibfk_1` FOREIGN KEY (`idContato`) REFERENCES `contatos` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
