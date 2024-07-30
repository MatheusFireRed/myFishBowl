-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 30-Jul-2024 às 21:18
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `my-fishbowl`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimentacao`
--

CREATE TABLE `alimentacao` (
  `id` int(11) NOT NULL,
  `alimentacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comportamento`
--

CREATE TABLE `comportamento` (
  `id` int(11) NOT NULL,
  `comportamento` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `familia`
--

CREATE TABLE `familia` (
  `id` int(11) NOT NULL,
  `familia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id`, `genero`) VALUES
(1, 'Perciformes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem`
--

CREATE TABLE `ordem` (
  `id` int(11) NOT NULL,
  `ordem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paragrafos`
--

CREATE TABLE `paragrafos` (
  `id` int(11) NOT NULL,
  `peixe_id` int(11) NOT NULL,
  `tipo` enum('alimentacao','reproducao','comportamento') NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Peixes`
--

CREATE TABLE `Peixes` (
  `id` int(11) NOT NULL,
  `data_publicacao` datetime NOT NULL,
  `tipo_de_agua` varchar(10) NOT NULL,
  `nome_popular` varchar(50) NOT NULL,
  `nome_cientifico` varchar(50) NOT NULL,
  `genero` int(11) NOT NULL DEFAULT 20,
  `ordem` int(11) NOT NULL,
  `familia` int(11) NOT NULL,
  `ocorrencia_natural` text NOT NULL,
  `comportamento` int(11) NOT NULL,
  `alimentacao` int(11) NOT NULL,
  `tipo_reproducao` int(11) NOT NULL,
  `ph_min` float(2,1) NOT NULL,
  `ph_max` float(2,1) NOT NULL,
  `gh_min` float(2,1) NOT NULL,
  `gh_max` float(2,1) NOT NULL,
  `temperatura_min` int(3) NOT NULL,
  `temperatura_max` int(3) NOT NULL,
  `litragem` text NOT NULL,
  `tamanho` text NOT NULL,
  `adequado_plantado` text NOT NULL,
  `manutencao` varchar(10) NOT NULL,
  `tempo_vida_min` int(3) NOT NULL,
  `tempo_vida_max` int(3) NOT NULL,
  `filtragem` text NOT NULL,
  `paragrafos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reproducao`
--

CREATE TABLE `reproducao` (
  `id` int(11) NOT NULL,
  `reproducao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_commentmeta: #1932 - Table &#039;my-fishbowl.wp_commentmeta&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_commentmeta: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_commentmeta`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_comments: #1932 - Table &#039;my-fishbowl.wp_comments&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_comments: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_comments`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_links: #1932 - Table &#039;my-fishbowl.wp_links&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_links: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_links`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_options: #1932 - Table &#039;my-fishbowl.wp_options&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_options: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_options`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_postmeta: #1932 - Table &#039;my-fishbowl.wp_postmeta&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_postmeta: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_postmeta`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_posts: #1932 - Table &#039;my-fishbowl.wp_posts&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_posts: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_posts`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_termmeta: #1932 - Table &#039;my-fishbowl.wp_termmeta&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_termmeta: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_termmeta`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_terms: #1932 - Table &#039;my-fishbowl.wp_terms&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_terms: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_terms`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_term_relationships: #1932 - Table &#039;my-fishbowl.wp_term_relationships&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_term_relationships: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_term_relationships`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_term_taxonomy: #1932 - Table &#039;my-fishbowl.wp_term_taxonomy&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_term_taxonomy: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_term_taxonomy`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_usermeta: #1932 - Table &#039;my-fishbowl.wp_usermeta&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_usermeta: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_usermeta`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--
-- Erro ao ler a estrutura para a tabela my-fishbowl.wp_users: #1932 - Table &#039;my-fishbowl.wp_users&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela my-fishbowl.wp_users: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `my-fishbowl`.`wp_users`&#039; na linha 1

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alimentacao`
--
ALTER TABLE `alimentacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comportamento`
--
ALTER TABLE `comportamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ordem`
--
ALTER TABLE `ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `paragrafos`
--
ALTER TABLE `paragrafos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peixe_id` (`peixe_id`);

--
-- Índices para tabela `Peixes`
--
ALTER TABLE `Peixes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero` (`genero`),
  ADD KEY `ordem` (`ordem`),
  ADD KEY `familia` (`familia`),
  ADD KEY `comportamento` (`comportamento`),
  ADD KEY `alimentacao` (`alimentacao`),
  ADD KEY `tipo_reproducao` (`tipo_reproducao`);

--
-- Índices para tabela `reproducao`
--
ALTER TABLE `reproducao`
  ADD PRIMARY KEY (`id`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `paragrafos`
--
ALTER TABLE `paragrafos`
  ADD CONSTRAINT `paragrafos_ibfk_1` FOREIGN KEY (`peixe_id`) REFERENCES `Peixes` (`id`);

--
-- Limitadores para a tabela `Peixes`
--
ALTER TABLE `Peixes`
  ADD CONSTRAINT `Peixes_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `Peixes_ibfk_2` FOREIGN KEY (`ordem`) REFERENCES `ordem` (`id`),
  ADD CONSTRAINT `Peixes_ibfk_3` FOREIGN KEY (`familia`) REFERENCES `familia` (`id`),
  ADD CONSTRAINT `Peixes_ibfk_4` FOREIGN KEY (`comportamento`) REFERENCES `comportamento` (`id`),
  ADD CONSTRAINT `Peixes_ibfk_5` FOREIGN KEY (`alimentacao`) REFERENCES `alimentacao` (`id`),
  ADD CONSTRAINT `Peixes_ibfk_6` FOREIGN KEY (`tipo_reproducao`) REFERENCES `reproducao` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
