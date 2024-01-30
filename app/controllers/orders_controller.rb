class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update]

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.client_id = params[:order][:client_id]
    if @order.save!
      redirect_to orders_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:client_id)
  end

end
