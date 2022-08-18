# 16 Aug 2022
# Navigator: Sadat
# Driver: Jovi

require 'string_builder'

RSpec.describe StringBuilder do
  it "adds together multiple strings and returns the whole string" do
    string_builder = StringBuilder.new
    string_builder.add("word1 ")
    result = string_builder.output()
    expect(result).to eq "word1 "
  end

  it "returns length of the whole string" do 
    string_builder = StringBuilder.new
    string_builder.add("word1 ")
    result = string_builder.size()
    expect(result).to eq 6
  end
  
end
