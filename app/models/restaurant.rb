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

  def reviews
    Review.all.select {|reviews| reviews.restaurant == self}
  end

  def customers
    self.reviews.map {|my_reviews| my_reviews.customer}
  end

  def my_ratings
    self.reviews.map {|my_reviews| my_reviews.rating}
  end

  def num_reviews
    self.reviews.length
  end

  def average_star_rating
    avg_star = 0
    num_reviews = self.num_reviews
    self.my_ratings.each {|my_ratings| avg_star += my_ratings}
    avg_star = avg_star/num_reviews
    avg_star
  end

  def longest_review
    longest = self.reviews[0]
    longest_num = longest.content_length
    self.reviews.each {|my_reviews| 
    current = my_reviews.content_length
    if longest_num < current
      longest_num = my_reviews.content_length
      longest = my_reviews
    end}
    longest
  end

  def self.find_by_name(name)
    self.all.find {|restaurants| restaurants.name == name}
  end

end
