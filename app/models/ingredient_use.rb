class IngredientUse < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  attr_accessible :ingredient_id, :recipe_id
end
  