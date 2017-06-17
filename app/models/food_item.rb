class FoodItem < ApplicationRecord
  belongs_to :section
  def self.search(search)
    where("name  || description ILIKE ?", "%#{search}%")
  end
end
