select 
	*
from
	SalesLT.Address
where
	AddressID = 10

---------------------------------------------------------------------------------------------------------------------
select -- consulta usando as atribuicoes logicas, (and, or)
	adress.*
from
	SalesLT.Address as adress
where 
	(adress.CountryRegion = 'united states'
		and
		adress.City = 'bothell')
	or 
	adress.City = 'Montreal' 

---------------------------------------------------------------------------------------------------------------------
select -- consulta para lista de valores, consultar varios valores de uma vez
	saleslt.*
from
	SalesLT.Address as saleslt
where
	saleslt.AddressID in (9,11,868,430)

---------------------------------------------------------------------------------------------------------------------
select  -- essa consulta e igual a de cima poremm mais trabalhosa
	saleslt.*
from 
	SalesLT.Address as saleslt
where
	saleslt.AddressID = 9
	or
	saleslt.AddressID = 10
	or 
	saleslt.AddressID = 868

---------------------------------------------------------------------------------------------------------------------
select 
	sales.*
from	
	SalesLT.Address as sales
where
	sales.City LIKE 'B[uai]r%' -- consulta para pegar todas as cidades que comecam com a letra B, seguido de 'u,a,i' e em terceiro vem o 'r', depois tanto faz
	-- (%) significa que pode ou nao ter mais coisa 

---------------------------------------------------------------------------------------------------------------------
-- questao 1- pegar todos os address de 2006 cujo addressLine comeca com o caractere 6
select 
	saleslt.*
from	
	SalesLT.Address as saleslt
where 
	year(saleslt.ModifiedDate) = 2006
	and
	saleslt.AddressLine1 like '6%'

---------------------------------------------------------------------------------------------------------------------
-- questao 2- pegar todos os address cujo addressID > 1000 ou possua o postalCode = 98011
select
	saleslt.*
from
	SalesLT.Address as saleslt
where
	saleslt.AddressID > 1000
	or
	saleslt.PostalCode = '98011'

---------------------------------------------------------------------------------------------------------------------
-- questao 3- liste distintamente todos os countryRegions da tabela address
select
	distinct SalesLT.CountryRegion
from
	SalesLT.Address as saleslt

---------------------------------------------------------------------------------------------------------------------
-- questao 4- liste todos os address entre 2006 e 2007
select
	saleslt.*
from
	SalesLT.Address as saleslt
where
	year(saleslt.ModifiedDate) >= 2006
	and
	year(saleslt.ModifiedDate) <= 2007


---------------------------------------------------------------------------------------------------------------------
-- questao 5- liste todos os address que tenham addresLine 2
select 
	salesLT.*
from
	SalesLT.Address as salesLT
where
	salesLT.AddressLine2 is not NULL
