-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Abr-2023 às 19:57
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pdv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

CREATE TABLE `atividade` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `atividade` varchar(255) NOT NULL,
  `ordem` int(11) NOT NULL,
  `condicao` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atividade`
--

INSERT INTO `atividade` (`id`, `title`, `atividade`, `ordem`, `condicao`, `start`, `color`, `end`) VALUES
(3, 'aniversário da maria ', 'festa de aniversário da maria 5 mesas\r\n', 1, 3, '2023-03-19 00:00:00', '#084b39', '2023-03-19 01:00:00'),
(4, 'reserva de 2 mesas para Antonio', 'reservar 5 mesas em nome de Antonio\r\n', 2, 1, '2023-03-19 00:00:00', '#084b39', '2023-03-19 01:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(100) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(255) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(255) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(255) COLLATE utf8_bin NOT NULL,
  `estado` varchar(255) COLLATE utf8_bin NOT NULL,
  `complemento` varchar(255) COLLATE utf8_bin NOT NULL,
  `cep` varchar(255) COLLATE utf8_bin NOT NULL,
  `ponto_referecia` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel1` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel2` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `cpf_cnpj` varchar(255) COLLATE utf8_bin NOT NULL,
  `rg` varchar(255) COLLATE utf8_bin NOT NULL,
  `condominio` varchar(255) COLLATE utf8_bin NOT NULL,
  `bloco` varchar(255) COLLATE utf8_bin NOT NULL,
  `apartamento` varchar(255) COLLATE utf8_bin NOT NULL,
  `local_entrega` varchar(255) COLLATE utf8_bin NOT NULL,
  `observacoes` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `endereco`, `bairro`, `cidade`, `estado`, `complemento`, `cep`, `ponto_referecia`, `tel1`, `tel2`, `email`, `cpf_cnpj`, `rg`, `condominio`, `bloco`, `apartamento`, `local_entrega`, `observacoes`) VALUES
(9, 'julia', 'rua joaquina', 'centro', 'presidente prudente', 'sp', 'Quadra ', '', 'proximo a igreja', '18999999999', '1832456677', 'contato@seusitesc.com.br', '000000', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cor`
--

CREATE TABLE `cor` (
  `id` int(100) NOT NULL,
  `cor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cor`
--

INSERT INTO `cor` (`id`, `cor`) VALUES
(1, 'success');

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesas`
--

CREATE TABLE `despesas` (
  `id` int(100) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `despesa` varchar(255) NOT NULL,
  `data` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `despesas`
--

INSERT INTO `despesas` (`id`, `valor`, `despesa`, `data`) VALUES
(1, '30', 'agua', '27/05/2019'),
(10, '50.00', 'internet', '01/06/2019'),
(13, '560,00', 'fornecedor', '19/03/2023');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesas`
--

CREATE TABLE `mesas` (
  `id` int(100) NOT NULL,
  `id_mesa` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mesas`
--

INSERT INTO `mesas` (`id`, `id_mesa`, `nome`, `status`) VALUES
(406, '1', 'JOSE', '2'),
(407, '2', '', '2'),
(408, '3', '', '1'),
(409, '4', '', '1'),
(476, '5', '', '1'),
(477, '6', '', '1'),
(478, '7', '', '1'),
(479, '8', '', '1'),
(480, '9', '', '1'),
(481, '10', '', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `delivery` varchar(100) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `idmesa` varchar(100) NOT NULL,
  `produto` varchar(255) NOT NULL,
  `quantidade` varchar(100) NOT NULL,
  `hora_pedido` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `observacao` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `data` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `gorjeta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedido`, `delivery`, `cliente`, `idmesa`, `produto`, `quantidade`, `hora_pedido`, `valor`, `observacao`, `usuario`, `data`, `gorjeta`) VALUES
(18, '', 'JOSE', '1', 'FANTA GUARANA 2L', '1', '20:56', '6.50', '', '', '2023-03-14 19:56:09.510089', ''),
(19, '', 'JOSE', '1', 'X-Salada', '1', '20:56', '7.50', '', '', '2023-03-14 19:56:23.979849', ''),
(20, '', '', '2', 'Coca-Cola', '2', '20:56', '6.50', '', '', '2023-03-14 19:56:44.733518', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `detalhes` varchar(255) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `preco_custo` varchar(100) NOT NULL DEFAULT '0.00',
  `preco_venda` varchar(100) NOT NULL DEFAULT '0.00',
  `estoque_atual` int(100) NOT NULL,
  `estoque_minimo` int(100) NOT NULL,
  `data_compra` varchar(100) NOT NULL,
  `data_validade` varchar(100) NOT NULL,
  `unidade` varchar(100) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `fornecedor` varchar(255) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `categoria`, `detalhes`, `codigo`, `preco_custo`, `preco_venda`, `estoque_atual`, `estoque_minimo`, `data_compra`, `data_validade`, `unidade`, `marca`, `fornecedor`, `observacoes`) VALUES
(110, 'Pizza de Frango e Catupiri', 'PIZZAS', '', '01', '6.50', '15.99', 100, 1, '', '', 'unidade', '', '', ''),
(111, 'Pizza de Peperoni', 'PIZZAS', '', '02', '6.50', '18.95', 100, 1, '', '', 'unidade', '', '', ''),
(131, 'Coca-Cola', 'BEBIDAS', 'PET 2L', '789889556123', '2.95', '6.50', 4, 5, '17/04/2019', '24/05/2019', 'L', 'Coca-Cola', 'Vonpar', 'Coca-Cola 2 Litros'),
(132, 'X-Salada', 'LANCHES', '', '', '3.00', '7.50', 10, 3, '', '', '', '', '', ''),
(133, 'x-bacon', 'LANCHES', 'bacon, saalada, pão', '0000000', '10.00', '16.00', 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(100) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nivel` int(100) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `resposta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `senha`, `nivel`, `pergunta`, `resposta`) VALUES
(6, 'teste', 'teste', 1, 'pdv', 'pdv'),
(7, 'giovanni', '123', 2, 'sequencia de 3 numeros ', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(100) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `rendimento` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `valor`, `cliente`, `rendimento`, `data`) VALUES
(80, '15.99', 'Rafael2', 'Mesa', '27/05/2019'),
(110, '31.98', 'Pedro', 'Delivery', '01/06/2019'),
(111, '37.90', 'Rafael Jose Vieira', 'Delivery', '01/06/2019'),
(112, '13.00', 'Rafael Jose Vieira', 'Delivery', '01/06/2019'),
(114, '44.98', 'Rafael Jose Vieira', 'Mesa', '02/06/2019'),
(115, '37.90', 'joÃ£o', 'Delivery', '02/06/2019'),
(117, '31.98', 'Rafael Jose Vieira', 'Delivery', '02/06/2019'),
(120, '31.98', 'Rafael Jose Vieira', 'Delivery', '02/06/2019'),
(121, '31.98', 'Pedro', 'Mesa', '02/06/2019'),
(122, '31.98', 'Pedro', 'Mesa', '03/06/2019'),
(123, '44.4', 'Pedro', 'Mesa', '03/06/2019'),
(124, '38.48', 'Amanda', 'Mesa', '03/06/2019'),
(125, '18.95', 'Amanda', 'Mesa', '03/06/2019'),
(132, '15.99', 'jose', 'Mesa', '14/03/2023');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `despesas`
--
ALTER TABLE `despesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atividade`
--
ALTER TABLE `atividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `despesas`
--
ALTER TABLE `despesas`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
