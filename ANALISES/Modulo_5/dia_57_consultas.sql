-- A Pergunta de Negócio: "Preciso do ranking de lotes por pontuação, mas desta vez quero ver a posição usando tanto o RANK (com pulos) quanto o DENSE_RANK (contínuo), para entender as duas formas de classificar."

-- RANK()
SELECT
  ID_Lote,
  Pontuacao_Qualidade,
  ROW_NUMBER() OVER(ORDER BY Pontuacao_Qualidade DESC) AS "Row Number",
  RANK()       OVER(ORDER BY Pontuacao_Qualidade DESC) AS "Rank (Com Pulos)",
  DENSE_RANK() OVER(ORDER BY Pontuacao_Qualidade DESC) AS "Dense Rank (Contínuo)"
FROM
  Lotes_Producao;
ORDER BY
  Pontuacao_Qualidade DESC;


