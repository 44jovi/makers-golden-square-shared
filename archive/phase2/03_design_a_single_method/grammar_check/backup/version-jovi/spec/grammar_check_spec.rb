require 'grammar_check'

RSpec.describe "grammar_check" do
  it "states a sentence is correct" do
    result = grammar_check("Good morning.")
    expect(result).to eq "Sentence grammar OK? Yes!"
  end
  it "states a sentence is incorrect (no capital or fullstop)" do
    result = grammar_check("good morning to you")
    expect(result).to eq "Sentence grammar OK? No!"
  end
  it "states a sentence is incorrect (no fullstop)" do
    result = grammar_check("Good morning")
    expect(result).to eq "Sentence grammar OK? No!"
  end
  it "states a sentence is incorrect (no capital first letter)" do
    result = grammar_check("good morning.")
    expect(result).to eq "Sentence grammar OK? No!"
  end
end