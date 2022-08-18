# Grammar Check - Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

To help improve my grammar, I want to verify that a text starts with a capital letter and ends with a fullstop.

For now we will ignore other punctuation marks to end a sentence.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# method 'grammar_check' takes 1 argument 'sentence'(string)

grammar_check(sentence)

# the above will return a string stating "Yes" or "No" at the end of it to confirm if the given sentence starts with a capital letter and ends with a fullstop. We can develop the exact wording later.

"Sentence grammar OK? Yes!"
# or
"Sentence grammar OK? No!"

# Side-effects to be explored

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE
grammar_check("Good morning.") => "Sentence grammar OK? Yes!"
grammar_check("good morning to you") => "Sentence grammar OK? No!"
grammar_check("Good morning") => "Sentence grammar OK? No!"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._