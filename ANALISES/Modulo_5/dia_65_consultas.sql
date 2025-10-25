USE mercado_cafe_db;

-- Desafio de série temporais
SELECT
  ID_Venda,
  Data_Venda,
  DATEDIFF(Data_Venda, LAG(Data_Venda, 1) OVER(ORDER BY Data_Venda ASC)) AS "Dias Desde Venda Anterior"
FROM
  Vendas
ORDER BY
  Data_Venda ASC;
