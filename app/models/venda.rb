class Venda < ApplicationRecord
  has_many :vendas_produtos, dependent: :destroy
  accepts_nested_attributes_for :vendas_produtos, allow_destroy: true
end

