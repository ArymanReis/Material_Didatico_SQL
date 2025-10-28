USE mercado_cafe_db;

SELECT v.*, jt.*
FROM Vendas_JSON AS v,
  JSON_TABLE(
      v.dados_venda,           -- Coluna JSON
      '$.Itens[*]'             -- Caminho para o array (note o [*] curinga)
      COLUMNS (                -- Define as colunas da nova tabela
          ID_Lote_Item INT PATH '$.ID_Lote',
          Sacas_Item INT PATH '$.Sacas'
      )
  ) AS jt; -- Apelido para a tabela virtual criada

SELECT * FROM Vendas_JSON;