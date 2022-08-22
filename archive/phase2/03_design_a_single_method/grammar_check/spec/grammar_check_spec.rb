# Date: 17-Aug-2022
# Navigator: Lili
# Driver: Jovi

require 'grammar_check'

RSpec.describe "grammar_check" do
  it "given the string 'Hello!'" do
  result = grammar_check("Hello!")
  expect(result).to eq "Correct sentence"
  end
  it "given the string 'qwerty'" do
    result = grammar_check("qwerty")
    expect(result).to eq "Incorrect sentence"
  end
  it "given the string 'Qwerty'" do
    result = grammar_check("Qwerty")
    expect(result).to eq "Incorrect sentence"
  end
end