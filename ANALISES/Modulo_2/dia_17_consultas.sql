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

-- Pergunta de Negócio: "Eu sei que tenho muitas fazendas em MG, mas em quais estados diferentes eu opero?"
SELECT DISTINCT 
  Estado
FROM 
  Fazendas;

-- Conta o número de estados distintos
SELECT COUNT
  (DISTINCT Estado) AS "Total de Estados com Operações"
FROM Fazendas;









