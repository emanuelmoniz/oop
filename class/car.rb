# car class
class Car
  def initialize(color)
    @color = color # string
    @engine_started = false # boolean

    @brand = 'MINI'
  end

  def start
    @engine_started = true
  end

  # to acess atributes from this class
  def engine_started?
    @engine_started
  end

  # or it could be like this
  attr_reader :color
  attr_reader :engine_started # no question mark
  attr_writer :color # allow to change attributs

  # prevente user to change color to a type that does not exist
  def paint(new_color)
    if new_color.is_a?(String)
      @color = new_color
    else
      puts "#{new_color} not allowed"
    end
  end
end
