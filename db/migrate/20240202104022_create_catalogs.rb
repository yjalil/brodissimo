class CreateCatalogs < ActiveRecord::Migration[7.1]
  def change
    create_table :catalogs do |t|
      t.string :name

      t.timestamps
    end
  end
end
