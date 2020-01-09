class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :selectedproduct, :string
  end
end
