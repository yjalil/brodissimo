class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.references :machine, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :orders, :users, column: :client_id
  end
end
