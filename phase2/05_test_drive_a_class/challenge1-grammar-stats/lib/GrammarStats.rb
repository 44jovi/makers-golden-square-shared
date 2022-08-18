# Thu 18 Aug 2022
# Driver/Navigator: Jovi
# Support: Jonas

class GrammarStats
  def initialize
    @tests = 0
    @correct_tests = 0
  end

  def check(text)
    @tests += 1
    if text[0] == text[0].upcase && (".?!").include?(text[-1])
      @correct_tests += 1
      return true
    else
      return false
    end    
    # # text is a string
    # # Returns true or false depending on whether the text begins with a capital
    # # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    ((@correct_tests.to_f / @tests) * 100).round
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end