# sql

## Dia 04 - SELECT
### 1. O Comando SELECT Básico (Sem Tabela)
O primeiro código ensinado é o **`SELECT 'Olá mundo'`**.
*   **O que faz:** Funciona como um comando de "print", pedindo para o banco de dados retornar o texto que está entre aspas simples.
*   **Conceito Importante:** O `SELECT` não precisa obrigatoriamente de uma tabela para funcionar; ele pode ser usado para retornar valores estáticos ou realizar cálculos.

### 2. Operações Matemáticas
Códigos como **`SELECT 1 + 1`** ou **`SELECT 1 + 1 * 10`** também foram apresentados.
*   **O que faz:** O motor do banco de dados processa a conta matemática e retorna o resultado (ex: 2 ou 11).
*   **Resultado:** No cabeçalho da tabela de resultados, o SQL exibe a expressão utilizada, e logo abaixo, o valor final calculado.

### 3. Consultando Tabelas com SELECT e FROM
Para buscar dados reais, utiliza-se a estrutura **`SELECT * FROM clientes`**.
*   **`SELECT *`**: O asterisco é lido como "tudo". Ele instrui o banco a selecionar **todas as colunas** disponíveis.
*   **`FROM clientes`**: Indica de qual tabela os dados devem ser retirados. O VS Code consegue identificar as tabelas (como a de `clientes`) que existem dentro do arquivo `database.db`.

### 4. Seleção de Colunas Específicas
Em vez de usar o asterisco, o instrutor demonstra que você pode listar os nomes das colunas.
*   **Exemplo:** Embora o código exato varie, o conceito é substituir o `*` pelos nomes das colunas desejadas separadas por vírgula para manter a consulta organizada e evitar o carregamento de dados desnecessários.

### 5. Controle de Performance com LIMIT
Um comando essencial mencionado para o final da query é o **`LIMIT`**.
*   **O que faz:** Restringe a quantidade de linhas retornadas (ex: `LIMIT 10` traria apenas os primeiros 10 registros).
*   **Por que usar:** É uma boa prática para evitar "espancar" o banco de dados, ou seja, impedir que o sistema tente carregar milhões de linhas na memória de uma só vez, o que poderia causar travamentos.

### Resumo da Execução no VS Code
Para que esses códigos funcionem, a aula ensina a seguinte sequência técnica:
1.  Criar um arquivo com a extensão **`.sql`**.
2.  Digitar o código desejado (preferencialmente com as palavras-chave em letras maiúsculas).
3.  Utilizar o atalho **Ctrl + Shift + Q** e selecionar o banco de dados **`database.db`** para visualizar o resultado no painel lateral.

---
## dia 07 -FROM
No **Dia 07**, o conteúdo da aula avançou para a exploração de novas tabelas dentro do banco de dados, a organização do código através de comentários e o reforço da sintaxe correta das queries.

Abaixo, detalho os principais pontos e os códigos apresentados:

### 1. Identificando as Tabelas do Banco
Antes de consultar os dados, é necessário saber quais tabelas existem no banco. Para isso, foi apresentado um comando específico do **SQLite**:
*   **Código:** `.tables`.
*   **Explicação:** Ao executar este comando, o VS Code retorna a lista de todas as tabelas disponíveis (como `clientes`, `produtos`, `transacoes`, etc.). 
*   **Dica:** O instrutor menciona que em outros bancos, como MySQL ou PostgreSQL, o comando equivalente costuma ser `SHOW TABLES`.

### 2. Consultando Diferentes Tabelas
A aula demonstra que a estrutura do `SELECT` permanece a mesma, alterando-se apenas o alvo na cláusula `FROM`:
*   **Código:** `SELECT * FROM produtos`.
*   **Explicação:** Este comando seleciona todas as colunas da tabela de produtos. O conceito principal é que, para mudar o conjunto de dados visualizado, basta substituir o nome da tabela após o `FROM` (ex: de `clientes` para `produtos` ou `transacoes`).

### 3. Uso de Comentários no SQL
Foi ensinado como inserir anotações que o motor do banco de dados ignora, servindo apenas para documentação ou lembretes para o programador:
*   **Comentário de uma linha:** Utiliza-se dois traços (`--`). Tudo o que vier depois dos traços naquela linha não será executado.
*   **Comentário de múltiplas linhas:** Utiliza-se a barra seguida de asterisco (`/*`) para abrir e o asterisco seguido de barra (`*/`) para fechar.

### 4. A Regra de Ouro do LIMIT
O instrutor reforçou uma regra de sintaxe crucial para a performance e organização:
*   **Posicionamento:** O comando **`LIMIT` deve ser sempre a última coisa na query**.
*   **Função:** Enquanto o `SELECT` escolhe quais **colunas** você quer ver, o `LIMIT` escolhe a quantidade de **linhas** que serão retornadas.

### 5. Execução e Analogia do "Acelerador"
Para reforçar o aprendizado, foi feita uma analogia sobre a execução do código no VS Code:
*   Escrever o código é como estar em um carro; para ele se mover, você precisa de uma ação ativa: **pisar no acelerador**.
*   No ambiente de aula, esse "acelerar" é o atalho **Ctrl + Shift + Q**, que dispara o comando para o motor do banco de dados processar a informação.

Em resumo, o Dia 07 consolidou a habilidade de navegar por diferentes tabelas do banco, manter o código documentado com comentários e respeitar a ordem obrigatória das cláusulas SQL para evitar erros de sintaxe.

---
## Dia 08 - WHERE
No **Dia 08**, a aula avançou para o conceito fundamental de **filtragem de dados** utilizando a cláusula **`WHERE`**. Se o `SELECT` define quais colunas você quer ver, o `WHERE` define quais **linhas** (registros) devem ser retornadas com base em critérios específicos.

Abaixo, apresento a explicação dos códigos e conceitos apresentados:

### 1. A Cláusula WHERE e a Filtragem Básica
A filtragem no SQL funciona de forma análoga aos filtros do Excel, permitindo isolar apenas os dados que atendem a uma condição.
*   **Posicionamento:** O `WHERE` deve ser escrito após a cláusula `FROM`.
*   **Sintaxe de Igualdade:** Para buscar um valor exato, utiliza-se o sinal de igual (ex: `WHERE desc_categoria_produto = 'rpg'`).
*   **Uso de Aspas:** Valores de **texto (strings)** devem sempre estar entre **aspas simples** (`'`). Valores numéricos não precisam de aspas.
*   **Case Sensitive:** O banco de dados diferencia maiúsculas de minúsculas no conteúdo das células. Buscar por 'RPG' (maiúsculo) não retornará resultados se no banco estiver gravado 'rpg' (minúsculo).

### 2. Operadores de Comparação e Desigualdade
A aula demonstrou como filtrar dados usando lógica matemática e de marcação:
*   **Igualdade e Diferença:** Além do `=`, você pode usar `!=` ou `<>` para indicar "diferente de" (ex: `WHERE FL <> 0` para clientes com e-mail).
*   **Grandezas:** Para campos numéricos, utilizam-se operadores como **`>` (maior)** ou **`>=` (maior ou igual)**. Por exemplo, `WHERE quantidade_pontos > 500` seleciona apenas clientes com pontuação superior a esse valor.

### 3. Múltiplos Valores: OR e IN
Quando você precisa buscar por vários valores possíveis para a mesma coluna, existem duas abordagens:
*   **Operador `OR`:** Você pode repetir a coluna várias vezes (ex: `WHERE desk_produto = 'A' OR desk_produto = 'B'`).
*   **Operador `IN`:** É uma forma mais elegante e performática de passar uma lista de valores. O código `WHERE desk_produto IN ('valor1', 'valor2', 'valor3')` instrui o banco a selecionar qualquer registro que esteja dentro dessa lista.

### 4. Busca por Padrões: LIKE e o Coringa (%)
Para buscar termos parciais dentro de um texto (como produtos que "contêm" determinada palavra), utiliza-se o operador **`LIKE`** em conjunto com o caractere **`%` (percentual)**, conhecido como **coringa**.
*   **`LIKE 'turn%'`**: Busca palavras que **começam** com "turn".
*   **`LIKE '%PP'`**: Busca palavras que **terminam** com "PP".
*   **`LIKE '%item%'`**: Busca palavras que possuem "item" em **qualquer parte** do texto.
*   **Aviso de Performance:** O uso do `LIKE` é **mais custoso** computacionalmente do que a igualdade (`=`) ou o `IN`, pois exige que o banco processe e compare cada string individualmente, o que pode gastar mais tempo e recursos em bases de dados muito grandes.

### 5. Conceitos de Relacionamento (Contexto dos Filtros)
Ao filtrar a tabela de transações, foram introduzidos conceitos importantes de estrutura de banco de dados:
*   **Chave Primária (PK - Primary Key):** O identificador único de uma tabela (ex: `ID transação`).
*   **Chave Estrangeira (FK - Foreign Key):** Quando o identificador de uma tabela (como o `ID cliente`) aparece em outra tabela (como a de `transacoes`) para criar um **relacionamento**, permitindo saber qual cliente realizou aquela transação específica.

---

## Dia 09 - Novas Colunas
Na aula do **Dia 09**, o foco principal foi a **criação de novas colunas** e a manipulação de dados existentes através de expressões matemáticas e funções de texto e data. O instrutor enfatizou que essas operações não alteram a tabela original no banco de dados; elas apenas modificam como os dados são exibidos no resultado da sua consulta.

Abaixo, apresento a explicação detalhada dos códigos e conceitos ensinados:

### 1. Criando Colunas com Operações Matemáticas
O primeiro passo foi mostrar como criar colunas calculadas a partir de campos já existentes.
*   **Exemplo:** `SELECT *, quantidade_pontos + 10 FROM clientes`.
*   **O que faz:** Seleciona todas as colunas originais (`*`) e adiciona uma coluna extra onde cada linha contém o valor da pontuação somado a 10.
*   **Outras operações:** É possível realizar multiplicações (`* 2`) ou qualquer outra conta aritmética necessária para transformar o dado na hora da consulta.

### 2. Renomeando Colunas (Alias)
Como os nomes gerados por cálculos (ex: `quantidade_pontos + 10`) ficam visualmente poluídos, introduziu-se o conceito de **Alias (apelido)**.
*   **Sintaxe:** Usa-se a palavra-chave **`AS`** (ex: `SELECT quantidade_pontos + 10 AS pontos_bonus`).
*   **Boa prática:** Embora o SQL permita renomear sem o `AS`, o instrutor recomenda sempre usá-lo para tornar o código mais explícito e fácil de ler.

### 3. Manipulação de Strings com `substr`
Muitas vezes, os dados (como datas) estão salvos em formatos de texto longos e "sujos". Para resolver isso, usou-se a função **`substr`**.
*   **Código:** `substr(DT_criacao, 1, 19)`.
*   **O que faz:** "Fatia" o texto da coluna `DT_criacao`, começando na posição 1 e pegando os próximos 19 caracteres. Isso permite isolar apenas a parte da data e hora, descartando informações extras como milissegundos ou fusos horários indesejados.

### 4. Conversão e Funções de Data (`datetime` e `strftime`)
Para realizar operações inteligentes com datas (como saber o dia da semana), o texto fatiado precisa ser convertido em um tipo de dado de data real.
*   **`datetime()`**: Converte a string fatiada em uma estrutura de data e hora que o banco de dados entende.
*   **`strftime()`**: Esta função formata a data para extrair informações específicas. 
    *   **Exemplo do Dia da Semana:** O código `strftime('%w', data)` foi usado para descobrir o dia da semana, onde **0 representa domingo**, 1 segunda, e assim por diante. No exemplo da aula, o resultado "4" confirmou que a data era uma quinta-feira.

### 5. Funções em Camadas (Aninhamento)
Um dos pontos mais avançados foi o **aninhamento de funções**, onde uma função é aplicada sobre o resultado de outra.
*   **Estrutura lógica:** 
    1.  Pega a coluna original.
    2.  Fatia com `substr`.
    3.  Converte com `datetime`.
    4.  Extrai o dia da semana com `strftime`.

O instrutor concluiu reforçando que, embora existam milhares de funções no SQL, não é necessário decorá-las; o importante é saber **como pesquisar** (usando termos como "how to" ou ferramentas de IA) para encontrar a função específica de que você precisa para cada "sabor" de SQL.

### Resumo da Ordem de Comando
A estrutura final da query explicada segue esta ordem obrigatória para evitar erros de sintaxe:
1.  **`SELECT`** (colunas)
2.  **`FROM`** (tabela)
3.  **`WHERE`** (filtros de linha)
4.  **`LIMIT`** (restrição de quantidade - sempre por último).


---

## Dia 10 - Exercícios
No dia 10, a aula foi dedicada à resolução de exercícios práticos para consolidar os conceitos de **SELECT**, **WHERE**, manipulação de colunas e filtragem de dados. Abaixo, explico as resoluções apresentadas para cada desafio:

### 1. Lista de transações com apenas um ponto
O objetivo era filtrar a tabela de transações para encontrar registros específicos de pontuação unitária.
*   **Código:** `SELECT * FROM transacoes WHERE quantidade_pontos = 1`.
*   **Explicação:** Utiliza-se a cláusula `WHERE` para igualar a coluna de pontos ao valor desejado. Uma boa prática mencionada é substituir o `*` pelas colunas `id_transacao` e `quantidade_pontos` para conferir o resultado.

### 2. Pedidos realizados no fim de semana
Este foi considerado um dos exercícios mais complexos por exigir a manipulação de strings e funções de data.
*   **Lógica:** Primeiro, usa-se `substr` para fatiar a data de criação, depois `datetime` para converter o texto em formato de data e, por fim, `strftime('%w', ...)` para extrair o dia da semana.
*   **Resolução:** Filtra-se onde o resultado da função seja **'0' (domingo)** ou **'6' (sábado)**. O instrutor demonstrou que é possível usar o **Alias** (apelido) da coluna criada diretamente no `WHERE` em alguns bancos, facilitando a leitura.

### 3. Clientes com zero pontos
Uma consulta simples para identificar usuários sem saldo de pontuação.
*   **Código:** `SELECT id_cliente, quantidade_pontos FROM clientes WHERE quantidade_pontos = 0`.
*   **Resultado:** A consulta retornou 648 clientes nessa condição.

### 4. Clientes com 100 a 200 pontos (inclusive)
O exercício explorou como selecionar intervalos de valores.
*   **Resolução Explícita:** `WHERE quantidade_pontos >= 100 AND quantidade_pontos <= 200`.
*   **Uso do BETWEEN:** Também foi apresentada a alternativa `WHERE quantidade_pontos BETWEEN 100 AND 200`. Embora o `BETWEEN` seja mais curto, o instrutor prefere a forma explícita para evitar confusões sobre se os limites são inclusivos ou não.

### 5, 6 e 7. Filtros com nomes de produtos (LIKE)
Foram realizados três exercícios focados no operador **`LIKE`** e no caractere coringa **`%`**.
*   **Começa com "venda de":** `LIKE 'venda de%'`.
*   **Termina com "lover":** `LIKE '%lover'`.
*   **Contém "chapéu" em qualquer parte:** `LIKE '%chapéu%'`.
*   **Dica extra:** Foi mostrado o uso do **`NOT LIKE`** para excluir registros que contenham determinado termo.

### 8. Transações com o produto "Poney"
Este exercício exigiu uma análise de **relacionamento entre tabelas**, pois a tabela de transações não contém o nome do produto, apenas o seu ID.
*   **Passo 1:** Consultar a tabela de `produtos` para descobrir que o "resgate poney" possui o ID 15.
*   **Passo 2:** Consultar a tabela `transacao_produtos` filtrando pelo `id_produto = 15`.
*   **Conceito:** Essa necessidade de buscar um dado em uma tabela para filtrar outra introduz a lógica de **Chave Estrangeira** e prepara o terreno para o aprendizado de **JOINS** em aulas futuras.

---
## **Dia 11** - ORDER BY, 
o foco da aula foi o comando **ORDER BY**, utilizado para ordenar os resultados de uma consulta, permitindo organizar os dados de forma crescente ou decrescente.

Abaixo estão os principais códigos e conceitos explicados:

### 1. Ordenação Básica (`ORDER BY`)
O comando é inserido após o `FROM` (ou após o `WHERE`, se houver) para definir por qual coluna os dados devem ser organizados.
*   **Ordem Crescente (Padrão):** Ao usar `ORDER BY quantidade_pontos`, o banco organiza do menor para o maior (ascendente) por padrão.
*   **Ordem Decrescente (`DESC`):** Para ver os maiores valores primeiro (como os clientes com mais pontos), utiliza-se a palavra-chave `DESC` após o nome da coluna (ex: `ORDER BY quantidade_pontos DESC`).

### 2. O "Top 10" (Combinando `ORDER BY` e `LIMIT`)
Uma aplicação prática fundamental é a criação de rankings. Para encontrar os 10 clientes com maior saldo, o código segue esta ordem obrigatória:
1.  **`SELECT * FROM clientes`**
2.  **`ORDER BY quantidade_pontos DESC`** (ordena do maior para o menor)
3.  **`LIMIT 10`** (pega apenas os 10 primeiros após a ordenação).

### 3. Ordenação por Múltiplos Critérios
É possível ordenar por mais de uma coluna simultaneamente, separando-as por vírgula. Isso é útil quando há "empates" no primeiro critério.
*   **Exemplo:** `ORDER BY dt_criacao ASC, quantidade_pontos DESC`.
*   Neste caso, o banco organiza primeiro pelos clientes mais antigos (`ASC` ou ascendente) e, para aqueles cadastrados no mesmo momento, organiza quem tem mais pontos primeiro (`DESC`).
*   **Nota sobre datas:** Como as datas estão no formato "ano-mês-dia", o banco consegue ordená-las corretamente como texto.

### 4. Integrando com Filtros (`WHERE`)
Quando você precisa filtrar e ordenar ao mesmo tempo, o **`WHERE` deve vir sempre antes do `ORDER BY`**.
*   **Exemplo:** `SELECT * FROM clientes WHERE fl_twitch = 1 ORDER BY dt_criacao ASC`.
*   **Vantagem de Performance:** O instrutor explica que usar o `WHERE` antes é uma boa prática porque o banco primeiro filtra os dados (diminuindo o volume na memória) e só depois faz o esforço computacional de ordenar o que restou.

### 5. Regras de Estrutura
O SQL segue uma estrutura rígida para evitar erros de sintaxe. Em uma única instrução `SELECT`, você não pode repetir cláusulas (ter dois `WHERE` ou dois `ORDER BY`), mas sim adicionar múltiplas condições ou colunas dentro de cada uma delas. A ordem correta das cláusulas aprendidas até agora é:
1.  **SELECT** (colunas)
2.  **FROM** (tabela)
3.  **WHERE** (filtros)
4.  **ORDER BY** (ordenação)
5.  **LIMIT** (restrição de linhas).

---

## **Dia 12** - CASE WHEN
 a aula foca no comando **`CASE WHEN`**, que introduz lógica condicional às consultas SQL. Ele funciona de forma análoga ao "se" (`if`) de linguagens de programação, permitindo atribuir valores a uma nova coluna com base em condições específicas.

Abaixo, detalho os códigos e conceitos apresentados:

### 1. Estrutura Básica do CASE WHEN
O comando é utilizado para criar colunas calculadas logicamente. A estrutura básica segue este padrão:
*   **`CASE`**: Inicia o bloco lógico.
*   **`WHEN [condição] THEN [resultado]`**: Define o critério e o que deve ser exibido caso ele seja atendido.
*   **`ELSE [resultado]`**: (Opcional) Define um valor padrão caso nenhuma das condições anteriores seja verdadeira. Se omitido e nada for atendido, o banco retorna **`NULL`**.
*   **`END`**: Finaliza o bloco do `CASE`.
*   **`AS [nome_da_coluna]`**: Define o apelido (alias) para a nova coluna criada.

### 2. A Importância da Ordem das Condições
Uma regra fundamental explicada é que o banco de dados avalia as condições **na ordem em que foram escritas**. 
*   Se a primeira condição for atendida, o banco atribui o valor e **ignora o restante** do `CASE` para aquela linha. 
*   Isso permite simplificar o código: em vez de escrever intervalos complexos (como "entre 500 e 1000"), você pode apenas colocar `WHEN pontos <= 500 THEN 'Poney'` seguido de `WHEN pontos <= 1000 THEN 'Poney Premium'`, pois quem tem menos de 500 já terá sido capturado pela primeira regra.

### 3. Exemplo Prático: Faixas de Pontuação
O código principal da aula classificou os clientes em "classes sociais" baseadas no saldo de pontos:
*   **Poney**: Até 500 pontos.
*   **Poney Premium**: Entre 501 e 1.000 pontos.
*   **Mago Aprendiz**: Entre 1.001 e 5.000 pontos.
*   **Mago Mestre**: Entre 5.001 e 10.000 pontos.
*   **Mago Supremo**: Mais de 10.000 pontos (definido através do `ELSE`).

### 4. Criação de Múltiplas Colunas (Flags)
O instrutor reforçou que **cada bloco `CASE` gera exatamente uma coluna** no resultado final. No entanto, você pode usar vários `CASE` na mesma consulta para criar colunas distintas, como "marcações" (flags) binárias:
*   Um `CASE` para criar a coluna `fl_poney` (valor 1 se for poney, 0 se não).
*   Outro `CASE` para a coluna `fl_mago` (valor 1 se for mago, 0 se não).

### 5. Posicionamento e Regras de Uso
Como o `CASE WHEN` é uma ferramenta para selecionar/gerar dados, ele deve estar obrigatoriamente dentro da cláusula **`SELECT`** (antes do `FROM`). Além disso, embora um `CASE` resulte em apenas uma coluna, você pode comparar múltiplas colunas diferentes dentro de seus `WHEN` para chegar a um resultado.


```sql
SELECT 
    idCliente, 
    quantidade_pontos,
    CASE 
        WHEN quantidade_pontos <= 500 THEN 'poney'
        WHEN quantidade_pontos <= 1000 THEN 'poney premium'
        WHEN quantidade_pontos <= 5000 THEN 'mago aprendiz'
        WHEN quantidade_pontos <= 10000 THEN 'mago mestre'
        ELSE 'mago supremo'
    END AS nome_grupo
FROM clientes
ORDER BY quantidade_pontos DESC
```

### Explicação dos componentes do código:

*   **`CASE`**: Inicia a cláusula de condição.
*   **`WHEN [condição] THEN [resultado]`**: Define o critério. O banco de dados testa as condições na **ordem em que foram escritas**; se a primeira for verdadeira, ele atribui o valor e ignora as demais para aquela linha.
*   **`ELSE`**: É opcional e define o valor padrão caso nenhuma das condições anteriores seja atendida (se omitido, o resultado será `NULL`).
*   **`END AS nome_grupo`**: Finaliza o bloco e dá um "apelido" (alias) à nova coluna criada.

---
## **Dia 13** - COUNT 
o curso entra em uma nova fase focada em **agregações**, utilizando o SQL para resumir e sintetizar informações, de forma semelhante ao que é feito na estatística. O grande destaque desse dia é o comando **`COUNT`**, utilizado para contar registros em uma tabela.

Abaixo, detalho os principais conceitos e códigos apresentados:

### 1. O Conceito de Agregação
Até então, as aulas focavam em selecionar, filtrar e ordenar linhas individuais. Agregação significa **"espremer" a tabela** para gerar um resumo (estatística) a partir de um conjunto de dados, resultando em um valor único que sintetiza a informação.

### 2. O Comando `COUNT(*)`
Para descobrir o número total de linhas em uma tabela sem precisar percorrê-la manualmente, utiliza-se o `COUNT`.
*   **Código:** `SELECT COUNT(*) FROM clientes`.
*   **O que faz:** Retorna a quantidade total de registros. No exemplo da aula, o resultado foi **3.505 clientes**.

### 3. Diferenças entre `COUNT(*)`, `COUNT(1)` e `COUNT(coluna)`
A aula explora as nuances de como o banco de dados processa a contagem:
*   **`COUNT(*)` e `COUNT(1)`**: Em geral, funcionam da mesma forma na maioria dos motores de banco de dados, contando todas as linhas da tabela. O instrutor explica que o `COUNT(1)` é como se o banco criasse uma coluna temporária preenchida com o número "1" para cada linha e depois contasse essas ocorrências.
*   **`COUNT(nome_da_coluna)`**: Diferente dos anteriores, este comando conta apenas os registros onde o valor da coluna especificada **não é nulo** (vazio).

### 4. Performance e Boas Práticas
O instrutor recomenda o uso de **`COUNT(*)`** ou **`COUNT(1)`** como prática padrão para saber o tamanho de uma tabela.
*   **Metadados:** Algumas ferramentas de processamento de dados (como o Spark) ou motores de busca mais inteligentes conseguem ler a quantidade de linhas diretamente dos metadados da tabela, sem precisar varrê-la por inteiro, o que torna a consulta muito mais rápida em bases com milhões de registros.

Em resumo, o Dia 13 ensina que o SQL não serve apenas para buscar dados brutos, mas também para **extrair inteligência e resumos quantitativos** de forma performática.

### Regras Importantes:
1.  **Localização**: Como o `CASE WHEN` gera uma nova coluna, ele deve estar obrigatoriamente dentro da cláusula **`SELECT`**.
2.  **Uma coluna por CASE**: Cada bloco que começa com `CASE` e termina com `END` resulta em **apenas uma única coluna** no resultado final, independentemente de quantos `WHEN` existam lá dentro.
3.  **Múltiplas colunas**: Você pode usar vários blocos `CASE` na mesma consulta para criar diferentes marcações (flags), como uma coluna para identificar se o cliente é "poney" e outra para identificar se é "mago".

---

## **Dia 14** - DISTINCT
o foco principal da aula foi o comando **`DISTINCT`**, utilizado para remover duplicidades e retornar registros únicos de uma consulta, além de como combiná-lo com funções de agregação como o `COUNT`.

Abaixo estão os detalhes dos códigos e conceitos apresentados:

### 1. O Conceito de `DISTINCT`
O instrutor esclarece que o `DISTINCT` não atua apenas em uma coluna isolada, mas sim na **combinação de todas as colunas** selecionadas na linha da query.
*   **Deduplicação de Linhas:** Se você selecionar `DISTINCT fl_twitch, fl_email`, o banco de dados retornará todas as combinações únicas entre essas duas colunas, eliminando as repetições.
*   **Analogia dos Dados:** Para facilitar o entendimento, foi usada a analogia de dados físicos:
    *   **Distinto por cor:** Retorna um representante de cada cor existente (ex: um vermelho, um preto, um cinza).
    *   **Distinto por faces:** Retorna um representante para cada quantidade de faces (ex: um de 6 faces, um de 20 faces).
    *   **Distinto por cor e faces:** Retorna combinações únicas entre os dois atributos.

### 2. Contagem de Registros Únicos (`COUNT DISTINCT`)
A aplicação mais comum demonstrada foi o uso do `DISTINCT` dentro da função `COUNT` para descobrir o número de entidades únicas em uma tabela de movimentações.
*   **Exemplo Prático:** Na tabela de transações, uma mesma pessoa pode aparecer várias vezes. Para saber **quantos clientes únicos** transacionaram em um período, utiliza-se:
    ```sql
    SELECT COUNT(DISTINCT id_cliente) 
    FROM transacoes 
    WHERE dt_criacao >= '2025-07-01' AND dt_criacao < '2025-08-01'
    ```
*   **Resultado:** Enquanto o `COUNT(*)` retornou 5.674 transações totais em julho de 2025, o `COUNT(DISTINCT id_cliente)` revelou que apenas **287 clientes distintos** foram responsáveis por esse volume.

### 3. Comparação de Datas como Strings
A aula também reforçou como realizar filtros de data sem precisar de funções complexas de conversão, tratando-as como texto.
*   **Lógica de Grandeza:** O banco de dados consegue comparar strings de data no formato "ano-mês-dia" (ex: `'2025-07-01'`) por ordem lexicográfica, da mesma forma que a letra "a" vem antes da letra "b".
*   **Filtro de Mês:** Para capturar exatamente um mês, a recomendação é usar o sinal de **maior ou igual** para o início do mês e **menor** para o primeiro dia do mês seguinte.

### 4. Diferença entre Chave Primária e Distinct
O instrutor explicou que aplicar `DISTINCT` em uma **Chave Primária (PK)**, como o `id_cliente` na tabela de clientes, não altera o resultado da contagem, pois por definição a chave primária já é única e não se repete naquela tabela. O valor do `DISTINCT` aparece realmente quando olhamos para **Chaves Estrangeiras (FK)** ou atributos que se repetem.

Em resumo, o Dia 14 ensinou que o `DISTINCT` é a ferramenta essencial para "limpar" o resultado de uma consulta, garantindo que você veja apenas os valores ou combinações de valores que são de fato diferentes entre si.

Um exemplo prático e detalhado apresentado nesta aula foi para descobrir quantos **clientes únicos** realizaram transações em um mês específico (julho de 2025), filtrando os dados da tabela de transações.

Abaixo está o exemplo de código utilizado:

```sql
SELECT 
    COUNT(DISTINCT id_cliente) 
FROM transacoes 
WHERE dt_criacao >= '2025-07-01' 
  AND dt_criacao < '2025-08-01'
```

### Explicação do que o código faz:

*   **`SELECT COUNT(DISTINCT id_cliente)`**: Esta parte do código primeiro identifica todos os IDs de clientes que aparecem na tabela (`DISTINCT id_cliente`) e depois conta quantos são únicos. Sem o `DISTINCT`, o banco contaria todas as linhas da tabela, o que resultaria no número total de transações, e não no número de clientes.
*   **`FROM transacoes`**: Indica que os dados estão sendo retirados da tabela de transações.
*   **`WHERE dt_criacao >= '2025-07-01' AND dt_criacao < '2025-08-01'`**: Filtra as transações para abranger exatamente o mês de julho de 2025. O instrutor explica que as datas são comparadas como strings (texto), onde o banco entende que '2025-07-01' vem antes de '2025-08-01'.

**Ponto importante abordado na aula:**
O instrutor demonstrou que, enquanto o total de transações (`COUNT(*)`) em julho de 2025 foi de **5.674**, o número de clientes únicos que realizaram essas transações foi de apenas **287**. Isso acontece porque um mesmo cliente pode realizar várias transações em um único mês.

---
## **Dia 15** - Estatísticas

a aula foca em **estatísticas e funções de agregação**, que servem para sumarizar dados e extrair inteligência, "espremendo" a tabela para gerar um resumo em vez de apenas listar linhas individuais.

Abaixo estão as explicações e exemplos de código detalhados na aula:

### 1. A Função SUM (Soma)
A função **`SUM`** é utilizada para somar valores numéricos de uma coluna. Um exemplo prático é calcular o saldo de pontos ganhos em um determinado mês.

*   **Exemplo de soma simples:**
    ```sql
    SELECT SUM(quantidade_pontos) 
    FROM transacoes 
    WHERE dt_criacao >= '2025-07-01' AND dt_criacao < '2025-08-01'
    ```.

### 2. Agregação Condicional com CASE WHEN
O instrutor explica que, como existem ganhos e trocas de pontos (valores positivos e negativos), somar a coluna inteira resulta no saldo líquido. Para separar entradas de saídas na mesma consulta, utiliza-se o **`CASE WHEN`** dentro do **`SUM`**.

*   **Exemplo de resumo de entradas e saídas:**
    ```sql
    SELECT 
        SUM(CASE WHEN quantidade_pontos > 0 THEN quantidade_pontos ELSE 0 END) AS pontos_positivos,
        SUM(CASE WHEN quantidade_pontos < 0 THEN quantidade_pontos ELSE 0 END) AS pontos_negativos
    FROM transacoes
    WHERE dt_criacao >= '2025-07-01' AND dt_criacao < '2025-08-01'
    ```.

### 3. Média (AVG), Mínimo (MIN) e Máximo (MAX)
Estas funções ajudam a entender a distribuição dos dados na carteira dos clientes. 
*   **`AVG`**: Calcula a média. No SQLite, multiplica-se por `1.0` para garantir que o resultado tenha casas decimais (float).
*   **`MIN` e `MAX`**: Identificam, respectivamente, o menor e o maior valor de uma coluna.

*   **Exemplo de estatísticas de carteira:**
    ```sql
    SELECT 
        AVG(quantidade_pontos * 1.0) AS media_carteira,
        MIN(quantidade_pontos) AS min_carteira,
        MAX(quantidade_pontos) AS max_carteira
    FROM clientes
    ```.

### 4. Soma de Flags (Marcações)
Uma técnica útil apresentada é somar colunas de "flags" (que contêm apenas 0 ou 1). **Somar uma flag é o mesmo que contar** quantos usuários possuem aquela característica ativa.

*   **Exemplo para contar usuários da Twitch:**
    ```sql
    SELECT SUM(fl_twitch) AS total_usuarios_twitch 
    FROM clientes
    ```.

### 5. Consideração sobre Zeros e Nulos
A aula alerta que usar `ELSE 0` em agregações de soma é seguro, mas em operações de contagem (**`COUNT`**), o zero seria computado como um registro válido, o que poderia distorcer o resultado. Se o objetivo for contar apenas ocorrências específicas, o ideal é deixar o valor como nulo quando a condição não for atendida.

---
## **Dia 16** - GROUP BY

a aula introduz o comando **`GROUP BY`**, que é fundamental para organizar e resumir dados por categorias específicas. Enquanto as aulas anteriores focaram em "espremer" a tabela inteira para gerar um único valor (agregação global), o `GROUP BY` permite fazer esse resumo para cada grupo de uma característica escolhida.

Abaixo, detalho os conceitos e os códigos apresentados:

### 1. O Conceito de Agrupamento
O instrutor utiliza a analogia de dados físicos (dados de jogo) para explicar o conceito: em vez de filtrar apenas os dados vermelhos e contá-los, e depois repetir o processo para os pretos, você os **agrupa por cor** na mesa e conta todos os grupos de uma vez. No SQL, isso evita o chamado "trabalho de corno", que seria criar uma query com um filtro `WHERE` diferente para cada item que você deseja analisar.

### 2. Mudança de Granularidade
Um dos pontos mais importantes é a mudança de **granularidade** da tabela. Por exemplo, uma tabela de transações possui muitas linhas para o mesmo cliente (nível transacional). Ao usar o `GROUP BY id_cliente`, você "espreme" essas múltiplas linhas para que o resultado tenha apenas **uma linha por cliente**, consolidando as informações de pontos ou transações daquela pessoa.

### 3. Exemplos de Código

*   **Agrupamento Simples (Contagem por Produto):**
    Para saber quantas vezes cada produto foi vendido sem precisar filtrar um por um, utiliza-se:
    ```sql
    SELECT id_produto, COUNT(*) 
    FROM transacao_produto 
    GROUP BY id_produto;
    ```
    Neste exemplo, o banco agrupa todas as linhas que possuem o mesmo `id_produto` e conta quantas existem em cada grupo.

*   **Agrupamento com Soma e Múltiplas Agregações:**
    Para identificar quanto cada cliente acumulou de pontos e quantas transações realizou em um mês específico:
    ```sql
    SELECT 
        id_cliente, 
        SUM(quantidade_pontos) AS total_pontos, 
        COUNT(id_transacao) AS qtd_transacoes
    FROM transacoes 
    WHERE dt_criacao >= '2025-07-01' AND dt_criacao < '2025-08-01'
    GROUP BY id_cliente;
    ```
    Aqui, o banco primeiro filtra os dados de julho (`WHERE`), depois separa os registros por cliente (`GROUP BY`) e, por fim, calcula a soma e a contagem para cada um deles.

### 4. Regras e Boas Práticas
*   **Colunas no SELECT vs. GROUP BY:** Toda coluna que aparecer no seu `SELECT` e que **não for uma função de agregação** (como SUM, COUNT, AVG) deve obrigatoriamente estar listada na cláusula `GROUP BY`.
*   **Uso de Números (Posicionamento):** Em alguns bancos de dados, é possível usar o número da posição da coluna no `SELECT` dentro do `GROUP BY` (ex: `GROUP BY 1`), o que facilita a escrita, embora não seja aceito em todos os sistemas.
*   **Ordem das Cláusulas:** O `GROUP BY` deve vir sempre após o `WHERE` e antes do `ORDER BY` ou `LIMIT`. A lógica de processamento é: primeiro o banco **busca** a tabela, **filtra** as linhas, **agrupa** as informações, **ordena** o resultado e, por fim, aplica o **limite** de linhas.

---
## **Dia 17** - HAVING
da aula foca no comando **`HAVING`**, que é essencial para filtrar dados que já foram agrupados por uma função de agregação (como `SUM`, `COUNT` ou `AVG`).

Abaixo, apresento a explicação detalhada e os exemplos de código baseados no conteúdo da aula:

### 1. O que é o `HAVING`?
O instrutor define o `HAVING` como o **"WHERE do GROUP BY"**. Enquanto o `WHERE` filtra linhas individuais antes de qualquer processamento, o `HAVING` serve para filtrar os **resultados que saem de um agrupamento**.

### 2. A diferença crucial entre `WHERE` e `HAVING`
Uma dúvida comum é por que não podemos usar o `WHERE` para filtrar uma soma (ex: `WHERE SUM(pontos) > 4000`). A explicação técnica é baseada no momento da execução:
*   **`WHERE`**: Filtra no momento em que os dados estão sendo "tirados do baú" (tabela). Nessa fase, o banco ainda não sabe qual é o valor total somado, pois ele ainda não agrupou nada.
*   **`HAVING`**: Filtra depois que os dados já estão na "bandeja", após o banco ter feito o esforço de agrupar e somar os valores.

### 3. Exemplo de Código: Filtrando Clientes com Alta Pontuação
O exemplo prático da aula busca identificar apenas os clientes que acumularam mais de 4.000 pontos durante o mês de julho de 2025.

```sql
SELECT 
    id_cliente, 
    SUM(quantidade_pontos) AS total_pontos
FROM transacoes
WHERE dt_criacao >= '2025-07-01' AND dt_criacao < '2025-08-01'
GROUP BY id_cliente
HAVING SUM(quantidade_pontos) > 4000
ORDER BY total_pontos DESC;
```

**Análise do código:**
1.  **`SELECT`**: Seleciona o ID do cliente e a soma dos seus pontos.
2.  **`FROM`**: Indica a tabela de transações.
3.  **`WHERE`**: Faz o primeiro filtro, selecionando apenas as transações do mês de julho.
4.  **`GROUP BY`**: Agrupa os resultados por cliente para que tenhamos uma linha por pessoa.
5.  **`HAVING`**: Filtra os grupos resultantes, mantendo apenas aqueles cujo somatório de pontos é superior a 4.000.
6.  **`ORDER BY`**: Ordena o resultado final do maior para o menor.

### 4. Ordem Obrigatória das Cláusulas
Para que o SQL funcione corretamente e não apresente erros de sintaxe, o instrutor reforça a estrutura de 90% das queries profissionais, seguindo esta ordem:
1.  **`SELECT`** (Escolha das colunas/agregações)
2.  **`FROM`** (Origem dos dados)
3.  **`WHERE`** (Filtro inicial de linhas)
4.  **`GROUP BY`** (Agrupamento)
5.  **`HAVING`** (Filtro após o agrupamento)
6.  **`ORDER BY`** (Ordenação do resultado filtrado)
7.  **`LIMIT`** (Restrição da quantidade de linhas exibidas).

---
## dia 18 - Exercícios

a aula foi dedicada à resolução de uma série de exercícios práticos focados principalmente em agrupamentos (**GROUP BY**) e lógica condicional (**CASE WHEN**).

Abaixo estão os problemas propostos e os respectivos códigos utilizados para resolvê-los:

### Exercício de Revisão (Pendente do Dia 09)
**Problema:** Listar todas as transações adicionando uma coluna nova sinalizando "alto", "médio" ou "baixo" para o valor dos pontos.

```sql
SELECT 
    id_transacao, 
    quantidade_pontos,
    CASE 
        WHEN quantidade_pontos < 10 THEN 'baixo'
        WHEN quantidade_pontos < 500 THEN 'médio'
        ELSE 'alto'
    END AS fl_valor_pontos
FROM transacoes
ORDER BY quantidade_pontos DESC;
```

### Exercícios de Agrupamento (Dia 18)

**1. Quantos clientes têm e-mail cadastrado?**
O instrutor demonstrou que isso pode ser feito de duas formas: somando a coluna de marcação (*flag*) ou filtrando e contando.

```sql
-- Opção 1: Somando a flag (mais performático)
SELECT SUM(FL) AS total_com_email FROM clientes;

-- Opção 2: Usando filtro e contagem
SELECT COUNT(*) FROM clientes WHERE FL = 1;
```

**2. Qual cliente juntou mais pontos positivos no mês 05 de 2025?**
Neste caso, é necessário filtrar o período, garantir que os pontos sejam positivos e agrupar por cliente.

```sql
SELECT 
    id_cliente, 
    SUM(quantidade_pontos) AS total_pontos
FROM transacoes 
WHERE dt_criacao >= '2025-05-01' AND dt_criacao < '2025-06-01'
  AND quantidade_pontos > 0
GROUP BY id_cliente
ORDER BY total_pontos DESC
LIMIT 1;
```

**3. Qual cliente fez mais transações no ano de 2024?**
Para este exercício, foi utilizado o fatiamento da data para identificar o ano e a contagem de registros por cliente.

```sql
SELECT 
    id_cliente, 
    COUNT(*) AS qtd_transacoes
FROM transacoes 
WHERE substr(dt_criacao, 1, 4) = '2024'
GROUP BY id_cliente
ORDER BY qtd_transacoes DESC
LIMIT 1;
```

**4. Quantos produtos são de RPG?**
Pode ser resolvido com um filtro simples ou agrupando todas as categorias para ter uma visão geral.

```sql
-- Resposta direta
SELECT COUNT(*) FROM produtos WHERE desc_categoria_produto = 'rpg';

-- Visão geral por categoria
SELECT desc_categoria_produto, COUNT(*) 
FROM produtos 
GROUP BY desc_categoria_produto;
```

**5. Qual o valor médio de pontos positivos por dia?**
Este exercício exigiu somar todos os pontos positivos e dividir pela quantidade de dias únicos em que houve transações.

```sql
SELECT 
    SUM(quantidade_pontos) / COUNT(DISTINCT substr(dt_criacao, 1, 10)) AS media_pontos_por_dia
FROM transacoes 
WHERE quantidade_pontos > 0;
```

**6. Qual o dia da semana que tem mais pedidos em 2025?**
Foi utilizada a função `strftime` com o parâmetro `%w` para extrair o dia da semana (onde 0 é domingo e 1 é segunda-feira).

```sql
SELECT 
    strftime('%w', substr(dt_criacao, 1, 19)) AS dia_semana,
    COUNT(*) AS total_pedidos
FROM transacoes 
WHERE substr(dt_criacao, 1, 4) = '2025'
GROUP BY dia_semana
ORDER BY total_pedidos DESC;
```

**7. Qual o produto mais transacionado?**
A consulta foca na contagem de registros por ID de produto na tabela de transação de produtos.

```sql
SELECT id_produto, COUNT(*) AS qtd_vendas
FROM transacao_produto
GROUP BY id_produto
ORDER BY qtd_vendas DESC
LIMIT 1;
```

**8. Qual o produto com mais pontos (valor) transacionados?**
Diferente do anterior, este busca o volume total de pontos/valor, multiplicando o valor unitário pela quantidade vendida.

```sql
SELECT 
    id_produto, 
    SUM(valor_produto * quantidade_produto) AS total_valor
FROM transacao_produto
GROUP BY id_produto
ORDER BY total_valor DESC
LIMIT 1;
```
