-- DML - Data Manipulation Language (Linguagem de Manipulação de Dados)

USE mercado_cafe_db;

-- Inserindo os primeiros registros na tabela Fazendas
INSERT INTO Fazendas 
  ( Nome_Fazenda, Municipio, Estado, Area_Total_Hectares, Altitude_Metros )
VALUES
  ('Fazenda Monte Alegre', 'Alfenas', 'MG', 1250.50, 1100),
  ('Sítio da Torre', 'Venda Nova do Imigrante', 'ES', 85.00, 950),
  ('Chácara Santo Antônio', 'Caconde', 'SP', 120.75, 1250),
  ('Fazenda Primavera', 'Piatã', 'BA', 550.00, 1300),
  ('Fazenda Santa Inês', 'Carmo de Minas', 'MG', 215.00, 1200);

-- Inserindo registros na tabela Lotes_Producao
-- Note como usamos o ID_Fazenda para ligar cada lote à sua fazenda correspondente.
INSERT INTO Lotes_Producao 
  (ID_Fazenda, Ano_Safra, Especie_Cafe, Classificacao_Cafe, Volume_Producao_Sacas)
VALUES
  (1, 2024, 'Arábica', 'Especial', 350.75),  
  (2, 2024, 'Conilon', 'Tradicional', 210.00), 
  (5, 2025, 'Arábica', 'Especial', 280.00),    
  (3, 2024, 'Arábica', 'Gourmet', 180.50),    
  (4, 2024, 'Arábica', 'Exótico', 120.25),   
  (1, 2025, 'Arábica', 'Gourmet', 410.00);

-- Inserindo registros na tabela Vendas
-- O ID_Lote conecta a venda ao lote de produção específico.
-- Note que podemos ter várias vendas para o mesmo lote.
INSERT INTO Vendas (ID_Lote, Data_Venda, Quantidade_Vendida_Sacas, Preco_Por_Saca_BRL, Tipo_Mercado) VALUES
(1, '2024-10-25', 150.00, 850.50, 'Externo'),    
(3, '2024-11-05', 180.50, 920.00, 'Externo'),   
(2, '2024-11-12', 100.00, 780.00, 'Interno'),    
(2, '2024-11-20', 110.00, 795.50, 'Interno'),    
(5, '2025-09-15', 280.00, 950.00, 'Externo');   

SELECT * FROM Vendas;
