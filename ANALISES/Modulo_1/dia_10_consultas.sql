-- Pergunta de Negócio 1 (Ordem Alfabética): "Quero uma lista de todas as minhas fazendas, mas organizada em ordem alfabética pelo nome, para facilitar a consulta."
USE mercado_cafe_db;

SELECT * FROM Fazendas
ORDER BY 
  Nome_Fazenda 
ASC

-- Pergunta de Negócio 2 (Ranking Numérico): "Preciso de um ranking das minhas fazendas, da mais alta para a mais baixa, para um estudo de potencial."
SELECT * FROM Fazendas
ORDER BY
  Altitude_Metros 
DESC

-- 3. O Combo Raro: Apenas Arábica, ordenado pelo Volume
SELECT * FROM 
  Lotes_Producao
WHERE 
  Especie_Cafe = 'Arábica'
ORDER BY 
  Volume_Producao_Sacas
DESC;