USE mercado_cafe_db;

-- "Preciso de um relatório que mostre cada venda (ordenada por data) e, ao lado do preço, a média móvel dos preços das últimas 3 vendas (incluindo a atual)."
SELECT
  ID_Venda,
  Data_Venda,
  Preco_Por_Saca_BRL,
  AVG(Preco_Por_Saca_BRL) OVER(ORDER BY Data_Venda ASC ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
  AS "Média Móvel (3 Vendas)"
FROM
  Vendas
ORDER BY
  Data_Venda ASC;
