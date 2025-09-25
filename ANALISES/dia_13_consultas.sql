USE mercado_cafe_db;

-- Vamos remover o volume de produção do nosso lote de ID 6 para testar.
UPDATE Lotes_Producao 
SET Volume_Producao_Sacas = NULL 
WHERE ID_Lote = 6;

-- Pergunta de Negócio: "Preciso de dois relatórios para o controle de estoque: um com os lotes que ainda não tiveram a produção finalizada (volume não registrado) e outro com os lotes que já estão prontos (volume registrado)."
SELECT * FROM
  Lotes_Producao 
WHERE
  Volume_Producao_Sacas IS NULL;

SELECT * FROM
  Lotes_Producao
WHERE
  Volume_Producao_Sacas
IS NOT NULL;



