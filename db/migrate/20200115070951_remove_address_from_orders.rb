class RemoveAddressFromOrders < ActiveRecord::Migration[5.2]
  def up
    remove_reference :orders, :address, foreign_key: true
  end
  
  def down
    remove_reference :orders, :address, foreign_key: true
  end
end
