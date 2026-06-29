-- =============================================
-- Decision Lab — Consultas com JOIN
-- Conceitos: JOIN, ON, WHERE, GROUP BY, 
--            COUNT, ORDER BY, alias
-- Data: 29/06/2026
-- Autor: Bruno Cunha
-- =============================================

-- Query 1: nome do imóvel e nome do proprietário
SELECT imoveis.nome, proprietarios.nome
FROM imoveis
JOIN proprietarios ON imoveis.proprietario_id = proprietarios.id;

-- Query 2: imóveis disponíveis com proprietário
SELECT imoveis.nome, valor, proprietarios.nome
FROM imoveis
JOIN proprietarios ON imoveis.proprietario_id = proprietarios.id
WHERE status = 'disponivel';

-- Query 3: imóveis acima de 200k com proprietário ordenados por valor
SELECT imoveis.nome, proprietarios.nome, cidade
FROM imoveis
JOIN proprietarios ON imoveis.proprietario_id = proprietarios.id
WHERE valor > 200000
ORDER BY valor DESC;

-- Query 4: total de imóveis por proprietário
SELECT proprietarios.nome, COUNT(*) imoveis
FROM imoveis
JOIN proprietarios ON imoveis.proprietario_id = proprietarios.id
GROUP BY proprietarios.nome
ORDER BY COUNT(*) DESC;
