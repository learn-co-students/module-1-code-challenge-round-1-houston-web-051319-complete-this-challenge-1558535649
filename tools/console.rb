require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customers

customer1 = Customer.new("John", "Doe")
customer2 = Customer.new("Bob", "Doe")
customer3 = Customer.new("Gene", "Johnson")
customer4 = Customer.new("Jane", "Willis")
customer5 = Customer.new("Don", "Johnson")
customer6 = Customer.new("John", "Johnson")






# Restaurants

restaurant1 = Restaurant.new("Restaurant 1")
restaurant2 = Restaurant.new("Restaurant 2")
restaurant3 = Restaurant.new("Restaurant 3")
restaurant4 = Restaurant.new("Restaurant 4")
restaurant5 = Restaurant.new("Restaurant 5")



# Reviews (joiner)

review1 = Review.new("Review 1", 4, 'This place is great!',customer1, restaurant1)
review2 = Review.new("Review 2", 5, 'This place is awesome!',customer2, restaurant2)
review3 = Review.new("Review 3", 3, 'This place is good!',customer3, restaurant3)
review4 = Review.new("Review 4", 5, 'This place is awesome!',customer4, restaurant4)
review5 = Review.new("Review 5", 1, 'This place sucks!',customer5, restaurant5)
review6 = Review.new("Review 6", 3, 'This place is good!',customer2, restaurant5)
review7 = Review.new("Review 7", 2, 'This place is so so.',customer1, restaurant2)
review8 = Review.new("Review 8", 4, 'This place is great!',customer1, restaurant3)
review9 = Review.new("Review 9", 4, 'This place is great!',customer1, restaurant1)
review10 = Review.new("Review 10", 2, 'This place is so so!',customer3, restaurant1)










binding.pry

0 #leave this here to ensure binding.pry isn't the last line