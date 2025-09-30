USE mercado_cafe_db;

-- Pergunta 1 (MIN): "Para entender nosso piso de negociação, qual foi o menor preço por saca que já praticamos em uma venda, considerando todos os registros?"
SELECT MIN(
  Preco_Por_Saca_BRL
  ) AS "Menor Preço de Venda (BRL)"
FROM
  Vendas;

--Pergunta 2 (MAX): "E para saber nosso recorde de produção, qual foi o maior volume que já conseguimos produzir em um único lote?"
SELECT MAX(
  Volume_Producao_Sacas
) AS "Maior Volume de Lote (Sacas)"
FROM
  Lotes_Producao;







