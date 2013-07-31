class HomeController < ApplicationController
  def index
  end

  def search
    ingredients = Ingredient.find(params[:ingredient_id])
    @recipes = ingredients.map do |ingredient|
    	ingredient.recipes 
    end.flatten.uniq
  end

end
