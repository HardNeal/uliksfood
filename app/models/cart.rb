class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :food
  belongs_to :shopcart
end
