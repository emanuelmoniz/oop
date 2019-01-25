# create a taks list class
class Repository
  attr_reader :tasks
  def initialize
    @tasks = [] # array of tasks
  end

  def add_task(new_task)
    @tasks << new_task # instance of task
  end
end
