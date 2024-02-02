class AddFulldesignToAssignements < ActiveRecord::Migration[7.1]
  def change
    add_column :assignements, :fulldesign, :string
  end
end
