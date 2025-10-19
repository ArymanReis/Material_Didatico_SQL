USE mercado_cafe_db;

-- Criando a coluna Pontuação de Qualidade
ALTER TABLE
    Lotes_Producao
ADD COLUMN
    Pontuacao_Qualidade INT;

-- Popular coluna
UPDATE Lotes_Producao SET Pontuacao_Qualidade = 88 WHERE ID_Lote IN (1, 5, 8, 9, 11);
UPDATE Lotes_Producao SET Pontuacao_Qualidade = 82 WHERE ID_Lote IN (3, 6, 12, 13);
UPDATE Lotes_Producao SET Pontuacao_Qualidade = 75 WHERE ID_Lote IN (2, 7);
UPDATE Lotes_Producao SET Pontuacao_Qualidade = 92 WHERE ID_Lote = 4;
UPDATE Lotes_Producao SET Pontuacao_Qualidade = 86 WHERE ID_Lote = 10;

SELECT * FROM Lotes_Producao;

-- Pontuação de qualidade dos cafés
SELECT
    ID_Lote,
    CASE
        WHEN Pontuacao_Qualidade >= 90 THEN 'Categoria A - Premiado'
        WHEN Pontuacao_Qualidade >= 85 THEN 'Categoria B - Superior'
        WHEN Pontuacao_Qualidade >= 80 THEN 'Categoria C - Bom'
        ELSE 'Categoria D - Padrão'
    END AS "Categoria de Marketing"
FROM
    Lotes_Producao
ORDER BY
    Pontuacao_Qualidade DESC;



