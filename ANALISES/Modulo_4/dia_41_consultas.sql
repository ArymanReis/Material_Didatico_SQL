USE mercado_cafe_db;

/* Cenário: O dono da fazenda quer simplificar o relatório de produção. Em vez de olhar para o número exato de sacas de cada lote, ele quer uma classificação de "porte" para cada um, para ter uma visão rápida.

A Regra de Negócio para a Classificação:

Se o Volume_Producao_Sacas for maior que 500, o lote é de "Grande Porte".

Se o Volume_Producao_Sacas estiver entre 200 e 500 (inclusive), o lote é de "Médio Porte".

Caso contrário (se for menor que 200), o lote é de "Pequeno Porte". */

SELECT
    ID_Lote,
    Volume_Producao_Sacas,
    CASE
        WHEN Volume_Producao_Sacas > 500 THEN 'Grande Porte'
        WHEN Volume_Producao_Sacas >= 200 THEN 'Médio Porte'
        ELSE 'Pequeno Porte'
    END AS "Porte"
FROM
    Lotes_Producao; 

/* O gerente de qualidade sabe que a altitude da fazenda tem um impacto direto no tipo e na qualidade do café. Ele quer criar um relatório que categorize todas as fazendas em "faixas de altitude" para direcionar os investimentos em novos tipos de grãos.

A Regra de Negócio para a Classificação:

Se a Altitude_Metros for maior que 1250, a fazenda tem "Altitude Extrema (Potencial Exótico)".

Se a Altitude_Metros estiver entre 1100 e 1250 (inclusive), a fazenda tem "Altitude Elevada (Potencial Especial)".

Caso contrário (se for menor que 1100), a fazenda tem "Altitude Padrão". */

SELECT
    Nome_Fazenda,
    Altitude_Metros,
    CASE
        WHEN Altitude_Metros > 1250 THEN 'Altitude Extrema (Potencial Exótico)'
        WHEN Altitude_Metros >= 1100 THEN 'Altitude Extrema (Potencial Especial)'
        ELSE 'Altitude Padrão'
    END AS "Faixa de Altitude"
FROM
    Fazendas
ORDER BY
    Altitude_Metros DESC;

