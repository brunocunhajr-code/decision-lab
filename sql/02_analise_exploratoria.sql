-- ============================================
-- Decision Lab — Análise Exploratória
-- ============================================

-- Query 1: retorno medio por ativo
SELECT 
    asset_type,
    ROUND(AVG(actual_return), 3) AS retorno_medio,
    COUNT(*) AS total_decisoes
FROM decisions
GROUP BY asset_type
ORDER BY retorno_medio DESC;

-- Query 2: taxa de vitoria por ativo
SELECT 
    asset_type,
    COUNT(*) AS total,
    SUM(CASE WHEN outcome = 'win' THEN 1 ELSE 0 END) AS vitorias,
    ROUND(100.0 * SUM(CASE WHEN outcome = 'win' THEN 1 ELSE 0 END) / COUNT(*), 1) AS taxa_vitoria_pct
FROM decisions
GROUP BY asset_type
ORDER BY taxa_vitoria_pct DESC;