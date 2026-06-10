/*
Intervalos
de 0 a 500 -> ponei
de 501 a 1000 -> ponei premium
de 1001 a 5000 -> mago aprendiz
de 5001 a 10000 -> mago mestre
+ de 10000 -> mago supremo
*/

SELECT idCliente,
    qtdePontos,
    CASE
        WHEN qtdePontos >= 0 AND qtdePontos <= 500 THEN 'ponei'
        WHEN qtdePontos >= 501 AND qtdePontos <= 1000 THEN 'ponei premium'
        WHEN qtdePontos >= 1001 AND qtdePontos <= 5000 THEN 'mago aprendiz'
        WHEN qtdePontos >= 5001 AND qtdePontos <= 10000 THEN 'mago mestre'
        ELSE 'mago supremo'
    END AS NomeGrupo    
FROM clientes

ORDER BY qtdePontos DESC;