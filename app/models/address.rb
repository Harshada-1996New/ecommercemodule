class Address < ApplicationRecord
  belongs_to :user
  belongs_to :order
  validates :land_mark, :street, :city, :state, :zip, presence: true
end
