-- A Pergunta de Negócio: "Preciso classificar todos os lotes de produção em quartis (4 grupos) com base no Volume_Producao_Sacas. Quero ver o ID_Lote, o volume e a qual quartil (1, 2, 3 ou 4) ele pertence, sendo o Quartil 1 o dos lotes menos produtivos e o Quartil 4 o dos mais produtivos."

SELECT
  ID_Lote,
  Volume_Producao_Sacas,
  NTILE(4) OVER(ORDER BY Volume_Producao_Sacas ASC) AS "Quartil de Produção"
FROM
  Lotes_Producao
ORDER BY
  Volume_Producao_Sacas DESC;


