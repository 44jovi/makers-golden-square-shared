# {{Challenge}} Class Design Recipe

## 1. Describe the Problem

  As a user
  So that I can keep track of my music listening
  I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class MusicTracker
def initialize
@music_list # an array
end
def add_song(song) # track is a string
# Return string "___ has been added."
end
def print_list
# return array of tracks
end


```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby

#1
tracker = MusicTracker.new
tracker.add_song("One") => # returns "One has been added."

#2
tracker = MusicTracker.new
tracker.add_song("One")
tracker.add_song("Two") # => "Two has been added."

#3
tracker = MusicTracker.new
tracker.add_song("One")
tracker.print_list => #returns ["One"]

#4
tracker = MusicTracker.new
tracker.add_song("One")
tracker.add_song("Song 2")
tracker.print_list => #returns ["One", "Song 2"]

#5
tracker = MusicTracker.new
tracker.add_song("One")
tracker.add_song("Song 2")
tracker.add_song("Song 3")
tracker.add_song("Song 4")
tracker.add_song("Song 5")
tracker.print_list => #returns ["One", "Song 2", "Song 3", "Song 4", "Song 5"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._