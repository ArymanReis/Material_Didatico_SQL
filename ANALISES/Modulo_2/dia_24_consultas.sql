USE mercado_cafe_db;

/* Desafio 
O Cenário: O gerente de vendas quer um relatório dos lotes "populares" - aqueles com mais de uma venda registrada. Para cada um desses lotes, ele precisa saber o número de vendas e o valor total vendido.
*/
SELECT 
  ID_Lote,
  COUNT(*) AS "Número de vendas",
  SUM(Quantidade_Vendida_Sacas * Preco_Por_Saca_BRL) AS "Valor total vendido (BRL)"
FROM
  Vendas
GROUP BY
  ID_Lote
HAVING
  COUNT(*) > 1;
