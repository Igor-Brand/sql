-- SELECT *
-- FROM clientes
-- ORDER BY QtdePontos DESC;

SELECT *

FROM clientes

WHERE flTwitch = 1

ORDER BY DtCriacao ASC, QtdePontos DESC;    