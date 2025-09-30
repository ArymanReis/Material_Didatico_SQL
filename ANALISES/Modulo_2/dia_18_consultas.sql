USE mercado_cafe_db;

-- Qual foi o volume total de sacas produzidas na safra de 2024? Preciso desse número para o nosso relatório anual.
SELECT SUM(
  Volume_Producao_Sacas
  ) AS "Produção Total (Sacas) em 2024"
FROM 
  Lotes_Producao
WHERE
  Ano_Safra = 2024;

-- Para entender nossa performance de vendas, qual foi o preço médio por saca que conseguimos em nossas vendas para o mercado 'Externo'?
SELECT AVG(
  Preco_Por_Saca_BRL
  ) AS "Preço Médio de Exportação (BRL)"
FROM
  Vendas
WHERE
  Tipo_Mercado = 'Externo';







