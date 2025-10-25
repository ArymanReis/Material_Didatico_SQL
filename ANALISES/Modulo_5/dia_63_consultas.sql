USE mercado_cafe_db;

-- A Pergunta de Negócio: "Preciso de um relatório que mostre cada venda (ID_Venda), a data (Data_Venda) e, ao lado, a data da venda imediatamente seguinte."
SELECT
  ID_Venda,
  Data_Venda,
  LEAD(Data_Venda, 1) OVER(ORDER BY Data_Venda ASC) AS "Data Venda Seguinte"
FROM
  Vendas
ORDER BY
  Data_Venda ASC;

