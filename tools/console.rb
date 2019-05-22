require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
olive_garden = Restaurant.new("Olive Garden")
arbys = Restaurant.new("Arbys")
chilis = Restaurant.new("Chilis")
bob = Customer.new("Bob", "Ross")
meagan = Customer.new("Meagan", "Merkle")
jason = Customer.new("Jason", "F")
review_one = Review.new(jason, arbys, "Great food!", 4)
review_two = Review.new(meagan, olive_garden, "Decent food.", 3)
review_three = Review.new(bob, chilis, "Not great.", 2)
review_four = Review.new(jason, olive_garden, "Horrid", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line