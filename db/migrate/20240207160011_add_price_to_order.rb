class AddPriceToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :price, :decimal
  end
end
