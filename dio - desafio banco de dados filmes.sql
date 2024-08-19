use [Filmes] -- SET BANCO DE DADOS

/* NOMES DAS TABELAS */
select * from Filmes.dbo.Atores
select * from Filmes.dbo.ElencoFilme
select * from Filmes.dbo.Filmes
select * from Filmes.dbo.FilmesGenero
select * from Filmes.dbo.Generos
/*********************/

-- ETAPA 1
select
	Nome
	,Ano
from
	Filmes.dbo.Filmes
-- END ETAPA 1

-- ETAPA 2
select
	Nome
	,Ano
	,Duracao
from
	Filmes.dbo.Filmes
order by
	Ano
asc
-- END ETAPA 2

-- ETAPA 3
select
	Nome
	,Ano
	,Duracao
from
	Filmes.dbo.Filmes
where
	Nome like '%De volta para o futuro%'
-- END ETAPA 3

-- ETAPA 4
select
	Nome
	,Ano
	,Duracao
from
	Filmes.dbo.Filmes
where
	Ano = 1997
-- END ETAPA 4

-- ETAPA 5
select
	Nome
	,Ano
	,Duracao
from
	Filmes.dbo.Filmes
where
	Ano > 2000
-- END ETAPA 5

-- ETAPA 6
select
	Nome
	,Ano
	,Duracao
from
	Filmes.dbo.Filmes
where
	Duracao > 100 and Duracao < 150 
order by
	Duracao
asc
-- END ETAPA 6

-- ETAPA 7
select
	Ano
	,Count(*) as Quantidade
from
	Filmes.dbo.Filmes
group by
	Ano
order by
	Quantidade
desc
-- END ETAPA 7

-- ETAPA 8
select
	Id
	,PrimeiroNome
	,UltimoNome
	,Genero
from
	Filmes.dbo.Atores
where
	Genero = 'M'
-- END ETAPA 8

-- ETAPA 9
select
	Id
	,PrimeiroNome
	,UltimoNome
	,Genero
from
	Filmes.dbo.Atores
where
	Genero = 'F'
order by
	PrimeiroNome
asc
-- END ETAPA 9

-- ETAPA 10
select
	Nome
	,Genero
from
	Filmes.dbo.Filmes filmes
join
	Filmes.dbo.FilmesGenero filmesGenero
on 
	filmes.Id = filmesGenero.IdFilme
join
	FIlmes.dbo.Generos generos
on
	filmesGenero.IdGenero = generos.Id
-- END ETAPA 10

-- ETAPA 11
select
	Nome
	,Genero
from
	Filmes.dbo.Filmes filmes
join
	Filmes.dbo.FilmesGenero filmesGenero
on 
	filmes.Id = filmesGenero.IdFilme
join
	FIlmes.dbo.Generos generos
on
	filmesGenero.IdGenero = generos.Id
where
	Genero like '%Mistério%'
-- END ETAPA 11

-- ETAPA 12
select
	Nome
	,PrimeiroNome
	,UltimoNome
	,Papel
from
	Filmes.dbo.Filmes filmes
left join
	Filmes.dbo.FilmesGenero filmesGenero
on 
	filmes.Id = filmesGenero.IdFilme
join
	Filmes.dbo.ElencoFilme elencoFilme
on
	filmes.Id = elencoFilme.IdFilme
join
	Filmes.dbo.Atores atores
on
	elencoFilme.IdAtor = atores.Id
-- END ETAPA 12