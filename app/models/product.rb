class Product < ApplicationRecord
    attr_accessor :orders_attributes, :orderproducts_attributes
    has_many :orders, through: :orderproducts
    accepts_nested_attributes_for :orders
    has_one_attached :image

    def self.search(search)
        if search
            where(["prd_name LIKE?","%#{search}%"])
        else
            all
        end
    end
end
