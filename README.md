# CRUD de Vendas em Ruby on Rails

Este é um projeto de CRUD simples feito com **Ruby on Rails** e **PostgreSQL**, que permite gerenciar vendas e os produtos vendidos em cada uma delas.

---

## 💡 Funcionalidades

- Cadastro de Vendas com campos de cliente
- Adição de múltiplos produtos diretamente no formulário de cada venda
- Campos de produto, quantidade e valor são preenchidos manualmente
- Listagem, edição e remoção de vendas

---

## 🧱 Estrutura do Banco

### Tabela `vendas`

| Campo     | Tipo     |
|-----------|----------|
| id        | integer  |
| cliente   | string   |
| created_at| datetime |
| updated_at| datetime |

### Tabela `vendas_produtos`

| Campo      | Tipo     |
|------------|----------|
| id         | integer  |
| venda_id   | integer (FK) |
| produto    | string   |
| quantidade | integer  |
| valor      | decimal  |
| created_at | datetime |
| updated_at | datetime |

---

## 🚀 Como executar o projeto

1. Clone o repositório:

```bash
git clone https://github.com/robsonantunesdecampos/crud-vendas
cd crud-vendas

Instale as dependências:
bundle install

Configure o banco:
rails db:create
rails db:migrate

Inicie o servidor:
rails server

Acesse: http://localhost:3000/vendas

📂 Organização do Código
app/models/venda.rb: Model da venda (possui has_many :vendas_produtos)

app/models/vendas_produto.rb: Model que representa os produtos vendidos em uma venda

app/controllers/vendas_controller.rb: Controlador principal que gerencia as vendas e produtos aninhados

app/views/vendas/: Formulários, listagens e detalhes de vendas

config/routes.rb: Define as rotas REST para vendas

✍️ Autor
Desenvolvido por Robson
https://github.com/robsonantunesdecampos

