require "application_system_test_case"

class VendasProdutosTest < ApplicationSystemTestCase
  setup do
    @vendas_produto = vendas_produtos(:one)
  end

  test "visiting the index" do
    visit vendas_produtos_url
    assert_selector "h1", text: "Vendas produtos"
  end

  test "should create vendas produto" do
    visit vendas_produtos_url
    click_on "New vendas produto"

    fill_in "Produto", with: @vendas_produto.produto
    fill_in "Quantidade", with: @vendas_produto.quantidade
    fill_in "Valor", with: @vendas_produto.valor
    fill_in "Venda", with: @vendas_produto.venda_id
    click_on "Create Vendas produto"

    assert_text "Vendas produto was successfully created"
    click_on "Back"
  end

  test "should update Vendas produto" do
    visit vendas_produto_url(@vendas_produto)
    click_on "Edit this vendas produto", match: :first

    fill_in "Produto", with: @vendas_produto.produto
    fill_in "Quantidade", with: @vendas_produto.quantidade
    fill_in "Valor", with: @vendas_produto.valor
    fill_in "Venda", with: @vendas_produto.venda_id
    click_on "Update Vendas produto"

    assert_text "Vendas produto was successfully updated"
    click_on "Back"
  end

  test "should destroy Vendas produto" do
    visit vendas_produto_url(@vendas_produto)
    click_on "Destroy this vendas produto", match: :first

    assert_text "Vendas produto was successfully destroyed"
  end
end
