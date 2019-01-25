require_relative 'restaurant'
# Fast Food Restaurant
class FastFoodRestaurant < Restaurant
  attr_reader :preparation_time

  def initialize(name, location, capacity, category, preparation_time)
    # @name = name
    # @location = location
    # @capacity = capacity
    # @category = category

    # to use part of initialize from parent methods
    super(name, location, capacity, category)

    @preparation_time = preparation_time

    # @resarvations = []
  end

  def self.category
    ['italian', 'portuguese', 'gastronomic']
  end
end
