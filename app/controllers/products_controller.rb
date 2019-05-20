class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]

  def index
    @products = Product.all
  end

  def create
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
