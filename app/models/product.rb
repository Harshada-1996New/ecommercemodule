class Product < ApplicationRecord
    attr_accessor :orders_attributes, :orderproducts_attributes
    has_many :orderproducts, dependent: :destroy
    has_many :orders, through: :orderproducts
    validates :prd_sku, :prd_name, :price, presence: true
   # accepts_nested_attributes_for :orders
    paginates_per 5
    def self.search(search)
        if search
            where(["prd_name LIKE?","%#{search}%"])
        else
            all
        end
    end
end
