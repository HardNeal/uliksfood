class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_cart, :current_user, :calc

  private

  
  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in'
      redirect_to login_url
    end
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :address])
  end

  def access_denied(exception)
    flash[:danger] = exception.message
    redirect_to root_url
  end

  def calc
    if user_signed_in?   
      cart_total = 0
      current_user.shopcarts.each do |shopcart|
        shopcart.carts.each do |cart|
          cart_total += (cart.food.price * cart.count)
        end
      end
      return cart_total
    else 
     'Please log in'
    end  
  end
end
