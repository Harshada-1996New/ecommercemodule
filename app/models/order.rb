class Order < ApplicationRecord
    #attr_accessor :products_attributes, :orderproducts_attributes
    has_many :orderproducts, dependent: :destroy
    has_many :addresses, dependent: :destroy
    has_many :products, through: :orderproducts
    accepts_nested_attributes_for :orderproducts
    accepts_nested_attributes_for :products
    accepts_nested_attributes_for :addresses
    validates :ord_type, presence: true
    after_create :price_total
    after_create :inventory_update
    def price_total
        self.payment_total=0
        self.orderproducts.each do |order| 
            self.payment_total += order.product.price * order.quantity
        end
        update_attributes(:payment_total=>self.payment_total)
    end
    def inventory_update
       self.orderproducts.each do |order| 
          temp=order.product.inventory - order.quantity
          order.product.update_attributes(:inventory=>temp)
       end
       
    end
end
