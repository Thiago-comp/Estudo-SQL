-- FUNCOES, PROCEDIMENTO COM O OBJETIVO DE RETORNAR ALGO

--create function FN_soma(@num1 int, @num2 int) -- cria uma funcao que recebe como parametro 2 valores, e retorna o resultado da soma desses valores
--returns int
--as 
--begin -- corpo da funcao fica entre 'begin' e 'end'
--	declare @resultado int
--	set @resultado = @num1 + @num2
--	return @resultado -- retorna para funcao 
--end

create function fn_lista(@x int, @y int) -- cria uma funcao que retorna uma tabela que vai do primeiro valor fornecido no parametro ate o ultimo
returns @lista table (valores int) -- posso definir a variavel lista dentro da propria definicao da funcao
as 
begin
	while @x <= @y
	begin
		insert into @lista(valores) values (@x) -- insere na coluna valores da tabela 'lista', todos os valores da variavel 'x'
		set @x += 1
	end
	return
end
