-- A Pergunta de Negócio: "Preciso de um relatório que mostre, para cada lote de produção, o seu Volume_Producao_Sacas e, ao lado, a soma total de sacas produzidas em todos os lotes."

SELECT
    ID_Lote,
    Volume_Producao_Sacas,
    SUM(Volume_Producao_Sacas) OVER() AS "Produção Total Geral",
    -- Cálculo da porcentagem do total:
    (Volume_Producao_Sacas / SUM(Volume_Producao_Sacas) OVER()) * 100 AS "(%) do Total"
FROM
    Lotes_Producao
ORDER BY
    Volume_Producao_Sacas DESC; 
