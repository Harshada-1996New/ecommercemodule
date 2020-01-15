class ChangeImageToBeStringInProducts < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :image, :string
  end
  def down
    change_column :products, :image, :blob
  end
end
