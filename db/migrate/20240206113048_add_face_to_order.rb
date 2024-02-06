class AddFaceToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :type_photo, :string
  end
end
