USE mercado_cafe_db;

SELECT
  v.id AS ID_Registro_Original,
  v.dados_venda ->> '$.Cliente.Nome' AS Nome_Cliente,
  jt.ID_Lote_Item,
  jt.Sacas_Item,
  lp.Classificacao_Cafe
FROM
  Vendas_JSON AS v,
  JSON_TABLE(
    v.dados_venda,
    '$.Itens[*]'
    COLUMNS (
      ID_Lote_Item INT PATH '$.ID_Lote',
      Sacas_Item INT PATH '$.Sacas'
    )
  ) AS jt
INNER JOIN
  Lotes_Producao AS lp
ON
  jt.ID_Lote_Item = lp.ID_Lote;
  