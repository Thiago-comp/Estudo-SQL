-- full outer join: pega tudo das duas tabelas, tendo ou nao em comum, se tiver em comum ele traz se não ele traz nulo 

select -- consulta para pegar todas as pessoas que tem endereco cadastrado mas nao tem gente morando usando FULL OUTER JOIN
	*
from 
	SalesLT.Address as ad
full outer join
	SalesLT.CustomerAddress as ca
on 
	ad.AddressID = ca.AddressID
where 
	ca.CustomerID is null