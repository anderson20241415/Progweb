-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/12/2024 às 19:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `anderson`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` text NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `data_atualizacao`) VALUES
(2, 'João Silva ', 'joao.silva@email.com ', '3434321341', 'Rua das Flores, 123, São Paulo, SP', '0000-00-00', '2024-12-11 17:11:53'),
(3, 'maria', 'maria@22328.com', '(51) 9297337', ' Rua dos Canários, 789, Belo Horizonte, MG', '0000-00-00', '2024-12-11 17:13:06'),
(4, 'calvo', 'aenefe2ere024@gmail.com', '(51) 97765-4321', ' Rua São Pedro, 2020, Porto Alegre, RS', '0000-00-00', '2024-12-11 17:14:02'),
(5, 'João Silva', 'joao.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 123, São Paulo, SP', '1990-03-15', '2024-12-11 17:25:28'),
(6, 'Maria Oliveira', 'maria.oliveira@email.com', '(21) 98876-5432', 'Avenida Brasil, 456, Rio de Janeiro, RJ', '1985-07-25', '2024-12-11 17:25:28'),
(7, 'Carlos Pereira', 'carlos.pereira@email.com', '(31) 98765-6789', 'Rua dos Canários, 789, Belo Horizonte, MG', '1992-01-10', '2024-12-11 17:25:28'),
(8, 'Ana Costa', 'ana.costa@email.com', '(41) 98876-2345', 'Rua da Paz, 1011, Curitiba, PR', '1988-12-05', '2024-12-11 17:25:28'),
(9, 'Lucas Lima', 'lucas.lima@email.com', '(51) 97765-4321', 'Rua São Pedro, 2020, Porto Alegre, RS', '1995-09-20', '2024-12-11 17:25:28'),
(10, 'Fernanda Souza', 'fernanda.souza@email.com', '(61) 98876-1234', 'Quadra 10, Bloco C, Brasília, DF', '1987-06-18', '2024-12-11 17:25:28'),
(11, 'Roberto Santos', 'roberto.santos@email.com', '(81) 98765-3210', 'Avenida Central, 890, Recife, PE', '1991-04-02', '2024-12-11 17:25:28'),
(12, 'Juliana Almeida', 'juliana.almeida@email.com', '(71) 97765-9876', 'Rua do Sol, 345, Salvador, BA', '1984-11-30', '2024-12-11 17:25:28'),
(13, 'Paulo Martins', 'paulo.martins@email.com', '(27) 98876-6543', 'Rua Rio Branco, 555, Vitória, ES', '1993-08-14', '2024-12-11 17:25:28'),
(14, 'Tatiane Rocha', 'tatiane.rocha@email.com', '(48) 98765-8765', 'Avenida Beira-Mar, 123, Florianópolis, SC', '1986-05-22', '2024-12-11 17:25:28'),
(15, 'Felipe Souza', 'felipe.souza@email.com', '(61) 97765-1234', 'Setor Bueno, 211, Goiânia, GO', '1994-02-11', '2024-12-11 17:25:28'),
(16, 'Carla Pereira', 'carla.pereira@email.com', '(35) 98876-4321', 'Rua das Palmeiras, 777, Poços de Caldas, MG', '1990-05-01', '2024-12-11 17:25:28'),
(17, 'Rafael Costa', 'rafael.costa@email.com', '(44) 98765-1234', 'Rua do Lago, 333, Londrina, PR', '1989-10-13', '2024-12-11 17:25:28'),
(18, 'Mariana Silva', 'mariana.silva@email.com', '(82) 98876-5432', 'Rua da Alegria, 456, Maceió, AL', '1992-04-19', '2024-12-11 17:25:28'),
(19, 'André Rodrigues', 'andre.rodrigues@email.com', '(63) 97765-4321', 'Avenida Tocantins, 1000, Palmas, TO', '1996-02-17', '2024-12-11 17:25:28'),
(20, 'Beatriz Lima', 'beatriz.lima@email.com', '(91) 98765-9876', 'Travessa da Paz, 222, Belém, PA', '1988-07-21', '2024-12-11 17:25:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `email`, `senha`, `data`) VALUES
(1, 'Anderson Moura', 'andersonmoura14152024@gmail.com', 'c7c4c04c9825e277a05b9c5bc29374af', '2024-11-29 17:16:00'),
(2, 'julia ', 'julia@ju.com', 'c7c4c04c9825e277a05b9c5bc29374af', '2024-11-29 17:19:18'),
(7, 'miki', 'aenefe2024@gmail.com', '5b89ebb5c1f9f4d35f0ddde1e6cb8f7f', '2024-12-09 19:31:01'),
(10, 'JUJUba3456', 'aenefe2024@gmail.com456', '3a8d29f15466514a210108f4050ffcb5', '2024-12-09 20:06:16'),
(11, 'miki4545', 'anderson2024', 'e30dab85d8a5612310e2c22e559d3c95', '2024-12-10 17:04:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` enum('PP','P','M','G','GG','XG') NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `tamanho`, `categoria`, `marca`, `cor`, `preco`, `imagem`, `data`) VALUES
(37, 'Smartphone Galaxy S21', 'Smartphone topo de linha com câmera de 64 MP e tela AMOLED', '', 'Eletrônicos', 'Samsung', 'Preto', 3999.99, '', '2024-12-11 17:31:31'),
(38, 'Tênis Nike Air Zoom', 'Tênis de corrida com tecnologia Air Zoom e solado flexível', '', 'Calçados', 'Nike', 'Azul', 499.9, '', '2024-12-11 17:31:31'),
(39, 'Camiseta Adidas Originals', 'Camiseta de algodão com logo clássico', 'M', 'Roupas', 'Adidas', 'Branca', 129.9, '', '2024-12-11 17:31:31'),
(40, 'Cadeira Gamer DXRacer', 'Cadeira ergonômica com apoio lombar e ajuste de altura', '', 'Móveis', 'DXRacer', 'Preta', 1599, '', '2024-12-11 17:31:31'),
(41, 'Relógio Casio F91W', 'Relógio digital clássico com resistência à água', '', 'Acessórios', 'Casio', 'Preto', 89.9, '', '2024-12-11 17:31:31'),
(42, 'TV 4K LG UHD', 'Televisão de 55 polegadas com resolução 4K e HDR', '', 'Eletrônicos', 'LG', 'Preto', 2499, '', '2024-12-11 17:31:31'),
(43, 'Fone de Ouvido Bose QuietComfort', 'Fones de ouvido com cancelamento de ruído e som premium', '', 'Eletrônicos', 'Bose', 'Preto', 1299, '', '2024-12-11 17:31:31'),
(44, 'Notebook Dell Inspiron', 'Notebook de 15,6\" com processador i7 e 8GB de RAM', '', 'Eletrônicos', 'Dell', 'Prata', 3499.9, '', '2024-12-11 17:31:31'),
(45, 'Cadeira de Escritório Flex', 'Cadeira ergonômica com design moderno e ajuste de encosto', '', 'Móveis', 'Flex', 'Cinza', 899.99, '', '2024-12-11 17:31:31'),
(46, 'Bicicleta Aro 29 Caloi', 'Bicicleta de montanha com aro 29 e 21 marchas', '', 'Esportes', 'Caloi', 'Preta', 1599, '', '2024-12-11 17:31:31'),
(47, 'Mouse Gamer Logitech G502', 'Mouse gamer com 11 botões programáveis e RGB', '', 'Acessórios', 'Logitech', 'Preto', 299.9, '', '2024-12-11 17:31:31'),
(48, 'Camisa Polo Lacoste', 'Camisa polo de algodão com bordado da marca', 'M', 'Roupas', 'Lacoste', 'Verde', 259.9, '', '2024-12-11 17:31:31'),
(49, 'Cafeteira Nespresso Vertuo', 'Cafeteira que prepara cafés em diversas intensidades', '', 'Eletrodomésticos', 'Nespresso', 'Preto', 1299, '', '2024-12-11 17:31:31'),
(50, 'Bolsa Feminina Michael Kors', 'Bolsa de couro legítimo com fecho dourado', '', 'Acessórios', 'Michael Kors', 'Bege', 1599, '', '2024-12-11 17:31:31'),
(51, 'Console PlayStation 5', 'Console de videogame PlayStation 5 com jogos exclusivos', '', 'Eletrônicos', 'Sony', 'Branco', 4999, '', '2024-12-11 17:31:31'),
(52, 'Ventilador de Mesa Arno', 'Ventilador de mesa com 3 velocidades e design compacto', '', 'Eletrodomésticos', 'Arno', 'Branco', 149.9, '', '2024-12-11 17:31:31'),
(53, 'Blusa de Frio Puma', 'Blusa de frio em poliéster com capô e zíper', 'G', 'Roupas', 'Puma', 'Cinza', 179.9, '', '2024-12-11 17:31:31'),
(54, 'Câmera Digital Canon EOS', 'Câmera DSLR com 18 MP e lente 18-55mm', '', 'Eletrônicos', 'Canon', 'Preto', 1999.99, '', '2024-12-11 17:31:31'),
(55, 'Espelho de Aumento Philips', 'Espelho de aumento com luz LED integrada', '', 'Eletrodomésticos', 'Philips', 'Branco', 99.9, '', '2024-12-11 17:31:31'),
(56, 'Tênis Puma Future Rider', 'Tênis esportivo com design retro e sola emborrachada', '', 'Calçados', 'Puma', 'Branco', 359.9, '', '2024-12-11 17:31:31'),
(57, 'Mochila Nike Sportswear', 'Mochila com compartimentos para laptop e acessório', '', 'Acessórios', 'Nike', 'Preta', 229.9, '', '2024-12-11 17:31:31');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
