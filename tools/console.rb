require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Restaurant 
five_guys = Restaurant.new("Five Guys")                          #:customer, :restaurant, :rating, :content
waffle_house = Restaurant.new("Waffle House")
ihop = Restaurant.new("IHOP")

# Customer
sally_smith = Customer.new("Sally", "Smith")
john_toby = Customer.new("John", "Toby")
eva_johnson = Customer.new("Eva", "Johnson")


# Review 
sally_review = Review.new(sally_smith, five_guys, 4, "Best Burger")
john_review = Review.new(john_toby, waffle_house, 5, "Best Waffle")
eva_review = Review.new(eva_johnson, ihop, 5, "Best Pancakes")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line