class AddDateDesiredToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :date_desired, :date
  end
end
