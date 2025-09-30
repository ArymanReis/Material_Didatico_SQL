USE mercado_cafe_db;

-- Pergunta de Negócio 1 (AND): "Preciso identificar minhas fazendas de alto potencial para cafés especiais. Para mim, isso significa as que estão em Minas Gerais ('MG') E têm altitude acima de 1150 metros."
SELECT * FROM
  Fazendas
WHERE
  Estado = 'MG'
AND
  Altitude_Metros > 1150;

-- Pergunta de Negócio 2 (OR): "Estou planejando uma viagem logística para visitar as fazendas do Sudeste. Preciso de uma lista de todas as propriedades que ficam no Espírito Santo ('ES') OU em São Paulo ('SP')."
SELECT * FROM
  Fazendas
WHERE
  Estado = 'ES' OR 'SP';