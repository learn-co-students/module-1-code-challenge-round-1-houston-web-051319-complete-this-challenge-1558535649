require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("Whataburger")
r2 = Restaurant.new("Shake Shack")

c1 = Customer.new("Ariq","Holland")
c2 = Customer.new("Dave","Something")
c3 = Customer.new("Ida","Know")

rev1 = Review.new("Whataburger", "Terrible", 1)
rev2 = Review.new("Whataburger", "Ok", 3)
rev3 = Review.new("Shake Shack", "Great", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line