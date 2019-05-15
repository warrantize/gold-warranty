# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting test users"
User.destroy_all

puts "creating test user"
test_user = User.new(email: 'jeremy.jouffroy@gmail.com', password: '123456')
test_user.save!

puts "clearing categories"
Category.destroy_all
puts 'creating 2 categories: '
cat1 = Category.new(category_name: 'Electronics')
cat1.save!
puts "#{cat1.category_name} saved with id #{cat1.id} "
cat2 = Category.new(category_name: 'Computers')
cat2.save!
puts  "#{cat2.category_name} saved with id #{cat2.id} "


puts "clearing manufacturers"
Manufacturer.destroy_all
puts 'creating 2 manufacturers: '
manu1 = Manufacturer.new(manufacturer_name: 'Samsung')
manu1.save!
puts "#{manu1.manufacturer_name} saved with id #{manu1.id} "
manu2 = Manufacturer.new(manufacturer_name: 'Dell')
manu2.save!
puts  "#{manu2.manufacturer_name} saved with id #{manu2.id} "


puts "clearing product"
Product.destroy_all
puts 'creating 4 products: '
prod1 = Product.new(ean: '08801643248390',
                    product_name: 'Galaxy Note 9',
                    manufacturer_id: manu1.id,
                    category_id: cat1.id)
prod1.save!
prod2 = Product.new(ean: '08801643248391',
                    product_name: 'Galaxy Note 8',
                    manufacturer_id: manu1.id,
                    category_id: cat1.id)
prod2.save!
prod3 = Product.new(ean: '08806088754031',
                    product_name: 'Galaxy Book - 10.6',
                    manufacturer_id: manu1.id,
                    category_id: cat2.id)
prod3.save!
prod4 = Product.new(ean: '05397184163474',
                    product_name: 'XPS 15-9570',
                    manufacturer_id: manu2.id,
                    category_id: cat2.id)
prod4.save!


puts "clearing warranties"
Warranty.destroy_all
puts "reccording 4 warranty for user 1"
war1 = Warranty.new(begin_date: Date.new(2012,1,1), user_id: test_user.id, product_id: prod1.id)
war1.end_date = war1.begin_date + 365*2
war1.save!
war2 = Warranty.new(begin_date: Date.new(2018,1,1), user_id: test_user.id, product_id: prod2.id)
war2.end_date = war2.begin_date + 365*2
war2.save!
war3 = Warranty.new(begin_date: Date.new(2019,1,1), user_id: test_user.id, product_id: prod3.id)
war3.end_date = war3.begin_date + 365*2
war3.save!
war4 = Warranty.new(begin_date: Date.new(2019,2,1), user_id: test_user.id, product_id: prod4.id)
war4.end_date = war4.begin_date + 365*2
war4.save!




