--Script da criação do banco de dados da Loja Online
--Aula de Banco de dados
--17/03/2026

CREATE TABLE Produto(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	descricao VARCHAR(255),
	preco DECIMAL(10,2),
	tipo ENUM('Novo', 'Usado', 'Liquidacao', 'Promocao', 'Outros'),
	categoria SET('Eletronico', 'Telefonia', 'Informatica', 'Eletrodomesticos', 'Acessorios', 'Outros'),
	datalancamento DATE,
	descontousado DECIMAL(10,2)
	);
	
	CREATE TABLE Loja(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	endereco VARCHAR(255),
	telefone VARCHAR(45)
	);
	
	CREATE TABLE Caracteristicas(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	descricao VARCHAR(255)
	);
	
	CREATE TABLE Estoque(	
	loja_id INT,
	produto_id INT,
	quantidade INT,
	FOREIGN KEY(loja_id) REFERENCES Loja (id),
	FOREIGN KEY (produto_id) REFERENCES Produto (id),
	PRIMARY KEY (loja_id, produto_id)
	);
	
	CREATE TABLE Produto_Caracteristicas(	
	produto_id INT,
	caracteristicas_id INT,
	FOREIGN KEY(produto_id) REFERENCES Produto (id),
	FOREIGN KEY (caracteristicas_id) REFERENCES Caracteristicas (id),
	PRIMARY KEY (produto_id, caracteristicas_id)
	
	);
	
	--População do Banco de dados (inserir dados no banco de dados)
	
INSERT INTO Loja(id, nome, endereco, telefone) VALUES
(1, 'Nova Loja', 'Rua Domingos da Nova, 333', '(47) 3371-1321');

INSERT INTO Loja(id, nome, endereco, telefone) VALUES
(2, 'Segunda Loja', 'Rua Marechal Deodoro, 133', '(47) 3372-7321');

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, datalancamento, descontousado) VALUES
(1, 'Placa de Video Radeon RX 480 8GB', 'RX 480 Sapphire Dual Cooler', 650.0, 'Novo', 'Informatica', '2016-04-12', 0.0);

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, datalancamento, descontousado) VALUES
(2, 'Placa de Video RTX 5090 24GB', 'RTX 5090 Asus', 7650.0, 'Novo', 'Informatica', '2024-11-12', 0.0);

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, datalancamento, descontousado) VALUES
(3, 'Mouse USB', 'Mouse USB Genérico', 15.50, 'Novo', 'Informatica', '2018-04-12', 0.0);

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, datalancamento, descontousado) VALUES
(4, 'Teclado USB', 'Teclado USB Genérico', 9.50, 'Usado', 'Informatica', '2020-04-12', 5.0);

INSERT INTO  Estoque(loja_id, produto_id, quantidade) VALUES
(1, 1, 50);

INSERT INTO  Estoque(loja_id, produto_id, quantidade) VALUES
(1, 2, 25);

INSERT INTO  Estoque(loja_id, produto_id, quantidade) VALUES
(2, 3, 75);

INSERT INTO  Estoque(loja_id, produto_id, quantidade) VALUES
(2, 4, 150);

INSERT INTO Caracteristicas(id, nome, descricao) VALUES
(1, 'Gamer', 'Para jogos');

INSERT INTO Caracteristicas(id, nome, descricao) VALUES
(2, 'Genérico', 'Acessório Genérico');

INSERT INTO Produto_Caracteristicas(produto_id, caracteristicas_id) VALUES
(1, 1);

INSERT INTO Produto_Caracteristicas(produto_id, caracteristicas_id) VALUES
(2, 1);

INSERT INTO Produto_Caracteristicas(produto_id, caracteristicas_id) VALUES
(3, 2);

INSERT INTO Produto_Caracteristicas(produto_id, caracteristicas_id) VALUES
(4, 2);

---criar usuario e database

CREATE DATABASE database_name;
CREATE USER 'loja'@'%' IDENTIFIED BY 'senha123';
select user from mysql.user;
select distinct user from mysql.user;




