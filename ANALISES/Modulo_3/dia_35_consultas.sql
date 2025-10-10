USE mercado_cafe_db;

/* Desafio
"Qual foi o valor total vendido POR FAZENDA?"
*/
SELECT 
  f.Nome_Fazenda,
  SUM(v.Quantidade_Vendida_Sacas * v.Preco_Por_Saca_BRL) AS "Valor Total Vendido"
FROM
  Vendas AS v
INNER JOIN
  Lotes_Producao AS lp
ON
  v.ID_Lote = lp.ID_Lote
INNER JOIN
  Fazendas AS f
ON
  lp.ID_Fazenda = f.ID_Fazenda
GROUP BY
 f.Nome_Fazenda
ORDER BY 
  "Valor Total Vendido"
DESC;


