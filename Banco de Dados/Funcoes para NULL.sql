-- APRENDENDO SOBRE O NULL 

select -- consulta para aprender sobre as funcoes de nulo
	ad.AddressID,
	ad.AddressLine1,
	ad.AddressLine2,
	isnull(ad.addressline2,'endereco 2 é nulo'), -- funcao que tem o mesmo objetivo que a 'coalesce', se tal coisa é NULL, pega o outro porém de 1 parâmetro só

	coalesce(ad.AddressLine2, ad.addressline1, 'NAO TEM ENDERECO CADASTRADO'), -- se addresLine2 for NULL, traz o addressLine1, se addressLine1 for NULL traz 'nao tem endereco...'
	-- posso passar uma lista gigante de coisas para essa funcao coalesce ir verificando se é NULL e pegando o proximo

	nullif(ad.addressline1, '#500-75 O''Connor Street') -- transforma em NULL se os argumentos da funcao forem iguais 
from
	SalesLT.Address as ad