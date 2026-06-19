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
