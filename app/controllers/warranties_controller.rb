class WarrantiesController < ApplicationController

    before_action :set_warranty, only: [:show, :edit, :update]


  def index
  end


  def create
    @warranty = Warranty.new(warranty_params)
    @warranty.user = current_user
    # authorize @warranty
    if @warranty.save
      redirect_to warranty_path(@warranty)
    else
      render :new
    end
  end

  def new
    @product = Product.find(params[:product_id])
    @warranty = Warranty.new
  end

  def edit
  end

  def show
    @product = Warranty.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def set_warranty
      @warranty = Warranty.find(params[:id])
    end

    def warranty_params
      params.require(:warranty).permit(:begin_date, :photo)
    end
end
