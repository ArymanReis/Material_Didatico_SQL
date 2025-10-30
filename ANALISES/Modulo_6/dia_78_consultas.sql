USE mercado_cafe_db;

SELECT
  v.id AS ID_Registro_Original,
  v.dados_venda ->> '$.Cliente.Nome' AS Nome_Cliente,
  jt.ID_Lote_Item,
  jt.Sacas_Item
FROM
  Vendas_JSON AS v,
  JSON_TABLE(
    v.dados_venda,
    '$.Itens[*]'
    COLUMNS (
      ID_Lote_Item INT PATH '$.ID_Lote',
      Sacas_Item INT PATH '$.Sacas'
    )
  ) AS jt;