require_relative 'task'
# create controller class
class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def list
    tasks = @repository.tasks
    @view.list_tasks(tasks)
  end

  def add
    # 1. ask task name
    task_name = @view.ask_for_task_name
    # 2. create a new instance
    new_task = Task.new(task_name)
    # 3. add to repo
    @repository.add_task(new_task)
  end

  def mark_complete
    index = @view.ask_for_task_number
    task = @repository.find(index)
    # missing
  end
end
