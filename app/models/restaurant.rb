class Restaurant
  attr_reader :name, :restaurant

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.select{|review_obj| review_obj.name == self.name}
  end

  def reviews
    Review.all.select{|review_obj| review_obj.restaurant == self.name}
  end

end
