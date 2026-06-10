SELECT IdCliente,
--    QtdePontos,
--    QtdePontos + 10 AS QtdePontosPlus10,
--    QtdePontos * 2 AS QtdePontosTimes2
    DtCriacao,
    datetime(substr(DtCriacao, 1, 10)) AS DtCriacaoFormatada,
    strftime('%w', datetime(substr(DtCriacao, 1, 10))) AS DiaSemana
FROM clientes