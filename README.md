# 💼 Projeto de Banco de Dados - Livraria

Este projeto tem como objetivo modelar e implementar um banco de dados relacional para uma livraria que realiza o controle de livros, clientes e pedidos.

---

# 🧱 Estrutura do Banco de Dados

O banco de dados é composto por 4 tabelas:

# 📚 Tabela `livros`
Armazena informações sobre os livros disponíveis.

| Campo        | Tipo        | Descrição               |
|--------------|-------------|--------------------------|
| id_livro     | INT (PK)    | Identificador do livro   |
| titulo       | VARCHAR     | Título do livro          |
| autor        | VARCHAR     | Nome do autor            |
| preco        | DECIMAL     | Preço de venda           |
| estoque      | INT         | Quantidade em estoque    |

---

# 👤 Tabela `clientes`
Registra dados dos clientes.

| Campo        | Tipo        | Descrição              |
|--------------|-------------|-------------------------|
| id_cliente   | INT (PK)    | Identificador do cliente |
| nome         | VARCHAR     | Nome completo            |
| email        | VARCHAR     | E-mail de contato        |
| telefone     | VARCHAR     | Número de telefone       |

---

# 🛒 Tabela `pedidos`
Contém os pedidos realizados pelos clientes.

| Campo        | Tipo        | Descrição                       |
|--------------|-------------|----------------------------------|
| id_pedido    | INT (PK)    | Identificador do pedido          |
| id_cliente   | INT (FK)    | Cliente que fez o pedido         |
| data_pedido  | DATE        | Data do pedido                   |

---

# 📦 Tabela `itens_pedido`
Relaciona os itens de cada pedido com os livros vendidos.

| Campo          | Tipo        | Descrição                              |
|----------------|-------------|-----------------------------------------|
| id_item        | INT (PK)    | Identificador do item                   |
| id_pedido      | INT (FK)    | Pedido relacionado                      |
| id_livro       | INT (FK)    | Livro vendido                           |
| quantidade     | INT         | Quantidade comprada                     |
| preco_unitario | DECIMAL     | Preço do livro no momento da compra     |

---

## 🚀 Como Executar

1. Instale e abra um sistema de banco de dados como MySQL ou PostgreSQL.
2. Crie um novo banco com o nome de sua escolha.
3. Execute o script `livraria.sql`.
4. Pronto! Você poderá fazer consultas e integrações com o sistema da livraria.

---

## 🔧 Versionamento com Git

Para manter controle sobre as mudanças no projeto, utilizamos Git.

### Comandos básicos:

```bash
git init                                                                 Inicializa o repositório
git add livraria.sql README.md                                           Adiciona os arquivos
git commit -m "Criação da estrutura do banco de dados da livraria"
git remote add origin https://github.com/Gamr3000/Livraria.sql.git
git push -u origin main

