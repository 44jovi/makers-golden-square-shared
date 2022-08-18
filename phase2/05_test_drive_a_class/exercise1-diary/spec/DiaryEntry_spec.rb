# 18-Aug-2022
# Solo: Jovi

require 'DiaryEntry'

RSpec.describe "DiaryEntry" do
  it "return title and contents" do
    new_entry = DiaryEntry.new("title1", "content1")
    expect(new_entry.title).to eq "title1"
    expect(new_entry.contents).to eq "content1"
  end

  describe "#count_words" do
    it "returns number of words in contents" do
      new_entry = DiaryEntry.new("title1", "the quick brown fox")
      expect(new_entry.count_words).to eq 4
    end
  end

  # this time using context block
  describe "#reading_time" do
    context "given a wpm" do
      it "returns the minutes needed to read the contents, rounded down to nearest minute (integer)" do
        new_entry = DiaryEntry.new("title1", "the quick brown fox jumped over the lazy dog") 
        expect(new_entry.reading_time(9)).to eq 1
      end
      # alternative way for contents to have many words:
      it "returns the minutes needed to read the contents, rounded down to nearest minute (integer)" do 
        new_entry = DiaryEntry.new("title1", "word " * 2000) 
        expect(new_entry.reading_time(200)).to eq 10
      end
    end
  end

  describe "#reading_chunk" do
    context "with contents readble within reading time" do
      it "returns the full contents" do
        new_entry = DiaryEntry.new("title1", "one two three")
        contents_chunk = new_entry.reading_chunk(200, 1)
        expect(contents_chunk).to eq "one two three"
      end
    end

    context "with contents not fully readble within reading time" do
      it "returns words readable within reading time" do
        new_entry = DiaryEntry.new("title1", "one two three")
        contents_chunk = new_entry.reading_chunk(2, 1)
        expect(contents_chunk).to eq "one two"
      end
      it "returns next chunk after first call" do
        new_entry = DiaryEntry.new("title1", "one two three")
        new_entry.reading_chunk(2, 1)        
        contents_chunk = new_entry.reading_chunk(2, 1)
        expect(contents_chunk).to eq "three"
      end
      # extra test with larger numbers of words
      it "returns words readable within reading time" do
        new_entry = DiaryEntry.new("title1", "w " * 1000)
        contents_chunk = new_entry.reading_chunk(200, 1)
        expect(contents_chunk).to eq ("w " * 200).strip
      end
    end

  end

  
end





# # my original attempt to test 'reading_chunk'
# describe "#reading_chunk" do
#     context "contents readable within given reading time" do
#       it "returns the full contents (3 words, 3 wpm, 1 minute to read)" do
#         new_entry = DiaryEntry.new("title1", "one two three ")
#         contents_chunk = new_entry.reading_chunk(3, 1)
#         expect(contents_chunk).to eq "one two three"
#       end
#       it "returns the full contents (10,000 words, 200 wpm, 10 minutes to read)" do
#         new_entry = DiaryEntry.new("title1", "word " * 100)
#         contents_chunk = new_entry.reading_chunk(50, 1)
#         expect(contents_chunk).to eq ("word " * 51).strip
#       end      
#     end
#   end    