class MessagesController < ApplicationController
  before_action :set_return, only: [:index, :show, :new, :create, :edit, :update]

  def index
    @messages = Message.find_by(:return_id)
  end

  def show
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    @message.return_id = @return.id
    if @message.save
      redirect_to product_warranty_return_path(@product, @warranty, @return)
    else
      render :new
    end

  end

private
  def set_return
    @return = Return.find(params[:return_id])
    @warranty = Warranty.find(params[:warranty_id])
    @product = Product.find(params[:product_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
