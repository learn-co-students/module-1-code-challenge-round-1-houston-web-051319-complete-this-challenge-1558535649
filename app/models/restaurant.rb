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

  def customers
    Review.all.select do |eater|
      eater.restaurant == self
    end
  end

  def reviews
  end


end
