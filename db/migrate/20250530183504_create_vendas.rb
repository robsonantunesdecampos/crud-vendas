class CreateVendas < ActiveRecord::Migration[8.0]
  def change
    create_table :vendas do |t|
      t.string :cliente

      t.timestamps
    end
  end
end
