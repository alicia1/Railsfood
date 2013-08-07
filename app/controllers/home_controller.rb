class HomeController < ApplicationController
  def index
  end

  def search
    ingredients = Ingredient.find(params[:ingredient_id])
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
     #use inject and intersection

  end

end
