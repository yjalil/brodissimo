class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update]
  before_action :edit_order_params, only: [:update]

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
    if @order.update(edit_order_params)
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:photo,:type_photo)
  end

  def edit_order_params
    if params[:order].nil?
    params[:order] = {
      title: ""
    }
    end

    params.require(:order).permit(Order.attribute_names.map(&:to_sym).excluding(:id, :created_at, :updated_at))
  end

end
