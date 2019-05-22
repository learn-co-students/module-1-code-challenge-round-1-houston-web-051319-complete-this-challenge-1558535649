class Customer
  @@all=[]
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant,content,rating)
    Review.new(restaurant,content,rating,self)
      
  end
  def num_reviews
    Review.all.select do |reviews|
      reviews.customer == self
     end
  end

  def restaurants
     self.num_reviews.map do|restaurants|
       restaurants.restaurant
       end
  end



  def self.all
    @@all
  end


  def self.find_by_name(name)
    Customer.all.select do |full_name|
      full_name.downcase == full_name.downcase
          end
     end

end
