-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Out-2016 às 18:17
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escolar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estudantes`
--

CREATE TABLE `estudantes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `mae` varchar(255) NOT NULL,
  `pai` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `tel_residencial` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `tel_amigo` varchar(255) NOT NULL,
  `serie` varchar(255) NOT NULL,
  `turno` varchar(255) NOT NULL,
  `atendimento_especial` varchar(255) NOT NULL,
  `mensalidade` varchar(255) NOT NULL,
  `vencimento` varchar(255) NOT NULL,
  `tel_cobranca` varchar(255) NOT NULL,
  `obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estudantes`
--

INSERT INTO `estudantes` (`id`, `code`, `status`, `nome`, `cpf`, `rg`, `nascimento`, `mae`, `pai`, `estado`, `cidade`, `bairro`, `endereco`, `complemento`, `cep`, `tel_residencial`, `celular`, `tel_amigo`, `serie`, `turno`, `atendimento_especial`, `mensalidade`, `vencimento`, `tel_cobranca`, `obs`) VALUES
(1, '587418', 'Ativo', 'Marcos Rodrigues de Oliveira', '05379839371', '20073154576', '05/04/1993', 'Marleide de Sousa Rodrigues', 'Jose Nestor de Oliveira', 'São Gonçalo do Amarante', 'CEARA', 'Taiba', 'Av. Capitão Inácio Prata', 'Próximo ao posto bandeira branca', 'Próximo ao posto', '8651', '1515', '5815', '1º ensino médio G', 'Manhã', 'NÃO', '499.99', '28', '8589321649', 'assdf'),
(2, '588160', 'Ativo', 'Sany Ribeiro', '12345678910', '958741568715', '05/04/1993', 'Sisa Rodrigues', 'Jose Ribeiro', 'CE', 'Fortaleza', 'Centro', 'Rua Carolina Sucupira', 'ap. 15 3º andar', '78545-000', '8533156162', '8589321649', '857419621', '1º ensino médio G', 'Noite', 'NÃO', '1499.99', '25', '85893221649', '----');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estudantes`
--
ALTER TABLE `estudantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estudantes`
--
ALTER TABLE `estudantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
