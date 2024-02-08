class RemoveQuantiteSurfaceFromOrder < ActiveRecord::Migration[7.1]
  def change
    remove_column :orders, :quantite_surface, :string
  end
end
