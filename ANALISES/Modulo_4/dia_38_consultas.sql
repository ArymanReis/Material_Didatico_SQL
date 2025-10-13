USE mercado_cafe_db;

-- "Preciso de um relatório que, para cada venda, me mostre a data completa, o ano e o mês em que ela ocorreu, em colunas separadas. Isso vai ser a base para nossa análise de sazonalidade."

SELECT
  Data_Venda,
  MONTH(Data_Venda) AS "Mês",
  YEAR(Data_Venda) AS "Ano"
FROM
  Vendas
ORDER BY 
  Data_Venda ASC;

-- Desafio
SELECT
  YEAR(Data_Venda) AS "Ano",
  MONTH(Data_Venda) AS "Mês",
  SUM(Quantidade_Vendida_Sacas * Preco_Por_Saca_BRL) AS "Faturamento Total"
FROM
  Vendas
GROUP BY
  YEAR(Data_Venda), MONTH(Data_Venda)
ORDER BY
  Ano, Mês;
