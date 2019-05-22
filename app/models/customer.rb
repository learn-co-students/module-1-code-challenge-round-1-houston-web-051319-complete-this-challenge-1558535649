class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, rating, content)
    new_review
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants
    output_array = []
    Review.all.select do |review|
      review.customer == self
    end.uniq do |review|
      review.restaurant
    end.each do |review|
      output_array << review.restaurant
    end
    output_array
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names 
    output_array = []
    Customer.all.each do |customer|
      output_array << customer.full_name
    end
    output_array
  end
end
