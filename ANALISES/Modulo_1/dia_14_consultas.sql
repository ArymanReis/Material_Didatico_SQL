USE mercado_cafe_db;

-- Relatório 1 (Apelidos de Coluna): Crie uma consulta na tabela Lotes_Producao que mostre as colunas Ano_Safra, Especie_Cafe e Volume_Producao_Sacas. Renomeie os cabeçalhos para "Ano da Safra", "Espécie do Café" e "Volume (Sacas)" respectivamente.
SELECT
  Ano_Safra AS "Ano Da Safra",
  Especie_Cafe AS "Espécie do Café",
  Volume_Producao_Sacas AS "Volumes (Sacas)"
FROM
  Lotes_Producao;

-- Relatório 2 (Apelidos de Tabela): Refaça a consulta do Dia 9 que busca fazendas em Minas Gerais ('MG'), mas desta vez, dê o apelido fz para a tabela Fazendas e use esse apelido para se referir às colunas na sua cláusula SELECT (ex: SELECT fz.Nome_Fazenda, ...).
SELECT
  fs.Nome_Fazenda,
  fs.Municipio, 
  fs.Estado
FROM
  Fazendas AS fs
WHERE
  fs.Estado = 'MG';




