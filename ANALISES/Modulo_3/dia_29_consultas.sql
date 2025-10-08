USE mercado_cafe_db;

-- Para cada venda, qual o nome da fazenda, a classificação do lote e o preço da venda?
SELECT
  f.Nome_Fazenda,
  lp.Classificacao_Cafe,
  v.Preco_Por_Saca_BRL
FROM
  Vendas AS v 
INNER JOIN
  Lotes_Producao AS lp  
ON
  v.ID_Lote = lp.ID_Lote
INNER JOIN
  Fazendas AS f
ON
  lp.ID_Fazenda = f.ID_Fazenda;