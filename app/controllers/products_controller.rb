class ProductsController < ApplicationController
  before_filter :require_user
  before_filter :all_products, only: [:show, :index]
  before_filter :set_product, only: [:show, :edit, :create,:update]

  def index
  end

  def show
    @product = Product.find(params[:id])
    @contents = @product.contents
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private

  def all_products
    @products = Product.all
  end

  def set_product
    if params[:id]
      @product = Product.find(params[:id])
      session[:product_id] = @product.id
    end
  end

end
