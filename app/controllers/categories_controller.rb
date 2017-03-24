class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
    @shopcart = Shopcart.find_by_user_id_and_category_id(current_user.id, @category.id)
  end

  private 

   def category_params
    params.require(:category).permit(:name, :desc)
   end
end
