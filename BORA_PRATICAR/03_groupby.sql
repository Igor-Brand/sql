-- Qual Cliente fez mais transações no ano de 2024?

SELECT idCliente,
        COUNT(*),
        COUNT(DISTINCT IdTransacao) 
        
FROM transacoes

-- WHERE DtCriacao>= '2024-01-1' AND 
-- DtCriacao < '2025-01-01'

WHERE strftime('%Y', substr(DtCriacao, 1, 19)) = '2024'

GROUP BY IdCliente

ORDER BY COUNT(*) DESC