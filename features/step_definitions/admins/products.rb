When(/^залогинен пользователь с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
  visit('/users/sign_in')
  within("#new_user") do
  	fill_in('Email', with: email)
  	fill_in('Password', with: password)
  	click_button 'Log in'
  end
  sleep 2
  page.should have_content("Hello, Hard1")
  # expect(page).to have_css?('.row-category')
 end



When(/^перейдет на страницу создания нового продукта$/) do
  visit('/admin/foods/new')
end


When(/^создаст продукт с данным:$/) do |table|
  within('#new_food') do 
  	fill_in('Name', with: table.hashes[0][:name])
    sleep 3
  	fill_in('Desc', with: table.hashes[0][:desc])
  	sleep 3 
    fill_in('Price', with: table.hashes[0][:price])
  	select(table.hashes[0][:category], from: 'Category')
  	 click_button 'Create Food'
  end
  save_and_open_page
end

