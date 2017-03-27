Если(/^перейдет на страницу с блюдами заведения$/) do
  click_link 'Посмотреть меню'
end

Если(/^нажмет на кнопку сделать заказ$/) do
   click_link 'Создать корзину'
   page.should have_content("Add to Cart")
end

Если(/^на странице открылись кнопки с добавлением корзины$/) do
  food = Food.find_by(name: 'Borsh')
  find("#add_cart_#{food.id}").click
  a = find('.basket')
  a.should have_content('Borsh')
end
