-- LOOPS, LAÇO DE REPETIÇÃO WHILE

declare @var_int int = 0 -- variavel 'var_int' = 0

-- loop para incrementar e imprimir a variavel 'var_int' ate que a mesma chegue no valor 5
while @var_int < 5
begin
	set @var_int += 1
	print @var_int -- printa na tela

end

-- consulta para trazer todas horas do dia juntamente com os minutos  
declare @hora int = 0
declare @minuto int = 0
declare @tb_hora table(hora varchar(max))

-- loop para preencher a tabela 'hora' com todas as possiveis horas do dia 
while @hora <= 23
begin
    set @minuto = 0 -- toda vez que chega em 59, reseta para que volte a contar ate 59 de novo
    -- loop pra preencher a tabela com todos os possiveis minutos de um dia 
    while @minuto <= 59
    begin
        insert into @tb_hora -- insere na tabela os valores das variaveis, hora e minuto convertidos para string usando a funcao 'cast'
        values(
            right('0' + cast(@hora as varchar), 2) + ':' +
            right('0' + cast(@minuto as varchar), 2)
        )
        set @minuto += 1
    end
    set @hora += 1
end

select * from @tb_hora