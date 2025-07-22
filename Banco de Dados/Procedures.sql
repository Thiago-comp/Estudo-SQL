-- PROCEDURES ARMAZENADAS, A PROCEDURE SEM PARAMETROS ESTA COMENTADA POREM ELA ESTA FUNCIONAL 

-- procedimentos armazenados utilidade: deixar comandos prontos que eu posso chamar quando eu quiser, como funcao para imprimir, inserir e etc

-- PROCEDURES SEM PARAMETROS
--create procedure proc_teste -- cláusula para criar uma procedure
-- procedure é como uma tabela, posso alterar, excluir, funciona tudo como uma tabela 
--as
--begin 
	--select top 5 * from SalesLT.Address
	--select top 10 * from SalesLT.Customer
	--select top 1 * from SalesLT.CustomerAddress
--end


--exec proc_teste -- exec = executar, boa pratica para usar com procedures

-- PROCEDURES COM PARAMETROS
create procedure proc_inserir_tb_exemplo -- cria a procedure que recebe um nome do tipo varchar 
@nome varchar(50)
as 
begin
	declare @idmax int
	set @idmax = (select max(id) from TB_EXEMPLO) 
	set @idmax += 1 -- seta idmax como sendo o máximo da coluna ID + 1
	insert into TB_EXEMPLO (ID,NOME) -- insere dentro da tabela tb_exemplo, na variavel @nome 
	values(@idmax,@nome) -- insere os valores dessas variaveis
end
exec proc_inserir_tb_exemplo 'joao' -- clausula para executar uma procedure

select *

from TB_EXEMPLO