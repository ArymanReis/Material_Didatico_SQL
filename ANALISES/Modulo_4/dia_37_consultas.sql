USE mercado_cafe_db;

/* Gerando Etiquetas: Limpeza, Correção e Formatação */
SELECT
  UPPER(
    CONCAT(
      TRIM(Especie_Cafe),
      ' - ',
      TRIM(REPLACE(Classificacao_Cafe, 'Spcial', 'Especial')),
      ' (', Ano_Safra, ')'
    ) 
  ) AS "Etiqueta_Marketing"
FROM
  Lotes_Producao;
