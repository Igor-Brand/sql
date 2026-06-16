-- Listar todas as transações adicionando uma coluna sinalizando
-- "baixo","medio","alto" para os valores dos pontos [<10,<500,>=500]


SELECT IdTransacao,
        qtdePontos,
        CASE
            WHEN qtdePontos < 10 AND qtdePontos >0 THEN "Baixo"
            WHEN qtdePontos < 500 AND qtdePontos > 10 THEN "Médio"
            ELSE  "Alto"
        END AS FlQtdePontos

FROM transacoes

ORDER BY qtdePontos DESC