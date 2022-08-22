# 17-Aug 2022
# Navigator: Jovi
# Driver: Jovi

require 'make_snippet'

RSpec.describe "make_snippet" do
  it "returns first 5 words of a string and then '...'" do
    result = make_snippet("one two three four five six")
    expect(result).to eq "one two three four five ..."
  end
end