require "string_repeater"

RSpec.describe StringRepeater do
    it "returns a string repeated multiple times" do
        fake_terminal = double :terminal
        expect(fake_terminal).to receive(:puts).with("Hello. I will repeat a string many times.")
        expect(fake_terminal).to receive(:puts).with("Please enter a string")
        expect(fake_terminal).to receive(:gets).and_return("TWIX")
        expect(fake_terminal).to receive(:puts).with("Please enter a number of repeats")
        expect(fake_terminal).to receive(:gets).and_return("10")
        string_repeater = StringRepeater.new(fake_terminal)
        expect(string_repeater.run).to eq "TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX"
    end
end

