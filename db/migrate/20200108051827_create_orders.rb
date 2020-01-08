class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :ord_no
      t.integer :ord_tracking_no
      t.decimal :payment_total
      t.string :ord_type

      t.timestamps
    end
  end
end
