require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

hermann = Customer.new("Hermann", "Krohn")
restaurant1 = Restaurant.new("The Keg")
review1 = hermann.add_review(restaurant1, "This restaurant is good", 5)

hans = Customer.new("Hans", "Krohn")
review2 = hans.add_review(restaurant1, "This restaurant is really good", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line