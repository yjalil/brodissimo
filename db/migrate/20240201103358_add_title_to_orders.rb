class AddTitleToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :title, :string
  end
end
