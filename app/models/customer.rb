class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant,content,rating)
    Review.new(self,restaurant,content,rating)
  end

  def all_reviews
    Review.all.select do |each_review|
      each_review.customer == self
    end
  end

  def num_reviews
    self.all_reviews.count
  end

  def restaurants
    self.all_reviews.map do |each_review|
      each_review.restaurant
    end
  end

  def self.all_names
    self.all.map do |each_customer|
      each_customer.full_name
    end
  end

  def self.find_by_name(name)
    self.all.find do |each_customer|
      each_customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |each_customer|
      each_customer.first_name == name
    end
  end

end
