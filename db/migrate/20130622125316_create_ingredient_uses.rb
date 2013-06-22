class CreateIngredientUses < ActiveRecord::Migration
  def change
    create_table :ingredient_uses do |t|
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
