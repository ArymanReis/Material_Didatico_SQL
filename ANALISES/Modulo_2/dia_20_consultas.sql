USE mercado_cafe_db;

-- "Quantas fazendas eu tenho POR ESTADO?"
SELECT 
  Estado,
COUNT(*) AS "Fazendas Por Estados"
FROM 
  Fazendas
GROUP BY
  Estado;

