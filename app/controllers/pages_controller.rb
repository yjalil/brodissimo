class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

  end


  def dashboard
    render
  end

  def calendar
    render
  end

  def catalog
    render
  end

end
