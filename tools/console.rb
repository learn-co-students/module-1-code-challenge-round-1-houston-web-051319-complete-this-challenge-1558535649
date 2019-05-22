 require 'pry'
 require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 =Customer.new("feven","tsegay")
customer2 = Customer.new("yoni","tsegay")
restaurant1 = Restaurant.new("express_cafe")
restaurant2 =Restaurant.new("express_cafe")
review1 = Review.new(5,customer1,restaurant1)
review2 =Review.new(4,customer2,restaurant2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line