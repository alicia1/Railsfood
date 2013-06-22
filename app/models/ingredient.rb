class Ingredient < ActiveRecord::Base
	has_many :ingredient_uses
	has_many :recipes, :through => :ingredient_uses
  attr_accessible :name
end
