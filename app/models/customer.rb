class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def self.all 
    @@all
  end
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end
  def num_reviews
    all_reviews = Review.all.select do |review_obj|
      review_obj.customer == self
    end
    all_reviews.length
  end
  def restaurants
    all_reviews = Review.all.select do |review_obj|
      review_obj.customer == self
    end
    restaurant_ary = all_reviews.map do |review_obj|
      review_obj.restaurant
    end
    restaurant_ary.uniq
  end
end
