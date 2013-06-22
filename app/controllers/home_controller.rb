class HomeController < ApplicationController
  def index
  end

  def search
    ingredient = Ingredient.find params[:ingredient_id]
    @recipes = ingredient.recipes
  end

end
