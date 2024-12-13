class Review
  
    attr_reader :restaurant, :content, :rating

    @@all = []

    def initialize(restaurant, content, rating)
      @restaurant = restaurant
      @content = content
      @rating = rating
      @@all << self
    end
  
    def self.all
      @@all
    end

    def customers
        self.all.select{|review_obj| review_obj.self == self}
    end

    def restaurant

    end

end

