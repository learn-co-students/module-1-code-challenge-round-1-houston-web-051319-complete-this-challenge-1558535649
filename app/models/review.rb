class Review
    attr_accessor :customer, :restaurant, :star_rating, :content
    

    @@all = []
    def self.all
        @@all
    end

    def initialize(customer, restaurant, star_rating, content)
        @customer = customer
        @restaurant = restaurant
        @star_rating = star_rating
        @content = content
        @@all << self
      
    end

    def rating
        star_rating.rand(1..5)
    end

    def content =(content)
        @content = cotent
    end
    
end

