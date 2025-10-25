USE mercado_cafe_db;
-- A Pergunta de Negócio: "Preciso de uma lista de todos os lotes, mostrando a Pontuacao_Qualidade e uma coluna com a posição no ranking geral (1º, 2º, 3º...)."
SELECT
  ID_lote,
  Pontuacao_Qualidade,
  ROW_NUMBER() OVER(ORDER BY Pontuacao_Qualidade DESC) AS "Ranking Geral"
FROM
  Lotes_Producao;
