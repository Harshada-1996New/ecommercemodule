class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :prd_sku
      t.string :prd_name
      t.decimal :price

      t.timestamps
    end
  end
end
