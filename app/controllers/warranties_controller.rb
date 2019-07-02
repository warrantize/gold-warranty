class WarrantiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_warranty, only: [:show, :edit, :update]
  before_action :set_product, only: [:new, :create, :show, :update, :destroy]

  def index
  end


  def new
    @warranty = Warranty.new
    authorize @warranty
  end

  def create
    @warranty = Warranty.new(warranty_params)
    authorize @warranty
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
      authorize @warranty
      @product = Product.find(params[:product_id])
      @category = Category.find(@product.category_id)
      @manufacturer = Manufacturer.find(@product.manufacturer_id)
    end

    def set_product
      @product = Product.find(params[:product_id])
    end


    def warranty_params
      params.require(:warranty).permit(:begin_date, :photo )
    end
end
