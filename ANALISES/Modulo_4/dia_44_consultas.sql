USE mercado_cafe_db;

/* Para cada lote, mostre seu volume de produção e, ao lado, mostre a média de produção geral para que eu possa comparar. */
SELECT
    ID_Lote,
    Volume_Producao_Sacas,
    (SELECT
        AVG(Volume_Producao_Sacas)
    FROM
        Lotes_Producao
    ) AS "Média Geral"
FROM
    Lotes_Producao;

-- Subconsulta no FROM (Tabela Derivada)
SELECT
    AVG(faturamento_da_venda) AS "Faturamento Médio Por Venda"
FROM (
    SELECT
        Quantidade_Vendida_Sacas * Preco_Por_Saca_BRL AS faturamento_da_venda
    FROM
        Vendas
    ) AS relatorio_de_faturamento;
