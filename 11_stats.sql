SELECT
    ROUND(AVG(qtdePontos),2) AS mediaCarteira,
    1. * sum(qtdePontos) / COUNT(idCliente),
    MIN(QtdePontos) AS minCarteira,
    MAX(QtdePontos) AS maxCarteira,
    
FROM clientes