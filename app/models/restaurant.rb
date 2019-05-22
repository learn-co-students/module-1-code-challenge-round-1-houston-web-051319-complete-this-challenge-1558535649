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
    all_reviews = Review.all.select do |review_obj|
      review_obj.restaurant == self
    end
    all_reviews.map {|review_obj| review_obj.customer}.uniq
  end
  def reviews 
    all_reviews = Review.all.select do |review_obj|
      review_obj.restaurant == self
    end
  end
  def avg_star_rating
    all_reviews = Review.all.select do |review_obj|
      review_obj.restaurant == self
    end
    ratings_ary = all_reviews.map {|review_obj| review_obj.rating}
    ratings_ary.inject(:+) / ratings_ary.length
  end
  def longest_review
    all_reviews = Review.all.select do |review_obj|
      review_obj.restaurant == self
    end
    content_ary = all_reviews.map {|review_obj| review_obj.content}
    longest = 0
    most_content = nil
    content_ary.map do |content| 
      if content.length > longest 
        longest = content.length
        most_content = content
      end
    end
    most_content
  end
  def self.find_by_name(name)
    Restaurant.all.
  end
end
