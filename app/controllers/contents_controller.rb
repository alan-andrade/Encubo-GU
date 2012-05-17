class ContentsController < ApplicationController
  before_filter :get_product
  before_filter :get_contents

  def index
    @contents = @product.contents
  end

  def new
    @content = @product.contents.new
  end

  def create
    @content = @product.contents.new(params[:content])

    if @content.save
      redirect_to action: :index
    else
      redirect_to action: :new
    end
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update_attributes(params[:content])
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def show
    @content = @product.contents.find(params[:id])
  end

  private

  def get_product
    @products = Product.all
    @product  = Product.find(session[:product_id] || 1)
  end

  def get_contents
    @contents = @product.contents
  end

end
