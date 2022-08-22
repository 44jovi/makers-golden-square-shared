require "music_tracker"

describe MusicTracker do
  describe "#add_song" do    
    it "returns 'One has been added.' when passed 'One'" do
      tracker = MusicTracker.new
      expect(tracker.add_song("One")).to eq "One has been added."
    end

    it "returns 'Two has been added.' when passed 'Two'" do
      tracker = MusicTracker.new
      expect(tracker.add_song("Two")).to eq "Two has been added."
    end
  end

  describe "#print_list" do
    it "returns list of songs added (1 song)" do
      tracker = MusicTracker.new
      tracker.add_song("One")
      expect(tracker.print_list).to eq ["One"]
    end
    it "returns list of songs added (2 songs)" do
      tracker = MusicTracker.new
      tracker.add_song("One")
      tracker.add_song("Song 2")
      expect(tracker.print_list).to eq ["One", "Song 2"]
    end
    it "returns list of songs added (5 songs)" do
      tracker = MusicTracker.new
      tracker.add_song("One")
      tracker.add_song("Song 2")
      tracker.add_song("Song 3")
      tracker.add_song("Song 4")
      tracker.add_song("Song 5")
      expect(tracker.print_list).to eq ["One", "Song 2", "Song 3", "Song 4", "Song 5"]
    end 
  end
end
