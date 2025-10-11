USE mercado_cafe_db;

-- Cenário: O time de marketing precisa de uma lista de "tags" ou "etiquetas" para cada lote de produção, para usar em campanhas. A etiqueta precisa ser um texto único, padronizado, todo em maiúsculas e no formato ESPECIE - CLASSIFICACAO (ANO). Além disso, foi detectado que em alguns lotes, a classificação "Especial" foi inserida com o erro de digitação "Spcial".

SELECT
  UPPER(
    CONCAT(
      Especie_Cafe,
      ' - ',
      REPLACE(Classificacao_Cafe, 'Spcial', 'Especial'),
      ' (', Ano_Safra, ')'
    ) 
  ) AS "Etiqueta de Marketing"
FROM
  Lotes_Producao;
