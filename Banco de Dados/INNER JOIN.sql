-- INNER JOIN É BASICAMENTE PEGAR AS INTERSECCOES DE DUAS TABELAS
select -- essa consulta significa: selecionar todas as linhas da tabela address juntando tudo que pertence as duas tabelas, onde ad.addressID = ca.addressID 
	*
from
	SalesLT.Address as ad
inner join
	SalesLT.CustomerAddress as ca
on
	ad.AddressID = ca.AddressID
---------------------------------------------------------------------------------------------------------------------------------------------
select -- junta as tres tabelas colocando tudo, onde o ID = ID da outra e o CostumerID = CostumerIDD da outra, fazendo isso eu pego o nome da pessoa, o endereco e onde ela trabalha
	ca.AddressID,
	ad.AddressLine1,
	ad.City,
	ca.CustomerID,
	cu.FirstName,
	cu.LastName,
	cu.CompanyName
from 
	SalesLT.CustomerAddress as ca
inner join
	SalesLT.Customer as cu
on
	ca.CustomerID = cu.CustomerID
inner join 
	SalesLT.Address as ad
on
	ca.AddressID = ad.AddressID
where -- where é executado após todos os joins, e assim eu pego o nome, o emprego da pessoa que mora no endereco 11
	ad.AddressID = 11

---------------------------------------------------------------------------------------------------------------------------------------------
-- questao 1- exiba os dados da SalesOrderDatails com o nome do produto de cada venda
select 
	sod.*,
	prd.Name
from 
	SalesLT.SalesOrderDetail as sod
inner join
	SalesLT.Product as prd
on
	sod.ProductID = prd.ProductID


select *
from
	SalesLT.Customer

----------------------------------------------------------------------------------------------------------------------------------------------
select
	cu.Phone
from
	SalesLT.Customer as cu
order by phone