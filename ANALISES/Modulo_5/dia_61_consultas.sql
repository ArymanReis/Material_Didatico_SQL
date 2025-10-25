USE mercado_cafe_db;
-- A Pergunta de Negócio: "Preciso de um relatório que mostre cada venda (ID_Venda), a data (Data_Venda), o preço por saca (Preco_Por_Saca_BRL) e, ao lado, o preço por saca da venda imediatamente anterior (ordenado por data)."
SELECT
  ID_Venda,
  Data_Venda,
  Preco_Por_Saca_BRL,
  LAG(Preco_Por_Saca_BRL, 1) OVER(ORDER BY Data_Venda ASC) AS "Preço Venda Anterior"
FROM
  Vendas
ORDER BY
  Data_Venda ASC;


