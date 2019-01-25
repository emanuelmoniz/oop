# create class task
class Task
  attr_reader :name, :completed
  def initialize(name)
    @name = name # streng
    @completed = false # bolean
  end
end
