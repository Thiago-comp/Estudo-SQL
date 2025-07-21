-- APRENDENDO SOBRE O NULL 

select -- consulta para aprender sobre as funcoes de nulo
	ad.AddressID,
	ad.AddressLine1,
	ad.AddressLine2,
	isnull(ad.addressline2,'endereco 2 � nulo'), -- funcao que tem o mesmo objetivo que a 'coalesce', se tal coisa � NULL, pega o outro por�m de 1 par�metro s�

	coalesce(ad.AddressLine2, ad.addressline1, 'NAO TEM ENDERECO CADASTRADO'), -- se addresLine2 for NULL, traz o addressLine1, se addressLine1 for NULL traz 'nao tem endereco...'
	-- posso passar uma lista gigante de coisas para essa funcao coalesce ir verificando se � NULL e pegando o proximo

	nullif(ad.addressline1, '#500-75 O''Connor Street') -- transforma em NULL se os argumentos da funcao forem iguais 
from
	SalesLT.Address as ad