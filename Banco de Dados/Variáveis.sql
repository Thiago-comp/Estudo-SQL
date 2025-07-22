-- DECLARAÇÃO E UTILIZACAO DE VARIAVEIS 

declare @nome varchar(max) -- declara a variavel nome como sendo do tipo texto, caracter
declare @idade int -- declara uma variavel idade do tipo inteiro 
set @nome = 'thiago' -- seta a variavel 'nome' como 'thiago
set @idade = 10 -- seta a idade como 10
set @idade += 9 -- idade recebe idade + 9

select @nome as nome,@idade as idade -- o select deve ser executado junto com as outras instrucoes 

-- teste usando variaveis para pegar dados da tabela 
declare @nome_id_5 varchar(max)
set @nome_id_5 = (select FirstName from SalesLT.Customer where CustomerID = 5) -- seta a variavel com o primeiro nome do cliente que tem customerID = 5

select @nome_id_5

-- variaveis temporarias para armazenar tabelas, objetivo: criar uma tabela temporaria para fazer testes sem alterar a tabela original]
declare @tb_var table(pid int, pnumber varchar(max)) -- declare a tabela e passa as colunas que terao nessa tabela e seus respectivos tipos 
insert into @tb_var -- insere na tabela as colunas prd.productID, prd.productnumber da tabela de products
select prd.productID, prd.productnumber from SalesLT.[Product] as prd

update @tb_var set pid = 0 -- atualiza a variável temporária, tabela, setando os PID = 0

select * from @tb_var


