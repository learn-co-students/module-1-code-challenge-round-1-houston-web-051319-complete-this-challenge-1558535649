class Customer
  attr_reader :first_name, :last_name, :restaurant, :content, :rating

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating)
    #associate it with that customer and restaurant
    
  end


  
end
