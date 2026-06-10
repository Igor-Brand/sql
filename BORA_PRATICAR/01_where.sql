
/*
-- selecionando os clientes que possuem email cadastrado
SELECT *
FROM clientes
WHERE flEmail = 1
LIMIT 10;
*/

/*
-- selecionando todas as transações de 50 pontos exatos
SELECT *
FROM transacao_produto
WHERE vlProduto = 50
LIMIT 10;
*/
/*
-- selecionando os clientes que possuem mais de 500 pontos
SELECT IdCliente,QtdePontos
FROM clientes
WHERE qtdePontos > 500
LIMIT 10;
*/

-- selecionando os produtos que possuem a palavra "churn" no nome
-- SELECT * 
-- FROM produtos
--  WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp');    
--WHERE DescNomeProduto LIKE '%churn%'; 




-- Tempo de foco
-- 1. Lista de transações com apenas 1 ponto
-- SELECT IdCliente,QtdePontos

-- FROM transacoes

-- WHERE QtdePontos = 1

-- LIMIT 10;

-- 2.Lista de pedidos realizados no fim de semana
--  SELECT IdCliente,
--      strftime('%w', datetime(substr(DtCriacao, 1, 10))) AS DiaSemana


--  FROM transacoes

--  WHERE strftime('%w', datetime(substr(DtCriacao, 1, 10))) IN ('0', '6')

-- 3. Lista de clientes com 0 pontos

-- SELECT IdCliente, QtdePontos
-- FROM clientes
-- WHERE qtdePontos = 0

--- 4. Lista de clientes com 100 a 200 pontos( Inclusive ambos)

-- SELECT IdCliente, QtdePontos
-- FROM clientes
-- WHERE QtdePontos >= 100 AND QtdePontos <= 200
-- WHERE QtdePontos BETWEEN 100 AND 200

-- 5.Lista de produtos que terminam com "lOVER" no nome
-- SELECT IdProduto, 
--     DescNomeProduto
-- FROM PRODUTOS
-- WHERE DescNomeProduto LIKE '%lOVER';

-- 6. Lista de produtos que começam com "Venda de"
-- SELECT IdProduto, 
--     DescNomeProduto
-- FROM PRODUTOS
-- WHERE DescNomeProduto LIKE 'Venda de%';

-- 7. Lista de produtos que sõa chapéu
-- SELECT IdProduto, 
--     DescNomeProduto
-- FROM PRODUTOS
-- WHERE DescNomeProduto LIKE '%chapéu%';

-- 8. Lista de transações com o produto " Resgatar ponei"

-- SELECT *
-- FROM produtos
-- WHERE DescNomeProduto LIKE '%Resgatar ponei%';
