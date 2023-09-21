-- Script Sql with answer to the challenge assembling database.
-- CREATED BY MARCELO MORGADO, SOFTWARE DEVELOPER.
-- GitHub: https://github.com/marcelomorg

-- USE INSTRUCTIONS.
-- CLI Comand used to SQLcmd in docker container. OBS: Change login details only:
-- /opt/mssql-tools/bin/sqlcmd -S localhost -U 'your user' -P 'your password' -i 'path Answer.sql file'

-- SCRIPT START.
use Filmes
GO
-- 1)
SELECT Nome, Ano FROM Filmes
GO
-- 2)
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC
GO
-- 3)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE 'De Volta para o Futuro'
GO
-- 4)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano LIKE '1997'
GO
-- 5)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano >= 2000
GO
-- 6)
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC
GO
-- 7)
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC
GO
-- 8)
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
GO
-- 9)
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero LIKE 'F' ORDER BY PrimeiroNome ASC
GO
-- 10)
SELECT F.Nome, G.Genero FROM FilmesGenero FG INNER JOIN Filmes F ON F.id = FG.IdFilme INNER JOIN Generos G ON G.Id = FG.IdGenero
GO
-- 11)
SELECT F.Nome, G.Genero FROM FilmesGenero FG INNER JOIN Filmes F ON F.id = FG.IdFilme INNER JOIN Generos G ON G.Id = FG.IdGenero WHERE G.Genero LIKE 'Mistério'
GO
-- 12)
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF INNER JOIN Filmes F ON F.Id = EF.IdFilme INNER JOIN Atores A ON A.Id = EF.IdAtor
GO
