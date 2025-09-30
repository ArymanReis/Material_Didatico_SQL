USE mercado_cafe_db;

-- "Quantas fazendas eu tenho cadastradas no total no meu sistema?"
SELECT COUNT(*) 
  AS Total_Fazendas
FROM 
  Fazendas;

-- "Dessas fazendas, quantas são especificamente do estado de Minas Gerais ('MG')?"
SELECT COUNT(*)
  AS "Fazendas em MG"
FROM
  Fazendas
WHERE
  Estado = ('MG');










