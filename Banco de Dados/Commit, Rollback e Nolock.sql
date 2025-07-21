
begin tran -- inicio a transacao
	
	-- inserindo 1 milhao de valores
	insert into TB_EXEMPLO
	values(2,'bolinha')

rollback -- volto a transacao, volto tudo que executei depois de iniciar uma transação
commit -- termino a transação mostrando que deu tudo certo

-- a consulta espera a transação acabar para trazer o resultado, para burlar isso e nao precisar esperar o fim da transacao, utiliza o 'with (nolock)
select * 
from 
	TB_EXEMPLO with (nolock) -- nolock é para quando outro usuario tenta fazer uma consulta em uma tabela que esta com uma transacao ativa

