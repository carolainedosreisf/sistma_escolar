-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Out-2016 às 19:16
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
-- Estrutura da tabela `confirma_entrada_de_alunos`
--

CREATE TABLE `confirma_entrada_de_alunos` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `data_hoje` varchar(255) NOT NULL,
  `porteiro` varchar(255) NOT NULL,
  `code_aluno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `confirma_entrada_de_alunos`
--

INSERT INTO `confirma_entrada_de_alunos` (`id`, `date`, `data_hoje`, `porteiro`, `code_aluno`) VALUES
(1, '28/08/2014 13:32:50', '28/08/2014', '2597419508', '587418'),
(2, '28/08/2014 13:36:02', '28/08/2014', '2597419508', '587418'),
(3, '28/08/2014 13:51:18', '28/08/2014', '2597419508', '587418'),
(4, '28/08/2014 13:51:29', '28/08/2014', '2597419508', '588160');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confirma_entrada_de_alunos`
--
ALTER TABLE `confirma_entrada_de_alunos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `confirma_entrada_de_alunos`
--
ALTER TABLE `confirma_entrada_de_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
