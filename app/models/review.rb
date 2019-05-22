class Review

    attr_reader :rating, :content, :customer, :restaurant

    @@all = []

    def initialize (rating, content, customer, restaurant)
        @rating = rating
        @content = content
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

    def content_length
        split = self.content.split(//)
        split.length
    end
  
end

