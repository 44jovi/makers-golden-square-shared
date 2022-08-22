# 22-Aug-2022
# Solo: Jovi

require 'diary'
require 'diary_entry'

RSpec.describe "integration test" do
  context "adding diary entries" do
    it "returns list of all entries added" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title 1", "contents 1")
      diary_entry_2 = DiaryEntry.new("title 2", "contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end
  end

  describe "#count_words method" do
    it "counts number of words in all diary entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title 1", "contents 1")
      diary_entry_2 = DiaryEntry.new("title 2", "contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 4
    end
  end

  describe "#reading_time method" do
    it "returns minutes required to read contents based on a set wpm" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title 1", "word " * 200)
      diary.add(diary_entry_1)
      expect(diary.reading_time(200)).to eq 1
    end

    it "returns minutes required to read contents based on a set wpm" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title 1", "word " * 200)
      diary_entry_2 = DiaryEntry.new("title 1", "word " * 1000)
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(200)).to eq 6
    end
  end

  describe "#find_best_entry_for_reading_time method" do
    it "returns diary entry instance readable within time given" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title 1", "word " * 200)
      diary.add(diary_entry_1)
      expect(diary.find_best_entry_for_reading_time(200, 1)).to eq "title 1"
    end
  end
end



