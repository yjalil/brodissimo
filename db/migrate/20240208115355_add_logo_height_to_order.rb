class AddLogoHeightToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :logo_height, :decimal
  end
end
