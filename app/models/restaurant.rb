class Restaurant
  attr_reader :name
  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    @@all << self
  end
  def customers
    my_review = Review.all.select do |review|
      review.restaurant == self
    end
    customer = my_review.map do |review|
      review.customer
    end
    customer.uniq
  end
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end
  def average_star_rating
    total_reviews = self.reviews.length
    total_stars = 0
    Review.all.each do |review|
      if review.restaurant == self
        total_stars+=review.rating
      end
    end
    total_stars/total_reviews.to_f
  end
  def longet_review
    max_length = 0
    max_object = nil
    self.reviews.each do |review|
      if review.content.length > max_length
        max_length= review.content.length
        max_object = review
      end
    end
    max_object.content
  end
  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
