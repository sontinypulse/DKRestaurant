class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :order_food_items
  has_many :orders, :through => :order_food_items
  def self.search(search)
    where("name  || description ILIKE ?", "%#{search}%")
  end
end
