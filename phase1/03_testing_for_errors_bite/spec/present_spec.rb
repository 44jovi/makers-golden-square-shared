require 'present'

RSpec.describe Present do
  context "when no contents in presents" do
    it "fails" do
      present = Present.new()
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end

  context "when present has already been wrapped" do
    it "fails" do
      present = Present.new()
      present.wrap("book")
      expect { present.wrap("mug") }.to raise_error "A contents has already been wrapped."
    end
  end
end