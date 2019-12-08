-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Out-2016 às 21:56
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
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `disciplina` varchar(255) NOT NULL,
  `professor` varchar(255) NOT NULL,
  `sala` varchar(255) NOT NULL,
  `turno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `curso`, `disciplina`, `professor`, `sala`, `turno`) VALUES
(1, '1º ensino médio G', 'História', '87415978', '01', 'Manhã'),
(2, '1º ensino médio G', 'Português', '87415978', '01', 'Manhã'),
(3, '1º ensino médio G', 'Quimica', '87415978', '01', 'Manhã'),
(4, '1º ensino médio G', 'Física', '87415978', '01', 'Manhã'),
(5, '1º ensino médio G', 'Geografia', '87415978', '01', 'Manhã'),
(6, '1º ensino médio G', 'Matemática', '87415978', '01', 'Manhã'),
(8, '1º ensino médio G', 'Filosofia', '87415978', '01', 'Manhã'),
(9, '1º ensino médio G', 'Sociologia', '87415978', '01', 'Manhã');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
