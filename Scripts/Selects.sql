/*- Quais episódios com a nota maior ou igual a 9? */

select Season as Temporada, Episode as Episódio, Title as Título, Rating as Avaliações from episodios where Rating >=9 order by Rating desc;

/*- Quais são os 5 episódios com os maiores números de votos? */

select Season as Temporada, Episode as Episódio, Title as Título, Votes as Votos from episodios order by Votes desc limit 5;

/*- Quais escritores tem o maiores números de colaborações como autor principal e co-autor? */

select Escritores, sum(Participação) as Participações
 from (select writer_1 as Escritores, count(*) as Participação from episodios GROUP BY writer_1 union
select writer_2 as Escritores, count(*) as Participação from episodios GROUP BY writer_2
) t group by Escritores order by Participações desc; 


/*- Quais são os 10 episódios mais curtos? */

select Duration Duracao, Season Temporada, Episode Episodio, Title Titulo from episodios order by Duration limit 10;

/*- Quais são os 10 episódios mais comentados pelos fãs?*/

select Season as Temporada, Episode as Episódio, Title as Título, Users_reviews as Total_de_comentários from episodios order by Users_reviews desc limit 10;