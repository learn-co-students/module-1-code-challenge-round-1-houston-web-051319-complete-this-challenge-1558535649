class Customer
  attr_accessor :first_name, :last_name, :full_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name, full_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = full_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, star_rating)
      Review.new(restaurant, content, star_rating)
  end

  def num_reviews
    Review.all.select do | review |
      review.customer == self
    end
  end

  def restaurants
      self.num_reviews.map do | review |
      review.restaurant
      end
  end


end
