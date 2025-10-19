USE mercado_cafe_db;

/* Preciso de uma lista de todos os lotes cujo Volume_Producao_Sacas foi maior que a média de produção de todos os lotes. */

SELECT
    ID_Lote,
    Volume_Producao_Sacas 
FROM
    Lotes_Producao
WHERE
    Volume_Producao_Sacas > (
        SELECT  
            AVG(Volume_Producao_Sacas)
        FROM
            Lotes_Producao);

-- Desafio
-- Quero ver o NOME DAS FAZENDAS que produziram lotes com volume acima da média geral, junto com o volume daquele lote.

SELECT
    f.Nome_Fazenda,
    lp.Volume_Producao_Sacas
FROM
    Lotes_Producao AS lp
INNER JOIN
    Fazendas AS f
ON
    lp.ID_Fazenda = f.ID_Fazenda
WHERE
    lp.Volume_Producao_Sacas > (
        SELECT
            AVG(Volume_Producao_Sacas)
        FROM
            Lotes_Producao
    )
ORDER BY
    lp.Volume_Producao_Sacas DESC;





