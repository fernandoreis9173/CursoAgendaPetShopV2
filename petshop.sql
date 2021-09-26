-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Set-2021 às 04:25
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `categoria` enum('ração','brinquedos') NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `dataAtualizacao` datetime NOT NULL,
  `versao` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `empresa`, `email`, `categoria`, `dataCriacao`, `dataAtualizacao`, `versao`) VALUES
(1, 'Fernando Tecnologia', 'fernandoreis@gmail.com', '', '2021-09-14 23:22:36', '2021-09-14 23:22:36', 0),
(2, 'Fernando Tecnologia', 'fernandoreis@gmail.com', '', '2021-09-15 01:39:40', '2021-09-15 01:39:40', 0),
(3, 'Fernando Tecnologia', 'fernandoreis@gmail.com', '', '2021-09-15 01:45:49', '2021-09-15 01:45:49', 0),
(4, 'Fernando Tecnologia', 'fernandoreis@gmail.com', '', '2021-09-15 01:47:08', '2021-09-15 01:47:08', 0),
(5, 'Fernando Tecnologia', 'fernandoreis@gmail.com', 'brinquedos', '2021-09-15 01:47:26', '2021-09-15 01:47:26', 0),
(6, 'Fernando Petshop', 'fernandoreis@gmail.com', 'ração', '2021-09-15 01:50:20', '2021-09-15 01:50:20', 0),
(7, 'Fernando Petshop', 'fernandoreis@gmail.com', 'ração', '2021-09-15 01:51:51', '2021-09-15 01:51:51', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
