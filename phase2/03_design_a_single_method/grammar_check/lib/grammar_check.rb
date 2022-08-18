# Date: 17-Aug-2022
# Navigator: Lili
# Driver: Jovi

def grammar_check(text)
  punctuation = ".!?"
  if text[0] == text[0].upcase
    if punctuation.include? text[-1]    
      return "Correct sentence"
    end  
  end
  return "Incorrect sentence"
end
