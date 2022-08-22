# 22-Aug-2022
# Solo: Jovi

require 'diary_entry'

RSpec.describe DiaryEntry do
  it "construction" do
    diary_entry = DiaryEntry.new("title 1", "contents 1")
    expect(diary_entry.title).to eq "title 1"
    expect(diary_entry.contents).to eq "contents 1"
  end

  describe "#count_words method" do
    it "returns zero if conents is empty" do
      diary_entry = DiaryEntry.new("title1", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "#count_words method" do
    it "counts number of words in the contents" do
      diary_entry = DiaryEntry.new("title 1", "one two three four")
      expect(diary_entry.count_words).to eq 4
    end
  end

end  
