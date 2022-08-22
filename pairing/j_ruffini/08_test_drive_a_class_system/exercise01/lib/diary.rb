# 22-Aug-2022
# Solo: Jovi
# Later on:
# Pair: James, Jovi

class Diary
  def initialize
    return @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all
    @entries
  end

  def count_words # see footer comments for refactor examples of this method
    @entries.map do |entry|
      entry.count_words # it can use count_words from diary_entry.rb because it's an instance of the DiaryEntry class?
    end.sum
  end

  def reading_time(wpm) 
    @reading_time = (count_words / wpm.to_f).ceil
    return @reading_time
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
    # also could use a .sort_by on entry.count_words and then return last item (.last)
    readable_entries.max_by do |entry|
      entry.count_words
    end
  end
end

# # # example of refactoring count_words

# @entries.map do |entry|
#   entry.count_words
# end.sum

# def count_words
#   @entries.map(&:count_words).sum
# end

# def count_words
#   @entries.sum(&:count_words)
# end

# # # example of refactoring count_words

# return @readable_entries.max_by(&:count_words)

# @readable_entries.max_by do |entry|
#   entry.count_words
# end






