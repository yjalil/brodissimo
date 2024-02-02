class CatalogsController < ApplicationController
  def index
    @catalog = Catalog.all
  end

  def new
    @catalog_item = Catalog.new
  end

  def create
    @catalog_item = Catalog.new(catalog_item_params)
    @catalog_item.save
  end
  private
  def catalog_item_params
    params.require(:catalog_item).permit(:name, :photo)
  end


end
