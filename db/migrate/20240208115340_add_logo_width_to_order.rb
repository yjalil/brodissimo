class AddLogoWidthToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :logo_width, :decimal
  end
end
