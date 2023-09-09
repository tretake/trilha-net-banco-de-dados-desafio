--1 - Buscar o nome e ano dos filmes

select Nome,Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select Nome,Ano FROM Filmes
ORDER BY Ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select Nome,Ano,Duracao FROM Filmes 
Where Nome LIKE 'De Volta%';

--4 - Buscar os filmes lançados em 1997

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Ano > 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano,count(Ano)AS 'quantidade' FROM Filmes
Group BY Ano
ORDER BY count(Ano) DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT * FROM Atores WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10 - Buscar o nome do filme e o gênero

SELECT f.nome,g.Genero 
FROM Filmes f
	INNER JOIN FilmesGenero fg
	on f.id = fg.idFilme
		INNER JOIN Generos g
		on fg.idGenero = g.id;



--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.nome,g.Genero 
FROM Filmes f
	INNER JOIN FilmesGenero fg
	on f.id = fg.idFilme
		INNER JOIN Generos g
		on fg.idGenero = g.id
		WHERE g.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.nome,a.PrimeiroNome,a.UltimoNome , ef.Papel
FROM Filmes f
	INNER JOIN ElencoFilme ef
	on f.id = ef.IdFilme
		INNER JOIN Atores a
		on ef.IdAtor = a.id;
