USE mercado_cafe_db;

-- A Pergunta de Negócio: "Para cada fazenda, mostre o nome, a produção total dela, e me diga se essa produção está 'Acima da Média' ou 'Abaixo ou Igual à Média' geral."
WITH producao_por_fazenda AS (
  SELECT
    ID_Fazenda,
    SUM(Volume_Producao_Sacas) AS Producao_Total_Fazenda
  FROM
    Lotes_Producao
  GROUP BY
    ID_Fazenda
),
media_geral AS (
  SELECT
    AVG(Volume_Producao_Sacas) AS Media_Geral_Producao
  FROM
    Lotes_Producao
  )
SELECT
  f.Nome_Fazenda,
  ppf.Producao_Total_Fazenda,
  CASE 
    WHEN ppf.Producao_Total_Fazenda > mg.Media_Geral_Producao THEN 'Acima da média'  
    ELSE  'Abaixo ou igual à média'
  END AS "Status Performance"
FROM
  producao_por_fazenda AS ppf
INNER JOIN
  Fazendas AS f 
ON
  ppf.ID_Fazenda = f.Id_Fazenda
CROSS JOIN
  media_geral AS mg;