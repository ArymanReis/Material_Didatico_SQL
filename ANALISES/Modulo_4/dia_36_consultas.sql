USE mercado_cafe_db;

-- A Pergunta de Negócio: "Preciso de uma lista de todos os nossos compradores para um crachá de evento. O nome do comprador e o país devem estar padronizados em letras maiúsculas. Por curiosidade, inclua também o número de letras no nome do país."
SELECT
  UPPER(Nome_Comprador) AS "Comprador",
  UPPER(Pais_Origem) AS "País",
  LENGTH(Pais_Origem)
FROM
  Compradores;
