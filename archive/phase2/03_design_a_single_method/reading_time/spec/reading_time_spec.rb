require 'reading_time'

RSpec.describe "reading_time" do
  it "returns text showing estimated reading time for a number of words" do
    result = reading_time(0)
    expect(result).to eq "Estimated time to read 0 words is 0 minutes."
  end
  it "returns text showing estimated reading time for a number of words" do
    result = reading_time(200)
    expect(result).to eq "Estimated time to read 200 words is 1 minutes."
  end
  it "returns text showing estimated reading time for a number of words" do
    result = reading_time(9999)
    expect(result).to eq "Estimated time to read 9999 words is 49 minutes."
  end
end