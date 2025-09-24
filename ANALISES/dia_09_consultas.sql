-- Pergunta de Negócio 1 (Filtro de Texto): "Preciso fazer um levantamento de todas as minhas fazendas que ficam no estado de Minas Gerais."
SELECT 
  Municipio, Estado
FROM
  Fazendas
WHERE
  Estado = 'MG';

-- Pergunta de Negócio 2 (Filtro Numérico): "Para um estudo de cafés especiais, preciso de uma lista de todas as fazendas com altitude maior que 1200 metros."

SELECT 
  Municipio, Estado, Altitude_Metros
FROM
  Fazendas
WHERE
  Altitude_Metros > 1200;

  