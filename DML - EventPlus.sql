--DML - Data  Manipulation Language

--USAR O BANCO CRIADO
USE EventPlus

--INSERIR DADOS NA TABELA

INSERT INTO TiposDeUsuario(TituloTipoUsuario)
VALUES
	('Administrador'),
	('Comum');
-------------------------------------------------------------------------------------
INSERT INTO TiposDeEvento(TituloTipoEvento)
VALUES
	('SQL Server')
-------------------------------------------------------------------------------------
INSERT INTO Instituicao(CNPJ, Endereco, NomeFantasia)
VALUES
	('78592650000160', 'Rua Niteroi, 180 São Caetano do Sul', 'DevSchool')
-------------------------------------------------------------------------------------
INSERT INTO Usuario(IdTipoDeUsuario, Nome, Email, Senha)
VALUES
	(1, 'Gabriel', 'gabriel@email.com', '123456'),
	(1, 'Matheus', 'matheus@email.com', '123456')
-------------------------------------------------------------------------------------
INSERT INTO Evento(IdTipoDeEvento, IdInstituicao, Nome, Descricao, DataEvento, HorarioEvento)
VALUES
	(1, 1, 'Evento SQL', 'Evento para iniciantes em banco de dados', '2023-08-10', '22:00:00')
-------------------------------------------------------------------------------------
INSERT INTO PresencasEventos(IdUsuario, IdEvento, Situacao)
VALUES
	(1, 1, 0),
	(2, 1, 1)
-------------------------------------------------------------------------------------
INSERT INTO ComentarioEvento(IdUsuario, IdEvento, Descricao, Exibe)
VALUES
	(1, 1, 'Ótimo Evento, adorei!', 1),
	(2, 1, 'Péssimo Evento, odiei!', 0)
-------------------------------------------------------------------------------------

SELECT * FROM TiposDeUsuario
SELECT * FROM TiposDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencasEventos
SELECT * FROM ComentarioEvento