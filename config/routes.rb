Rails.application.routes.draw do

  resources :categories, :foods, :carts, :shopcarts

  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
