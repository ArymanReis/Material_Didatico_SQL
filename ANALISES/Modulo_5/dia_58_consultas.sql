-- A Pergunta de Negócio: "Preciso de um relatório que mostre, para cada Classificacao_Cafe, os dois lotes com a maior Pontuacao_Qualidade dentro daquela classificação."

-- Desafio
WITH ranking_lotes_por_classificacao AS (
  SELECT
    ID_Lote,
    Classificacao_Cafe,
    Pontuacao_Qualidade,
    ROW_NUMBER() OVER(PARTITION BY Classificacao_Cafe ORDER BY Pontuacao_Qualidade DESC)
    AS "Ranking_na_Classificacao"
  FROM 
    Lotes_Producao
)
SELECT
  ID_Lote,
  Classificacao_Cafe,
  Pontuacao_Qualidade,
  Ranking_na_Classificacao
FROM
  ranking_lotes_por_classificacao
WHERE
  Ranking_na_Classificacao <= 2
ORDER BY
  Classificacao_Cafe, Ranking_na_Classificacao ASC;

