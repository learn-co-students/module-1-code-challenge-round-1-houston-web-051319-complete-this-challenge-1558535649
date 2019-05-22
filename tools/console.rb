require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Customer","One")
customer2 = Customer.new("Customer2","Two")
customer3 = Customer.new("Customer","Three")
customer4 = Customer.new("Customer","Four")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")

review1 = customer1.add_review(restaurant1,"Good Stuff",3)
review2 = customer1.add_review(restaurant2,"SUPER GREAT STUFF BRO",5)
review3 = customer2.add_review(restaurant1,"This place sucks",1)
review4 = customer2.add_review(restaurant3,"This place sucks. My life sucks",1)
review5 = customer3.add_review(restaurant2,"I told them I'm a critic to get free food",5)
review6 = customer4.add_review(restaurant3,"This place doesn't suck",4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line