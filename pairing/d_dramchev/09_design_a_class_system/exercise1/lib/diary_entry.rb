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
      is_all_digits = word.to_i != 0
      word.length == 11 && is_all_digits
    end
  end
end