require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "responds correct if codeword is 'horse'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "responds close if codeword begins with 'h' and ends with 'e'" do
    result = check_codeword("habcde")
    expect(result).to eq "Close, but nope."
  end
  it "responds wrong if anything else" do
    result = check_codeword("qwerty")
    expect(result).to eq "WRONG!"
  end
end