USE mercado_cafe_db;

-- "Preciso de um relatório simples que me mostre quais fazendas tiveram lotes de produção registrados. A lista deve conter o nome da fazenda e o ano da safra de cada lote que ela produziu."
SELECT
  f.Nome_Fazenda,
  lp.Ano_Safra
FROM
  Fazendas AS f 
INNER JOIN
  Lotes_Producao AS lp 
ON
  f.ID_Fazenda = lp.ID_Fazenda; 