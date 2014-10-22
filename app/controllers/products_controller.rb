class ProductsController < ApplicationController

  def new
  end

  def create
    @product = Product.new(product_params)

    @product.save
    redirect_to @product
  end

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  private
    def product_params
      params.require(:product).permit(:name, :description)
    end
end
