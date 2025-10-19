USE mercado_cafe_db;

-- "Qual foi o faturamento total que tivemos POR ANO?"
WITH relatorio_vendas AS (
  SELECT
    YEAR(Data_Venda) AS Ano_Venda,
    (Quantidade_Vendida_Sacas * Preco_Por_Saca_BRL) AS Faturamento_Venda
  FROM
    Vendas
  ),
  faturamento_por_ano AS (
    SELECT
      Ano_Venda,
      SUM(Faturamento_Venda) AS Faturamento_Total_Anual
    FROM
      relatorio_vendas
    GROUP BY
      Ano_Venda
  )
SELECT * FROM
  faturamento_por_ano
ORDER BY
  Ano_Venda;
