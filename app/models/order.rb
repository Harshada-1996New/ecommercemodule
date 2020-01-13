class Order < ApplicationRecord
    attr_accessor :products_attributes, :orderproducts_attributes
    has_many :products, through: :orderproducts
    has_many :orderproducts, dependent: :destroy
    accepts_nested_attributes_for :products
    accepts_nested_attributes_for :orderproducts
    has_many :addresses
    def self.search(search)
        if search
            where(["prd_name LIKE?","%#{search}%"])
        else
            all
        end
    end
end
