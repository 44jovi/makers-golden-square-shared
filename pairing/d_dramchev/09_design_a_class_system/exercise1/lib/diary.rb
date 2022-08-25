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
    readable_words = wpm * minutes
    readable_entries = @entries.select do |entry|
      entry.word_count <= readable_words
    end
  end

  def all_phone_numbers
    phone_number_list = []
    @entries.each do |entry|
      phone_number_list << entry.list_phone_numbers unless entry.list_phone_numbers.empty?
    end
    return phone_number_list.flatten
  end
end

