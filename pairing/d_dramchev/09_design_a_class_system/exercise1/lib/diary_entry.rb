class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    @title
  end

  def word_count
    @contents.split.count
  end

  def list_phone_numbers
    phone_numbers = @contents.split.select do |word|
      if word.length == 11
        word.to_i.to_s.length == 11
      end
    end
  end
end
