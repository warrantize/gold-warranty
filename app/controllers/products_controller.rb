class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]

  def index
    @products = Product.all
  end

 def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @category = Category.find(@product.category_id)
    @manufacturer = Manufacturer.find(@product.manufacturer_id)
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:ean,
      :asin,
      :product_name,
      :manufacturer_id,
      :category_id,
      :photo)
  end

end
