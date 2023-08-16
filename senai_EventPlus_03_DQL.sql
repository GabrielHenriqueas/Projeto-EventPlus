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
Nome do usuário
Tipo do usuário
Data do evento
Local do evento (Instituição)
Tipo do evento
Nome do evento
Descrição do evento
Situação do evento
Comentário do evento
*/

SELECT
	Usuario.Nome AS [Nome do Usuário],
	TiposDeUsuario.TituloTipoUsuario AS [Tipo do Usuário],
	Evento.DataEvento AS [Data do Evento],
	Evento.HorarioEvento AS [Horário do Evento],
	CONCAT (Instituicao.NomeFantasia, ' - ', Instituicao.Endereco) AS [Endereço],
	TiposDeEvento.TituloTipoEvento AS [Tipo de Evento],
	Evento.Nome AS [Nome do Evento],
	Evento.Descricao AS [Descrição do evento],
	CASE WHEN PresencasEventos.Situacao = 1 THEN 'CONFIRMADO' ELSE 'NÃO CONFIRMADO' END AS [Presença],
	ComentarioEvento.Descricao AS [Cometário]

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
