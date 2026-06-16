-- Quantos clientes tem email cadastrado?
-- SELECT  SUM(flEmail) AS quantidadeEmails

-- FROM clientes

SELECT COUNT(*) AS quantidadeEmails

FROM clientes
 
WHERE flEmail =1;