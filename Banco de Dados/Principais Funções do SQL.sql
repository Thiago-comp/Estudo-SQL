-- PINCIPAIS FUNCOES BASICAS DO SQL

--	FUNCOES DE TEXTO, upper = tornar maiusculo 
select
	ad.City,UPPER(ad.city),
	right(ad.city,2), -- PEGA OS 2 ULTIMOS CARACTERES DA CIDADE 
	REPLACE(ad.addressline1,'lake','bundao'), -- TROCA A PALAVRA 'LAKE' DENTRO DE ADDRESSLINE1 POR 'BUNDAO'
	TRIM(STR(12.948,6,3)), -- CONVERTE O NUMERO 12.948 PARA STRING,CARACTER, E COM A FUNCAO 'TRIM' RETIRA ESPACOES EM BRANCO ANTES E DEPOIS DA PALAVRA
	PATINDEX('%South%', ad.addressline1), -- acha a posicao do argumento que vou passar, no caso acha o indice de south dentro de addressLine1
	LEN('ABC'), -- retorna o tamanho da string que esta ali dentro
	FORMAT(123456789,'# ####-####') -- converte no fomato que eu especificar
from 
	SalesLT.Address as ad

select *
from
	SalesLT.Address