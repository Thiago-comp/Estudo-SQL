-- group by: agupar valores, por exemplo pegar a media 

select 
	size,
	color,
	sum(standardcost) as soma , -- seleciona a cor, e faz a soma do 'standardcost' da tabela 'salesLT.[product]'
	avg(standardcost) as media -- cria outra coluna trazendo a media dos precos dos produtos pela cor
from 
	SalesLT.[product]
where -- clausula where vem antes do agrupamento, primeiro filtra depois agrupa
	color = 'black' 
or 
	color = 'silver'
group by -- preciso dessa clausula para mostrar pro SQL que eu estou agrupando os produtos pela cor
	color, size
having sum(StandardCost) >= 4000 -- clausula para filtar o resultado, depois de ja ter o resultado agrupado, vai trazer todas as linhas que tem a soma do 'StandardCost' maior que 4000


-- consulta feita para aperfeicoamento de having e group by, 

select  -- seleciona a cor,productID, listprice agrupando-os usando group by, e fazendo soma e media dos pesos de cada uma das colunas selecionadas, com excecoes feitas por where e having 
	color,
	ProductID,
	listprice,
	sum(weight) as soma,
	avg(weight) as media
from
	SalesLT.[Product]
where 
	ProductID >= 950
	and
	color = 'black'
	or
	color = 'blue'
group by
	color, listprice,ProductID
having
	sum(weight) is not null

select *
from	SalesLT.Product