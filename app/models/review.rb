class Review
    @@all = []
    attr_reader :customer, :restaurant, :content, :rating
  def self.all
    @@all
  end
  def initialize(customer, restaurant,content,rating)
    @content =content
    @rating = rating
    @customer =customer
    @restaurant =restaurant
    @@all << self
  end
  

end

