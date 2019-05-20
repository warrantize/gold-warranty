class WarrantiesController < ApplicationController

    before_action :set_warranty, only: [:show, :edit, :update]
    before_action :set_product, only: [:new, :create, :show, :update, :destroy]


  def index
  end


  def new
    @warranty = Warranty.new
  end

  def create
    @product = Product.find(params[:product_id])
    @warranty = Warranty.new(warranty_params)
    @warranty.product_id = @product.id
    @warranty.end_date = @warranty.begin_date + 365*2
    @warranty.user_id = current_user.id
    # authorize @warranty
    if @warranty.save
      redirect_to product_warranty_path(@product, @warranty)
    else
      render :new
    end
  end



  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    def set_warranty
      @warranty = Warranty.find(params[:id])
      @product = Product.find(params[:product_id])
      @category = Category.find(@product.category_id)
      @manufacturer = Manufacturer.find(@product.manufacturer_id)
    end

    def set_product
      @product = Product.find(params[:product_id])
    end


    def warranty_params
      params.require(:warranty).permit(:begin_date, :photo, )
    end
end
