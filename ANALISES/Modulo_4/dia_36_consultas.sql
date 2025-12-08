USE mercado_cafe_db;

-- O Desafio de Negócio (Ajustado) O RH precisa gerar crachás e e-mails para os Compradores que virão visitar as fazendas. A regra é:
SELECT
  UPPER(Nome_Comprador) AS "Nome_Cracha",
  LOWER(Nome_Comprador) AS "Email_Sugestao",
  SUBSTRING(Pais_Origem, 1, 3) AS "Sigla_Pais",
  LENGTH(Nome_Comprador) AS "Qtd_Letras"
FROM
  Compradores;