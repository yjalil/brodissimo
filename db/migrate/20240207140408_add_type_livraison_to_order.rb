class AddTypeLivraisonToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :type_livraison, :boolean
  end
end
