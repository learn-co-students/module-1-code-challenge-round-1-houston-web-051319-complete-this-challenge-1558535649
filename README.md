## Mod 1 **Object Relations Code Challenge ReadME**

For this assignment, we have **three** models - Restaurant, Customer, and Review. 

A Customer eats at a Restaurant and writes a Review of the food there.   

For our purposes,  
a `Restaurant` has many `Reviews`, a `Customer` has many `Reviews`, and   
a `Review` belongs to a `Customer` and to a `Restaurant`.   
`Restaurant` - `Customer` is a many to many relationship.

Sketch out your models, and have only one source of information (a single source of truth).

#### Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods



#### Notes

Your goal is to build out the **methods listed in the deliverables**. Use Ruby methods such as each, map, select, and find to do so.

Remember: This is a code challenge without tests! This means you cannot run rspec or learn. You'll need to **create your own sample instances for testing **purposes. 

To **test** your code, **_enter a console session_** by running `ruby tools/console.rb` from the terminal (command line). Take a look at that file to see how you can:  

1) pre-define variables and   

2) create object instances,   

rather than manually doing it in _every_ console session.

- Make sure your **associations** and **methods** work in the console before submitting your work

#### Deliverables

**Basic methods**

- `Customer.all`

  - should return _all_ of the customer instances

- `Restaurant.all`

  - returns an **array** of _all_ restaurants

  `Review.all`

  - returns _all_ of the reviews

**Associations and Aggregate Methods**

**Review**

- `Review#customer`
  - Returns the customer **object** for that given review
  - Once a review is created, I should not be able to change the author
- `Review#restaurant`
  - Returns the restaurant **object**for that given review
  - Once a review is created, I should not be able to change the restaurant
- `Review#rating`
  - Returns the `star_rating` for a review of the given restaurant. This should be an integer from 1-5
- `Review#content`
  - Returns the review content, as a **string**, for a particular review **object**

**Customer**

- `Customer#add_review(restaurant, content, rating)`
  - Given the 3 arguments of a restaurant **object**, some review content (as a **string**), and a star rating (as a number, or more specifically, an **integer** between 1 and 5), this method creates a _new_ review and associates it with that customer and restaurant.
- `Customer#num_reviews`
  - Returns the _total number_ of reviews that a customer has written
- `Customer#restaurants`
  - Returns a unique **array** of _all_ restaurants that a customer has written reviews for.

**Restaurant**

- `Restaurant#customers`

  - Returns a unique **array** of _all_ customers who have reviewed the given restaurant.

- `Restaurant#reviews`

  - Returns an **array** of _all_ reviews for the given restaurant

- `Restaurant#average_star_rating`

  - Returns the _average_ `star_rating` for a restaurant based on its reviews

- `Restaurant#longest_review`

  - Returns the _longest_ review `content` (the actual **string**) for a given restaurant


**Class Methods and Properties**

**Customer** 

- `Customer.find_by_name(name)`
  - Given a **string** of a full name, returns the _first_ customer whose full name matches
- `Customer.find_all_by_first_name(name)`
  - Given a **string** of a first name, returns an **array** containing _all_ customers with that first name
- `Customer.all_names`
  - Should return an **array** of _all_ of the customer full names

**Restaurant**

- `Restaurant.find_by_name(name)`
  - Given a **string** of a restaurant‘s name, returns the _first_ restaurantthat matches

