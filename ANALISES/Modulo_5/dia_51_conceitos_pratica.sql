/*O Conceito de Window Functions
O Problema que elas resolvem:

Até agora, quando usamos funções de agregação (SUM, AVG, COUNT), elas "esmagavam" várias linhas em um único resultado (com a ajuda do GROUP BY). Por exemplo, SELECT Estado, COUNT(*) FROM Fazendas GROUP BY Estado; te dava uma linha por estado com a contagem, mas você perdia a informação das fazendas individuais.

E se você quisesse ver, para cada fazenda, a sua altitude E, na mesma linha, a altitude média de todas as fazendas para poder comparar?

Ou se você quisesse ver, para cada lote de produção, o seu volume E, na mesma linha, o ranking daquele lote em relação a todos os outros?

As agregações normais não conseguem fazer isso. Elas sempre retornam um resultado para o grupo.

A Solução: Window Functions!

Window Functions também realizam cálculos sobre um conjunto de linhas (uma "janela" - window), mas com uma diferença crucial: elas não colapsam as linhas. Elas retornam o resultado do cálculo ao lado de cada linha original.

Pense nelas como uma "coluna extra inteligente" que você adiciona ao seu SELECT, capaz de "olhar" para as linhas vizinhas (ou para a tabela inteira) para fazer um cálculo, mas sem perder os detalhes da linha atual.

A Sintaxe Mágica: A Cláusula OVER()
O que define uma Window Function é a presença da cláusula OVER() logo após a função.

Exemplo Conceitual:

SQL

SELECT
    Nome_Fazenda,
    Altitude_Metros,
    AVG(Altitude_Metros) OVER() AS "Altitude Média Geral" -- Magia acontece aqui!
FROM
    Fazendas;
AVG(Altitude_Metros): A função de agregação que já conhecemos.

OVER(): Isso diz ao SQL: "Calcule esta média, mas não agrupe as linhas. Calcule sobre uma 'janela' de dados e retorne o resultado para cada linha."

Quando o OVER() está vazio (OVER()), a "janela" é a tabela inteira.

Módulo 5 / Dia 52: Diferença - Window Functions vs. GROUP BY
Este é o ponto mais importante para fixar hoje:

GROUP BY + AVG():

Agrupa as linhas (ex: por Estado).

Retorna uma linha por grupo com a média daquele grupo.

Você perde os detalhes das linhas originais.

Window Function AVG() OVER():

Não agrupa as linhas.

Retorna todas as linhas originais.

Adiciona uma nova coluna com o resultado da média (calculada sobre a "janela") repetido em cada linha.

Sua Missão para os Dias 51/52 (Conceitual e Prática Leve)
Execute o exemplo conceitual que mostrei acima no seu arquivo dia_51_consultas.sql. Observe o resultado: você verá todas as fazendas, suas altitudes individuais e, na terceira coluna, a mesma média geral repetida em todas as linhas.

SQL

SELECT
    Nome_Fazenda,
    Altitude_Metros,
    AVG(Altitude_Metros) OVER() AS "Altitude Média Geral"
FROM
    Fazendas;
Reflita: Como esse resultado é diferente do que você obteria se tentasse fazer SELECT AVG(Altitude_Metros) FROM Fazendas;? O que a Window Function te permite ver que a agregação simples não permite?*/

--Exemplo prático
USE mercado_cafe_db;

SELECT
    Nome_Fazenda,
    Altitude_Metros,
    AVG(Altitude_Metros) OVER() AS "Altitude Média Geral"
FROM
    Fazendas;

SELECT COUNT(*) AS total_fazendas FROM Fazendas;

SELECT SUM(Altitude_Metros) AS soma_altitudes FROM Fazendas;