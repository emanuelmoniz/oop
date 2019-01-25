# Class Restaurant
class Restaurant
  attr_reader :name, :location, :category
  attr_accessor :capacity

  def initialize(name, location, capacity, category)
    @name = name
    @location = location
    @capacity = capacity
    @category = category
    @reservations = []
  end

  def opened?
    Time.now.hour > 18 && Time.now.hour < 22
  end

  def categories
    ['italian', 'portuguese', 'gastronomic']
  end

  def closed?
    !opened?
  end

  def book_table!(user_name)
    if capacity_left > 0
      @reservations << user_name
    else
      puts 'sorry we are full!'
    end
  end

  def capacity_left
    @capacity - @reservations.size.to_i
  end
end
