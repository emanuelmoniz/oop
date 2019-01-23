require_relative 'car'

red_car = Car.new('red')
green_car = Car.new('green')

p red_car
p green_car

red_car.start

p red_car
p green_car

puts 'is red car engine started?'
puts red_car.engine_started? ? 'yes' : 'no'

puts 'what is red car color'
puts red_car.color

puts 'chaging car color...'
red_car.color = 'black'
puts red_car.color

puts 'changing car color to other thing than a string'
green_car.paint(true)
