USE mercado_cafe_db;

-- "Qual é a média de produção total por fazenda?"
WITH relatorio_de_producao AS (
    SELECT
        ID_Fazenda,
        SUM(Volume_Producao_Sacas) AS volume_total_da_fazenda
    FROM
        Lotes_Producao
    GROUP BY
        ID_Fazenda
    )
SELECT
    AVG(volume_total_da_fazenda) AS "Produção média por fazenda"
FROM
    relatorio_de_producao;
