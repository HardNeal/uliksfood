class FoodsController < ApplicationController
  def index
  	foods = Food.all
  end

  def show
  	@food = Food.find(params[:id])
  end

  private 

   def food_params
    params.require(:food).permit(:name, :desc, :price, :category_id)
   end
end
