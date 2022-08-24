require 'diary'

RSpec.describe Diary do
  context "construction" do
    it "returns title (one entry added)" do
      diary_entry = DiaryEntry.new("title", "contents")
      expect(diary_entry.title).to eq "title"
    end
  end
end