-- SUBCONSULTAS

select -- subconsulta é uma consulta dentro de outra consulta relacionando mais de uma tabela, seria tipo um innerJoin
	(select count(ca.AddressID) from SalesLT.CustomerAddress as ca where ca.CustomerID = cu.CustomerID ) as quantidade_de_enderecos,
	* 
from
	SalesLT.Customer as cu
where
	(select count(ca.AddressID) from SalesLT.CustomerAddress as ca where ca.CustomerID = cu.CustomerID ) > 0 -- para trazer todas as pessoas que tem pelo menos 1 endereco cadastrado
