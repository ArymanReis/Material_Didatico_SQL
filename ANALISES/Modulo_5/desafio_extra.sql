USE mercado_cafe_db;

/* É um relatório de performance por fazenda, focado na safra de 2024. Vamos construir isso juntos, passo a passo.

Seu Objetivo: Um relatório mostrando, para cada Nome_Fazenda:

Total_Lotes_Vendidos: Quantos lotes distintos da safra 2024 foram vendidos.

Tikect_Medio_Lotes: Qual o valor médio de venda por lote (considerando o valor total de todas as vendas de cada lote) para a safra 2024. */


SELECT
  Nome_Fazenda,
  COUNT(DISTINCT lp.ID_Lote) AS Total_Lotes_Vendidos,
  SUM(v.Quantidade_Vendida_Sacas * v.Preco_Por_Saca_BRL) / COUNT (DISTINCT lp.ID_Lote) AS Ticket_Medio_Lotes
FROM
  Fazendas AS f
INNER JOIN
  Lotes_Producao AS lp
ON
  f.ID_Fazenda = lp.ID_Fazenda
INNER JOIN
  Vendas AS v
ON
  v.ID_Lote = lp.ID_Lote
WHERE
  lp.Ano_Safra = 2024
GROUP BY
  f.Nome_Fazenda
ORDER BY
  f.Nome_Fazenda;

