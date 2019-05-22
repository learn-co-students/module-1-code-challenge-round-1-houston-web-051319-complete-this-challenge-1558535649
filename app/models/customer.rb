class Customer

  attr_reader :first_name, :last_name

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
    Review.new(rating, content, self, restaurant)
  end

  def my_reviews
    Review.all.select { |reviews|reviews.customer == self}
  end
#DRY
  def num_reviews
    self.my_reviews.length 
  end

  def restaurants
    self.my_reviews.map {|my_reviews| my_reviews.restaurant}
  end

  def self.all_names
    self.all.map {|customers| customers.full_name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customers| customers.first_name == name}
  end


  def self.find_by_name(name)
    self.all.find {|customers| customers.full_name == name}
  end
  #couldn't figure out in time

end
