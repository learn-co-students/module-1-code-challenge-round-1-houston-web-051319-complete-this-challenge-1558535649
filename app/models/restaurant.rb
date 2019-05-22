class Restaurant
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def reviews
    Review.all.select do |each_review|
      each_review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |each_review|
      each_review.customer
    end.uniq
  end

  def all_star_ratings
    self.reviews.map do |each_review|
      each_review.rating
    end
  end

  def average_star_ratings
    self.all_star_ratings.reduce(0,:+) / self.all_star_ratings.count.to_f
  end

  def all_contents
    self.reviews.map do |each_review|
      each_review.content
    end
  end

  def longest_review
    longest_review = nil
    review_length = 0
    tied_reviews = []
    self.all_contents.each do |each_content|
      if each_content.length == review_length
        tied_reviews << each_content
      elsif each_content.length > review_length
        longest_review = each_content
        review_length = each_content.length
        tied_reviews.clear
        tied_reviews << each_content
      end
    end
    if tied_reviews.count > 1
      return tied_reviews
    else
      return longest_review
    end
  end

  def self.find_by_name(desired_name)
    self.all.find do |each_restaurant|
      each_restaurant.name == desired_name
    end
  end

end
