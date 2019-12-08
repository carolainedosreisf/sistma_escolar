-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Out-2016 às 23:53
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
-- Estrutura da tabela `mensalidades`
--

CREATE TABLE `mensalidades` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  `d_cobranca` varchar(255) NOT NULL,
  `vencimento` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dia` varchar(255) NOT NULL,
  `mes` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `dia_pagamento` varchar(255) NOT NULL,
  `data_pagamento` varchar(255) NOT NULL,
  `d_p` varchar(255) NOT NULL,
  `m_p` varchar(255) NOT NULL,
  `a_p` varchar(255) NOT NULL,
  `metodo_pagamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensalidades`
--

INSERT INTO `mensalidades` (`id`, `code`, `matricula`, `d_cobranca`, `vencimento`, `valor`, `status`, `dia`, `mes`, `ano`, `dia_pagamento`, `data_pagamento`, `d_p`, `m_p`, `a_p`, `metodo_pagamento`) VALUES
(1, '1174836', '587418', '28/07/2014', '28/07/2014', '399.99', 'Pagamento Confirmado', '28', '07', '2014', '28/07/2014', '28/07/2014 00:14:01', '28', '07', '2014', 'Cartão de crédito'),
(2, '1174837', '587418', '28/08/2014', '28/08/2014', '499.99', 'Aguarda Pagamento', '28', '08', '2014', '', '', '', '', '', ''),
(3, '1176320', '588160', '28/08/2014', '25/08/2014', '1499.99', 'Pagamento Confirmado', '28', '08', '2014', '28/08/2014', '28/08/2014 13:44:50', '28', '08', '2014', 'Cheque');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mensalidades`
--
ALTER TABLE `mensalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
