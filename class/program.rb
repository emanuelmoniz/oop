require_relative 'restaurant'
require_relative 'fast_food_restaurant'
require_relative 'gastronomic_restaurant'
require 'byebug'

nusret = Restaurant.new('nusr et', 'turkey', 100, ['indian'])

p nusret.name
p nusret.location
nusret.capacity = 150

p nusret.capacity
p nusret.category

nusret.book_table!('Emanuel')
p nusret.capacity_left

burger_king = FastFoodRestaurant.new('Burger King', 'Portugal', 200, ['Fast Food'], 15)
p burger_king.name

gastronomic_restaurant = GastronomicRestaurant.new('Avilez', 'Portugal', 50, ['Gastronomic Food'], 4)
p gastronomic_restaurant.name

p nusret
p burger_king
p gastronomic_restaurant

p 'Program_end!'
