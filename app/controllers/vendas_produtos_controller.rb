class VendasProdutosController < ApplicationController
  before_action :set_vendas_produto, only: %i[ show edit update destroy ]

  # GET /vendas_produtos or /vendas_produtos.json
  def index
    @vendas_produtos = VendasProduto.all
  end

  # GET /vendas_produtos/1 or /vendas_produtos/1.json
  def show
  end

  # GET /vendas_produtos/new
  def new
    @vendas_produto = VendasProduto.new
  end

  # GET /vendas_produtos/1/edit
  def edit
  end

  # POST /vendas_produtos or /vendas_produtos.json
  def create
    @vendas_produto = VendasProduto.new(vendas_produto_params)

    respond_to do |format|
      if @vendas_produto.save
        format.html { redirect_to @vendas_produto, notice: "Vendas produto was successfully created." }
        format.json { render :show, status: :created, location: @vendas_produto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vendas_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendas_produtos/1 or /vendas_produtos/1.json
  def update
    respond_to do |format|
      if @vendas_produto.update(vendas_produto_params)
        format.html { redirect_to @vendas_produto, notice: "Vendas produto was successfully updated." }
        format.json { render :show, status: :ok, location: @vendas_produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vendas_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendas_produtos/1 or /vendas_produtos/1.json
  def destroy
    @vendas_produto.destroy!

    respond_to do |format|
      format.html { redirect_to vendas_produtos_path, status: :see_other, notice: "Vendas produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendas_produto
      @vendas_produto = VendasProduto.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def vendas_produto_params
      params.expect(vendas_produto: [ :venda_id, :produto, :quantidade, :valor ])
    end
end
