# Reading Time - Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

To help manage my time I want to know the estimated time needed to read a set amount of text.

Assume I can read at 200 words per minute

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# 'reading_time' returns the approximate time needed to read a given number of words

reading_time(number_of_words)

# the above will return a string like the following where 'x' is the number of words and 'x' is the number of minutes as an integer rounded down to the nearest minute.

"Estimated time to read x words is y minutes."

# Side-effects to be explored

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE
reading_time(0) => "Estimated time to read 0 words is 0 minutes."
reading_time(200) => "Estimated time to read 200 words is 1 minutes."
reading_time(9999) => "Estimated time to read 0 words is 49 minutes."
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._