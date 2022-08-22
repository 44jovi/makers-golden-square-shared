class MusicTracker
  def initialize
    @music_list = []
  end
  
  def add_song(song)
    @music_list << song
    return "#{song} has been added."
  end

  def print_list
    @music_list
  end
end