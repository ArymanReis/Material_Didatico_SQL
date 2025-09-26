USE mercado_cafe_db;

-- REVISÃO!!
SELECT
  lp.ID_Lote AS "ID do Lote",
  lp.Classificacao_Cafe AS "Classificação",
  lp.Volume_Producao_Sacas AS "Volume Produzido (Sacas)",
  lp.Ano_Safra
FROM
  Lotes_Producao AS lp
WHERE
  lp.Especie_Cafe = 'Arábica'
  AND lp.Classificacao_Cafe IN ('Especial', 'Gourmet')
  AND lp.Ano_Safra = 2024
ORDER BY
  lp.Volume_Producao_Sacas DESC;






