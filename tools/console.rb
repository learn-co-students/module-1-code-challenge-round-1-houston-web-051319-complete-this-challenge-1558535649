require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("first1", "last1")
customer2 = Customer.new("first1", "last2")
customer3 = Customer.new("first3", "last3")
customer4 = Customer.new("first4", "last4")
customer5 = Customer.new("first5", "last5")

restauraunt1 = Restaurant.new("restauraunt1")
restauraunt2 = Restaurant.new("restauraunt2")
restauraunt3 = Restaurant.new("restauraunt3")

review1 = Review.new(5.0, "review1 long", customer1, restauraunt1)
review2 = Review.new(2.0, "review2", customer1, restauraunt2)
review3 = Review.new(3.0, "review3", customer2, restauraunt2)
review4 = Review.new(4.0, "review4", customer3, restauraunt3)
review5 = Review.new(5.0, "review5", customer1, restauraunt3)
review6 = Review.new(4.0, "review6", customer4, restauraunt1)
review7 = Review.new(1.0, "review7", customer5, restauraunt2)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line