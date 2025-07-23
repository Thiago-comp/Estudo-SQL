-- CTE- COMMON TABLE EXPRESSIONS, COMO SE FOSSE UMA TABELA TEMPORARIA

with tb_exemplo(coluna1, coluna2) -- cria uma expressao tb_exemplo, parametro nao é obrigatorio
as 
( -- dentro dos parenteses coloca o que a expressao deve retornar
	select top 10 [productID],[name] from [SalesLT].[product]
)

select * from tb_exemplo -- depois de criar a expressao ja posso utiliza-la em seguida


-- CTE recursiva para pegar todas as datas do ano
with tabela_data -- parametro nao é obrigatorio
as
(
	select cast('2025-01-01' as date) as dias
	union all -- une duas coisas, nesse caso 2 selects, para fazer a recursao, que vai unir as incrementacoes de um select no resultado do outro select
	select dateadd(day,1,dias) from tabela_data -- select que chama a propria funcao, incrementando 1 no dia
	where dias < '2026-01-01'
)

select * from tabela_data
option(maxrecursion 365) -- USADO QUANDO PRECISA DE UMA RECURSAO MAIOR QUE 100 VEZES