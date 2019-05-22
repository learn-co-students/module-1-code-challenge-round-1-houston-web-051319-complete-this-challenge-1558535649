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
    output_array = []
    Review.all.select do |review|
      review.restaurant == self
    end.uniq do |review|
      review.customer
    end.each do |review|
      output_array << review.customer
    end
    output_array
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    average = 0
    star_sum = 0
    review_array = self.reviews
    review_array.each do |review|
      star_sum += review.star_rating 
    end
    average = star_sum/review_array.length
    average
  end

  def longest_review
    review_array = self.reviews
    longest_review = Review.all[0]
    longest_review_length = longest_review.content.length
    review_array.each do |review|
      current_review_length = review.content.length
      if current_review_length > longest_review_length
        longest_review = review
        longest_review_length = longest_review.content.length
      end
    end
    longest_review.content
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end        
end
