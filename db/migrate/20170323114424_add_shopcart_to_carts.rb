class AddShopcartToCarts < ActiveRecord::Migration[5.0]
  def change
    add_reference :carts, :shopcart, foreign_key: true
  end
end
