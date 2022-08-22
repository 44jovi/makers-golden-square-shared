# 18-Aug-2022
# Solo: Jovi

class DiaryEntry
  def initialize(title, contents) # both args are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").count
  end

  def reading_time(wpm) 
    count_words / wpm # returns minutes as integer
  end


  # NOT COMPLETE - to be fixed
  def reading_chunk(wpm, minutes)
    words_readable = wpm * minutes
    contents_as_array = @contents.split(" ")[@furthest_word_read, @furthest_word_read + words_readable]
    @furthest_word_read = words_readable
    return contents_as_array[@furthest_word_read, words_readable].join(" ")
    # returns a string with a chunk of the contents that the user could read in the given number of minutes
    # if called again, 'reading_chunk' should return the next chunk, skipping what has already been read, until the contents is fully read.
    # the next call after that it should restart from the beginning
  end
end