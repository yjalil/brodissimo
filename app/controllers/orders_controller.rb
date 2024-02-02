class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update]

  def index
    @orders = Order.all
  end

  def new
    @catalog = Catalog.find(params[:catalog_id])
    @order = Order.new
  end

  def create
    @catalog = Catalog.find(params[:catalog_id])
    @order = Order.new(order_params)
    @order.client = current_user
    if @order.save!
      redirect_to edit_catalog_order_path(@catalog, @order)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
    @catalog = Catalog.find(params[:catalog_id])

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
    params.require(:order).permit(:photo)
  end

end
