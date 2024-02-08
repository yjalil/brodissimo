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
    params.require(:order).permit(Order.attribute_names.map(&:to_sym).excluding(:id, :created_at, :updated_at))
    params[:date_desired] = Date.parse(params[:date_desired]) if params[:date_desired].present?

    params[:quantite_xs] = params[:quantite_xs].to_i if params[:quantite_xs].present?
    params[:quantite_s] = params[:quantite_s].to_i if params[:quantite_s].present?
    params[:quantite_m] = params[:quantite_m].to_i if params[:quantite_m].present?
    params[:quantite_l] = params[:quantite_l].to_i if params[:quantite_l].present?
    params[:quantite_xl] = params[:quantite_xl].to_i if params[:quantite_xl].present?
    params[:quantite_xxl] = params[:quantite_xxl].to_i if params[:quantite_xxl].present?
  end

end
