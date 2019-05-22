class Review
    @@all = []
    attr_reader :customer, :restaurants, :rating, :content

    def initialize(customer, restaurants, rating, content)
        @customer = customer
        @restaurants = restaurants
        @rating = rating 
        @content = content
        @@all << self 
    end 
  
    def self.all
        @@all 
    end 

    def customers
        Customer.all.select { |guest| guest == self }
    end 

    def restaurant_obj
        Restaurant.all.select { |place| place == self.restaurants }
    end 

    def review_rating
        Restaurant.all.select { |place| place == self.rating }
    end 
end

