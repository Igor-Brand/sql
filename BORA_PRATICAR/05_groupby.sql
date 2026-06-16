-- Qual o valor médio de pontos?

-- SELECT SUM(QtdePontos) AS TotalPontos,
--     COUNT(DISTINCT substr(DtCriacao, 1, 10)) AS qtDiasUnicos,
--     SUM(QtdePontos)/ COUNT(DISTINCT substr(DtCriacao, 1, 10)) AS AvgPontosDia

-- FROM transacoes

-- WHERE QtdePontos > 0

SELECT SUBSTR(DtCriacao,1,10) AS DtDia,
    AVG(QtdePontos) AS AvgPontosDia

FROM transacoes

WHERE QtdePontos >0

GROUP BY 1