--Cenário: O gerente de qualidade quer comparar a pontuação de cada lote com a média de pontuação apenas dos lotes da mesma classificação que ele. Ele quer saber se um lote "Especial" está acima ou abaixo da média dos outros lotes "Especial".
SELECT
  ID_Lote,
  Classificacao_Cafe,
  Pontuacao_Qualidade,
  AVG(Pontuacao_Qualidade) OVER(PARTITION BY Classificacao_Cafe) AS "Média da Classificação"
FROM
  Lotes_Producao
ORDER BY
  Classificacao_Cafe, Pontuacao_Qualidade
DESC;
