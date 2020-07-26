-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jul-2020 às 01:10
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendacmc`
--

CREATE TABLE `agendacmc` (
  `id` int(11) NOT NULL,
  `cpf` varchar(250) NOT NULL,
  `matricula` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `telefone` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendacmc`
--

INSERT INTO `agendacmc` (`id`, `cpf`, `matricula`, `email`, `telefone`, `created`, `modified`) VALUES
(1, '20202020', '20202020', '2020@cci.com', '86988000000', '2020-07-26 18:27:30', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `boletos`
--

CREATE TABLE `boletos` (
  `id` int(11) NOT NULL,
  `cpf` varchar(250) NOT NULL,
  `matricula` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `retirada` varchar(250) NOT NULL,
  `mes` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `boletos`
--

INSERT INTO `boletos` (`id`, `cpf`, `matricula`, `email`, `retirada`, `mes`, `created`, `modified`) VALUES
(1, '39633993334', '000000000', 'cdevabreu@gmail.com', 'sim', '', '2020-07-26 12:29:51', NULL),
(2, '00000000', '000000000', 'teste@teste.com', 'nao', 'maro', '2020-07-26 12:32:57', NULL),
(3, '39633993334', '124584512', 'teste@teste.com', 'sim', 'maro', '2020-07-26 12:41:38', NULL),
(4, '39633993334', '20202020', 'cci2020@teste', 'sim', 'maro', '2020-07-26 12:43:16', NULL),
(5, '99894491391', '20202020', 'cdevabreu@gmail.com', 'nao', 'marco', '2020-07-26 12:44:14', NULL),
(6, '39633993334', '20202020', '', 'nao', 'junho', '2020-07-26 12:44:56', NULL),
(7, '10254873', '1010254875', '', 'sim', 'agosto', '2020-07-26 17:23:39', NULL),
(8, '20200202020', '20202020', 'cci202@teste.com', 'sim', 'dezembro', '2020-07-26 18:03:59', NULL),
(9, '059458125', '20202020', '2020@cci.com', 'nao', '----', '2020-07-26 18:11:11', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fagendacmc`
--

CREATE TABLE `fagendacmc` (
  `id` int(11) NOT NULL,
  `cpf` varchar(250) NOT NULL,
  `matricula` varchar(250) NOT NULL,
  `cidade` varchar(250) NOT NULL,
  `especialidade` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fagendacmc`
--

INSERT INTO `fagendacmc` (`id`, `cpf`, `matricula`, `cidade`, `especialidade`, `created`, `modified`) VALUES
(1, '2020202020', '20202020', 'Teresina-PI', 'Fisioterapeuta', '2020-07-26 19:52:52', NULL),
(2, '10101010', '2020202020', 'Salvador-BA', 'Fisioterapia', '2020-07-26 19:54:16', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agendacmc`
--
ALTER TABLE `agendacmc`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `boletos`
--
ALTER TABLE `boletos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fagendacmc`
--
ALTER TABLE `fagendacmc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendacmc`
--
ALTER TABLE `agendacmc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `boletos`
--
ALTER TABLE `boletos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `fagendacmc`
--
ALTER TABLE `fagendacmc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
