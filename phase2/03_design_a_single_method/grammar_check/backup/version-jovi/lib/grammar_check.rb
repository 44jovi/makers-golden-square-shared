def grammar_check(sentence)
  if sentence[0] == sentence[0].upcase && sentence[-1] == "."
    return "Sentence grammar OK? Yes!"
  else
    return "Sentence grammar OK? No!"
  end
end

