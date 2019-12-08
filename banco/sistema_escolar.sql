-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31-Ago-2019 às 13:33
-- Versão do servidor: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamadas_em_sala`
--

CREATE TABLE `chamadas_em_sala` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `date_day` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `disciplina` varchar(255) NOT NULL,
  `code_professor` varchar(255) NOT NULL,
  `code_aluno` varchar(255) NOT NULL,
  `presente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `chamadas_em_sala`
--

INSERT INTO `chamadas_em_sala` (`id`, `date`, `date_day`, `curso`, `disciplina`, `code_professor`, `code_aluno`, `presente`) VALUES
(1, '21/08/2019 12:55:16', '21/08/2019', '1Âº ensino mÃ©dio G', 'geografia', '84567882', '', 'NÃƒO'),
(2, '21/08/2019 12:55:16', '21/08/2019', '1Âº ensino mÃ©dio G', 'geografia', '84567882', '', 'NÃƒO');

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
(22, '16/07/2019 12:52:31', '16/07/2019', '4', '587418'),
(23, '16/07/2019 12:53:14', '16/07/2019', '4', '588160'),
(24, '16/07/2019 12:54:14', '16/07/2019', '4', '587418');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `curso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `curso`) VALUES
(2, '1Âº ensino mÃ©dio G'),
(1, '1º ensino médio G'),
(3, 'teste'),
(5, 'teste 2'),
(7, 'teste 4'),
(9, 'teste 5');

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
(10, 'PHP', 'Back end', '87415978', '2', 'ManhÃ£'),
(11, 'PHP', 'Back end', '87415978', '2', 'ManhÃ£'),
(12, 'PHP', 'Back end', '87415978', '2', 'ManhÃ£'),
(13, 'PHP', 'Back end', '87415978', '2', 'ManhÃ£'),
(14, 'PHP', 'Back end', '87415978', '2', 'ManhÃ£'),
(15, 'PHP', 'Back end', '87415978', '2', 'ManhÃ£'),
(16, 'PHP', 'Back end', '87415978', '2', 'ManhÃ£'),
(17, '1Âº ensino mÃ©dio G', 'MatemÃ¡tica', '87415978', '101', 'ManhÃ£'),
(18, '1Âº ensino mÃ©dio G', 'PortuguÃªs', '87415978', '101', 'ManhÃ£'),
(19, 'teste 23', 'MatemÃ¡tica', '87415978', '103', 'Noite'),
(20, '1Âº ensino mÃ©dio G', 'geografia', '84567882', '1005', 'Noite'),
(21, '1Âº ensino mÃ©dio G', 'geografia', '87415978', '101', 'ManhÃ£');

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
(3, '4568645', 'Ativo', 'Pedro', '4189489441', '477754445', '13021999', 'Maria', 'João', 'sc', '', '', '', '', '', '', '', '', 'geografia', '', '', '', '', '', ''),
(6, '', 'Ativo', 'Matues', '25868756', '677866', '20102009', 'Maria', 'Rangel', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', ''),
(7, '', 'Ativo', 'Matues', '25868756', '677866', '20102009', 'Maria', 'Rangel', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', ''),
(8, '', 'Ativo', 'Tais', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', ''),
(9, '', 'Ativo', 'Tais', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', ''),
(10, '', 'Ativo', 'Rian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', ''),
(11, '', 'Ativo', 'Rian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', ''),
(12, '', '', 'Raquel', '6576755', '786588888', '', '', '', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', ''),
(13, '', '', 'Raquel', '6576755', '786588888', '', '', '', '', '', '', '', '', '', '', '', '', '1Âº ensino mÃ©dio G', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `painel` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `status`, `code`, `senha`, `nome`, `painel`) VALUES
(1, '1', '1', '1', 'Admin', 'admin'),
(2, '2', '2', '2', 'Professor', 'professor'),
(3, '3', '3', '3', 'Aluno', 'aluno'),
(4, '4', '4', '4', 'Portaria', 'portaria'),
(5, '5', '5', '5', 'Tesouraria', 'tesouraria'),
(6, 'Ativo', '84567882', '108.422.559-07', 'Carolaine', 'professor'),
(7, 'Inativo', '84568630', '12345678910', 'Fulano', 'professor'),
(8, 'Ativo', '588903', '', 'Carolaine dos reis Francisco', 'Aluno'),
(9, 'Ativo', '587418', '12345678910', 'Carolaine dos reis Francisco', 'Aluno'),
(10, 'Ativo', '4569389', '541525484', 'Paulo Campos', 'Aluno'),
(11, 'Ativo', '4569389', '', 'Carolaine dos reis Francisco', 'Aluno'),
(12, 'Ativo', '746', '254365', 'paulo', 'Aluno');

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `formacao` varchar(255) NOT NULL,
  `graduacao` varchar(255) NOT NULL,
  `pos_graduacao` varchar(255) NOT NULL,
  `mestrado` varchar(255) NOT NULL,
  `doutorado` varchar(255) NOT NULL,
  `salario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `code`, `status`, `nome`, `cpf`, `nascimento`, `formacao`, `graduacao`, `pos_graduacao`, `mestrado`, `doutorado`, `salario`) VALUES
(1, '87415978', 'Ativo', 'Francisca Alberta', '12345678912', '05/04/1993', 'Superior Completo', 'Pedagogia', '___', '___', '___', '1500'),
(4, '4800654', 'Inativo', 'Mario', '', '', '', '', '', '', '', ''),
(6, '84567135', 'Inativo', 'Carla', '05379839371', '', '', '', '', '', 'doutorado', ''),
(7, '84567882', 'Ativo', 'Carolaine', '108.422.559-07', '', 'Ensino MÃ©dio Incompleto', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chamadas_em_sala`
--
ALTER TABLE `chamadas_em_sala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirma_entrada_de_alunos`
--
ALTER TABLE `confirma_entrada_de_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `curso` (`curso`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estudantes`
--
ALTER TABLE `estudantes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chamadas_em_sala`
--
ALTER TABLE `chamadas_em_sala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `confirma_entrada_de_alunos`
--
ALTER TABLE `confirma_entrada_de_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `estudantes`
--
ALTER TABLE `estudantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mensalidades`
--
ALTER TABLE `mensalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
