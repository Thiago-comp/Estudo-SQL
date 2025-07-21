-- VIEW, O QUE � E COMO UTILIZA

-- view � criar uma TABELA que armazenar� os dados para que eu n�o precise fazer a mesma consulta de novo, usado quando se faz a mesma consulta todos os dias 

-- cl�usula para criar uma view, cria a view da consulta que foi executada, �timo para performance 
create view qualquer nome as
select -- consulta usando inner join, para relacionar nomes de clientes com seus respectivos enderecos, criei uma view para salvar essa consulta para as pr�ximas chamadas
	cu.CustomerID, ca.AddressType, cu.FirstName,cu.LastName, ad.AddressLine1
from 
	SalesLT.Customer as cu
inner join
	SalesLT.CustomerAddress as ca
on 
	cu.CustomerID = ca.CustomerID
inner join
	SalesLT.Address as ad
on
	ca.AddressID = ad.AddressID
where
	ad.CountryRegion = 'canada'