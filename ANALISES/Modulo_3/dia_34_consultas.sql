USE mercado_cafe_db;

--"Crie uma lista única com o nome e o estado de todas as minhas Fazendas e de todos os meus Compradores."
SELECT 
  Nome_Fazenda AS "Parceiros",
  Estado AS "Localização"
FROM
  Fazendas
UNION ALL
SELECT
  Nome_Comprador,
  Pais_Origem 
FROM
  Compradores;
