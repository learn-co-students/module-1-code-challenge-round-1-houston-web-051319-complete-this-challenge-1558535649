require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


customer1 = Customer.new('Stefan', 'Scepanovic')
customer2 = Customer.new('Nikola', 'Jokic')
customer3 = Customer.new('Antony', 'Davis')
customer4 = Customer.new('Chris', 'Paul')


restaurant1 = Restaurant.new('Restaurant1')
restaurant2 = Restaurant.new('Restaurant2')
restaurant3 = Restaurant.new('Restaurant3')
restaurant4 = Restaurant.new('Restaurant4')

review1 = Review.new(customer1, restaurant3)
review2 = Review.new(customer4, restaurant4)
review3 = Review.new(customer2, restaurant2)
review4 = Review.new(customer3, restaurant1)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line