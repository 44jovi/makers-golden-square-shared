# Thu 18 Aug 2022
# Driver/Navigator: Jovi
# Support: Jonas

require 'GrammarStats'

RSpec.describe "GrammarStats" do

  describe "#check" do
    it "return true given a sentence capitalised first letter and '.' at the end" do
      sentence = GrammarStats.new
      expect(sentence.check("Hello there.")).to eq true
    end
    it "return true given a sentence capitalised first letter and '?' at the end" do
      sentence = GrammarStats.new
      expect(sentence.check("Hello there?")).to eq true
    end
    it "return true given a sentence capitalised first letter and '!' at the end" do
      sentence = GrammarStats.new
      expect(sentence.check("Hello there!")).to eq true
    end    
    it "return false given a sentence with no punctuation at the end" do
      sentence = GrammarStats.new
      expect(sentence.check("Hello there")).to eq false
    end
    it "return false given a sentence with no capitalised first letter" do
      sentence = GrammarStats.new
      expect(sentence.check("hello there.")).to eq false
    end
    it "return false given a sentence with no capitalised first letter or punctuation at the end" do
      sentence = GrammarStats.new
      expect(sentence.check("hello there")).to eq false
    end
  end
  
  describe "#percentage_good" do
    it "return 50 if 50% the texts checked so far passed" do
      sentence = GrammarStats.new
      sentence.check("Hello there.")
      sentence.check("hello there")
      expect(sentence.percentage_good).to eq 50
    end
    it "return 100 if 100% the texts checked so far passed" do
      sentence = GrammarStats.new
      sentence.check("Hello there.")
      sentence.check("Hello there.")
      expect(sentence.percentage_good).to eq 100
    end
    it "return 33 if 33% the texts checked so far passed" do
      sentence = GrammarStats.new
      sentence.check("Hello there.")
      sentence.check("hello there")
      sentence.check("hello there")
      expect(sentence.percentage_good).to eq 33
    end
    it "return 67 if 2 thirds of the texts checked so far passed" do
      sentence = GrammarStats.new
      sentence.check("Hello there.")
      sentence.check("Hello there.")
      sentence.check("hello there")
      expect(sentence.percentage_good).to eq 67
    end    
  end
  
end