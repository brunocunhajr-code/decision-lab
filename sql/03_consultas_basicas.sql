-- =============================================
-- Decision Lab — Consultas Básicas
-- Conceitos: SELECT, WHERE, ORDER BY, 
--            GROUP BY, HAVING, AVG, COUNT
-- Data: 28/06/2026
-- Autor: Bruno Cunha
-- =============================================

-- Query 1: todos os imóveis
SELECT * FROM imoveis;

-- Query 2: apenas imóveis disponíveis
SELECT * FROM imoveis
WHERE status = 'disponivel';

-- Query 3: imóveis com valor acima de 200k
SELECT * FROM imoveis
WHERE valor > 200000;

-- Query 4: imóveis disponíveis acima de 200k
SELECT * FROM imoveis
WHERE status = 'disponivel' AND valor > 200000;

-- Query 5: ordenar do mais barato ao mais caro
SELECT * FROM imoveis
ORDER BY valor ASC;

-- Query 6: os 2 imóveis mais caros
SELECT * FROM imoveis
ORDER BY valor DESC
LIMIT 2;

-- Query 7: valor médio de todos os imóveis
SELECT AVG(valor) FROM imoveis;

-- Query 8: quantos imóveis vendidos
SELECT COUNT(*) FROM imoveis
WHERE status = 'vendido';

-- Query 9: quantidade de imóveis por status
SELECT status, COUNT(*) FROM imoveis
GROUP BY status;

-- Query 10: valor médio por cidade acima de 250k
SELECT cidade, AVG(valor)
FROM imoveis
GROUP BY cidade
HAVING AVG(valor) > 250000
ORDER BY AVG(valor) DESC;
