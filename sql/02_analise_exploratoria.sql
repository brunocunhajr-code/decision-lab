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

-- Query 3: risco vs retorno real
SELECT 
    CASE 
        WHEN risk_level >= 0.8 THEN 'Alto Risco'
        WHEN risk_level >= 0.5 THEN 'Medio Risco'
        ELSE 'Baixo Risco'
    END AS categoria_risco,
    COUNT(*) AS total,
    ROUND(AVG(actual_return), 3) AS retorno_medio,
    ROUND(AVG(risk_level), 2) AS risco_medio
FROM decisions
GROUP BY categoria_risco
ORDER BY risco_medio DESC;
