require 'diary_entry'

RSpec.describe DiaryEntry do
  context "#word_count" do
    it "returns number of words in contents" do
      diary_entry = DiaryEntry.new("title", "one two three")
      expect(diary_entry.word_count).to eq 3
    end
  end

  describe "#list_phone_numbers" do
    context "when diary entry contents contains a phone number" do
      it "returns list of phone number(s)" do
      diary_entry = DiaryEntry.new("title", "12345678901")
      expect(diary_entry.list_phone_numbers).to eq ["12345678901"]
      end
    end

    context "when diary entry contents contains 11-letter word" do
      it "returns empty list" do
      diary_entry = DiaryEntry.new("title", "a" * 11)
      expect(diary_entry.list_phone_numbers).to eq []
      end
    end

    context "when diary entry contents contains a 12-digit number" do
      it "returns empty list" do
      diary_entry = DiaryEntry.new("title", "123456789012")
      expect(diary_entry.list_phone_numbers).to eq []
      end
    end    
  end
end

