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

-- Novas Fazendas
INSERT INTO Fazendas 
  (Nome_Fazenda, Municipio, Estado, Area_Total_Hectares, Altitude_Metros)
VALUES
  ('Fazenda Sertãozinho', 'Botelhos', 'MG', 450.00, 1150),
  ('Sítio Três Barras', 'Iúna', 'ES', 45.50, 1000),
  ('Fazenda Daterra;', 'Patrocínio', 'MG', 1800.00, 1100),
  ('Sítio Baixadão', 'Cristina', 'MG', 22.00, 1280),
  ('Fazenda Progresso', 'Mucugê', 'BA', 980.00, 1150);

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

-- Novos Lotes de Produção
INSERT INTO Lotes_Producao (ID_Fazenda, Ano_Safra, Especie_Cafe, Classificacao_Cafe, Volume_Producao_Sacas) VALUES
(6, 2024, 'Arábica', 'Gourmet', 800.00),     
(8, 2024, 'Arábica', 'Especial', 3200.00),    
(10, 2025, 'Arábica', 'Exótico', 1500.00),    
(7, 2024, 'Conilon', 'Tradicional', 350.00),  
(9, 2024, 'Arábica', 'Especial', 150.50),     
(1, 2024, 'Arábica', 'Gourmet', 450.00),      
(4, 2025, 'Arábica', 'Gourmet', 130.00);      

-- Inserindo registros na tabela Vendas
-- O ID_Lote conecta a venda ao lote de produção específico.
-- Note que podemos ter várias vendas para o mesmo lote.
INSERT INTO Vendas (ID_Lote, Data_Venda, Quantidade_Vendida_Sacas, Preco_Por_Saca_BRL, Tipo_Mercado) VALUES
(1, '2024-10-25', 150.00, 850.50, 'Externo'),    
(3, '2024-11-05', 180.50, 920.00, 'Externo'),   
(2, '2024-11-12', 100.00, 780.00, 'Interno'),    
(2, '2024-11-20', 110.00, 795.50, 'Interno'),    
(5, '2025-09-15', 280.00, 950.00, 'Externo');  

-- Novas Vendas
INSERT INTO Vendas 
  (ID_Lote, Data_Venda, Quantidade_Vendida_Sacas, Preco_Por_Saca_BRL, Tipo_Mercado)
VALUES
(7, '2024-12-01', 800.00, 910.00, 'Externo'),    
(8, '2025-01-15', 1000.00, 1100.50, 'Externo'),   
(11, '2024-11-30', 150.50, 1350.00, 'Interno'),  
(9, '2025-02-10', 300.00, 820.00, 'Interno');     

SELECT COUNT(*) AS total_fazendas FROM Fazendas;
SELECT COUNT(*) AS total_lotes FROM Lotes_Producao;
SELECT COUNT(*) AS total_vendas FROM Vendas;