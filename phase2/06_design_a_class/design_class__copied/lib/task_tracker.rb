class TaskTracker
  def initialize
    @task_list = []
  end

  def add_task(task)
    @task_list << task
    p "Added #{task}. Current list: #{@task_list}"
  end

  def print_tasks
    @task_list
  end

  def remove_task(task)
    @task_list.delete(task)
    p "Removed #{task}. Current list: #{@task_list}"
  end
  
end