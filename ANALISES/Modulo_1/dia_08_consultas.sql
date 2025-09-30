-- Pergunta de Negócio 1: Eu preciso de uma lista de contato rápido de todas as minhas propriedades.
SELECT 
  Nome_Fazenda, Municipio, Estado
FROM 
  Fazendas;

-- Pergunta de Negócio 2: Agora, para um estudo sobre o potencial de cultivo, eu quero comparar apenas o nome da fazenda com sua altitude.
SELECT 
  Nome_Fazenda, Altitude_Metros
FROM 
  Fazendas;
