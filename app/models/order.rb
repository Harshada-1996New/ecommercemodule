class Order < ApplicationRecord
    #attr_accessor :products_attributes, :orderproducts_attributes
    has_many :orderproducts, dependent: :destroy
    has_many :addresses, dependent: :destroy
    has_many :products, through: :orderproducts
    accepts_nested_attributes_for :orderproducts
    accepts_nested_attributes_for :products
    accepts_nested_attributes_for :addresses
end
