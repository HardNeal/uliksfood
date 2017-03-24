class ShopcartsController < ApplicationController
  def show
	# @shopcart = Shopcart.find_by_user_id_and_category_id(current_user, @category.id)
  end

  def create 
  	@shopcart = Shopcart.create!(user_id: current_user.id, category_id: params[:cat])
  	if @shopcart.save 		
  		redirect_to :back
  	else 
  		redirect_to root_path
  	end
  end

  def index 
  	@shopcarts = Shopcart.all 
  end

  def food_params
    params.require(:shopcart).permit(:user_id, :category_id)
   end
end

