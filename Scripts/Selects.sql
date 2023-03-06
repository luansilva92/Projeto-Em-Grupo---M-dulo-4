
select count(episode) from episodios where Writer_1 like "George%";
select count(episode) from episodios where Writer_1 like "David%";

select Release_date from episodios where Season like 1 and Episode like 1;
select Release_date from episodios where Season like 8 and Episode like 6;

select Season Temporada, Episode Episodio, Title Titulo, Rating Nota from episodios where Rating >=9;

select Votes Votos, Season Temporada, Episode Episodio, Title Titulo from episodios order by votes desc limit 1;

select Critics_reviews Comentarios, Season Temporada, Episode Episodio, Title Titulo from episodios 
order by Critics_reviews desc limit 1;

select Duration Duracao, Season Temporada, Episode Episodio, Title Titulo from episodios 
order by Duration limit 10;

select Release_date Lancamento, Season Temporada, Episode Episodio, Title Titulo, Writer_1 Escritor_1 
from episodios where Episode like 1;

