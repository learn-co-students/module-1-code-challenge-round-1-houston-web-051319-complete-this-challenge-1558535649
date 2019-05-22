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

  
  def reviews
    Review.all.select do | customer |
      customer.review == self
    end
  end

  def customers
    self.reviews.map do | review |
      review.customer
      end
  end

  def averge_start_rating
    Review.star_rating.average
  end

  def longest_review
    review.max_by(content:length)
  end

end
