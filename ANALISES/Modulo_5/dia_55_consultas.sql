-- A Pergunta de Negócio: "Preciso de um relatório que mostre cada lote de produção e, ao lado do seu volume, quero ver o volume total produzido daquela mesma espécie naquele mesmo ano de safra."
SELECT
  ID_Lote,
  Ano_Safra,
  Especie_Cafe,
  Volume_Producao_Sacas,
  SUM(Volume_Producao_Sacas) OVER(PARTITION BY Ano_Safra, Especie_Cafe) AS "Produção Total (Ano/Espécie)"
FROM
  Lotes_Producao
ORDER BY
  Ano_Safra, Especie_Cafe
DESC;