class AddColumnsToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :quantite_xs, :integer
    add_column :orders, :quantite_s, :integer
    add_column :orders, :quantite_m, :integer
    add_column :orders, :quantite_l, :integer
    add_column :orders, :quantite_xl, :integer
    add_column :orders, :quantite_xxl, :integer
  end
end
