class Review

    @@all = []
    attr_accessor :customer

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end    
    #Returns the customer object for that given review
     #Once a review is created, I should not be able to change the author
    def review_customer
     cus_ar =  Review.all.select do |review_obj|
            review_obj.customer == self
        end
        cus_ar
        end

        

        
        
#.map do |review_obj|
#review_obj.customer

    def self.all
        @@all
    end
end

