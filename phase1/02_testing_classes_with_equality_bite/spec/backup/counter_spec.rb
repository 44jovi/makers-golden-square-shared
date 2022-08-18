require 'counter'

RSpec.describe Counter do
  it "adds 10 to the counter and reports the total added" do
    counter = Counter.new
    counter.add(10)
    result = counter.report()
    expect(result).to eq "Counted to 10 so far."
  end
end