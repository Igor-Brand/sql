-- Qual cliente juntou mais pontos em 2025-05?

SELECT IdCliente,
        SUM(qtdePontos) AS TotalPontos

FROM transacoes

WHERE DtCriacao>= "2025-05-01" 
AND DtCriacao < "2025-06-01"
AND qtdePontos >= 0

GROUP BY idCliente

ORDER BY SUM(QtdePontos) DESC

LIMIT 1