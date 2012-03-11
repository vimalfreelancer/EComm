# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


Product.delete_all

Product.create(:title => 'cake009',:description => 'cake009: is a dutch choc cake. Price Rs 500/-per KG. available in min 1KG and thereafter with increment of 1kg. cake can be ordered for delivery latest by 6.00pm IST one day in advance for 1KG. But in case if some one wants to order the same cake in 2KGS or above he needs to place an order before 10am one day in advance. Delivery charges applicable',:image_url => 'cakes 009.jpg',:price => 49.5)
Product.create(:title => 'cake010',:description => 'cake010: is a fresh cream butter scotch  cake. Price Rs 420/- per KG. Available in min 500GMS and there after in 1KG only. Cake can be ordered for delivery latest by 10.00am one day in advance for both 500GMS or 1KG',:image_url => 'cakes 010.jpg',:price => 49.5)
Product.create(:title => 'cake011',:description => 'cake011: is a dutch choc  with fresh cream cake. Price Rs.500/KG. Available in min 500GMS and there after in 1KG and can be ordered thereafter with increment of 1KG. Cake can be ordered for delivery latest by 10.00am one day in advance for both 500GMS or 1KG. But for more than that u need to place an order 2days in advance latest by 8.00pmIST.',:image_url => 'cakes 011.jpg',:price => 49.5)
Product.create(:title => 'Flower Bouquet',:description => 'This is good cake and it has good teste too,This is good cake and it has good teste too,This is good cake and it has good teste too',:image_url => 'dep.jpg',:price => 49.5)
Product.create(:title => 'Lily flower',:description => 'This is good cake and it has good teste too',:image_url => 'dep.jpg',:price => 49.5)
                         
