USE mercado_cafe_db;
-- Variação percentual do LAG()
SELECT
    ID_Venda,
    Data_Venda,
    Preco_Por_Saca_BRL,
    LAG(Preco_Por_Saca_BRL, 1) OVER(ORDER BY Data_Venda ASC) AS "Preço Venda Anterior", -- Mantendo o LAG original para clareza
    -- Cálculo da variação percentual: ((Atual - Anterior) / Anterior) * 100
    CONCAT(
      CEILING(
        (
            (Preco_Por_Saca_BRL - LAG(Preco_Por_Saca_BRL, 1) OVER(ORDER BY Data_Venda ASC)) -- (Atual - Anterior)
            / 
            NULLIF(LAG(Preco_Por_Saca_BRL, 1) OVER(ORDER BY Data_Venda ASC), 0) -- / NULLIF(Anterior, 0) para evitar divisão por zero/NULL
        ) * 100
      ), '%'
    ) AS "% Variação vs Anterior" -- * 100 e o AS no final
FROM
    Vendas
ORDER BY
    Data_Venda ASC;
