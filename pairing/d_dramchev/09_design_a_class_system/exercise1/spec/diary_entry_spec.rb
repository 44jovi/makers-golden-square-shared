require 'diary_entry'

RSpec.describe DiaryEntry do
  context "#word_count" do
    it "returns number of words in contents" do
      diary_entry = DiaryEntry.new("title", "one two three")
      expect(diary_entry.word_count).to eq 3
    end
  end
end