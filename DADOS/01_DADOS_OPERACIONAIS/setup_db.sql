--  DDL - Data Definition Language (Linguagem de Definição de Dados)

-- Criar base de dados
CREATE DATABASE IF NOT EXISTS mercado_cafe_db;
-- Selecionar o banco de dados criado
USE mercado_cafe_db;

-- Criando as tabelas
-- Tabela Fazenda
CREATE TABLE Fazendas (
  ID_Fazenda INT PRIMARY KEY AUTO_INCREMENT, 
  Nome_Fazenda VARCHAR(100) NOT NULL,
  Municipio VARCHAR(100) NOT NULL,
  Estado VARCHAR(2) NOT NULL,
  Area_Total_Hectares DECIMAL (10, 2),
  Altitude_Metros INT
);

-- Tabela Lotes produção
CREATE TABLE Lotes_producao (
  ID_Lote INT PRIMARY KEY AUTO_INCREMENT,
  ID_Fazenda INT NOT NULL,
  Ano_Safra INT NOT NULL,
  Especie_Cafe VARCHAR(100) NOT NULL,
  Classificacao_Cafe VARCHAR(100) NOT NULL,
  Volume_Producao_Sacas INT,

  -- Regra da Foreign Key completa
  CONSTRAINT FK_Lotes_Fazendas
    FOREIGN KEY (ID_Fazenda)
    REFERENCES Fazendas (ID_Fazenda)
);

-- Altera o nome da tabela
ALTER TABLE Lotes_producao RENAME TO Lotes_Producao;

-- Alterar o tipo de dado
ALTER TABLE Lotes_Producao
MODIFY COLUMN Volume_Producao_Sacas DECIMAL(10, 2);

CREATE TABLE Vendas (
  ID_Venda INT PRIMARY KEY AUTO_INCREMENT,
  ID_Lote INT NOT NULL,
  Data_Venda DATE NOT NULL,
  Quantidade_Vendida_Sacas INT NOT NULL,
  Preco_Por_Saca_BRL INT NOT NULL,
  Tipo_Mercado VARCHAR(10),

  -- Regra da Foreign Key completa
  CONSTRAINT Fk_Vendas_Lotes
    FOREIGN KEY (ID_Lote)
    REFERENCES Lotes_Producao (ID_Lote)
);

-- Apagar Tabelas
DROP TABLE Vendas;
DROP TABLE Lotes_Producao;
DROP TABLE Fazendas;

SHOW TABLES;
DESCRIBE Lotes_Producao;










