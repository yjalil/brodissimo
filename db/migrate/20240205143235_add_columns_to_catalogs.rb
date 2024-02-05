class AddColumnsToCatalogs < ActiveRecord::Migration[7.1]
  def change
    add_column :catalogs, :front_photo_url, :string
    add_column :catalogs, :back_photo_url, :string
  end
end
