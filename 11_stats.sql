SELECT
    ROUND(AVG(qtdePontos),2) AS mediaCarteira,
    1. * sum(qtdePontos) / COUNT(idCliente) mediaCarteiraRoots,
    MIN(QtdePontos) AS minCarteira,
    MAX(QtdePontos) AS maxCarteiraQ,
    SUM(flTwitch),
    SUM(flEmail)
    
FROM clientes