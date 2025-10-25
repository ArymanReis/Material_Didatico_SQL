USE mercado_cafe_db;

-- Prática aula 66
SELECT
  ID_Venda,
  Data_Venda,
  (Quantidade_Vendida_Sacas * Preco_Por_Saca_BRL) AS "Faturamento da Venda",
  SUM(Quantidade_Vendida_Sacas * Preco_Por_Saca_BRL) OVER(ORDER BY Data_Venda ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS "Faturamento Acumulado"
FROM
  Vendas
ORDER BY
  Data_Venda ASC;