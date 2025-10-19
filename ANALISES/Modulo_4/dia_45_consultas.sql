USE mercado_cafe_db;

-- O dono da fazenda quer entender o "desempenho médio" de uma propriedade. Ele não quer saber a média por lote, mas sim a média por fazenda.
SELECT
    AVG(volume_Total_da_fazenda) AS "Produção média por fazenda"
FROM (
    SELECT
        ID_Fazenda,
        SUM(Volume_Producao_Sacas) AS volume_total_da_fazenda
    FROM
        Lotes_Producao
    GROUP BY
        ID_Fazenda
    ) AS relatorio_de_producao;
