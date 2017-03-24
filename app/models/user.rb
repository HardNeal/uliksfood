class User < ApplicationRecord
  # has_many :carts
  has_many :shopcarts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 validates :address, presence: true
 validates :phone, presence: true
end
