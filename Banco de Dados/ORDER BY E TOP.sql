
-- Top: pega a quantidade que voce colocar e retorna 
-- orderBy: ordena de forma crescente ou decrescente os dados

select -- traz as 100 primeiras linhas desta tabela 
	top 100*
from 
	SalesLT.Product
---------------------------------------------------------------------------------------------------------------------------------
select -- lista de forma crescente os standartCost da tabela 
	P.*
from
	SalesLT.Product as P
order by
	p.StandardCost
---------------------------------------------------------------------------------------------------------------------------------
select -- lista de forma decrescente os 10 maiores standartCost da tabela, sem repetir valores (distinct)
	distinct Top 10 P.StandardCost
from
	SalesLT.Product as P
order by
	p.StandardCost desc