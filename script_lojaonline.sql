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
	descontousado(10,2),
	);
	
	CREATE TABLE Loja(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	endereco VARCHAR(255),
	telefone VARCHAR(45),
	):
	
	CREATE TABLE Caracteristicas(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	descricao VARCHAR(255),
	);
	
	CREATE TABLE Estoque(	
	loja_id INT PRIMARY KEY,
	produto_id INT PRIMARY KEY,
	FOREIGN KEY(loja_id) REFERENCES Loja (id),
	FOREIGN KEY (produto_id) REFERENCES Produto (id),
	);
	
	CREATE TABLE Produto-Caracteristicas(	
	produto_id INT PRIMARY KEY,
	caracteristicas_id INT PRIMARY KEY,
	FOREIGN KEY(produto_id) REFERENCES Produto (id),
	FOREIGN KEY (caracteristicas_id) REFERENCES Caracteristicas (id),
	);
	
