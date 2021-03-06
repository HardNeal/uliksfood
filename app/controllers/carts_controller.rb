class CartsController < ApplicationController
  def index
  	@cart = Cart.all
  end

  def show
  	@cart = Cart.find(params[:id])
  end

  def create
     if Cart.find_by_food_id_and_shopcart_id(params[:cart][:food_id], params[:cart][:shopcart_id])
       @cart = Cart.find_by_food_id_and_shopcart_id(params[:cart][:food_id], params[:cart][:shopcart_id])
       @cart.count += params[:cart][:count].to_i
     else
       @cart = Cart.new(cart_params)
     end
     if @cart.save
       redirect_to :back
     else
       redirect_to root_path
     end
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to :back
  end


  def cart_params
    params.require(:cart).permit(:food_id, :shopcart_id, :count)
  end
end
