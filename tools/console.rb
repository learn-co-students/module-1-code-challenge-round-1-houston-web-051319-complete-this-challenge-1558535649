require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer_one = Customer.new("Maruf", "Awal")
customer_two = Customer.new("Mark", "Walberg")
customer_three = Customer.new("Mark", "Ruffalo")

review_1 = Review.new ("Maruf Awal", "Subway", star_rating, content)
review_2 = Review.new ("Mark Ruffalo", "McDonald", star_rating, content)
review_3 = Review.new ("Mark Walberg" "Burger King", star_rating, content)
binding.pry

restaurant_1 = Restaurant.new  ('McDonald')
restaurant_2 = Restaurant.new  ('Subway')
restaurant_3 = Restaurant.new  ('Burger King')






0 #leave this here to ensure binding.pry isn't the last line