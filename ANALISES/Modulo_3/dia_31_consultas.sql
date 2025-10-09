USE mercado_cafe_db;

-- "Preciso de um relatório que liste TODAS as fazendas, ordenadas por nome. Para cada fazenda, mostre o ano da safra de seus lotes. Se uma fazenda não tiver produção, ela precisa aparecer mesmo assim na lista."
SELECT
  f.Nome_Fazenda,
  lp.Ano_Safra
FROM
  Fazendas AS f
LEFT JOIN
  Lotes_producao AS lp
ON
  f.ID_Fazenda = lp.ID_Fazenda
ORDER BY
  f.Nome_Fazenda ASC;

