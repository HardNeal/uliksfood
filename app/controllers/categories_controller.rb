class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
    if user_signed_in?
     @shopcart = Shopcart.find_by_user_id_and_category_id(current_user.id, @category.id)
    else
      redirect_to new_user_session_path
    end
  end

  private 

   def category_params
    params.require(:category).permit(:name, :desc)
   end
end
