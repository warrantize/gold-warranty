class WarrantiesController < ApplicationController
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
    @warranty = Warranty.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
