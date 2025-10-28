USE mercado_cafe_db;

CREATE TABLE IF NOT EXISTS Vendas_JSON (
  id INT AUTO_INCREMENT PRIMARY KEY,
  dados_venda JSON
);

-- Insira APENAS SE a tabela estiver vazia (SELECT * FROM Vendas_JSON;)
INSERT INTO Vendas_JSON (dados_venda) VALUES (
  '{
  "ID_Venda": 101,
  "Data": "2025-10-28",
  "Cliente": {
    "Nome": "Café & Companhia",
    "Tipo": "PJ",
    "Contato": {
      "Email": "contato@cafeecia.com.br",
      "Telefone": "11-99999-8888"
    }
  },
  "Itens": [
    { "ID_Lote": 7, "Sacas": 50 },
    { "ID_Lote": 8, "Sacas": 100 }
  ],
  "Status": "Entregue"
}'
);

SELECT
  dados_venda ->> '$.Status' AS Status_Venda
FROM
  Vendas_JSON;
  
SELECT
  dados_venda ->> '$.Cliente.Nome' AS Nome_Cliente
FROM
  Vendas_JSON;

SELECT
  dados_venda ->> '$.Cliente.Contato.Email' AS Email_Contato
FROM
  Vendas_JSON;