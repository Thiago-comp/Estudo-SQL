CREATE TABLE TB_EXEMPLO -- CRIA UMA TABELA COM O NOME DE TB_EXEMPLO E COLOCA OS CAMPOS 'ID' E 'NOME'
(
	ID BIGINT,
	NOME VARCHAR(MAX)
)
------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE TB_EXEMPLO --ALTERA A TABELA EXEMPLO E INCLUI NELA O CAMPO 'DATETIME', TODAS AS VEZES QUE FOR ALTERAR A TABELA, PRECISA CHAMAR ESSE COMANDO
ADD HORA DATETIME
------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT --SELECIONA TUDO DA TABELA TB_EXEMPLO
	*
FROM 
	TB_EXEMPLO
------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.TB_EXEMPLO --INSERE NA TABELA TB_EXEMPLO
(ID,NOME)
VALUES
(2,'NEGO')
------------------------------------------------------------------------------------------------------------------------------------------------------------
BEGIN TRANSACTION -- INICIA UMA TRANSACAO, QUE ESPERA PARA SER FINALIZADA COM EXITO, COMMIT, OU CANCELADA E TUDO RETORNAR COMO ERA ANTES DA TRANSACAO, ROLLBACK.
------------------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE -- ATUALIZA A TABELA TB_EXEMPLO PARA ALTERAR O NOME DE GORDO PARA CAUA 
	dbo.TB_EXEMPLO
SET
	NOME = 'CAUA'
WHERE
	ID = 2
------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM -- DELETA DA TABELA TB_EXEMPLO, A LINHA QUE CONTEM O NOME = 'CAUA'
	TB_EXEMPLO
WHERE 
	NOME = 'CAUA'
------------------------------------------------------------------------------------------------------------------------------------------------------------
COMMIT -- FECHA A TRANSACAO, MOSTRANDO QUE DEU TUDO CERTO, N E POSSIVEL DAR ROLLBACK APOS UMA TRANSACAO SER FECHADA
------------------------------------------------------------------------------------------------------------------------------------------------------------
ROLLBACK -- COMO SE FOSSE UM CONTROL Z, CANCELA TUDO QUE FOI EXECUTADO APOS O 'BEGIN TRANSACTION'