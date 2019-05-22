class Review
    @@all=[]
    attr_reader :customer,:restaurant,:rate
    def initialize(rate,customer,restaurant) 
         @rate=rate
         @customer=customer
         @restaurant=restaurant
         @@all << self
    end

    def self.all
        @@all
    end
    
  
end

