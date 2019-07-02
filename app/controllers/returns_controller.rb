class ReturnsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_warranty, only: [:new, :create, :show, :edit, :update, :destroy]
  before_action :set_return, only: [:show, :edit, :update, :destroy]

  def new
    @return = Return.new()
    authorize @return
  end

  def create
    @return = Return.new(return_params)
    authorize @return
    @return.warranty_id = @warranty.id
    if @return.save
      redirect_to  product_warranty_return_path(@product, @warranty, @return)
    else
      render :new
    end
  end

  def show
    @messages = Message.where(return_id: @return.id)
  end

  def edit
    @messages = Message.where(return_id: @return.id)
  end

  def update
    @return.update(return_params)
    redirect_to  product_warranty_return_path(@product, @warranty, @return)
  end

  def destroy
  end

private
    def set_warranty
      @warranty = Warranty.find(params[:warranty_id])
      @product = Product.find(params[:product_id])
      @category = Category.find(@product.category_id)
      @manufacturer = Manufacturer.find(@product.manufacturer_id)
    end


    def set_return
      @return = Return.find(params[:id])
      authorize @return
    end

    def return_params
      params.require(:return).permit(:status, :comment)
    end
end

