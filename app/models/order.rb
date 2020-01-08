class Order < ApplicationRecord
    attr_accessor :products_attributes, :orderproducts_attributes
    has_many :products, through: :orderproducts
    has_many :orderproducts
    accepts_nested_attributes_for :products
    accepts_nested_attributes_for :orderproducts
end
