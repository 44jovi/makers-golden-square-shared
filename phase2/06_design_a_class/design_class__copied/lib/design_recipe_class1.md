# {{Exercise}} Class Design Recipe

## 1. Describe the Problem

    As a user
    So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    As a user
    So that I can focus on tasks to complete
    I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class TaskTracker
  def initialize
    @task_list # an array
  end
  def add_task(task) # task is a string
  # No return value
  end
  def print_list
  # returns an array of the tasks that have been added so far
  end
  def remove_task(task) # task is a string
  # No return value
  end

```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby

#1
tracker = TaskTracker.new
tracker.add_task("Paint the house.")
tracker.print_list => # returns "Paint the house"

#2
tracker = TaskTracker.new
tracker.add_task("Paint the house.")
tracker.add_task("Fix Macbook.")
tracker.print_list => # returns "Paint the house" "Fix Macbook"

#3
tracker = TaskTracker.new
tracker.add_task("Paint the house.")
tracker.add_task("Fix Macbook.")
tracker.remove_task("Paint the house.")
tracker.print_list => # returns "Fix Macbook"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._