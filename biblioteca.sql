--Script da criação do banco de dados da Biblioteca
--Aula de Banco de dados
--10/03/2026

CREATE TABLE Biblioteca(
	codigo INT PRIMARY KEY,
	endereco VARCHAR(255) NULL,
	descricao VARCHAR(255) NULL
);

CREATE TABLE Livro(
	codigo INT PRIMARY KEY,
	titulo VARCHAR(255),
	biblioteca INT,
	FOREIGN KEY(biblioteca) 
	REFERENCES Biblioteca(codigo)

);

CREATE TABLE Usuario(
	matricula INT PRIMARY KEY,
	nome VARCHAR(200),
	sexo ENUM('M', 'F', 'O')

);

CREATE TABLE Biblioteca_usuario(
	codigo INT PRIMARY KEY,
	biblioteca INT,
	usuario INT,
	FOREIGN KEY(biblioteca) REFERENCES Biblioteca (codigo),
	FOREIGN KEY (usuario) REFERENCES Usuario (matricular)


);

CREATE TABLE Assunto(
	codigo INT PRIMARY KEY,
	assunto VARCHAR(45)

);

CREATE TABLE livro_e_assunto(
	codigo INT PRIMARY KEY,
	livro INT,
	FOREIGN KEY(livro)
	REFERENCES Livro(codigo)


);

CREATE TABLE Autor(
	codigo INT PRIMARY KEY,
	nome VARCHAR(80)

);

CREATE TABLE autor_e_livro(
	codigo INT PRIMARY KEY,
	autor INT,
	livro INT,
	FOREIGN KEY(autor) REFERENCES Autor (codigo),
	FOREIGN KEY(livro) REFERENCES Livro (codigo)

);

CREATE TABLE Emprestimo(
	codigo INT PRIMARY KEY,
	emprestimo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	devolucao TIMESTAMP NULL,
	usuario INT,
	livro INT,
	FOREIGN KEY(usuario) REFERENCES Usuario (matricula),
	FOREIGN KEY (livro) REFERENCES  Livro (codigo)


);


--População do Banco de dados (inserir dados no banco de dados)

INSERT INTO Biblioteca(codigo, endereco, descricao) VALUES
(1, 'Rua dos Imigrantes, 445, Rau', 'Biblioteca do IFSC');

INSERT INTO Livro(codigo, titulo, biblioteca) VALUES
(1, 'Harry Potter', 1);

INSERT INTO Usuario(matricula, nome, sexo) VALUES
(123123, 'Bruno Calegaro', 'M');

INSERT INTO Biblioteca_usuario(codigo, biblioteca, usuario) VALUES
(1, 1, 123123);

INSERT INTO Emprestimo(codigo, livro, usuario) VALUES
(1, 1, 123123);

INSERT INTO Autor(codigo, nome) VALUES
(1, 'JK Rowlings');

INSERT INTO autor_e_livro(codigo, livro, autor) VALUES
(1, 1, 1);

INSERT INTO Livro(codigo, titulo, biblioteca) VALUES
(2, '1984', 1);

INSERT INTO Autor(codigo, nome) VALUES
(2, 'George Orwell');

INSERT INTO autor_e_livro(livro, autor) VALUES
(2, 2);

--verificar select * from Emprestimo;