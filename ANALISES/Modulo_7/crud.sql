USE mercado_cafe_db;

/* CREATE (Criar) - INSERT INTO
Para que serve: Adicionar uma ou mais linhas novas a uma tabela.*/

INSERT INTO Fazendas
 (Nome_Fazenda, Municipio, Estado, Area_Total_Hectares, Altitude_Metros)
VALUES 
  ('Fazenda Nova', 'Muzambinho', 'MG', 150.00, 1100);


/*READ (Ler) - SELECT
Para que serve: Consultar e buscar dados.*/
SELECT
  Nome_Fazenda,
  Area_Total_Hectares
FROM
  Fazendas
WHERE
  Nome_Fazenda = 'Fazenda Nova';

/*UPDATE (Atualizar) - UPDATE ... SET ... WHERE
Para que serve: Modificar dados em linhas que já existem na tabela.*/
UPDATE Lotes_Producao
SET Pontuacao_Qualidade = 93
WHERE ID_Lote = 4;

/*DELETE (Apagar) - DELETE FROM ... WHERE
Para que serve: Remover uma ou mais linhas inteiras da tabela.*/
DELETE FROM
  Fazendas
WHERE
  Nome_Fazenda = 'Fazenda Nova';