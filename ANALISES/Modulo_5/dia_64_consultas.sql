USE mercado_cafe_db;

-- A Pergunta de Negócio: "Preciso de um relatório que mostre cada venda (ID_Venda, Data_Venda, Preco_Por_Saca_BRL) e, ao lado, o preço da primeira venda realizada naquele mesmo ano."

SELECT
  ID_Venda,
  Data_Venda,
  Preco_Por_Saca_BRL,
  FIRST_VALUE(Preco_Por_Saca_BRL) OVER(PARTITION BY YEAR(Data_Venda) ORDER BY Data_Venda ASC)
  AS "Preço Primeira Venda do Ano"
FROM
  Vendas
ORDER BY
  Data_Venda ASC;
