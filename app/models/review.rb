class Review
    attr_accessor :name, :first_name, :last_name, :rating 
    
  
    @@all = []

    def initialize
        @name = name
        @first_name = first_name
        @last_name = last_name
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end
    










end

