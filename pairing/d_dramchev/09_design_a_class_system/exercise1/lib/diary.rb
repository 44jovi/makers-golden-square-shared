class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def all
    @entries
  end

  def show_task_list(tasks) # instance of TaskList
    tasks.all
  end

  def readable_entries_in_given_time(wpm, minutes)
    
  end
end