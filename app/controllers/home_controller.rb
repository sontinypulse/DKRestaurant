class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections = Section.order(:id)
    @food_items = FoodItem.where(section: params[:section])
    @top_food_items = FoodItem.last(5)
  end
end
