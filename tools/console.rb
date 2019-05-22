require_relative '../config/environment.rb'
#Restaurant-<Reviews>-Customer

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer = Customer.new("Customer1","1")
customer2 = Customer.new("Customer2","2")
customer3 = Customer.new("Customer3","3")
customer4 = Customer.new("Customer4","4")
customer5 = Customer.new("Customer5","5")
customer6 = Customer.new("Customer6","6")
test1 = Customer.new("Customer1","10")

restaurant = Restaurant.new("Restaurant")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")
restaurant4 = Restaurant.new("Restaurant4")
restaurant5 = Restaurant.new("Restaurant5")
restaurant6 = Restaurant.new("Restaurant6")


review = Review.new(customer, restaurant, "Food", 1)
review2 = Review.new(customer2, restaurant2, "Food1", 2)
review3 = Review.new(customer2, restaurant3, "Food2", 5)
review4 = Review.new(customer2, restaurant4, "Food3", 1)
review5 = Review.new(customer3, restaurant5, "Food4", 1)
review6 = Review.new(customer4, restaurant6, "Food5", 2)
review7 = Review.new(customer5, restaurant6, "Food6ndskanfs", 4)
review8 = Review.new(customer5, restaurant6, "Food7", 4)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line