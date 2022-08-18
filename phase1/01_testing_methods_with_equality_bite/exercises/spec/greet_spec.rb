require 'greet'

RSpec.describe "greet method" do
  it "says hello to given name, Wendy" do
    result = greet("Wendy")
    expect(result).to eq "Hello, Wendy!"
  end
end
