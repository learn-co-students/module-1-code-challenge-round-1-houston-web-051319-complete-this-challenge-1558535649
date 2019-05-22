class Restaurant
  @@all =[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |reviews|
       reviews.restaurant == self
        end
  end
  def self.all
      @@all
  end



  def customers
      self.reviews.map do |customers|
         customers.customer
        end
  end

  def  self.average_star_rating
         tot_restaurants = 0
        Restaurant.all.each do |no_restaurants|
          tot_restaurants += no_restaurants.reviews.length
             end
             tot_restaurants
           tot_reviews =Restaurant.all.length
           tot_restaurants/(tot_reviews).to_f  
   end


   def  self.longest_review
        

   end

   
          





        




  



end
