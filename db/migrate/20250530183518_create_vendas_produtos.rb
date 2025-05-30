class CreateVendasProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :vendas_produtos do |t|
      t.references :venda, null: false, foreign_key: true
      t.string :produto
      t.integer :quantidade
      t.decimal :valor

      t.timestamps
    end
  end
end
