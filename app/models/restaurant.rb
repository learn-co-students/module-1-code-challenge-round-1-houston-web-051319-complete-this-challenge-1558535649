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
    Review.all.select do | review |
      review.restaurant == self
    end
  end

  def customers
    customers = self.reviews.map do | review |
      review.customer
    end
    customers.uniq
  end

  def ratings
    self.reviews.map do | review |
      review.star_rating
    end
  end

  def num_of_ratings
    self.ratings.length
  end

  def average_star_rating
    combined_ratings = 0
    self.ratings.each do | rating |
      combined_ratings += rating
    end
    combined_ratings.to_f
    (combined_ratings / self.num_of_ratings.to_f)
  end

  def review_content
    self.reviews.map do | review |
      review.content
    end
  end

  def longest_review
    longest_review = nil
    longest_review_length = 0
    self.review_content.each do | review_content |
      review_content_length = review_content.length
      if review_content_length > longest_review_length
        longest_review_length = review_content_length
        longest_review = review_content
      end
    end
    longest_review
  end

  def self.find_by_name(name)
    self.all.find do | restaurant |
      restaurant.name.downcase == name.downcase
    end
  end


end
