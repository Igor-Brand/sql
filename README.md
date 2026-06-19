# sql

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
