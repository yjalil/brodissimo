class AddAttributesToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :graphisme, :string
    add_column :orders, :type_impression, :string
    add_column :orders, :nombre_faces, :string
    add_column :orders, :type_eclairage, :string
    add_column :orders, :matiere, :string
    add_column :orders, :type_led, :string
    add_column :orders, :alimentation, :string
    add_column :orders, :interpompier, :string
    add_column :orders, :decoupe, :string
    add_column :orders, :fixation_lettre, :string
    add_column :orders, :projet_dimensions, :string
    add_column :orders, :quantite_surface, :string
    add_column :orders, :prix_ht, :decimal, precision: 10, scale: 2
    add_column :orders, :prix_ttc, :decimal, precision: 10, scale: 2
  end
end
