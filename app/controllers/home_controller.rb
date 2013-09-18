class HomeController < ApplicationController
  respond_to :json, :html

  def index
  end

  def search
    ingredients = Ingredient.find(params[:ingredient_id].split(','))
  	# binding.pry
    # @recipes = ingredients.map do |ingredient|
    # 	ingredient.recipes 
    # end.flatten.uniq

  	prev=ingredients[0].recipes
  	result = []
    ingredients.each do |ingredient|
     	result = prev & ingredient.recipes
     end
     @recipes = result.flatten
     respond_with @recipes

  end

end
