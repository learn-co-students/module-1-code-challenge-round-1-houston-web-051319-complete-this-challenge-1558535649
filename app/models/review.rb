class Review

    attr_reader :name, :star_rating, :content, :customer, :restaurant

    @@all = []

    def initialize (name, star_rating, content, customer, restaurant)
        @name = name
        @star_rating = star_rating
        @content = content
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end
      

end

