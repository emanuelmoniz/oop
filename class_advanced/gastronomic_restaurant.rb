require_relative 'restaurant'
# Gastronomic Class
class GastronomicRestaurant < Restaurant
  attr_reader :stars

  def initialize(name, location, capacity, category, stars)
    # @name = name
    # @location = location
    # @capacity = capacity
    # @category = category

    # to use part of initialize from parent methods
    super(name, location, capacity, category)

    @stars = stars
    # @resarvations = []
  end

  def self.category
    ['italian', 'portuguese', 'gastronomic']
  end
end
