class AddIngredientsRecipesTable < ActiveRecord::Migration
  def change
    create_table  :ingredients_recipes, :id => :false do |t|   #to stop rails from making a primary key column,  :ingredient recipes is name of table
        t.integer :ingredient_id       #we literally just want two columns (ingredient id and recipe id, which is why we wanna negate the id being automatically created)
        t.integer :recipe_id
    end
  end




end
