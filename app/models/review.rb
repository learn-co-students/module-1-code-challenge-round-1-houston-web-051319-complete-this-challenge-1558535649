class Review
  
    attr_reader :customer, :restaurant, :star_rating, :content

    @@all = []

    def initialize(customer, restaurant, star_rating, content)
        @customer = customer
        @restaurant = restaurant
        if(star_rating < 1 || star_rating > 5)
            @star_rating = 1
        else
            @star_rating = star_rating
        end
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

end

