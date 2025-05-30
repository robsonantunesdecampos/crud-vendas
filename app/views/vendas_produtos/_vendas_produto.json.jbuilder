json.extract! vendas_produto, :id, :venda_id, :produto, :quantidade, :valor, :created_at, :updated_at
json.url vendas_produto_url(vendas_produto, format: :json)
