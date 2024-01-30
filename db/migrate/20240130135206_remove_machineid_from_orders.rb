class RemoveMachineidFromOrders < ActiveRecord::Migration[7.1]
  def change

    remove_reference :orders, :machine, index: true, foreign_key: true
  end
end
