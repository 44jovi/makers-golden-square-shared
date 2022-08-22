# 22-Aug-2022
# Solo: Jovi

require 'diary'

RSpec.describe Diary do
  context "adding entries" do
    it "returns empty array if no entries" do
      diary = Diary.new
      expect(diary.all).to eq []
    end

    it "has a word count of 0" do
      diary = Diary.new
      expect(diary.count_words).to eq 0
    end
    
  end
end