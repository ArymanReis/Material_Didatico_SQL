USE mercado_cafe_db;

-- Para cada venda que fizemos, qual foi o número de dias entre o final do ano da safra daquele lote e a data em que a venda foi efetivamente realizada?
SELECT
  v.ID_Venda,
  v.Data_Venda,
  DATEDIFF(v.Data_Venda, CONCAT(lp.Ano_Safra, '-12-31')) AS "Dias em Estoque"
FROM
  Vendas AS v
INNER JOIN
  Lotes_Producao AS lp
ON
  v.ID_Lote = lp.ID_Lote
ORDER BY
  "Dias em Estoque" DESC;

