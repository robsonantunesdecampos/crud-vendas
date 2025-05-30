require "test_helper"

class VendasProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendas_produto = vendas_produtos(:one)
  end

  test "should get index" do
    get vendas_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_vendas_produto_url
    assert_response :success
  end

  test "should create vendas_produto" do
    assert_difference("VendasProduto.count") do
      post vendas_produtos_url, params: { vendas_produto: { produto: @vendas_produto.produto, quantidade: @vendas_produto.quantidade, valor: @vendas_produto.valor, venda_id: @vendas_produto.venda_id } }
    end

    assert_redirected_to vendas_produto_url(VendasProduto.last)
  end

  test "should show vendas_produto" do
    get vendas_produto_url(@vendas_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendas_produto_url(@vendas_produto)
    assert_response :success
  end

  test "should update vendas_produto" do
    patch vendas_produto_url(@vendas_produto), params: { vendas_produto: { produto: @vendas_produto.produto, quantidade: @vendas_produto.quantidade, valor: @vendas_produto.valor, venda_id: @vendas_produto.venda_id } }
    assert_redirected_to vendas_produto_url(@vendas_produto)
  end

  test "should destroy vendas_produto" do
    assert_difference("VendasProduto.count", -1) do
      delete vendas_produto_url(@vendas_produto)
    end

    assert_redirected_to vendas_produtos_url
  end
end
