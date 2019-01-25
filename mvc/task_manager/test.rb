require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'

# task1 = Task.new('dye the cat')
# task2 = Task.new('do flash cards')

# p task1
# p task2

# task_list1 = Repository.new

# task_list1.add_task(task1)
# task_list1.add_task(task2)

# p task_list1

list_tasks = Repository.new
view = View.new
controller = Controller.new(view, list_tasks)

controller.add
controller.add

controller.list
