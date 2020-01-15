class AddAddtypeToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :addtype, :string
  end
end
