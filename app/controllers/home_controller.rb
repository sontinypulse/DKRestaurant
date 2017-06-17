class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections = Section.order(:id)
    if params[:section].blank?
      @food_items = FoodItem.all
    else
      @food_items = FoodItem.where(section: params[:section])
    end

    if params[:sort_column]
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
  end
end
