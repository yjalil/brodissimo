class CreateAssignees < ActiveRecord::Migration[7.1]
  def change
    create_table :assignees do |t|
      t.references :user, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
