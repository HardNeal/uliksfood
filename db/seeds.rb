# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def copy_image_fixture(file_name, id)
  dir = Rails.root.join('public', 'uploads')
  Dir.mkdir(dir) unless File.directory?(dir)
  FileUtils.cp(file_name, dir.join(id.to_s))
end

admin = User.create!(name: 'Hard1', email: 'adm@a.r', password: 'adminadmin', password_confirmation: 'adminadmin', address: '4mk', phone: '0555616161', admin: true)
category = Category.create!(name: 'Kebab', desc: 'KebabCafe')
food = Food.create(name: 'Borsh', desc: 'Eat for all', price: 100, category_id: 1)
food = Food.create(name: 'Sushi', desc: 'Eat for all', price: 120, category_id: 1)
food = Food.create(name: 'Origami', desc: 'Eat for all', price: 150, category_id: 1)