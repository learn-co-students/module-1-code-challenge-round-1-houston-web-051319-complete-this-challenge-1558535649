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
  def add_review(restaurant, content, rating)
    Review.new(self,restaurant,content,rating)
  end
  def num_reviews
    my_review = Review.all.select do |review|
      review.customer == self
    end
    my_review.length
  end
  def restaurants
    my_review =[]
    Review.all.each do |review|
      if review.customer == self
        my_review << review.restaurant
      end
    end
    my_review.uniq
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
    Customer.all.map do |customer|
      customer.full_name
    end
  end
  def full_name
    "#{first_name} #{last_name}"
  end
end
