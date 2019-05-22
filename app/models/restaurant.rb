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
    list_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    list_customers = list_reviews.map do |review|
      review.customer
    end
    list_customers.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    ar_ratings = self.reviews.map {|review| review.rating}
    sum_ratings = ar_ratings.sum
    number_ratings = self.reviews.length
    average = sum_ratings / number_ratings.to_f
    average
  end

  def longest_review
    ar_review_content = self.reviews.map {|review|review.content}
    longest_review_char_count = 0
    longest_review = ar_review_content[0]
    ar_review_content.each do |content|
      if content.length > longest_review_char_count
        longest_review_char_count = content.length
        longest_review = content
      else
        longest_review
      end
    end
    longest_review
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
