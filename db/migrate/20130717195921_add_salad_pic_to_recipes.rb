class AddSaladPicToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :salad_pic, :string
  end
end
