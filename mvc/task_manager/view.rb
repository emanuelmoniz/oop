# create class to get task name from user
class View
  def ask_for_task_name
    puts "What's the taks name"
    print '>'
    gets.chomp
  end

  def list_tasks(tasks)
    puts "\n*******TASKS LIST******"
    puts "\Nº |St| Name"
    tasks.each_with_index do |task, index| # instance of task object
      puts "#{index + 1}. \[ #{x if task.completed} \] #{task.name}"
    end
  end

  def ask_for_task_number
    puts 'Whats the taks number'
    print '>'
    gets.chomp
  end
end
