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
    words_readable = wpm.to_f * minutes # => 200 words
    @entries.map do |entry|
      entry.count_words
      if entry.count_words <= (wpm.to_f * minutes)
        return entry.@title
      end
    end
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

# # example of refactoring count_words
# def count_words
#   @entries.sum(&:count_words)
# end

# # OR

# def count_words
#   @entries.map(&:count_words).sum
# end