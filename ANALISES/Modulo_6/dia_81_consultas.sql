USE mercado_cafe_db;

SELECT
    Ano_Safra,
    Especie_Cafe,
    SUM(Volume_Producao_Sacas) AS Total_Produzido
FROM
    Lotes_Producao
GROUP BY
    Ano_Safra, Especie_Cafe WITH ROLLUP -- Sintaxe específica do MySQL
ORDER BY
    Ano_Safra, Especie_Cafe;