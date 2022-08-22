require 'report_length'

RSpec.describe "returns length of 'Hello'" do
  it "returns that 'Hello' is 5 characters long" do
    result = report_length('Hello')
    expect(result).to eq "This string was 5 characters long."
  end
  it "returns that '' is 0 characters long" do
    result = report_length('')
    expect(result).to eq "This string was 0 characters long."
  end
  it "returns that 'alphabet' is 8 characters long" do
    result = report_length('alphabet')
    expect(result).to eq "This string was 8 characters long."
  end
end