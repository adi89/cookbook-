class IngredientsController < ApplicationController

  def index
    @ingredients= Ingredient.all #all ingredient objects. time to iterate through the array.
  end

  def create
    ingredient = Ingredient.create(params[:id])
    redirect_to(ingredient)
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
      @ingredient = Ingredient.find(params[:id]) #just edit.
  end

  def show
    @ingredient= Ingredient.find(params[:id])
  end

  def update #no form for this.
    ingredient= Ingredient.find(params[:id])
    ingredient.update_attributes(params[:ingredient])
    redirect_to(ingredient)
  end

  def destroy
    ingredient= Ingredient.find(params[:id])
    ingredient.delete
    redirect_to(ingredients_path)
  end



end
