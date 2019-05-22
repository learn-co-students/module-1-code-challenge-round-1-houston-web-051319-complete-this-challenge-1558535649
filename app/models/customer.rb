class Customer
  attr_reader :first_name, :last_name, :content
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review
    Review.all.select do |reviews|
      reviews.customer == self
      end
    end




end
