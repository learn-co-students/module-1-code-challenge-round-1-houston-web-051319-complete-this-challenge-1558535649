class Review
    attr_reader :customer, :restaurant, :content, :rating
    @@all = [] 
    def self.all
        @@all
    end
    def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end
  def customers 
    current_review = Review.all.select do |review_obj|
        review_obj == self
    end
    current_review.map do |review_obj|
        review_obj.customer
    end
  end
  def restaurants
    current_review = Review.all.select do |review_obj|
        review_obj == self
    end
    current_review.map do |review_obj|
        review_obj.restaurant
    end
  end
  def ratings
    current_review = Review.all.select do |review_obj|
        review_obj == self
    end
    rating_ar = current_review.map do |review_obj|
        review_obj.rating
    end
    rating_ar.join(" ")
  end
  def contents
    current_review = Review.all.select do |review_obj|
        review_obj == self
    end
    content_ar = current_review.map do |review_obj|
        review_obj.content
    end
    content_ar.join(" ")
  end
end

