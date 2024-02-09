class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

  end

  def about
    render
  end

  def dashboard
    if current_user.role =="admin"
      @all_orders = Order.all
    else
      @my_orders = Order.where(client_id: current_user.id)
    render
    end
  end

  def calendar
    render
  end

  def catalog
    render
  end

end
