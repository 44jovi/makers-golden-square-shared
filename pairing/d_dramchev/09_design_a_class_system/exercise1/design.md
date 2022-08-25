# {{"Personal Assistant"}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

Important elements:
- diary entry
- diary
- readable entries (within given time)

- task
- task list (along with diary?)

- contacts list (mobile phone numbers from all diary entries)


```

Original diagram:
  ┌────────────────────────────────────┐
  │                                    │
  │  DiaryEntry                        │
  │  ----------                        │
  │                                    │
  │  - title                           │
  │  - contents                        │
  │  - word count (of entry contents)  │
  │                                    │
  │                                    │
  │                                    │
  └──┬─────────────────────────────────┘
     │
     │
     │
  ┌──▼───────────────────────────┐       ┌───────────────────────────────────┐
  │                              │       │                                   │
  │  Diary                       ├───────►  ContactsList                     │
  │  -----                       │       │  ------------                     │
  │                              │       │                                   │
  │  - add                       │       │  - all - returns phone numbers    │
  │  - readable entries          │       |                                   │
  │  - all (diary entries)       │       |                                   │
  │  - task list (view)          │       │                                   │
  │                              │       |                                   │
  │                              │       │                                   │
  └──▲───────────────────────────┘       └───────────────────────────────────┘
     │
     │
     │
  ┌──┴───────────────────────────┐
  │                              │
  │  TaskList                    │
  │  --------                    │
  │                              │
  │  - add task                  │
  │  - list all tasks            │
  │                              │
  │                              │
  └──────────────────────────────┘


```

_Also design the interface of each class in more detail._

```ruby

class Diary 
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
  end

  def all
    # returns hash(?) of all diary entries so user can read past entries
    # hash key = title # TBC - what if identical key name?
    # hash value = contents
  end

  def readable_entries_in_given_time(wpm, minutes)
    # returns list of all diary entries readable 
    # - within given time (minutes)
    # - and based on given reading speed (wpm)
  end

  def task_list
    # returns list of current incomplete tasks from TaskList
  end
end

class DiaryEntry(title, contents) # title and contents are strings  
  def initialize
    @title = title
    @contents = contents
  end

  def title
    # returns diary entry title (string)
  end

  def contents
    # returns diary entry contents (string)
  end

  def word_count
    # returns word count of contents (integer)
  end
end

class TaskList
  def initialize
    @tasks = []
  end
  
  def add(task) # task is an instance of Task
    # adds completed task to @completed_tasks
    # or
    # adds incomplete task to @incompleted tasks
  end

  def all
    # returns list of all tasks added
  end
end

class ContactsList
  def initialize
  end

  def all
    # returns list of all mobile phone numbers extracted from @entries in Diary
  end
end


```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
diary = Diary.new
diary_entry = DiaryEntry.new("title", "contents")
diary.add(diary_entry)
diary.all # => ["title", "contents"]




```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
diary_entry = DiaryEntry.new("title", "contents")
diary_entry.title # => "title"

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._




# APPENDIX

Diagram of end result

  ┌────────────────────────────────────┐
  │                                    │
  │  DiaryEntry                        │
  │  ----------                        │
  │                                    │
  │  - title                           │
  │  - contents                        │
  │  - word count (of entry contents)  │
  │  - list phone numbers              │
  │                                    │
  │                                    │
  └──┬─────────────────────────────────┘
     │
     │
     │
  ┌──▼───────────────────────────┐
  │                              │
  │  Diary                       │
  │  -----                       │
  │                              │
  │  - add                       │
  │  - readable entries          │
  │  - list all diary entries    │
  │  - task list (view)          │
  │  - list all phone numbers    │
  │                              │
  └──▲───────────────────────────┘
     │
     │
     │
  ┌──┴───────────────────────────┐
  │                              │
  │  TaskList                    │
  │  --------                    │
  │                              │
  │  - add task                  │
  │  - list all tasks            │
  └──────────────────────────────┘

