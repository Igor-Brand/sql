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
