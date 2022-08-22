# 17-Aug 2022
# Navigator: Jovi
# Driver: Jovi

require 'count_words'

RSpec.describe "count_words" do
  it "returns number of words in a string" do
    result = count_words("the quick brown fox jumped over the lazy dog")
    expect(result).to eq 9
  end
end