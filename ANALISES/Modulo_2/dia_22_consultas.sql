USE mercado_cafe_db;

/* Desafio 
Considerando apenas os lotes de café Arábica da safra de 2024, quais fazendas tiveram mais de um lote de produção registrado nesse período?
*/
SELECT
  lp.ID_Fazenda,
  COUNT(*) AS "Total de lotes"
FROM
  Lotes_Producao AS lp 
WHERE
  lp.Especie_Cafe = 'Arábica' AND Ano_Safra = 2024
GROUP BY
  lp.ID_Fazenda
HAVING
  COUNT(*) > 1;
