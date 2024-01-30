class CreateAssignements < ActiveRecord::Migration[7.1]
  def change
    create_table :assignements do |t|
      t.integer :worker_id
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :assignements, :users, column: :worker_id

  end
end
