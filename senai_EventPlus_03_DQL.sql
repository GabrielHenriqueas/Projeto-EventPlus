--DQL - Data Query Language

SELECT * FROM TiposDeUsuario
SELECT * FROM TiposDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencasEventos
SELECT * FROM ComentarioEvento

-- Criar script para consulta exibindo os seguintes dados
/*Usar JOIN
Nome do usu�rio
Tipo do usu�rio
Data do evento
Local do evento (Institui��o)
Tipo do evento
Nome do evento
Descri��o do evento
Situa��o do evento
Coment�rio do evento
*/

SELECT
	Usuario.Nome AS [Nome do Usu�rio],
	TiposDeUsuario.TituloTipoUsuario AS [Tipo do Usu�rio],
	Evento.DataEvento AS [Data do Evento],
	Evento.HorarioEvento AS [Hor�rio do Evento],
	CONCAT (Instituicao.NomeFantasia, ' - ', Instituicao.Endereco) AS [Endere�o],
	TiposDeEvento.TituloTipoEvento AS [Tipo de Evento],
	Evento.Nome AS [Nome do Evento],
	Evento.Descricao AS [Descri��o do evento],
	CASE WHEN PresencasEventos.Situacao = 1 THEN 'CONFIRMADO' ELSE 'N�O CONFIRMADO' END AS [Presen�a],
	ComentarioEvento.Descricao AS [Comet�rio]

FROM Evento
	INNER JOIN TiposDeEvento
	ON Evento.IdTipoDeEvento = TiposDeEvento.IdTipoDeEvento
	INNER JOIN Instituicao
	ON Evento.IdInstituicao = Instituicao.IdInstituicao
	INNER JOIN PresencasEventos
	ON Evento.IdEvento = PresencasEventos.IdEvento
	INNER JOIN Usuario
	ON Usuario.IdUsuario = PresencasEventos.IdUsuario
	INNER JOIN TiposDeUsuario
	ON TiposDeUsuario.IdTipoDeUsuario = Usuario.IdTipoDeUsuario
	LEFT JOIN ComentarioEvento
	ON ComentarioEvento.IdUsuario = Usuario.IdUsuario
