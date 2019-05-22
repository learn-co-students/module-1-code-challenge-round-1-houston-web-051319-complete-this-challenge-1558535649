class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
#Returns an array of all reviews for the given restaurant
  def all_review
    self.Review.all.map | reviews_obj |
     reviews_obj.restaurant
  end

end
  
