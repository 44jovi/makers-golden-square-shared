class TaskList
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end
  
  def all
    @tasks
  end
end