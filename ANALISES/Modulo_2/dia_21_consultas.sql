USE mercado_cafe_db;

-- Quais estados possuem mais de 2 fazendas?
SELECT
  Estado,
  COUNT(*) AS "Estados 2 fazendas ou mais"
FROM
  Fazendas 
GROUP BY
  Estado
HAVING
 COUNT(*) > 2;

