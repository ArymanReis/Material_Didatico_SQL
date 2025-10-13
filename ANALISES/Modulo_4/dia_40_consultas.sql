USE mercado_cafe_db;

-- Primeiro, vamos criar essa tabela "suja" no nosso banco de dados.
CREATE TABLE dados_conab_brutos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(50),
    regiao_produtora VARCHAR(50),
    data_safra VARCHAR(20),
    volume_em_toneladas VARCHAR(20) -- Armazenado como texto para simular dados ruins!
);

-- Inserir os Dados Sujos:
INSERT INTO dados_conab_brutos (produto, regiao_produtora, data_safra, volume_em_toneladas) VALUES
('  café arábica ', '  MG', 'safra 2024', '1500.75'),
('Cafe Conilon', 'es', 'safra-2024', '850.5'),
('cafe arabica', 'Bahia', 'ano:2024', '450'),
('Café arábica', ' SP ', '2025', '600.20'),
('cafe conilon', 'RO', 'ano-2025', '1200');


-- Desafio
SELECT
    UPPER(TRIM(produto)) AS "Produto Padronizado",
    UPPER(LEFT(TRIM(regiao_produtora), 2)) AS "Região (UF)",
    RIGHT(data_safra, 4) AS "Ano da Safra",
    (volume_em_toneladas * 1000) / 60 AS "Volume (Sacas de 60kg)"
FROM
    dados_conab_brutos;

SELECT * FROM dados_conab_brutos;




