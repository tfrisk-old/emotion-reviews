class ProductsController < ApplicationController
  load_and_authorize_resource

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
    @tag_counts = @product.reviews.tag_counts
  end

  def index
    @products = Product.all.sort_by { |p| [p.name] }
    @tag_counts = Review.tag_counts
  end

  def edit
    @product = Product.find(params[:id])
    @companies = Company.all
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :company_id)
    end
end
