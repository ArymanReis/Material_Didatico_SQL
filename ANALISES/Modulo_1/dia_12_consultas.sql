USE mercado_cafe_db;

-- Pergunta 1 (IN): "Preciso de um relatório com todas as fazendas da minha região de foco de investimentos, que são os estados de Minas Gerais, Espírito Santo e Bahia."
SELECT 
  Nome_Fazenda, Estado
FROM
  Fazendas
WHERE
  Estado
IN 
  ('MG', 'ES', 'BA');

-- Pergunta 2 (BETWEEN): "Quero identificar as fazendas com a 'altitude ideal' para um certo tipo de grão, que fica entre 900 e 1200 metros."
SELECT
  Nome_Fazenda, Estado, Altitude_Metros
FROM
  Fazendas 
WHERE 
  Altitude_Metros
BETWEEN
  900 AND 1200;

-- Pergunta 3 (LIKE): "Perdi o registro de uma fazenda, mas lembro que o nome dela tinha "Primavera" em alguma parte. Preciso encontrá-la."
SELECT * FROM
  Fazendas 
WHERE
  Nome_Fazenda
LIKE
  '%Primavera%';