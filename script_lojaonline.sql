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

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, datalancamento, descontousado) VALUES
(1, 'Placa de Video Radeon RX 480 8GB', 'RX 480 Sapphire Dual Cooler', 650.0, 'Novo', 'Informatica', '2016-04-12', 0.0);