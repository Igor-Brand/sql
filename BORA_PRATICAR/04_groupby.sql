-- Quantos produtos são de rpg
-- SELECT COUNT(*)

-- FROM produtos

-- WHERE DescCategoriaProduto == 'rpg'

-- ORDER BY DescCategoriaProduto

SELECT DescCategoriaProduto,
    COUNT(*)

FROM produtos

GROUP BY DescCategoriaProduto