--Script da criação do banco de dados documento "MATERIAL: Linguagem de Definição de Dados"
--Aula de Banco de dados
--24/03/2026

	CREATE TABLE Aluno(
	registro INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	dataNascimento DATE
	);
	
	CREATE TABLE Professor(
	codigo INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	titulacao ENUM('grad', 'espec', 'msc', 'dr')
	);
	
	CREATE TABLE Disciplina(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	cargaHoraria INT(3),
	livro VARCHAR(100),
	UNIQUE (livro)
	
	);
	
	CREATE TABLE Turma(
	codigo INT PRIMARY KEY,
	disciplina INT,
	sigla VARCHAR(15) DEFAULT 'CTDS2023-1',
	nAlunos INT,
	sala VARCHAR(50),
	professor INT,		
	FOREIGN KEY(disciplina) REFERENCES Disciplina (id),
	FOREIGN KEY(professor) REFERENCES Professor (codigo)
	
	);
	
	CREATE TABLE Matricula(
	id INT PRIMARY KEY AUTO_INCREMENT,
	turma INT,
	aluno INT,
	ano INT,
	nota DECIMAL(4,2),
	FOREIGN KEY(aluno) REFERENCES Aluno (registro),
	FOREIGN KEY(turma) REFERENCES Turma (codigo)
	
	);
	
	
	--ALTERACOES NA ESTRUTURA DAS TABELAS
	
	ALTER TABLE Aluno ADD COLUMN cidade VARCHAR(255);
	
	ALTER TABLE Disciplina modify nome varchar(100);
	-- ALTER TABLE Disciplina MODIFY COLUMN nome(VARCHAR255) NULL;
	
	ALTER TABLE Aluno modify cidade VARCHAR(255) default 'Jaragua do Sul';
	--ALTER TABLE Aluno MODIFY COLUMN cidade VARCHAR(255) DEFAULT 'Jaragua do sul';
	
	ALTER TABLE Matricula ADD COLUMN Frequencia INT;
	
	ALTER TABLE Matricula MODIFY nota DECIMAL(4,2) CHECK ( nota > 0);
	
	
	
	---Inserir dados
	INSERT INTO Aluno (registro, nome, dataNascimento)
				VALUES(1000, 'Henry', '1998-09-10');
				
	INSERT INTO Aluno (registro, nome, dataNascimento)
				VALUES(1001, 'Willy', '2000-07-10');
				
	INSERT INTO Aluno (registro, nome, dataNascimento)
				VALUES(1002, 'Caio', '2002-07-10');

	INSERT INTO Disciplina (id, nome, cargaHoraria, livro)
		VALUES(NULL, 'Banco de Dados', 80, 'Introducao a banco de dados');
		
		
	INSERT INTO Professor(codigo, nome, email, titulacao)
				VALUES(1000, 'Bruno', 'bruno@ifsc.edu.br', 'msc');
				
	INSERT INTO Turma (codigo, disciplina, sigla, nAlunos, sala, professor)
				VALUES(1000, 1, NULL, 0, 'B-302', 1000);
				
	INSERT INTO Matricula (id, turma, aluno, ano, nota)
				VALUES(NULL, 1000, 1002, 2026, NULL);
				
				
--- delimiter

DELIMITER//
CREATE TRIGGER tg_alunos
AFTER INSERT ON Matricula
FOR EACH ROW
BEGIN
	UPDATE Turma SET nAlunos = nAlunos+1
	WHERE codigo= NEW.Turma;
	
END//
					
	
	
	