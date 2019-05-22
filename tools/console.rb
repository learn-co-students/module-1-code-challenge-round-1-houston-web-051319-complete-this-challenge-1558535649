require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Customers
customer1 = Customer.new("Stefan", "Stojanovic")
customer2 = Customer.new("Customer", "2")
customer3 = Customer.new("Customer", "3")

#Restaurants
restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")

#Reviews
review1 = Review.new(customer1, restaurant1, 1, "Not Good")
review2 = Review.new(customer1, restaurant2, 2, "Okay")
review3 = Review.new(customer2, restaurant1, 3, "Good")
review4 = Review.new(customer2, restaurant3, 4, "Very Good")
review5 = Review.new(customer3, restaurant3, 5, "Excellent")
review6 = Review.new(customer3, restaurant2, 1, "Not Good")
review7 = Review.new(customer3, restaurant1, 2, "Okay")



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line