class SearchController < ApplicationController
  def index
    if params[:search]
      @food_items = FoodItem.search(params[:search]).order("created_at DESC")
    else
      @food_items = Article.all.order("created_at DESC")
    end
  end
end
