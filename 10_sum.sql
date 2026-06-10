SELECT 
    SUM(qtdePontos),

    SUM(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
        END) AS qTdePontosPositivos,
    
    SUM(CASE
            WHEN QtdePontos < 0 THEN qtdePontos
        END) AS qTdePontosNegativos
        
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
    AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos