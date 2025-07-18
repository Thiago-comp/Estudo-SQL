select
	*
from 
	SalesLT.Customer
----------------------------------------------------------------------------------------------------------------------------
select 
	*
from
	SalesLT.CustomerAddress
----------------------------------------------------------------------------------------------------------------------------

select -- seleciona tudo que tem na tabela à esquerda e soma com o tem em comum com a tabela da direita
	*
from
	SalesLT.Customer as cu
left join
	SalesLT.CustomerAddress as ca
on
	cu.CustomerID = ca.CustomerID

----------------------------------------------------------------------------------------------------------------------------
-- questao 1- pegar quais enderecos nao tem clientes, ou seja endereços cadastrados que não estão relacionados com nenhum cliente 
select
	ad.AddressID,
	ad.AddressLine1,
	ca.CustomerID
	--cu.FirstName,
	--cu.LastName,
	--cu.EmailAddress
from
	SalesLT.Address as ad
left join
	SalesLT.CustomerAddress as ca
on
	ad.AddressID = ca.AddressID
where
	ca.CustomerID is null