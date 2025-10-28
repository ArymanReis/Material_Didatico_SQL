USE mercado_cafe_db;

SELECT
  dados_venda ->> '$.Itens[0].ID_Lote' AS Numero_Lotes
FROM
  Vendas_JSON;

SELECT
  dados_venda ->> '$.Itens[1].Sacas' AS Numero_Sacas
FROM
  Vendas_JSON;

